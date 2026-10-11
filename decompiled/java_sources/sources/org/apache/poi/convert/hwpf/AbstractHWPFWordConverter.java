package org.apache.poi.convert.hwpf;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.POIDocument;
import org.apache.poi.convert.AbstractWordConverter;
import org.apache.poi.convert.BodyElementType;
import org.apache.poi.convert.HtmlDocumentFacade;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.hwpf.HWPFWordToHtmlUtils;
import org.apache.poi.hpsf.SummaryInformation;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.HWPFDocumentCore;
import org.apache.poi.hwpf.converter.DefaultFontReplacer;
import org.apache.poi.hwpf.converter.FontReplacer;
import org.apache.poi.hwpf.model.FieldsDocumentPart;
import org.apache.poi.hwpf.usermodel.Bookmark;
import org.apache.poi.hwpf.usermodel.Bookmarks;
import org.apache.poi.hwpf.usermodel.CharacterRun;
import org.apache.poi.hwpf.usermodel.Field;
import org.apache.poi.hwpf.usermodel.HWPFPicture;
import org.apache.poi.hwpf.usermodel.Notes;
import org.apache.poi.hwpf.usermodel.OfficeDrawing;
import org.apache.poi.hwpf.usermodel.Paragraph;
import org.apache.poi.hwpf.usermodel.Picture;
import org.apache.poi.hwpf.usermodel.Range;
import org.apache.poi.hwpf.usermodel.Section;
import org.apache.poi.hwpf.usermodel.Table;
import org.apache.poi.hwpf.usermodel.TableCell;
import org.apache.poi.hwpf.usermodel.TableRow;
import org.apache.poi.picture.PicturesManager;
import org.apache.poi.poifs.filesystem.Entry;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.util.Internal;
import org.jsoup.nodes.Element;

/* loaded from: classes12.dex */
public abstract class AbstractHWPFWordConverter extends AbstractWordConverter {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final byte BEL_MARK = 7;
    private static final byte FIELD_BEGIN_MARK = 19;
    private static final int FIELD_DROP_DOWN = 83;
    private static final int FIELD_EMBEDDED_OBJECT = 58;
    private static final byte FIELD_END_MARK = 21;
    private static final int FIELD_HYPERLINK = 88;
    private static final int FIELD_PAGE_REFERENCE = 37;
    private static final byte FIELD_SEPARATOR_MARK = 20;
    private static final Pattern PATTERN_HYPERLINK_EXTERNAL = Pattern.compile("^[ \\t\\r\\n]*HYPERLINK \"(.*)\".*$");
    private static final Pattern PATTERN_HYPERLINK_LOCAL = Pattern.compile("^[ \\t\\r\\n]*HYPERLINK \\\\l \"(.*)\"[ ](.*)$");
    private static final Pattern PATTERN_PAGEREF = Pattern.compile("^[ \\t\\r\\n]*PAGEREF ([^ ]*)[ \\t\\r\\n]*\\\\h.*$");
    protected static final Pattern PATTERN_TOC = Pattern.compile("^[ \\t\\r\\n]*TOC \\\\o \"(.*)\".*$");
    private static final byte SPECCHAR_AUTONUMBERED_FOOTNOTE_REFERENCE = 2;
    private static final byte SPECCHAR_DRAWN_OBJECT = 8;
    protected static final char UNICODECHAR_NONBREAKING_HYPHEN = 8209;
    protected static final char UNICODECHAR_NO_BREAK_SPACE = 160;
    protected static final char UNICODECHAR_ZERO_WIDTH_SPACE = 8203;
    protected HWPFDocumentCore documentCore;
    protected int tocIndex;
    protected HtmlDocumentFacade documentFacade = new HtmlDocumentFacade();
    protected HWPFWordToHtmlUtils.NumberingState numberingState = new HWPFWordToHtmlUtils.NumberingState();
    protected final Set<Bookmark> bookmarkStack = new LinkedHashSet();
    protected FontReplacer fontReplacer = new DefaultFontReplacer();

    /* loaded from: classes12.dex */
    public static class DeadFieldBoundaries {
        final int beginMark;
        final int endMark;
        final int separatorMark;

        public DeadFieldBoundaries(int i, int i2, int i3) {
            this.beginMark = i;
            this.separatorMark = i2;
            this.endMark = i3;
        }
    }

    /* loaded from: classes12.dex */
    public static final class Structure implements Comparable<Structure> {
        final int end;
        final int start;
        final Object structure;

        public Structure(Bookmark bookmark) {
            this.start = bookmark.getStart();
            this.end = bookmark.getEnd();
            this.structure = bookmark;
        }

