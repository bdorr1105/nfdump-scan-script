# **nfdump Scanner**
## **by: bdorr1105**
#
Welcome to my nfdump scanner project. I had an idea after going through FOR 572 to try and automate some of the scans that I think I would run quite often for quick triage to find leads for an informed hunt. I think it is possible to normalize this into a function script that provides clean out on the screen, and that can be edited and modified by anyone who uses it.

I put together a few scans for quick triage. You can alter these commands or adjust it fit your environment. My plans are to add more features to this, but this will get you started

## **Future Plans**
- [ ] Add variables for adjusting  
- [ ] Added nfdump command for http/https web traffic


## **How to use script**
You can need to edit the paths in the script before running this. Please ensure that you modify the script to have the root path to where you store ncapd logs at. Once you have the script configured with your root path to the netflow logs, just run it from a bash shell and select which scan you would like to run.
\
\
`./nfdump-scanner.sh`

## Below are sample outputs for the code
### Menu
![Enter selection](https://user-images.githubusercontent.com/12386911/173478510-12a51fde-f489-473f-9f43-5ee8f3e5b8aa.png)
### Selection 1
![selected 1](https://user-images.githubusercontent.com/12386911/173478668-ad14c7a6-f8e9-446d-bcb7-bd953313d4a8.png)
### Selection 2
![selected 2](https://user-images.githubusercontent.com/12386911/173478743-0a20a623-d253-4a08-8657-2fd437d74c7b.png)
### Selection 3
![selected 3](https://user-images.githubusercontent.com/12386911/173478812-a9154494-32e3-4269-9297-38ec9bda0c27.png)
### Selection 4
![selected 4](https://user-images.githubusercontent.com/12386911/173478853-d8014a08-e91a-4049-b8ce-1cc62a10a9f2.png)
