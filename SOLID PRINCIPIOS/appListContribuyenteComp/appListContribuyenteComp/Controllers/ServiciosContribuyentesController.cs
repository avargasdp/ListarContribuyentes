using capaDeNegocio;
using Microsoft.AspNetCore.Mvc;

namespace webapiListContribuyenteComp.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ServiciosContribuyentes : ControllerBase
    {
        public IServiciosContribuyentes serviciosContribuyentes;
        public ServiciosContribuyentes(IServiciosContribuyentes service)
        {
            this.serviciosContribuyentes = service;
        }

        public IActionResult Get()
        {
            return Ok(serviciosContribuyentes.GetAll());
        }

    }
}
