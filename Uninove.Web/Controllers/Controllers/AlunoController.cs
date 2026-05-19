using Microsoft.AspNetCore.Mvc;

namespace Uninove.Web.Controllers;

public class AlunoController : Controller
{
    public IActionResult Index()
    {
        ViewBag.Nome = "Juan Souza";
        ViewBag.Curso = "Analise e Desenvolvimento de Sistemas";
        ViewBag.Semestre = "1º Semestre";

        return View();
    }

    public IActionResult Detalhes(int id)
    {
        if (id <= 0)
        {
            return BadRequest("O ID do aluno deve ser maior que zero.");
        }

        ViewBag.Id = id;
        ViewBag.Nome = "Juan Souza";
        ViewBag.Curso = "Analise e Desenvolvimento de Sistemas";
        ViewBag.Semestre = "1º Semestre";

        return View();
    }
}
