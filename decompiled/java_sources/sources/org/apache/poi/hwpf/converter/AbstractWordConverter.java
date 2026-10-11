package org.apache.poi.hwpf.converter;

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
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hpsf.SummaryInformation;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.HWPFDocumentCore;
import org.apache.poi.hwpf.converter.AbstractWordUtils;
import org.apache.poi.hwpf.converter.FontReplacer;
import org.apache.poi.hwpf.model.FieldsDocumentPart;
import org.apache.poi.hwpf.usermodel.Bookmark;
import org.apache.poi.hwpf.usermodel.Bookmarks;
import org.apache.poi.hwpf.usermodel.CharacterRun;
import org.apache.poi.hwpf.usermodel.Field;
import org.apache.poi.hwpf.usermodel.Notes;
import org.apache.poi.hwpf.usermodel.OfficeDrawing;
import org.apache.poi.hwpf.usermodel.Paragraph;
import org.apache.poi.hwpf.usermodel.Picture;
import org.apache.poi.hwpf.usermodel.PictureType;
import org.apache.poi.hwpf.usermodel.Range;
import org.apache.poi.hwpf.usermodel.Section;
import org.apache.poi.hwpf.usermodel.Table;
import org.apache.poi.hwpf.usermodel.TableCell;
import org.apache.poi.hwpf.usermodel.TableRow;
import org.apache.poi.poifs.filesystem.Entry;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LocaleUtil;
import org.apache.poi.util.StringUtil;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* loaded from: classes12.dex */
public abstract class AbstractWordConverter {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final byte BEL_MARK = 7;
    private static final byte FIELD_BEGIN_MARK = 19;
    private static final int FIELD_DROP_DOWN = 83;
    private static final int FIELD_EMBEDDED_OBJECT = 58;
    private static final byte FIELD_END_MARK = 21;
    private static final int FIELD_HYPERLINK = 88;
    private static final int FIELD_PAGE_REFERENCE = 37;
    private static final byte FIELD_SEPARATOR_MARK = 20;
    private static final Logger LOG = LogManager.getLogger((Class<?>) AbstractWordConverter.class);
    private static final Pattern PATTERN_HYPERLINK_EXTERNAL = Pattern.compile("^[ \\t\\r\\n]*HYPERLINK \"(.*)\".*$");
    private static final Pattern PATTERN_HYPERLINK_LOCAL = Pattern.compile("^[ \\t\\r\\n]*HYPERLINK \\\\l \"(.*)\"[ ](.*)$");
    private static final Pattern PATTERN_PAGEREF = Pattern.compile("^[ \\t\\r\\n]*PAGEREF ([^ ]*)[ \\t\\r\\n]*\\\\h.*$");
    private static final byte SPECCHAR_AUTONUMBERED_FOOTNOTE_REFERENCE = 2;
    private static final byte SPECCHAR_DRAWN_OBJECT = 8;
    protected static final char UNICODECHAR_NONBREAKING_HYPHEN = 8209;
    protected static final char UNICODECHAR_NO_BREAK_SPACE = 160;
    protected static final char UNICODECHAR_ZERO_WIDTH_SPACE = 8203;
    private final Set<Bookmark> bookmarkStack = new LinkedHashSet();
    private FontReplacer fontReplacer = new DefaultFontReplacer();
    private final AbstractWordUtils.NumberingState numberingState = new AbstractWordUtils.NumberingState();
    private PicturesManager picturesManager;

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

