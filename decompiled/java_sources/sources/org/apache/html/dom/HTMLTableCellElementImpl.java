package org.apache.html.dom;

import com.couchbase.lite.internal.core.C4Replicator;
import org.w3c.dom.Node;
import org.w3c.dom.html.HTMLTableCellElement;
import org.w3c.dom.html.HTMLTableRowElement;

/* loaded from: classes12.dex */
public class HTMLTableCellElementImpl extends HTMLElementImpl implements HTMLTableCellElement {
    private static final long serialVersionUID = -2406518157464313922L;

    public HTMLTableCellElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public String getAbbr() {
        return getAttribute("abbr");
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public String getAlign() {
        return capitalize(getAttribute("align"));
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public String getAxis() {
        return getAttribute("axis");
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public String getBgColor() {
        return getAttribute("bgcolor");
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public int getCellIndex() {
        Node parentNode = getParentNode();
        if (!(parentNode instanceof HTMLTableRowElement)) {
            return -1;
        }
        int i = 0;
        for (Node firstChild = parentNode.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild instanceof HTMLTableCellElement) {
                if (firstChild == this) {
                    return i;
                }
                i++;
            }
        }
        return -1;
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public String getCh() {
        String attribute = getAttribute("char");
        return (attribute == null || attribute.length() <= 1) ? attribute : attribute.substring(0, 1);
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public String getChOff() {
        return getAttribute("charoff");
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public int getColSpan() {
        return getInteger(getAttribute("colspan"));
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public String getHeaders() {
        return getAttribute(C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS);
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public String getHeight() {
        return getAttribute("height");
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public boolean getNoWrap() {
        return getBinary("nowrap");
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public int getRowSpan() {
        return getInteger(getAttribute("rowspan"));
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public String getScope() {
        return getAttribute("scope");
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public String getVAlign() {
        return capitalize(getAttribute("valign"));
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public String getWidth() {
        return getAttribute("width");
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public void setAbbr(String str) {
        setAttribute("abbr", str);
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public void setAlign(String str) {
        setAttribute("align", str);
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public void setAxis(String str) {
        setAttribute("axis", str);
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public void setBgColor(String str) {
        setAttribute("bgcolor", str);
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public void setCellIndex(int i) {
        Node parentNode = getParentNode();
        if (parentNode instanceof HTMLTableRowElement) {
            for (Node firstChild = parentNode.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
                if (firstChild instanceof HTMLTableCellElement) {
                    if (i == 0) {
                        if (this != firstChild) {
                            parentNode.insertBefore(this, firstChild);
                            return;
                        }
                        return;
                    }
                    i--;
                }
            }
        }
        parentNode.appendChild(this);
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public void setCh(String str) {
        if (str != null && str.length() > 1) {
            str = str.substring(0, 1);
        }
        setAttribute("char", str);
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public void setChOff(String str) {
        setAttribute("charoff", str);
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public void setColSpan(int i) {
        setAttribute("colspan", String.valueOf(i));
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public void setHeaders(String str) {
        setAttribute(C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS, str);
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public void setHeight(String str) {
        setAttribute("height", str);
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public void setNoWrap(boolean z) {
        setAttribute("nowrap", z);
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public void setRowSpan(int i) {
        setAttribute("rowspan", String.valueOf(i));
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public void setScope(String str) {
        setAttribute("scope", str);
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public void setVAlign(String str) {
        setAttribute("valign", str);
    }

    @Override // org.w3c.dom.html.HTMLTableCellElement
    public void setWidth(String str) {
        setAttribute("width", str);
    }
}
