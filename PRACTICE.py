from tkinter import *
import tkinter as tk
from tkinter import ttk
from tkinter import messagebox
import mysql.connector
from mysql.connector.constants import CNX_POOL_ARGS
from mysql.connector.errorcode import CR_DATA_TRUNCATED
import Image

mydb=mysql.connector.connect(host="127.0.0.1",user="root",passwd="nibha123",database="bloodbank")

c=mydb.cursor()


root = Tk()
#class Frames(object):

blood=StringVar()
city=StringVar()
ids=StringVar()
name=StringVar()
pswd=StringVar()
uid=StringVar()
btype=StringVar()
bottles=StringVar()
bankid=StringVar()
CN=StringVar()
CD =StringVar()
CO =StringVar()
CL=StringVar()





"""def show_image():
    img_label = tk.Label(root)
    image = tk.PhotoImage(file="ered.png")
    img_label['image'] = image

    img_label.pack()"""



def mainFrame(root):
        #canvas = Canvas(root, width = 300, height = 300)      
        #canvas.pack()      
        #img = PhotoImage(file="ered.png")      
        #canvas.create_image(20,20, anchor=NW, image=img) 
        #label1 = Label( root)
        #label1.place(x = 0, y = 0)
        #show_image()
       
        #root.geometry("1200x900") 
        #root.resizable(0, 0)
        #bg = PhotoImage(file = "ered.png")
        bg = PhotoImage(file="ered.gif")
        
        btn=Button(root, text="Admin",   width=35, height=4,fg='white',bg="maroon",command=newWindow1)
        btn.place(x=30, y=80)
        btn=Button(root, text="About",width=35,  height=4, bg='maroon',fg='white')
        btn.place(x=30, y=160)
        btn=Button(root, text="Check Avaliablity", width=35,height=4,bg='maroon',fg='white',command =newWindow3)
        btn.place(x=30, y=240)
        btn=Button(root, text="Check for Campaigns",width=35, height=4,bg='maroon',fg='white')
        btn.place(x=30, y=320)
        
        btn=Button(root, text="Check when you can donate next", width=35, height=4,bg='maroon',fg='white')
        btn.place(x=30, y=480)
        btn=Button(root, text="Check for previous donation",width=35,   height=4,bg='maroon',fg='white')
        btn.place(x=30, y=560)
        lbl=Label(root, text="e-RED BLOOD INVENTORY",  fg='red', font=("Helvetica",35))
        lbl.place(x=350, y=20)
 
       #window.title('BLOOD INVENTORY')


def newWindow1(): # new window definition
        newwin = Toplevel(root)
        newwin.title('New Window')
        newwin.geometry("500x400") 
        newwin.resizable(0, 0)
        Label( newwin,text = "Id").grid(row = 0,column = 0)
        Label(newwin ,text = "Name").grid(row = 1,column = 0)
        Label(newwin ,text = "password").grid(row = 2,column = 0)
        Entry(newwin,textvariable=ids).grid(row = 0,column = 1)
        Entry(newwin,textvariable=name).grid(row = 1,column = 1)
        Entry(newwin,show="*",textvariable=pswd).grid(row = 2,column = 1)
        
        
        btn = Button(newwin, text = 'Submit !', bd = '5',command = lambda:[newwin.destroy(),admin()])
        btn.place(x=30, y=80)
        

def admin():
    
    ID=ids.get()
    A_NAME=name.get()
    A_PASS=pswd.get()
    
    
    c.execute("SELECT * FROM ADMIN WHERE A_ID='"+ID+"'  AND A_NAME='"+A_NAME+"'  AND A_PASSWORD='"+A_PASS+"'")
    details=c.fetchall()
    
    

    if details==[]:
        messagebox.showerror("ERROR", "INVALID USERID OR PASSWORD!") 
    else:
        newWindow11()

def newWindow11(): # new window definition
            newwin = Toplevel(root)
            newwin.title('New Window')
            newwin.geometry("500x400") 
            newwin.resizable(0, 0)
            btn=Button(newwin, text="Update The Blood Quantities", height=3, fg='red',command=newWindow6)
            btn.place(x=180, y=20)
            btn=Button(newwin, text="Create new Campaign", height=3, fg='red',command=camp)
            btn.place(x=180, y=100)
            btn=Button(newwin, text="Add new blood bank", height=3, fg='red')
            btn.place(x=180, y=200)
            btn=Button(newwin, text="Add registered user", height=3, fg='red')
            btn.place(x=180, y=300)
   

def newWindow6():
         newwin = Toplevel(root)
         newwin.title('New Window')
         newwin.geometry("500x400") 
         newwin.resizable(0, 0)
         x=Label( newwin,text = "ENTER THE USER ID:").grid(row = 0,column = 0)
         y=Label(newwin ,text = "ENTER THE BLOOD TYPE:").grid(row = 1,column = 0)
         combo1=ttk.Combobox(newwin,width=10,textvariable=btype)
         combo1['values']=("A+ve","B+ve","O+ve","AB+ve", "A-ve","B-ve","O-ve","AB-ve")
         combo1.grid(row = 1,column = 1)
         z=Label(newwin ,text = "ENTER THE BLOOD BANK ID:").grid(row = 2,column = 0)
         u=Label(newwin ,text = "ENTER THE NO OF BOTTLES:").grid(row = 3,column = 0)
         x1=Entry(newwin,textvariable=uid).grid(row = 0,column = 1)
         #y1=Entry(newwin,textvariable=btype).grid(row = 1,column = 1)
         z1=Entry(newwin,textvariable=bankid).grid(row = 2,column = 1)
         u1=Entry(newwin,textvariable=bottles).grid(row = 3,column = 1)
         btn=Button(newwin, text="Add BLOOD BOTTLES TO THE BANK:", height=3, fg='red',command=addblood)
         btn.place(x=180, y=200)
         btn=Button(newwin, text="Remove BLOOD BOTTLES FROM THE BANK:", height=3, fg='red',command=remblood)
         btn.place(x=180, y=300)

