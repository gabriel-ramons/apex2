//Com base nas consultas abaixo, Exiba os valores através do Apex  

//Q1 Select name, amount, CloseDate from opportunity

List<Opportunity> opp = [Select Name, Amount, Closedate From Opportunity];
for(Opportunity oppor : opp){
system.debug('------------------------------');
System.debug('Informações das oportunidades');
System.debug('Nome: ' + oppor.Name);
System.debug('Valor: ' + oppor.Amount);
System.debug('Data: ' + oppor.CloseDate);
System.debug('\n');
}

//Q2 Select name, amount from opportunity where closedate > 2021-06-01

List<Opportunity> opp = [select name, amount from opportunity where closedate > 2021-06-01
];
for(Opportunity oppor : opp){
system.debug('------------------------------');
System.debug('Informações das oportunidades');
System.debug('Nome: ' + oppor.Name);
System.debug('Valor: ' + oppor.Amount);
System.debug('\n');
}

//Q3 Select name, amount, Description, NextStep from opportunity where stagename = 'Closed Won' and amount > 100000

List<Opportunity> opp = [select name, amount, Description, NextStep from opportunity where stagename = 'Closed Won' and amount > 100000];
for(Opportunity oppor : opp){
system.debug('------------------------------');
System.debug('Informações das oportunidades');
System.debug('Nome: ' + oppor.Name);
System.debug('Descrição: ' + oppor.description);
System.debug('Próxima Etapa : ' + oppor.nextStep);
System.debug('\n');
}


//Q4 Select name, rating, type, YearStarted from account where name like 'Uni%'

List<Account> accounts = [ select name, rating, type, YearStarted from account where name like 'Uni%'];
for(account acc : accounts){
system.debug('------------------------------');
System.debug('Informações das oportunidades');
System.debug('Nome: ' + acc.Name);
System.debug('Classificação: ' + acc.rating);
System.debug('Tipo: ' + acc.type);
System.debug('Ano de Início: ' + acc.YearStarted);
System.debug('\n');
}

//Q5 Select name, Company, Email from lead where email like '%.net' and status = 'Working - Contacted'

List<Lead> Leads = [select name, Company, Email from lead where email like '%.net' and status = 'Working - Contacted'];
for(Lead le : Leads){
system.debug('------------------------------');
System.debug('Informações dos Leads ');
System.debug('Nome: ' + le.name);
System.debug('Empresa: ' + le.company);
System.debug('Email: ' + le.email);
System.debug('\n');
}

//Q6 Select name, count(id) from opportunity group by name

List<AggregateResult> opportunities = [SELECT name, count(id) FROM opportunity GROUP BY name ];
For (AggregateResult opp : opportunities){
    System.debug('*******************************');
    System.debug('Informações de Sistema');
    System.debug('Nome: ' + opp.get('Name'));
    System.debug('Id: ' + opp.get('expr0'));
    System.debug('\n');
}

//Q7 Select name, count(id) from opportunity group by name having count(id) = 3

List <AggregateResult> opportunitys = [SELECT name, count(id) from opportunity group by name having count(id) = 3];
for (AggregateResult opp: opportunitys) { 
system.debug ('Informação Oportunidade');
system.debug ('Nome: ' + opp.get('Name'));
system.debug ('\n');   
}

//Q8 Select name, amount, stagename, nextstep, description from opportunity where name like '%Oil%' or name like '%Gene%'

List <opportunity> opportunitys = [SELECT name, amount, stagename, nextstep, description from opportunity where name like '%Oil%' or name like '%Gene%'];
for (opportunity opp: opportunitys) { 
system.debug ('Informação Oportunidade');
system.debug ('Nome: ' + opp.name);
system.debug ('Valor: ' + opp.amount);
system.debug ('Fase: ' + opp.stagename);
system.debug ('NextStep: ' + opp.nextstep);
system.debug ('\n');    
}

//Q9 Select name, format(amount), stagename, format(createddate), format(closedate) from opportunity where stagename = 'Closed Won' and amount < 80000 order by amount desc

List <opportunity> opportunitys = [SELECT name, amount, stagename, createddate, closedate from opportunity where stagename = 'Closed Won' and amount < 80000 order by amount desc];
for (opportunity opp: opportunitys) { 
system.debug ('Informação Oportunidade');
system.debug ('Nome: ' + opp.name);
system.debug ('Valor: ' + opp.amount);
system.debug ('Fase: ' + opp.stagename);
system.debug ('Data de criação: ' + opp.createddate);
system.debug ('Data de fechamento: ' + opp.closedate);
system.debug ('\n');    
}

//Q10 Select name, phone, ( select name, amount, stagename from opportunities ) from account

List <Account> Accounts = [ SELECT name, Phone, (
    SELECT Name, Amount, stagename FROM Opportunities) 
FROM Account ];

FOR (Account acc : accounts) {
System.debug ('Informações de Contas');
System.debug ('Nome: ' + acc.Name);
System.debug ('Telefone: ' + acc.Phone);

    FOR (Opportunity opp : acc.Opportunities){
    System.debug ('Oportunidade');
    System.debug ('Nome de Oportunidade: ' + opp.Name);
    System.debug ('Valor da Oportunidade: ' + opp.Amount);

System.debug ('\n');
}

//Q11 Select name, (select name, amount from opportunities), (select name from contacts where name like 'A%') from account order by name

List<Account> accounts = [select name, (select name, amount from opportunities), (select name from contacts where name like 'A%') from account order by name
];

for(Account acc : accounts){
System.debug ('Informações da Conta');
System.debug ('Nome: ' + acc.Name);

for(Opportunity opp : acc.oportunities){
System.debug ('Informações da Oportunidade');
System.debug ('Nome: ' + opp.Name);
System.debug ('Valor: ' + opp.Amount);


for(Contact ctt: acc.contacts){
System.debug ('Informações do Contato');
System.debug ('Nome: ' + ctt.Name);

}

//Q12 Select name, stagename, nextstep, amount from opportunity where amount < 100000 and closedate = last_quarter

List<Opportunity> opportunities = [select name, stagename, nextstep, amount from opportunity where amount < 100000 and closedate = last_quarter ];


For (Opportunity opp : opportunities){
    System.debug('*******************************');
    System.debug('Informações de Sistema');
    System.debug('Nome: ' + opp.name);
    System.debug('Fase: ' + opp.stagename);
    System.debug('Próxima Fase: ' + opp.nextstep);
    System.debug('\n');
}









