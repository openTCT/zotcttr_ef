
# <p style="text-align: right">
openTCT | Türkiye e-Fatura SAP Paketi</p>



# <p style="text-align: right">
Software Design Document</p>






1. Genel Bakış


## 1.1. Özet

openTCT Türkiye SAP e-Fatura Paketi basitçe SAP sisteminde çeşitli modüller üzerinde bulunan fatura belgelerinin bir kokpitte toplanması ve regülasyona uygun şekilde GİB'e iletilmesini sağlar.


# 


## 



2. Paket Yapısı

Ana paket ZOTCTTR_EF olarak adlandırılmıştır. Bu paket, aşağıda açıklanacak olan alt paketleri (subpackages) kapsayıcı bir pakettir.

Sistem mimarisi host-client yapısı üzerinden tanımlanmıştır. Host rolünde çalışacak sistemde gönderim raporları, DDIC nesneleri, user-exitler, entegrasyon sınıfları gibi merkezi repository objeleri bulunmaktadır. 

Client rolünde çalışacak sistemde fatura belgelerini okuyup gerekli veriyi elde edecek olan extractor sınıfları ve bunların RFC wrapperları bulunacaktır. Bu package'da mümkün olduğu kadar az repository object bulundurmak esastır. 

Bu mimari, çeşitli sistem yapıları (system landscape) ile uyumlu çalışacak şekilde tasarlanmıştır. Tek sistemden ibaret SAP kurgularında host ile client aynı sistem üzerinde çalışacaktır. Birden fazla sistemden oluşan SAP kurgularında bir sistem host olarak belirlenecek, kokpit ve gönderim işlemleri bu sistem üzerinden gerçekleştirilecek ve diğer sistemlerdeki fatura belgeleri RFC ile uzaktaki client package'dan çekilecektir.



<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image1.png "image_tooltip")



## 2.1. Alt paketler


<table>
  <tr>
   <td><strong>Paket Adı</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_HOST
   </td>
   <td>e-Fatura arka uç (back-end) paketi
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_CLI
   </td>
   <td>e-Fatura istemci (client) paketi
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_UI
   </td>
   <td>e-Fatura ön uç (front-end) paketi
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_INT
   </td>
   <td>e-Fatura entegrasyon paketi
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_UBL
   </td>
   <td>e-Fatura UBL paketi
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_EXIT
   </td>
   <td>e-Fatura user exit paketi
   </td>
  </tr>
</table>


Tablo 1 - Alt paketler


### 2.1.1. ZOTCTTR_EF_HOST

e-Fatura arka uç (back-end) paketi. Genel olarak fatura gönderim ve alım işlemleri için gerekli DDIC objeleri ve application classları içerir.


### 2.1.2. ZOTCTTR_EF_CLIENT

e-Fatura istemci (client) paketi. Fatura belgelerini okuyup host paketine iletmek için gerekli extractor sınıflarını içerir.


### 2.1.3. ZOTCTTR_EF_UI

e-Fatura ön uç (front-end) paketi. Host paketinin bir alt paketidir. Raporlar ve Fiori, BSP, WD gibi arayüz uygulamaları bu paket altında bulunmaktadır.


### 2.1.4. ZOTCTTR_EF_INT

e-Fatura entegrasyon paketi. Host paketinin altında bulunmaktadır. Özel entegratör ve imza sunucusuna bağlantı için gerekli proxy objelerini içerir.


### 2.1.5. ZOTCTTR_EF_EXIT

e-Fatura user exit paketi. Host paketinin altında bulunmaktadır. Sistem özelinde yapılan geliştirmeler bu paket altında bulunmaktadır..



3. Teknik Mimari


## 3.1. Class Diagramları


### 3.1.1. Host



<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image2.png "image_tooltip")



### 3.1.2. Client



<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image3.png "image_tooltip")



### 3.1.3. UI



<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image4.png "image_tooltip")



### 3.1.4. INT



<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image5.png "image_tooltip")



### 3.1.5. UBL



<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image6.png "image_tooltip")



### 3.1.6. EXIT



<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image7.png "image_tooltip")



## 3.2. Activity Diagramı


### 3.2.1. Fatura Kaydetme



<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image8.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image8.png "image_tooltip")



### 3.2.2. Fatura Önizleme



<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image9.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image9.png "image_tooltip")



### 3.2.3. Fatura Gönderme



<p id="gdcalert10" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image10.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert11">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image10.png "image_tooltip")



### 3.2.4. Giden Fatura Görüntüleme



<p id="gdcalert11" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image11.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert12">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image11.png "image_tooltip")



### 3.2.5. Gelen Fatura Görüntüleme ve Yanıtlama



<p id="gdcalert12" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image12.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert13">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image12.png "image_tooltip")



### 3.2.6. Gelen Fatura Belgelerini İçeri Alma


## 

<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image13.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image13.png "image_tooltip")



## 3.3. Deployment Diagramı



<p id="gdcalert14" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image14.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert15">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image14.png "image_tooltip")



## 


# 4. Repository Nesneleri


## 4.1. Arayüzler (Interface)


### 4.1.1. ZOTCTTR_EF_IF101

Fatura arayüzüdür. 


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>SEND
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SAVE
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>PREVIEW
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>VIEW
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>GET_STATUS
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>RESPOND
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SET_HEADER
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SET_ITEM
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SET_PARTY
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SET_NOTE
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SET_ADDT
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SET_PRICE
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SET_TAX
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>GET_HEADER
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>GET_ITEM
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>GET_PARTY
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>GET_NOTE
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>GET_ADDT
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>GET_PRICE
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>GET_TAX
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>CHECK_REG
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ASSIGN_SERINO
   </td>
   <td>Protected
   </td>
   <td>GIB ID ataması
   </td>
  </tr>
  <tr>
   <td>SET_FLATTAB
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>GET_FLATTAB
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
</table>



<table>
  <tr>
   <td><strong>Attribute</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MO_UBL
   </td>
   <td>Protected
   </td>
   <td>ZOTCT_CL_UBL
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MO_RESPONSE
   </td>
   <td>Protected
   </td>
   <td>ZOTCTTR_EF_IF102 
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MS_DATA
   </td>
   <td>Protected
   </td>
   <td>ZOTCTTR_EF_S3007
   </td>
   <td>Başlık, kalem, party dataları
   </td>
  </tr>
</table>



#### SEND


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### SAVE


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### PREVIEW


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### VIEW


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### GET_STATUS


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### RESPOND


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IS_RESPONSE
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_S3002
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### SET_HEADER


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IS_HEADER
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_S3003
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>IS_HEADER_EXT
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### SET_ITEM


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IT_ITEMS
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_TT3004
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>IT_ITEMS_EXT
   </td>
   <td>Importing
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### SET_PARTY


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IT_PARTIES
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_TT3005
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### SET_NOTE


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IT_NOTES
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_TT3006
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### SET_ADDT


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IT_ADDT
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_TT3012
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### SET_PRICE


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IS_PRICE
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_S3013
   </td>
   <td>Price Structure
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### SET_TAX


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IS_TAX
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_S3014
   </td>
   <td>Tax Structure
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### CHECK_REG


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IV_TIN
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_DE092
   </td>
   <td>VKN
   </td>
  </tr>
  <tr>
   <td>RV_REG
   </td>
   <td>Returning
   </td>
   <td>ZOTCTTR_EF_DE093
   </td>
   <td>Mükellef Kontrol Sonucu
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### ASSIGN_SERINO


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### SET_FLATTAB


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### GET_FLATTAB


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.1.2. ZOTCTTR_EF_IF102

Fatura yanıt arayüzüdür.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>SEND
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SAVE
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SET_RESPONSE
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SET_DESC
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>GET_RESPONSE
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>GET_DESC
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
</table>



<table>
  <tr>
   <td><strong>Attribute</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MO_UBL
   </td>
   <td>Protected
   </td>
   <td>ZOTCT_CL_UBL
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MO_INVOICE
   </td>
   <td>Protected
   </td>
   <td>ZOTCTTR_EF_IF102 
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MS_DATA
   </td>
   <td>Protected
   </td>
   <td>ZOTCTTR_EF_S3002
   </td>
   <td>App. response bilgileri
   </td>
  </tr>
</table>



#### SEND


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### SAVE


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### SET_RESPONSE


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IV_RESPONSE
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_DE094
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### SET_DESC


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>EV_DESC
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_DE095
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### GET_RESPONSE


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IV_RESPONSE
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_DE094
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### GET_DESC


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>EV_DESC
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_DE095
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.1.3. ZOTCTTR_EF_IF201

Extractor factory arayüzüdür.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>CONSTRUCTOR
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>GET_EXTRACTOR
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
</table>



<table>
  <tr>
   <td><strong>Attribute</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MO_EXTRACTOR
   </td>
   <td>Protected
   </td>
   <td>ZOTCTTR_EF_CL210
   </td>
   <td>
   </td>
  </tr>
</table>



#### GET_EXTRACTOR


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>RO_EXTRACTOR
   </td>
   <td>Returning
   </td>
   <td>ZOTCTTR_EF_CL210
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.1.4. ZOTCTTR_EF_IF202

Extractor arayüzüdür.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>READ
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>PROCESS
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
</table>



