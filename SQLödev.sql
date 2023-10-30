Create Table Adresler(
	
	Adres_no int identity(1,1),
	Cadde Varchar(50),
	Mahalle Varchar(50),
	Bina_no Varchar(50),
	Sehir Varchar(20),
	Posta_Kodu int,
	Ulke Varchar(20),
	)

	select *from Adresler
	insert into (adres_no,cadde,mahalle,bina_no,sehir,posta_kodu,ulke)
	values (1,'orhangai','esentepe','5','tokat','60100','t�rkiye',)



select* from Adresler
	update Adresler set cadde='atat�rk' where adres_no ='1'
	delete from Adresler
	where Cadde


	Create Table Emanet(
	
	Emanet_no int identity(1,1),
	ISBN Varchar(50),
	Uye_no Varchar(50),
	Kutuphane_no Varchar(50),
	Emanet_tarihi Varchar(20),
	Teslim_tarihi int,
	)

	select *from Emanet
	instert into (Emanet_no, ISBN, Uye_no, Kutuphane_no, Emanet_tarihi, Teslim_tarihi)
	Values ('1', '6055937515', '1', '1', '12.10.2009', '17.10.2009')

select*from Emanet 
	update Emanet set  Emanet_tarihi='28.10.2009' where Emanet_no='6055937515'
	delete *from Emanet_tarihi 


















Create Table Kitaplar(
	
	ISBN int identity(1,1),
	Kitap_ad� Varchar(50),
	Yay�n_Tarihi Varchar(50),
	S_Sayisi Varchar(50),
	)

	select *from Kitaplar
	instert into (ISBN, Kitap_ad�, Yay�n_Tarihi, S_Sayisi)
	Values ('6055937515', 'Algoritma ve Programlamaya Giri�', '01.07.2009', '306')

update Kitaplar set Yay�n_Tarihi='08.07.2009' where  Kitap_ad�='Algoritma ve Programlamaya Giri�'
	

delete *from Kitaplar 
	where S_Sayisi

		


Create Table Yazarlar(

Yazar_no int identity(1,1),
Yazar_ad� Varchar(50),
Yazar_soyadi Varchar(50),
	)

		select *from Yazarlar
	instert into (Yazar_no, Yazar_ad�, Yazar_soyadi)
	Values ('1', 'Turgut', '�zseven')

	update Yazarlar set Yazar_ad�='ali' where  Yazar_no='1'
	delete *from Yazarlar 

	where Yazar_soyadi






















Create Table Kategoriler(
	
	Kategori_no int identity(1,1),
	Kategori_ad� Varchar(50),
	)

	select *from Kategoriler
	instert into (Kategori_no, Kategori_ad�)
	Values ('1', 'Bilgisayar')


update Kategoriler set Kategori_ad�='Bilgisayar' where  Kategori_no='1'
delete *from Kategoriler 
where  Kategori_ad�




create table uyeler ( 
 
uyeID int not null primary key , 
uye_ad� nvarchar (50) not null, 
uye_soy_ad� nvarchar (50) not null, 
cinsiyet nvarchar (2) null , 
adres_no nvarchar (50) not null , 
telefon nvarchar (50) not null , 
eposta nvarchar (50) null, 
) 
 
 
select *from  uyeler  
  insert into uyeler(uyeID,uye_ad�,uye_soyad�,cinsiyet,adres_no,telefon,eposta), 
  values (1,'ay�e','kara','0','3','25698554215','aa@maiil.com',) 
 
 
select *from uyeler  
 
  update uyeler set telefon='25698555465' where uyeID='1' 
   
   
delete* from uyeler where eposta 
 
 
 
 












create table kutuphane ( 
 
 
kutuphaneID int not null primary key , 
adres_no nvarchar (50) not null, 
kutuphane_ismi nvarchar (50) not null, 
a��klama nvarchar (2) null , 
 
select*from kutuphane  
insert into (kutuphaneID,adres_no,kutuphane_ismi,a��klama) 
values (1,'1','merkez','merkez_k�t�phane') 
select* from kutuphane 
  
 
update kut�phane set  adres_no='4' where kutuphaneID='1' 
 
 delete *from kutuphane 
 where a��klama  


Create table Kitap_ Kutuphane( 
Kutuphane_no int identity (1,1), 
ISBN Varchar(50), 
Miktar Varchar(50), 
) 
 
select *from Kitap_Kutuphane 
insert into ('Kutuphane_no', 'ISBN', 'Miktar') 
Values ('1', '6055937515', '3') 
 
select *from Kitap_Kutuphane 
 
update Kitap_k�t�phane set miktar='5' where 'kutuphane_no'=1 
 
delete *from kitap_k�t�phane  
where miktar 
 
 
 
 
Create table Kitap_ Kategori( 
ISBN  int identity (1,1), 
Kategori_no Varchar(50), 
) 
 
select *from Kitap_Kategori 
insert into ('ISBN', 'Kategori_no') 
Values ('6055937515', '1') 
 
select *from Kitap_Kategori 
 
update Kitap_Kategori set ISBN='3' where 'kutuphane_no'=1 
 
delete *from kitap_k�t�phane  
where ISBN 
 
 
 
 
Create table Kitap_ Yazar( 
ISBN  int identity (1,1), 
Yazar_no Varchar(50), 
) 
 
select *from Kitap_Yazar 
insert into ('ISBN', 'Yazar_no') 
Values ('6055937515', '2') 
 
 
 
select *from Kitap_Yazar 
 
update Kitap_Yazar set ISBN='46362363' where 'ISBN'=6055937515 
 
delete *from kitap_yazar  
where ISBN 
 
 
 
CREATE TABLE Kitap_katagori (
ISBN VARCHAR(50) NOT NULL,
	
KATEGORI_NO INT NOT NULL,
	
CONSTRAINT "Kitap_katagori_PK" PRIMARY KEY ("Kategori_no", "ISBN"),
CONSTRAINT "Kitap_katagori_FK" FOREIGN KEY ("Kategori_no") REFERENCES Katagoriler (Kategori_no)

ALTER TABLE Kitap_katagori ADD CONSTRAINT "Kitap_katagori_Kitaplar_FK" FOREIGN KEY ("ISBN") REFERENCES Kitaplar (ISBN);

	)



