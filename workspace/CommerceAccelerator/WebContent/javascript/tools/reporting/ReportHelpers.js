//********************************************************************
//*-------------------------------------------------------------------
//* Licensed Materials - Property of IBM
//*
//* WebSphere Commerce
//*
//* (c) Copyright IBM Corp. 2001, 2002
//*
//* US Government Users Restricted Rights - Use, duplication or
//* disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
//*
//*-------------------------------------------------------------------
//*


///////////////////////////////////////////////////////////////////////////////////////////////////////
// 
// Collateral Helper Functions
// 
///////////////////////////////////////////////////////////////////////////////////////////////////////

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // On load we initialize the containers slosh bucket
   /////////////////////////////////////////////////////////////////////////////////////////////////
   function onLoadCollateral(container) {
      with (document.forms[container]) {
         initializeSloshBuckets(collateralAvailable, addToSloshBucketButton, collateralSelected, removeFromSloshBucketButton);
      }
   }

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Update the slosh bucket when selected collateral has been chosen
   /////////////////////////////////////////////////////////////////////////////////////////////////
   function updateSelectedCollateral(container) {
      with (document.forms[container]) {
         updateSloshBuckets(collateralSelected, removeFromSloshBucketButton, collateralAvailable, addToSloshBucketButton);
      }
   }

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Update the slosh bucket when available collateral has been chosen
   /////////////////////////////////////////////////////////////////////////////////////////////////
   function updateAvailableCollateral(container) {
      with (document.forms[container]) {
         updateSloshBuckets(collateralAvailable, addToSloshBucketButton, collateralSelected, removeFromSloshBucketButton);
      }
   }

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Retrieve the containers selected and available collateral
   /////////////////////////////////////////////////////////////////////////////////////////////////
   function retrieveCollateral(container) 
   {
      retrieveSelectedCollateral(container);
      retrieveAvailableCollateral(container);
   }

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Retrieve the containers selected collateral
   /////////////////////////////////////////////////////////////////////////////////////////////////
   function retrieveSelectedCollateral(container) 
   {
      var myContainer = parent.get(container, null);
      if (myContainer == null) return;

      /////////////////////////////////////////////////////////////////////////////////////////////////
      // Retrieve the saved selected collateral
      /////////////////////////////////////////////////////////////////////////////////////////////////
      var collateral = myContainer.collateralSelected;
      if (collateral != null ) {
         for (var i=0; i<collateral.length; i++) {
            document.forms[container].collateralSelected.options[i] = new Option(collateral[i].text,collateral[i].value, false, false);
         }
      }
   }

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Retrieve the containers available collateral
   /////////////////////////////////////////////////////////////////////////////////////////////////
   function retrieveAvailableCollateral(container) 
   {
      var myContainer = parent.get(container, null);
      if (myContainer == null) return;

      /////////////////////////////////////////////////////////////////////////////////////////////////
      // Retrieve the saved available collateral
      /////////////////////////////////////////////////////////////////////////////////////////////////
      var collateral = myContainer.collateralAvailable;
      if (collateral != null ) {
         for (var i=0; i<collateral.length; i++) {
            document.forms[container].collateralAvailable.options[i] = new Option(collateral[i].text,collateral[i].value, false, false);
         }
      }
   }

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Save the containers collateral
   /////////////////////////////////////////////////////////////////////////////////////////////////
   function saveCollateral(container) 
   {
      saveSelectedCollateral(container);
      saveAvailableCollateral(container);
   }

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Save the containers selected collateral
   /////////////////////////////////////////////////////////////////////////////////////////////////
   function saveSelectedCollateral(container) 
   {
      var myContainer = parent.get(container, null);
      if (myContainer == null) return;

      /////////////////////////////////////////////////////////////////////////////////////////////////
      // Retrieve the saved selected collateral
      /////////////////////////////////////////////////////////////////////////////////////////////////
      var collateral = new Array();
      with (document.forms[container]) {
         for (var i=0; i<collateralSelected.length; i++) {
            collateral[i] = new Object();
            collateral[i].text  = collateralSelected.options[i].text;
            collateral[i].value = collateralSelected.options[i].value;
         }
      }

      myContainer.collateralSelected = collateral;
      parent.put(container,myContainer);
   }

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Save the containers available collateral
   /////////////////////////////////////////////////////////////////////////////////////////////////
   function saveAvailableCollateral(container) 
   {
      var myContainer = parent.get(container, null);
      if (myContainer == null) return;

      /////////////////////////////////////////////////////////////////////////////////////////////////
      // Retrieve the saved selected collateral
      /////////////////////////////////////////////////////////////////////////////////////////////////
      var collateral = new Array();
      with (document.forms[container]) {
         for (var i=0; i<collateralAvailable.length; i++) {
            collateral[i] = new Object();
            collateral[i].text  = collateralAvailable.options[i].text;
            collateral[i].value = collateralAvailable.options[i].value;
         }
      }

      myContainer.collateralAvailable = collateral;
      parent.put(container,myContainer);
   }

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Puts a new option to the selected collateral
   /////////////////////////////////////////////////////////////////////////////////////////////////
   function putSelectedCollateral(container, text, value) 
   {
      with (document.forms[container]) {
         var index = collateralSelected.length;
         collateralSelected.options[index] = new Option(text, value, false, false);
      }
   }

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Puts a new option to the available collateral
   /////////////////////////////////////////////////////////////////////////////////////////////////
   function putAvailableCollateral(container, text, value) 
   {
      with (document.forms[container]) {
         var index = collateralAvailable.length;
         collateralAvailable.options[index] = new Option(text, value, false, false);
      }
   }

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Returns an array of selected Collateral text
   /////////////////////////////////////////////////////////////////////////////////////////////////
   function getSelectedCollateralText(container) 
   {
      with (document.forms[container]) {
         var index = collateralSelected.length;
         collateralSelected.options[index] = new Option(text, value, false, false);
      }
   }

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Returns the number of selected collateral
   /////////////////////////////////////////////////////////////////////////////////////////////////
   function getNumberOfSelectedCollateral(container) 
   {
      return document.forms[container].collateralSelected.length;
   }

   /////////////////////////////////////////////////////////////////////////////////////////////////
   // Returns the number of available collateral
   /////////////////////////////////////////////////////////////////////////////////////////////////
   function getNumberOfAvailableCollateral(container) 
   {
      return document.forms[container].collateralAvailable.length;
   }

   ///////////////////////////////////////////////////////////////////////////////////////////////////////
   // function which returns the array of selected collateral value
   ///////////////////////////////////////////////////////////////////////////////////////////////////////
   function returnSelectedCollateralValue(container)
   {
      var selectedCollateralValue = new Array();
      with (document.forms[container]){
         for (var i=0; i<collateralSelected.length; i++) {
            selectedCollateralValue[i] = collateralSelected.options[i].value;
         }
      }
      return selectedCollateralValue;
   }

   ///////////////////////////////////////////////////////////////////////////////////////////////////////
   // function which returns the array of selected collateral text
   ///////////////////////////////////////////////////////////////////////////////////////////////////////
   function returnSelectedCollateralText(container)
   {
      with (document.forms[container]) {
         var returnArray = new Array();
         for (var i=0; i<collateralSelected.length; i++) {
            returnArray[i] = collateralSelected.options[i].text;
         }
      }
      return returnArray;
   }

   ///////////////////////////////////////////////////////////////////////////////////////////////////////
   // Add elements to the selected collateral
   ///////////////////////////////////////////////////////////////////////////////////////////////////////
   function addToSelectedCollateral(container) 
   {
      with (document.forms[container]){
         move(collateralAvailable, collateralSelected);
         updateSloshBuckets(collateralAvailable, addToSloshBucketButton, collateralSelected, removeFromSloshBucketButton);
      }
   }

   ///////////////////////////////////////////////////////////////////////////////////////////////////////
   // Remove elements from the selected collateral
   ///////////////////////////////////////////////////////////////////////////////////////////////////////
   function removeFromSelectedCollateral(container) 
   {
      with (document.forms[container]){
         move(collateralSelected,collateralAvailable);
         updateSloshBuckets(collateralAvailable, addToSloshBucketButton, collateralSelected, removeFromSloshBucketButton);
      }
   }


