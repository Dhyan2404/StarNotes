package org.apache.wml.dom;

import org.apache.wml.WMLTableElement;

/* loaded from: classes13.dex */
public class WMLTableElementImpl extends WMLElementImpl implements WMLTableElement {
    private static final long serialVersionUID = 7676208849347355339L;

    public WMLTableElementImpl(WMLDocumentImpl wMLDocumentImpl, String str) {
        super(wMLDocumentImpl, str);
    }

    @Override // org.apache.wml.WMLTableElement
    public String getAlign() {
        return getAttribute("align");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public String getClassName() {
        return getAttribute("class");
    }

    @Override // org.apache.wml.WMLTableElement
    public int getColumns() {
        return getAttribute("columns", 0);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public String getId() {
        return getAttribute("id");
    }

    @Override // org.apache.wml.WMLTableElement
    public String getTitle() {
        return getAttribute("title");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLAElement
    public String getXmlLang() {
        return getAttribute("xml:lang");
    }

    @Override // org.apache.wml.WMLTableElement
    public void setAlign(String str) {
        setAttribute("align", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setClassName(String str) {
        setAttribute("class", str);
    }

    @Override // org.apache.wml.WMLTableElement
    public void setColumns(int i) {
        setAttribute("columns", i);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setId(String str) {
        setAttribute("id", str);
    }

    @Override // org.apache.wml.WMLTableElement
    public void setTitle(String str) {
        setAttribute("title", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLAElement
    public void setXmlLang(String str) {
        setAttribute("xml:lang", str);
    }
}