<table>
  <tr>
   <td><strong>Attribute</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MO_INVOICE
   </td>
   <td>Protected
   </td>
   <td>ZOTCTTR_EF_IF101
   </td>
   <td>
   </td>
  </tr>
</table>



#### READ


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IS_DATA
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_S3007
   </td>
   <td>Başlık, kalem, party dataları
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### PROCESS


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.1.5 ZOTCTTR_EF_IF301

Front end arayüzüdür.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>CONSTRUCTOR
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>READ
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>PROCESS
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>DISPLAY
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>USER_COMMAND
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
</table>



<table>
  <tr>
   <td><strong>Attribute</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MT_INVLIST
   </td>
   <td>Protected
   </td>
   <td>ZOTCTTR_EF_TT3008
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MT_OUTTAB
   </td>
   <td>Protected
   </td>
   <td>ZOTCTTR_EF_TT3009
   </td>
   <td>
   </td>
  </tr>
</table>



#### READ


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IS_PARAMS
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_S3010
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### PROCESS


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### DISPLAY


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### USER_COMMAND


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IO_INVOICE
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_IF101
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>IV_UCOMM
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_DE096
   </td>
   <td>Ucomm
   </td>
  </tr>
  <tr>
   <td>IV_FNAME
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_DE097
   </td>
   <td>Fieldname
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.1.6. ZOTCTTR_EF_IF401

Entegratör factory arayüzüdür.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>CONSTRUCTOR
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>GET_INTEGRATOR
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
</table>



<table>
  <tr>
   <td><strong>Attribute</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MO_INTEGRATOR
   </td>
   <td>ZOTCTTR_EF_CL410
   </td>
   <td>
   </td>
  </tr>
</table>



#### GET_INTEGRATOR


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>RO_INTEGRATOR
   </td>
   <td>Returning
   </td>
   <td>ZOTCTTR_EF_CL410
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.1.7. ZOTCTTR_EF_IF402

Entegratör arayüzü.. 


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>READ_USERLIST
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SEND
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>PREVIEW
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>VIEW
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>RESPOND
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>READ_INBOUND
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>READ_STATUS
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>



<table>
  <tr>
   <td><strong>Attribute</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>



#### READ_USERLIST


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### SEND


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IO_INVOICE
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_IF101
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### PREVIEW


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IO_INVOICE
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_IF101
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### VIEW


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IO_INVOICE
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_IF101
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### RESPOND


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IO_INVOICE
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_IF101
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>IO_RESPONSE
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_IF102
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.1.8. ZOTCTTR_EF_IF501

UBL engine arayüzüdür.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>FLATTEN
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>NEST
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>



<table>
  <tr>
   <td><strong>Attribute</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.1.9. ZOTCTTR_EF_IF601

User-exit factory arayüzüdür.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>CONSTRUCTOR
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>GET_EXIT
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
</table>



<table>
  <tr>
   <td><strong>Attribute</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MO_EXIT
   </td>
   <td>ZOTCTTR_EF_CL601
   </td>
   <td>
   </td>
  </tr>
</table>



####  \
GET_EXIT


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>RO_EXIT
   </td>
   <td>Returning
   </td>
   <td>ZOTCTTR_EF_CL601
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.1.10. ZOTCTTR_EF_IF602

User exit arayüzüdür.. Müşteri host sisteminde bu arayüzü kullanan bir Z* class oluşturularak user-exit geliştirmeleri implemente edilir.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>SET_HEADER_B
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SET_HEADER_A
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SET_ITEM_B
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SET_ITEM_A
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SET_PARTY_B
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SET_PARTY_A
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SET_NOTE_B
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SET_NOTE_A
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SAVE_B
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SAVE_A
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SEND_B
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SEND_A
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SERINO_B
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SERINO_A
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>VIEW_B
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>VIEW_A
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>PREVIEW_B
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>PREVIEW_A
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>RESPOND_B
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>RESPOND_A
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>FLATTEN_B
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>FLATTEN_A
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>NEST_B
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>NEST_A
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
</table>



<table>
  <tr>
   <td><strong>Attribute</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>



## 4.2. Sınıflar (Class)


### 4.2.1. ZOTCTTR_EF_CL000

Ürün için genel superclass olarak tasarlanmıştır. Uyarlama tabloları, constantlar bu class içinde tutulmaktadır.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>UPDATE_USERLIST
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>UPDATE_STATUS
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>UPDATE_APPRESP
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
</table>



<table>
  <tr>
   <td><strong>Attribute</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MT_T0001
   </td>
   <td>Public
   </td>
   <td>ZOTCTTR_EF_TT0001
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MT_T0002
   </td>
   <td>Public
   </td>
   <td>ZOTCTTR_EF_TT0002
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MT_T0003
   </td>
   <td>Public
   </td>
   <td>ZOTCTTR_EF_TT0003
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MT_T0004
   </td>
   <td>Public
   </td>
   <td>ZOTCTTR_EF_TT0004
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MT_T0005
   </td>
   <td>Public
   </td>
   <td>ZOTCTTR_EF_TT0005
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MT_T0006
   </td>
   <td>Public
   </td>
   <td>ZOTCTTR_EF_TT0006
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MT_T0007
   </td>
   <td>Public
   </td>
   <td>ZOTCTTR_EF_TT0007
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MT_T0008
   </td>
   <td>Public
   </td>
   <td>ZOTCTTR_EF_TT0008
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MT_T0101
   </td>
   <td>Public
   </td>
   <td>ZOTCTTR_EF_TT0101
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MT_T0102
   </td>
   <td>Public
   </td>
   <td>ZOTCTTR_EF_TT0102
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MT_T0103
   </td>
   <td>Public
   </td>
   <td>ZOTCTTR_EF_TT0103
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MT_T0104
   </td>
   <td>Public
   </td>
   <td>ZOTCTTR_EF_TT0104
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MT_T0201
   </td>
   <td>Public
   </td>
   <td>ZOTCTTR_EF_TT0201
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MT_T0202
   </td>
   <td>Public
   </td>
   <td>ZOTCTTR_EF_TT0202
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MT_T0203
   </td>
   <td>Public
   </td>
   <td>ZOTCTTR_EF_TT0203
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>MT_T0204
   </td>
   <td>Public
   </td>
   <td>ZOTCTTR_EF_TT0204
   </td>
   <td>
   </td>
  </tr>
</table>



#### UPDATE_USERLIST


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### UPDATE_STATUS


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IS_INTERVAL
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_S3011
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



#### UPDATE_APPRESP


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IS_INTERVAL
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_S3011
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.2.2. ZOTCTTR_EF_CL101

Uygulama classıdır. Fatura objelerinin oluşturulduğu ve gönderim, önizleme, yanıtlama vb. işlemler bu class içinden tetiklenir.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>READ
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
</table>



<table>
  <tr>
   <td><strong>Attribute</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MT_INVLIST[]
   </td>
   <td>Protected
   </td>
   <td>
   </td>
  </tr>
</table>



#### READ


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IS_PARAMS
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_S3010
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_INVLIST
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3008
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.2.3. ZOTCTTR_EF_CL111

Gelen belge extractorudur.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>FETCH_INBOUND
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
</table>



<table>
  <tr>
   <td><strong>Attribute</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MT_INVLIST[]
   </td>
   <td>Protected
   </td>
   <td>ZOTCTTR_EF_TT3008
   </td>
   <td>
   </td>
  </tr>
</table>



#### FETCH_INBOUND


<table>
  <tr>
   <td><strong>Parametre</strong>
   </td>
   <td><strong>İşlev</strong>
   </td>
   <td><strong>Tip</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>IS_INTERVAL
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_S3011
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_MESSAGES
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3001
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_INVLIST
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3008
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.2.4. ZOTCTTR_EF_CL102

Giden e-fatura belge classıdır. ZOTCTTR_EF_IF101 interface'ini kullanır.


### 4.2.5. ZOTCTTR_EF_CL103

Gelen e-fatura belge classıdır. ZOTCTTR_EF_IF101 interface'ini kullanır.


### 4.2.6. ZOTCTTR_EF_CL104

Gelen e-faturaya verilen yanıt classıdır. ZOTCTTR_EF_IF102 interface'ini kullanır.


### 4.2.7. ZOTCTTR_EF_CL105

Gönderilen e-faturaya gelen yanıt classıdır. ZOTCTTR_EF_IF102 interface'ini kullanır.


### 4.2.8. ZOTCTTR_EF_CL200

Extractor factory classtır. ZOTCTTR_EF_IF201 interface'ini kullanır.


### 4.2.9. ZOTCTTR_EF_CL211

SD extractor classtır. ZOTCTTR_EF_CL210 classını extend eder.


### 4.2.10. ZOTCTTR_EF_CL212

FI extractor classtır. ZOTCTTR_EF_CL210 classını extend eder.


### 4.2.11. ZOTCTTR_EF_CL213

MM extractor classtır. ZOTCTTR_EF_CL210 classını extend eder.


### 4.2.12 ZOTCTTR_EF_CL301

R3 rapor classıdır. ZOTCTTR_EF_IF301 interface'ini kullanır.


### 4.2.13. ZOTCTTR_EF_CL400

