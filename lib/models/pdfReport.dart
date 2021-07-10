import 'package:drawer_pdf_report/models/models.dart';

class PdfReport {
  final PdfInfoModel? pdfinfo;
  // final SettingsModel settings;
  //final Customer customer;
  final ImagePdfModel? imageReport;
  final SettingsModel? settingsModel;
  final CostumerModel? costumerModel;

  const PdfReport(
      {this.pdfinfo, this.imageReport, this.settingsModel, this.costumerModel});
}