        public String toString() {
            return "Structure [" + this.start + "; " + this.end + "): " + this.structure;
        }

        @Override // java.lang.Comparable
        public int compareTo(Structure structure) {
            return Integer.compare(this.start, structure.start);
        }

        public Structure(DeadFieldBoundaries deadFieldBoundaries, int i, int i2) {
            this.start = i;
            this.end = i2;
            this.structure = deadFieldBoundaries;
        }

        public Structure(Field field) {
            this.start = field.getFieldStartOffset();
            this.end = field.getFieldEndOffset();
            this.structure = field;
        }
    }

    public AbstractHWPFWordConverter(HWPFDocumentCore hWPFDocumentCore) {
        this.documentList.add(this.documentFacade.getDocument());
        setUpNewDocument();
        this.documentCore = hWPFDocumentCore;
        this.metaData.readProperties((POIDocument) hWPFDocumentCore);
    }

    private static void addToStructures(List<Structure> list, Structure structure) {
        Iterator<Structure> it2 = list.iterator();
        while (it2.hasNext()) {
            Structure next = it2.next();
            int i = next.start;
            int i2 = structure.start;
            if (i <= i2 && next.end >= i2) {
                return;
            }
            if ((i2 < i && i < structure.end) || ((i2 < i && next.end <= structure.end) || (i2 <= i && next.end < structure.end))) {
                it2.remove();
            }
        }
        list.add(structure);
    }

    private int[] tryDeadField_lookupFieldSeparatorEnd(HWPFDocumentCore hWPFDocumentCore, Range range, int i) {
        int i2 = i + 1;
        int i3 = -1;
        while (true) {
            if (i2 >= range.numCharacterRuns()) {
                i2 = -1;
                break;
            }
            String text = range.getCharacterRun(i2).text();
            if (!text.isEmpty()) {
                char charAt = text.charAt(0);
                if (charAt == 19) {
                    int[] tryDeadField_lookupFieldSeparatorEnd = tryDeadField_lookupFieldSeparatorEnd(hWPFDocumentCore, range, i2);
                    if (tryDeadField_lookupFieldSeparatorEnd != null) {
                        i2 = tryDeadField_lookupFieldSeparatorEnd[1];
                    }
                } else if (charAt == 20) {
                    if (i3 != -1) {
                        return null;
                    }
                    i3 = i2;
                } else if (charAt == 21) {
                    break;
                }
            }
            i2++;
        }
        if (i3 == -1 || i2 == -1) {
            return null;
        }
        return new int[]{i3, i2};
    }

    public void afterProcess(HWPFDocumentCore hWPFDocumentCore) {
    }

    @Override // org.apache.poi.convert.AbstractWordConverter
    public void closeImpl() {
        CloseUtils.close(this.documentCore);
        this.documentCore = null;
    }

    @Override // org.apache.poi.convert.WordConverter
    public void convert() {
        processDocument(this.documentCore);
    }

    public Element createBlock(Section section) {
        HWPFWordToHtmlUtils.readSectionPageSize(section, this.pageSize);
        Element createBlock = this.documentFacade.createBlock();
        this.documentFacade.addStyleClass(createBlock, "d", HWPFWordToHtmlUtils.getSectionStyle(section));
        this.documentFacade.getBody().appendChild(createBlock);
        return createBlock;
    }

    public FontReplacer.Triplet getCharacterRunTriplet(CharacterRun characterRun) {
        FontReplacer.Triplet triplet = new FontReplacer.Triplet();
        triplet.bold = characterRun.isBold();
        triplet.italic = characterRun.isItalic();
        triplet.fontName = characterRun.getFontName();
        return getFontReplacer().update(triplet);
    }

    public FontReplacer getFontReplacer() {
        return this.fontReplacer;
    }

    public int getNumberColumnsSpanned(int[] iArr, int i, TableCell tableCell) {
        int leftEdge = tableCell.getLeftEdge() + tableCell.getWidth();
        int i2 = 0;
        while (iArr[i] < leftEdge) {
            i2++;
            i++;
        }
        return i2;
    }

