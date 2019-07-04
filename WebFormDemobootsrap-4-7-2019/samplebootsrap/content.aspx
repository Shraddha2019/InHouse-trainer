<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="content.aspx.cs" Inherits="samplebootsrap.content" %>


  <form>

        <div class="form-group" >

            <label for="inputUserName">UserName</label>

            <input type="email" class ="form-control" id="inputEmail" placeholder="UserName">

        </div>

        <div class="form-group">

            <label for="inputPassword">Password</label>

            <input type="password" class ="form-control" id="inputPassword" placeholder="Password">

        </div>

        <div class="checkbox" class="form-group" >

            <label><input type="checkbox"> Remember me</label>

        </div>

        <button type="submit">Login</button>

    </form>