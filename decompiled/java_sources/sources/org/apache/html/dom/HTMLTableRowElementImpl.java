package org.apache.html.dom;

import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.html.HTMLCollection;
import org.w3c.dom.html.HTMLElement;
import org.w3c.dom.html.HTMLTableCellElement;
import org.w3c.dom.html.HTMLTableElement;
import org.w3c.dom.html.HTMLTableRowElement;
import org.w3c.dom.html.HTMLTableSectionElement;

/* loaded from: classes12.dex */
public class HTMLTableRowElementImpl extends HTMLElementImpl implements HTMLTableRowElement {
    private static final long serialVersionUID = 5409562635656244263L;
    HTMLCollection _cells;

    public HTMLTableRowElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.apache.xerces.dom.ElementImpl, org.apache.xerces.dom.ParentNode, org.apache.xerces.dom.ChildNode, org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public Node cloneNode(boolean z) {
        HTMLTableRowElementImpl hTMLTableRowElementImpl = (HTMLTableRowElementImpl) super.cloneNode(z);
        hTMLTableRowElementImpl._cells = null;
        return hTMLTableRowElementImpl;
    }

    @Override // org.w3c.dom.html.HTMLTableRowElement
    public void deleteCell(int i) {
        for (Node firstChild = getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild instanceof HTMLTableCellElement) {
                if (i == 0) {
                    removeChild(firstChild);
                    return;
                }
                i--;
            }
        }
    }

    @Override // org.w3c.dom.html.HTMLTableRowElement
    public String getAlign() {
        return capitalize(getAttribute("align"));
    }

    @Override // org.w3c.dom.html.HTMLTableRowElement
    public String getBgColor() {
        return getAttribute("bgcolor");
    }

    @Override // org.w3c.dom.html.HTMLTableRowElement
    public HTMLCollection getCells() {
        if (this._cells == null) {
            this._cells = new HTMLCollectionImpl(this, (short) -3);
        }
        return this._cells;
    }

    @Override // org.w3c.dom.html.HTMLTableRowElement
    public String getCh() {
        String attribute = getAttribute("char");
        return (attribute == null || attribute.length() <= 1) ? attribute : attribute.substring(0, 1);
    }

    @Override // org.w3c.dom.html.HTMLTableRowElement
    public String getChOff() {
        return getAttribute("charoff");
    }

    @Override // org.w3c.dom.html.HTMLTableRowElement
    public int getRowIndex() {
        Node parentNode = getParentNode();
        if (parentNode instanceof HTMLTableSectionElement) {
            parentNode = parentNode.getParentNode();
        }
        if (parentNode instanceof HTMLTableElement) {
            return getRowIndex(parentNode);
        }
        return -1;
    }

    @Override // org.w3c.dom.html.HTMLTableRowElement
    public int getSectionRowIndex() {
        Node parentNode = getParentNode();
        if (parentNode instanceof HTMLTableSectionElement) {
            return getRowIndex(parentNode);
        }
        return -1;
    }

    @Override // org.w3c.dom.html.HTMLTableRowElement
    public String getVAlign() {
        return capitalize(getAttribute("valign"));
    }

    @Override // org.w3c.dom.html.HTMLTableRowElement
    public HTMLElement insertCell(int i) {
        HTMLTableCellElementImpl hTMLTableCellElementImpl = new HTMLTableCellElementImpl((HTMLDocumentImpl) getOwnerDocument(), "TD");
        for (Node firstChild = getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild instanceof HTMLTableCellElement) {
                if (i == 0) {
                    insertBefore(hTMLTableCellElementImpl, firstChild);
                    return hTMLTableCellElementImpl;
                }
                i--;
            }
        }
        appendChild(hTMLTableCellElementImpl);
        return hTMLTableCellElementImpl;
    }

    @Override // org.w3c.dom.html.HTMLTableRowElement
    public void setAlign(String str) {
        setAttribute("align", str);
    }

    @Override // org.w3c.dom.html.HTMLTableRowElement
    public void setBgColor(String str) {
        setAttribute("bgcolor", str);
    }

    @Override // org.w3c.dom.html.HTMLTableRowElement
    public void setCells(HTMLCollection hTMLCollection) {
        for (Node firstChild = getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            removeChild(firstChild);
        }
        int i = 0;
        while (true) {
            Node item = hTMLCollection.item(i);
            if (item == null) {
                return;
            }
            appendChild(item);
            i++;
        }
    }

    @Override // org.w3c.dom.html.HTMLTableRowElement
    public void setCh(String str) {
        if (str != null && str.length() > 1) {
            str = str.substring(0, 1);
        }
        setAttribute("char", str);
    }

    @Override // org.w3c.dom.html.HTMLTableRowElement
    public void setChOff(String str) {
        setAttribute("charoff", str);
    }

    @Override // org.w3c.dom.html.HTMLTableRowElement
    public void setRowIndex(int i) {
        Node parentNode = getParentNode();
        if (parentNode instanceof HTMLTableSectionElement) {
            parentNode = parentNode.getParentNode();
        }
        if (parentNode instanceof HTMLTableElement) {
            ((HTMLTableElementImpl) parentNode).insertRowX(i, this);
        }
    }

    @Override // org.w3c.dom.html.HTMLTableRowElement
    public void setSectionRowIndex(int i) {
        Node parentNode = getParentNode();
        if (parentNode instanceof HTMLTableSectionElement) {
            ((HTMLTableSectionElementImpl) parentNode).insertRowX(i, this);
        }
    }

    @Override // org.w3c.dom.html.HTMLTableRowElement
    public void setVAlign(String str) {
        setAttribute("valign", str);
    }

    public int getRowIndex(Node node) {
        NodeList elementsByTagName = ((HTMLElement) node).getElementsByTagName("TR");
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            if (elementsByTagName.item(i) == this) {
                return i;
            }
        }
        return -1;
    }
}
