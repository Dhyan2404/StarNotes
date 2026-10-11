package org.apache.poi.hssf.converter;

import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sunia.HTREnginev2.gon;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.hpsf.SummaryInformation;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.hwpf.converter.HtmlDocumentFacade;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.util.XMLHelper;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

/* loaded from: classes12.dex */
public class ExcelToHtmlConverter extends AbstractExcelConverter {
    private static final Logger LOG = LogManager.getLogger((Class<?>) ExcelToHtmlConverter.class);
    private String cssClassContainerCell;
    private String cssClassContainerDiv;
    private String cssClassPrefixCell = "c";
    private String cssClassPrefixDiv = "d";
    private String cssClassPrefixRow = "r";
    private String cssClassPrefixTable = "t";
    private final Map<Short, String> excelStyleToClass = new LinkedHashMap();
    private final HtmlDocumentFacade htmlDocumentFacade;
    private boolean useDivsToSpan;

    /* renamed from: org.apache.poi.hssf.converter.ExcelToHtmlConverter$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194931 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$FillPatternType;

        static {
            int[] iArr = new int[CellType.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$CellType = iArr;
            try {
                iArr[CellType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.NUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.FORMULA.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BLANK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[FillPatternType.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$FillPatternType = iArr2;
            try {
                iArr2[FillPatternType.NO_FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$FillPatternType[FillPatternType.SOLID_FOREGROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public ExcelToHtmlConverter(Document document) {
        this.htmlDocumentFacade = new HtmlDocumentFacade(document);
    }

    private void buildStyle_border(HSSFWorkbook hSSFWorkbook, StringBuilder sb, String str, BorderStyle borderStyle, short s) {
        if (borderStyle == BorderStyle.NONE) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(AbstractExcelUtils.getBorderWidth(borderStyle));
        sb2.append(' ');
        sb2.append(AbstractExcelUtils.getBorderStyle(borderStyle));
        HSSFColor color = hSSFWorkbook.getCustomPalette().getColor(s);
        if (color != null) {
            sb2.append(' ');
            sb2.append(AbstractExcelUtils.getColor(color));
        }
        sb.append("border-");
        sb.append(str);
        sb.append(":");
        sb.append((CharSequence) sb2);
        sb.append(AndroidTreeView.f47214k);
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr.length < 2) {
            System.err.println("Usage: ExcelToHtmlConverter <inputFile.xls> <saveTo.html>");
            return;
        }
        System.out.println("Converting " + strArr[0]);
        System.out.println("Saving output to " + strArr[1]);
        DOMSource dOMSource = new DOMSource(process(new File(strArr[0])));
        StreamResult streamResult = new StreamResult(new File(strArr[1]));
        Transformer newTransformer = XMLHelper.newTransformer();
        newTransformer.setOutputProperty("method", "html");
        newTransformer.transform(dOMSource, streamResult);
    }

    public static Document process(File file) throws IOException, ParserConfigurationException {
        HSSFWorkbook loadXls = AbstractExcelUtils.loadXls(file);
        try {
            Document process = process(loadXls);
            if (loadXls != null) {
                loadXls.close();
            }
            return process;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (loadXls != null) {
                    try {
                        loadXls.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public String buildStyle(HSSFWorkbook hSSFWorkbook, HSSFCellStyle hSSFCellStyle) {
        StringBuilder sb = new StringBuilder();
        sb.append("white-space:pre-wrap;");
        AbstractExcelUtils.appendAlign(sb, hSSFCellStyle.getAlignment());
        int i = C194931.$SwitchMap$org$apache$poi$ss$usermodel$FillPatternType[hSSFCellStyle.getFillPattern().ordinal()];
        if (i != 1) {
            if (i != 2) {
                HSSFColor fillBackgroundColorColor = hSSFCellStyle.getFillBackgroundColorColor();
                if (fillBackgroundColorColor != null) {
                    String color = AbstractExcelUtils.getColor(fillBackgroundColorColor);
                    sb.append("background-color:");
                    sb.append(color);
                    sb.append(AndroidTreeView.f47214k);
                }
            } else {
                HSSFColor fillForegroundColorColor = hSSFCellStyle.getFillForegroundColorColor();
                if (fillForegroundColorColor != null) {
                    String color2 = AbstractExcelUtils.getColor(fillForegroundColorColor);
                    sb.append("background-color:");
                    sb.append(color2);
                    sb.append(AndroidTreeView.f47214k);
                }
            }
        }
        buildStyle_border(hSSFWorkbook, sb, OneDriverConstants.TOP, hSSFCellStyle.getBorderTop(), hSSFCellStyle.getTopBorderColor());
        buildStyle_border(hSSFWorkbook, sb, gon.f71288n0, hSSFCellStyle.getBorderRight(), hSSFCellStyle.getRightBorderColor());
        buildStyle_border(hSSFWorkbook, sb, "bottom", hSSFCellStyle.getBorderBottom(), hSSFCellStyle.getBottomBorderColor());
        buildStyle_border(hSSFWorkbook, sb, "left", hSSFCellStyle.getBorderLeft(), hSSFCellStyle.getLeftBorderColor());
        buildStyle_font(hSSFWorkbook, sb, hSSFCellStyle.getFont(hSSFWorkbook));
        return sb.toString();
    }

    public void buildStyle_font(HSSFWorkbook hSSFWorkbook, StringBuilder sb, HSSFFont hSSFFont) {
        if (hSSFFont.getBold()) {
            sb.append("font-weight:bold;");
        }
        HSSFColor color = hSSFWorkbook.getCustomPalette().getColor(hSSFFont.getColor());
        if (color != null) {
            sb.append("color: ");
            sb.append(AbstractExcelUtils.getColor(color));
            sb.append("; ");
        }
        if (hSSFFont.getFontHeightInPoints() != 0) {
            sb.append("font-size:");
            sb.append((int) hSSFFont.getFontHeightInPoints());
            sb.append("pt;");
        }
        if (hSSFFont.getItalic()) {
            sb.append("font-style:italic;");
        }
    }

    public String getCssClassPrefixCell() {
        return this.cssClassPrefixCell;
    }

    public String getCssClassPrefixDiv() {
        return this.cssClassPrefixDiv;
    }

    public String getCssClassPrefixRow() {
        return this.cssClassPrefixRow;
    }

    public String getCssClassPrefixTable() {
        return this.cssClassPrefixTable;
    }

    @Override // org.apache.poi.hssf.converter.AbstractExcelConverter
    public Document getDocument() {
        return this.htmlDocumentFacade.getDocument();
    }

    public String getStyleClassName(HSSFWorkbook hSSFWorkbook, HSSFCellStyle hSSFCellStyle) {
        Short valueOf = Short.valueOf(hSSFCellStyle.getIndex());
        String str = this.excelStyleToClass.get(valueOf);
        if (str != null) {
            return str;
        }
        String orCreateCssClass = this.htmlDocumentFacade.getOrCreateCssClass(this.cssClassPrefixCell, buildStyle(hSSFWorkbook, hSSFCellStyle));
        this.excelStyleToClass.put(valueOf, orCreateCssClass);
        return orCreateCssClass;
    }

    public boolean isUseDivsToSpan() {
        return this.useDivsToSpan;
    }

    public boolean processCell(HSSFCell hSSFCell, Element element, int i, int i2, float f) {
        HSSFCellStyle cellStyle = hSSFCell.getCellStyle();
        int[] iArr = C194931.$SwitchMap$org$apache$poi$ss$usermodel$CellType;
        String str = "";
        switch (iArr[hSSFCell.getCellType().ordinal()]) {
            case 1:
                str = hSSFCell.getRichStringCellValue().getString();
                break;
            case 2:
                str = this._formatter.formatCellValue(hSSFCell);
                break;
            case 3:
                str = String.valueOf(hSSFCell.getBooleanCellValue());
                break;
            case 4:
                str = ErrorEval.getText(hSSFCell.getErrorCellValue());
                break;
            case 5:
                int i3 = iArr[hSSFCell.getCachedFormulaResultType().ordinal()];
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 3) {
                            if (i3 != 4) {
                                LOG.atWarn().log("Unexpected cell cachedFormulaResultType ({})", hSSFCell.getCachedFormulaResultType());
                                break;
                            } else {
                                str = ErrorEval.getText(hSSFCell.getErrorCellValue());
                                break;
                            }
                        } else {
                            str = String.valueOf(hSSFCell.getBooleanCellValue());
                            break;
                        }
                    } else {
                        str = this._formatter.formatRawCellContents(hSSFCell.getNumericCellValue(), cellStyle.getDataFormat(), cellStyle.getDataFormatString());
                        break;
                    }
                } else {
                    HSSFRichTextString richStringCellValue = hSSFCell.getRichStringCellValue();
                    if (richStringCellValue != null && richStringCellValue.length() > 0) {
                        str = richStringCellValue.toString();
                        break;
                    }
                }
                break;
            case 6:
                break;
            default:
                LOG.atWarn().log("Unexpected cell type ({})", hSSFCell.getCellType());
                return true;
        }
        boolean isEmpty = AbstractExcelUtils.isEmpty(str);
        boolean z = (isEmpty || !isUseDivsToSpan() || cellStyle.getWrapText()) ? false : true;
        if (cellStyle.getIndex() != 0) {
            String styleClassName = getStyleClassName(hSSFCell.getRow().getSheet().getWorkbook(), cellStyle);
            if (z) {
                element.setAttribute("class", styleClassName + " " + this.cssClassContainerCell);
            } else {
                element.setAttribute("class", styleClassName);
            }
            if (isEmpty) {
                str = Constants.UNICODECHAR_NO_BREAK_SPACE;
            }
        }
        if (isOutputLeadingSpacesAsNonBreaking() && str.startsWith(" ")) {
            StringBuilder sb = new StringBuilder();
            for (int i4 = 0; i4 < str.length() && str.charAt(i4) == ' '; i4++) {
                sb.append((char) 160);
            }
            if (str.length() != sb.length()) {
                sb.append(str.substring(sb.length()));
            }
            str = sb.toString();
        }
        Node createText = this.htmlDocumentFacade.createText(str);
        if (z) {
            Element createBlock = this.htmlDocumentFacade.createBlock();
            createBlock.setAttribute("class", this.cssClassContainerDiv);
            Element createBlock2 = this.htmlDocumentFacade.createBlock();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("position:absolute;min-width:");
            sb2.append(i);
            sb2.append("px;");
            if (i2 != Integer.MAX_VALUE) {
                sb2.append("max-width:");
                sb2.append(i2);
                sb2.append("px;");
            }
            sb2.append("overflow:hidden;max-height:");
            sb2.append(f);
            sb2.append("pt;white-space:nowrap;");
            AbstractExcelUtils.appendAlign(sb2, cellStyle.getAlignment());
            this.htmlDocumentFacade.addStyleClass(createBlock, this.cssClassPrefixDiv, sb2.toString());
            createBlock2.appendChild(createText);
            createBlock.appendChild(createBlock2);
            element.appendChild(createBlock);
        } else {
            element.appendChild(createText);
        }
        return AbstractExcelUtils.isEmpty(str) && cellStyle.getIndex() == 0;
    }

    public void processColumnHeaders(HSSFSheet hSSFSheet, int i, Element element) {
        Element createTableHeader = this.htmlDocumentFacade.createTableHeader();
        element.appendChild(createTableHeader);
        Element createTableRow = this.htmlDocumentFacade.createTableRow();
        if (isOutputRowNumbers()) {
            createTableRow.appendChild(this.htmlDocumentFacade.createTableHeaderCell());
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (isOutputHiddenColumns() || !hSSFSheet.isColumnHidden(i2)) {
                Element createTableHeaderCell = this.htmlDocumentFacade.createTableHeaderCell();
                createTableHeaderCell.appendChild(this.htmlDocumentFacade.createText(getColumnName(i2)));
                createTableRow.appendChild(createTableHeaderCell);
            }
        }
        createTableHeader.appendChild(createTableRow);
    }

    public void processColumnWidths(HSSFSheet hSSFSheet, int i, Element element) {
        Node createTableColumnGroup = this.htmlDocumentFacade.createTableColumnGroup();
        if (isOutputRowNumbers()) {
            createTableColumnGroup.appendChild(this.htmlDocumentFacade.createTableColumn());
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (isOutputHiddenColumns() || !hSSFSheet.isColumnHidden(i2)) {
                Element createTableColumn = this.htmlDocumentFacade.createTableColumn();
                createTableColumn.setAttribute("width", String.valueOf(AbstractExcelConverter.getColumnWidth(hSSFSheet, i2)));
                createTableColumnGroup.appendChild(createTableColumn);
            }
        }
        element.appendChild(createTableColumnGroup);
    }

    public void processDocumentInformation(SummaryInformation summaryInformation) {
        if (AbstractExcelUtils.isNotEmpty(summaryInformation.getTitle())) {
            this.htmlDocumentFacade.setTitle(summaryInformation.getTitle());
        }
        if (AbstractExcelUtils.isNotEmpty(summaryInformation.getAuthor())) {
            this.htmlDocumentFacade.addAuthor(summaryInformation.getAuthor());
        }
        if (AbstractExcelUtils.isNotEmpty(summaryInformation.getKeywords())) {
            this.htmlDocumentFacade.addKeywords(summaryInformation.getKeywords());
        }
        if (AbstractExcelUtils.isNotEmpty(summaryInformation.getComments())) {
            this.htmlDocumentFacade.addDescription(summaryInformation.getComments());
        }
    }

    public int processRow(CellRangeAddress[][] cellRangeAddressArr, HSSFRow hSSFRow, Element element) {
        CellRangeAddress mergedRange;
        int i;
        Element element2;
        int i2;
        ExcelToHtmlConverter excelToHtmlConverter = this;
        HSSFSheet sheet = hSSFRow.getSheet();
        short lastCellNum = hSSFRow.getLastCellNum();
        int i3 = 0;
        if (lastCellNum <= 0) {
            return 0;
        }
        ArrayList arrayList = new ArrayList(lastCellNum);
        if (isOutputRowNumbers()) {
            Element createTableHeaderCell = excelToHtmlConverter.htmlDocumentFacade.createTableHeaderCell();
            excelToHtmlConverter.processRowNumber(hSSFRow, createTableHeaderCell);
            arrayList.add(createTableHeaderCell);
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            boolean z = true;
            if (i4 >= lastCellNum) {
                return i5 + 1;
            }
            if ((isOutputHiddenColumns() || !sheet.isColumnHidden(i4)) && ((mergedRange = AbstractExcelUtils.getMergedRange(cellRangeAddressArr, hSSFRow.getRowNum(), i4)) == null || (mergedRange.getFirstColumn() == i4 && mergedRange.getFirstRow() == hSSFRow.getRowNum()))) {
                HSSFCell cell = hSSFRow.getCell(i4);
                if (isUseDivsToSpan()) {
                    int columnWidth = AbstractExcelConverter.getColumnWidth(sheet, i4);
                    int i6 = i4 + 1;
                    while (true) {
                        if (i6 >= lastCellNum) {
                            i2 = i3;
                            break;
                        }
                        if (isOutputHiddenColumns() || !sheet.isColumnHidden(i6)) {
                            if (hSSFRow.getCell(i6) != null && !excelToHtmlConverter.isTextEmpty(hSSFRow.getCell(i6))) {
                                i2 = 1;
                                break;
                            }
                            columnWidth += AbstractExcelConverter.getColumnWidth(sheet, i6);
                        }
                        i6++;
                    }
                    if (i2 == 0) {
                        columnWidth = Integer.MAX_VALUE;
                    }
                    i = columnWidth;
                } else {
                    i = i3;
                }
                Element createTableCell = excelToHtmlConverter.htmlDocumentFacade.createTableCell();
                if (mergedRange != null) {
                    if (mergedRange.getFirstColumn() != mergedRange.getLastColumn()) {
                        createTableCell.setAttribute("colspan", String.valueOf((mergedRange.getLastColumn() - mergedRange.getFirstColumn()) + 1));
                    }
                    if (mergedRange.getFirstRow() != mergedRange.getLastRow()) {
                        createTableCell.setAttribute("rowspan", String.valueOf((mergedRange.getLastRow() - mergedRange.getFirstRow()) + 1));
                    }
                }
                if (cell != null) {
                    element2 = createTableCell;
                    z = processCell(cell, createTableCell, AbstractExcelConverter.getColumnWidth(sheet, i4), i, hSSFRow.getHeight() / 20.0f);
                } else {
                    element2 = createTableCell;
                }
                if (z) {
                    arrayList.add(element2);
                } else {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        element.appendChild((Element) it2.next());
                    }
                    arrayList.clear();
                    element.appendChild(element2);
                    i5 = i4;
                }
            }
            i4++;
            i3 = 0;
            excelToHtmlConverter = this;
        }
    }

    public void processRowNumber(HSSFRow hSSFRow, Element element) {
        element.setAttribute("class", "rownumber");
        element.appendChild(this.htmlDocumentFacade.createText(getRowName(hSSFRow)));
    }

    public void processSheet(HSSFSheet hSSFSheet) {
        processSheetHeader(this.htmlDocumentFacade.getBody(), hSSFSheet);
        int physicalNumberOfRows = hSSFSheet.getPhysicalNumberOfRows();
        if (physicalNumberOfRows <= 0) {
            return;
        }
        Element createTable = this.htmlDocumentFacade.createTable();
        this.htmlDocumentFacade.addStyleClass(createTable, this.cssClassPrefixTable, "border-collapse:collapse;border-spacing:0;");
        Node createTableBody = this.htmlDocumentFacade.createTableBody();
        CellRangeAddress[][] buildMergedRangesMap = AbstractExcelUtils.buildMergedRangesMap(hSSFSheet);
        ArrayList arrayList = new ArrayList(physicalNumberOfRows);
        int i = 1;
        for (int firstRowNum = hSSFSheet.getFirstRowNum(); firstRowNum <= hSSFSheet.getLastRowNum(); firstRowNum++) {
            HSSFRow row = hSSFSheet.getRow(firstRowNum);
            if (row != null && (isOutputHiddenRows() || !row.getZeroHeight())) {
                Element createTableRow = this.htmlDocumentFacade.createTableRow();
                this.htmlDocumentFacade.addStyleClass(createTableRow, this.cssClassPrefixRow, "height:" + (row.getHeight() / 20.0f) + "pt;");
                int processRow = processRow(buildMergedRangesMap, row, createTableRow);
                if (processRow == 0) {
                    arrayList.add(createTableRow);
                } else {
                    if (!arrayList.isEmpty()) {
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            createTableBody.appendChild((Element) it2.next());
                        }
                        arrayList.clear();
                    }
                    createTableBody.appendChild(createTableRow);
                }
                i = Math.max(i, processRow);
            }
        }
        processColumnWidths(hSSFSheet, i, createTable);
        if (isOutputColumnHeaders()) {
            processColumnHeaders(hSSFSheet, i, createTable);
        }
        createTable.appendChild(createTableBody);
        this.htmlDocumentFacade.getBody().appendChild(createTable);
    }

    public void processSheetHeader(Element element, HSSFSheet hSSFSheet) {
        Element createHeader2 = this.htmlDocumentFacade.createHeader2();
        createHeader2.appendChild(this.htmlDocumentFacade.createText(hSSFSheet.getSheetName()));
        element.appendChild(createHeader2);
    }

    public void processWorkbook(HSSFWorkbook hSSFWorkbook) {
        SummaryInformation summaryInformation = hSSFWorkbook.getSummaryInformation();
        if (summaryInformation != null) {
            processDocumentInformation(summaryInformation);
        }
        if (isUseDivsToSpan()) {
            this.cssClassContainerCell = this.htmlDocumentFacade.getOrCreateCssClass(this.cssClassPrefixCell, "padding:0;margin:0;align:left;vertical-align:top;");
            this.cssClassContainerDiv = this.htmlDocumentFacade.getOrCreateCssClass(this.cssClassPrefixDiv, "position:relative;");
        }
        for (int i = 0; i < hSSFWorkbook.getNumberOfSheets(); i++) {
            processSheet(hSSFWorkbook.getSheetAt(i));
        }
        this.htmlDocumentFacade.updateStylesheet();
    }

    public void setCssClassPrefixCell(String str) {
        this.cssClassPrefixCell = str;
    }

    public void setCssClassPrefixDiv(String str) {
        this.cssClassPrefixDiv = str;
    }

    public void setCssClassPrefixRow(String str) {
        this.cssClassPrefixRow = str;
    }

    public void setCssClassPrefixTable(String str) {
        this.cssClassPrefixTable = str;
    }

    public void setUseDivsToSpan(boolean z) {
        this.useDivsToSpan = z;
    }

    public static Document process(InputStream inputStream) throws IOException, ParserConfigurationException {
        HSSFWorkbook hSSFWorkbook = new HSSFWorkbook(inputStream);
        try {
            Document process = process(hSSFWorkbook);
            hSSFWorkbook.close();
            return process;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    hSSFWorkbook.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public ExcelToHtmlConverter(HtmlDocumentFacade htmlDocumentFacade) {
        this.htmlDocumentFacade = htmlDocumentFacade;
    }

    public static Document process(HSSFWorkbook hSSFWorkbook) throws IOException, ParserConfigurationException {
        ExcelToHtmlConverter excelToHtmlConverter = new ExcelToHtmlConverter(XMLHelper.newDocumentBuilder().newDocument());
        excelToHtmlConverter.processWorkbook(hSSFWorkbook);
        return excelToHtmlConverter.getDocument();
    }
}
