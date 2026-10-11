package org.apache.poi.hssf.usermodel;

import java.util.Iterator;
import org.apache.poi.hssf.model.InternalWorkbook;
import org.apache.poi.hssf.record.LabelSSTRecord;
import org.apache.poi.hssf.record.common.FormatRun;
import org.apache.poi.hssf.record.common.UnicodeString;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.RichTextString;

/* loaded from: classes12.dex */
public final class HSSFRichTextString implements Comparable<HSSFRichTextString>, RichTextString {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final short NO_FONT = 0;
    private InternalWorkbook _book;
    private LabelSSTRecord _record;
    private UnicodeString _string;

    public HSSFRichTextString() {
        this("");
    }

    private void addToSSTIfRequired() {
        InternalWorkbook internalWorkbook = this._book;
        if (internalWorkbook != null) {
            int addSSTString = internalWorkbook.addSSTString(this._string);
            this._record.setSSTIndex(addSSTString);
            this._string = this._book.getSSTString(addSSTString);
        }
    }

    private UnicodeString cloneStringIfRequired() {
        InternalWorkbook internalWorkbook = this._book;
        UnicodeString unicodeString = this._string;
        return internalWorkbook == null ? unicodeString : unicodeString.copy();
    }

    @Override // org.apache.poi.ss.usermodel.RichTextString
    public void applyFont(int i, int i2, short s) {
        if (i <= i2) {
            if (i < 0 || i2 > length()) {
                throw new IllegalArgumentException("Start and end index not in range.");
            }
            if (i == i2) {
                return;
            }
            short fontAtIndex = i2 != length() ? getFontAtIndex(i2) : (short) 0;
            UnicodeString cloneStringIfRequired = cloneStringIfRequired();
            this._string = cloneStringIfRequired;
            Iterator<FormatRun> formatIterator = cloneStringIfRequired.formatIterator();
            if (formatIterator != null) {
                while (formatIterator.hasNext()) {
                    FormatRun next = formatIterator.next();
                    if (next.getCharacterPos() >= i && next.getCharacterPos() < i2) {
                        formatIterator.remove();
                    }
                }
            }
            this._string.addFormatRun(new FormatRun((short) i, s));
            if (i2 != length()) {
                this._string.addFormatRun(new FormatRun((short) i2, fontAtIndex));
            }
            addToSSTIfRequired();
            return;
        }
        throw new IllegalArgumentException("Start index must be less than end index.");
    }

    @Override // org.apache.poi.ss.usermodel.RichTextString
    public void clearFormatting() {
        UnicodeString cloneStringIfRequired = cloneStringIfRequired();
        this._string = cloneStringIfRequired;
        cloneStringIfRequired.clearFormatting();
        addToSSTIfRequired();
    }

    public boolean equals(Object obj) {
        if (obj instanceof HSSFRichTextString) {
            return this._string.equals(((HSSFRichTextString) obj)._string);
        }
        return false;
    }

    public short getFontAtIndex(int i) {
        int formatRunCount = this._string.getFormatRunCount();
        FormatRun formatRun = null;
        int i2 = 0;
        while (i2 < formatRunCount) {
            FormatRun formatRun2 = this._string.getFormatRun(i2);
            if (formatRun2.getCharacterPos() > i) {
                break;
            }
            i2++;
            formatRun = formatRun2;
        }
        if (formatRun == null) {
            return (short) 0;
        }
        return formatRun.getFontIndex();
    }

    public short getFontOfFormattingRun(int i) {
        return this._string.getFormatRun(i).getFontIndex();
    }

    @Override // org.apache.poi.ss.usermodel.RichTextString
    public int getIndexOfFormattingRun(int i) {
        return this._string.getFormatRun(i).getCharacterPos();
    }

    public UnicodeString getRawUnicodeString() {
        return this._string;
    }

    @Override // org.apache.poi.ss.usermodel.RichTextString
    public String getString() {
        return this._string.getString();
    }

    public UnicodeString getUnicodeString() {
        return cloneStringIfRequired();
    }

    public int hashCode() {
        return 42;
    }

    @Override // org.apache.poi.ss.usermodel.RichTextString
    public int length() {
        return this._string.getCharCount();
    }

    @Override // org.apache.poi.ss.usermodel.RichTextString
    public int numFormattingRuns() {
        return this._string.getFormatRunCount();
    }

    public void setUnicodeString(UnicodeString unicodeString) {
        this._string = unicodeString;
    }

    public void setWorkbookReferences(InternalWorkbook internalWorkbook, LabelSSTRecord labelSSTRecord) {
        this._book = internalWorkbook;
        this._record = labelSSTRecord;
    }

    public String toString() {
        return this._string.toString();
    }

    public HSSFRichTextString(String str) {
        if (str == null) {
            this._string = new UnicodeString("");
        } else {
            this._string = new UnicodeString(str);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(HSSFRichTextString hSSFRichTextString) {
        return this._string.compareTo(hSSFRichTextString._string);
    }

    public HSSFRichTextString(InternalWorkbook internalWorkbook, LabelSSTRecord labelSSTRecord) {
        setWorkbookReferences(internalWorkbook, labelSSTRecord);
        this._string = internalWorkbook.getSSTString(labelSSTRecord.getSSTIndex());
    }

    @Override // org.apache.poi.ss.usermodel.RichTextString
    public void applyFont(int i, int i2, Font font) {
        applyFont(i, i2, (short) font.getIndex());
    }

    @Override // org.apache.poi.ss.usermodel.RichTextString
    public void applyFont(Font font) {
        applyFont(0, this._string.getCharCount(), font);
    }

    @Override // org.apache.poi.ss.usermodel.RichTextString
    public void applyFont(short s) {
        applyFont(0, this._string.getCharCount(), s);
    }
}
