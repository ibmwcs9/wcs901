﻿/* Copyright IBM Corp. 2009-2015  All Rights Reserved. */CKEDITOR.dialog.add("insertRows",function(b){return{title:b.lang.ibmtabletools.insertMultipleRows,minWidth:220,minHeight:50,onOk:function(){var a={};this.commitContent(a);b.execCommand("insertMultipleRows",a)},contents:[{id:"info",style:"width: 100%",elements:[{type:"hbox",padding:"5px",width:["30%","70%"],children:[{label:b.lang.ibmtabletools.noOfRows,type:"text",id:"numberOfRows",required:!0,"default":"2",validate:function(){var a=this.getValue(),a=!!(CKEDITOR.dialog.validate.integer()(a)&&0<a);
a||(alert(b.lang.table.invalidRows),this.select());return a},commit:function(a){a.noOfRows=this.getValue()}},{type:"select",label:b.lang.ibmtabletools.insertPosition,id:"type",style:"width:150px","default":"after",items:[[b.lang.ibmtabletools.insertAfter,"after"],[b.lang.ibmtabletools.insertBefore,"before"]],commit:function(a){a.insertLocation=this.getValue()}}]}]}]}});