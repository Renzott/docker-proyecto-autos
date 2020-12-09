package edu.cibertec.rest.get;

import java.util.ArrayList;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import edu.cibertec.beans.AutoDTO;
import edu.cibertec.beans.CarroceriaDTO;
import edu.cibertec.beans.MarcaAutoDTO;
import edu.cibertec.beans.RespuestaDTO;
import edu.cibertec.beans.TipoAutoDTO;
import edu.cibertec.beans.TipoTransmisionDTO;
import edu.cibertec.service.AutoService;
import edu.cibertec.service.CarroceriaService;
import edu.cibertec.service.MarcaAutoService;
import edu.cibertec.service.TipoAutoService;
import edu.cibertec.service.TipoTransmisionService;

@Path("/api")
public class AutoController {

	/*
	* Endpoint : api/autos
	* */
	@GET
	@Path("/autos")
	@Produces(MediaType.APPLICATION_JSON)
	public RespuestaDTO listarAutos(){
		System.out.println("ini: listarAutos()");
		RespuestaDTO respuesta = null;
		
		AutoService autoService = new AutoService();
		ArrayList<AutoDTO> lista = autoService.ListadoAuto();
		
		if (lista == null) {
			System.out.println("Listado Vacío");
		}else {
			System.out.println("Consulta Exitosa");
			respuesta = new RespuestaDTO(lista);
		}

		System.out.println("fin: listarAutos()");
		
		return respuesta;
	}

	/*
	 * Endpoint : api/auto/{codigo}
	 * */
	@GET
	@Path("/auto/{codigo}")
	@Produces(MediaType.APPLICATION_JSON)
	public RespuestaDTO listarAutoxCodigo(@PathParam("codigo") String codigo){
		System.out.println("ini: listarAutoxCodigo()");
		RespuestaDTO respuesta = null;
				
		AutoService autoService = new AutoService();
		AutoDTO auto = autoService.ListadoAutoPorCodigo(codigo);
		ArrayList<AutoDTO> lista = new ArrayList<AutoDTO>();
		lista.add(auto);
		
		if (auto == null) {
			System.out.println("Listado Vacío");
		}else {
			System.out.println("Consulta Exitosa");
			respuesta = new RespuestaDTO(lista);
		}

		System.out.println("fin: listarAutoxCodigo()");
		
		return respuesta;
	}
	
	/*
	* Endpoint : api/marcas
	* */
	@GET
	@Path("/marcas")
	@Produces(MediaType.APPLICATION_JSON)
	public ArrayList<MarcaAutoDTO> listarMarcas(){
		System.out.println("ini: listarMarcas()");
		
		MarcaAutoService marcaService = new MarcaAutoService();
		ArrayList<MarcaAutoDTO> lista = marcaService.ListadoMarcaAuto();
		
		if (lista == null) {
			System.out.println("Listado Vacío");
		}else {
			System.out.println("Consulta Exitosa");
		}

		System.out.println("fin: listarMarcas()");
		
		return lista;
	}
	

	/*
	* Endpoint : api/lstautos
	* */
	@GET
	@Path("/lstautos")
	@Produces(MediaType.APPLICATION_JSON)
	public ArrayList<AutoDTO> listarLstAutos(){
		System.out.println("ini: listarLstAutos()");
		
		AutoService autoService = new AutoService();
		ArrayList<AutoDTO> lista = autoService.ListadoAuto();
		
		if (lista == null) {
			System.out.println("Listado Vacío");
		}else {
			System.out.println("Consulta Exitosa");
		}

		System.out.println("fin: listarLstAutos()");
		
		return lista;
	}
	
	/*
	* Endpoint : api/tipos
	* */
	@GET
	@Path("/tipos")
	@Produces(MediaType.APPLICATION_JSON)
	public ArrayList<TipoAutoDTO> listarTipos(){
		System.out.println("ini: listarTipos()");
		
		TipoAutoService tipoService = new TipoAutoService();
		ArrayList<TipoAutoDTO> lista = tipoService.ListadoTipoAuto();
		
		if (lista == null) {
			System.out.println("Listado Vacío");
		}else {
			System.out.println("Consulta Exitosa");
		}

		System.out.println("fin: listarTipos()");
		
		return lista;
	}
	
	/*
	* Endpoint : api/tipost
	* */
	@GET
	@Path("/tipost")
	@Produces(MediaType.APPLICATION_JSON)
	public ArrayList<TipoTransmisionDTO> listarTiposT(){
		System.out.println("ini: listarTiposT()");
		
		TipoTransmisionService tipotService = new TipoTransmisionService();
		ArrayList<TipoTransmisionDTO> lista = tipotService.ListadoTipoTransmision();
		
		if (lista == null) {
			System.out.println("Listado Vacío");
		}else {
			System.out.println("Consulta Exitosa");
		}

		System.out.println("fin: listarTiposT()");
		
		return lista;
	}

	/*
	* Endpoint : api/carrocerias
	* */
	@GET
	@Path("/carrocerias")
	@Produces(MediaType.APPLICATION_JSON)
	public ArrayList<CarroceriaDTO> listarCarrocerias(){
		System.out.println("ini: listarCarrocerias()");
		
		CarroceriaService tipotService = new CarroceriaService();
		ArrayList<CarroceriaDTO> lista = tipotService.ListadoCarroceria();
		
		if (lista == null) {
			System.out.println("Listado Vacío");
		}else {
			System.out.println("Consulta Exitosa");
		}

		System.out.println("fin: listarCarrocerias()");
		
		return lista;
	}
}
