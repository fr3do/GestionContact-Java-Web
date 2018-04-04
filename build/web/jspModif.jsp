<%@page import="java.util.Vector"%>
<%@page import="metierMapping.Contact"%>
<%@page contentType="text/html" pageEncoding="utf-8"%>
<%--@page import="metierMapping.*, java.util.*" --%>

<!DOCTYPE html>

<% Contact contact = (Contact) session.getAttribute("contact");
    //Vector<Secteur> vSect = (Vector<Secteur>) session.getAttribute("vSect");
    String message = (String) session.getAttribute("message");
    String valueInput;
%>

<html>
    <head>
        <title>Modification d'un contact</title>
        <meta http-equiv="Content-Type"
              content="text/html; charset=utf-8" />
        <link rel="stylesheet" 
              type="text/css"
              href="miseEnPage.css" />
    </head>

    <body>
        <form action="ServletControleur?idEcran=2" method="post">
            <fieldset>
                <legend>
                    Modification du contact <%= contact.getNumero()%>
                </legend>

                <div class="divSaisieModif">
                    <% valueInput = "";
                        if (contact.getNom() != null)
                        {
                            valueInput = contact.getNom();
                        }
                    %>
                    <label for="nom">Nom :</label>
                    <input type="text" 
                           name="nom" 
                           value="<%=valueInput%>" 
                           size="20" 
                           maxlength="20" 
                           id="nom" />
                </div>

                <div class="divSaisieModif">
                    <% valueInput = "";
                        if (contact.getAdresse() != null)
                        {
                            valueInput = contact.getAdresse();
                        }
                    %>
                    <label for="adresse">Adresse :</label>
                    <input type="text" 
                           name="adresse" 
                           value="<%=valueInput%>"
                           size="50" 
                           maxlength="50" 
                           id="adresse" />                
                </div>

                <div class="divSaisieModif">
                    <% valueInput = "";
                        if (contact.getCodePostal() != null)
                        {
                            valueInput = contact.getCodePostal();
                        }
                    %>
                    <label for="codePostal">Code Postal :</label>
                    <input type="text" 
                           name="codePostal" 
                           value="<%=valueInput%>" 
                           size="5" 
                           maxlength="5" 
                           id="codePostal" />                
                </div>

                <div class="divSaisieModif">
                    <% valueInput = "";
                        if (contact.getVille() != null)
                        {
                            valueInput = contact.getVille();
                        }
                    %>
                    <label for="ville">Ville :</label>
                    <input type="text" 
                           name="ville" 
                           value="<%=valueInput%>"  
                           size="20" 
                           maxlength="20" 
                           id="ville" />                
                </div>

                <div class="divSaisieModif">
                    <% valueInput = "";
                        if (contact.getMail() != null)
                        {
                            valueInput = contact.getMail();
                        }
                    %>
                    <label for="mail">Mail :</label>
                    <input type="text" 
                           name="mail" 
                           value="<%=valueInput%>"  
                           size="20" 
                           maxlength="20" 
                           id="mail" />                
                </div>
            </fieldset>

            <div>
                <input type="submit" 
                       class="envoyer" 
                       name="choixAction" 
                       value="Enregistrer"/>
                <input type="submit" 
                       class="envoyer" 
                       name="choixAction" 
                       value="Annuler"/>
            </div>
        </form>


        <div>
            <br />
            <br />
            <br />
            <p id=message><%=message%></p>
        </div>
    </body>
</html>