Entegratör factory classtır. ZOTCTTR_EF_IF401 interface'ini kullanır.


### 4.2.14. ZOTCTTR_EF_CL411

Efinans entegratör classtır. ZOTCTTR_IF_CL402 arayüzünü kullanır.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ADD_SOAP_HEADER
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
</table>



<table>
  <tr>
   <td><strong>Attribute</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>USERNAME
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>PASSWORD
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ERP_CODE
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.2.15. ZOTCTTR_EF_CL412

Uyumsoft entegratör classtır. ZOTCTTR_EF_CL410 classını extend eder.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ADD_SOAP_HEADER
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
</table>



<table>
  <tr>
   <td><strong>Attribute</strong>
   </td>
   <td><strong>Erişim</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>USERNAME
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>PASSWORD
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ERP_CODE
   </td>
   <td>Public
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.2.16. ZOTCTTR_EF_CL413

Tam entegratör classtır. ZOTCTTR_EF_CL410 classını extend eder.


### 4.2.17. ZOTCTTR_EF_CL501

UBL classtır, ZOTCT_UTILS paketindeki ürün ve ülkeye özgü UBL engine classı extend eder.


### 4.2.18. ZOTCTTR_EF_CL600

User exit factory classtır.


### 4.2.19. ZCX_OTCT

Exception class


## 


## 4.3. Tablolar


<table>
  <tr>
   <td><strong>Tablo Adı</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
   <td><strong>Paket</strong>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T0001
   </td>
   <td>Şirket Bilgileri Uyarlaması
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T0002
   </td>
   <td>Belge Tipi Uyarlaması
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T0003
   </td>
   <td>Modül Uyarlaması
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T0004
   </td>
   <td>XSLT Uyarlaması
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T0005
   </td>
   <td>Seri Uyarlaması
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T0006
   </td>
   <td>İhracat Uyarlaması
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T0007
   </td>
   <td>Faturalaşma Uyarlaması
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T0008
   </td>
   <td>Banka Bilgileri Uyarlaması
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T0009
   </td>
   <td>Client Uyarlaması
   </td>
   <td>CLI
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T0101
   </td>
   <td>Vergi Uyarlaması
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T0102
   </td>
   <td>Vergi İstisna Uyarlaması
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T0103
   </td>
   <td>Tevkifat Uyarlaması
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T0104
   </td>
   <td>Document Type Uyarlaması (sd,fi,mm vs)
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T0201
   </td>
   <td>Mükellef Listesi
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T0202
   </td>
   <td>UBL Birim Kodu Listesi
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T0203
   </td>
   <td>GİB Statü Kodu Listesi
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T0204
   </td>
   <td>Para Birimi Listesi
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T1101
   </td>
   <td>Fatura Başlık
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T1102
   </td>
   <td>Fatura Zarf
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T1103
   </td>
   <td>UBL
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T1104
   </td>
   <td>Referans Anaveri
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T1301
   </td>
   <td>Giden Faturaya Gelen Uygulama Yanıtları
   </td>
   <td>HOST
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T1401
   </td>
   <td>Gelen Faturaya Verilen Uygulama Yanıtları
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_T2001
   </td>
   <td>Job Log Tablosu
   </td>
   <td>
   </td>
  </tr>
</table>


Tablo 2 - Tablolar


### 4.3.1. ZOTCTTR_EF_T0001

Şirket bilgileri uyarlama tablosudur


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>BUKRS
   </td>
   <td>BUKRS
   </td>
   <td>Şirket Kodu
   </td>
  </tr>
  <tr>
   <td>NAME
   </td>
   <td>ZOTCTTR_EF_DE001
   </td>
   <td>Unvan
   </td>
  </tr>
  <tr>
   <td>VD
   </td>
   <td>ZOTCTTR_EF_DE002
   </td>
   <td>Vergi Dairesi
   </td>
  </tr>
  <tr>
   <td>VKN
   </td>
   <td>ZOTCTTR_EF_DE003
   </td>
   <td>VKN ya da TCKN
   </td>
  </tr>
  <tr>
   <td>GIB_ALIAS
   </td>
   <td>ZOTCTTR_EF_DE004
   </td>
   <td>Alias
   </td>
  </tr>
  <tr>
   <td>TRADE_REGNO
   </td>
   <td>ZOTCTTR_EF_DE005
   </td>
   <td>Ticaret Sicil No
   </td>
  </tr>
  <tr>
   <td>MERSISNO
   </td>
   <td>ZOTCTTR_EF_DE006
   </td>
   <td>Mersis No
   </td>
  </tr>
  <tr>
   <td>START_DATE
   </td>
   <td>ZOTCTTR_EF_DE007
   </td>
   <td>e-Fatura Mükelleflik Tarihi
   </td>
  </tr>
  <tr>
   <td>WEBSITE_URI
   </td>
   <td>ZOTCTTR_EF_DE008
   </td>
   <td>Web Site Adresi
   </td>
  </tr>
  <tr>
   <td>POSTBOX
   </td>
   <td>ZOTCTTR_EF_DE009
   </td>
   <td>Posta Kutusu
   </td>
  </tr>
  <tr>
   <td>ROOM
   </td>
   <td>ZOTCTTR_EF_DE010
   </td>
   <td>Kapı No
   </td>
  </tr>
  <tr>
   <td>STREET_NAME
   </td>
   <td>ZOTCTTR_EF_DE011
   </td>
   <td>Cadde/Sokak
   </td>
  </tr>
  <tr>
   <td>BLOCK_NAME
   </td>
   <td>ZOTCTTR_EF_DE012
   </td>
   <td>Blok
   </td>
  </tr>
  <tr>
   <td>BUILDING_NAME
   </td>
   <td>ZOTCTTR_EF_DE013
   </td>
   <td>Bina Adı
   </td>
  </tr>
  <tr>
   <td>BUILDING_NUMBER
   </td>
   <td>ZOTCTTR_EF_DE014
   </td>
   <td>Bina No
   </td>
  </tr>
  <tr>
   <td>CITY_SUBDIVISION
   </td>
   <td>ZOTCTTR_EF_DE015
   </td>
   <td>İlçe
   </td>
  </tr>
  <tr>
   <td>CITY
   </td>
   <td>ZOTCTTR_EF_DE016
   </td>
   <td>İl
   </td>
  </tr>
  <tr>
   <td>POSTAL_ZONE
   </td>
   <td>ZOTCTTR_EF_DE017
   </td>
   <td>Posta Kutusu
   </td>
  </tr>
  <tr>
   <td>REGION
   </td>
   <td>ZOTCTTR_EF_DE018
   </td>
   <td>Bölge
   </td>
  </tr>
  <tr>
   <td>COUNTRY
   </td>
   <td>ZOTCTTR_EF_DE019
   </td>
   <td>Ülke
   </td>
  </tr>
  <tr>
   <td>TELEPHONE
   </td>
   <td>ZOTCTTR_EF_DE020
   </td>
   <td>Telefon
   </td>
  </tr>
  <tr>
   <td>TELEFAX
   </td>
   <td>ZOTCTTR_EF_DE021
   </td>
   <td>Fax
   </td>
  </tr>
  <tr>
   <td>ELECTRONIC_MAIL
   </td>
   <td>ZOTCTTR_EF_DE022
   </td>
   <td>e-Mail
   </td>
  </tr>
  <tr>
   <td>DEFAULT_PROFILE
   </td>
   <td>ZOTCTTR_EF_DE023
   </td>
   <td>Profil
   </td>
  </tr>
</table>


Tablo 3 - ZOTCTTR_EF_T0001 Tablo yapısı


### 4.3.2. ZOTCTTR_EF_T0002

Senaryo uyarlama tablosudur. Bu tablo ile e-Faturaya konu olan belgeler çeşitli özelliklerine göre sınıflandırılarak işlenebilir. 

Örnek: Belli bir satış organizasyonu altındaki SD faturalarının ihracat faturası olarak işlenmesini sağlamak.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>BUKRS
   </td>
   <td>X
   </td>
   <td>BUKRS
   </td>
   <td>Şirket Kodu
   </td>
  </tr>
  <tr>
   <td>MODUL
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE024
   </td>
   <td>Modül
   </td>
  </tr>
  <tr>
   <td>PARAM_KEY
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE025
   </td>
   <td>Parametre Key
   </td>
  </tr>
  <tr>
   <td>PARAM_VAL
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE026
   </td>
   <td>Parametre Value
   </td>
  </tr>
  <tr>
   <td>SCENARIO
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE027
   </td>
   <td>Senaryo
   </td>
  </tr>
</table>


Tablo 4 - ZOTCTTR_EF_T0002 Tablo yapısı


### 4.3.3. ZOTCTTR_EF_T0003

Modül uyarlama tablosudur. Sistemde fatura belgesi üreten modülleri içerir.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>MODUL
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE028
   </td>
   <td>Modül ID
   </td>
  </tr>
  <tr>
   <td>CLASSNAME
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE029
   </td>
   <td>Extractor Class
   </td>
  </tr>
  <tr>
   <td>DESCRIPTION
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE030
   </td>
   <td>Açıklama
   </td>
  </tr>
  <tr>
   <td>DISABLED
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE031
   </td>
   <td>Kullanılmıyor
   </td>
  </tr>
