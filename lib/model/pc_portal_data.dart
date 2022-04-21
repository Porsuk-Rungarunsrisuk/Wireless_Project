const com = [
    {
      //"index":0,
      "name":"ASUS RTX 3060 TUF Gaming OC",
      "image":"RTX3060.png",
      "description": //max 40 characters before \n
      "Ram 12 GB GDDR6\n3584 CUDA Cores\nOC Mode - 1882 MHz (Boost Clock)\nGaming Mode - 1852 MHz (Boost Clock)\n",
      "type": "Graphic Card",
      "price": 17290
    },
    {
      //"index":1,
      "name":"MSI RTX 3070 Suprim X",
      "image":"RTX3070.png",
      "description": //max 40 characters before \n
      "Ram 8 GB GDDR6\n5888 CUDA Cores\nGaming Mode - 1920 MHz (Boost Clock)\n",
      "type": "Graphic Card",
      "price": 26590
    },
    {
      //"index":2,
      "name":"GIGABYTE RTX 3080 Eagle OC",
      "image":"RTX3080.png",
      "description": //max 40 characters before \n
      "Ram 10 GB GDDR6X\n8704 CUDA Cores\nGaming Mode - 1710 MHz (Boost Clock)\n",
      "type": "Graphic Card",
      "price": 45900
    },
    {
      //"index":3,
      "name":"INTEL Core i5-12400",
      "image":"12400.png",
      "description": //max 40 characters before \n
      "6C/12T (6P + 0E)\nBase Clock: 2.50 GHz\nBoost Clock: 4.40 GHz\n",
      "type": "CPU",
      "price": 6890
    },
    {
      //"index":4,
      "name":"INTEL Core i7-12700K",
      "image":"12700K.png",
      "description": //max 40 characters before \n
      "12C/20T (8P + 4E)\nBase Clock: 3.60 GHz\nBoost Clock: 5.00 GHz\n",
      "type": "CPU",
      "price": 16790
    },
    {
      //"index":5,
      "name":"GIGABYTE B660M DS3H",
      "image":"660.png",
      "description": //max 40 characters before \n
      "LGA1700 for Intel gen 12\nRam 4 Slots DDR4 3200+(OC)\nMicro-ATX 24.4x24.4cm\n",
      "type": "Mainboard",
      "price": 3590
    },
    {
      //"index":6,
      "name":"GIGABYTE Z690 Gaming X",
      "image":"690.png",
      "description": //max 40 characters before \n
      "LGA1700 for Intel gen 12 & OC supported\nRam 4 Slots DDR5 6000+(OC)\nATX 30.5x24.4cm\n",
      "type": "Mainboard",
      "price": 7390
    },
    {
      //"index":7,
      "name":"KINGSTON HyperX FURY RGB DDR4 8GB",
      "image":"32008.png",
      "description": //max 40 characters before \n
      "DDR4\nMemory Size: 8GB\nMemory Speed: 3200MHz\n",
      "type": "Ram",
      "price": 1190
    },
    {
      //"index":8,
      "name":"Crucial DDR5 8GB (8GBx1) 4800",
      "image":"48008.png",
      "description": //max 40 characters before \n
      "DDR5\nMemory Size: 8GB\nMemory Speed: 4800MHz\n",
      "type": "Ram",
      "price": 7090
    },
    {
      //"index":9,
      "name":"Western Digital Blue 2TB WD20EZBX",
      "image":"wd2.png",
      "description": //max 40 characters before \n
      "HDD 3.5\nPort: SATA-III\nCapacity: 2 TB\nRotational Speed: 7200RPM\n",
      "type": "Storage",
      "price": 1590
    },
    {
      //"index":10,
      "name":"Western Digital Black SN750 SE 500GB",
      "image":"750SE.png",
      "description": //max 40 characters before \n
      "SSD\nPort: M.2 PCIe NVMe\nCapacity: 500 GB\nRead/Write Speed: Up to 3600/2000 MB/s\n",
      "type": "Storage",
      "price": 2390
    },
    {
      //"index":11,
      "name":"Seagate BarraCuda 510 1TB",
      "image":"510.png",
      "description": //max 40 characters before \n
      "SSD\nPort: M.2 PCIe NVMe\nCapacity: 1 TB\nRead/Write Speed: Up to 3400 / 3000 MB/s\n",
      "type": "Storage",
      "price": 3790
    },
    {
      //"index":12,
      "name":"COUGAR XTC 750W",
      "image":"750.png",
      "description": //max 40 characters before \n
      "Maximum Power: 750W\nCertificates: 80 Plus White\nModular: Yes\n",
      "type": "PSU",
      "price": 1990
    },
    {
      //"index":13,
      "name":"THERMALTAKE Toughpower TF1 1550W",
      "image":"1550.png",
      "description": //max 40 characters before \n
      "Maximum Power: 1550W\nCertificates: 80 Plus Titanium\nModular: Yes\n",
      "type": "PSU",
      "price": 14900
    },
    {
      //"index":14,
      "name":"COOLER MASTER MasterBox Q300L Retro",
      "image":"Q300L.png",
      "description": //max 40 characters before \n
      "Mainboard Support: Mini-ITX, Micro-ATX\nDimension: 230mm x 387mm x 378mm\nMax VGA Length: 360mm\n",
      "type": "Case",
      "price": 1790
    },
    {
      //"index":15,
      "name":"COOLER MASTER MasterBox 500 Black",
      "image":"500B.png",
      "description": //max 40 characters before \n
      "Mainboard Support: Mini-ITX, Micro-ATX, ATX\nDimension: 209mm x 505mm x 499mm\nMax VGA Length: 410mm\n",
      "type": "Case",
      "price": 2590
    },
    {
      //"index":16,
      "name":"COUGAR Conquer 2",
      "image":"C2.png",
      "description": //max 40 characters before \n
      "Mainboard Support: Mini-ITX, Micro-ATX, ATX\nDimension: 368mm x 744mm x 631mm\nMax VGA Length: 400mm\n",
      "type": "Case",
      "price": 9990
    },
    {
      //"index":17,
      "name":"Tsunami TSS 2000 RGB",
      "image":"TSS2000.png",
      "description": //max 40 characters before \n
      "Type: Air Cooler\nSize: 120mm\nRGB: Yes\n",
      "type": "Cooler",
      "price": 555
    },
    {
      //"index":18,
      "name":"COOLER MASTER UX200 ARGB",
      "image":"UX200.png",
      "description": //max 40 characters before \n
      "Type: Air Cooler\nSize: 120mm\nRGB: Yes\n",
      "type": "Cooler",
      "price": 1090
    },
  ];