//Q1 Imprima no apex o nome, empresa, estado/província e email de todos os leads que pertencem aos estados CA ou VA, ordenados pelo nome de forma decrescente.

list <Lead> NewLead = [
    select name, company, state, email FROM lead
    where state = 'CA'OR state = 'VA'
    Order by Name desc
];

for (lead ld: NewLead){
    system.debug(ld.name);
    system.debug(ld.company);
    system.debug(ld.state);
    system.debug(ld.email);
}

//Q2 Imprima no apex o nome e status dos leads com status working not contacted e que possuam ‘Co’ em qualquer parte do nome.

list <Lead> NewLead = [
    select name, status
    FROM lead
    where status = 'working - contacted' AND name LIKE  '%CO%'
];

for (lead acc : NewLead){
    system.debug(acc.name);
    system.debug(acc.status);
}

//Q3 Imprima no apex o nome, cargo e telefone dos contatos que possua United ou Ltd em qualquer parte do nome da conta

list<Contact> contacts = [
	select name, title, phone
	from contact
	where account.name like '%United%' OR account.name like '%Ltd%'
];

for(Contact ct : contacts){
    system.debug(ct.name);
    system.debug(ct.title);
    system.debug(ct.phone);
    system.debug('\n');}

//Q4 Imprima em apex o nome, phone, rating, data de criação das contas ordenados por data de criação decrescente, mostrando também o nome e telefone dos contatos ordenados por nome ligados a cada uma das contas.

LIST <Account> NewAccount = [
   SELECT Name, Phone, Rating, CreatedDate, (
    SELECT Name, Phone FROM Contacts ORDER BY Name)
    FROM Account
    ORDER BY CreatedDate Desc
];
    FOR(Account acc : NewAccount){
      System.debug(acc.Name);
      System.debug(acc.Phone);
      System.debug(acc.Rating);
      System.debug(acc.CreatedDate);
    	
    	FOR(Contact ctt : acc.Contacts){
    	System.debug(ctt.Name);
    	System.debug(ctt.Phone);
        	}
        	}

//Q5 Com Apex, insira 5 leads atribuindo valores aos campos considerados obrigatórios. Essa questão deve ser feita SEM LISTA.

Lead newLdd1 = new Lead(
FirstName='Lead-01',
LastName =’Augusto’,
Company ='E10',
Status = 'Open - Not Contacted'
);
 
insert newLdd1;
 
Lead newLdd2 = new Lead(
FirstName='Lead-02',
LastName ='Gustavo',
Company ='E15',
Status = 'Open - Not Contacted'
);
 
insert newLdd2;
 
Lead newLdd3 = new Lead(
FirstName='Lead-03',
LastName ='Eduardo',
Company ='E30',
Status = 'Open - Not Contacted'
);
 
insert newLdd3;
 
Lead newLdd4 = new Lead(
FirstName='Lead-04',
LastName ='Rafael',
Company ='E40',
Status = 'Open - Not Contacted'
);
 
insert newLdd4;
 
Lead newLdd5 = new Lead(
FirstName='Lead-05',
LastName ='Matheus',
Company ='E50',
Status = 'Open - Not Contacted'
);
 
insert newLdd5;

//Q6 Com Apex, insira 5 Contas atribuindo valores aos campos considerados obrigatórios. Essa questão deve ser feita SEM LISTA.

Account newAc1 = new Account(
Name ='Conta-01',
Phone = '994959697',
CNPJ__c ='123452345678-03',
AnnualRevenue = 100000,
Type = 'Variavel Inserida'
);
 
insert newAc1;
 
Account newAc2 = new Account(
Name ='Conta-02',
Phone = '994959697',
CNPJ__c ='123433345678-03',
AnnualRevenue = 200000,
Type = 'Variavel Inserida'
);
 
insert newAc2;
 
Account newAc3 = new Account(
Name ='Conta-03',
Phone = '994977697',
CNPJ__c ='123451115678-03',
AnnualRevenue = 300000,
Type = 'Variavel Inserida'
);
 