</table>


Tablo 5 - ZOTCTTR_EF_T0003 Tablo yapısı


### 4.3.4. ZOTCTTR_EF_T0004

XSLT uyarlama tablosudur. Hangi belge tipin hangi XSLT'yi kullanacağı bilgisini içerir.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>SCENARIO
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE027
   </td>
   <td>Senaryo
   </td>
  </tr>
  <tr>
   <td>XSLT_PROG
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE032
   </td>
   <td>XSLT Adı
   </td>
  </tr>
  <tr>
   <td>XSLT_SOURCE
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE033
   </td>
   <td>XSLT Kaynak Kod
   </td>
  </tr>
  <tr>
   <td>FIRM_LOGO
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE034
   </td>
   <td>Firma Logosu
   </td>
  </tr>
  <tr>
   <td>GIB_LOGO
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE035
   </td>
   <td>GİB Logosu
   </td>
  </tr>
</table>


Tablo 6 - ZOTCTTR_EF_T0004 Tablo yapısı


### 4.3.5. ZOTCTTR_EF_T0005

Seri uyarlama tablosudur. Hangi belge tipin hangi seri kullanacağı bilgisini içerir.

Seri Türü: Seri üretim algoritmasını tekli seri, çoklu seri, akıllı seri vb. şekilde çeşitlendirebilmek için kullanılır.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>SCENARIO
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE027
   </td>
   <td>Senaryo
   </td>
  </tr>
  <tr>
   <td>PREFIX
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE036
   </td>
   <td>Seri Ön Ek
   </td>
  </tr>
  <tr>
   <td>OBJECT
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE037
   </td>
   <td>Seri Nesnesi
   </td>
  </tr>
  <tr>
   <td>TYPE
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE038
   </td>
   <td>Seri Türü
   </td>
  </tr>
</table>


Tablo 7 - ZOTCTTR_EF_T0005 Tablo yapısı


### 4.3.6. ZOTCTTR_EF_T0006

İhracat uyarlama tablosudur. Hangi belge tiplerinin ihracat veya ihraç kayıtlı olduğu bilgisini içerir. IHR_TYPE alanı 'IHRACAT' ya da 'IHRACKAYITLI' değeri tutar.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>SCENARIO
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE027
   </td>
   <td>Senaryo
   </td>
  </tr>
  <tr>
   <td>IHR_TYPE
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE039
   </td>
   <td>İhracat Tipi
   </td>
  </tr>
</table>


Tablo 8 - ZOTCTTR_EF_T0006 Tablo yapısı


### 4.3.7. ZOTCTTR_EF_T0007

Faturalaşma uyarlama tablosudur. Hangi alıcıyla hangi profilde (temel, ticari) faturalaşılacağı bilgisini saklar.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>VKN
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE040
   </td>
   <td>Alıcı VKN
   </td>
  </tr>
  <tr>
   <td>GIB_ALIAS
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE041
   </td>
   <td>Alıcı PK
   </td>
  </tr>
  <tr>
   <td>PROFILE_ID
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE023
   </td>
   <td>Profil
   </td>
  </tr>
</table>


Tablo 9 - ZOTCTTR_EF_T0007 Tablo yapısı


### 4.3.8. ZOTCTTR_EF_T0008

Banka bilgileri uyarlama tablosudur. 


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>SCENARIO
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE027
   </td>
   <td>Senaryo
   </td>
  </tr>
  <tr>
   <td>CURRENCY
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE042
   </td>
   <td>Para Birimi
   </td>
  </tr>
  <tr>
   <td>BANKN
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE043
   </td>
   <td>Banka Anahtarı
   </td>
  </tr>
  <tr>
   <td>BRANCH
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE044
   </td>
   <td>Şube
   </td>
  </tr>
  <tr>
   <td>BRTXT
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE045
   </td>
   <td>Şube Tanımı
   </td>
  </tr>
  <tr>
   <td>ACCNO
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE046
   </td>
   <td>Hesap Numarası
   </td>
  </tr>
  <tr>
   <td>IBAN
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE047
   </td>
   <td>IBAN
   </td>
  </tr>
</table>


Tablo 10 - ZOTCTTR_EF_T0008 Tablo yapısı


### 4.3.9. ZOTCTTR_EF_T0009

Client uyarlama tablosudur.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>EXTID
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE102
   </td>
   <td>Extractor ID
   </td>
  </tr>
  <tr>
   <td>EXTNM
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE103
   </td>
   <td>Extractor Adı
   </td>
  </tr>
  <tr>
   <td>EXTCL
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE104
   </td>
   <td>Extractor Class
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>


Tablo 11 - ZOTCTTR_EF_T0009 Tablo yapısı


### 4.3.9. ZOTCTTR_EF_T0101

Vergi kodları için uyarlama tablosudur.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>SCENARIO
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE027
   </td>
   <td>Senaryo
   </td>
  </tr>
  <tr>
   <td>TAXCODE
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE048
   </td>
   <td>VergiKodu
   </td>
  </tr>
  <tr>
   <td>TAXDESC
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE049
   </td>
   <td>Vergi Açıklaması
   </td>
  </tr>
  <tr>
   <td>TAXPERC
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE050
   </td>
   <td>Vergi Yüzdesi
   </td>
  </tr>
  <tr>
   <td>TAXFLAT
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE051
   </td>
   <td>Vergi Maktu Değeri
   </td>
  </tr>
</table>


Tablo 12 - ZOTCTTR_EF_T0101 Tablo yapısı


### 4.3.10. ZOTCTTR_EF_T0102

Vergi istisna uyarlama tablosudur.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>SCENARIO
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE027
   </td>
   <td>Senaryo
   </td>
  </tr>
  <tr>
   <td>TERCODE
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE052
   </td>
   <td>İstisna Kodu
   </td>
  </tr>
  <tr>
   <td>TERDESC
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE053
   </td>
   <td>İstisna Açıklaması
   </td>
  </tr>
</table>


Tablo 13 - ZOTCTTR_EF_T0102 Tablo yapısı


### 4.3.11. ZOTCTTR_EF_T0103

Tevkifat uyarlama tablosudur.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>SCENARIO
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE027
   </td>
   <td>Belge Tipi
   </td>
  </tr>
  <tr>
   <td>WTHCODE
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE054
   </td>
   <td>Tevkifat Kodu
   </td>
  </tr>
  <tr>
   <td>WTHDESC
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE055
   </td>
   <td>Tevkifat Açıklaması
   </td>
  </tr>
  <tr>
   <td>WTHPERC
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE056
   </td>
   <td>Tevkifat Oranı
   </td>
  </tr>
</table>


Tablo 14 - ZOTCTTR_EF_T0103 Tablo yapısı


### 4.3.12. ZOTCTTR_EF_T0104

SD, FI, MM vb. belgelerden türetilen faturalar için belge tipi uyarlamasıdır. 


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>SCENARIO
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE057
   </td>
   <td>Senaryo
   </td>
  </tr>
  <tr>
   <td>PARAM_KEY
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE025
   </td>
   <td>Parametre Key
   </td>
  </tr>
  <tr>
   <td>PARAM_VAL
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE026
   </td>
   <td>Parametre Value
   </td>
  </tr>
</table>


Tablo 10 - ZOTCTTR_EF_T0104 Tablo yapısı


### 4.3.13. ZOTCTTR_EF_T0201

Mükellef liste tablosudur. GİB tarafından yayınlanan listeyi tutar.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>IDENTIFIER
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE002
   </td>
   <td>VKN ya da TCKN
   </td>
  </tr>
  <tr>
   <td>TITLE
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE001
   </td>
   <td>Unvan ya da İsim
   </td>
  </tr>
  <tr>
   <td>TYPE
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE058
   </td>
   <td>Mükellef Tipi
   </td>
  </tr>
  <tr>
   <td>CREATION
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE059
   </td>
   <td>İlk Kayıt Tarihi
   </td>
  </tr>
  <tr>
   <td>ACCTYPE
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE060
   </td>
   <td>Hesap Tipi
   </td>
  </tr>
  <tr>
   <td>DOCTYPE
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE061
   </td>
   <td>Invoice, Despatch Advice vb.
   </td>
  </tr>
  <tr>
   <td>ALIASNAME
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE004
   </td>
   <td>GİB Alias
   </td>
  </tr>
  <tr>
   <td>ALIASCREATION
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE062
   </td>
   <td>Alias kayıt zamanı
   </td>
  </tr>
  <tr>
   <td>ALIASDELETION
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE063
   </td>
   <td>Alias silinme zamanı
   </td>
  </tr>
</table>


Tablo 10 - ZOTCTTR_EF_T0201 Tablo yapısı


### 4.3.14. ZOTCTTR_EF_T0202

Birim kodu listesidir. SAP'deki ölçü birimlerine karşılık gelen UNECE kodları burada tutulur.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>UNIT
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE064
   </td>
   <td>SAP Ölçü Birimi
   </td>
  </tr>
  <tr>
   <td>GIBUNIT
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE065
   </td>
   <td>UNECE Ölçü Birimi
   </td>
  </tr>
</table>


Tablo 10 - ZOTCTTR_EF_T0202 Tablo yapısı


