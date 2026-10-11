package org.apache.poi.convert.hwpf;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.awt.geom.Rectangle2D;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.convert.AbstractConverter;
import org.apache.poi.convert.BodyElementType;
import org.apache.poi.convert.TocUtils;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.hpsf.SummaryInformation;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.HWPFDocumentCore;
import org.apache.poi.hwpf.converter.FontReplacer;
import org.apache.poi.hwpf.usermodel.Bookmark;
import org.apache.poi.hwpf.usermodel.CharacterRun;
import org.apache.poi.hwpf.usermodel.HWPFDrawing;
import org.apache.poi.hwpf.usermodel.OfficeDrawing;
import org.apache.poi.hwpf.usermodel.Paragraph;
import org.apache.poi.hwpf.usermodel.Picture;
import org.apache.poi.hwpf.usermodel.Range;
import org.apache.poi.hwpf.usermodel.Section;
import org.apache.poi.hwpf.usermodel.Table;
import org.apache.poi.hwpf.usermodel.TableCell;
import org.apache.poi.hwpf.usermodel.TableRow;
import org.apache.poi.util.ExtUnits;
import org.jsoup.nodes.Element;

/* loaded from: classes12.dex */
public class HWPFWordToHtmlConverter extends AbstractHWPFWordConverter {
    private final Deque<BlockProperties> blocksProperties;
    private Element notes;

    /* loaded from: classes12.dex */
    public static class BlockProperties {
        final String pFontName;
        final int pFontSize;

        public BlockProperties(String str, int i) {
            this.pFontName = str;
            this.pFontSize = i;
        }
    }

    public HWPFWordToHtmlConverter(HWPFDocumentCore hWPFDocumentCore) {
        super(hWPFDocumentCore);
        this.blocksProperties = new LinkedList();
    }

    private void setPElementTocAttr(Paragraph paragraph, Element element) {
        if (TocUtils.setPElementTocAttr(element, Integer.valueOf(paragraph.getLvl()), this.tocIndex)) {
            this.tocIndex++;
        }
    }

    @Override // org.apache.poi.convert.hwpf.AbstractHWPFWordConverter
    public void afterProcess(HWPFDocumentCore hWPFDocumentCore) {
        if (this.notes != null) {
            Element createBlock = ((AbstractHWPFWordConverter) this).documentFacade.createBlock();
            ((AbstractHWPFWordConverter) this).documentFacade.getBody().appendChild(createBlock);
            createBlock.appendChild(this.notes);
        }
        compactDocument();
        this.numberingState.clear();
        this.bookmarkStack.clear();
        reconstructDocumentLink();
        addHtmlDocumentStyle(((AbstractHWPFWordConverter) this).documentFacade.buildStylesheet());
    }

    @Override // org.apache.poi.convert.hwpf.AbstractHWPFWordConverter
    public void outputCharacters(Element element, CharacterRun characterRun, String str) {
        if (AbstractHWPFWordConverter.PATTERN_TOC.matcher(str).matches()) {
            return;
        }
        Element createSpan = ((AbstractHWPFWordConverter) this).documentFacade.createSpan();
        element.appendChild(createSpan);
        StringBuilder sb = new StringBuilder();
        BlockProperties peek = this.blocksProperties.peek();
        FontReplacer.Triplet characterRunTriplet = getCharacterRunTriplet(characterRun);
        if (WordToHtmlUtils.isNotEmpty(characterRunTriplet.fontName) && !Objects.equals(characterRunTriplet.fontName, peek.pFontName)) {
            sb.append("font-family:");
            sb.append(characterRunTriplet.fontName);
            sb.append(AndroidTreeView.f47214k);
        }
        if (characterRun.getFontSize() / 2 != peek.pFontSize) {
            sb.append("font-size:");
            sb.append(characterRun.getFontSize() / 2.0d);
            sb.append(AbstractConverter.getFontUnit());
            sb.append(';');
        }
        if (characterRunTriplet.bold) {
            sb.append("font-weight:bold;");
        }
        if (characterRunTriplet.italic) {
            sb.append("font-style:italic;");
        }
        HWPFWordToHtmlUtils.addCharactersProperties(characterRun, sb);
        if (sb.length() != 0) {
            ((AbstractHWPFWordConverter) this).documentFacade.addStyleClass(createSpan, "s", sb.toString());
        }
        createSpan.appendChild(((AbstractHWPFWordConverter) this).documentFacade.createText(str));
    }

