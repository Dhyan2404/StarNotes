package org.apache.poi.xwpf.usermodel;

import java.util.Iterator;
import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdnRef;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR;

/* loaded from: classes13.dex */
public class XWPFFootnote extends XWPFAbstractFootnoteEndnote {
    @Internal
    public XWPFFootnote(CTFtnEdn cTFtnEdn, XWPFAbstractFootnotesEndnotes xWPFAbstractFootnotesEndnotes) {
        super(cTFtnEdn, xWPFAbstractFootnotesEndnotes);
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFAbstractFootnoteEndnote
    public void ensureFootnoteRef(XWPFParagraph xWPFParagraph) {
        boolean z = false;
        XWPFRun xWPFRun = !xWPFParagraph.runsIsEmpty() ? xWPFParagraph.getRuns().get(0) : null;
        if (xWPFRun == null) {
            xWPFRun = xWPFParagraph.createRun();
        }
        CTR ctr = xWPFRun.getCTR();
        Iterator<CTFtnEdnRef> it2 = ctr.getFootnoteReferenceList().iterator();
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
        ctr.addNewFootnoteRef();
    }

    @Internal
    public XWPFFootnote(XWPFDocument xWPFDocument, CTFtnEdn cTFtnEdn) {
        super(xWPFDocument, cTFtnEdn);
    }
}
