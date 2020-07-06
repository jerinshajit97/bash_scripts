# Pinger
#### A small script to check given list of websites are live and collect their details

## Usage
<p>./pinger.sh <i>file_name</i> <br>
eg: ./pinger.sh list.txt</p>

## Output
<p>Output is stored in the file "result.txt".<br></p>

## Sample
<h3> Input:</h3
<p> file: list.txt<br>
www.binance.org
<br>community.binance.org</p>
<h3> Output:</h3>
<p>file:result.txt
<br>www.binance.org : 54.192.150.83 :CIDR:           54.192.0.0/12 CIDR:           54.192.0.0/16 Country:        US NetName:        AMAZO-CF2 NetName:        AMAZON-2011L 
<br>community.binance.org : 54.192.150.77 :CIDR:           54.192.0.0/12 CIDR:           54.192.0.0/16 Country:        US NetName:        AMAZO-CF2 NetName:        AMAZON-2011L 
</p>