///////////////////////////////////////////////////////////////////////////////////////////////////////
// 
// SQL Helper Functions
// 
///////////////////////////////////////////////////////////////////////////////////////////////////////


   ///////////////////////////////////////////////////////////////////////////////////////////////////////
   // This function takes an array an outputs it as a comma separated list of values
   // If TF is set to true then it delimits each value with quotes
   ///////////////////////////////////////////////////////////////////////////////////////////////////////
   function returnArrayAsSQLList(inputArray, TF)
   {
      var outputString = "";
      for (var i=0; i<inputArray.length; i++) {
         if (i > 0) outputString = outputString + ", ";
         if (TF) outputString = outputString + "'";
         outputString = outputString + inputArray[i];
         if (TF) outputString = outputString + "'";
      }
      return outputString;
   }


///////////////////////////////////////////////////////////////////////////////////////////////////////
// 
// Calendar Helper Functions
// 
///////////////////////////////////////////////////////////////////////////////////////////////////////


   ///////////////////////////////////////////////////////////////////////////////////////////////////////
   // Open the calendar window
   ///////////////////////////////////////////////////////////////////////////////////////////////////////
   function openCalendarWindow(event) 
   {
      var x = event.screenX;
      var y = event.screenY;
      if (typeof(window.calendarWindow) != 'undefined' && !window.calendarWindow.closed) window.calendarWindow.focus();
      window.calendarWindow = window.open('Calendar','cal','WIDTH=200,HEIGHT=250, left=' + x + ', top=' + y); // IE specific.
   }

   ///////////////////////////////////////////////////////////////////////////////////////////////////////
   // Close the calendar window
   ///////////////////////////////////////////////////////////////////////////////////////////////////////
   function closeCalendarWindow() 
   {
      if (typeof(window.calendarWindow) != 'undefined') window.calendarWindow.close();
   }


