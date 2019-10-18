var abi = [
	{
		"constant": false,
		"inputs": [
			{
				"name": "pUniqueCode",
				"type": "string"
			},
			{
				"name": "pName",
				"type": "string"
			},
			{
				"name": "pDescription",
				"type": "string"
			},
			{
				"name": "pType",
				"type": "string"
			},
			{
				"name": "pManufacturer",
				"type": "string"
			},
			{
				"name": "pDateOfManufacture",
				"type": "string"
			},
			{
				"name": "pValueOfProduct",
				"type": "string"
			}
		],
		"name": "createNewProduct",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [],
		"name": "fillProducts",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "pUniqueCode",
				"type": "string"
			},
			{
				"name": "pTransactionDate",
				"type": "string"
			},
			{
				"name": "pNotes",
				"type": "string"
			},
			{
				"name": "pFrom",
				"type": "string"
			},
			{
				"name": "pTo",
				"type": "string"
			}
		],
		"name": "recordTransaction",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "productUniqueCode",
				"type": "string"
			}
		],
		"name": "getProductCurrentLocation",
		"outputs": [
			{
				"name": "",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "productUniqueCode",
				"type": "string"
			}
		],
		"name": "getTransactionDetails",
		"outputs": [
			{
				"name": "",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "productUniqueCode",
				"type": "string"
			}
		],
		"name": "isProductValid",
		"outputs": [
			{
				"name": "",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"name": "productMap",
		"outputs": [
			{
				"name": "productUniqueCode",
				"type": "string"
			},
			{
				"name": "productName",
				"type": "string"
			},
			{
				"name": "productDescription",
				"type": "string"
			},
			{
				"name": "productType",
				"type": "string"
			},
			{
				"name": "manufacturer",
				"type": "string"
			},
			{
				"name": "dateOfManufacture",
				"type": "string"
			},
			{
				"name": "valueOfProduct",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"name": "productMapTr",
		"outputs": [
			{
				"name": "productUniqueCode",
				"type": "string"
			},
			{
				"name": "dateOfTransaction",
				"type": "string"
			},
			{
				"name": "transactionNotes",
				"type": "string"
			},
			{
				"name": "transactionFrom",
				"type": "string"
			},
			{
				"name": "transactionTo",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	}
];