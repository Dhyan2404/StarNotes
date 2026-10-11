package org.apache.poi.hssf.converter;

import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.o6o;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
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
import org.apache.poi.hwpf.converter.FoDocumentFacade;
import org.apache.poi.hwpf.converter.FontReplacer;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.ss.util.CellUtil;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.util.XMLHelper;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.Text;

/* loaded from: classes12.dex */
public class ExcelToFoConverter extends AbstractExcelConverter {
    private static final float CM_PER_INCH = 2.54f;
    private static final float DPI = 72.0f;
    private static final Logger LOG = LogManager.getLogger((Class<?>) ExcelToFoConverter.class);
    private static final float PAPER_A4_HEIGHT_INCHES = 11.574803f;
    private static final float PAPER_A4_WIDTH_INCHES = 8.267716f;
    private final FoDocumentFacade foDocumentFacade;
    private float pageMarginInches = 0.4f;

    /* renamed from: org.apache.poi.hssf.converter.ExcelToFoConverter$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194921 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType;

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
        }
    }

    public ExcelToFoConverter(Document document) {
        this.foDocumentFacade = new FoDocumentFacade(document);
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr.length < 2) {
            System.err.println("Usage: ExcelToFoConverter <inputFile.xls> <saveTo.xml>");
            return;
        }
        System.out.println("Converting " + strArr[0]);
        System.out.println("Saving output to " + strArr[1]);
        XMLHelper.newTransformer().transform(new DOMSource(ExcelToHtmlConverter.process(new File(strArr[0]))), new StreamResult(new File(strArr[1])));
    }

    public static Document process(File file) throws Exception {
        HSSFWorkbook loadXls = AbstractExcelUtils.loadXls(file);
        try {
            ExcelToFoConverter excelToFoConverter = new ExcelToFoConverter(XMLHelper.newDocumentBuilder().newDocument());
            excelToFoConverter.processWorkbook(loadXls);
            Document document = excelToFoConverter.getDocument();
            if (loadXls != null) {
                loadXls.close();
            }
            return document;
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

    private void setBlockProperties(Element element, FontReplacer.Triplet triplet) {
        if (triplet.bold) {
            element.setAttribute(o6o.f79399i, "bold");
        }
        if (triplet.italic) {
            element.setAttribute(o6o.f79410t, "italic");
        }
        if (AbstractExcelUtils.isNotEmpty(triplet.fontName)) {
            element.setAttribute(o6o.f79398h, triplet.fontName);
        }
    }

    public String createPageMaster(float f, String str) {
        float f2;
        float pageMarginInches = f + (getPageMarginInches() * 2.0f);
        float f3 = PAPER_A4_WIDTH_INCHES;
        if (pageMarginInches < PAPER_A4_WIDTH_INCHES) {
            f2 = PAPER_A4_HEIGHT_INCHES;
        } else {
            f3 = pageMarginInches;
            f2 = 0.7142857f * pageMarginInches;
        }
        float pageMarginInches2 = getPageMarginInches();
        float pageMarginInches3 = getPageMarginInches();
        float pageMarginInches4 = getPageMarginInches();
        float pageMarginInches5 = getPageMarginInches();
        Element addSimplePageMaster = this.foDocumentFacade.addSimplePageMaster(str);
        addSimplePageMaster.setAttribute("page-height", f2 + "in");
        addSimplePageMaster.setAttribute("page-width", f3 + "in");
        this.foDocumentFacade.addRegionBody(addSimplePageMaster).setAttribute("margin", pageMarginInches4 + "in " + pageMarginInches3 + "in " + pageMarginInches5 + "in " + pageMarginInches2 + "in");
        return str;
    }

    @Override // org.apache.poi.hssf.converter.AbstractExcelConverter
    public Document getDocument() {
        return this.foDocumentFacade.getDocument();
    }

    public float getPageMarginInches() {
        return this.pageMarginInches;
    }

    public boolean isEmptyStyle(CellStyle cellStyle) {
        if (cellStyle != null) {
            if (cellStyle.getFillPattern() == FillPatternType.NO_FILL) {
                BorderStyle borderTop = cellStyle.getBorderTop();
                BorderStyle borderStyle = BorderStyle.NONE;
                if (borderTop != borderStyle || cellStyle.getBorderRight() != borderStyle || cellStyle.getBorderBottom() != borderStyle || cellStyle.getBorderLeft() != borderStyle) {
                }
            }
            return false;
        }
        return true;
    }

    public boolean processCell(HSSFWorkbook hSSFWorkbook, HSSFCell hSSFCell, Element element, int i, int i2, float f) {
        HSSFCellStyle cellStyle = hSSFCell.getCellStyle();
        int[] iArr = C194921.$SwitchMap$org$apache$poi$ss$usermodel$CellType;
        String str = "";
        switch (iArr[hSSFCell.getCellType().ordinal()]) {
            case 1:
                str = hSSFCell.getRichStringCellValue().getString();
                break;
            case 2:
                str = this._formatter.formatCellValue(hSSFCell);
                break;
            case 3:
                str = Boolean.toString(hSSFCell.getBooleanCellValue());
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
                            str = Boolean.toString(hSSFCell.getBooleanCellValue());
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
        boolean z = (isEmpty || cellStyle.getWrapText()) ? false : true;
        boolean isEmptyStyle = isEmptyStyle(cellStyle);
        if (!isEmptyStyle && isEmpty) {
            str = Constants.UNICODECHAR_NO_BREAK_SPACE;
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
        Text createText = this.foDocumentFacade.createText(str);
        Element createBlock = this.foDocumentFacade.createBlock();
        if (z) {
            createBlock.setAttribute("absolute-position", "fixed");
            createBlock.setAttribute("left", "0px");
            createBlock.setAttribute(OneDriverConstants.TOP, "0px");
            createBlock.setAttribute("bottom", "0px");
            createBlock.setAttribute("min-width", i + ExtUnits.UNIT_PX);
            if (i2 != Integer.MAX_VALUE) {
                createBlock.setAttribute("max-width", i2 + ExtUnits.UNIT_PX);
            }
            createBlock.setAttribute("overflow", CellUtil.HIDDEN);
            createBlock.setAttribute("height", f + ExtUnits.UNIT_PT);
            createBlock.setAttribute("keep-together.within-line", NotificationDisplayHandler.STRATEGY_ALWAYS);
            createBlock.setAttribute("wrap-option", "no-wrap");
        }
        processCellStyle(hSSFWorkbook, hSSFCell.getCellStyle(), element, createBlock);
        createBlock.appendChild(createText);
        element.appendChild(createBlock);
        return AbstractExcelUtils.isEmpty(str) && isEmptyStyle;
    }

    public void processCellStyle(HSSFWorkbook hSSFWorkbook, HSSFCellStyle hSSFCellStyle, Element element, Element element2) {
        element2.setAttribute("white-space-collapse", "false");
        String align = AbstractExcelUtils.getAlign(hSSFCellStyle.getAlignment());
        if (AbstractExcelUtils.isNotEmpty(align)) {
            element2.setAttribute("text-align", align);
        }
        if (hSSFCellStyle.getFillPattern() != FillPatternType.NO_FILL) {
            if (hSSFCellStyle.getFillPattern() == FillPatternType.SOLID_FOREGROUND) {
                HSSFColor fillForegroundColorColor = hSSFCellStyle.getFillForegroundColorColor();
                if (fillForegroundColorColor != null) {
                    element.setAttribute(o6o.f79397g, AbstractExcelUtils.getColor(fillForegroundColorColor));
                }
            } else {
                HSSFColor fillBackgroundColorColor = hSSFCellStyle.getFillBackgroundColorColor();
                if (fillBackgroundColorColor != null) {
                    element.setAttribute(o6o.f79397g, AbstractExcelUtils.getColor(fillBackgroundColorColor));
                }
            }
        }
        processCellStyleBorder(hSSFWorkbook, element, OneDriverConstants.TOP, hSSFCellStyle.getBorderTop(), hSSFCellStyle.getTopBorderColor());
        processCellStyleBorder(hSSFWorkbook, element, gon.f71288n0, hSSFCellStyle.getBorderRight(), hSSFCellStyle.getRightBorderColor());
        processCellStyleBorder(hSSFWorkbook, element, "bottom", hSSFCellStyle.getBorderBottom(), hSSFCellStyle.getBottomBorderColor());
        processCellStyleBorder(hSSFWorkbook, element, "left", hSSFCellStyle.getBorderLeft(), hSSFCellStyle.getLeftBorderColor());
        processCellStyleFont(hSSFWorkbook, element2, hSSFCellStyle.getFont(hSSFWorkbook));
    }

    public void processCellStyleBorder(HSSFWorkbook hSSFWorkbook, Element element, String str, BorderStyle borderStyle, short s) {
        if (borderStyle == BorderStyle.NONE) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(AbstractExcelUtils.getBorderWidth(borderStyle));
        HSSFColor color = hSSFWorkbook.getCustomPalette().getColor(s);
        if (color != null) {
            sb.append(' ');
            sb.append(AbstractExcelUtils.getColor(color));
            sb.append(' ');
            sb.append(AbstractExcelUtils.getBorderStyle(borderStyle));
        }
        element.setAttribute("border-" + str, sb.toString());
    }

    public void processCellStyleFont(HSSFWorkbook hSSFWorkbook, Element element, HSSFFont hSSFFont) {
        FontReplacer.Triplet triplet = new FontReplacer.Triplet();
        triplet.fontName = hSSFFont.getFontName();
        triplet.bold = hSSFFont.getBold();
        triplet.italic = hSSFFont.getItalic();
        getFontReplacer().update(triplet);
        setBlockProperties(element, triplet);
        HSSFColor color = hSSFWorkbook.getCustomPalette().getColor(hSSFFont.getColor());
        if (color != null) {
            element.setAttribute("color", AbstractExcelUtils.getColor(color));
        }
        if (hSSFFont.getFontHeightInPoints() != 0) {
            element.setAttribute(o6o.f79400j, ((int) hSSFFont.getFontHeightInPoints()) + ExtUnits.UNIT_PT);
        }
    }

    public void processColumnHeaders(HSSFSheet hSSFSheet, int i, Element element) {
        Node createTableHeader = this.foDocumentFacade.createTableHeader();
        Node createTableRow = this.foDocumentFacade.createTableRow();
        if (isOutputRowNumbers()) {
            Node createTableCell = this.foDocumentFacade.createTableCell();
            createTableCell.appendChild(this.foDocumentFacade.createBlock());
            createTableRow.appendChild(createTableCell);
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (isOutputHiddenColumns() || !hSSFSheet.isColumnHidden(i2)) {
                Node createTableCell2 = this.foDocumentFacade.createTableCell();
                Element createBlock = this.foDocumentFacade.createBlock();
                createBlock.setAttribute("text-align", "center");
                createBlock.setAttribute(o6o.f79399i, "bold");
                createBlock.appendChild(this.foDocumentFacade.createText(getColumnName(i2)));
                createTableCell2.appendChild(createBlock);
                createTableRow.appendChild(createTableCell2);
            }
        }
        createTableHeader.appendChild(createTableRow);
        element.appendChild(createTableHeader);
    }

    public float processColumnWidths(HSSFSheet hSSFSheet, int i, Element element) {
        float f = 0.0f;
        if (isOutputRowNumbers()) {
            float defaultColumnWidth = AbstractExcelConverter.getDefaultColumnWidth(hSSFSheet) / 72.0f;
            Element createTableColumn = this.foDocumentFacade.createTableColumn();
            createTableColumn.setAttribute("column-width", defaultColumnWidth + "in");
            element.appendChild(createTableColumn);
            f = 0.0f + defaultColumnWidth;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (isOutputHiddenColumns() || !hSSFSheet.isColumnHidden(i2)) {
                float columnWidth = AbstractExcelConverter.getColumnWidth(hSSFSheet, i2) / 72.0f;
                Element createTableColumn2 = this.foDocumentFacade.createTableColumn();
                createTableColumn2.setAttribute("column-width", columnWidth + "in");
                element.appendChild(createTableColumn2);
                f += columnWidth;
            }
        }
        element.setAttribute("width", f + "in");
        return f;
    }

    public void processDocumentInformation(SummaryInformation summaryInformation) {
        if (AbstractExcelUtils.isNotEmpty(summaryInformation.getTitle())) {
            this.foDocumentFacade.setTitle(summaryInformation.getTitle());
        }
        if (AbstractExcelUtils.isNotEmpty(summaryInformation.getAuthor())) {
            this.foDocumentFacade.setCreator(summaryInformation.getAuthor());
        }
        if (AbstractExcelUtils.isNotEmpty(summaryInformation.getKeywords())) {
            this.foDocumentFacade.setKeywords(summaryInformation.getKeywords());
        }
        if (AbstractExcelUtils.isNotEmpty(summaryInformation.getComments())) {
            this.foDocumentFacade.setDescription(summaryInformation.getComments());
        }
    }

    public int processRow(HSSFWorkbook hSSFWorkbook, CellRangeAddress[][] cellRangeAddressArr, HSSFRow hSSFRow, Element element) {
        CellRangeAddress mergedRange;
        boolean z;
        Element element2;
        HSSFRow hSSFRow2 = hSSFRow;
        HSSFSheet sheet = hSSFRow.getSheet();
        short lastCellNum = hSSFRow.getLastCellNum();
        boolean z2 = false;
        if (lastCellNum <= 0) {
            return 0;
        }
        ArrayList arrayList = new ArrayList(lastCellNum);
        if (isOutputRowNumbers()) {
            arrayList.add(processRowNumber(hSSFRow2));
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            boolean z3 = true;
            if (i >= lastCellNum) {
                return i2 + 1;
            }
            if ((isOutputHiddenColumns() || !sheet.isColumnHidden(i)) && ((mergedRange = AbstractExcelUtils.getMergedRange(cellRangeAddressArr, hSSFRow.getRowNum(), i)) == null || (mergedRange.getFirstColumn() == i && mergedRange.getFirstRow() == hSSFRow.getRowNum()))) {
                HSSFCell cell = hSSFRow2.getCell(i);
                int columnWidth = AbstractExcelConverter.getColumnWidth(sheet, i);
                int i3 = i + 1;
                while (true) {
                    if (i3 >= lastCellNum) {
                        z = z2;
                        break;
                    }
                    if (isOutputHiddenColumns() || !sheet.isColumnHidden(i3)) {
                        if (hSSFRow2.getCell(i3) != null && !isTextEmpty(hSSFRow2.getCell(i3))) {
                            z = true;
                            break;
                        }
                        columnWidth += AbstractExcelConverter.getColumnWidth(sheet, i3);
                    }
                    i3++;
                }
                if (!z) {
                    columnWidth = Integer.MAX_VALUE;
                }
                int i4 = columnWidth;
                Element createTableCell = this.foDocumentFacade.createTableCell();
                if (mergedRange != null) {
                    if (mergedRange.getFirstColumn() != mergedRange.getLastColumn()) {
                        createTableCell.setAttribute("number-columns-spanned", String.valueOf((mergedRange.getLastColumn() - mergedRange.getFirstColumn()) + 1));
                    }
                    if (mergedRange.getFirstRow() != mergedRange.getLastRow()) {
                        createTableCell.setAttribute("number-rows-spanned", String.valueOf((mergedRange.getLastRow() - mergedRange.getFirstRow()) + 1));
                    }
                }
                if (cell != null) {
                    element2 = createTableCell;
                    z3 = processCell(hSSFWorkbook, cell, createTableCell, AbstractExcelConverter.getColumnWidth(sheet, i), i4, hSSFRow.getHeight() / 20.0f);
                } else {
                    element2 = createTableCell;
                    element2.appendChild(this.foDocumentFacade.createBlock());
                }
                if (z3) {
                    arrayList.add(element2);
                } else {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        element.appendChild((Element) it2.next());
                    }
                    arrayList.clear();
                    element.appendChild(element2);
                    i2 = i;
                }
            }
            i++;
            hSSFRow2 = hSSFRow;
            z2 = false;
        }
    }

    public Element processRowNumber(HSSFRow hSSFRow) {
        Element createTableCell = this.foDocumentFacade.createTableCell();
        Element createBlock = this.foDocumentFacade.createBlock();
        createBlock.setAttribute("text-align", gon.f71288n0);
        createBlock.setAttribute(o6o.f79399i, "bold");
        createBlock.appendChild(this.foDocumentFacade.createText(getRowName(hSSFRow)));
        createTableCell.appendChild(createBlock);
        return createTableCell;
    }

    public float processSheet(HSSFWorkbook hSSFWorkbook, HSSFSheet hSSFSheet, Element element) {
        int physicalNumberOfRows = hSSFSheet.getPhysicalNumberOfRows();
        if (physicalNumberOfRows <= 0) {
            return 0.0f;
        }
        processSheetName(hSSFSheet, element);
        Element createTable = this.foDocumentFacade.createTable();
        createTable.setAttribute("table-layout", "fixed");
        Node createTableBody = this.foDocumentFacade.createTableBody();
        CellRangeAddress[][] buildMergedRangesMap = AbstractExcelUtils.buildMergedRangesMap(hSSFSheet);
        ArrayList arrayList = new ArrayList(physicalNumberOfRows);
        int i = 1;
        for (int firstRowNum = hSSFSheet.getFirstRowNum(); firstRowNum <= hSSFSheet.getLastRowNum(); firstRowNum++) {
            HSSFRow row = hSSFSheet.getRow(firstRowNum);
            if (row != null && (isOutputHiddenRows() || !row.getZeroHeight())) {
                Element createTableRow = this.foDocumentFacade.createTableRow();
                createTableRow.setAttribute("height", (row.getHeight() / 20.0f) + ExtUnits.UNIT_PT);
                int processRow = processRow(hSSFWorkbook, buildMergedRangesMap, row, createTableRow);
                if (createTableRow.getChildNodes().getLength() == 0) {
                    Node createTableCell = this.foDocumentFacade.createTableCell();
                    createTableCell.appendChild(this.foDocumentFacade.createBlock());
                    createTableRow.appendChild(createTableCell);
                }
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
        float processColumnWidths = processColumnWidths(hSSFSheet, i, createTable);
        if (isOutputColumnHeaders()) {
            processColumnHeaders(hSSFSheet, i, createTable);
        }
        createTable.appendChild(createTableBody);
        element.appendChild(createTable);
        return processColumnWidths;
    }

    public void processSheetName(HSSFSheet hSSFSheet, Element element) {
        Element createBlock = this.foDocumentFacade.createBlock();
        FontReplacer.Triplet triplet = new FontReplacer.Triplet();
        triplet.bold = true;
        triplet.italic = false;
        triplet.fontName = HSSFFont.FONT_ARIAL;
        getFontReplacer().update(triplet);
        setBlockProperties(createBlock, triplet);
        createBlock.setAttribute(o6o.f79400j, "200%");
        Element createInline = this.foDocumentFacade.createInline();
        createInline.appendChild(this.foDocumentFacade.createText(hSSFSheet.getSheetName()));
        createBlock.appendChild(createInline);
        element.appendChild(createBlock);
        Element createBlock2 = this.foDocumentFacade.createBlock();
        createBlock2.appendChild(this.foDocumentFacade.createInline());
        element.appendChild(createBlock2);
    }

    public void processWorkbook(HSSFWorkbook hSSFWorkbook) {
        SummaryInformation summaryInformation = hSSFWorkbook.getSummaryInformation();
        if (summaryInformation != null) {
            processDocumentInformation(summaryInformation);
        }
        for (int i = 0; i < hSSFWorkbook.getNumberOfSheets(); i++) {
            processSheet(hSSFWorkbook, i);
        }
    }

    public void setPageMarginInches(float f) {
        this.pageMarginInches = f;
    }

    public ExcelToFoConverter(FoDocumentFacade foDocumentFacade) {
        this.foDocumentFacade = foDocumentFacade;
    }

    public boolean processSheet(HSSFWorkbook hSSFWorkbook, int i) {
        String str = "sheet-" + i;
        Element createPageSequence = this.foDocumentFacade.createPageSequence(str);
        float processSheet = processSheet(hSSFWorkbook, hSSFWorkbook.getSheetAt(i), this.foDocumentFacade.addFlowToPageSequence(createPageSequence, "xsl-region-body"));
        if (processSheet == 0.0f) {
            return false;
        }
        createPageMaster(processSheet, str);
        this.foDocumentFacade.addPageSequence(createPageSequence);
        return true;
    }
}
