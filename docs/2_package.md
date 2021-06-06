## 



2. Paket Yapısı

Ana paket ZOTCTTR_EF olarak adlandırılmıştır. Bu paket, aşağıda açıklanacak olan alt paketleri (subpackages) kapsayıcı bir pakettir.

Sistem mimarisi host-client yapısı üzerinden tanımlanmıştır. Host rolünde çalışacak sistemde gönderim raporları, DDIC nesneleri, user-exitler, entegrasyon sınıfları gibi merkezi repository objeleri bulunmaktadır. 

Client rolünde çalışacak sistemde fatura belgelerini okuyup gerekli veriyi elde edecek olan extractor sınıfları ve bunların RFC wrapperları bulunacaktır. Bu package'da mümkün olduğu kadar az repository object bulundurmak esastır. 

Bu mimari, çeşitli sistem yapıları (system landscape) ile uyumlu çalışacak şekilde tasarlanmıştır. Tek sistemden ibaret SAP kurgularında host ile client aynı sistem üzerinde çalışacaktır. Birden fazla sistemden oluşan SAP kurgularında bir sistem host olarak belirlenecek, kokpit ve gönderim işlemleri bu sistem üzerinden gerçekleştirilecek ve diğer sistemlerdeki fatura belgeleri RFC ile uzaktaki client package'dan çekilecektir.

<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image1.png "image_tooltip")