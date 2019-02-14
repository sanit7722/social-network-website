<%@ page title="" language="C#" masterpagefile="MasterPageNew.master" autoeventwireup="true" inherits="chatBoxNew, App_Web_mabazu3g" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css" >

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
	width :480px;
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
        .chat-form button:hover {
            background: #13c8d9;
        }
	.fixedTextarea
        {
        resize:none; 
        }
        
    .chat-form1 {
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
        .chat-form1 Button1:hover {
            background: #13c8d9;
        }


</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="chatbox">
    <div >

 <asp:TextBox ID="txtMessage" class="fixedTextarea" runat="server" Height="91px" 
        Rows="5" TextMode="MultiLine" Width="303px" 
            ontextchanged="txtMessage_TextChanged"></asp:TextBox>
        <asp:UpdatePanel ID="UpdatePanel3" runat="server" RenderMode="Inline">
        <ContentTemplate>

            <asp:Button ID="Button1" class="chat-form1" runat="server" onclick="Button1_Click" 
                    Text="Send" Height="48px" Width="100px" />
        </ContentTemplate>
        </asp:UpdatePanel>
</div>
<div class="chatlogs">
<asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <Triggers>
                <asp:AsyncPostBackTrigger controlid="Timer2" eventname="Tick" />
            </Triggers>

        <ContentTemplate>

    <asp:DataList ID="DataList1" runat="server" 
        DataSourceID="SqlDataSourceChatMsgs" OnItemDataBound="DataList1_ItemDataBound">
        <ItemTemplate>
                       
            
            
            
            <div id="msg">
            <div class="chat friend" id="msgblock" >
            <div class="user-photo"><img src='<%# Eval("photoFriend") %>'>
            </div>            
            <asp:Label ID="msgLabel" runat="server" class="chat-message"
                            Text='<%# Eval("msg") %>' />
            </div>
            </div>


            <asp:Label ID="frommLabel" runat="server" Text='<%# Eval("fromm") %>' Visible="False" />
            
            
            <%--<asp:Label ID="tooLabel" runat="server" Text='<%# Eval("too") %>' />

            <br />
            photoFriend:
            <asp:Label ID="photoFriendLabel" runat="server" 
                Text='<%# Eval("photoFriend") %>' />
            <br />
            photoSelf:
            <asp:Label ID="photoSelfLabel" runat="server" Text='<%# Eval("photoSelf") %>' />
<br />
            <br />--%>
        </ItemTemplate>
    </asp:DataList>
   
   




</div>

    </ContentTemplate>
    </asp:UpdatePanel>
</div>
        
            
        


<div class="chat-form">
</div>
        


    <asp:SqlDataSource ID="SqlDataSourceChatMsgs" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        SelectCommand="SELECT chatMsgs.fromm, chatMsgs.too, chatMsgs.msg, registration.photo AS photoFriend, registration_1.photo AS photoSelf FROM chatMsgs INNER JOIN registration ON chatMsgs.fromm = registration.email INNER JOIN registration AS registration_1 ON chatMsgs.too = registration_1.email WHERE (chatMsgs.too = @username) AND (chatMsgs.fromm = @chatWith) OR (chatMsgs.too = @chatWith) AND (chatMsgs.fromm = @username) ORDER BY chatMsgs.id DESC">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" />
            <asp:QueryStringParameter Name="chatWith" QueryStringField="chatWith" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:Timer ID="Timer2" runat="server" Interval="1000" ontick="Timer2_Tick">
    </asp:Timer>

</div>

    

</asp:Content>

