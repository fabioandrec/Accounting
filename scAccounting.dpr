program scAccounting;

uses
  Vcl.Forms,
  DM in 'Source\DM.pas' {DMRef: TDataModule},
  DMConta in 'Source\DMConta.pas' {DMContaRef: TDataModule},
  DMControl in 'Source\DMControl.pas' {DMControlRef: TDataModule},
  General in 'Source\General.pas',
  Globales in 'Source\Globales.pas',
  Login in 'Source\Login.pas' {FormLogin},
  MainMenu in 'Source\MainMenu.pas' {MainMenuForm},
  Proyectos in 'Source\Proyectos.pas' {WProyectos},
  Splash in 'Source\Splash.pas' {FormSplash},
  UActualizacionBD in 'Source\UActualizacionBD.pas' {WActualizacionBD},
  UAnaliticas in 'Source\UAnaliticas.pas' {WAnaliticas},
  UCierreEjercicio in 'Source\UCierreEjercicio.pas' {WCierreEjercicio},
  UComerciales in 'Source\UComerciales.pas' {WComerciales},
  UConceptos in 'Source\UConceptos.pas' {WConceptos},
  UCuentas in 'Source\UCuentas.pas' {WCuentas},
  UDelegaciones in 'Source\UDelegaciones.pas' {WDelegaciones},
  UDepartamentos in 'Source\UDepartamentos.pas' {WDepartamentos},
  UDetalleIVA in 'Source\UDetalleIVA.pas' {WDetalleIVA},
  UEmpresas in 'Source\UEmpresas.pas' {WEmpresas},
  UEnlaceContable in 'Source\UEnlaceContable.pas' {WEnlaceContable},
  UEspere in 'Source\UEspere.pas' {WEspere},
  UFormasPago in 'Source\UFormasPago.pas' {WFormasPago},
  UGeneracionAsiento in 'Source\UGeneracionAsiento.pas' {WGeneracionAsiento},
  UGrupos in 'Source\UGrupos.pas' {WGrupos},
  UImportacion in 'Source\UImportacion.pas' {WImportacion},
  UAmortizaciones in 'Source\Amortizaciones\UAmortizaciones.pas' {WAmortizaciones},
  UAmortizacionesModel in 'Source\Amortizaciones\UAmortizacionesModel.pas' {DataModuleAmortizaciones: TDataModule},
  UBalAcumulados in 'Source\BalAcumulados\UBalAcumulados.pas',
  UBalAcumuladosModel in 'Source\BalAcumulados\UBalAcumuladosModel.pas',
  UBalExplotacion in 'Source\BalExplotacion\UBalExplotacion.pas',
  UBalExplotacionModel in 'Source\BalExplotacion\UBalExplotacionModel.pas',
  UBorradoDiario in 'Source\BorradoDiario\UBorradoDiario.pas',
  UBorradoDiarioModel in 'Source\BorradoDiario\UBorradoDiarioModel.pas',
  UCargaApuntes in 'Source\CargaApuntes\UCargaApuntes.pas',
  UCargaApuntesModel in 'Source\CargaApuntes\UCargaApuntesModel.pas',
  UCargaAsiento in 'Source\CargaAsientos\UCargaAsiento.pas',
  UCargaAsientoModel in 'Source\CargaAsientos\UCargaAsientoModel.pas',
  UEditApunte in 'Source\CargaAsientos\UEditApunte.pas',
  UCargaCobrosPagos in 'Source\CargaCobrosPagos\UCargaCobrosPagos.pas',
  UCargaCobrosPagosModel in 'Source\CargaCobrosPagos\UCargaCobrosPagosModel.pas',
  UCargaRapidaFacturas in 'Source\CargaRapidaFacturas\UCargaRapidaFacturas.pas',
  UCargaRapidaFacturasModel in 'Source\CargaRapidaFacturas\UCargaRapidaFacturasModel.pas',
  UEditLineaIVA in 'Source\CargaRapidaFacturas\UEditLineaIVA.pas',
  UCargaRapidaNominas in 'Source\CargaRapidaNominas\UCargaRapidaNominas.pas',
  UCargaRapidaNominasModel in 'Source\CargaRapidaNominas\UCargaRapidaNominasModel.pas',
  UEditEmpleado in 'Source\CargaRapidaNominas\UEditEmpleado.pas',
  UCarteraEfectos in 'Source\CarteraEfectos\UCarteraEfectos.pas',
  UCarteraEfectosModel in 'Source\CarteraEfectos\UCarteraEfectosModel.pas',
  UCopiaAsientos in 'Source\CopiaAsientos\UCopiaAsientos.pas',
  UCopiaAsientosModel in 'Source\CopiaAsientos\UCopiaAsientosModel.pas',
  UDiario in 'Source\Diario\UDiario.pas',
  UDiarioModel in 'Source\Diario\UDiarioModel.pas',
  UEfectosComerciales in 'Source\EfectosComerciales\UEfectosComerciales.pas',
  UEfectosComercialesModel in 'Source\EfectosComerciales\UEfectosComercialesModel.pas',
  UFiltro347 in 'Source\Filtro347\UFiltro347.pas',
  UFiltro347Model in 'Source\Filtro347\UFiltro347Model.pas',
  UFiltroBalances in 'Source\FiltroBalances\UFiltroBalances.pas',
  UFiltroBalancesModel in 'Source\FiltroBalances\UFiltroBalancesModel.pas',
  UFiltroLibroFacturasEmitidas in 'Source\FiltroLibroFacturasEmitidas\UFiltroLibroFacturasEmitidas.pas',
  UFiltroLibroFacturasEmitidasModel in 'Source\FiltroLibroFacturasEmitidas\UFiltroLibroFacturasEmitidasModel.pas',
  UFiltroMayorSubcuenta in 'Source\FiltroMayorSubcuenta\UFiltroMayorSubcuenta.pas',
  UFiltroMayorSubcuentaModel in 'Source\FiltroMayorSubcuenta\UFiltroMayorSubcuentaModel.pas',
  UFiltroSitPgGg in 'Source\FiltroSitPgGg\UFiltroSitPgGg.pas',
  UFiltroSitPgGgModel in 'Source\FiltroSitPgGg\UFiltroSitPgGgModel.pas',
  ccChildForm in 'Source\icenet\ccChildForm.pas',
  ccDBIntegrity in 'Source\icenet\ccDBIntegrity.pas',
  ccStr in 'Source\icenet\ccStr.pas',
  CustomModel in 'Source\icenet\CustomModel.pas',
  FormHandler in 'Source\icenet\FormHandler.pas',
  UtilesMDIForms in 'Source\icenet\UtilesMDIForms.pas',
  SQLConnect in 'Source\icenet\SQLConnect.pas',
  UIrpf110 in 'Source\IRPF110\UIrpf110.pas',
  UIRPF110Model in 'Source\IRPF110\UIRPF110Model.pas',
  UIrpf115 in 'Source\IRPF115\UIrpf115.pas',
  UIRPF115Model in 'Source\IRPF115\UIRPF115Model.pas',
  UISoc202 in 'Source\ISoc202\UISoc202.pas',
  UISoc202Model in 'Source\ISoc202\UISoc202Model.pas',
  UIVA300 in 'Source\IVA300\UIVA300.pas',
  UIVA300Model in 'Source\IVA300\UIVA300Model.pas',
  UParametrizacion in 'Source\Parametrizacion\UParametrizacion.pas',
  UParametrizacionModel in 'Source\Parametrizacion\UParametrizacionModel.pas',
  URecalculoSaldos in 'Source\RecalculoSaldos\URecalculoSaldos.pas',
  URecalculoSaldosModel in 'Source\RecalculoSaldos\URecalculoSaldosModel.pas',
  UFiltroListadosAsientos in 'Source\UFiltroListadosAsientos\UFiltroListadosAsientos.pas',
  UFiltroListadosAsientosModel in 'Source\UFiltroListadosAsientos\UFiltroListadosAsientosModel.pas',
  UFiltroListadosMayor in 'Source\UFiltroListadosMayor\UFiltroListadosMayor.pas',
  UFiltroListadosMayorModel in 'Source\UFiltroListadosMayor\UFiltroListadosMayorModel.pas',
  UNuevaSubcuenta in 'Source\UNuevaSubcuenta.pas',
  USituacionEfecto in 'Source\USituacionEfecto.pas',
  UVencimientos in 'Source\UVencimientos.pas',
  UUtilEmpresas in 'Source\UUtilEmpresas.pas',
  UPaises in 'Source\UPaises.pas',
  UParametrizacionFacturacion in 'Source\UParametrizacionFacturacion.pas',
  UPlanAnalico in 'Source\UPlanAnalico.pas',
  UPlanContable in 'Source\UPlanContable.pas',
  UPunteoDiario in 'Source\UPunteoDiario.pas',
  USecciones in 'Source\USecciones.pas',
  USubCuentas in 'Source\USubCuentas.pas',
  UTiposDiario in 'Source\UTiposDiario.pas',
  UTitulos in 'Source\UTitulos.pas',
  UTraspasoApuntes in 'Source\UTraspasoApuntes.pas',
  UTraspasoDatos in 'Source\UTraspasoDatos.pas',
  UUsuarios in 'Source\UUsuarios.pas',
  Tools in 'Source\icenet\Tools.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  {We shall conserve this creation order, because MainMenu makes use of somethings defined in DMControlRef.Loaded method}
  {Shall be created first DMControlRef and inmediately after MainMenuForm}
  Application.CreateForm(TDMControlRef, DMControlRef);
  Application.CreateForm(TMainMenuForm, MainMenuForm);
  Application.Run;
end.
