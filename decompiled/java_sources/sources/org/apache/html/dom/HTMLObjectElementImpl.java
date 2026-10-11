package org.apache.html.dom;

import com.sun.org.apache.xalan.internal.templates.Constants;
import org.w3c.dom.html.HTMLObjectElement;

/* loaded from: classes12.dex */
public class HTMLObjectElementImpl extends HTMLElementImpl implements HTMLObjectElement, HTMLFormControl {
    private static final long serialVersionUID = 2276953229932965067L;

    public HTMLObjectElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public String getAlign() {
        return capitalize(getAttribute("align"));
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public String getArchive() {
        return getAttribute(Constants.ATTRNAME_ARCHIVE);
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public String getBorder() {
        return getAttribute("border");
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public String getCode() {
        return getAttribute("code");
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public String getCodeBase() {
        return getAttribute(Constants.ATTRNAME_CODEBASE);
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public String getCodeType() {
        return getAttribute("codetype");
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public String getData() {
        return getAttribute("data");
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public boolean getDeclare() {
        return getBinary("declare");
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public String getHeight() {
        return getAttribute("height");
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public String getHspace() {
        return getAttribute("hspace");
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public String getName() {
        return getAttribute("name");
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public String getStandby() {
        return getAttribute("standby");
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public int getTabIndex() {
        try {
            return Integer.parseInt(getAttribute("tabindex"));
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public String getType() {
        return getAttribute("type");
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public String getUseMap() {
        return getAttribute("useMap");
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public String getVspace() {
        return getAttribute("vspace");
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public String getWidth() {
        return getAttribute("width");
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public void setAlign(String str) {
        setAttribute("align", str);
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public void setArchive(String str) {
        setAttribute(Constants.ATTRNAME_ARCHIVE, str);
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public void setBorder(String str) {
        setAttribute("border", str);
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public void setCode(String str) {
        setAttribute("code", str);
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public void setCodeBase(String str) {
        setAttribute(Constants.ATTRNAME_CODEBASE, str);
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public void setCodeType(String str) {
        setAttribute("codetype", str);
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public void setData(String str) {
        setAttribute("data", str);
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public void setDeclare(boolean z) {
        setAttribute("declare", z);
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public void setHeight(String str) {
        setAttribute("height", str);
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public void setHspace(String str) {
        setAttribute("hspace", str);
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public void setName(String str) {
        setAttribute("name", str);
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public void setStandby(String str) {
        setAttribute("standby", str);
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public void setTabIndex(int i) {
        setAttribute("tabindex", String.valueOf(i));
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public void setType(String str) {
        setAttribute("type", str);
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public void setUseMap(String str) {
        setAttribute("useMap", str);
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public void setVspace(String str) {
        setAttribute("vspace", str);
    }

    @Override // org.w3c.dom.html.HTMLObjectElement
    public void setWidth(String str) {
        setAttribute("width", str);
    }
}