    private int[] tryDeadField_lookupFieldSeparatorEnd(Range range, int i) {
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
                    int[] tryDeadField_lookupFieldSeparatorEnd = tryDeadField_lookupFieldSeparatorEnd(range, i2);
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

    public void afterProcess() {
    }

    public FontReplacer.Triplet getCharacterRunTriplet(CharacterRun characterRun) {
        FontReplacer.Triplet triplet = new FontReplacer.Triplet();
        triplet.bold = characterRun.isBold();
        triplet.italic = characterRun.isItalic();
        triplet.fontName = characterRun.getFontName();
        return getFontReplacer().update(triplet);
    }

    public abstract Document getDocument();

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
                if (!cell2.isVerticallyMerged() || cell2.isFirstVerticallyMerged()) {
                    break;
                }
                i3++;
            }
        }
        return i3;
    }

    public PicturesManager getPicturesManager() {
        return this.picturesManager;
    }

    public abstract void outputCharacters(Element element, CharacterRun characterRun, String str);

    public abstract void processBookmarks(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, List<Bookmark> list);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v26 */
    /* JADX WARN: Type inference failed for: r13v4, types: [boolean, int] */
    public boolean processCharacters(HWPFDocumentCore hWPFDocumentCore, int i, Range range, Element element) {
        boolean z;
        int i2;
        Iterator it2;
        boolean z2;
        String text;
        int i3 = 0;
        if (range == null) {
            return false;
        }
        LinkedList linkedList = new LinkedList();
        boolean z3 = hWPFDocumentCore instanceof HWPFDocument;
        char c = 19;
        boolean z4 = true;
        if (z3) {
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
                        int[] tryDeadField_lookupFieldSeparatorEnd = tryDeadField_lookupFieldSeparatorEnd(range, i4);
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
                processCharacters(hWPFDocumentCore, i, new Range(startOffset, structure.start, range) { // from class: org.apache.poi.hwpf.converter.AbstractWordConverter.1
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
                    processBookmarks(hWPFDocumentCore, element, new Range(structure.start, Math.min(range.getEndOffset(), structure.end), range) { // from class: org.apache.poi.hwpf.converter.AbstractWordConverter.2
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
                z2 = z4;
                processDeadField(hWPFDocumentCore, element, range, i, deadFieldBoundaries.beginMark, deadFieldBoundaries.separatorMark, deadFieldBoundaries.endMark);
                startOffset = Math.min(range.getEndOffset(), structure.end);
                z4 = z2;
                it4 = it2;
            }
            it2 = it4;
            z2 = z4;
            startOffset = Math.min(range.getEndOffset(), structure.end);
            z4 = z2;
            it4 = it2;
        }
        boolean z5 = z4;
        if (startOffset != range.getStartOffset()) {
            if (startOffset > range.getEndOffset()) {
                LOG.atWarn().log("Latest structure in {} ended at #{} after range boundaries [{}; {})", range, Unbox.box(startOffset), Unbox.box(range.getStartOffset()), Unbox.box(range.getEndOffset()));
                return z5;
            }
            if (startOffset < range.getEndOffset()) {
                processCharacters(hWPFDocumentCore, i, new Range(startOffset, range.getEndOffset(), range) { // from class: org.apache.poi.hwpf.converter.AbstractWordConverter.3
                    @Override // org.apache.poi.hwpf.usermodel.Range
                    public String toString() {
                        return "AfterStructureSubrange " + super.toString();
                    }
                }, element);
            }
            return z5;
        }
        int i6 = 0;
        boolean z6 = false;
        ?? r13 = z5;
        while (i6 < range.numCharacterRuns()) {
            CharacterRun characterRun2 = range.getCharacterRun(i6);
            if (characterRun2 == null) {
                throw new AssertionError();
            }
            if (z3) {
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
                if (characterRun2.isCapitalized() || characterRun2.isSmallCaps()) {
                    text2 = text2.toUpperCase(LocaleUtil.getUserLocale());
                }
                if (characterRun2.isSpecialCharacter()) {
                    z = false;
                    if (text2.charAt(0) == 2 && z3) {
                        processNoteAnchor((HWPFDocument) hWPFDocumentCore, characterRun2, element);
                        i2 = 1;
                        i6 += i2;
                        r13 = i2;
                    } else if (text2.charAt(0) == '\b' && z3) {
                        processDrawnObject((HWPFDocument) hWPFDocumentCore, characterRun2, element);
                    } else if (characterRun2.isOle2() && z3) {
                        processOle2((HWPFDocument) hWPFDocumentCore, characterRun2, element);
                    } else if (characterRun2.isSymbol() && z3) {
                        processSymbol((HWPFDocument) hWPFDocumentCore, characterRun2, element);
                    }
                }
                if (text2.charAt(0) == 19) {
                    if (z3) {
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
                                } else if (c2 >= ' ' || c2 == '\t' || c2 == '\n' || c2 == '\r') {
                                    sb.append(c2);
                                }
                            }
                            if (sb.length() > 0) {
                                outputCharacters(element, characterRun2, sb.toString());
                                sb.setLength(0);
                            }
                            z6 |= StringUtil.isNotBlank(text2);
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
        return z6;
    }

    public void processDeadField(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, int i2, int i3, int i4) {
        int i5;
        int i6 = i2 + 1;
        if (i6 < i3 && (i5 = i3 + 1) < i4) {
            Range range2 = new Range(range.getCharacterRun(i6).getStartOffset(), range.getCharacterRun(i3 - 1).getEndOffset(), range) { // from class: org.apache.poi.hwpf.converter.AbstractWordConverter.4
                @Override // org.apache.poi.hwpf.usermodel.Range
                public String toString() {
                    return "Dead field formula subrange: " + super.toString();
                }
            };
            Range range3 = new Range(range.getCharacterRun(i5).getStartOffset(), range.getCharacterRun(i4 - 1).getEndOffset(), range) { // from class: org.apache.poi.hwpf.converter.AbstractWordConverter.5
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
        LOG.atWarn().log((CharSequence) sb);
        Range range4 = new Range(range.getCharacterRun(i3).getStartOffset() + 1, range.getCharacterRun(i4).getStartOffset(), range) { // from class: org.apache.poi.hwpf.converter.AbstractWordConverter.6
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
            LOG.atWarn().withThrowable(e).log("Unable to process document summary information");
        }
        Range range = hWPFDocumentCore.getRange();
        if (range.numSections() == 1) {
            processSingleSection(hWPFDocumentCore, range.getSection(0));
            afterProcess();
        } else {
            processDocumentPart(hWPFDocumentCore, range);
            afterProcess();
        }
    }

    public abstract void processDocumentInformation(SummaryInformation summaryInformation);

    public void processDocumentPart(HWPFDocumentCore hWPFDocumentCore, Range range) {
        for (int i = 0; i < range.numSections(); i++) {
            processSection(hWPFDocumentCore, range.getSection(i), i);
        }
    }

    public abstract void processDrawnObject(HWPFDocument hWPFDocument, CharacterRun characterRun, OfficeDrawing officeDrawing, String str, Element element);

    public void processDrawnObject(HWPFDocument hWPFDocument, CharacterRun characterRun, Element element) {
        if (getPicturesManager() == null) {
            return;
        }
        OfficeDrawing officeDrawingAt = hWPFDocument.getOfficeDrawingsMain().getOfficeDrawingAt(characterRun.getStartOffset());
        if (officeDrawingAt == null) {
            LOG.atWarn().log("Characters #{} references missing drawn object", characterRun);
            return;
        }
        byte[] pictureData = officeDrawingAt.getPictureData();
        if (pictureData == null) {
            return;
        }
        PictureType findMatchingType = PictureType.findMatchingType(pictureData);
        PicturesManager picturesManager = getPicturesManager();
        processDrawnObject(hWPFDocument, characterRun, officeDrawingAt, picturesManager.savePicture(pictureData, findMatchingType, "s" + characterRun.getStartOffset() + "." + findMatchingType, (officeDrawingAt.getRectangleRight() - officeDrawingAt.getRectangleLeft()) / 1440.0f, (officeDrawingAt.getRectangleBottom() - officeDrawingAt.getRectangleTop()) / 1440.0f), element);
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
                    processPageref(hWPFDocument, element, AbstractWordUtils.isNotEmpty(matcher2.group(2)) ? new Range(firstSubrange.getStartOffset() + matcher2.start(2), firstSubrange.getStartOffset() + matcher2.end(2), firstSubrange) { // from class: org.apache.poi.hwpf.converter.AbstractWordConverter.7
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
                LOG.atWarn().log("{} contains {} with 'Embedded Object' but without separator mark", range, field);
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
        LOG.atWarn().log("{} contains {} with unsupported type or format", range, field);
        processCharacters(hWPFDocument, i, field.secondSubrange(range), element);
    }

    public abstract void processFootnoteAutonumbered(HWPFDocument hWPFDocument, int i, Element element, Range range);

    public abstract void processHyperlink(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, String str);

    public void processImage(Element element, boolean z, Picture picture) {
        PicturesManager picturesManager = getPicturesManager();
        if (picturesManager != null) {
            float horizontalScalingFactor = picture.getHorizontalScalingFactor();
            float verticalScalingFactor = picture.getVerticalScalingFactor();
            float dxaGoal = picture.getDxaGoal();
            if (horizontalScalingFactor > 0.0f) {
                dxaGoal *= horizontalScalingFactor / 1000.0f;
            }
            float f = dxaGoal / 1440.0f;
            float dyaGoal = picture.getDyaGoal();
            if (verticalScalingFactor > 0.0f) {
                dyaGoal *= verticalScalingFactor / 1000.0f;
            }
            String savePicture = picturesManager.savePicture(picture.getContent(), picture.suggestPictureType(), picture.suggestFullFileName(), f, dyaGoal / 1440.0f);
            if (AbstractWordUtils.isNotEmpty(savePicture)) {
                processImage(element, z, picture, savePicture);
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

    public abstract void processParagraph(HWPFDocumentCore hWPFDocumentCore, Element element, int i, Paragraph paragraph, String str);

    /* JADX WARN: Removed duplicated region for block: B:23:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a1 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void processParagraphes(org.apache.poi.hwpf.HWPFDocumentCore r12, org.w3c.dom.Element r13, org.apache.poi.hwpf.usermodel.Range r14, int r15) {
        /*
            r11 = this;
            int r0 = r14.numParagraphs()
            r1 = 0
            r2 = r1
        L6:
            if (r2 >= r0) goto La4
            org.apache.poi.hwpf.usermodel.Paragraph r9 = r14.getParagraph(r2)
            boolean r3 = r9.isInTable()
            r10 = 1
            if (r3 == 0) goto L56
            int r3 = r9.getTableLevel()
            if (r3 == r15) goto L56
            int r3 = r9.getTableLevel()
            if (r3 < r15) goto L2e
            org.apache.poi.hwpf.usermodel.Table r3 = r14.getTable(r9)
            r11.processTable(r12, r13, r3)
            int r3 = r3.numParagraphs()
            int r3 = r3 - r10
            int r2 = r2 + r3
            goto La1
        L2e:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r13 = "Trying to process table cell with higher level ("
            r12.append(r13)
            int r13 = r9.getTableLevel()
            r12.append(r13)
            java.lang.String r13 = ") than current table level ("
            r12.append(r13)
            r12.append(r15)
            java.lang.String r13 = ") as inner table part"
            r12.append(r13)
            java.lang.String r12 = r12.toString()
            r11.<init>(r12)
            throw r11
        L56:
            java.lang.String r3 = r9.text()
            java.lang.String r4 = "\f"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L65
            r11.processPageBreak(r12, r13)
        L65:
            boolean r3 = r9.isInList()
            if (r3 == 0) goto L94
            org.apache.poi.hwpf.usermodel.HWPFList r3 = r9.getList()     // Catch: java.lang.Exception -> L84
            org.apache.poi.hwpf.converter.AbstractWordUtils$NumberingState r4 = r11.numberingState     // Catch: java.lang.Exception -> L84
            int r5 = r9.getIlvl()     // Catch: java.lang.Exception -> L84
            char r5 = (char) r5     // Catch: java.lang.Exception -> L84
            java.lang.String r8 = org.apache.poi.hwpf.converter.AbstractWordUtils.getBulletText(r4, r3, r5)     // Catch: java.lang.Exception -> L84
            r3 = r11
            r4 = r12
            r5 = r13
            r6 = r15
            r7 = r9
            r3.processParagraph(r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L84
            r3 = r10
            goto L95
        L84:
            r3 = move-exception
            org.apache.logging.log4j.Logger r4 = org.apache.poi.hwpf.converter.AbstractWordConverter.LOG
            org.apache.logging.log4j.LogBuilder r4 = r4.atWarn()
            org.apache.logging.log4j.LogBuilder r3 = r4.withThrowable(r3)
            java.lang.String r4 = "Can't process paragraph as list entry, will be processed without list information"
            r3.log(r4)
        L94:
            r3 = r1
        L95:
            if (r3 != 0) goto La1
            java.lang.String r8 = ""
            r3 = r11
            r4 = r12
            r5 = r13
            r6 = r15
            r7 = r9
            r3.processParagraph(r4, r5, r6, r7, r8)
        La1:
            int r2 = r2 + r10
            goto L6
        La4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hwpf.converter.AbstractWordConverter.processParagraphes(org.apache.poi.hwpf.HWPFDocumentCore, org.w3c.dom.Element, org.apache.poi.hwpf.usermodel.Range, int):void");
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

    public void setPicturesManager(PicturesManager picturesManager) {
        this.picturesManager = picturesManager;
    }

    public int tryDeadField(HWPFDocumentCore hWPFDocumentCore, Range range, int i, int i2, Element element) {
        int[] tryDeadField_lookupFieldSeparatorEnd = tryDeadField_lookupFieldSeparatorEnd(range, i2);
        if (tryDeadField_lookupFieldSeparatorEnd == null) {
            return i2;
        }
        processDeadField(hWPFDocumentCore, element, range, i, i2, tryDeadField_lookupFieldSeparatorEnd[0], tryDeadField_lookupFieldSeparatorEnd[1]);
        return tryDeadField_lookupFieldSeparatorEnd[1];
    }

    private boolean processOle2(HWPFDocument hWPFDocument, CharacterRun characterRun, Element element) {
        Entry objectById = hWPFDocument.getObjectsPool().getObjectById("_" + characterRun.getPicOffset());
        if (objectById == null) {
            LOG.atWarn().log("Referenced OLE2 object '{}' not found in ObjectPool", Unbox.box(characterRun.getPicOffset()));
            return false;
        }
        try {
            return processOle2(hWPFDocument, element, objectById);
        } catch (Exception e) {
            LOG.atWarn().withThrowable(e).log("Unable to convert internal OLE2 object '{}'", Unbox.box(characterRun.getPicOffset()));
            return false;
        }
    }
}