    public int getNumberRowsSpanned(Table table, int[] iArr, int i, int i2, TableCell tableCell) {
        if (!tableCell.isFirstVerticallyMerged()) {
            return 1;
        }
        int numRows = table.numRows();
        int i3 = 1;
        for (int i4 = i + 1; i4 < numRows; i4++) {
            TableRow row = table.getRow(i4);
            if (row.numCells() <= 0) {
                this.LOG.atWarn().log("Error table num cells of row {}", Integer.valueOf(i4));
            } else {
                if (i2 >= row.numCells()) {
                    break;
                }
                boolean z = false;
                int i5 = 0;
                int i6 = 0;
                while (true) {
                    if (i5 >= row.numCells()) {
                        break;
                    }
                    TableCell cell = row.getCell(i5);
                    if (!cell.isVerticallyMerged() || cell.isFirstVerticallyMerged()) {
                        int numberColumnsSpanned = getNumberColumnsSpanned(iArr, i6, cell);
                        i6 += numberColumnsSpanned;
                        if (numberColumnsSpanned != 0) {
                            z = true;
                            break;
                        }
                    } else {
                        i6 += getNumberColumnsSpanned(iArr, i6, cell);
                    }
                    i5++;
                }
                if (z) {
                    TableCell cell2 = row.getCell(i2);
                    if (!cell2.isVerticallyMerged()) {
                        break;
                    }
                    if (cell2.isFirstVerticallyMerged()) {
                        break;
                    }
                } else {
                    continue;
                }
            }
            i3++;
        }
        return i3;
    }

    public abstract void outputCharacters(Element element, CharacterRun characterRun, String str);