### 4.3.15. ZOTCTTR_EF_T0203

Statü kodu listesidir. Hangi statünün ne anlama geldiğini, bu statülerin ikonlarını ve hangi statülerdeki belgelerin tekrar gönderilebilir durumda olduğu bilgilerini saklar.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>GIBCODE
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE066
   </td>
   <td>GİB Statü Kodu
   </td>
  </tr>
  <tr>
   <td>DESC
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE067
   </td>
   <td>Açıklama
   </td>
  </tr>
  <tr>
   <td>RESEND
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE068
   </td>
   <td>Tekrar Gönderilebilir
   </td>
  </tr>
  <tr>
   <td>ICON
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE069
   </td>
   <td>İkon
   </td>
  </tr>
  <tr>
   <td>MSGID
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE070
   </td>
   <td>İleti ID
   </td>
  </tr>
  <tr>
   <td>MSGNO
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE071
   </td>
   <td>İleti No
   </td>
  </tr>
</table>


Tablo 10 - ZOTCTTR_EF_T0203 Tablo yapısı


### 4.3.16. ZOTCTTR_EF_T0204

Para birimi listesidir. Fatura belgelerinde kullanılan para birimlerini tutar.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>CURRENCY
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE072
   </td>
   <td>Para Birimi
   </td>
  </tr>
  <tr>
   <td>DESC
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE073
   </td>
   <td>Açıklama
   </td>
  </tr>
</table>


Tablo 10 - ZOTCTTR_EF_T0204 Tablo yapısı


### 4.3.17. ZOTCTTR_EF_T0205

Parametrik uyarlama tablosudur


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>SCENARIO
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE027
   </td>
   <td>Senaryo
   </td>
  </tr>
  <tr>
   <td>PARAM_KEY
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE025
   </td>
   <td>Parametre Key
   </td>
  </tr>
  <tr>
   <td>PARAM_VAL
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE026
   </td>
   <td>Parametre Value
   </td>
  </tr>
</table>


Tablo 10 - ZOTCTTR_EF_T0204 Tablo yapısı


### 4.3.18. ZOTCTTR_EF_T1101

Fatura başlık tablosudur.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>BELNR
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE074
   </td>
   <td>Belge No
   </td>
  </tr>
  <tr>
   <td>GJAHR
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE075
   </td>
   <td>Yıl
   </td>
  </tr>
  <tr>
   <td>ZUUID
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE083
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>UUID
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE076
   </td>
   <td>UUID
   </td>
  </tr>
  <tr>
   <td>DIREC
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE077
   </td>
   <td>Yön (Gelen/Giden)
   </td>
  </tr>
  <tr>
   <td>SERINO
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE078
   </td>
   <td>Fatura Seri No
   </td>
  </tr>
  <tr>
   <td>SCENARIO
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE027
   </td>
   <td>Senaryo
   </td>
  </tr>
  <tr>
   <td>ERDAT
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE079
   </td>
   <td>Oluşturma Tarihi
   </td>
  </tr>
  <tr>
   <td>ERTIM
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE080
   </td>
   <td>Oluşturma Saati
   </td>
  </tr>
  <tr>
   <td>BLDAT
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE081
   </td>
   <td>Belge Tarihi
   </td>
  </tr>
  <tr>
   <td>BLTIM
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE082
   </td>
   <td>Belge Saati
   </td>
  </tr>
  <tr>
   <td>EXTID
   </td>
   <td>Index
   </td>
   <td>
   </td>
   <td>Extractor ID
   </td>
  </tr>
  <tr>
   <td>PROFILE_ID
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE023
   </td>
   <td>Profil
   </td>
  </tr>
  <tr>
   <td>STATUS
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE066
   </td>
   <td>Belge Statüsü
   </td>
  </tr>
  <tr>
   <td>APPRESPID
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE083
   </td>
   <td>Uygulama Yanıtı ID
   </td>
  </tr>
</table>


Tablo 10 - ZOTCTTR_EF_T1101 Tablo yapısı


### 4.3.19. ZOTCTTR_EF_T1102

Giden fatura zarf tablosudur.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>ZUUID
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE083
   </td>
   <td>Zarf UUID
   </td>
  </tr>
  <tr>
   <td>DIREC
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE077
   </td>
   <td>Yön (Gelen/Giden)
   </td>
  </tr>
  <tr>
   <td>ERDAT
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE079
   </td>
   <td>Oluşturma Tarihi
   </td>
  </tr>
  <tr>
   <td>ERTIM
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE080
   </td>
   <td>Oluşturma Saati
   </td>
  </tr>
  <tr>
   <td>BLDAT
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE081
   </td>
   <td>Belge Tarihi
   </td>
  </tr>
  <tr>
   <td>BLTIM
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE082
   </td>
   <td>Belge Saati
   </td>
  </tr>
  <tr>
   <td>STATUS
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE066
   </td>
   <td>Belge Statüsü
   </td>
  </tr>
</table>


Tablo 10 - ZOTCTTR_EF_T1102Tablo yapısı


### 4.3.20. ZOTCTTR_EF_T1103

Giden fatura UBL tablosudur.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>UUID
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE076
   </td>
   <td>UUID
   </td>
  </tr>
  <tr>
   <td>NODE_ID
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE085
   </td>
   <td>Düğüm ID
   </td>
  </tr>
  <tr>
   <td>PARENT
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE086
   </td>
   <td>Bağlı Olduğu Düğüm
   </td>
  </tr>
  <tr>
   <td>ATTRIB
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE087
   </td>
   <td>Attribute
   </td>
  </tr>
  <tr>
   <td>VALUE
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE088
   </td>
   <td>Value
   </td>
  </tr>
</table>


Tablo 10 - ZOTCTTR_EF_T1103Tablo yapısı


### 4.3.21. ZOTCTTR_EF_T1301

Uygulama yanıtlarının tutulduğu tablodur..


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>ZUUID
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE084
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>UUID
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE076
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ERDAT
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE079
   </td>
   <td>Oluşturma Tarihi
   </td>
  </tr>
  <tr>
   <td>ERTIM
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE080
   </td>
   <td>Oluşturma Saati
   </td>
  </tr>
  <tr>
   <td>BLDAT
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE081
   </td>
   <td>Belge Tarihi
   </td>
  </tr>
  <tr>
   <td>BLTIM
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE082
   </td>
   <td>Belge Saati
   </td>
  </tr>
  <tr>
   <td>REFID
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE089
   </td>
   <td>Referans ID
   </td>
  </tr>
  <tr>
   <td>RESPCODE
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE090
   </td>
   <td>Yanıt Kodu
   </td>
  </tr>
  <tr>
   <td>DESC
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE091
   </td>
   <td>Açıklama
   </td>
  </tr>
  <tr>
   <td>STATUS
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE066
   </td>
   <td>Belge Durumu
   </td>
  </tr>
</table>


Tablo 10 - ZOTCTTR_EF_T1301Tablo yapısı


### 4.3.22. ZOTCTTR_EF_T1401

Gelen faturalara verilen yanıtların tutulduğu tablodur.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>ZUUID
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE084
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>UUID
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE076
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ERDAT
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE079
   </td>
   <td>Oluşturma Tarihi
   </td>
  </tr>
  <tr>
   <td>ERTIM
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE080
   </td>
   <td>Oluşturma Saati
   </td>
  </tr>
  <tr>
   <td>BLDAT
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE081
   </td>
   <td>Belge Tarihi
   </td>
  </tr>
  <tr>
   <td>BLTIM
   </td>
   <td>Index
   </td>
   <td>ZOTCTTR_EF_DE082
   </td>
   <td>Belge Saati
   </td>
  </tr>
  <tr>
   <td>REFID
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE089
   </td>
   <td>Referans ID
   </td>
  </tr>
  <tr>
   <td>RESPCODE
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE090
   </td>
   <td>Yanıt Kodu
   </td>
  </tr>
  <tr>
   <td>DESC
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE091
   </td>
   <td>Açıklama
   </td>
  </tr>
  <tr>
   <td>STATUS
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE066
   </td>
   <td>Belge Durumu
   </td>
  </tr>
</table>


Tablo 10 - ZOTCTTR_EF_T1401Tablo yapısı


### 4.3.22. ZOTCTTR_EF_T2001

Job log tablosudur. Job raporu çalışırken hangi işlemi yapması gerektiğini bu logları inceleyerek yorumlar.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Key</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>MANDT
   </td>
   <td>X
   </td>
   <td>MANDT
   </td>
   <td>Client
   </td>
  </tr>
  <tr>
   <td>JOBID
   </td>
   <td>X
   </td>
   <td>ZOTCTTR_EF_DE098
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>STDAT
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE079
   </td>
   <td>Oluşturma Tarihi
   </td>
  </tr>
  <tr>
   <td>STTIM
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE080
   </td>
   <td>Oluşturma Saati
   </td>
  </tr>
  <tr>
   <td>ENDAT
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE100
   </td>
   <td>Job bitiş tarihi
   </td>
  </tr>
  <tr>
   <td>ENTIM
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE101
   </td>
   <td>Job bitiş saati
   </td>
  </tr>
  <tr>
   <td>JOBTYPE
   </td>
   <td>
   </td>
   <td>ZOTCTTR_EF_DE099
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>



