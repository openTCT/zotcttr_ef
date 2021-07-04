# 4.1. Interfaces


## 4.1.1. ZOTCTTR_EF_IF101

Invoice interface.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Access</strong>
   </td>
   <td><strong>Description</strong>
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
   <td><strong>Access</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### SEND


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### SAVE


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### PREVIEW


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### VIEW


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### GET_STATUS


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### RESPOND


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### SET_HEADER


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### SET_ITEM


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### SET_PARTY


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### SET_NOTE


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### SET_ADDT


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### SET_PRICE


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### SET_TAX


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### GET_HEADER


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>ES_HEADER
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_S3003
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ES_HEADER_EXT
   </td>
   <td>Exporting
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



### GET_ITEM


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>ET_ITEMS
   </td>
   <td>Exporting
   </td>
   <td>ZOTCTTR_EF_TT3004
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>ET_ITEMS_EXT
   </td>
   <td>Exporting
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



### GET_PARTY


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>ET_PARTIES
   </td>
   <td>Exporting
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



### GET_NOTE


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>ET_NOTES
   </td>
   <td>Exporting
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



### GET_ADDT


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>ET_ADDT
   </td>
   <td>Exporting
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



### GET_PRICE


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>IS_PRICE
   </td>
   <td>Exporting
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



### GET_TAX


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>ES_TAX
   </td>
   <td>Exporting
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



### CHECK_REG


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>IV_TIN
   </td>
   <td>Exporting
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



### ASSIGN_SERINO


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### SET_FLATTAB


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### GET_FLATTAB


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



## 4.1.2. ZOTCTTR_EF_IF102

Invoice response interface.

<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Access</strong>
   </td>
   <td><strong>Description</strong>
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
   <td><strong>Access</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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
   <td>App. response info
   </td>
  </tr>
</table>



### SEND


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### SAVE


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### SET_RESPONSE


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### SET_DESC


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### GET_RESPONSE


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### GET_DESC


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



## 4.1.3. ZOTCTTR_EF_IF201

Extractor factory arayüzüdür.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Access</strong>
   </td>
   <td><strong>Description</strong>
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
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### GET_EXTRACTOR


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



## 4.1.4. ZOTCTTR_EF_IF202

Extractor arayüzüdür.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Access</strong>
   </td>
   <td><strong>Description</strong>
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
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### READ


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>IS_DATA
   </td>
   <td>Importing
   </td>
   <td>ZOTCTTR_EF_S3007
   </td>
   <td>Header, item, party data
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



### PROCESS


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



## 4.1.5 ZOTCTTR_EF_IF301

UI interface.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Access</strong>
   </td>
   <td><strong>Description</strong>
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
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### READ


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### PROCESS


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### DISPLAY


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### USER_COMMAND


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



## 4.1.6. ZOTCTTR_EF_IF401

Integrator factory interface.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Access</strong>
   </td>
   <td><strong>Description</strong>
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
   <td><strong>Access</strong>
   </td>
   <td><strong>Description</strong>
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



### GET_INTEGRATOR


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



## 4.1.7. ZOTCTTR_EF_IF402

Entegratör arayüzü.. 


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Access</strong>
   </td>
   <td><strong>Description</strong>
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
   <td><strong>Access</strong>
   </td>
   <td><strong>Description</strong>
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



### READ_USERLIST


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### SEND


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### PREVIEW


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### VIEW


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### RESPOND


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### READ_INBOUND


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



### READ_STATUS


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



## 4.1.8. ZOTCTTR_EF_IF501

UBL engine interface.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Access</strong>
   </td>
   <td><strong>Description</strong>
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
   <td><strong>Access</strong>
   </td>
   <td><strong>Description</strong>
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



## 4.1.9. ZOTCTTR_EF_IF601

User-exit factory interface.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Access</strong>
   </td>
   <td><strong>Description</strong>
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
   <td><strong>Access</strong>
   </td>
   <td><strong>Description</strong>
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



### GET_EXIT


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
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



## 4.1.10. ZOTCTTR_EF_IF602

User exit interface. A Z* or Y* class will be implemented which use this interface.

<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Access</strong>
   </td>
   <td><strong>Description</strong>
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
   <td><strong>Access</strong>
   </td>
   <td><strong>Description</strong>
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
