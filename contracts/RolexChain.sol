pragma solidity ^0.5.8; 
//Smart Contract to create a product and validating if product is valid by giving Product ID
contract RolexChain { 
    //Data Structure of the Product
    struct productStruct {
        string productUniqueCode;
        string productName;
        string productDescription;
		string productType;
        string manufacturer;
		string dateOfManufacture;
		string valueOfProduct;
    }
	
    //Data Structure for storing Transactions of a Product
    struct productTransaction {
        string productUniqueCode;
        string dateOfTransaction;
        string transactionNotes;
		string transactionFrom;
		string transactionTo;
    }
	
    //Counters to have Key in Mapping Variable
    uint nextProduct = 0;
    uint nextTransaction = 0;
    
    //Array for both structures
    productStruct[] productStructs;
    productTransaction[] productTransactions;
    
    // Mapping Variables to have Key (Integer value) and Value as Product Structure
    mapping(uint => productStruct) public productMap;
    mapping(uint => productTransaction) public productMapTr;

    // Function to create a new Product
    function createNewProduct(string memory pUniqueCode, string memory pName, string memory pDescription, string memory pType, string memory pManufacturer, string memory pDateOfManufacture, string memory pValueOfProduct) public { 
        nextProduct++;
        productStruct memory newProduct = productStruct ({
            productUniqueCode: pUniqueCode,
            productName: pName,
            productDescription: pDescription,
			productType: pType,
            manufacturer: pManufacturer,
			dateOfManufacture: pDateOfManufacture,
			valueOfProduct: pValueOfProduct
        });
        productStructs.push(newProduct);
        productMap[nextProduct]=newProduct;
    }
    // Function to record a Transaction
    function recordTransaction(string memory pUniqueCode,string memory pTransactionDate, string memory pNotes, string memory pFrom, string memory pTo ) public { 
        nextTransaction++;
        productTransaction memory newTransaction = productTransaction ({
            productUniqueCode: pUniqueCode,
            dateOfTransaction: pTransactionDate,
            transactionNotes: pNotes,
			transactionFrom: pFrom,
            transactionTo: pTo
        });
        productTransactions.push(newTransaction);
        productMapTr[nextTransaction]=newTransaction;
    }

    // Function to fill products statically.. only added one , this can be many here
    function fillProducts() public {
        nextProduct++;
        productStruct memory tempProduct = productStruct("AD-SH-9I-1000001", "ADIDAS 9 SHOE COLOR BLUE","ADIDAS 9 SHOE COLOR BLUE with White foot", "SHOES", "ADIDAS", "2019/01/05","$150.00");
        productStructs.push(tempProduct);
        productMap[nextProduct]=tempProduct;
    }

    //Function to validate a productUniqueCode is valid or not
    function isProductValid(string memory productUniqueCode) view public returns (string memory) {
        for(uint i = 0; i <= nextProduct;  i++) {
        
        productStruct memory currentProduct = productMap[i];
        //return "Your are Valid";
        if (keccak256(bytes(currentProduct.productUniqueCode))==keccak256(bytes(productUniqueCode))){
            return "Valid";
        }
        }
        
        return "Not a valid Product";
        
    }
    
    //Function to get Transaction Details
    function getTransactionDetails(string memory productUniqueCode) view public returns (string memory) {
        string memory TransactionDetails;
        TransactionDetails="";
        
        for(uint i = 0; i <= nextTransaction;  i++) {
        
        productTransaction memory currentTransaction = productMapTr[i];
        
        if (keccak256(bytes(currentTransaction.productUniqueCode))==keccak256(bytes(productUniqueCode))){
            
            //TransactionDetails = strConcat(TransactionDetails,"TransactionNotes: ");
            //TransactionDetails = strConcat(TransactionDetails,currentTransaction.transactionNotes);
            
            //TransactionDetails = strConcat(TransactionDetails,"DateOfTransaction: ");
            //TransactionDetails = strConcat(TransactionDetails,currentTransaction.dateOfTransaction);
            
            //TransactionDetails = strConcat(TransactionDetails,"TransactionFrom: ");
            //TransactionDetails = strConcat(TransactionDetails,currentTransaction.transactionFrom);
            
            //TransactionDetails = strConcat(TransactionDetails,"TransactionTo: ");
            //TransactionDetails = strConcat(TransactionDetails,currentTransaction.transactionTo);
            //TransactionDetails = strConcat(TransactionDetails,">");
            TransactionDetails = currentTransaction.transactionTo;
        }
        }
        
        return TransactionDetails;
        
    }
    
        //Function to get current location
    function getProductCurrentLocation(string memory productUniqueCode) view public returns (string memory) {
        string memory TransactionDetails;
        TransactionDetails="";
        
        for(uint i = 0; i <= nextTransaction;  i++) {
        
        productTransaction memory currentTransaction = productMapTr[i];
        
        if (keccak256(bytes(currentTransaction.productUniqueCode))==keccak256(bytes(productUniqueCode))){
            
            TransactionDetails = currentTransaction.transactionTo;
        }
        }
        
        return TransactionDetails;
        
    }

    
    /*function strConcat(string memory string1, string memory string2) internal returns (string memory){
    bytes memory _ba = bytes(string1);
    bytes memory _bb = bytes(string2);

    string memory abcde = new string(_ba.length + _bb.length);
    bytes memory babcde = bytes(abcde);
    uint k = 0;
    uint i = 0;
    for (i = 0; i < _ba.length; i++) babcde[k++] = _ba[i];
    for (i = 0; i < _bb.length; i++) babcde[k++] = _bb[i];
    return string(babcde);
}*/
    
}