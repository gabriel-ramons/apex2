//Q1 Uma turma de 7 alunos de inglês da Lingopass, passaram por uma avaliação. Baseado nisso, desenvolva um algoritmo que calcule a média aritmética da turma nesta avaliação. Escreva a média aritmética da turma e, em seguida, verifique se a média da turma está igual ou superior à média do curso. 
//-○ Caso a média da turma seja maior ou igual a 7, imprima: TURMA ACIMA DA MÉDIA 
//-○ Caso a média da turma seja maior ou igual a 7, imprima: TURMA ABAIXO DA MÉDIA 
//-○ Obs: A média do curso de inglês é 7.

decimal n1=5.5, n2=7.8, n3=9.5, n4=3.4, n5=10, n6=8.5, n7=7, media;
media =(n1+n2+n3+n4+n5+n6+n7)/7;
system.debug(media.setScale(2));


   
    if(media>=7){
     system.debug('TURMA ACIMA DA MÉDIA');}
else{
   System.debug('TURMA ABAIXO DA MÉDIA');}   


//Q2  Utilizando a estrutura de laço while, crie um algoritmo que escreva 5 vezes a mesma frase, e avise ao usuário que a sequência acabou. 

integer cont = 0;
  while(cont <= 5){
  system.debug('Eu sou o Batman');
      cont++;}
   system.debug('A sequência Acabou');

//Q3 Usando o DO-while mostre os valores de 50 a 150, em 5 em 5 unidades. 

integer contador = 50;

do{
    system.debug(contador);
    contador +=5;
}while(contador <=150);

//Q4 Cleiton resolveu fazer um churrasco no final de semana. Ele fez uma lista com os seguintes itens para o churrasco: carnes, frango, calabresa, limão, vinagre, e tomate. Porém, ele percebeu que precisaria apenas do vinagre ou do limão, então resolveu remover um dos dois itens. Além disso, ele precisava adicionar bebidas à lista. Transforme isso em 
//código, execute as ações que Cleiton precisa fazer em sua lista e imprima o resultado. 

Set<String> churras = new set <string>{
'carnes','frango','calabresa','limão','vinagre','tomate'
};
    system.debug(churras);
churras.remove('carnes');
churras.remove('frango');
churras.remove('tomate');
churras.remove('calabresa');

churras.add('bebidas');
system.debug(churras);

//Q5 Sabendo que Classes são projetos, onde possuem características e comportamentos, ou seja, permitem armazenar propriedades e métodos dentro dela, veja a seguinte situação. 
//Imagine uma Classe FLOR e identifique dentre as opções abaixo o que seriam Atributos e o que seriam Métodos: 
//○ - Cor; 
//○ - Altura; 
//○ - Crescer; 
//○ - Altura Máxima; 
//○ - Polinizar; 
//○ - Murchar; 
//○ - Número de Pétalas.

public class Flor {
	public String cor;
    public Decimal altura;
    public Decimal alturaMx;
    public Integer nPetalas;
    
    public void crescer(){
        System.debug('Florzinha crescendo');
    }  
        public void polinizar(){
            System.debug('Florzinha com abelhas');
        }
            public void murchar(){
                System.debug('Florzinha morrendo');
            }
}
************************************** ENTER APEX ****************************************
Flor margarida = new Flor();

margarida.polinizar();
margarida.cor = 'branca';

system.debug('Margarida ' + margarida.cor);

//Q6 Crie uma classe Jardim que obedeça à descrição abaixo: 
//● A classe possui os atributos nomePopular, nomeCientífico, horasDeCultivo e CustoDoRamalhete; 
//● O método nomeCompleto deve retornar o atributo nomePopular concatenado ao atributo nomeCientífico;
//● O método calcularCustos faz o cálculo de quanto as flores irão custar para o cliente, multiplicando o atributo hotasDeCultivo pelo atributo custoDoRamalhete e retornar esse valor; 

public class Jardim {
	public String nomePopular = 'Margarida';
	public String nomeCientifico = 'Chrysanthemum leucanthemum';
	public Decimal horasDeCultivo = 2.5;
	public Decimal custoDoRamalhete = 589.99;

    	public void nomeCompleto(){
        System.debug(' Nome Popular: ' + nomePopular + ' ' + 'Nome Científico: ' + nomeCientifico);
    }  

