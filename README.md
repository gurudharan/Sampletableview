# Sampletableview
Display in data to UITableview
This the Sample Tableview to display contents.
First you have to create array Like this below.
```
  var Name = ["Raja", "Mohan", "Ragu", "Guru", "Arun", "Illam",
                  "Vicky", "Pratheep", "Selvakumar", "Vijay"]
    
    var fruitsimg = ["beautiful_fruits-t2.jpg", "fresh_apple_fruit_hd_wallpapers.jpg", "fruit-hd-wallpaper-0218.jpg", "mixed-fruit-hd-wallpaper.jpg", "Fruit-Cheery-HD-Wallpapers.jpg", "1f90a61ee1f3c7a926507d35de277e8e.jpg","beautiful_fruits-t2.jpg", "7-2.jpg", "fruit-juices-hd-wallpaper.jpg", "strawberries-fruit-hd-wallpaper.jpg"]

    var time = ["10:15AM", "8:15AM", "7:15AM", "6:15AM", "5:15AM", "4:15AM",
                "3:15PM", "2:15PM", "1:15PM", "9:15PM"]

```
# Design

Next you have create outlet for tableview.

Create the cell for tableview and inside the cell you have to create the labels and imageview.

* Create the Tableview cell file "tableviewTableViewCell.Swift"

After that you have to implement the delegate and datasource like this below.
```
 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int 
 {
        return Name.count
   }
    
 func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat
 {
        return UITableViewAutomaticDimension
   }
    
 func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool 
 {
        return true
    }
    
 func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
 {
        
       let cell = tableview.dequeueReusableCell(withIdentifier: "Cell", for: indexPath ) as! tableviewTableViewCell
       
       cell.imageview.image = UIImage(named: fruitsimg[indexPath.row])
       cell.namelbl.text = Name[indexPath.row]
        
        cell.timelbl.text = time[indexPath.row]
        return cell
    }
    
 func tableView(_ tableView: UITableView,heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        
        return 100
    }
```
License
-------------------------------------------------------
<b>The MIT License (MIT)

Copyright (c) 2017 Gurudharan



Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.</b>


For further details refer viewcontroller.swift