## 4.4. Data Elementler


<table>
  <tr>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Domain</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE001
   </td>
   <td>ZOTCTTR_EF_DO001
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE002
   </td>
   <td>ZOTCTTR_EF_DO002
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE003
   </td>
   <td>ZOTCTTR_EF_DO003
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE004
   </td>
   <td>ZOTCTTR_EF_DO004
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE005
   </td>
   <td>ZOTCTTR_EF_DO005
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE006
   </td>
   <td>ZOTCTTR_EF_DO006
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE007
   </td>
   <td>ZOTCTTR_EF_DO007
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE008
   </td>
   <td>ZOTCTTR_EF_DO008
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE009
   </td>
   <td>ZOTCTTR_EF_DO009
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE010
   </td>
   <td>ZOTCTTR_EF_DO010
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE011
   </td>
   <td>ZOTCTTR_EF_DO011
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE012
   </td>
   <td>ZOTCTTR_EF_DO012
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE013
   </td>
   <td>ZOTCTTR_EF_DO013
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE014
   </td>
   <td>ZOTCTTR_EF_DO014
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE015
   </td>
   <td>ZOTCTTR_EF_DO015
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE016
   </td>
   <td>ZOTCTTR_EF_DO016
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE017
   </td>
   <td>ZOTCTTR_EF_DO017
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE018
   </td>
   <td>ZOTCTTR_EF_DO018
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE019
   </td>
   <td>ZOTCTTR_EF_DO019
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE020
   </td>
   <td>ZOTCTTR_EF_DO020
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE021
   </td>
   <td>ZOTCTTR_EF_DO021
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE022
   </td>
   <td>ZOTCTTR_EF_DO022
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE023
   </td>
   <td>ZOTCTTR_EF_DO023
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE024
   </td>
   <td>ZOTCTTR_EF_DO024
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE025
   </td>
   <td>ZOTCTTR_EF_DO025
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE026
   </td>
   <td>ZOTCTTR_EF_DO026
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE027
   </td>
   <td>ZOTCTTR_EF_DO027
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE028
   </td>
   <td>ZOTCTTR_EF_DO028
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE029
   </td>
   <td>ZOTCTTR_EF_DO029
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE030
   </td>
   <td>ZOTCTTR_EF_DO030
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE031
   </td>
   <td>ZOTCTTR_EF_DO031
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE032
   </td>
   <td>ZOTCTTR_EF_DO032
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE033
   </td>
   <td>ZOTCTTR_EF_DO033
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE034
   </td>
   <td>ZOTCTTR_EF_DO034
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE035
   </td>
   <td>ZOTCTTR_EF_DO035
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE036
   </td>
   <td>ZOTCTTR_EF_DO036
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE037
   </td>
   <td>ZOTCTTR_EF_DO037
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE038
   </td>
   <td>ZOTCTTR_EF_DO038
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE039
   </td>
   <td>ZOTCTTR_EF_DO039
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE040
   </td>
   <td>ZOTCTTR_EF_DO040
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE041
   </td>
   <td>ZOTCTTR_EF_DO041
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE042
   </td>
   <td>ZOTCTTR_EF_DO042
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE043
   </td>
   <td>ZOTCTTR_EF_DO043
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE044
   </td>
   <td>ZOTCTTR_EF_DO044
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE045
   </td>
   <td>ZOTCTTR_EF_DO045
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE046
   </td>
   <td>ZOTCTTR_EF_DO046
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE047
   </td>
   <td>ZOTCTTR_EF_DO047
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE048
   </td>
   <td>ZOTCTTR_EF_DO048
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE049
   </td>
   <td>ZOTCTTR_EF_DO049
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE050
   </td>
   <td>ZOTCTTR_EF_DO050
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE051
   </td>
   <td>ZOTCTTR_EF_DO051
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE052
   </td>
   <td>ZOTCTTR_EF_DO052
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE053
   </td>
   <td>ZOTCTTR_EF_DO053
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE054
   </td>
   <td>ZOTCTTR_EF_DO054
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE055
   </td>
   <td>ZOTCTTR_EF_DO055
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE056
   </td>
   <td>ZOTCTTR_EF_DO056
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE057
   </td>
   <td>ZOTCTTR_EF_DO057
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE058
   </td>
   <td>ZOTCTTR_EF_DO058
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE059
   </td>
   <td>ZOTCTTR_EF_DO059
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE060
   </td>
   <td>ZOTCTTR_EF_DO060
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE061
   </td>
   <td>ZOTCTTR_EF_DO061
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE062
   </td>
   <td>ZOTCTTR_EF_DO062
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE063
   </td>
   <td>ZOTCTTR_EF_DO063
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE064
   </td>
   <td>ZOTCTTR_EF_DO064
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE065
   </td>
   <td>ZOTCTTR_EF_DO065
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE066
   </td>
   <td>ZOTCTTR_EF_DO066
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE067
   </td>
   <td>ZOTCTTR_EF_DO067
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE068
   </td>
   <td>ZOTCTTR_EF_DO068
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE069
   </td>
   <td>ZOTCTTR_EF_DO069
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE070
   </td>
   <td>ZOTCTTR_EF_DO070
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE071
   </td>
   <td>ZOTCTTR_EF_DO071
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE072
   </td>
   <td>ZOTCTTR_EF_DO072
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE073
   </td>
   <td>ZOTCTTR_EF_DO073
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE074
   </td>
   <td>ZOTCTTR_EF_DO074
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE075
   </td>
   <td>ZOTCTTR_EF_DO075
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE076
   </td>
   <td>ZOTCTTR_EF_DO076
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE077
   </td>
   <td>ZOTCTTR_EF_DO077
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE078
   </td>
   <td>ZOTCTTR_EF_DO078
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE079
   </td>
   <td>ZOTCTTR_EF_DO079
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE080
   </td>
   <td>ZOTCTTR_EF_DO080
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE081
   </td>
   <td>ZOTCTTR_EF_DO081
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE082
   </td>
   <td>ZOTCTTR_EF_DO082
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE083
   </td>
   <td>ZOTCTTR_EF_DO083
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE084
   </td>
   <td>ZOTCTTR_EF_DO084
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE085
   </td>
   <td>ZOTCTTR_EF_DO085
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE086
   </td>
   <td>ZOTCTTR_EF_DO086
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE087
   </td>
   <td>ZOTCTTR_EF_DO087
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE088
   </td>
   <td>ZOTCTTR_EF_DO088
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE089
   </td>
   <td>ZOTCTTR_EF_DO089
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE090
   </td>
   <td>ZOTCTTR_EF_DO090
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE091
   </td>
   <td>ZOTCTTR_EF_DO091
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE092
   </td>
   <td>ZOTCTTR_EF_DO092
   </td>
   <td>VKN
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE093
   </td>
   <td>ZOTCTTR_EF_DO093
   </td>
   <td>Mükellef Kontrol Sonucu
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE094
   </td>
   <td>ZOTCTTR_EF_DO094
   </td>
   <td>Fatura Yanıt
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE095
   </td>
   <td>ZOTCTTR_EF_DO095
   </td>
   <td>Fatura Yanıt Açıklama
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE096
   </td>
   <td>ZOTCTTR_EF_DO096
   </td>
   <td>User command Ucomm
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE097
   </td>
   <td>ZOTCTTR_EF_DO097
   </td>
   <td>User command fieldname
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE098
   </td>
   <td>ZOTCTTR_EF_DO098
   </td>
   <td>Job ID
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE099
   </td>
   <td>ZOTCTTR_EF_DO099
   </td>
   <td>Job Type
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE100
   </td>
   <td>ZOTCTTR_EF_DO100
   </td>
   <td>Job bitiş tarihi
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE101
   </td>
   <td>ZOTCTTR_EF_DO101
   </td>
   <td>Job bitiş saati
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE102
   </td>
   <td>ZOTCTTR_EF_DO102
   </td>
   <td>Extractor ID
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE103
   </td>
   <td>ZOTCTTR_EF_DO103
   </td>
   <td>Extractor Adı
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE104
   </td>
   <td>ZOTCTTR_EF_DO104
   </td>
   <td>Extractor Class
   </td>
  </tr>
</table>



## 4.5. Domainler


<table>
  <tr>
   <td><strong>Domain</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO001
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO002
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO003
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO004
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO005
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO006
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO007
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO008
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO009
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO010
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO011
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO012
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO013
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO014
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO015
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO016
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO017
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO018
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO019
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO020
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO021
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO022
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO023
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO024
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO025
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO026
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO027
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO028
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO029
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO030
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO031
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO032
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO033
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO034
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO035
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO036
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO037
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO038
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO039
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO040
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO041
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO042
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO043
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO044
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO045
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO046
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO047
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO048
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO049
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO050
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO051
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO052
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO053
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO054
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO055
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO056
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO057
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO058
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO059
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO060
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO061
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO062
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO063
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO064
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO065
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO066
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO067
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO068
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO069
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO070
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO071
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO072
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO073
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO074
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO075
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO076
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO077
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO078
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO079
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO080
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO081
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO082
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO083
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO084
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO085
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO086
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO087
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO088
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO089
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO090
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO091
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO092
   </td>
   <td>VKN
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO093
   </td>
   <td>Mükellef Kontrol Sonucu
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO094
   </td>
   <td>Fatura Yanıt
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO095
   </td>
   <td>Fatura Yanıt Açıklama
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO096
   </td>
   <td>User command Ucomm
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO097
   </td>
   <td>User command fieldname
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE098
   </td>
   <td>Job ID
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE099
   </td>
   <td>Job Type
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE100
   </td>
   <td>Job bitiş tarihi
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DE101
   </td>
   <td>Job bitiş saati
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO102
   </td>
   <td>Extractor ID
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO103
   </td>
   <td>Extractor Adı
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_DO104
   </td>
   <td>Extractor Class
   </td>
  </tr>
