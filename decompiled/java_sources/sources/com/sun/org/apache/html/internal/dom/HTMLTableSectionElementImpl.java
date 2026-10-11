package com.sun.org.apache.html.internal.dom;

import org.w3c.dom.Node;
import org.w3c.dom.html.HTMLCollection;
import org.w3c.dom.html.HTMLElement;
import org.w3c.dom.html.HTMLTableRowElement;
import org.w3c.dom.html.HTMLTableSectionElement;

/* loaded from: classes10.dex */
public class HTMLTableSectionElementImpl extends HTMLElementImpl implements HTMLTableSectionElement {
    private HTMLCollectionImpl _rows;

    public HTMLTableSectionElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLTableSectionElement
    public void deleteRow(int i) {
        deleteRowX(i);
    }

    public int deleteRowX(int i) {
        for (Node firstChild = getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild instanceof HTMLTableRowElement) {
                if (i == 0) {
                    removeChild(firstChild);
                    return -1;
                }
                i--;
            }
        }
        return i;
    }

    @Override // org.w3c.dom.html.HTMLTableSectionElement
    public String getAlign() {
        return capitalize(getAttribute("align"));
    }

    @Override // org.w3c.dom.html.HTMLTableSectionElement
    public String getCh() {
        String attribute = getAttribute("char");
        return (attribute == null || attribute.length() <= 1) ? attribute : attribute.substring(0, 1);
    }

    @Override // org.w3c.dom.html.HTMLTableSectionElement
    public String getChOff() {
        return getAttribute("charoff");
    }

    @Override // org.w3c.dom.html.HTMLTableSectionElement
    public HTMLCollection getRows() {
        if (this._rows == null) {
            this._rows = new HTMLCollectionImpl(this, (short) 7);
        }
        return this._rows;
    }

    @Override // org.w3c.dom.html.HTMLTableSectionElement
    public String getVAlign() {
        return capitalize(getAttribute("valign"));
    }

    @Override // org.w3c.dom.html.HTMLTableSectionElement
    public HTMLElement insertRow(int i) {
        HTMLTableRowElementImpl hTMLTableRowElementImpl = new HTMLTableRowElementImpl((HTMLDocumentImpl) getOwnerDocument(), "TR");
        hTMLTableRowElementImpl.insertCell(0);
        if (insertRowX(i, hTMLTableRowElementImpl) >= 0) {
            appendChild(hTMLTableRowElementImpl);
        }
        return hTMLTableRowElementImpl;
    }

    public int insertRowX(int i, HTMLTableRowElementImpl hTMLTableRowElementImpl) {
        for (Node firstChild = getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild instanceof HTMLTableRowElement) {
                if (i == 0) {
                    insertBefore(hTMLTableRowElementImpl, firstChild);
                    return -1;
                }
                i--;
            }
        }
        return i;
    }

    @Override // org.w3c.dom.html.HTMLTableSectionElement
    public void setAlign(String str) {
        setAttribute("align", str);
    }

    @Override // org.w3c.dom.html.HTMLTableSectionElement
    public void setCh(String str) {
        if (str != null && str.length() > 1) {
            str = str.substring(0, 1);
        }
        setAttribute("char", str);
    }

    @Override // org.w3c.dom.html.HTMLTableSectionElement
    public void setChOff(String str) {
        setAttribute("charoff", str);
    }

    @Override // org.w3c.dom.html.HTMLTableSectionElement
    public void setVAlign(String str) {
        setAttribute("valign", str);
    }
}
