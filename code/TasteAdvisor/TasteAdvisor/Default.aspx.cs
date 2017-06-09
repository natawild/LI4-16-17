using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Speech.Recognition;
using System.Data;

namespace TasteAdvisor
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #region Properties
        List<Restaurante> result;
        #endregion

        protected void searchButton_Click(object sender, EventArgs e)
        {
            SQL_API sql = new SQL_API();
            string query = @"
SELECT * FROM Prato
inner join Restaurante on Restaurante.id=Prato.Restaurante
where Prato.nome LIKE '%" + SearchParameter.Value.ToLower().Trim() + "%';";
            DataTable dt = sql.GetDataTable(query);
            RestauranteResult.DataSource = dt;
            RestauranteResult.DataBind();
            result = new List<Restaurante>();
            result = dt.AsEnumerable().Select(z => new Restaurante()
            {
                Nome = z["nome1"].ToString()
            }).ToList();


        }
        protected void voiceSearchButton_Click(object sender, EventArgs e)
        {
            //SpeechRecognitionEngine recognizer = new SpeechRecognitionEngine();
            //Grammar dictationGrammar = new DictationGrammar();
            //recognizer.LoadGrammar(dictationGrammar);
            //try
            //{
            //    searchVoice.AlternateText = "Speak Now";
            //    recognizer.SetInputToDefaultAudioDevice();
            //    RecognitionResult result = recognizer.Recognize();
            //    searchVoice.AlternateText = result.Text;
            //}
            //catch (InvalidOperationException exception)
            //{
            //    searchVoice.AlternateText = String.Format("Could not recognize input from default aduio device. Is a microphone or sound card available?\r\n{0} - {1}.", exception.Source, exception.Message);
            //}
            //finally
            //{
            //    recognizer.UnloadAllGrammars();
            //}

            //SearchBar.Attributes.Add("x-webkit-speech", "x-webkit-speech");
        }

        protected void visitadoButton_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            Response.Redirect("RestaurantesVisitados.aspx?value=" + btn.CommandArgument.ToString());

        }

        protected void bloquearRestauranteButton_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            Response.Redirect("RestaurantesBloqueados.aspx?value="+ btn.CommandArgument.ToString());
        }
    }
}