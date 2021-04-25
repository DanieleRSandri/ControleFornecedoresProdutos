create sequence seq_fornecedor;

create table Tab_Fornecedor(

 fornc_codigo	integer default nextval('seq_fornecedor'),
 fornc_razaoSocial  	varchar(50)	not null,
 fornc_cnpj   	Varchar(20)	not null,	
 fornc_IE  	Varchar(20)	not null,   
 fornc_resposanvel 	varchar(50)	not null,
 fornc_contato  	Varchar(20)	not null,   
 primary key (fornc_codigo)        
 
);

create sequence seq_produto;

create table Tab_Produto(
 prod_codigo	integer default nextval('seq_produto'),
 prod_nome    	varchar(50)	not null,
 prod_valor   	varchar(50)	not null,
 prod_quantidade   	integer 	not null,		
 fornc_razaoSocial varchar(50)	not null, 
 primary key (prod_codigo)  
 foregin key (fornc_razaoSocial)
);

CREATE TABLE tab_usuario
(
 usuario character varying(50) NOT NULL,
 senha character varying(50)  NOT NULL,
 primary key(usuario)
)