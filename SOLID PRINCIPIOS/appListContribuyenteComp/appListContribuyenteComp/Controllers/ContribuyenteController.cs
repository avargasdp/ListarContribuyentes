using capaDeNegocio;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace webapiListContribuyenteComp.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ContribuyenteController : ControllerBase
    {
        public IServiciosContribuyentes serviciosContribuyentes;
        public ContribuyenteController(IServiciosContribuyentes service)
        {
            this.serviciosContribuyentes = service;
        }

        public IActionResult Get()
        {
            return Ok(serviciosContribuyentes.GetAll());
        }

    }
}