    @Override // org.apache.poi.convert.hwpf.AbstractHWPFWordConverter
    public void processBookmarks(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, List<Bookmark> list) {
        Iterator<Bookmark> it2 = list.iterator();
        while (it2.hasNext()) {
            Element createBookmark = ((AbstractHWPFWordConverter) this).documentFacade.createBookmark(it2.next().getName());
            element.appendChild(createBookmark);
            element = createBookmark;
        }
        if (range != null) {
            processCharacters(hWPFDocumentCore, i, range, element);
        }
    }

    @Override // org.apache.poi.convert.hwpf.AbstractHWPFWordConverter
    public void processDocumentInformation(SummaryInformation summaryInformation) {
        if (WordToHtmlUtils.isNotEmpty(summaryInformation.getTitle())) {
            ((AbstractHWPFWordConverter) this).documentFacade.setTitle(summaryInformation.getTitle());
        }
        if (WordToHtmlUtils.isNotEmpty(summaryInformation.getAuthor())) {
            ((AbstractHWPFWordConverter) this).documentFacade.addAuthor(summaryInformation.getAuthor());
        }
        if (WordToHtmlUtils.isNotEmpty(summaryInformation.getKeywords())) {
            ((AbstractHWPFWordConverter) this).documentFacade.addKeywords(summaryInformation.getKeywords());
        }
        if (WordToHtmlUtils.isNotEmpty(summaryInformation.getComments())) {
            ((AbstractHWPFWordConverter) this).documentFacade.addDescription(summaryInformation.getComments());
        }
    }

    @Override // org.apache.poi.convert.hwpf.AbstractHWPFWordConverter
    public void processDocumentPart(HWPFDocumentCore hWPFDocumentCore, Range range) {
        super.processDocumentPart(hWPFDocumentCore, range);
    }

    @Override // org.apache.poi.convert.hwpf.AbstractHWPFWordConverter
    public void processDrawnObject(HWPFDocument hWPFDocument, CharacterRun characterRun, OfficeDrawing officeDrawing, Element element) {
        HWPFDrawing hWPFDrawing = new HWPFDrawing(officeDrawing, characterRun.getStartOffset());
        String processPicture = getPicturesManager().processPicture(hWPFDrawing);
        if (WordToHtmlUtils.isEmpty(processPicture)) {
            element.appendChild(((AbstractHWPFWordConverter) this).documentFacade.createComment("Image link to 's" + characterRun.getStartOffset() + "' can be here"));
            return;
        }
        Element createImage = ((AbstractHWPFWordConverter) this).documentFacade.createImage(processPicture);
        StringBuilder sb = new StringBuilder();
        Rectangle2D anchor = hWPFDrawing.getAnchor();
        if (anchor.getX() >= this.pageSize.getWidth() / 2.0d) {
            sb.append("float:right;");
        } else if (anchor.getX() > 0.0d) {
            sb.append("float:left;");
        }
        if (anchor.getWidth() < 300.0d && anchor.getHeight() <= 400.0d) {
            createImage.attr("style", "width:" + ExtUnits.format(anchor.getWidth()) + "px;height:" + ExtUnits.format(anchor.getHeight()) + "px;");
        }
        if (anchor.getHeight() <= 32.0d) {
            sb.append("vertical-align:middle;");
        } else {
            sb.append("vertical-align:text-bottom;");
        }
        ((AbstractHWPFWordConverter) this).documentFacade.addStyleClass(createImage, "img", sb.toString());
        element.appendChild(createImage);
    }

    @Override // org.apache.poi.convert.hwpf.AbstractHWPFWordConverter
    public void processDropDownList(Element element, CharacterRun characterRun, String[] strArr, int i) {
        Element createSelect = ((AbstractHWPFWordConverter) this).documentFacade.createSelect();
        int i2 = 0;
        while (i2 < strArr.length) {
            createSelect.appendChild(((AbstractHWPFWordConverter) this).documentFacade.createOption(strArr[i2], i == i2));
            i2++;
        }
        element.appendChild(createSelect);
    }

    @Override // org.apache.poi.convert.hwpf.AbstractHWPFWordConverter
    public void processEndnoteAutonumbered(HWPFDocument hWPFDocument, int i, Element element, Range range) {
        processNoteAutonumbered(hWPFDocument, "end", i, element, range);
    }

