package org.apache.wml.dom;

import com.sun.org.apache.xalan.internal.templates.Constants;
import org.apache.wml.WMLInputElement;

/* loaded from: classes13.dex */
public class WMLInputElementImpl extends WMLElementImpl implements WMLInputElement {
    private static final long serialVersionUID = 2897319793637966619L;

    public WMLInputElementImpl(WMLDocumentImpl wMLDocumentImpl, String str) {
        super(wMLDocumentImpl, str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public String getClassName() {
        return getAttribute("class");
    }

    @Override // org.apache.wml.WMLInputElement
    public boolean getEmptyOk() {
        return getAttribute("emptyok", false);
    }

    @Override // org.apache.wml.WMLInputElement
    public String getFormat() {
        return getAttribute(Constants.ATTRNAME_FORMAT);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public String getId() {
        return getAttribute("id");
    }

    @Override // org.apache.wml.WMLInputElement
    public int getMaxLength() {
        return getAttribute("maxlength", 0);
    }

    @Override // org.apache.wml.WMLInputElement
    public String getName() {
        return getAttribute("name");
    }

    @Override // org.apache.wml.WMLInputElement
    public int getSize() {
        return getAttribute("size", 0);
    }

    @Override // org.apache.wml.WMLInputElement
    public int getTabIndex() {
        return getAttribute("tabindex", 0);
    }

    @Override // org.apache.wml.WMLInputElement
    public String getTitle() {
        return getAttribute("title");
    }

    @Override // org.apache.wml.WMLInputElement
    public String getType() {
        return getAttribute("type");
    }

    @Override // org.apache.wml.WMLInputElement
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

    @Override // org.apache.wml.WMLInputElement
    public void setEmptyOk(boolean z) {
        setAttribute("emptyok", z);
    }

    @Override // org.apache.wml.WMLInputElement
    public void setFormat(String str) {
        setAttribute(Constants.ATTRNAME_FORMAT, str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLElement
    public void setId(String str) {
        setAttribute("id", str);
    }

    @Override // org.apache.wml.WMLInputElement
    public void setMaxLength(int i) {
        setAttribute("maxlength", i);
    }

    @Override // org.apache.wml.WMLInputElement
    public void setName(String str) {
        setAttribute("name", str);
    }

    @Override // org.apache.wml.WMLInputElement
    public void setSize(int i) {
        setAttribute("size", i);
    }

    @Override // org.apache.wml.WMLInputElement
    public void setTabIndex(int i) {
        setAttribute("tabindex", i);
    }

    @Override // org.apache.wml.WMLInputElement
    public void setTitle(String str) {
        setAttribute("title", str);
    }

    @Override // org.apache.wml.WMLInputElement
    public void setType(String str) {
        setAttribute("type", str);
    }

    @Override // org.apache.wml.WMLInputElement
    public void setValue(String str) {
        setAttribute("value", str);
    }

    @Override // org.apache.wml.dom.WMLElementImpl, org.apache.wml.WMLAElement
    public void setXmlLang(String str) {
        setAttribute("xml:lang", str);
    }
}
