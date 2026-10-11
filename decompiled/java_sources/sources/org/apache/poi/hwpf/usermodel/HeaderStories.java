package org.apache.poi.hwpf.usermodel;

import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.model.FileInformationBlock;
import org.apache.poi.hwpf.model.GenericPropertyNode;
import org.apache.poi.hwpf.model.PlexOfCps;
import org.apache.poi.hwpf.model.SubdocumentType;

/* loaded from: classes12.dex */
public final class HeaderStories {
    private final Range headerStories;
    private PlexOfCps plcfHdd;
    private boolean stripFields;

    public HeaderStories(HWPFDocument hWPFDocument) {
        this.headerStories = hWPFDocument.getHeaderStoryRange();
        FileInformationBlock fileInformationBlock = hWPFDocument.getFileInformationBlock();
        if (fileInformationBlock.getSubdocumentTextStreamLength(SubdocumentType.HEADER) == 0 || fileInformationBlock.getPlcfHddSize() == 0) {
            return;
        }
        this.plcfHdd = new PlexOfCps(hWPFDocument.getTableStream(), fileInformationBlock.getPlcfHddOffset(), fileInformationBlock.getPlcfHddSize(), 0);
    }

    @Deprecated
    private String getAt(int i) {
        PlexOfCps plexOfCps = this.plcfHdd;
        if (plexOfCps == null) {
            return null;
        }
        GenericPropertyNode property = plexOfCps.getProperty(i);
        if (property.getStart() == property.getEnd() || property.getEnd() < property.getStart()) {
            return "";
        }
        String text = this.headerStories.text();
        String substring = text.substring(Math.min(property.getStart(), text.length()), Math.min(property.getEnd(), text.length()));
        return this.stripFields ? Range.stripFields(substring) : substring.equals("\r\r") ? "" : substring;
    }

    private Range getSubrangeAt(int i) {
        PlexOfCps plexOfCps = this.plcfHdd;
        if (plexOfCps == null) {
            return null;
        }
        GenericPropertyNode property = plexOfCps.getProperty(i);
        if (property.getStart() == property.getEnd() || property.getEnd() < property.getStart()) {
            return null;
        }
        int endOffset = this.headerStories.getEndOffset() - this.headerStories.getStartOffset();
        return new Range(this.headerStories.getStartOffset() + Math.min(property.getStart(), endOffset), this.headerStories.getStartOffset() + Math.min(property.getEnd(), endOffset), this.headerStories);
    }

    public boolean areFieldsStripped() {
        return this.stripFields;
    }

    @Deprecated
    public String getEndnoteContNote() {
        return getAt(5);
    }

    public Range getEndnoteContNoteSubrange() {
        return getSubrangeAt(5);
    }

    @Deprecated
    public String getEndnoteContSeparator() {
        return getAt(4);
    }

    public Range getEndnoteContSeparatorSubrange() {
        return getSubrangeAt(4);
    }

    @Deprecated
    public String getEndnoteSeparator() {
        return getAt(3);
    }

    public Range getEndnoteSeparatorSubrange() {
        return getSubrangeAt(3);
    }

    @Deprecated
    public String getEvenFooter() {
        return getAt(8);
    }

    public Range getEvenFooterSubrange() {
        return getSubrangeAt(8);
    }

    @Deprecated
    public String getEvenHeader() {
        return getAt(6);
    }

    public Range getEvenHeaderSubrange() {
        return getSubrangeAt(6);
    }

    @Deprecated
    public String getFirstFooter() {
        return getAt(11);
    }

    public Range getFirstFooterSubrange() {
        return getSubrangeAt(11);
    }

    @Deprecated
    public String getFirstHeader() {
        return getAt(10);
    }

    public Range getFirstHeaderSubrange() {
        return getSubrangeAt(10);
    }

    public String getFooter(int i) {
        String evenFooter;
        String firstFooter;
        return (i != 1 || (firstFooter = getFirstFooter()) == null || firstFooter.isEmpty()) ? (i % 2 != 0 || (evenFooter = getEvenFooter()) == null || evenFooter.isEmpty()) ? getOddFooter() : evenFooter : firstFooter;
    }

    @Deprecated
    public String getFootnoteContNote() {
        return getAt(2);
    }

    public Range getFootnoteContNoteSubrange() {
        return getSubrangeAt(2);
    }

    @Deprecated
    public String getFootnoteContSeparator() {
        return getAt(1);
    }

    public Range getFootnoteContSeparatorSubrange() {
        return getSubrangeAt(1);
    }

    @Deprecated
    public String getFootnoteSeparator() {
        return getAt(0);
    }

    public Range getFootnoteSeparatorSubrange() {
        return getSubrangeAt(0);
    }

    public String getHeader(int i) {
        String evenHeader;
        String firstHeader;
        return (i != 1 || (firstHeader = getFirstHeader()) == null || firstHeader.isEmpty()) ? (i % 2 != 0 || (evenHeader = getEvenHeader()) == null || evenHeader.isEmpty()) ? getOddHeader() : evenHeader : firstHeader;
    }

    @Deprecated
    public String getOddFooter() {
        return getAt(9);
    }

    public Range getOddFooterSubrange() {
        return getSubrangeAt(9);
    }

    @Deprecated
    public String getOddHeader() {
        return getAt(7);
    }

    public Range getOddHeaderSubrange() {
        return getSubrangeAt(7);
    }

    public PlexOfCps getPlcfHdd() {
        return this.plcfHdd;
    }

    public Range getRange() {
        return this.headerStories;
    }

    public void setAreFieldsStripped(boolean z) {
        this.stripFields = z;
    }
}
