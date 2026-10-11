package org.apache.wml.dom;

import com.sun.org.apache.xalan.internal.templates.Constants;
import org.apache.wml.WMLSelectElement;

/* loaded from: classes13.dex */
public class WMLSelectElementImpl extends WMLElementImpl implements WMLSelectElement {
    private static final long serialVersionUID = 6489112443257247261L;

    public WMLSelectElementImpl(WMLDocumentImpl wMLDocumentImpl, String str) {
        super(wMLDocumentImpl, str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public String getClassName() {
        return getAttribute("class");
    }

    @Override // org.apache.wml.WMLSelectElement
    public String getIName() {
        return getAttribute("iname");
    }

    @Override // org.apache.wml.WMLSelectElement
    public String getIValue() {
        return getAttribute("ivalue");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public String getId() {
        return getAttribute("id");
    }

    @Override // org.apache.wml.WMLSelectElement
    public boolean getMultiple() {
        return getAttribute(Constants.ATTRVAL_MULTI, false);
    }

    @Override // org.apache.wml.WMLSelectElement
    public String getName() {
        return getAttribute("name");
    }

    @Override // org.apache.wml.WMLSelectElement
    public int getTabIndex() {
        return getAttribute("tabindex", 0);
    }

    @Override // org.apache.wml.WMLSelectElement
    public String getTitle() {
        return getAttribute("title");
    }

    @Override // org.apache.wml.WMLSelectElement
    public String getValue() {
        return getAttribute("value");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLAElement
    public String getXmlLang() {
        return getAttribute("xml:lang");
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setClassName(String str) {
        setAttribute("class", str);
    }

    @Override // org.apache.wml.WMLSelectElement
    public void setIName(String str) {
        setAttribute("iname", str);
    }

    @Override // org.apache.wml.WMLSelectElement
    public void setIValue(String str) {
        setAttribute("ivalue", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setId(String str) {
        setAttribute("id", str);
    }

    @Override // org.apache.wml.WMLSelectElement
    public void setMultiple(boolean z) {
        setAttribute(Constants.ATTRVAL_MULTI, z);
    }

    @Override // org.apache.wml.WMLSelectElement
    public void setName(String str) {
        setAttribute("name", str);
    }

    @Override // org.apache.wml.WMLSelectElement
    public void setTabIndex(int i) {
        setAttribute("tabindex", i);
    }

    @Override // org.apache.wml.WMLSelectElement
    public void setTitle(String str) {
        setAttribute("title", str);
    }

    @Override // org.apache.wml.WMLSelectElement
    public void setValue(String str) {
        setAttribute("value", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLAElement
    public void setXmlLang(String str) {
        setAttribute("xml:lang", str);
    }
}
