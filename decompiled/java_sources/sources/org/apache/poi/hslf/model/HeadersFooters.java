package org.apache.poi.hslf.model;

import org.apache.poi.hslf.record.CString;
import org.apache.poi.hslf.record.Document;
import org.apache.poi.hslf.record.HeadersFootersContainer;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.hslf.usermodel.HSLFSheet;
import org.apache.poi.hslf.usermodel.HSLFSimpleShape;
import org.apache.poi.hslf.usermodel.HSLFSlideMaster;
import org.apache.poi.hslf.usermodel.HSLFSlideShow;
import org.apache.poi.hslf.usermodel.HSLFTextShape;
import org.apache.poi.sl.usermodel.Placeholder;

/* loaded from: classes12.dex */
public final class HeadersFooters {
    private static final String _ppt2007tag = "___PPT12";
    private final HeadersFootersContainer _container;
    private final boolean _ppt2007;
    private final HSLFSheet _sheet;

    public HeadersFooters(HSLFSlideShow hSLFSlideShow, short s) {
        this((HSLFSheet) hSLFSlideShow.getSlideMasters().get(0), s);
    }

    private String getPlaceholderText(Placeholder placeholder, CString cString) {
        if (!this._ppt2007) {
            if (cString == null) {
                return null;
            }
            return cString.getText();
        }
        HSLFSimpleShape placeholder2 = this._sheet.getPlaceholder(placeholder);
        String text = placeholder2 instanceof HSLFTextShape ? ((HSLFTextShape) placeholder2).getText() : null;
        if ("*".equals(text)) {
            return null;
        }
        return text;
    }

    private boolean isVisible(int i, Placeholder placeholder) {
        if (!this._ppt2007) {
            return this._container.getHeadersFootersAtom().getFlag(i);
        }
        HSLFSimpleShape placeholder2 = this._sheet.getPlaceholder(placeholder);
        return (placeholder2 instanceof HSLFTextShape) && ((HSLFTextShape) placeholder2).getText() != null;
    }

    private void setFlag(int i, boolean z) {
        this._container.getHeadersFootersAtom().setFlag(i, z);
    }

    public HeadersFootersContainer getContainer() {
        return this._container;
    }

    public int getDateTimeFormat() {
        return this._container.getHeadersFootersAtom().getFormatId();
    }

    public String getDateTimeText() {
        HeadersFootersContainer headersFootersContainer = this._container;
        return getPlaceholderText(Placeholder.DATETIME, headersFootersContainer == null ? null : headersFootersContainer.getUserDateAtom());
    }

    public CString getFooterAtom() {
        return this._container.getFooterAtom();
    }

    public String getFooterText() {
        HeadersFootersContainer headersFootersContainer = this._container;
        return getPlaceholderText(Placeholder.FOOTER, headersFootersContainer == null ? null : headersFootersContainer.getFooterAtom());
    }

    public CString getHeaderAtom() {
        return this._container.getHeaderAtom();
    }

    public String getHeaderText() {
        HeadersFootersContainer headersFootersContainer = this._container;
        return getPlaceholderText(Placeholder.HEADER, headersFootersContainer == null ? null : headersFootersContainer.getHeaderAtom());
    }

    public CString getUserDateAtom() {
        return this._container.getUserDateAtom();
    }

    public boolean isDateTimeVisible() {
        return isVisible(1, Placeholder.DATETIME);
    }

    public boolean isFooterVisible() {
        return isVisible(32, Placeholder.FOOTER);
    }

    public boolean isHeaderVisible() {
        return isVisible(16, Placeholder.HEADER);
    }

    public boolean isPpt2007() {
        return this._ppt2007;
    }

    public boolean isSlideNumberVisible() {
        return isVisible(8, Placeholder.SLIDE_NUMBER);
    }

    public boolean isTodayDateVisible() {
        return isVisible(2, Placeholder.DATETIME);
    }

    public boolean isUserDateVisible() {
        return isVisible(4, Placeholder.DATETIME);
    }

    public void setDateTimeFormat(int i) {
        this._container.getHeadersFootersAtom().setFormatId(i);
    }

    public void setDateTimeText(String str) {
        setUserDateVisible(true);
        setDateTimeVisible(true);
        CString userDateAtom = this._container.getUserDateAtom();
        if (userDateAtom == null) {
            userDateAtom = this._container.addUserDateAtom();
        }
        userDateAtom.setText(str);
    }

    public void setDateTimeVisible(boolean z) {
        setFlag(1, z);
    }

    public void setFooterVisible(boolean z) {
        setFlag(32, z);
    }

    public void setFootersText(String str) {
        setFooterVisible(true);
        CString footerAtom = this._container.getFooterAtom();
        if (footerAtom == null) {
            footerAtom = this._container.addFooterAtom();
        }
        footerAtom.setText(str);
    }

    public void setHeaderText(String str) {
        setHeaderVisible(true);
        CString headerAtom = this._container.getHeaderAtom();
        if (headerAtom == null) {
            headerAtom = this._container.addHeaderAtom();
        }
        headerAtom.setText(str);
    }

    public void setHeaderVisible(boolean z) {
        setFlag(16, z);
    }

    public void setSlideNumberVisible(boolean z) {
        setFlag(8, z);
    }

    public void setTodayDateVisible(boolean z) {
        setFlag(2, z);
    }

    public void setUserDateVisible(boolean z) {
        setFlag(4, z);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    public HeadersFooters(HSLFSheet hSLFSheet, short s) {
        this._sheet = hSLFSheet;
        ?? slideShow = hSLFSheet.getSlideShow();
        Document documentRecord = slideShow.getDocumentRecord();
        int i = 0;
        this._ppt2007 = _ppt2007tag.equals(((HSLFSlideMaster) slideShow.getSlideMasters().get(0)).getProgrammableTag());
        HeadersFootersContainer headersFootersContainer = (HeadersFootersContainer) hSLFSheet.getSheetContainer().findFirstOfType(RecordTypes.HeadersFooters.typeID);
        if (headersFootersContainer == null) {
            Record[] childRecords = documentRecord.getChildRecords();
            int length = childRecords.length;
            while (true) {
                if (i >= length) {
                    break;
                }
                Record record = childRecords[i];
                if (record instanceof HeadersFootersContainer) {
                    HeadersFootersContainer headersFootersContainer2 = (HeadersFootersContainer) record;
                    if (headersFootersContainer2.getOptions() == s) {
                        headersFootersContainer = headersFootersContainer2;
                        break;
                    }
                }
                i++;
            }
        }
        if (headersFootersContainer == null) {
            headersFootersContainer = new HeadersFootersContainer(s);
            documentRecord.addChildAfter(headersFootersContainer, documentRecord.findFirstOfType(RecordTypes.List.typeID));
        }
        this._container = headersFootersContainer;
    }
}
