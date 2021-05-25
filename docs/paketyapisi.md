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