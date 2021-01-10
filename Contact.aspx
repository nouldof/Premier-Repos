using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Web.Services.Description;

namespace AppliWeb
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonENVOYE_Click(object sender, EventArgs e)
        {
            //declaration des attributs de l'objet mail
            String Expediteur, Destinataire, Objet, CorpDuMessg;

            Destinataire = "nouldof@gmail.com";
            Expediteur = TextBoxMessage.Text;
            Objet = "Formulaire de contact";
            CorpDuMessg = TextBoxMessage.Text;

            //MailMessage mailRecu = new MailMessage(Expediteur, Destinataire, Objet, CorpDuMessg);

            String message = "Ce Message vient de: " + Environment.NewLine
                + DropDownList1.SelectedItem.Text + "  " + TextNom.Text + " " + TextPRENOM.Text + Environment.NewLine
                + "Et le contenu de ce message est:  " + Environment.NewLine
                + TextBoxMessage.Text;




            LabelSentOK.Visible = true;

            LabelSentOK.Text = "Votre Message est envoyé!!!";
            //Tab2.hidden = false;
            LabelNom.Visible=true;
            TextBoxNom1.Text = TextNom.Text;
            TextBoxNom1.Visible = true;

            LabelPrenom.Visible = true;
            TextBoxPrenom1.Text = TextPRENOM.Text;
            TextBoxPrenom1.Visible = true;

            TextNom.Text = " ";
            TextPRENOM.Text = " ";
            TextBoxCourriel.Text = " ";
            TextBoxOBJET.Text = " ";
            TextBoxMessage.Text = message;



        }
    }
}