    public abstract void processBookmarks(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, List<Bookmark> list);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v28 */
    /* JADX WARN: Type inference failed for: r13v4, types: [boolean, int] */
    public boolean processCharacters(HWPFDocumentCore hWPFDocumentCore, int i, Range range, Element element) {
        boolean z;
        boolean z2;
        int i2;
        Iterator it2;
        boolean z3;
        String text;
        int i3 = 0;
        if (range == null) {
            return false;
        }
        LinkedList linkedList = new LinkedList();
        boolean z4 = hWPFDocumentCore instanceof HWPFDocument;
        char c = 19;
        boolean z5 = true;
        if (z4) {
            HWPFDocument hWPFDocument = (HWPFDocument) hWPFDocumentCore;
            Map<Integer, List<Bookmark>> bookmarksStartedBetween = hWPFDocument.getBookmarks().getBookmarksStartedBetween(range.getStartOffset(), range.getEndOffset());
            if (bookmarksStartedBetween != null) {
                Iterator<List<Bookmark>> it3 = bookmarksStartedBetween.values().iterator();
                while (it3.hasNext()) {
                    for (Bookmark bookmark : it3.next()) {
                        if (!this.bookmarkStack.contains(bookmark)) {
                            addToStructures(linkedList, new Structure(bookmark));
                        }
                    }
                }
            }
            int i4 = 0;
            while (i4 < range.numCharacterRuns()) {
                CharacterRun characterRun = range.getCharacterRun(i4);
                if (characterRun == null) {
                    throw new AssertionError();
                }
                if (characterRun.getStartOffset() >= -1 && (text = characterRun.text()) != null && text.length() != 0 && text.charAt(i3) == c) {
                    Field fieldByStartOffset = hWPFDocument.getFields().getFieldByStartOffset(FieldsDocumentPart.MAIN, characterRun.getStartOffset());
                    if (fieldByStartOffset != null) {
                        addToStructures(linkedList, new Structure(fieldByStartOffset));
                    } else {
                        int[] tryDeadField_lookupFieldSeparatorEnd = tryDeadField_lookupFieldSeparatorEnd(hWPFDocumentCore, range, i4);
                        if (tryDeadField_lookupFieldSeparatorEnd != null) {
                            addToStructures(linkedList, new Structure(new DeadFieldBoundaries(i4, tryDeadField_lookupFieldSeparatorEnd[i3], tryDeadField_lookupFieldSeparatorEnd[1]), characterRun.getStartOffset(), range.getCharacterRun(tryDeadField_lookupFieldSeparatorEnd[1]).getEndOffset()));
                            i4 = tryDeadField_lookupFieldSeparatorEnd[1];
                        }
                    }
                }
                i4++;
                i3 = 0;
                c = 19;
            }
        }
        ArrayList arrayList = new ArrayList(linkedList);
        Collections.sort(arrayList);
        int startOffset = range.getStartOffset();
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            Structure structure = (Structure) it4.next();
            if (structure.start != startOffset) {
                processCharacters(hWPFDocumentCore, i, new Range(startOffset, structure.start, range) { // from class: org.apache.poi.convert.hwpf.AbstractHWPFWordConverter.1
                    @Override // org.apache.poi.hwpf.usermodel.Range
                    public String toString() {
                        return "BetweenStructuresSubrange " + super.toString();
                    }
                }, element);
            }
            Object obj = structure.structure;
            if (obj instanceof Bookmark) {
                LinkedList linkedList2 = new LinkedList();
                Bookmarks bookmarks = ((HWPFDocument) hWPFDocumentCore).getBookmarks();
                int i5 = structure.start;
                for (Bookmark bookmark2 : bookmarks.getBookmarksStartedBetween(i5, i5 + 1).values().iterator().next()) {
                    if (bookmark2.getStart() == structure.start && bookmark2.getEnd() == structure.end) {
                        linkedList2.add(bookmark2);
                    }
                }
                this.bookmarkStack.addAll(linkedList2);
                try {
                    processBookmarks(hWPFDocumentCore, element, new Range(structure.start, Math.min(range.getEndOffset(), structure.end), range) { // from class: org.apache.poi.convert.hwpf.AbstractHWPFWordConverter.2
                        @Override // org.apache.poi.hwpf.usermodel.Range
                        public String toString() {
                            return "BookmarksSubrange " + super.toString();
                        }
                    }, i, linkedList2);
                } finally {
                    this.bookmarkStack.removeAll(linkedList2);
                }
            } else if (obj instanceof Field) {
                processField((HWPFDocument) hWPFDocumentCore, range, i, (Field) obj, element);
            } else {
                if (!(obj instanceof DeadFieldBoundaries)) {
                    throw new UnsupportedOperationException("NYI: " + structure.structure.getClass());
                }
                DeadFieldBoundaries deadFieldBoundaries = (DeadFieldBoundaries) obj;
                it2 = it4;
                z3 = z5;
                processDeadField(hWPFDocumentCore, element, range, i, deadFieldBoundaries.beginMark, deadFieldBoundaries.separatorMark, deadFieldBoundaries.endMark);
                startOffset = Math.min(range.getEndOffset(), structure.end);
                z5 = z3;
                it4 = it2;
            }
            it2 = it4;
            z3 = z5;
            startOffset = Math.min(range.getEndOffset(), structure.end);
            z5 = z3;
            it4 = it2;
        }
        boolean z6 = z5;
        if (startOffset != range.getStartOffset()) {
            if (startOffset <= range.getEndOffset()) {
                if (startOffset < range.getEndOffset()) {
                    processCharacters(hWPFDocumentCore, i, new Range(startOffset, range.getEndOffset(), range) { // from class: org.apache.poi.convert.hwpf.AbstractHWPFWordConverter.3
                        @Override // org.apache.poi.hwpf.usermodel.Range
                        public String toString() {
                            return "AfterStructureSubrange " + super.toString();
                        }
                    }, element);
                }
                return z6;
            }
            this.LOG.warn("Latest structure in ", range, " ended at #" + startOffset, " after range boundaries [", range.getStartOffset() + "; " + range.getEndOffset(), MotionUtils.f31762d);
            return z6;
        }
        int i6 = 0;
        boolean z7 = false;
        ?? r13 = z6;
        while (i6 < range.numCharacterRuns()) {
            CharacterRun characterRun2 = range.getCharacterRun(i6);
            if (characterRun2 == null) {
                throw new AssertionError();
            }
            if (z4) {
                HWPFDocument hWPFDocument2 = (HWPFDocument) hWPFDocumentCore;
                if (hWPFDocument2.getPicturesTable().hasPicture(characterRun2)) {
                    processImage(element, characterRun2.text().charAt(0) == r13 ? r13 : false, hWPFDocument2.getPicturesTable().extractPicture(characterRun2, r13));
                    i2 = 1;
                    i6 += i2;
                    r13 = i2;
                }
            }
            String text2 = characterRun2.text();
            if (!text2.isEmpty()) {
                if (characterRun2.isSpecialCharacter()) {
                    z = false;
                    if (text2.charAt(0) == 2 && z4) {
                        processNoteAnchor((HWPFDocument) hWPFDocumentCore, characterRun2, element);
                        i2 = 1;
                        i6 += i2;
                        r13 = i2;
                    } else if (text2.charAt(0) == '\b' && z4) {
                        processDrawnObject((HWPFDocument) hWPFDocumentCore, characterRun2, element);
                    } else if (characterRun2.isOle2() && z4) {
                        processOle2((HWPFDocument) hWPFDocumentCore, characterRun2, element);
                    } else if (characterRun2.isSymbol() && z4) {
                        processSymbol((HWPFDocument) hWPFDocumentCore, characterRun2, element);
                    }
                }
                if (text2.charAt(0) == 19) {
                    if (z4) {
                        HWPFDocument hWPFDocument3 = (HWPFDocument) hWPFDocumentCore;
                        Field fieldByStartOffset2 = hWPFDocument3.getFields().getFieldByStartOffset(FieldsDocumentPart.MAIN, characterRun2.getStartOffset());
                        if (fieldByStartOffset2 != null) {
                            processField(hWPFDocument3, range, i, fieldByStartOffset2, element);
                            int fieldEndOffset = fieldByStartOffset2.getFieldEndOffset();
                            while (i6 < range.numCharacterRuns() && range.getCharacterRun(i6).getEndOffset() <= fieldEndOffset) {
                                i6++;
                            }
                            if (i6 < range.numCharacterRuns()) {
                                i6--;
                            }
                            i2 = r13;
                            i6 += i2;
                            r13 = i2;
                        }
                    }
                    int tryDeadField = tryDeadField(hWPFDocumentCore, range, i, i6, element);
                    if (tryDeadField != i6) {
                        i6 = tryDeadField;
                        i2 = r13;
                        i6 += i2;
                        r13 = i2;
                    }
                } else {
                    z = false;
                    if (text2.charAt(0) != 20) {
                        if (text2.charAt(0) != 21 && !characterRun2.isSpecialCharacter() && !characterRun2.isObj() && !characterRun2.isOle2()) {
                            if (text2.endsWith("\r") || (text2.charAt(text2.length() - r13) == 7 && i != Integer.MIN_VALUE)) {
                                text2 = text2.substring(0, text2.length() - r13);
                            }
                            StringBuilder sb = new StringBuilder();
                            for (char c2 : text2.toCharArray()) {
                                if (c2 == 11) {
                                    if (sb.length() > 0) {
                                        outputCharacters(element, characterRun2, sb.toString());
                                        sb.setLength(0);
                                    }
                                    processLineBreak(element, characterRun2);
                                } else if (c2 == 30) {
                                    sb.append(UNICODECHAR_NONBREAKING_HYPHEN);
                                } else if (c2 == 31) {
                                    sb.append((char) 8203);
                                } else if (Character.isSpaceChar(c2)) {
                                    sb.append((char) 160);
                                } else if (c2 >= ' ' || c2 == '\t' || c2 == '\n' || c2 == '\r') {
                                    sb.append(c2);
                                }
                            }
                            if (sb.length() > 0) {
                                outputCharacters(element, characterRun2, sb.toString());
                                z2 = false;
                                sb.setLength(0);
                            } else {
                                z2 = false;
                            }
                            z7 |= text2.trim().length() != 0 ? true : z2;
                            i2 = 1;
                            i6 += i2;
                            r13 = i2;
                        }
                    }
                    i2 = 1;
                    i6 += i2;
                    r13 = i2;
                }
            }
            i2 = 1;
            i6 += i2;
            r13 = i2;
        }
        return z7;
    }

    public void processDeadField(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, int i2, int i3, int i4) {
        int i5;
        int i6 = i2 + 1;
        if (i6 < i3 && (i5 = i3 + 1) < i4) {
            Range range2 = new Range(range.getCharacterRun(i6).getStartOffset(), range.getCharacterRun(i3 - 1).getEndOffset(), range) { // from class: org.apache.poi.convert.hwpf.AbstractHWPFWordConverter.4
                @Override // org.apache.poi.hwpf.usermodel.Range
                public String toString() {
                    return "Dead field formula subrange: " + super.toString();
                }
            };
            Range range3 = new Range(range.getCharacterRun(i5).getStartOffset(), range.getCharacterRun(i4 - 1).getEndOffset(), range) { // from class: org.apache.poi.convert.hwpf.AbstractHWPFWordConverter.5
                @Override // org.apache.poi.hwpf.usermodel.Range
                public String toString() {
                    return "Dead field value subrange: " + super.toString();
                }
            };
            Matcher matcher = PATTERN_HYPERLINK_LOCAL.matcher(range2.text());
            if (matcher.matches()) {
                processPageref(hWPFDocumentCore, element, range3, i, matcher.group(1));
                return;
            }
        }
        StringBuilder sb = new StringBuilder("Unsupported field type: \n");
        for (int i7 = i2; i7 <= i4; i7++) {
            sb.append("\t");
            sb.append(range.getCharacterRun(i7));
            sb.append("\n");
        }
        this.LOG.warn((CharSequence) sb);
        Range range4 = new Range(range.getCharacterRun(i3).getStartOffset() + 1, range.getCharacterRun(i4).getStartOffset(), range) { // from class: org.apache.poi.convert.hwpf.AbstractHWPFWordConverter.6
            @Override // org.apache.poi.hwpf.usermodel.Range
            public String toString() {
                return "DeadFieldValueSubrange (" + super.toString() + MotionUtils.f31762d;
            }
        };
        if (i3 + 1 < i4) {
            processCharacters(hWPFDocumentCore, i, range4, element);
        }
    }

    public void processDocument(HWPFDocumentCore hWPFDocumentCore) {
        try {
            SummaryInformation summaryInformation = hWPFDocumentCore.getSummaryInformation();
            if (summaryInformation != null) {
                processDocumentInformation(summaryInformation);
            }
        } catch (Exception e) {
            this.LOG.warn("Unable to process document summary information: ", e, e);
        }
        Range range = hWPFDocumentCore.getRange();
        if (range.numSections() == 1) {
            processSingleSection(hWPFDocumentCore, range.getSection(0));
            afterProcess(hWPFDocumentCore);
        } else {
            processDocumentPart(hWPFDocumentCore, range);
            afterProcess(hWPFDocumentCore);
        }
    }

    public abstract void processDocumentInformation(SummaryInformation summaryInformation);

    public void processDocumentPart(HWPFDocumentCore hWPFDocumentCore, Range range) {
        for (int i = 0; i < range.numSections(); i++) {
            processSection(hWPFDocumentCore, range.getSection(i), i);
        }
    }

    public abstract void processDrawnObject(HWPFDocument hWPFDocument, CharacterRun characterRun, OfficeDrawing officeDrawing, Element element);

    public void processDrawnObject(HWPFDocument hWPFDocument, CharacterRun characterRun, Element element) {
        if (getPicturesManager() == null) {
            return;
        }
        OfficeDrawing officeDrawingAt = hWPFDocument.getOfficeDrawingsMain().getOfficeDrawingAt(characterRun.getStartOffset());
        if (officeDrawingAt == null) {
            this.LOG.atWarn().log("Characters #{} references missing drawn object", characterRun);
        } else {
            processDrawnObject(hWPFDocument, characterRun, officeDrawingAt, element);
        }
    }

    public void processDropDownList(Element element, CharacterRun characterRun, String[] strArr, int i) {
        outputCharacters(element, characterRun, strArr[i]);
    }

    public abstract void processEndnoteAutonumbered(HWPFDocument hWPFDocument, int i, Element element, Range range);

    public void processField(HWPFDocument hWPFDocument, Range range, int i, Field field, Element element) {
        Range firstSubrange;
        int type = field.getType();
        if (type == 37) {
            Range firstSubrange2 = field.firstSubrange(range);
            if (firstSubrange2 != null) {
                Matcher matcher = PATTERN_PAGEREF.matcher(firstSubrange2.text());
                if (matcher.find()) {
                    processPageref(hWPFDocument, element, field.secondSubrange(range), i, matcher.group(1));
                    return;
                }
            }
        } else if (type != 58) {
            if (type == 83) {
                Range firstSubrange3 = field.firstSubrange(range);
                CharacterRun characterRun = firstSubrange3.getCharacterRun(firstSubrange3.numCharacterRuns() - 1);
                String[] dropDownListValues = characterRun.getDropDownListValues();
                Integer dropDownListDefaultItemIndex = characterRun.getDropDownListDefaultItemIndex();
                if (dropDownListValues != null && dropDownListValues.length > 0) {
                    processDropDownList(element, characterRun, dropDownListValues, dropDownListDefaultItemIndex == null ? -1 : dropDownListDefaultItemIndex.intValue());
                    return;
                }
            } else if (type == 88 && (firstSubrange = field.firstSubrange(range)) != null) {
                Matcher matcher2 = PATTERN_HYPERLINK_EXTERNAL.matcher(firstSubrange.text());
                if (matcher2.matches()) {
                    processHyperlink(hWPFDocument, element, field.secondSubrange(range), i, matcher2.group(1));
                    return;
                }
                matcher2.usePattern(PATTERN_HYPERLINK_LOCAL);
                if (matcher2.matches()) {
                    processPageref(hWPFDocument, element, WordToHtmlUtils.isNotEmpty(matcher2.group(2)) ? new Range(firstSubrange.getStartOffset() + matcher2.start(2), firstSubrange.getStartOffset() + matcher2.end(2), firstSubrange) { // from class: org.apache.poi.convert.hwpf.AbstractHWPFWordConverter.7
                        @Override // org.apache.poi.hwpf.usermodel.Range
                        public String toString() {
                            return "Local hyperlink text";
                        }
                    } : null, i, matcher2.group(1));
                    return;
                }
            }
        } else {
            if (!field.hasSeparator()) {
                this.LOG.atWarn().log("{} contains {} with 'Embedded Object' but without separator mark", range, field);
                return;
            }
            CharacterRun markSeparatorCharacterRun = field.getMarkSeparatorCharacterRun(range);
            if (markSeparatorCharacterRun.isOle2()) {
                if (processOle2(hWPFDocument, markSeparatorCharacterRun, element)) {
                    return;
                }
                processCharacters(hWPFDocument, i, field.secondSubrange(range), element);
                return;
            }
        }
        this.LOG.atWarn().log("{} contains {} with unsupported type or format", range, field);
        processCharacters(hWPFDocument, i, field.secondSubrange(range), element);
    }

    public abstract void processFootnoteAutonumbered(HWPFDocument hWPFDocument, int i, Element element, Range range);

    public abstract void processHyperlink(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, String str);

    public void processImage(Element element, boolean z, Picture picture) {
        PicturesManager<?> picturesManager = this.picturesManager;
        if (picturesManager != null) {
            String processPicture = picturesManager.processPicture(new HWPFPicture(picture));
            if (WordToHtmlUtils.isNotEmpty(processPicture)) {
                processImage(element, z, picture, processPicture);
                return;
            }
        }
        processImageWithoutPicturesManager(element, z, picture);
    }

    public abstract void processImage(Element element, boolean z, Picture picture, String str);

    @Internal
    public abstract void processImageWithoutPicturesManager(Element element, boolean z, Picture picture);

    public abstract void processLineBreak(Element element, CharacterRun characterRun);

    public void processNoteAnchor(HWPFDocument hWPFDocument, CharacterRun characterRun, Element element) {
        Notes footnotes = hWPFDocument.getFootnotes();
        int noteIndexByAnchorPosition = footnotes.getNoteIndexByAnchorPosition(characterRun.getStartOffset());
        if (noteIndexByAnchorPosition != -1) {
            int startOffset = hWPFDocument.getFootnoteRange().getStartOffset();
            processFootnoteAutonumbered(hWPFDocument, noteIndexByAnchorPosition, element, new Range(footnotes.getNoteTextStartOffset(noteIndexByAnchorPosition) + startOffset, startOffset + footnotes.getNoteTextEndOffset(noteIndexByAnchorPosition), hWPFDocument));
            return;
        }
        Notes endnotes = hWPFDocument.getEndnotes();
        int noteIndexByAnchorPosition2 = endnotes.getNoteIndexByAnchorPosition(characterRun.getStartOffset());
        if (noteIndexByAnchorPosition2 != -1) {
            int startOffset2 = hWPFDocument.getEndnoteRange().getStartOffset();
            processEndnoteAutonumbered(hWPFDocument, noteIndexByAnchorPosition2, element, new Range(endnotes.getNoteTextStartOffset(noteIndexByAnchorPosition2) + startOffset2, startOffset2 + endnotes.getNoteTextEndOffset(noteIndexByAnchorPosition2), hWPFDocument));
        }
    }

    public boolean processOle2(HWPFDocument hWPFDocument, Element element, Entry entry) throws Exception {
        return false;
    }

    public abstract void processPageBreak(HWPFDocumentCore hWPFDocumentCore, Element element);

    public abstract void processPageref(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, String str);

    public abstract void processParagraph(HWPFDocumentCore hWPFDocumentCore, Element element, int i, Paragraph paragraph, String str, BodyElementType bodyElementType);

    /* JADX WARN: Removed duplicated region for block: B:24:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00de A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void processParagraphes(org.apache.poi.hwpf.HWPFDocumentCore r19, org.jsoup.nodes.Element r20, org.apache.poi.hwpf.usermodel.Range r21, int r22, org.apache.poi.convert.BodyElementType r23) {
        /*
            r18 = this;
            r8 = r18
            r9 = r19
            r10 = r21
            r11 = r22
            int r12 = r21.numParagraphs()
            r13 = 0
            r14 = r20
            r15 = r13
        L10:
            if (r15 >= r12) goto Le2
            r18.checkAbortConvert()
            r18.incrementParaSize()
            org.apache.poi.hwpf.usermodel.Paragraph r7 = r10.getParagraph(r15)
            boolean r0 = r7.isInTable()
            r16 = 1
            if (r0 == 0) goto L6a
            int r0 = r7.getTableLevel()
            if (r0 == r11) goto L6a
            int r0 = r7.getTableLevel()
            if (r0 < r11) goto L42
            org.apache.poi.hwpf.usermodel.Table r0 = r10.getTable(r7)
            r8.processTable(r9, r14, r0)
            int r0 = r0.numParagraphs()
            int r15 = r15 + r0
            int r15 = r15 + (-1)
            r1 = r23
            goto Lde
        L42:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Trying to process table cell with higher level ("
            r1.append(r2)
            int r2 = r7.getTableLevel()
            r1.append(r2)
            java.lang.String r2 = ") than current table level ("
            r1.append(r2)
            r1.append(r11)
            java.lang.String r2 = ") as inner table part"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L6a:
            java.lang.String r0 = r7.text()
            java.lang.String r1 = "\f"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L79
            r8.processPageBreak(r9, r14)
        L79:
            boolean r0 = r7.isInList()
            if (r0 == 0) goto Lb5
            org.apache.poi.hwpf.usermodel.HWPFList r0 = r7.getList()     // Catch: java.lang.Exception -> La2
            org.apache.poi.convert.hwpf.HWPFWordToHtmlUtils$NumberingState r1 = r8.numberingState     // Catch: java.lang.Exception -> La2
            int r2 = r7.getIlvl()     // Catch: java.lang.Exception -> La2
            char r2 = (char) r2     // Catch: java.lang.Exception -> La2
            java.lang.String r6 = org.apache.poi.convert.hwpf.HWPFWordToHtmlUtils.getBulletText(r1, r0, r2)     // Catch: java.lang.Exception -> La2
            r1 = r18
            r2 = r19
            r3 = r14
            r4 = r22
            r5 = r7
            r17 = r7
            r7 = r23
            r1.processParagraph(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> La0
            r0 = r16
            goto Lb8
        La0:
            r0 = move-exception
            goto La5
        La2:
            r0 = move-exception
            r17 = r7
        La5:
            org.apache.logging.log4j.Logger r1 = r8.LOG
            org.apache.logging.log4j.LogBuilder r1 = r1.atWarn()
            org.apache.logging.log4j.LogBuilder r0 = r1.withThrowable(r0)
            java.lang.String r1 = "Can't process paragraph as list entry, will be processed without list information"
            r0.log(r1)
            goto Lb7
        Lb5:
            r17 = r7
        Lb7:
            r0 = r13
        Lb8:
            if (r0 != 0) goto Lca
            java.lang.String r6 = ""
            r1 = r18
            r2 = r19
            r3 = r14
            r4 = r22
            r5 = r17
            r7 = r23
            r1.processParagraph(r2, r3, r4, r5, r6, r7)
        Lca:
            org.apache.poi.convert.BodyElementType r0 = org.apache.poi.convert.BodyElementType.BODY
            r1 = r23
            if (r1 != r0) goto Lde
            boolean r0 = r18.checkSplitDocument()
            if (r0 == 0) goto Lde
            r0 = r10
            org.apache.poi.hwpf.usermodel.Section r0 = (org.apache.poi.hwpf.usermodel.Section) r0
            org.jsoup.nodes.Element r0 = r8.createBlock(r0)
            r14 = r0
        Lde:
            int r15 = r15 + 1
            goto L10
        Le2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.convert.hwpf.AbstractHWPFWordConverter.processParagraphes(org.apache.poi.hwpf.HWPFDocumentCore, org.jsoup.nodes.Element, org.apache.poi.hwpf.usermodel.Range, int, org.apache.poi.convert.BodyElementType):void");
    }

    public abstract void processSection(HWPFDocumentCore hWPFDocumentCore, Section section, int i);

    public void processSingleSection(HWPFDocumentCore hWPFDocumentCore, Section section) {
        processSection(hWPFDocumentCore, section, 0);
    }

    public void processSymbol(HWPFDocument hWPFDocument, CharacterRun characterRun, Element element) {
    }

    public abstract void processTable(HWPFDocumentCore hWPFDocumentCore, Element element, Table table);

    public void setFontReplacer(FontReplacer fontReplacer) {
        this.fontReplacer = fontReplacer;
    }

    public int tryDeadField(HWPFDocumentCore hWPFDocumentCore, Range range, int i, int i2, Element element) {
        int[] tryDeadField_lookupFieldSeparatorEnd = tryDeadField_lookupFieldSeparatorEnd(hWPFDocumentCore, range, i2);
        if (tryDeadField_lookupFieldSeparatorEnd == null) {
            return i2;
        }
        processDeadField(hWPFDocumentCore, element, range, i, i2, tryDeadField_lookupFieldSeparatorEnd[0], tryDeadField_lookupFieldSeparatorEnd[1]);
        return tryDeadField_lookupFieldSeparatorEnd[1];
    }

    private boolean processOle2(HWPFDocument hWPFDocument, CharacterRun characterRun, Element element) {
        Entry objectById = hWPFDocument.getObjectsPool().getObjectById("_" + characterRun.getPicOffset());
        if (objectById == null) {
            this.LOG.atWarn().log("Referenced OLE2 object '{}' not found in ObjectPool", Unbox.box(characterRun.getPicOffset()));
            return false;
        }
        try {
            return processOle2(hWPFDocument, element, objectById);
        } catch (Exception e) {
            this.LOG.atWarn().withThrowable(e).log("Unable to convert internal OLE2 object '{}'", Unbox.box(characterRun.getPicOffset()));
            return false;
        }
    }
}