    @Override // org.apache.poi.convert.hwpf.AbstractHWPFWordConverter
    public void processFootnoteAutonumbered(HWPFDocument hWPFDocument, int i, Element element, Range range) {
        processNoteAutonumbered(hWPFDocument, "foot", i, element, range);
    }

    @Override // org.apache.poi.convert.hwpf.AbstractHWPFWordConverter
    public void processHyperlink(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, String str) {
        Element createHyperlink = ((AbstractHWPFWordConverter) this).documentFacade.createHyperlink(str);
        element.appendChild(createHyperlink);
        if (range != null) {
            processCharacters(hWPFDocumentCore, i, range, createHyperlink);
        }
    }

    @Override // org.apache.poi.convert.hwpf.AbstractHWPFWordConverter
    public void processImage(Element element, boolean z, Picture picture, String str) {
        double twipsToPx;
        double twipsToPx2;
        double twipsToPx3;
        double twipsToPx4;
        double twipsToPx5;
        double twipsToPx6;
        double d;
        Element element2;
        int horizontalScalingFactor = picture.getHorizontalScalingFactor();
        int verticalScalingFactor = picture.getVerticalScalingFactor();
        if (horizontalScalingFactor > 0) {
            float f = horizontalScalingFactor / 1000.0f;
            twipsToPx = ExtUnits.twipsToPx(picture.getDxaGoal() * f);
            twipsToPx2 = ExtUnits.twipsToPx(picture.getDxaCropRight() * f);
            twipsToPx3 = ExtUnits.twipsToPx(f * picture.getDxaCropLeft());
        } else {
            twipsToPx = ExtUnits.twipsToPx(picture.getDxaGoal());
            twipsToPx2 = ExtUnits.twipsToPx(picture.getDxaCropRight());
            twipsToPx3 = ExtUnits.twipsToPx(picture.getDxaCropLeft());
        }
        if (verticalScalingFactor > 0) {
            float f2 = verticalScalingFactor / 1000.0f;
            twipsToPx4 = ExtUnits.twipsToPx(picture.getDyaGoal() * f2);
            twipsToPx5 = ExtUnits.twipsToPx(picture.getDyaCropTop() * f2);
            twipsToPx6 = ExtUnits.twipsToPx(f2 * picture.getDyaCropBottom());
        } else {
            twipsToPx4 = ExtUnits.twipsToPx(picture.getDyaGoal());
            twipsToPx5 = ExtUnits.twipsToPx(picture.getDyaCropTop());
            twipsToPx6 = ExtUnits.twipsToPx(picture.getDyaCropBottom());
        }
        if (Math.abs(twipsToPx5) + Math.abs(twipsToPx2) + Math.abs(twipsToPx6) + Math.abs(twipsToPx3) > 0.0d) {
            double d2 = twipsToPx;
            double max = Math.max(0.0d, (twipsToPx - twipsToPx3) - twipsToPx2);
            double max2 = Math.max(0.0d, (twipsToPx4 - twipsToPx5) - twipsToPx6);
            Element createBlock = ((AbstractHWPFWordConverter) this).documentFacade.createBlock();
            double d3 = twipsToPx4;
            ((AbstractHWPFWordConverter) this).documentFacade.addStyleClass(createBlock, "d", "vertical-align:text-bottom;width:" + ExtUnits.format(max) + "px;height:" + ExtUnits.format(max2) + "px;");
            Element createBlock2 = ((AbstractHWPFWordConverter) this).documentFacade.createBlock();
            ((AbstractHWPFWordConverter) this).documentFacade.addStyleClass(createBlock2, "d", "position:relative;width:" + ExtUnits.format(max) + "px;height:" + ExtUnits.format(max2) + "px;overflow:hidden;");
            createBlock.appendChild(createBlock2);
            Element createImage = ((AbstractHWPFWordConverter) this).documentFacade.createImage(str);
            ((AbstractHWPFWordConverter) this).documentFacade.addStyleClass(createImage, "i", "position:absolute;left:-" + ExtUnits.format(twipsToPx3) + "px;top:-" + ExtUnits.format(twipsToPx5) + "px;width:" + ExtUnits.format(d2) + "px;height:" + ExtUnits.format(d3) + "px;");
            createBlock2.appendChild(createImage);
            element2 = createBlock;
        } else {
            double d4 = twipsToPx4;
            double d5 = twipsToPx;
            Element createImage2 = ((AbstractHWPFWordConverter) this).documentFacade.createImage(str);
            StringBuilder sb = new StringBuilder();
            if (d5 <= 300.0d) {
                d = d4;
                if (d <= 400.0d) {
                    createImage2.attr("style", "width:" + ExtUnits.format(d5) + "px;height:" + ExtUnits.format(d) + "px;");
                }
            } else {
                d = d4;
            }
            if (d <= 32.0d) {
                sb.append("vertical-align:middle;");
            } else {
                sb.append("vertical-align:text-bottom;");
            }
            ((AbstractHWPFWordConverter) this).documentFacade.addStyleClass(createImage2, "img", sb.toString());
            element2 = createImage2;
        }
        element.appendChild(element2);
    }