	public void calcularCustos(){
        System.debug(' Custo do Ramalhete: ' + horasDeCultivo * custoDoRamalhete);
    }  
}
************************************** ENTER APEX ****************************************
Jardim jrd = new Jardim();
jrd.nomeCompleto();
jrd.calcularCustos();

//Q7  Encontre o nome e o endereço de e-mail, data de criação e a última modificação de todos os contatos.

SELECT Id, Name, CreatedDate, Email, LastModifiedById, OtherAddress FROM Contact

//Q8 Encontre o nome de cada contato cujo cargo seja CEO ou VP

SELECT Id, Name, Title FROM Contact where Title= 'CEO' or Title='VP'

//Q9 Encontre o ID de todos os contatos com o cargo "Gerente de vendas" que trabalham para uma empresa com receita anual superior a US$ 90.000

SELECT AnnualRevenue.id (SELECT id FROM contact) FROM account WHERE Title = 'Gerente de vendas' AND AnnualRevenue > '900000'

//Q10 Baseado nas respostas das consultas da linha 10, 11, 12, monte listas e através do for exiba os valores de cada consulta.

1- List<Contact> contacts [SELECT Id, Name, CreatedDate, Email, LastModifiedById,Address FROM Contact];

for(Contact ct : contacts{
system.debug('Informações do Contato');
system.debug('Nome: ' + ct.Name);
system.debug('Data de Criação: ' + ct.CreatedDate);
system.debug('Email: ' + ct.Email);
system.debu('Última Modificação por: ' + ct.LastModifiedById);
system.debug('Endereço: ' + Address);
system.debug('\n');
}

2-List<Contact> contacts [SELECT Id, Name, Title FROM Contact where Title= 'CEO' or Title='VP'];

for(Contact ct : contacts{
system.debug('Informações do Contato');
system.debug('Nome: ' + ct.Name);
system.debug('Cargo: ' + ct.Title);
system.debug('\n');
}

3- List<Account> accounts[SELECT AnnualRevenue.id (SELECT id FROM contact) FROM account WHERE Title = 'Gerente de vendas' AND AnnualRevenue > '900000']

for(Account acc: Account{
system.debug('Informações da Conta');
system.debug('Receita Anual: ' + acc.AnnualRevenue);
}

for(Contact ct : contacs{
system.debug('Informações do Contato');
system.debug('Id: ' + ct.id);
system.debug('Cargo: ' + ct.Title);
system.debug('\n');
}

//Q11 Realize operações DML:
//A. Inserir 3 registros em contato, vinculado a uma conta qualquer.

contact ctt1 = new contact(lastname= ‘Lucas’, accountid='0018c00002F7R1RAAV' );
contact ctt2 = new contact(lastname= 'Gustavo', accountid='0018c00002F7JF9AAN');
contact ctt3 = new contact(lastname='Augusto', accountid='0018c00002IDxcJAAT');

insert ctt1;
insert ctt2;
insert ctt3;

//B. Atualize 3 registros em leads de sua escolha.

Lead Ld= new Lead();
Ld.Name = 'Ramon LTDA.';
Ld.Phone = '9333344449';
Ld.Rating = 'Warm';
Ld.Id = '00Q8c00000zic1BEAQ';
update Ld;

Lead Ld= new Lead();
Ld.Name = Torres LTDA.';
Ld.Phone = '9333344449';
Ld.Rating = 'Hot';
Ld.Id = '00Q8c00000zic1GEAQ';
update Ld;

Lead Ld= new Lead();
Ld.Name = Monteiro  LTDA.';
Ld.Phone = '9333344449';
Ld.Rating = 'Cold';
Ld.Id = '00Q8c00000zic1LEAQ';
update Ld;

//C. Delete 3 registros em leads de sua escolha.

List<Lead> Ld = [
select Id
from Lead
where Id = '00Q8c00000zibzfEAA' or Id = '00Q8c00000zibhuEAA' or Id = '00Q8c00000zibhfEAA'
];
 
delete Ld;

//Q12 Realize inserção, update e delete em conta, usando try e catch.

try {
    
    Account Acc = new Account();
    
    insert Acc;
    
} 
catch (DmlException e){
    System.debug('Exeção capiturada');
    System.debug('Exeção:' + e);

try {
    
    Account Acc = new Account();
    
    update Acc;
    
} 
catch (DmlException e){
    System.debug('Exeção capiturada');
    System.debug('Exeção:' + e);}

