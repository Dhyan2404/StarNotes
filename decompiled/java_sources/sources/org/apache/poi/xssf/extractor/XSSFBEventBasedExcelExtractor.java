package org.apache.poi.xssf.extractor;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.openxml4j.exceptions.OpenXML4JException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.xssf.binary.XSSFBCommentsTable;
import org.apache.poi.xssf.binary.XSSFBHyperlinksTable;
import org.apache.poi.xssf.binary.XSSFBSharedStringsTable;
import org.apache.poi.xssf.binary.XSSFBSheetHandler;
import org.apache.poi.xssf.binary.XSSFBStylesTable;
import org.apache.poi.xssf.eventusermodel.XSSFBReader;
import org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler;
import org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor;
import org.apache.poi.xssf.model.SharedStrings;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.XmlException;
import org.xml.sax.SAXException;

/* loaded from: classes13.dex */
public class XSSFBEventBasedExcelExtractor extends XSSFEventBasedExcelExtractor {
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) XSSFBEventBasedExcelExtractor.class);
    public static final List<XSSFRelation> SUPPORTED_TYPES = Collections.singletonList(XSSFRelation.XLSB_BINARY_WORKBOOK);
    private boolean handleHyperlinksInCells;

    public XSSFBEventBasedExcelExtractor(String str) throws XmlException, OpenXML4JException, IOException {
        super(str);
    }

    @Override // org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor, org.apache.poi.extractor.POITextExtractor
    public String getText() {
        try {
            SharedStrings xSSFBSharedStringsTable = new XSSFBSharedStringsTable(getPackage());
            XSSFBReader xSSFBReader = new XSSFBReader(getPackage());
            XSSFBStylesTable xSSFBStylesTable = xSSFBReader.getXSSFBStylesTable();
            XSSFBReader.SheetIterator sheetIterator = (XSSFBReader.SheetIterator) xSSFBReader.getSheetsData();
            StringBuilder sb = new StringBuilder(64);
            XSSFEventBasedExcelExtractor.SheetTextExtractor sheetTextExtractor = new XSSFEventBasedExcelExtractor.SheetTextExtractor();
            while (sheetIterator.hasNext()) {
                InputStream next = sheetIterator.next();
                try {
                    if (getIncludeSheetNames()) {
                        sb.append(sheetIterator.getSheetName());
                        sb.append('\n');
                    }
                    if (this.handleHyperlinksInCells) {
                        new XSSFBHyperlinksTable(sheetIterator.getSheetPart());
                    }
                    processSheet(sheetTextExtractor, xSSFBStylesTable, getIncludeCellComments() ? sheetIterator.getXSSFBSheetComments() : null, xSSFBSharedStringsTable, next);
                    if (getIncludeHeadersFooters()) {
                        sheetTextExtractor.appendHeaderText(sb);
                    }
                    sheetTextExtractor.appendCellText(sb);
                    if (getIncludeTextBoxes()) {
                        processShapes(sheetIterator.getShapes(), sb);
                    }
                    if (getIncludeHeadersFooters()) {
                        sheetTextExtractor.appendFooterText(sb);
                    }
                    sheetTextExtractor.reset();
                    if (next != null) {
                        next.close();
                    }
                } finally {
                }
            }
            return sb.toString();
        } catch (IOException | OpenXML4JException | SAXException e) {
            LOGGER.atWarn().withThrowable(e).log("Failed to load text");
            return "";
        }
    }

    public void processSheet(XSSFSheetXMLHandler.SheetContentsHandler sheetContentsHandler, XSSFBStylesTable xSSFBStylesTable, XSSFBCommentsTable xSSFBCommentsTable, SharedStrings sharedStrings, InputStream inputStream) throws IOException {
        new XSSFBSheetHandler(inputStream, xSSFBStylesTable, xSSFBCommentsTable, sharedStrings, sheetContentsHandler, getLocale() == null ? new DataFormatter() : new DataFormatter(getLocale()), getFormulasNotResults()).parse();
    }

    @Override // org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor, org.apache.poi.ss.extractor.ExcelExtractor
    public void setFormulasNotResults(boolean z) {
        throw new IllegalArgumentException("Not currently supported");
    }

    public void setHandleHyperlinksInCells(boolean z) {
        this.handleHyperlinksInCells = z;
    }

    public XSSFBEventBasedExcelExtractor(OPCPackage oPCPackage) throws XmlException, OpenXML4JException, IOException {
        super(oPCPackage);
    }
}