    @Override // org.apache.poi.convert.hwpf.AbstractHWPFWordConverter
    public void processImageWithoutPicturesManager(Element element, boolean z, Picture picture) {
        element.appendChild(((AbstractHWPFWordConverter) this).documentFacade.createComment("Image link to '" + picture.suggestFullFileName() + "' can be here"));
    }

    @Override // org.apache.poi.convert.hwpf.AbstractHWPFWordConverter
    public void processLineBreak(Element element, CharacterRun characterRun) {
        element.appendChild(((AbstractHWPFWordConverter) this).documentFacade.createLineBreak());
    }

    public void processNoteAutonumbered(HWPFDocument hWPFDocument, String str, int i, Element element, Range range) {
        String valueOf = String.valueOf(i + 1);
        String orCreateCssClass = ((AbstractHWPFWordConverter) this).documentFacade.getOrCreateCssClass("a", "vertical-align:super;font-size:smaller;");
        String str2 = str + "note_" + valueOf;
        String str3 = str + "note_back_" + valueOf;
        Element createHyperlink = ((AbstractHWPFWordConverter) this).documentFacade.createHyperlink("#" + str2);
        createHyperlink.attr("id", str3);
        createHyperlink.attr("class", orCreateCssClass + " " + str + "noteanchor");
        element.appendChild(createHyperlink);
        createHyperlink.text(valueOf);
        if (this.notes == null) {
            Element createUnorderedList = ((AbstractHWPFWordConverter) this).documentFacade.createUnorderedList();
            this.notes = createUnorderedList;
            createUnorderedList.attr("class", "notes");
        }
        Element createListItem = ((AbstractHWPFWordConverter) this).documentFacade.createListItem();
        createListItem.attr("class", str + "note");
        this.notes.appendChild(createListItem);
        String orCreateCssClass2 = ((AbstractHWPFWordConverter) this).documentFacade.getOrCreateCssClass("a", "font-size:smaller;");
        Element createHyperlink2 = ((AbstractHWPFWordConverter) this).documentFacade.createHyperlink("#" + str3);
        WordToHtmlUtils.addClass(createHyperlink2, Constants.ID_FOOT_NOTE, orCreateCssClass2, str + "noteindex");
        createHyperlink2.attr("id", str2);
        createListItem.appendChild(createHyperlink2);
        createHyperlink2.text(valueOf);
        createListItem.appendChild(((AbstractHWPFWordConverter) this).documentFacade.createText(" "));
        Element createSpan = ((AbstractHWPFWordConverter) this).documentFacade.createSpan();
        createSpan.attr("class", str + "notetext");
        createListItem.appendChild(createSpan);
        this.blocksProperties.add(new BlockProperties("", -1));
        try {
            processCharacters(hWPFDocument, Integer.MIN_VALUE, range, createSpan);
        } finally {
            this.blocksProperties.pop();
        }
    }

    @Override // org.apache.poi.convert.hwpf.AbstractHWPFWordConverter
    public void processPageBreak(HWPFDocumentCore hWPFDocumentCore, Element element) {
        element.appendChild(((AbstractHWPFWordConverter) this).documentFacade.createLineBreak());
    }

    @Override // org.apache.poi.convert.hwpf.AbstractHWPFWordConverter
    public void processPageref(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, String str) {
        Element createHyperlink = ((AbstractHWPFWordConverter) this).documentFacade.createHyperlink("#" + str);
        element.appendChild(createHyperlink);
        if (range != null) {
            processCharacters(hWPFDocumentCore, i, range, createHyperlink);
        }
    }

