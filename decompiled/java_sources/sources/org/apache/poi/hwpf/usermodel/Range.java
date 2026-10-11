package org.apache.poi.hwpf.usermodel;

import com.google.android.material.motion.MotionUtils;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.HWPFDocumentCore;
import org.apache.poi.hwpf.model.CHPX;
import org.apache.poi.hwpf.model.FileInformationBlock;
import org.apache.poi.hwpf.model.PAPX;
import org.apache.poi.hwpf.model.PropertyNode;
import org.apache.poi.hwpf.model.SEPX;
import org.apache.poi.hwpf.model.StyleSheet;
import org.apache.poi.hwpf.model.SubdocumentType;
import org.apache.poi.hwpf.sprm.CharacterSprmCompressor;
import org.apache.poi.hwpf.sprm.ParagraphSprmCompressor;
import org.apache.poi.hwpf.sprm.SprmBuffer;
import org.apache.poi.util.DocumentFormatException;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class Range {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Logger LOG = LogManager.getLogger((Class<?>) Range.class);

    @Deprecated
    public static final int TYPE_CHARACTER = 1;

    @Deprecated
    public static final int TYPE_LISTENTRY = 4;

    @Deprecated
    public static final int TYPE_PARAGRAPH = 0;

    @Deprecated
    public static final int TYPE_SECTION = 2;

    @Deprecated
    public static final int TYPE_TABLE = 5;

    @Deprecated
    public static final int TYPE_TEXT = 3;

    @Deprecated
    public static final int TYPE_UNDEFINED = 6;
    protected int _charEnd;
    protected boolean _charRangeFound;
    protected int _charStart;
    protected List<CHPX> _characters;
    protected final HWPFDocumentCore _doc;
    protected int _end;
    protected int _parEnd;
    protected boolean _parRangeFound;
    protected int _parStart;
    protected final List<PAPX> _paragraphs;
    private final Range _parent;
    protected int _sectionEnd;
    boolean _sectionRangeFound;
    protected int _sectionStart;
    protected final List<SEPX> _sections;
    protected final int _start;
    protected StringBuilder _text;

    public Range(int i, int i2, HWPFDocumentCore hWPFDocumentCore) {
        this._start = i;
        this._end = i2;
        this._doc = hWPFDocumentCore;
        this._sections = hWPFDocumentCore.getSectionTable().getSections();
        this._paragraphs = hWPFDocumentCore.getParagraphTable().getParagraphs();
        this._characters = hWPFDocumentCore.getCharacterTable().getTextRuns();
        this._text = hWPFDocumentCore.getText();
        this._parent = null;
        sanityCheckStartEnd();
    }

    private void adjustForInsert(int i) {
        this._end += i;
        reset();
        Range range = this._parent;
        if (range != null) {
            range.adjustForInsert(i);
        }
    }

    private static int binarySearchEnd(List<? extends PropertyNode<?>> list, int i, int i2) {
        if (list.get(list.size() - 1).getEnd() <= i2) {
            return list.size() - 1;
        }
        int size = list.size() - 1;
        while (i <= size) {
            int i3 = (i + size) >>> 1;
            PropertyNode<?> propertyNode = list.get(i3);
            if (propertyNode.getEnd() < i2) {
                i = i3 + 1;
            } else {
                if (propertyNode.getEnd() <= i2) {
                    return i3;
                }
                size = i3 - 1;
            }
        }
        return i;
    }

    private static int binarySearchStart(List<? extends PropertyNode<?>> list, int i) {
        if (list.isEmpty()) {
            return -1;
        }
        int i2 = 0;
        if (list.get(0).getStart() >= i) {
            return 0;
        }
        int size = list.size() - 1;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            PropertyNode<?> propertyNode = list.get(i3);
            if (propertyNode.getStart() < i) {
                i2 = i3 + 1;
            } else {
                if (propertyNode.getStart() <= i) {
                    return i3;
                }
                size = i3 - 1;
            }
        }
        return i2 - 1;
    }

    private int[] findRange(List<? extends PropertyNode<?>> list, int i, int i2) {
        int binarySearchStart = binarySearchStart(list, i);
        while (binarySearchStart > 0 && list.get(binarySearchStart - 1).getStart() >= i) {
            binarySearchStart--;
        }
        int binarySearchEnd = binarySearchEnd(list, binarySearchStart, i2);
        while (binarySearchEnd < list.size() - 1) {
            int i3 = binarySearchEnd + 1;
            if (list.get(i3).getEnd() > i2) {
                break;
            }
            binarySearchEnd = i3;
        }
        if (binarySearchStart >= 0 && binarySearchStart < list.size() && binarySearchStart <= binarySearchEnd && binarySearchEnd >= 0 && binarySearchEnd < list.size()) {
            return new int[]{binarySearchStart, binarySearchEnd + 1};
        }
        throw new DocumentFormatException("problem finding range");
    }

    private void initCharacterRuns() {
        if (this._charRangeFound) {
            return;
        }
        int[] findRange = findRange(this._characters, this._start, this._end);
        this._charStart = findRange[0];
        this._charEnd = findRange[1];
        this._charRangeFound = true;
    }

    private void initParagraphs() {
        if (this._parRangeFound) {
            return;
        }
        int[] findRange = findRange(this._paragraphs, this._start, this._end);
        this._parStart = findRange[0];
        this._parEnd = findRange[1];
        this._parRangeFound = true;
    }

    private void initSections() {
        if (this._sectionRangeFound) {
            return;
        }
        int[] findRange = findRange(this._sections, this._sectionStart, this._start, this._end);
        this._sectionStart = findRange[0];
        this._sectionEnd = findRange[1];
        this._sectionRangeFound = true;
    }

    private void sanityCheckStartEnd() {
        int i = this._start;
        if (i < 0) {
            throw new IllegalArgumentException("Range start must not be negative. Given " + this._start);
        }
        if (this._end >= i) {
            return;
        }
        throw new IllegalArgumentException("The end (" + this._end + ") must not be before the start (" + this._start + MotionUtils.f31762d);
    }

    public static String stripFields(String str) {
        if (str.indexOf(19) == -1) {
            return str;
        }
        while (str.indexOf(19) > -1 && str.indexOf(21) > -1) {
            int indexOf = str.indexOf(19);
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(19, i);
            int indexOf3 = str.indexOf(20, i);
            int lastIndexOf = str.lastIndexOf(21);
            if (lastIndexOf < indexOf) {
                return str;
            }
            if (indexOf2 == -1 && indexOf3 == -1) {
                return str.substring(0, indexOf) + str.substring(lastIndexOf + 1);
            }
            if (indexOf3 == -1 || (indexOf3 >= indexOf2 && indexOf2 != -1)) {
                str = str.substring(0, indexOf) + str.substring(lastIndexOf + 1);
            } else {
                str = str.substring(0, indexOf) + str.substring(indexOf3 + 1, lastIndexOf) + str.substring(lastIndexOf + 1);
            }
        }
        return str;
    }

    public void adjustFIB(int i) {
        HWPFDocumentCore hWPFDocumentCore = this._doc;
        if (!(hWPFDocumentCore instanceof HWPFDocument)) {
            throw new IllegalArgumentException("doc must be instance of HWPFDocument");
        }
        FileInformationBlock fileInformationBlock = hWPFDocumentCore.getFileInformationBlock();
        int i2 = 0;
        for (SubdocumentType subdocumentType : SubdocumentType.ORDERED) {
            int subdocumentTextStreamLength = fileInformationBlock.getSubdocumentTextStreamLength(subdocumentType);
            i2 += subdocumentTextStreamLength;
            if (this._start <= i2) {
                fileInformationBlock.setSubdocumentTextStreamLength(subdocumentType, subdocumentTextStreamLength + i);
                return;
            }
        }
    }

    public void delete() {
        initAll();
        int size = this._sections.size();
        int size2 = this._characters.size();
        int size3 = this._paragraphs.size();
        for (int i = this._charStart; i < size2; i++) {
            CHPX chpx = this._characters.get(i);
            int i2 = this._start;
            chpx.adjustForDelete(i2, this._end - i2);
        }
        for (int i3 = this._parStart; i3 < size3; i3++) {
            PAPX papx = this._paragraphs.get(i3);
            int i4 = this._start;
            papx.adjustForDelete(i4, this._end - i4);
        }
        for (int i5 = this._sectionStart; i5 < size; i5++) {
            SEPX sepx = this._sections.get(i5);
            int i6 = this._start;
            sepx.adjustForDelete(i6, this._end - i6);
        }
        HWPFDocumentCore hWPFDocumentCore = this._doc;
        if (hWPFDocumentCore instanceof HWPFDocument) {
            BookmarksImpl bookmarksImpl = (BookmarksImpl) ((HWPFDocument) hWPFDocumentCore).getBookmarks();
            int i7 = this._start;
            bookmarksImpl.afterDelete(i7, this._end - i7);
        }
        this._text.delete(this._start, this._end);
        Range range = this._parent;
        if (range != null) {
            range.adjustForInsert(-(this._end - this._start));
        }
        adjustFIB(-(this._end - this._start));
    }

    public CharacterRun getCharacterRun(int i) {
        short istd;
        initCharacterRuns();
        int i2 = this._charStart;
        if (i + i2 < this._charEnd) {
            CHPX chpx = this._characters.get(i + i2);
            if (chpx == null) {
                return null;
            }
            if (this instanceof Paragraph) {
                istd = ((Paragraph) this)._istd;
            } else {
                int[] findRange = findRange(this._paragraphs, Math.max(chpx.getStart(), this._start), Math.min(chpx.getEnd(), this._end));
                initParagraphs();
                if (Math.max(findRange[0], this._parStart) >= this._paragraphs.size()) {
                    return null;
                }
                istd = this._paragraphs.get(findRange[0]).getIstd();
            }
            return new CharacterRun(chpx, this._doc.getStyleSheet(), istd, this);
        }
        throw new IndexOutOfBoundsException("CHPX #" + i + " (" + (i + this._charStart) + ") not in range [" + this._charStart + "; " + this._charEnd + MotionUtils.f31762d);
    }

    public HWPFDocumentCore getDocument() {
        return this._doc;
    }

    public int getEndOffset() {
        return this._end;
    }

    public Paragraph getParagraph(int i) {
        initParagraphs();
        int i2 = this._parStart;
        if (i + i2 < this._parEnd) {
            return Paragraph.newParagraph(this, this._paragraphs.get(i + i2));
        }
        throw new IndexOutOfBoundsException("Paragraph #" + i + " (" + (i + this._parStart) + ") not in range [" + this._parStart + "; " + this._parEnd + MotionUtils.f31762d);
    }

    public Section getSection(int i) {
        initSections();
        return new Section(this._sections.get(i + this._sectionStart), this);
    }

    public int getStartOffset() {
        return this._start;
    }

    public Table getTable(Paragraph paragraph) {
        if (!paragraph.isInTable()) {
            throw new IllegalArgumentException("This paragraph doesn't belong to a table");
        }
        if (paragraph._parent != this) {
            throw new IllegalArgumentException("This paragraph is not a child of this range instance");
        }
        paragraph.initAll();
        int tableLevel = paragraph.getTableLevel();
        int i = paragraph._parStart;
        if (i != 0) {
            Paragraph newParagraph = Paragraph.newParagraph(this, this._paragraphs.get(i - 1));
            if (newParagraph.isInTable() && newParagraph.getTableLevel() == tableLevel && newParagraph._sectionEnd >= paragraph._sectionStart) {
                throw new IllegalArgumentException("This paragraph is not the first one in the table");
            }
        }
        Range overallRange = this._doc.getOverallRange();
        int size = this._paragraphs.size();
        while (i < size - 1) {
            int i2 = i + 1;
            Paragraph newParagraph2 = Paragraph.newParagraph(overallRange, this._paragraphs.get(i2));
            if (!newParagraph2.isInTable() || newParagraph2.getTableLevel() < tableLevel) {
                break;
            }
            i = i2;
        }
        initAll();
        if (i >= this._parEnd) {
            LOG.atWarn().log("The table's bounds [{}; {}) fall outside of this Range paragraphs numbers [{}; {})", Integer.valueOf(this._parStart), Unbox.box(i), Unbox.box(this._parStart), Unbox.box(this._parEnd));
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException("The table's end is negative, which isn't allowed!");
        }
        return new Table(paragraph.getStartOffset(), this._paragraphs.get(i).getEnd(), this, paragraph.getTableLevel());
    }

    public void initAll() {
        initCharacterRuns();
        initParagraphs();
        initSections();
    }

    public CharacterRun insertAfter(String str) {
        initAll();
        this._text.insert(this._end, str);
        this._doc.getCharacterTable().adjustForInsert(this._charEnd - 1, str.length());
        this._doc.getParagraphTable().adjustForInsert(this._parEnd - 1, str.length());
        this._doc.getSectionTable().adjustForInsert(this._sectionEnd - 1, str.length());
        HWPFDocumentCore hWPFDocumentCore = this._doc;
        if (hWPFDocumentCore instanceof HWPFDocument) {
            ((BookmarksImpl) ((HWPFDocument) hWPFDocumentCore).getBookmarks()).afterInsert(this._end, str.length());
        }
        adjustForInsert(str.length());
        sanityCheck();
        return getCharacterRun(numCharacterRuns() - 1);
    }

    public CharacterRun insertBefore(String str) {
        initAll();
        this._text.insert(this._start, str);
        this._doc.getCharacterTable().adjustForInsert(this._charStart, str.length());
        this._doc.getParagraphTable().adjustForInsert(this._parStart, str.length());
        this._doc.getSectionTable().adjustForInsert(this._sectionStart, str.length());
        HWPFDocumentCore hWPFDocumentCore = this._doc;
        if (hWPFDocumentCore instanceof HWPFDocument) {
            ((BookmarksImpl) ((HWPFDocument) hWPFDocumentCore).getBookmarks()).afterInsert(this._start, str.length());
        }
        adjustForInsert(str.length());
        adjustFIB(str.length());
        sanityCheck();
        return getCharacterRun(0);
    }

    public Table insertTableBefore(short s, int i) {
        ParagraphProperties paragraphProperties = new ParagraphProperties();
        paragraphProperties.setFInTable(true);
        paragraphProperties.setItap(1);
        int i2 = this._end;
        for (int i3 = 0; i3 < i; i3++) {
            Paragraph insertBefore = insertBefore(paragraphProperties, 4095);
            insertBefore.insertAfter(String.valueOf((char) 7));
            for (int i4 = 1; i4 < s; i4++) {
                insertBefore = insertBefore.insertAfter(paragraphProperties, 4095);
                insertBefore.insertAfter(String.valueOf((char) 7));
            }
            insertBefore.insertAfter(paragraphProperties, 4095, String.valueOf((char) 7)).setTableRowEnd(new TableProperties(s));
        }
        int i5 = this._end - i2;
        int i6 = this._start;
        return new Table(i6, i5 + i6, this, 1);
    }

    public int numCharacterRuns() {
        initCharacterRuns();
        return this._charEnd - this._charStart;
    }

    public int numParagraphs() {
        initParagraphs();
        return this._parEnd - this._parStart;
    }

    public int numSections() {
        initSections();
        return this._sectionEnd - this._sectionStart;
    }

    public void replaceText(String str, boolean z) {
        if (z) {
            int endOffset = getEndOffset();
            insertAfter(str);
            new Range(getStartOffset(), endOffset, this).delete();
        } else {
            int startOffset = getStartOffset();
            int endOffset2 = getEndOffset();
            insertBefore(str);
            new Range(startOffset + str.length(), endOffset2 + str.length(), this).delete();
        }
    }

    public void reset() {
        this._charRangeFound = false;
        this._parRangeFound = false;
        this._sectionRangeFound = false;
    }

    public boolean sanityCheck() {
        DocumentFormatException.check(this._start >= 0, "start can't be < 0");
        DocumentFormatException.check(this._start <= this._text.length(), "start can't be > text length");
        DocumentFormatException.check(this._end >= 0, "end can't be < 0");
        DocumentFormatException.check(this._end <= this._text.length(), "end can't be > text length");
        DocumentFormatException.check(this._start <= this._end, "start can't be > end");
        if (this._charRangeFound) {
            for (int i = this._charStart; i < this._charEnd; i++) {
                CHPX chpx = this._characters.get(i);
                DocumentFormatException.check(Math.max(this._start, chpx.getStart()) < Math.min(this._end, chpx.getEnd()), "left must be < right");
            }
        }
        if (this._parRangeFound) {
            for (int i2 = this._parStart; i2 < this._parEnd; i2++) {
                PAPX papx = this._paragraphs.get(i2);
                DocumentFormatException.check(Math.max(this._start, papx.getStart()) < Math.min(this._end, papx.getEnd()), "left must be < right");
            }
        }
        return true;
    }

    public String text() {
        return this._text.substring(this._start, this._end);
    }

    public String toString() {
        return "Range from " + getStartOffset() + " to " + getEndOffset() + " (chars)";
    }

    @Internal
    public void replaceText(String str, String str2, int i) {
        int startOffset = getStartOffset() + i;
        new Range(startOffset, str.length() + startOffset, this).insertBefore(str2);
        new Range(str2.length() + startOffset, startOffset + str.length() + str2.length(), this).delete();
    }

    private int[] findRange(List<? extends PropertyNode<?>> list, int i, int i2, int i3) {
        PropertyNode<?> propertyNode;
        if (list.size() == i) {
            return new int[]{i, i};
        }
        PropertyNode<?> propertyNode2 = list.get(i);
        while (true) {
            propertyNode = propertyNode2;
            if (propertyNode == null || (propertyNode.getEnd() <= i2 && i < list.size() - 1)) {
                i++;
                if (i >= list.size()) {
                    return new int[]{0, 0};
                }
                propertyNode2 = list.get(i);
            }
        }
        if (propertyNode.getStart() > i3) {
            return new int[]{0, 0};
        }
        if (propertyNode.getEnd() <= i2) {
            return new int[]{list.size(), list.size()};
        }
        for (int i4 = i; i4 < list.size(); i4++) {
            PropertyNode<?> propertyNode3 = list.get(i4);
            if (propertyNode3 != null && (propertyNode3.getStart() >= i3 || propertyNode3.getEnd() > i3)) {
                if (propertyNode3.getStart() < i3) {
                    return new int[]{i, i4 + 1};
                }
                return new int[]{i, i4};
            }
        }
        return new int[]{i, list.size()};
    }

    public Range(int i, int i2, Range range) {
        this._start = i;
        this._end = i2;
        this._doc = range._doc;
        this._sections = range._sections;
        this._paragraphs = range._paragraphs;
        this._characters = range._characters;
        this._text = range._text;
        this._parent = range;
        sanityCheckStartEnd();
        sanityCheck();
    }

    @Deprecated
    private CharacterRun insertAfter(String str, CharacterProperties characterProperties) {
        initAll();
        this._doc.getCharacterTable().insert(this._charEnd, this._end, new SprmBuffer(CharacterSprmCompressor.compressCharacterProperty(characterProperties, this._doc.getStyleSheet().getCharacterStyle(this._paragraphs.get(this._parEnd - 1).getIstd())), 0));
        this._charEnd++;
        return insertAfter(str);
    }

    @Deprecated
    private CharacterRun insertBefore(String str, CharacterProperties characterProperties) {
        initAll();
        this._doc.getCharacterTable().insert(this._charStart, this._start, new SprmBuffer(CharacterSprmCompressor.compressCharacterProperty(characterProperties, this._doc.getStyleSheet().getCharacterStyle(this._paragraphs.get(this._parStart).getIstd())), 0));
        return insertBefore(str);
    }

    public void replaceText(String str, String str2) {
        while (true) {
            int indexOf = text().indexOf(str);
            if (indexOf < 0) {
                return;
            } else {
                replaceText(str, str2, indexOf);
            }
        }
    }

    public Range(Range range) {
        this._parent = range._parent;
        this._start = range._start;
        this._end = range._end;
        this._doc = range._doc;
        this._sectionRangeFound = range._sectionRangeFound;
        List<SEPX> list = range._sections;
        this._sections = list == null ? null : (List) list.stream().map(new Function() { // from class: com.sunia.HTREnginev2.lcl
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((SEPX) obj).copy();
            }
        }).collect(Collectors.toList());
        this._sectionStart = range._sectionStart;
        this._sectionEnd = range._sectionEnd;
        this._parRangeFound = range._parRangeFound;
        List<PAPX> list2 = range._paragraphs;
        this._paragraphs = list2 == null ? null : (List) list2.stream().map(new Function() { // from class: com.sunia.HTREnginev2.mcl
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((PAPX) obj).copy();
            }
        }).collect(Collectors.toList());
        this._parStart = range._parStart;
        this._parEnd = range._parEnd;
        this._charRangeFound = range._charRangeFound;
        List<CHPX> list3 = range._characters;
        this._characters = list3 == null ? null : (List) list3.stream().map(new Function() { // from class: com.sunia.HTREnginev2.ncl
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CHPX) obj).copy();
            }
        }).collect(Collectors.toList());
        this._charStart = range._charStart;
        this._charEnd = range._charEnd;
        StringBuilder sb = range._text;
        this._text = sb != null ? new StringBuilder(sb) : null;
    }

    @Deprecated
    private Paragraph insertBefore(ParagraphProperties paragraphProperties, int i) {
        return insertBefore(paragraphProperties, i, "\r");
    }

    @Deprecated
    public Paragraph insertAfter(ParagraphProperties paragraphProperties, int i) {
        return insertAfter(paragraphProperties, i, "\r");
    }

    @Deprecated
    private Paragraph insertBefore(ParagraphProperties paragraphProperties, int i, String str) {
        initAll();
        StyleSheet styleSheet = this._doc.getStyleSheet();
        ParagraphProperties paragraphStyle = styleSheet.getParagraphStyle(i);
        CharacterProperties characterStyle = styleSheet.getCharacterStyle(i);
        byte[] compressParagraphProperty = ParagraphSprmCompressor.compressParagraphProperty(paragraphProperties, paragraphStyle);
        byte[] bArr = new byte[compressParagraphProperty.length + 2];
        LittleEndian.putShort(bArr, 0, (short) i);
        System.arraycopy(compressParagraphProperty, 0, bArr, 2, compressParagraphProperty.length);
        this._doc.getParagraphTable().insert(this._parStart, this._start, new SprmBuffer(bArr, 2));
        insertBefore(str, characterStyle);
        return getParagraph(0);
    }

    @Deprecated
    public Paragraph insertAfter(ParagraphProperties paragraphProperties, int i, String str) {
        initAll();
        StyleSheet styleSheet = this._doc.getStyleSheet();
        ParagraphProperties paragraphStyle = styleSheet.getParagraphStyle(i);
        CharacterProperties characterStyle = styleSheet.getCharacterStyle(i);
        byte[] compressParagraphProperty = ParagraphSprmCompressor.compressParagraphProperty(paragraphProperties, paragraphStyle);
        byte[] bArr = new byte[compressParagraphProperty.length + 2];
        LittleEndian.putShort(bArr, 0, (short) i);
        System.arraycopy(compressParagraphProperty, 0, bArr, 2, compressParagraphProperty.length);
        this._doc.getParagraphTable().insert(this._parEnd, this._end, new SprmBuffer(bArr, 2));
        this._parEnd++;
        insertAfter(str, characterStyle);
        return getParagraph(numParagraphs() - 1);
    }
}
