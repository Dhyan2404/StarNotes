package org.apache.xmlbeans.impl.store;

import org.w3c.dom.CDATASection;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public class CdataNode extends TextNode implements CDATASection {
    public CdataNode(Locale locale) {
        super(locale);
    }

    @Override // org.apache.xmlbeans.impl.store.TextNode
    public String name() {
        return "#cdata-section";
    }

    @Override // org.apache.xmlbeans.impl.store.TextNode, org.apache.xmlbeans.impl.store.DomImpl.Dom
    public int nodeType() {
        return 4;
    }
}