</table>



## 4.6. Structurelar


<table>
  <tr>
   <td><strong>Structure</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S0001
   </td>
   <td>Şirket Bilgileri Uyarlaması
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S0002
   </td>
   <td>Belge Tipi Uyarlaması
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S0003
   </td>
   <td>Modül Uyarlaması
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S0004
   </td>
   <td>XSLT Uyarlaması
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S0005
   </td>
   <td>Seri Uyarlaması
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S0006
   </td>
   <td>İhracat Uyarlaması
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S0007
   </td>
   <td>Faturalaşma Uyarlaması
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S0008
   </td>
   <td>Banka Bilgileri Uyarlaması
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S0009
   </td>
   <td>Client Uyarlaması
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S0101
   </td>
   <td>Vergi Uyarlaması
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S0102
   </td>
   <td>Vergi İstisna Uyarlaması
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S0103
   </td>
   <td>Tevkifat Uyarlaması
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S0104
   </td>
   <td>Document Type Uyarlaması (sd,fi,mm vs)
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S0201
   </td>
   <td>Mükellef Listesi
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S0202
   </td>
   <td>UBL Birim Kodu Listesi
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S0203
   </td>
   <td>GİB Statü Kodu Listesi
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S0204
   </td>
   <td>Para Birimi Listesi
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S1101
   </td>
   <td>Fatura Başlık
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S1102
   </td>
   <td>Fatura Zarf
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S1103
   </td>
   <td>UBL
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S1301
   </td>
   <td>Giden Faturaya Verilen Uygulama Yanıtları
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S1401
   </td>
   <td>Gelen Faturaya Verilen Uygulama Yanıtları
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S2001
   </td>
   <td>Job Log Tablosu
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S3001
   </td>
   <td>Dönen mesaj
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S3002
   </td>
   <td>Yanıt
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S3003
   </td>
   <td>Fatura Header
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S3004
   </td>
   <td>Fatura Item
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S3005
   </td>
   <td>Fatura Party
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S3006
   </td>
   <td>Fatura Note
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S3007
   </td>
   <td>Fatura Kapsayıcı Structure
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S3008
   </td>
   <td>Fatura Nesne Listesi
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S3009
   </td>
   <td>Çıktı tablosu
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S3010
   </td>
   <td>Rapor parametre
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S3011
   </td>
   <td>Job Time interval
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S3012
   </td>
   <td>Fatura Additional
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S3013
   </td>
   <td>Price
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S3014
   </td>
   <td>Tax
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S3015
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_S3016
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.6.1. ZOTCTTR_EF_S0001

Bkz. ZOTCTTR_EF_T0001


### 4.6.2. ZOTCTTR_EF_S0002

Bkz. ZOTCTTR_EF_T0002


### 4.6.3. ZOTCTTR_EF_S0003

Bkz. ZOTCTTR_EF_T0003


### 4.6.4. ZOTCTTR_EF_S0004

Bkz. ZOTCTTR_EF_T0004


### 4.6.5. ZOTCTTR_EF_S0005

Bkz. ZOTCTTR_EF_T0005


### 4.6.6. ZOTCTTR_EF_S0006

Bkz. ZOTCTTR_EF_T0006


### 4.6.7. ZOTCTTR_EF_S0007

Bkz. ZOTCTTR_EF_T0007


### 4.6.8. ZOTCTTR_EF_S0008

Bkz. ZOTCTTR_EF_T0008


### 4.6.9. ZOTCTTR_EF_S0009

Bkz. ZOTCTTR_EF_T0009


### 4.6.10. ZOTCTTR_EF_S0101

Bkz. ZOTCTTR_EF_T0101


### 4.6.11. ZOTCTTR_EF_S0102

Bkz. ZOTCTTR_EF_T0102


### 4.6.12. ZOTCTTR_EF_S0103

Bkz. ZOTCTTR_EF_T0103


### 4.6.13. ZOTCTTR_EF_S0104

Bkz. ZOTCTTR_EF_T0104


### 4.6.14. ZOTCTTR_EF_S0201

Bkz. ZOTCTTR_EF_T0201


### 4.6.15. ZOTCTTR_EF_S0202

Bkz. ZOTCTTR_EF_T0202


### 4.6.16. ZOTCTTR_EF_S0203

Bkz. ZOTCTTR_EF_T0203


### 4.6.17. ZOTCTTR_EF_S0204

Bkz. ZOTCTTR_EF_T0204


### 4.6.18. ZOTCTTR_EF_S1101

Bkz. ZOTCTTR_EF_T1101


### 4.6.19. ZOTCTTR_EF_S1102

Bkz. ZOTCTTR_EF_T1102


### 4.6.20. ZOTCTTR_EF_S1103

Bkz. ZOTCTTR_EF_T1103


### 4.6.21. ZOTCTTR_EF_S1301

Bkz. ZOTCTTR_EF_T1301


### 4.6.22. ZOTCTTR_EF_S1401

Bkz. ZOTCTTR_EF_T1401


### 4.6.23. ZOTCTTR_EF_S2001

Bkz. ZOTCTTR_EF_T2001


### 4.6.24. ZOTCTTR_EF_S3001

Bkz. BAPIRET2


### 4.6.25. ZOTCTTR_EF_S3002

Yanıt structure


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>RESP
   </td>
   <td>ZOTCTTR_DE094
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>DESC
   </td>
   <td>ZOTCTTR_DE095
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.6.26. ZOTCTTR_EF_S3003

Fatura başlık structure. IF_101 arayüzünde parametre olarak kullanılır.


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>UUID_ENV
   </td>
   <td>
   </td>
   <td>UUID (Zarf)
   </td>
  </tr>
  <tr>
   <td>ID_SEN
   </td>
   <td>
   </td>
   <td>Gönderici PK ID (Zarf)
   </td>
  </tr>
  <tr>
   <td>CONTACT_SEN
   </td>
   <td>
   </td>
   <td>Gönderici VKN
   </td>
  </tr>
  <tr>
   <td>CONTYPE_SEN
   </td>
   <td>
   </td>
   <td>Gönderici Tipi
   </td>
  </tr>
  <tr>
   <td>ID_REC
   </td>
   <td>
   </td>
   <td>Alıcı PK ID (Zarf)
   </td>
  </tr>
  <tr>
   <td>CONTACT_REC
   </td>
   <td>
   </td>
   <td>Alıcı VKN
   </td>
  </tr>
  <tr>
   <td>CONTYPE_REC
   </td>
   <td>
   </td>
   <td>Alıcı Tipi
   </td>
  </tr>
  <tr>
   <td>SERINO
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>UUID_INV
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SCENARIO
   </td>
   <td>
   </td>
   <td>Senaryo
   </td>
  </tr>
  <tr>
   <td>PROFILE_ID
   </td>
   <td>
   </td>
   <td>Temel ticari
   </td>
  </tr>
  <tr>
   <td>ISSUE_DATE
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ISSUE_TIME
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>INVTYPECODE
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>DOCCURRCODE
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>TAXCURRCODE
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>PRICURRCODE
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>PAYCURRCODE
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>PAYALTCURRCODE
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ACCCOST
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>LINECNTNUM
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ORDREFID
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ORDREFDATE
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>DESPREFID
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>DESPREFDATE
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>DIREC
   </td>
   <td>
   </td>
   <td>Yön
   </td>
  </tr>
  <tr>
   <td>EXTID
   </td>
   <td>
   </td>
   <td>Extractor ID
   </td>
  </tr>
</table>



### 4.6.27. ZOTCTTR_EF_S3004