    @Override // org.apache.poi.convert.hwpf.AbstractHWPFWordConverter
    public void processParagraph(HWPFDocumentCore hWPFDocumentCore, Element element, int i, Paragraph paragraph, String str, BodyElementType bodyElementType) {
        int i2;
        String str2;
        Element createParagraph = ((AbstractHWPFWordConverter) this).documentFacade.createParagraph();
        element.appendChild(createParagraph);
        setPElementTocAttr(paragraph, createParagraph);
        float f = bodyElementType == BodyElementType.BODY_TABLE ? this.tableIndentRatio : 1.0f;
        StringBuilder sb = new StringBuilder();
        HWPFWordToHtmlUtils.addParagraphProperties(paragraph, sb, f);
        if (paragraph.numCharacterRuns() == 0) {
            return;
        }
        CharacterRun characterRun = paragraph.getCharacterRun(0);
        if (characterRun != null) {
            FontReplacer.Triplet characterRunTriplet = getCharacterRunTriplet(characterRun);
            i2 = characterRun.getFontSize() / 2;
            str2 = characterRunTriplet.fontName;
            HWPFWordToHtmlUtils.addFontFamily(str2, sb);
            HWPFWordToHtmlUtils.addFontSize(i2, sb);
        } else {
            i2 = -1;
            str2 = "";
        }
        this.blocksProperties.push(new BlockProperties(str2, i2));
        try {
            if (WordToHtmlUtils.isNotEmpty(str)) {
                if (str.endsWith("\t")) {
                    float ceil = ((float) (Math.ceil(r1 / 720.0f) * 720.0d)) - ((paragraph.getIndentFromLeft() + paragraph.getFirstLineIndent()) + 20.0f);
                    Element createSpan = ((AbstractHWPFWordConverter) this).documentFacade.createSpan();
                    ((AbstractHWPFWordConverter) this).documentFacade.addStyleClass(createSpan, "s", "min-width: " + ExtUnits.format(ExtUnits.twipsToEM(ceil)) + "em;");
                    createParagraph.appendChild(createSpan);
                    createSpan.appendChild(((AbstractHWPFWordConverter) this).documentFacade.createText(str.substring(0, str.length() + (-1)) + com.onegravity.rteditor.utils.Constants.CH_ZWSP + (char) 160));
                } else {
                    createParagraph.appendChild(((AbstractHWPFWordConverter) this).documentFacade.createText(str));
                }
            }
            processCharacters(hWPFDocumentCore, i, paragraph, createParagraph);
            this.blocksProperties.pop();
            if (createParagraph.childNodeSize() == 0) {
                createParagraph.text(String.valueOf((char) 160));
            }
            if (sb.length() > 0) {
                ((AbstractHWPFWordConverter) this).documentFacade.addStyleClass(createParagraph, "p", sb.toString());
            }
            WordToHtmlUtils.compactSpans(createParagraph);
            WordToHtmlUtils.compactTextNode(createParagraph);
        } catch (Throwable th) {
            this.blocksProperties.pop();
            throw th;
        }
    }

    @Override // org.apache.poi.convert.hwpf.AbstractHWPFWordConverter
    public void processSection(HWPFDocumentCore hWPFDocumentCore, Section section, int i) {
        checkSplitDocument();
        processParagraphes(hWPFDocumentCore, createBlock(section), section, Integer.MIN_VALUE, BodyElementType.BODY);
    }

