package org.apache.poi.hwpf.converter;

import com.onegravity.rteditor.utils.Constants;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sunia.HTREnginev2.gon;
import java.io.File;
import java.io.IOException;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hpsf.SummaryInformation;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.HWPFDocumentCore;
import org.apache.poi.hwpf.converter.FontReplacer;
import org.apache.poi.hwpf.usermodel.Bookmark;
import org.apache.poi.hwpf.usermodel.CharacterRun;
import org.apache.poi.hwpf.usermodel.OfficeDrawing;
import org.apache.poi.hwpf.usermodel.Paragraph;
import org.apache.poi.hwpf.usermodel.Picture;
import org.apache.poi.hwpf.usermodel.Range;
import org.apache.poi.hwpf.usermodel.Section;
import org.apache.poi.hwpf.usermodel.Table;
import org.apache.poi.hwpf.usermodel.TableCell;
import org.apache.poi.hwpf.usermodel.TableRow;
import org.apache.poi.util.XMLHelper;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* loaded from: classes12.dex */
public class WordToHtmlConverter extends AbstractWordConverter {
    private static final Logger LOG = LogManager.getLogger((Class<?>) WordToHtmlConverter.class);
    private final Deque<BlockProperies> blocksProperies = new LinkedList();
    private final HtmlDocumentFacade htmlDocumentFacade;
    private Element notes;

    /* loaded from: classes12.dex */
    public static class BlockProperies {
        final String pFontName;
        final int pFontSize;

        public BlockProperies(String str, int i) {
            this.pFontName = str;
            this.pFontSize = i;
        }
    }

    public WordToHtmlConverter(Document document) {
        this.htmlDocumentFacade = new HtmlDocumentFacade(document);
    }

    private static String getSectionStyle(Section section) {
        float marginRight = section.getMarginRight() / 1440.0f;
        float marginTop = section.getMarginTop() / 1440.0f;
        float marginBottom = section.getMarginBottom() / 1440.0f;
        String str = "margin: " + marginTop + "in " + marginRight + "in " + marginBottom + "in " + (section.getMarginLeft() / 1440.0f) + "in;";
        if (section.getNumColumns() <= 1) {
            return str;
        }
        String str2 = str + "column-count: " + section.getNumColumns() + AndroidTreeView.f47214k;
        if (!section.isColumnsEvenlySpaced()) {
            return str2 + "column-gap: 0.25in;";
        }
        return str2 + "column-gap: " + (section.getDistanceBetweenColumns() / 1440.0f) + "in;";
    }