Fatura kalem structure


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>LINEID
   </td>
   <td>
   </td>
   <td>Line ID
   </td>
  </tr>
  <tr>
   <td>LINENOTE[]
   </td>
   <td>ZOTCTTR_EF_TT3019
   </td>
   <td>Note
   </td>
  </tr>
  <tr>
   <td>INVQTY
   </td>
   <td>
   </td>
   <td>Invoiced Quantity
   </td>
  </tr>
  <tr>
   <td>LINEEXTAMT
   </td>
   <td>
   </td>
   <td>Line Extension Amount
   </td>
  </tr>
  <tr>
   <td>ALLOWANCE[]
   </td>
   <td>ZOTCTTR_EF_TT3020
   </td>
   <td>Allowance Charge
   </td>
  </tr>
  <tr>
   <td>TAXTOTAL[]
   </td>
   <td>ZOTCTTR_EF_S3021
   </td>
   <td>Tax Total
   </td>
  </tr>
  <tr>
   <td>WHTAXTOTAL[]
   </td>
   <td>ZOTCTTR_EF_TT3022
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>DESC
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>NAME
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>KEYWORD
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>BNAME
   </td>
   <td>
   </td>
   <td>Brand Name
   </td>
  </tr>
  <tr>
   <td>MNAME
   </td>
   <td>
   </td>
   <td>Model Name
   </td>
  </tr>
  <tr>
   <td>BUYERS_ID
   </td>
   <td>
   </td>
   <td>Buyers Item Identification
   </td>
  </tr>
  <tr>
   <td>SELLERS_ID
   </td>
   <td>
   </td>
   <td>Sellers Item Identification
   </td>
  </tr>
  <tr>
   <td>MANUF_ID
   </td>
   <td>
   </td>
   <td>Manufacturers Item Ident
   </td>
  </tr>
  <tr>
   <td>PRICE
   </td>
   <td>
   </td>
   <td>Price
   </td>
  </tr>
</table>



### 4.6.28. ZOTCTTR_EF_S3005

Party structure


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>PARTYTYPE
   </td>
   <td>
   </td>
   <td>Party Type
   </td>
  </tr>
  <tr>
   <td>WEBSITE
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ICC
   </td>
   <td>
   </td>
   <td>Industry Classification Code
   </td>
  </tr>
  <tr>
   <td>PARTYIDENT[]
   </td>
   <td>ZOTCTTR_EF_TT3023
   </td>
   <td>PartyIdentification
   </td>
  </tr>
  <tr>
   <td>NAME
   </td>
   <td>
   </td>
   <td>Party Name
   </td>
  </tr>
  <tr>
   <td>POSTAL[]
   </td>
   <td>ZOTCTTR_EF_S3024
   </td>
   <td>Postal Addres
   </td>
  </tr>
  <tr>
   <td>PTSNAME
   </td>
   <td>
   </td>
   <td>PartyTaxScheme Name
   </td>
  </tr>
  <tr>
   <td>PTSTTCODE
   </td>
   <td>
   </td>
   <td>PartyTaxScheme Tax TypeCode
   </td>
  </tr>
</table>



### 4.6.29. ZOTCTTR_EF_S3006

Note structure


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>NOTE
   </td>
   <td>
   </td>
   <td>Note
   </td>
  </tr>
</table>



### 4.6.30. ZOTCTTR_EF_S3007

Kapsayıcı fatura structure


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>HEADER
   </td>
   <td>ZOTCTTR_EF_S3003
   </td>
   <td>Note
   </td>
  </tr>
  <tr>
   <td>ITEMS
   </td>
   <td>ZOTCTTR_EF_TT3004
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>PARTIES
   </td>
   <td>ZOTCTTR_EF_TT3005
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>NOTES
   </td>
   <td>ZOTCTTR_EF_TT3006
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ADDT
   </td>
   <td>ZOTCTTR_EF_TT3012
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>PRICE
   </td>
   <td>ZOTCTTR_EF_S3013
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>TAX
   </td>
   <td>ZOTCTTR_EF_S3014
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.6.31. ZOTCTTR_EF_S3008

Invoice list


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>INVOICE
   </td>
   <td>REF TO IF_101
   </td>
   <td>Note
   </td>
  </tr>
</table>



### 4.6.32. ZOTCTTR_EF_S3009

Çıktı liste structure


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>LIGHT
   </td>
   <td>REF TO IF_101
   </td>
   <td>Note
   </td>
  </tr>
  <tr>
   <td>STATUS
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>STATDESC
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>...
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.6.33. ZOTCTTR_EF_S3010

Rapor parametre structure


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>...
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.6.34. ZOTCTTR_EF_S3011

Job interval structure


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>...
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.6.34. ZOTCTTR_EF_S3012

Fatura Additional structure


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>...
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.6.34. ZOTCTTR_EF_S3013

Price structure


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>LMONTOT
   </td>
   <td>ZOTCTTR_EF_S3015
   </td>
   <td>Legal Monetary Total
   </td>
  </tr>
  <tr>
   <td>ALLOWANCE
   </td>
   <td>ZOTCTTR_EF_TT3016
   </td>
   <td>Allowance Charge
   </td>
  </tr>
</table>



### 4.6.34. ZOTCTTR_EF_S3014

Tax structure


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>TAXTOT
   </td>
   <td>ZOTCTTR_EF_S3017
   </td>
   <td>Tax Total
   </td>
  </tr>
  <tr>
   <td>WHTAXTOT
   </td>
   <td>ZOTCTTR_EF_TT3018
   </td>
   <td>Withholding Tax Total
   </td>
  </tr>
</table>



### 4.6.34. ZOTCTTR_EF_S3015

Legal Monetary Total


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>...
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.6.34. ZOTCTTR_EF_S3016

Allowance Charge


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>...
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.6.34. ZOTCTTR_EF_S3017

Tax total


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>...
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>



### 4.6.34. ZOTCTTR_EF_S3018

Withholding Tax Total


<table>
  <tr>
   <td><strong>Alan Adı</strong>
   </td>
   <td><strong>Data Element</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>...
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>



## 4.7. Table Typelar


<table>
  <tr>
   <td><strong>Table Type</strong>
   </td>
   <td><strong>Structure</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT0001
   </td>
   <td>ZOTCTTR_EF_S0001
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT0002
   </td>
   <td>ZOTCTTR_EF_S0002
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT0003
   </td>
   <td>ZOTCTTR_EF_S0003
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT0004
   </td>
   <td>ZOTCTTR_EF_S0004
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT0005
   </td>
   <td>ZOTCTTR_EF_S0005
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT0006
   </td>
   <td>ZOTCTTR_EF_S0006
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT0007
   </td>
   <td>ZOTCTTR_EF_S0007
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT0008
   </td>
   <td>ZOTCTTR_EF_S0008
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT0101
   </td>
   <td>ZOTCTTR_EF_S0101
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT0102
   </td>
   <td>ZOTCTTR_EF_S0102
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT0103
   </td>
   <td>ZOTCTTR_EF_S0103
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT0104
   </td>
   <td>ZOTCTTR_EF_S0104
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT0201
   </td>
   <td>ZOTCTTR_EF_S0201
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT0202
   </td>
   <td>ZOTCTTR_EF_S0202
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT0203
   </td>
   <td>ZOTCTTR_EF_S0203
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT0204
   </td>
   <td>ZOTCTTR_EF_S0204
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT1101
   </td>
   <td>ZOTCTTR_EF_S1101
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT1102
   </td>
   <td>ZOTCTTR_EF_S1102
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT1103
   </td>
   <td>ZOTCTTR_EF_S1103
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT1301
   </td>
   <td>ZOTCTTR_EF_S1301
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT2001
   </td>
   <td>ZOTCTTR_EF_S2001
   </td>
   <td>Dönen mesaj
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT2002
   </td>
   <td>ZOTCTTR_EF_S2002
   </td>
   <td>Yanıt
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT2003
   </td>
   <td>ZOTCTTR_EF_S2003
   </td>
   <td>Fatura Header
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT2004
   </td>
   <td>ZOTCTTR_EF_S2004
   </td>
   <td>Fatura Item
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT2005
   </td>
   <td>ZOTCTTR_EF_S2005
   </td>
   <td>Fatura Party
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT2006
   </td>
   <td>ZOTCTTR_EF_S2006
   </td>
   <td>Fatura Note
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT2007
   </td>
   <td>ZOTCTTR_EF_S2007
   </td>
   <td>Fatura Kapsayıcı Structure
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT2008
   </td>
   <td>ZOTCTTR_EF_S2008
   </td>
   <td>Fatura Nesne Listesi
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT2009
   </td>
   <td>ZOTCTTR_EF_S2009
   </td>
   <td>Çıktı tablosu
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT2010
   </td>
   <td>ZOTCTTR_EF_S2010
   </td>
   <td>Rapor parametre
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_TT2011
   </td>
   <td>ZOTCTTR_EF_S2011
   </td>
   <td>Job Time interval
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>



## 4.8. Search Helpler


<table>
  <tr>
   <td><strong>Search Help</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_SH0001
   </td>
   <td>
   </td>
  </tr>
</table>



## 4.9. Raporlar


<table>
  <tr>
   <td><strong>Rapor</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_P0001
   </td>
   <td>Giden Fatura Kokpit
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_P0002
   </td>
   <td>Gelen Fatura Kokpit
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_P0003
   </td>
   <td>e-Fatura Job Raporu
   </td>
  </tr>
</table>



## 4.10. Function Grouplar


<table>
  <tr>
   <td><strong>Rapor</strong>
   </td>
   <td><strong>Açıklama</strong>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_P0001
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_P0002
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_P0003
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ZOTCTTR_EF_P0004
   </td>
   <td>
   </td>
  </tr>
</table>



## 4.11. İleti Sınıfları


### 4.11.1 ZCX_OTCT


<table>
  <tr>
   <td><strong>Message ID</strong>
   </td>
   <td><strong>Message Text</strong>
   </td>
  </tr>
  <tr>
   <td>001
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>002
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>003
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>004
   </td>
   <td>
   </td>
  </tr>
</table>