def addblood():
         U_ID=uid.get()
         B=btype.get()
         ID=bankid.get()
         bott=bottles.get()
         
         val=c.callproc('A',(U_ID,B,ID,bott,None))
         mydb.commit()
         
         if val[4]==1:
                 messagebox.showerror('ERROR','INAVLID ENTRIES!!PLEASE RE-ENTER')
         else:
                 messagebox.showinfo('INFO','RECORDS UPDATED SUCCESSFULLY')
         
        #my_data=(blood_type,City,)
        #c.execute('{CALL [A](@USER_ID=?, @B_T=?,@BID=?,@Q=?)}',
         # ('U_ID', 'B','ID','bott'))
         #RETURN=c.stored_results()
         #print(RETURN)
         #if RETURN==0:
                 #messagebox.showinfo('INFO','RECORDS UPDATED')

        
def remblood():
        B=btype.get()
        ID=bankid.get()
        bott=bottles.get()
        val=c.callproc('REM',(ID,B,bott,None))
        mydb.commit()
         
        if val[3]==1:
                 messagebox.showerror('ERROR','INSUFFICIENT BLOOD IN BLOOD BANK')
        else:
                 messagebox.showinfo('INFO','RECORDS UPDATED SUCCESSFULLY')

def newWindow31(): # new window definition
            newwin = Toplevel(root)
            newwin.title('Updation')
            newwin.geometry("500x400")
            newwin.configure(bg='maroon')
            newwin.resizable(0, 0)

        





        


            
def camp():
         newwin = Toplevel(root)
         newwin.title('New Window')
         newwin.geometry("500x400") 
         newwin.resizable(0, 0)
         x=Label( newwin,text = "ENTER THE CAMPAIGN NAME:").grid(row = 0,column = 0)
         y=Label(newwin ,text = "ENTER THE CAMPAIGN DATE:").grid(row = 1,column = 0)
         z=Label(newwin ,text = "ENTER THE CAMPAIGN ORGANIZATION NAME:").grid(row = 2,column = 0)
         u=Label(newwin ,text = "ENTER CAMPAIGN LOCATION:").grid(row = 3,column = 0)
         
         x1=Entry(newwin,textvariable=CN).grid(row = 0,column = 1)
         y1=Entry(newwin,textvariable=CD).grid(row = 1,column = 1)
         z1=Entry(newwin,textvariable=CO).grid(row = 2,column = 1)
         u1=Entry(newwin,textvariable=CL).grid(row = 3,column = 1)
         btn=Button(newwin, text="Add CAMPAIGN:", height=3, fg='red',command=CC)
         btn.place(x=180, y=200)

def CC():     
        NA=CN.get()
        D=CD.get()
        COO=CO.get()
        CLL=CL.get()
        ID=ids.get()    
        c.execute("INSERT INTO CAMPAIGN(C_NAME,C_DATE,C_ORG_NAME,C_LOC,A_ID) VALUES('"+NA+"','"+D+"','"+COO+"','"+CLL+"','"+ID+"')")
        mydb.commit()

         #btn=Button(newwin, text="REMOVE BOTTLES FROM THE BANK:", height=3, fg='red')
         #btn.place(x=180, y=200)



def newWindow3(): # new window definition
        newwin = Toplevel(root)
        newwin.title('New Window')
        newwin.geometry("500x400") 
        newwin.resizable(0, 0)
        combo=ttk.Combobox(newwin,width=10,textvariable=blood)
        combo['values']=("A+ve","B+ve","O+ve","AB+ve", "A-ve","B-ve","O-ve","AB-ve")
        combo.pack()

        
        combo2=ttk.Combobox(newwin,width=10,textvariable=city)
        combo2['values']=("MANGALORE","UDUPI","BANGALORE","DHARWAD", "MYSORE")
        combo2.pack()
        


       
        btn = Button(newwin, text = 'Search !', bd = '5',command = check_availability)
        btn.pack()


def check_availability():
        q=blood.get()
        r=city.get()
        
        #my_data=(blood_type,City,)
        c.execute("SELECT B_NAME,CITY,PINCODE FROM BLOOD_BANK B,DONATION_DETAILS D WHERE B.B_ID=D.B_ID AND BLOOD_TYPE='"+q+"' AND CITY='"+r+"'")

        
        #my_cursor=c.execute(q,my_data)
        
       
        details=c.fetchall()
        newWindow31(details)
        print(details)



def newWindow31(details): # new window definition
        newwin = Toplevel(root)
        newwin.title('New Window')
        newwin.geometry("500x400") 
        newwin.resizable(0, 0)
        
        num=2
        if details==[]:
            bank_name=Label(newwin,text="THE BLOOD TYPE YOUR LOOKING FOR IS CURRENTLY UNAVAILABLE")
            bank_name.place(x = 0, y = 0)
        else:
         for i in details:
            bank_name=Label(newwin,text=i[0])
            bank_name.grid(row=num,column=0,padx=10,pady=10)
            

            city_name=Label(newwin,text=i[1])
            city_name.grid(row=num,column=1,padx=10,pady=10)
             
            pin=Label(newwin,text=i[2])
            pin.grid(row=num,column=2,padx=10,pady=10)
            
            num=num+1
            
        
                        
   

       


        
    




mainFrame(root)
root.mainloop()
