package org.apache.poi.xwpf.usermodel;

import java.util.Iterator;
import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdnRef;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR;

/* loaded from: classes13.dex */
public class XWPFEndnote extends XWPFAbstractFootnoteEndnote {
    public XWPFEndnote() {
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFAbstractFootnoteEndnote
    public void ensureFootnoteRef(XWPFParagraph xWPFParagraph) {
        boolean z = false;
        XWPFRun xWPFRun = !xWPFParagraph.runsIsEmpty() ? xWPFParagraph.getRuns().get(0) : null;
        if (xWPFRun == null) {
            xWPFRun = xWPFParagraph.createRun();
        }
        CTR ctr = xWPFRun.getCTR();
        Iterator<CTFtnEdnRef> it2 = ctr.getEndnoteReferenceList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            if (getId().equals(it2.next().getId())) {
                z = true;
                break;
            }
        }
        if (z) {
            return;
        }
        ctr.addNewRPr().addNewRStyle().setVal("FootnoteReference");
        ctr.addNewEndnoteRef();
    }

    @Internal
    public XWPFEndnote(XWPFDocument xWPFDocument, CTFtnEdn cTFtnEdn) {
        super(xWPFDocument, cTFtnEdn);
    }

    @Internal
    public XWPFEndnote(CTFtnEdn cTFtnEdn, XWPFAbstractFootnotesEndnotes xWPFAbstractFootnotesEndnotes) {
        super(cTFtnEdn, xWPFAbstractFootnotesEndnotes);
    }
}
