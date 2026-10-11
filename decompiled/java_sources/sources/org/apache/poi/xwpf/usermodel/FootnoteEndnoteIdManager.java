package org.apache.poi.xwpf.usermodel;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes13.dex */
public class FootnoteEndnoteIdManager {
    private XWPFDocument document;

    public FootnoteEndnoteIdManager(XWPFDocument xWPFDocument) {
        this.document = xWPFDocument;
    }

    public BigInteger nextId() {
        ArrayList arrayList = new ArrayList();
        Iterator<XWPFFootnote> it2 = this.document.getFootnotes().iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getId());
        }
        Iterator<XWPFEndnote> it3 = this.document.getEndnotes().iterator();
        while (it3.hasNext()) {
            arrayList.add(it3.next().getId());
        }
        int size = arrayList.size();
        BigInteger valueOf = BigInteger.valueOf(size);
        while (arrayList.contains(valueOf)) {
            size++;
            valueOf = BigInteger.valueOf(size);
        }
        return valueOf;
    }
}