    @Override // org.apache.poi.convert.hwpf.AbstractHWPFWordConverter
    public void processTable(HWPFDocumentCore hWPFDocumentCore, Element element, Table table) {
        int i;
        int i2;
        StringBuilder sb;
        int[] iArr;
        Element element2;
        TableRow tableRow;
        Table table2 = table;
        checkAbortConvert();
        Element createTableHeader = ((AbstractHWPFWordConverter) this).documentFacade.createTableHeader();
        Element createTableBody = ((AbstractHWPFWordConverter) this).documentFacade.createTableBody();
        int[] buildTableCellEdgesArray = HWPFWordToHtmlUtils.buildTableCellEdgesArray(table);
        int numRows = table.numRows();
        int i3 = Integer.MIN_VALUE;
        for (int i4 = 0; i4 < numRows; i4++) {
            i3 = Math.max(i3, table2.getRow(i4).numCells());
        }
        int i5 = 0;
        while (i5 < numRows) {
            TableRow row = table2.getRow(i5);
            int tableCellTotalWidth = HWPFWordToHtmlUtils.getTableCellTotalWidth(row);
            Element createTableRow = ((AbstractHWPFWordConverter) this).documentFacade.createTableRow();
            StringBuilder sb2 = new StringBuilder();
            HWPFWordToHtmlUtils.addTableRowProperties(row, sb2);
            int numCells = row.numCells();
            int i6 = 0;
            int i7 = 0;
            while (i7 < numCells) {
                checkAbortConvert();
                TableCell cell = row.getCell(i7);
                if (!cell.isVerticallyMerged() || cell.isFirstVerticallyMerged()) {
                    Element createTableHeaderCell = row.isTableHeader() ? ((AbstractHWPFWordConverter) this).documentFacade.createTableHeaderCell() : ((AbstractHWPFWordConverter) this).documentFacade.createTableCell();
                    StringBuilder sb3 = new StringBuilder();
                    HWPFWordToHtmlUtils.addTableCellProperties(row, cell, i5 == 0, i5 == numRows + (-1), i7 == 0, i7 == numCells + (-1), sb3, tableCellTotalWidth, this.tableIndentRatio);
                    int numberColumnsSpanned = getNumberColumnsSpanned(buildTableCellEdgesArray, i6, cell);
                    if (numberColumnsSpanned != 0) {
                        int i8 = i6;
                        if (numberColumnsSpanned != 1) {
                            i = i7;
                            createTableHeaderCell.attr("colspan", String.valueOf(numberColumnsSpanned));
                        } else {
                            i = i7;
                        }
                        i2 = numCells;
                        sb = sb2;
                        iArr = buildTableCellEdgesArray;
                        element2 = createTableRow;
                        tableRow = row;
                        int numberRowsSpanned = getNumberRowsSpanned(table, buildTableCellEdgesArray, i5, i8, cell);
                        int i9 = i8 + numberColumnsSpanned;
                        if (numberRowsSpanned > 1) {
                            createTableHeaderCell.attr("rowspan", String.valueOf(numberRowsSpanned));
                        }
                        processParagraphes(hWPFDocumentCore, createTableHeaderCell, cell, table.getTableLevel(), BodyElementType.BODY_TABLE);
                        if (createTableHeaderCell.childNodeSize() <= 0) {
                            Element createParagraph = ((AbstractHWPFWordConverter) this).documentFacade.createParagraph();
                            createTableHeaderCell.appendChild(createParagraph);
                            createParagraph.text(String.valueOf((char) 160));
                        }
                        if (sb3.length() > 0) {
                            ((AbstractHWPFWordConverter) this).documentFacade.addStyleClass(createTableHeaderCell, createTableHeaderCell.tagName(), sb3.toString());
                        }
                        element2.appendChild(createTableHeaderCell);
                        i6 = i9;
                        i7 = i + 1;
                        createTableRow = element2;
                        numCells = i2;
                        sb2 = sb;
                        buildTableCellEdgesArray = iArr;
                        row = tableRow;
                    }
                } else {
                    i6 += getNumberColumnsSpanned(buildTableCellEdgesArray, i6, cell);
                }
                i = i7;
                i2 = numCells;
                sb = sb2;
                tableRow = row;
                iArr = buildTableCellEdgesArray;
                element2 = createTableRow;
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
                element3.attr("class", ((AbstractHWPFWordConverter) this).documentFacade.getOrCreateCssClass("r", sb4.toString()));
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
        Element createTable = ((AbstractHWPFWordConverter) this).documentFacade.createTable();
        createTable.attr("class", ((AbstractHWPFWordConverter) this).documentFacade.getOrCreateCssClass("t", "table-layout:fixed;border-collapse:collapse;border-spacing:0;"));
        if (createTableHeader.childNodeSize() > 0) {
            createTable.appendChild(createTableHeader);
        }
        if (createTableBody.childNodeSize() <= 0) {
            this.LOG.atWarn().log("Table without body starting at [{}; {})", Unbox.box(table.getStartOffset()), Unbox.box(table.getEndOffset()));
        } else {
            createTable.appendChild(createTableBody);
            element.appendChild(createTable);
        }
    }
}