insert newAc3;
 
Account newAc4 = new Account(
Name ='Conta-04',
Phone = '922259697',
CNPJ__c ='123879065678-03',
AnnualRevenue = 400000,
Type = 'Variavel Inserida'
);
 
insert newAc4;
 
Account newAc5 = new Account(
Name ='Conta-05',
Phone = '922111697',
CNPJ__c ='123866665678-03',
AnnualRevenue = 500000,
Type = 'Variavel Inserida'
);
 
insert newAc5;

//Q7 Com Apex, insira uma lista de 10 Contas com valores obrigatórios, utilizando apenas um insert.

Account a1 = new Account(Name='Ramon I', Phone='123456789',AnnualRevenue = 1000000, CNPJ__c = '11222333444455');
Account a2 = new Account(Name='Ramon II', Phone='123456789',AnnualRevenue = 1000000, CNPJ__c = '55444333222211');

Account a3 = new Account(Name='Ramon III', Phone='123456789',AnnualRevenue = 1000000, CNPJ__c = '22333555444466');
Account a4 = new Account(Name='Ramon IV', Phone='123456789',AnnualRevenue = 1000000, CNPJ__c = '77999555444422');
Account a5 = new Account(Name='Ramon V', Phone='123456789'AnnualRevenue = 1000000, CNPJ__c = '77000555333377');
Account a6 = new Account(Name='Ramon VI', Phone='123456789',AnnualRevenue = 1000000, CNPJ__c = '12345678889041');
Account a7 = new Account(Name='Ramon VII', Phone='123456789',AnnualRevenue = 1000000, CNPJ__c = '22888444000099');
Account a8 = new Account(Name='Ramon VII', Phone='123456789',AnnualRevenue = 1000000, CNPJ__c = '79684731000133');
Account a9 = new Account(Name='Ramon IX', Phone='123456789',AnnualRevenue = 1000000, CNPJ__c = '44888222777744');
Account a10 = new Account(Name='Ramon X', Phone='123456789',AnnualRevenue = 1000000, CNPJ__c = '55999222555560');
List<Account> contas = new List<Account>();
contas.add(a1);
contas.add(a2);
contas.add(a3);
contas.add(a4);
contas.add(a5);
contas.add(a6);
contas.add(a7);
contas.add(a8);
contas.add(a9);
contas.add(a10);

//Q8 Com Apex, atualize 3 registros de conta de sua escolha alterando valores dos campos nome, telefone e classificação.

Account acc = new Account();
acc.Name = 'Zamblenelli, Inc.';
acc.Phone = '9333344449';
acc.Rating = 'Warm';
acc.Id = '0018c000026C8maAAC';
update acc;
 
Account acc1 = new Account();
acc1.Name = 'Obi-Wan Bootcamp';
acc1.Phone = '9367898749';
acc1.Rating = 'Warm';
acc1.Id = '0018c000026C8v8AAC';
update acc1;
 
Account acc2 = new Account();
acc2.Name = 'Schostners & Schostners';
acc2.Phone = '9333344449';
acc2.Rating = 'Warm';
acc2.Id = '0018c000026ByHyAAK';
update acc2;

//Q9 Com Apex, atualize o estado/província para CE de todas as contas que possuem o estado/província vazios.

LIST <Account> accState = [
SELECT billingState FROM Account WHERE billingState = NULL
];
 
FOR (Account acc : accState){
    acc.billingState = 'CE';
}
 
UPDATE accState;

//Q10 Delete 3 registros de sua escolha em Oportunidade e Contas.

List<Opportunity> opp = [
select Id
from Opportunity
where Id = ‘0068c00000nZUFqAAOor’ Id = '0068c00000p50kxAAA' or Id = '0068c00000p50l4AAA'
];
 
delete opp;
 
List<Account> acc = [
select Id
from Account
where Id = '0018c00002DholkAAB' or Id = '0018c00002DholeAAB' or Id = '0018c00002DholgAAB'
];
 
delete acc;

