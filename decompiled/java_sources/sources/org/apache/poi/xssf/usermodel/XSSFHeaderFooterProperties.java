package org.apache.poi.xssf.usermodel;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHeaderFooter;

/* loaded from: classes13.dex */
public class XSSFHeaderFooterProperties {
    private final CTHeaderFooter headerFooter;

    public XSSFHeaderFooterProperties(CTHeaderFooter cTHeaderFooter) {
        this.headerFooter = cTHeaderFooter;
    }

    public boolean getAlignWithMargins() {
        return getHeaderFooter().isSetAlignWithMargins() && getHeaderFooter().getAlignWithMargins();
    }

    public boolean getDifferentFirst() {
        return getHeaderFooter().isSetDifferentFirst() && getHeaderFooter().getDifferentFirst();
    }

    public boolean getDifferentOddEven() {
        return getHeaderFooter().isSetDifferentOddEven() && getHeaderFooter().getDifferentOddEven();
    }

    @Internal
    public CTHeaderFooter getHeaderFooter() {
        return this.headerFooter;
    }

    public boolean getScaleWithDoc() {
        return getHeaderFooter().isSetScaleWithDoc() && getHeaderFooter().getScaleWithDoc();
    }

    public void removeAlignWithMargins() {
        if (getHeaderFooter().isSetAlignWithMargins()) {
            getHeaderFooter().unsetAlignWithMargins();
        }
    }

    public void removeDifferentFirst() {
        if (getHeaderFooter().isSetDifferentFirst()) {
            getHeaderFooter().unsetDifferentFirst();
        }
    }

    public void removeDifferentOddEven() {
        if (getHeaderFooter().isSetDifferentOddEven()) {
            getHeaderFooter().unsetDifferentOddEven();
        }
    }

    public void removeScaleWithDoc() {
        if (getHeaderFooter().isSetScaleWithDoc()) {
            getHeaderFooter().unsetScaleWithDoc();
        }
    }

    public void setAlignWithMargins(boolean z) {
        getHeaderFooter().setAlignWithMargins(z);
    }

    public void setDifferentFirst(boolean z) {
        getHeaderFooter().setDifferentFirst(z);
    }

    public void setDifferentOddEven(boolean z) {
        getHeaderFooter().setDifferentOddEven(z);
    }

    public void setScaleWithDoc(boolean z) {
        getHeaderFooter().setScaleWithDoc(z);
    }
}
