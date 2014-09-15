:Persistence :And :Serialization

1. Serialization

- What Is It? The Process Of Converting Ruby Objects (Or Any Ojbects) Into Something That Can Be Saved To The Disk. 

2. JSON

- JSON Serialization Can Be Achieved By Requiring json Library And The .to_json Method. Use JSON.Parse To Convert Back.

- For More Complicated Cases, Monkey Patching to_json Method Should Be Used. Will Be Painful To Parse Back, However. 


3. YAML

- Used To Save Custom Classes. Require 'yaml' Module Then Use to_yaml To Convert.

- YAML::load() To Convert Back To Ruby Object (:: Is The Scop Resolution Character And In This Case Calls load() From The YAML Scope)

- Note That When An Object Is Converted Then Loaded Back Its Memory Changes And Become A Different Object, Can Be Seen As A Lazy Mans Clone. (But Dont Do This)
