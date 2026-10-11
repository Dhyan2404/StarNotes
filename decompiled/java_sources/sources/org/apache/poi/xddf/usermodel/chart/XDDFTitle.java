package org.apache.poi.xddf.usermodel.chart;

import org.apache.poi.xddf.usermodel.text.TextContainer;
import org.apache.poi.xddf.usermodel.text.XDDFRunProperties;
import org.apache.poi.xddf.usermodel.text.XDDFTextBody;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTTitle;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTTx;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraph;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties;

/* loaded from: classes13.dex */
public class XDDFTitle {
    private final TextContainer parent;
    private final CTTitle title;

    public XDDFTitle(TextContainer textContainer, CTTitle cTTitle) {
        this.parent = textContainer;
        this.title = cTTitle;
    }

    public XDDFTextBody getBody() {
        if (!this.title.isSetTx()) {
            this.title.addNewTx();
        }
        CTTx tx = this.title.getTx();
        if (tx.isSetStrRef()) {
            tx.unsetStrRef();
        }
        if (!tx.isSetRich()) {
            tx.addNewRich();
        }
        return new XDDFTextBody(this.parent, tx.getRich());
    }

    public XDDFRunProperties getOrAddTextProperties() {
        CTTextBody addNewTxPr;
        if (this.title.isSetTxPr()) {
            addNewTxPr = this.title.getTxPr();
        } else {
            addNewTxPr = this.title.addNewTxPr();
        }
        return new XDDFRunProperties(getOrAddTextProperties(addNewTxPr));
    }

    public void setOverlay(Boolean bool) {
        if (bool == null) {
            if (this.title.isSetOverlay()) {
                this.title.unsetOverlay();
            }
        } else if (this.title.isSetOverlay()) {
            this.title.getOverlay().setVal(bool.booleanValue());
        } else {
            this.title.addNewOverlay().setVal(bool.booleanValue());
        }
    }

    public void setText(String str) {
        if (str == null) {
            if (this.title.isSetTx()) {
                this.title.unsetTx();
            }
        } else {
            if (!this.title.isSetLayout()) {
                this.title.addNewLayout();
            }
            getBody().setText(str);
        }
    }

    private CTTextCharacterProperties getOrAddTextProperties(CTTextBody cTTextBody) {
        CTTextParagraph addNewP;
        CTTextParagraphProperties addNewPPr;
        if (cTTextBody.getBodyPr() == null) {
            cTTextBody.addNewBodyPr();
        }
        if (cTTextBody.sizeOfPArray() > 0) {
            addNewP = cTTextBody.getPArray(0);
        } else {
            addNewP = cTTextBody.addNewP();
        }
        if (addNewP.isSetPPr()) {
            addNewPPr = addNewP.getPPr();
        } else {
            addNewPPr = addNewP.addNewPPr();
        }
        if (addNewPPr.isSetDefRPr()) {
            return addNewPPr.getDefRPr();
        }
        return addNewPPr.addNewDefRPr();
    }
}
