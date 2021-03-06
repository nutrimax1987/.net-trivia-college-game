﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="Games.aspx.cs" Inherits="TriviaGame.Views.Mobile.Games" %>
<asp:Content ID="Content3" ContentPlaceHolderID="headContent" runat="server">
    <title>Games Page</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--  GAMES CATEGORIES -->
    <div data-role="page" id="gamePage">
        <div data-role="main" class="ui-content">
                <div data-role="header" class="page-header logo">
                    <h3>
                        <img class="displayed" src="/Content/img/SmartTrivia.png" alt="SmartTriviaS" />
                    </h3>
                </div>
                <div data-role="navbar" id="navbar" class="mobile-navbar">
                    <ul>
                        <li><a href="/Views/Mobile/Profile.aspx" data-icon="user" data-transition="pop">Profile</a></li>
                        <li><a href="/Views/Mobile/Contact.aspx" data-icon="mail" data-transition="pop">Write us</a></li>
                        <li><a href="/Views/Mobile/About.aspx" data-icon="info" data-transition="pop">About</a></li>
                        <li><a href="/Views/Mobile/Home.aspx" data-icon="lock" data-transition="pop">Logout</a></li>

                    </ul>
                </div>
                   <div class="alert" style="display:none">
                 <span id="alert"></span>
       </div>
            <div id="gamesList">
                <ul class="nav">
                    <li class="left"><a href="#" class="display ui-btn  ui-btn-icon-notext ui-icon-arrow-l ui-corner-all">prev</a>
                    </li>
                    <li class="right"><a href="#" class="display ui-btn ui-btn-icon-notext  ui-icon-arrow-r ui-corner-all">next</a>
                    </li>
                </ul>

                <div class="section current">
                    <div id="game" class="stylish-panel">
                    </div>
                </div>
            </div>

            <div class="ui-content" id="gameContent">
                <table data-role="table" id="table-22" data-mode="columntoggle:none"
                    class="ui-responsive table-stripe">
                    <thead>
                        <tr>
                            <th data-priority="1">Points</th>
                            <th data-priority="2">Question</th>
                            <th data-priority="3">Game</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td id="questionPoints"></td>
                            <td id="questionNumber"></td>
                            <td id="gameName"></td>
                        </tr>
                    </tbody>
                </table>
                <div class="ui-grid-solo">
                    <div class="ui-block-a" id="questionContent">
                    </div>
                    <div data-role="controlgroup" id="answerContent" data-iconpos="left">
                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptsContent" runat="server">
    <%: Scripts.Render("~/javascript/http") %>
    <%: Scripts.Render("~/javascript/myscripts") %>
    <script type="text/javascript">
        $('#gameContent').hide();

    //    $(window).bind('beforeunload', function () {
    //        return 'Are you shure ?';
    //    });

   //     window.onbeforeunload = function (e) {
   //         return 'Are you shure ?';
   //     }
    </script>
</asp:Content>
