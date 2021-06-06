# 2.1. Alt paketler


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


## 2.1.1. ZOTCTTR_EF_HOST

e-Fatura arka uç (back-end) paketi. Genel olarak fatura gönderim ve alım işlemleri için gerekli DDIC objeleri ve application classları içerir.


## 2.1.2. ZOTCTTR_EF_CLIENT

e-Fatura istemci (client) paketi. Fatura belgelerini okuyup host paketine iletmek için gerekli extractor sınıflarını içerir.


## 2.1.3. ZOTCTTR_EF_UI

e-Fatura ön uç (front-end) paketi. Host paketinin bir alt paketidir. Raporlar ve Fiori, BSP, WD gibi arayüz uygulamaları bu paket altında bulunmaktadır.


## 2.1.4. ZOTCTTR_EF_INT

e-Fatura entegrasyon paketi. Host paketinin altında bulunmaktadır. Özel entegratör ve imza sunucusuna bağlantı için gerekli proxy objelerini içerir.


## 2.1.5. ZOTCTTR_EF_EXIT

e-Fatura user exit paketi. Host paketinin altında bulunmaktadır. Sistem özelinde yapılan geliştirmeler bu paket altında bulunmaktadır..