    public static void main(String[] strArr) throws IOException, ParserConfigurationException, TransformerException {
        if (strArr.length < 2) {
            System.err.println("Usage: WordToHtmlConverter <inputFile.doc> <saveTo.html>");
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
        DocumentBuilder newDocumentBuilder = XMLHelper.newDocumentBuilder();
        HWPFDocumentCore loadDoc = AbstractWordUtils.loadDoc(file);
        try {
            WordToHtmlConverter wordToHtmlConverter = new WordToHtmlConverter(newDocumentBuilder.newDocument());
            wordToHtmlConverter.processDocument(loadDoc);
            Document document = wordToHtmlConverter.getDocument();
            if (loadDoc != null) {
                loadDoc.close();
            }
            return document;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (loadDoc != null) {
                    try {
                        loadDoc.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void afterProcess() {
        if (this.notes != null) {
            this.htmlDocumentFacade.getBody().appendChild(this.notes);
        }
        this.htmlDocumentFacade.updateStylesheet();
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public Document getDocument() {
        return this.htmlDocumentFacade.getDocument();
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void outputCharacters(Element element, CharacterRun characterRun, String str) {
        Element createElement = this.htmlDocumentFacade.getDocument().createElement(gon.f71297s);
        element.appendChild(createElement);
        StringBuilder sb = new StringBuilder();
        BlockProperies peek = this.blocksProperies.peek();
        FontReplacer.Triplet characterRunTriplet = getCharacterRunTriplet(characterRun);
        if (AbstractWordUtils.isNotEmpty(characterRunTriplet.fontName) && !Objects.equals(characterRunTriplet.fontName, peek.pFontName)) {
            sb.append("font-family:");
            sb.append(characterRunTriplet.fontName);
            sb.append(AndroidTreeView.f47214k);
        }
        if (characterRun.getFontSize() / 2 != peek.pFontSize) {
            sb.append("font-size:");
            sb.append(characterRun.getFontSize() / 2);
            sb.append("pt;");
        }
        if (characterRunTriplet.bold) {
            sb.append("font-weight:bold;");
        }
        if (characterRunTriplet.italic) {
            sb.append("font-style:italic;");
        }
        WordToHtmlUtils.addCharactersProperties(characterRun, sb);
        if (sb.length() != 0) {
            this.htmlDocumentFacade.addStyleClass(createElement, "s", sb.toString());
        }
        createElement.appendChild(this.htmlDocumentFacade.createText(str));
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processBookmarks(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, List<Bookmark> list) {
        Iterator<Bookmark> it2 = list.iterator();
        while (it2.hasNext()) {
            Element createBookmark = this.htmlDocumentFacade.createBookmark(it2.next().getName());
            element.appendChild(createBookmark);
            element = createBookmark;
        }
        if (range != null) {
            processCharacters(hWPFDocumentCore, i, range, element);
        }
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processDocumentInformation(SummaryInformation summaryInformation) {
        if (AbstractWordUtils.isNotEmpty(summaryInformation.getTitle())) {
            this.htmlDocumentFacade.setTitle(summaryInformation.getTitle());
        }
        if (AbstractWordUtils.isNotEmpty(summaryInformation.getAuthor())) {
            this.htmlDocumentFacade.addAuthor(summaryInformation.getAuthor());
        }
        if (AbstractWordUtils.isNotEmpty(summaryInformation.getKeywords())) {
            this.htmlDocumentFacade.addKeywords(summaryInformation.getKeywords());
        }
        if (AbstractWordUtils.isNotEmpty(summaryInformation.getComments())) {
            this.htmlDocumentFacade.addDescription(summaryInformation.getComments());
        }
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processDocumentPart(HWPFDocumentCore hWPFDocumentCore, Range range) {
        super.processDocumentPart(hWPFDocumentCore, range);
        afterProcess();
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processDrawnObject(HWPFDocument hWPFDocument, CharacterRun characterRun, OfficeDrawing officeDrawing, String str, Element element) {
        element.appendChild(this.htmlDocumentFacade.createImage(str));
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processDropDownList(Element element, CharacterRun characterRun, String[] strArr, int i) {
        Element createSelect = this.htmlDocumentFacade.createSelect();
        int i2 = 0;
        while (i2 < strArr.length) {
            createSelect.appendChild(this.htmlDocumentFacade.createOption(strArr[i2], i == i2));
            i2++;
        }
        element.appendChild(createSelect);
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processEndnoteAutonumbered(HWPFDocument hWPFDocument, int i, Element element, Range range) {
        processNoteAutonumbered(hWPFDocument, "end", i, element, range);
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processFootnoteAutonumbered(HWPFDocument hWPFDocument, int i, Element element, Range range) {
        processNoteAutonumbered(hWPFDocument, "foot", i, element, range);
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processHyperlink(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, String str) {
        Element createHyperlink = this.htmlDocumentFacade.createHyperlink(str);
        element.appendChild(createHyperlink);
        if (range != null) {
            processCharacters(hWPFDocumentCore, i, range, createHyperlink);
        }
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processImage(Element element, boolean z, Picture picture, String str) {
        float dxaGoal;
        float dxaCropRight;
        float dxaCropLeft;
        float dyaGoal;
        float dyaCropTop;
        float dyaCropBottom;
        Element element2;
        int horizontalScalingFactor = picture.getHorizontalScalingFactor();
        int verticalScalingFactor = picture.getVerticalScalingFactor();
        if (horizontalScalingFactor > 0) {
            float f = horizontalScalingFactor / 1000.0f;
            dxaGoal = (picture.getDxaGoal() * f) / 1440.0f;
            dxaCropRight = (picture.getDxaCropRight() * f) / 1440.0f;
            dxaCropLeft = f * picture.getDxaCropLeft();
        } else {
            dxaGoal = picture.getDxaGoal() / 1440.0f;
            dxaCropRight = picture.getDxaCropRight() / 1440.0f;
            dxaCropLeft = picture.getDxaCropLeft();
        }
        float f2 = dxaCropLeft / 1440.0f;
        if (verticalScalingFactor > 0) {
            float f3 = verticalScalingFactor / 1000.0f;
            dyaGoal = (picture.getDyaGoal() * f3) / 1440.0f;
            dyaCropTop = (picture.getDyaCropTop() * f3) / 1440.0f;
            dyaCropBottom = f3 * picture.getDyaCropBottom();
        } else {
            dyaGoal = picture.getDyaGoal() / 1440.0f;
            dyaCropTop = picture.getDyaCropTop() / 1440.0f;
            dyaCropBottom = picture.getDyaCropBottom();
        }
        float f4 = dyaCropBottom / 1440.0f;
        if (Math.abs(dyaCropTop) + Math.abs(dxaCropRight) + Math.abs(f4) + Math.abs(f2) > 0.0f) {
            float max = Math.max(0.0f, (dxaGoal - f2) - dxaCropRight);
            float max2 = Math.max(0.0f, (dyaGoal - dyaCropTop) - f4);
            Element createBlock = this.htmlDocumentFacade.createBlock();
            this.htmlDocumentFacade.addStyleClass(createBlock, "d", "vertical-align:text-bottom;width:" + max + "in;height:" + max2 + "in;");
            Element createBlock2 = this.htmlDocumentFacade.createBlock();
            this.htmlDocumentFacade.addStyleClass(createBlock2, "d", "position:relative;width:" + max + "in;height:" + max2 + "in;overflow:hidden;");
            createBlock.appendChild(createBlock2);
            Element createImage = this.htmlDocumentFacade.createImage(str);
            this.htmlDocumentFacade.addStyleClass(createImage, "i", "position:absolute;left:-" + f2 + ";top:-" + dyaCropTop + ";width:" + dxaGoal + "in;height:" + dyaGoal + "in;");
            createBlock2.appendChild(createImage);
            element2 = createBlock;
        } else {
            Element createImage2 = this.htmlDocumentFacade.createImage(str);
            createImage2.setAttribute("style", "width:" + dxaGoal + "in;height:" + dyaGoal + "in;vertical-align:text-bottom;");
            element2 = createImage2;
        }
        element.appendChild(element2);
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processImageWithoutPicturesManager(Element element, boolean z, Picture picture) {
        element.appendChild(this.htmlDocumentFacade.getDocument().createComment("Image link to '" + picture.suggestFullFileName() + "' can be here"));
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processLineBreak(Element element, CharacterRun characterRun) {
        element.appendChild(this.htmlDocumentFacade.createLineBreak());
    }

    public void processNoteAutonumbered(HWPFDocument hWPFDocument, String str, int i, Element element, Range range) {
        String valueOf = String.valueOf(i + 1);
        String orCreateCssClass = this.htmlDocumentFacade.getOrCreateCssClass("a", "vertical-align:super;font-size:smaller;");
        String str2 = str + "note_" + valueOf;
        String str3 = str + "note_back_" + valueOf;
        Element createHyperlink = this.htmlDocumentFacade.createHyperlink("#" + str2);
        createHyperlink.setAttribute("name", str3);
        createHyperlink.setAttribute("class", orCreateCssClass + " " + str + "noteanchor");
        createHyperlink.setTextContent(valueOf);
        element.appendChild(createHyperlink);
        if (this.notes == null) {
            Element createBlock = this.htmlDocumentFacade.createBlock();
            this.notes = createBlock;
            createBlock.setAttribute("class", "notes");
        }
        Element createBlock2 = this.htmlDocumentFacade.createBlock();
        createBlock2.setAttribute("class", str + "note");
        this.notes.appendChild(createBlock2);
        Element createBookmark = this.htmlDocumentFacade.createBookmark(str2);
        createBookmark.setAttribute("href", "#" + str3);
        createBookmark.setTextContent(valueOf);
        createBookmark.setAttribute("class", orCreateCssClass + " " + str + "noteindex");
        createBlock2.appendChild(createBookmark);
        createBlock2.appendChild(this.htmlDocumentFacade.createText(" "));
        Element createElement = this.htmlDocumentFacade.getDocument().createElement(gon.f71297s);
        createElement.setAttribute("class", str + "notetext");
        createBlock2.appendChild(createElement);
        this.blocksProperies.add(new BlockProperies("", -1));
        try {
            processCharacters(hWPFDocument, Integer.MIN_VALUE, range, createElement);
        } finally {
            this.blocksProperies.pop();
        }
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processPageBreak(HWPFDocumentCore hWPFDocumentCore, Element element) {
        element.appendChild(this.htmlDocumentFacade.createLineBreak());
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processPageref(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, String str) {
        Element createHyperlink = this.htmlDocumentFacade.createHyperlink("#" + str);
        element.appendChild(createHyperlink);
        if (range != null) {
            processCharacters(hWPFDocumentCore, i, range, createHyperlink);
        }
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processParagraph(HWPFDocumentCore hWPFDocumentCore, Element element, int i, Paragraph paragraph, String str) {
        int i2;
        String str2;
        Element createParagraph = this.htmlDocumentFacade.createParagraph();
        element.appendChild(createParagraph);
        StringBuilder sb = new StringBuilder();
        WordToHtmlUtils.addParagraphProperties(paragraph, sb);
        if (paragraph.numCharacterRuns() == 0) {
            return;
        }
        CharacterRun characterRun = paragraph.getCharacterRun(0);
        if (characterRun != null) {
            FontReplacer.Triplet characterRunTriplet = getCharacterRunTriplet(characterRun);
            i2 = characterRun.getFontSize() / 2;
            str2 = characterRunTriplet.fontName;
            WordToHtmlUtils.addFontFamily(str2, sb);
            WordToHtmlUtils.addFontSize(i2, sb);
        } else {
            i2 = -1;
            str2 = "";
        }
        this.blocksProperies.push(new BlockProperies(str2, i2));
        try {
            if (AbstractWordUtils.isNotEmpty(str)) {
                if (str.endsWith("\t")) {
                    float ceil = ((float) (Math.ceil(r2 / 720.0f) * 720.0d)) - ((paragraph.getIndentFromLeft() + paragraph.getFirstLineIndent()) + 20.0f);
                    Element createElement = this.htmlDocumentFacade.getDocument().createElement(gon.f71297s);
                    this.htmlDocumentFacade.addStyleClass(createElement, "s", "display: inline-block; text-indent: 0; min-width: " + (ceil / 1440.0f) + "in;");
                    createParagraph.appendChild(createElement);
                    createElement.appendChild(this.htmlDocumentFacade.createText(str.substring(0, str.length() + (-1)) + Constants.CH_ZWSP + (char) 160));
                } else {
                    createParagraph.appendChild(this.htmlDocumentFacade.createText(str.substring(0, str.length() - 1)));
                }
            }
            processCharacters(hWPFDocumentCore, i, paragraph, createParagraph);
            this.blocksProperies.pop();
            if (sb.length() > 0) {
                this.htmlDocumentFacade.addStyleClass(createParagraph, "p", sb.toString());
            }
            WordToHtmlUtils.compactSpans(createParagraph);
        } catch (Throwable th) {
            this.blocksProperies.pop();
            throw th;
        }
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processSection(HWPFDocumentCore hWPFDocumentCore, Section section, int i) {
        Element createBlock = this.htmlDocumentFacade.createBlock();
        this.htmlDocumentFacade.addStyleClass(createBlock, "d", getSectionStyle(section));
        this.htmlDocumentFacade.getBody().appendChild(createBlock);
        processParagraphes(hWPFDocumentCore, createBlock, section, Integer.MIN_VALUE);
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processSingleSection(HWPFDocumentCore hWPFDocumentCore, Section section) {
        HtmlDocumentFacade htmlDocumentFacade = this.htmlDocumentFacade;
        htmlDocumentFacade.addStyleClass(htmlDocumentFacade.getBody(), "b", getSectionStyle(section));
        processParagraphes(hWPFDocumentCore, this.htmlDocumentFacade.getBody(), section, Integer.MIN_VALUE);
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processTable(HWPFDocumentCore hWPFDocumentCore, Element element, Table table) {
        TableCell tableCell;
        boolean z;
        int i;
        int i2;
        StringBuilder sb;
        int[] iArr;
        Element element2;
        TableRow tableRow;
        Table table2 = table;
        Element createTableHeader = this.htmlDocumentFacade.createTableHeader();
        Element createTableBody = this.htmlDocumentFacade.createTableBody();
        int[] buildTableCellEdgesArray = AbstractWordUtils.buildTableCellEdgesArray(table);
        int numRows = table.numRows();
        int i3 = Integer.MIN_VALUE;
        for (int i4 = 0; i4 < numRows; i4++) {
            i3 = Math.max(i3, table2.getRow(i4).numCells());
        }
        int i5 = 0;
        while (i5 < numRows) {
            TableRow row = table2.getRow(i5);
            Element createTableRow = this.htmlDocumentFacade.createTableRow();
            StringBuilder sb2 = new StringBuilder();
            WordToHtmlUtils.addTableRowProperties(row, sb2);
            int numCells = row.numCells();
            int i6 = 0;
            int i7 = 0;
            while (i7 < numCells) {
                TableCell cell = row.getCell(i7);
                if (!cell.isVerticallyMerged() || cell.isFirstVerticallyMerged()) {
                    Element createTableHeaderCell = row.isTableHeader() ? this.htmlDocumentFacade.createTableHeaderCell() : this.htmlDocumentFacade.createTableCell();
                    StringBuilder sb3 = new StringBuilder();
                    boolean z2 = i5 == 0;
                    boolean z3 = i5 == numRows + (-1);
                    boolean z4 = i7 == 0;
                    if (i7 == numCells - 1) {
                        tableCell = cell;
                        z = true;
                    } else {
                        tableCell = cell;
                        z = false;
                    }
                    WordToHtmlUtils.addTableCellProperties(row, tableCell, z2, z3, z4, z, sb3);
                    int numberColumnsSpanned = getNumberColumnsSpanned(buildTableCellEdgesArray, i6, tableCell);
                    int i8 = i6 + numberColumnsSpanned;
                    if (numberColumnsSpanned == 0) {
                        i = i7;
                        i2 = numCells;
                        sb = sb2;
                        tableRow = row;
                        iArr = buildTableCellEdgesArray;
                        element2 = createTableRow;
                    } else {
                        if (numberColumnsSpanned != 1) {
                            createTableHeaderCell.setAttribute("colspan", String.valueOf(numberColumnsSpanned));
                        }
                        i = i7;
                        i2 = numCells;
                        sb = sb2;
                        iArr = buildTableCellEdgesArray;
                        element2 = createTableRow;
                        tableRow = row;
                        int numberRowsSpanned = getNumberRowsSpanned(table, buildTableCellEdgesArray, i5, i, tableCell);
                        if (numberRowsSpanned > 1) {
                            createTableHeaderCell.setAttribute("rowspan", String.valueOf(numberRowsSpanned));
                        }
                        processParagraphes(hWPFDocumentCore, createTableHeaderCell, tableCell, table.getTableLevel());
                        if (!createTableHeaderCell.hasChildNodes()) {
                            createTableHeaderCell.appendChild(this.htmlDocumentFacade.createParagraph());
                        }
                        if (sb3.length() > 0) {
                            this.htmlDocumentFacade.addStyleClass(createTableHeaderCell, createTableHeaderCell.getTagName(), sb3.toString());
                        }
                        element2.appendChild(createTableHeaderCell);
                    }
                    i6 = i8;
                } else {
                    i6 += getNumberColumnsSpanned(buildTableCellEdgesArray, i6, cell);
                    i = i7;
                    i2 = numCells;
                    sb = sb2;
                    tableRow = row;
                    iArr = buildTableCellEdgesArray;
                    element2 = createTableRow;
                }
                i7 = i + 1;
                createTableRow = element2;
                numCells = i2;
                sb2 = sb;
                buildTableCellEdgesArray = iArr;
                row = tableRow;
            }
            StringBuilder sb4 = sb2;
            TableRow tableRow2 = row;
            int[] iArr2 = buildTableCellEdgesArray;
            Element element3 = createTableRow;
            if (sb4.length() > 0) {
                element3.setAttribute("class", this.htmlDocumentFacade.getOrCreateCssClass("r", sb4.toString()));
            }
            if (tableRow2.isTableHeader()) {
                createTableHeader.appendChild(element3);
            } else {
                createTableBody.appendChild(element3);
            }
            i5++;
            table2 = table;
            buildTableCellEdgesArray = iArr2;
        }
        Element createTable = this.htmlDocumentFacade.createTable();
        createTable.setAttribute("class", this.htmlDocumentFacade.getOrCreateCssClass("t", "table-layout:fixed;border-collapse:collapse;border-spacing:0;"));
        if (createTableHeader.hasChildNodes()) {
            createTable.appendChild(createTableHeader);
        }
        if (!createTableBody.hasChildNodes()) {
            LOG.atWarn().log("Table without body starting at [{}; {})", Unbox.box(table.getStartOffset()), Unbox.box(table.getEndOffset()));
        } else {
            createTable.appendChild(createTableBody);
            element.appendChild(createTable);
        }
    }

    public WordToHtmlConverter(HtmlDocumentFacade htmlDocumentFacade) {
        this.htmlDocumentFacade = htmlDocumentFacade;
    }
}
