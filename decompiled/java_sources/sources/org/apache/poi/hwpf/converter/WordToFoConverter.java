package org.apache.poi.hwpf.converter;

import com.sunia.HTREnginev2.o6o;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import javax.xml.parsers.DocumentBuilder;
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
import org.apache.poi.util.StringUtil;
import org.apache.poi.util.XMLHelper;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* loaded from: classes12.dex */
public class WordToFoConverter extends AbstractWordConverter {
    private static final Logger LOG = LogManager.getLogger((Class<?>) WordToFoConverter.class);
    protected final FoDocumentFacade foDocumentFacade;
    private boolean outputCharactersLanguage;
    private List<Element> endnotes = new ArrayList(0);
    private AtomicInteger internalLinkCounter = new AtomicInteger(0);
    private Set<String> usedIds = new LinkedHashSet();

    public WordToFoConverter(Document document) {
        this.foDocumentFacade = new FoDocumentFacade(document);
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr.length < 2) {
            System.err.println("Usage: WordToFoConverter <inputFile.doc> <saveTo.fo>");
            return;
        }
        System.out.println("Converting " + strArr[0]);
        System.out.println("Saving output to " + strArr[1]);
        XMLHelper.newTransformer().transform(new DOMSource(process(new File(strArr[0]))), new StreamResult(new File(strArr[1])));
    }

    public static Document process(File file) throws Exception {
        DocumentBuilder newDocumentBuilder = XMLHelper.newDocumentBuilder();
        HWPFDocumentCore loadDoc = AbstractWordUtils.loadDoc(file);
        try {
            WordToFoConverter wordToFoConverter = new WordToFoConverter(newDocumentBuilder.newDocument());
            wordToFoConverter.processDocument(loadDoc);
            Document document = wordToFoConverter.getDocument();
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

    public Element createNoteInline(String str) {
        Element createInline = this.foDocumentFacade.createInline();
        createInline.setTextContent(str);
        createInline.setAttribute("baseline-shift", "super");
        createInline.setAttribute(o6o.f79400j, "smaller");
        return createInline;
    }

    public String createPageMaster(Section section, String str, int i) {
        float marginRight = section.getMarginRight() / 1440.0f;
        float marginTop = section.getMarginTop() / 1440.0f;
        float marginBottom = section.getMarginBottom() / 1440.0f;
        String str2 = str + "-page" + i;
        Element addSimplePageMaster = this.foDocumentFacade.addSimplePageMaster(str2);
        addSimplePageMaster.setAttribute("page-height", (section.getPageHeight() / 1440.0f) + "in");
        addSimplePageMaster.setAttribute("page-width", (section.getPageWidth() / 1440.0f) + "in");
        Element addRegionBody = this.foDocumentFacade.addRegionBody(addSimplePageMaster);
        addRegionBody.setAttribute("margin", marginTop + "in " + marginRight + "in " + marginBottom + "in " + (section.getMarginLeft() / 1440.0f) + "in");
        if (section.getNumColumns() > 1) {
            addRegionBody.setAttribute("column-count", "" + section.getNumColumns());
            if (section.isColumnsEvenlySpaced()) {
                addRegionBody.setAttribute("column-gap", (section.getDistanceBetweenColumns() / 1440.0f) + "in");
            } else {
                addRegionBody.setAttribute("column-gap", "0.25in");
            }
        }
        return str2;
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public Document getDocument() {
        return this.foDocumentFacade.getDocument();
    }

    public boolean isOutputCharactersLanguage() {
        return this.outputCharactersLanguage;
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void outputCharacters(Element element, CharacterRun characterRun, String str) {
        Element createInline = this.foDocumentFacade.createInline();
        FontReplacer.Triplet characterRunTriplet = getCharacterRunTriplet(characterRun);
        if (AbstractWordUtils.isNotEmpty(characterRunTriplet.fontName)) {
            WordToFoUtils.setFontFamily(createInline, characterRunTriplet.fontName);
        }
        WordToFoUtils.setBold(createInline, characterRunTriplet.bold);
        WordToFoUtils.setItalic(createInline, characterRunTriplet.italic);
        WordToFoUtils.setFontSize(createInline, characterRun.getFontSize() / 2);
        WordToFoUtils.setCharactersProperties(characterRun, createInline);
        if (isOutputCharactersLanguage()) {
            WordToFoUtils.setLanguage(characterRun, createInline);
        }
        element.appendChild(createInline);
        createInline.appendChild(this.foDocumentFacade.createText(str));
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processBookmarks(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, List<Bookmark> list) {
        for (Bookmark bookmark : list) {
            Element createInline = this.foDocumentFacade.createInline();
            if (setId(createInline, "bookmark_" + bookmark.getName())) {
                element.appendChild(createInline);
                element = createInline;
            }
        }
        if (range != null) {
            processCharacters(hWPFDocumentCore, i, range, element);
        }
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processDocumentInformation(SummaryInformation summaryInformation) {
        if (AbstractWordUtils.isNotEmpty(summaryInformation.getTitle())) {
            this.foDocumentFacade.setTitle(summaryInformation.getTitle());
        }
        if (AbstractWordUtils.isNotEmpty(summaryInformation.getAuthor())) {
            this.foDocumentFacade.setCreator(summaryInformation.getAuthor());
        }
        if (AbstractWordUtils.isNotEmpty(summaryInformation.getKeywords())) {
            this.foDocumentFacade.setKeywords(summaryInformation.getKeywords());
        }
        if (AbstractWordUtils.isNotEmpty(summaryInformation.getComments())) {
            this.foDocumentFacade.setDescription(summaryInformation.getComments());
        }
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processDrawnObject(HWPFDocument hWPFDocument, CharacterRun characterRun, OfficeDrawing officeDrawing, String str, Element element) {
        element.appendChild(this.foDocumentFacade.createExternalGraphic(str));
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processEndnoteAutonumbered(HWPFDocument hWPFDocument, int i, Element element, Range range) {
        String valueOf = String.valueOf(this.internalLinkCounter.incrementAndGet());
        String str = "endnote_" + valueOf;
        String str2 = "endnote_back_" + valueOf;
        Element createBasicLinkInternal = this.foDocumentFacade.createBasicLinkInternal(str);
        createBasicLinkInternal.appendChild(createNoteInline(valueOf));
        setId(createBasicLinkInternal, str2);
        element.appendChild(createBasicLinkInternal);
        Element createBlock = this.foDocumentFacade.createBlock();
        Element createBasicLinkInternal2 = this.foDocumentFacade.createBasicLinkInternal(str2);
        createBasicLinkInternal2.appendChild(createNoteInline(valueOf + " "));
        setId(createBasicLinkInternal2, str);
        createBlock.appendChild(createBasicLinkInternal2);
        processCharacters(hWPFDocument, Integer.MIN_VALUE, range, createBlock);
        WordToFoUtils.compactInlines(createBlock);
        this.endnotes.add(createBlock);
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processFootnoteAutonumbered(HWPFDocument hWPFDocument, int i, Element element, Range range) {
        String valueOf = String.valueOf(this.internalLinkCounter.incrementAndGet());
        String str = "footnote_" + valueOf;
        String str2 = "footnote_back_" + valueOf;
        Element createFootnote = this.foDocumentFacade.createFootnote();
        element.appendChild(createFootnote);
        Element createInline = this.foDocumentFacade.createInline();
        Element createBasicLinkInternal = this.foDocumentFacade.createBasicLinkInternal(str);
        createBasicLinkInternal.appendChild(createNoteInline(valueOf));
        setId(createBasicLinkInternal, str2);
        createInline.appendChild(createBasicLinkInternal);
        createFootnote.appendChild(createInline);
        Element createFootnoteBody = this.foDocumentFacade.createFootnoteBody();
        Element createBlock = this.foDocumentFacade.createBlock();
        Element createBasicLinkInternal2 = this.foDocumentFacade.createBasicLinkInternal(str2);
        createBasicLinkInternal2.appendChild(createNoteInline(valueOf + " "));
        setId(createBasicLinkInternal2, str);
        createBlock.appendChild(createBasicLinkInternal2);
        createFootnoteBody.appendChild(createBlock);
        createFootnote.appendChild(createFootnoteBody);
        processCharacters(hWPFDocument, Integer.MIN_VALUE, range, createBlock);
        WordToFoUtils.compactInlines(createBlock);
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processHyperlink(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, String str) {
        Element createBasicLinkExternal = this.foDocumentFacade.createBasicLinkExternal(str);
        element.appendChild(createBasicLinkExternal);
        if (range != null) {
            processCharacters(hWPFDocumentCore, i, range, createBasicLinkExternal);
        }
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processImage(Element element, boolean z, Picture picture, String str) {
        Element createExternalGraphic = this.foDocumentFacade.createExternalGraphic(str);
        WordToFoUtils.setPictureProperties(picture, createExternalGraphic);
        element.appendChild(createExternalGraphic);
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processImageWithoutPicturesManager(Element element, boolean z, Picture picture) {
        element.appendChild(this.foDocumentFacade.getDocument().createComment("Image link to '" + picture.suggestFullFileName() + "' can be here"));
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processLineBreak(Element element, CharacterRun characterRun) {
        element.appendChild(this.foDocumentFacade.createBlock());
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0020, code lost:
    
        if (r3.hasAttribute("break-after") == false) goto L10;
     */
    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void processPageBreak(org.apache.poi.hwpf.HWPFDocumentCore r3, org.w3c.dom.Element r4) {
        /*
            r2 = this;
            org.w3c.dom.NodeList r3 = r4.getChildNodes()
            int r0 = r3.getLength()
            java.lang.String r1 = "break-after"
            if (r0 <= 0) goto L23
            int r0 = r3.getLength()
            int r0 = r0 + (-1)
            org.w3c.dom.Node r3 = r3.item(r0)
            boolean r0 = r3 instanceof org.w3c.dom.Element
            if (r0 == 0) goto L23
            org.w3c.dom.Element r3 = (org.w3c.dom.Element) r3
            boolean r0 = r3.hasAttribute(r1)
            if (r0 != 0) goto L23
            goto L24
        L23:
            r3 = 0
        L24:
            if (r3 != 0) goto L2f
            org.apache.poi.hwpf.converter.FoDocumentFacade r2 = r2.foDocumentFacade
            org.w3c.dom.Element r3 = r2.createBlock()
            r4.appendChild(r3)
        L2f:
            java.lang.String r2 = "page"
            r3.setAttribute(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hwpf.converter.WordToFoConverter.processPageBreak(org.apache.poi.hwpf.HWPFDocumentCore, org.w3c.dom.Element):void");
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processPageref(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, String str) {
        Element createBasicLinkInternal = this.foDocumentFacade.createBasicLinkInternal("bookmark_" + str);
        element.appendChild(createBasicLinkInternal);
        if (range != null) {
            processCharacters(hWPFDocumentCore, i, range, createBasicLinkInternal);
        }
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processParagraph(HWPFDocumentCore hWPFDocumentCore, Element element, int i, Paragraph paragraph, String str) {
        Element createBlock = this.foDocumentFacade.createBlock();
        element.appendChild(createBlock);
        WordToFoUtils.setParagraphProperties(paragraph, createBlock);
        if (paragraph.numCharacterRuns() == 0) {
            return;
        }
        if (AbstractWordUtils.isNotEmpty(str)) {
            Element createInline = this.foDocumentFacade.createInline();
            createBlock.appendChild(createInline);
            createInline.appendChild(this.foDocumentFacade.createText(str));
            StringUtil.isNotBlank(str);
        }
        if (!processCharacters(hWPFDocumentCore, i, paragraph, createBlock)) {
            createBlock.appendChild(this.foDocumentFacade.createLeader());
        }
        WordToFoUtils.compactInlines(createBlock);
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processSection(HWPFDocumentCore hWPFDocumentCore, Section section, int i) {
        Element addFlowToPageSequence = this.foDocumentFacade.addFlowToPageSequence(this.foDocumentFacade.addPageSequence(createPageMaster(section, "page", i)), "xsl-region-body");
        processParagraphes(hWPFDocumentCore, addFlowToPageSequence, section, Integer.MIN_VALUE);
        List<Element> list = this.endnotes;
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<Element> it2 = this.endnotes.iterator();
        while (it2.hasNext()) {
            addFlowToPageSequence.appendChild(it2.next());
        }
        this.endnotes.clear();
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processTable(HWPFDocumentCore hWPFDocumentCore, Element element, Table table) {
        int i;
        boolean z;
        Element element2;
        int i2;
        int i3;
        Element element3;
        TableRow tableRow;
        Table table2 = table;
        Element createTableHeader = this.foDocumentFacade.createTableHeader();
        Element createTableBody = this.foDocumentFacade.createTableBody();
        int[] buildTableCellEdgesArray = AbstractWordUtils.buildTableCellEdgesArray(table);
        int numRows = table.numRows();
        int i4 = Integer.MIN_VALUE;
        for (int i5 = 0; i5 < numRows; i5++) {
            i4 = Math.max(i4, table2.getRow(i5).numCells());
        }
        int i6 = 0;
        while (i6 < numRows) {
            TableRow row = table2.getRow(i6);
            Element createTableRow = this.foDocumentFacade.createTableRow();
            WordToFoUtils.setTableRowProperties(row, createTableRow);
            int numCells = row.numCells();
            int i7 = 0;
            int i8 = 0;
            while (i8 < numCells) {
                TableCell cell = row.getCell(i8);
                if (!cell.isVerticallyMerged() || cell.isFirstVerticallyMerged()) {
                    Element createTableCell = this.foDocumentFacade.createTableCell();
                    boolean z2 = i6 == 0;
                    boolean z3 = i6 == numRows + (-1);
                    boolean z4 = i8 == 0;
                    if (i8 == numCells - 1) {
                        i = 1;
                        z = true;
                    } else {
                        i = 1;
                        z = false;
                    }
                    WordToFoUtils.setTableCellProperties(row, cell, createTableCell, z2, z3, z4, z);
                    int numberColumnsSpanned = getNumberColumnsSpanned(buildTableCellEdgesArray, i7, cell);
                    int i9 = i7 + numberColumnsSpanned;
                    if (numberColumnsSpanned == 0) {
                        i2 = i8;
                        i3 = numCells;
                        element3 = createTableRow;
                        tableRow = row;
                    } else {
                        if (numberColumnsSpanned != i) {
                            element2 = createTableCell;
                            element2.setAttribute("number-columns-spanned", String.valueOf(numberColumnsSpanned));
                        } else {
                            element2 = createTableCell;
                        }
                        i2 = i8;
                        i3 = numCells;
                        element3 = createTableRow;
                        tableRow = row;
                        int numberRowsSpanned = getNumberRowsSpanned(table, buildTableCellEdgesArray, i6, i2, cell);
                        if (numberRowsSpanned > 1) {
                            element2.setAttribute("number-rows-spanned", String.valueOf(numberRowsSpanned));
                        }
                        processParagraphes(hWPFDocumentCore, element2, cell, table.getTableLevel());
                        if (!element2.hasChildNodes()) {
                            element2.appendChild(this.foDocumentFacade.createBlock());
                        }
                        element3.appendChild(element2);
                    }
                    i7 = i9;
                } else {
                    i7 += getNumberColumnsSpanned(buildTableCellEdgesArray, i7, cell);
                    i2 = i8;
                    i3 = numCells;
                    element3 = createTableRow;
                    tableRow = row;
                }
                i8 = i2 + 1;
                createTableRow = element3;
                numCells = i3;
                row = tableRow;
            }
            Element element4 = createTableRow;
            TableRow tableRow2 = row;
            if (element4.hasChildNodes()) {
                if (tableRow2.isTableHeader()) {
                    createTableHeader.appendChild(element4);
                } else {
                    createTableBody.appendChild(element4);
                }
            }
            i6++;
            table2 = table;
        }
        Element createTable = this.foDocumentFacade.createTable();
        createTable.setAttribute("table-layout", "fixed");
        if (createTableHeader.hasChildNodes()) {
            createTable.appendChild(createTableHeader);
        }
        if (!createTableBody.hasChildNodes()) {
            LOG.atWarn().log("Table without body starting on offset {} -- {}", Unbox.box(table.getStartOffset()), Unbox.box(table.getEndOffset()));
        } else {
            createTable.appendChild(createTableBody);
            element.appendChild(createTable);
        }
    }

    public boolean setId(Element element, String str) {
        if (this.usedIds.contains(str)) {
            LOG.atWarn().log("Tried to create element with same ID '{}'. Skipped", str);
            return false;
        }
        element.setAttribute("id", str);
        this.usedIds.add(str);
        return true;
    }

    public void setOutputCharactersLanguage(boolean z) {
        this.outputCharactersLanguage = z;
    }

    public WordToFoConverter(FoDocumentFacade foDocumentFacade) {
        this.foDocumentFacade = foDocumentFacade;
    }
}
