<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="ChatBox, App_Web_mabazu3g" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style >

    *{
	margin:0;
	padding:0;
	font-family: tahoma, sans-serif;
	box-sizzing: border-box;
	} 
	body{
	background: #1ddced;
	}
	.chatbox{
	width: 500px;
	min-width: 390px;
	height:6 00px;
	background:#fff;
	padding: 25px;
	margin: 20px auto;
	box-shadow: 0 3px #ccc;
	}
	.chatlogs{
	padding: 10px;
	width: 100%;
	height: 450px;
	overflow-x:hiddden;
	overflow-y:scroll;
	
	}
	.chatlogs::-webkit-scrollbar{
	width:10px;
	}
	.chatlogs::-webkit-scrollbar-thumb{
	border-radius:5px;
	background:rgba(0,0,0,.1);
	}
	
	.chat{
	display:flex;
	flex-flow:row wrap;
	align-items:flex-start;
	margin-bottom:10px;
	}
	.chat  .user-photo{
	width:60px;
	height:60px;
	background: #ccc;
	border-radius:50%;
	overflow:hidden;
	}
	.chat .user-photo img{
	width:100%;
	}
	.chat  .chat-message{
	width:70%;
	padding:15px; 
	margin:5px 10px 0;
	
	
	border-radius:10px;
	color:#fff;
	font-size:18px;
	}
	.friend  .chat-message{
	background:#1ddca4;
	}
	.self  .chat-message{
	background:#1ddced;
	order:-1;
	}
	.chat-form{
	margin-top:20px;
	display:flex;
	align-items: flex-start;
	}
	
	.chat-form textarea{
	background:#fbfbfb;
	height:50px;
	border:2px solid #eee;
	border-radius:3px;
	resize:none;
	padding:10px;
	font-size:18px;
	color:#333;
	}
	.chat-form textarea:focus{
	background:#fff;
	}
		.chat-form textarea::-webkit-scrollbar{
	width:10px;
	}
	.chat-form textarea::-webkit-scrollbar-thumb{
	border-radius:5px;
	background:rgba(0,0,0,.1);
	}
	.chat-form button{
	background:#1ddced;
	padding:5px 15px;
	font-size:30px;
	color:#fff;
	border:none;
	margin:0 10px;
	border-radius:3px;
	box-shadow:0 3px 0 #0eb2c1;
	cursor:pointer;
	-webkit-transition:background .2s ease;
	-moz-transition:background .2s ease;
	-o-transition:background .2s ease;
	
	}
	.chat-form button:hover{
	background:#13c8d9;
	


</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <div class="chatbox">
                <div class="chatlogs">
                    <div class="chat friend">
                        <div class="user-photo">
                            <img src="img/IMG_20170108_111435753.jpg"> 
                        </div>
                        <p class="chat-message">
                            messssssssssssage</p>
                    </div>
                    <div class="chat self">
                        <div class="user-photo">
                            <img src="img/B612_20170113_123506.jpg"> 
                        </div>
                        <p class="chat-message">
                            abccd<asp:Label ID="Label1" runat="server" Text="Label">xyz</asp:Label>
                        </p>
                    </div>
                </div>
                <div class="chat-form">
                    <textarea cols="20" name="S1" rows="1"></textarea>
                    <asp:TextBox ID="txtMessage" runat="server" Height="91px" 
        Rows="5" TextMode="MultiLine" Width="262px"></asp:TextBox>
                    <button>
                        send
                    </button>
                </div>
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Send" />
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>


</asp:Content>

