package com.sun.org.apache.html.internal.dom;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.w3c.dom.Node;
import org.w3c.dom.html.HTMLCollection;
import org.w3c.dom.html.HTMLElement;
import org.w3c.dom.html.HTMLTableCaptionElement;
import org.w3c.dom.html.HTMLTableElement;
import org.w3c.dom.html.HTMLTableRowElement;
import org.w3c.dom.html.HTMLTableSectionElement;

/* loaded from: classes10.dex */
public class HTMLTableElementImpl extends HTMLElementImpl implements HTMLTableElement {
    private HTMLCollectionImpl _bodies;
    private HTMLCollectionImpl _rows;

    public HTMLTableElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str);
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public synchronized HTMLElement createCaption() {
        HTMLTableCaptionElement caption = getCaption();
        if (caption != null) {
            return caption;
        }
        HTMLTableCaptionElementImpl hTMLTableCaptionElementImpl = new HTMLTableCaptionElementImpl((HTMLDocumentImpl) getOwnerDocument(), "CAPTION");
        appendChild(hTMLTableCaptionElementImpl);
        return hTMLTableCaptionElementImpl;
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public synchronized HTMLElement createTFoot() {
        HTMLTableSectionElement tFoot = getTFoot();
        if (tFoot != null) {
            return tFoot;
        }
        HTMLTableSectionElementImpl hTMLTableSectionElementImpl = new HTMLTableSectionElementImpl((HTMLDocumentImpl) getOwnerDocument(), "TFOOT");
        appendChild(hTMLTableSectionElementImpl);
        return hTMLTableSectionElementImpl;
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public synchronized HTMLElement createTHead() {
        HTMLTableSectionElement tHead = getTHead();
        if (tHead != null) {
            return tHead;
        }
        HTMLTableSectionElementImpl hTMLTableSectionElementImpl = new HTMLTableSectionElementImpl((HTMLDocumentImpl) getOwnerDocument(), "THEAD");
        appendChild(hTMLTableSectionElementImpl);
        return hTMLTableSectionElementImpl;
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public synchronized void deleteCaption() {
        HTMLTableCaptionElement caption = getCaption();
        if (caption != null) {
            removeChild(caption);
        }
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public synchronized void deleteRow(int i) {
        for (Node firstChild = getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild instanceof HTMLTableRowElement) {
                if (i == 0) {
                    removeChild(firstChild);
                    return;
                }
                i--;
            } else if ((firstChild instanceof HTMLTableSectionElementImpl) && (i = ((HTMLTableSectionElementImpl) firstChild).deleteRowX(i)) < 0) {
                return;
            }
        }
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public synchronized void deleteTFoot() {
        HTMLTableSectionElement tFoot = getTFoot();
        if (tFoot != null) {
            removeChild(tFoot);
        }
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public synchronized void deleteTHead() {
        HTMLTableSectionElement tHead = getTHead();
        if (tHead != null) {
            removeChild(tHead);
        }
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public String getAlign() {
        return capitalize(getAttribute("align"));
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public String getBgColor() {
        return getAttribute("bgcolor");
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public String getBorder() {
        return getAttribute("border");
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public synchronized HTMLTableCaptionElement getCaption() {
        for (Node firstChild = getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if ((firstChild instanceof HTMLTableCaptionElement) && firstChild.getNodeName().equals("CAPTION")) {
                return (HTMLTableCaptionElement) firstChild;
            }
        }
        return null;
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public String getCellPadding() {
        return getAttribute("cellpadding");
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public String getCellSpacing() {
        return getAttribute("cellspacing");
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public String getFrame() {
        return capitalize(getAttribute(TypedValues.AttributesType.S_FRAME));
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public HTMLCollection getRows() {
        if (this._rows == null) {
            this._rows = new HTMLCollectionImpl(this, (short) 7);
        }
        return this._rows;
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public String getRules() {
        return capitalize(getAttribute("rules"));
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public String getSummary() {
        return getAttribute("summary");
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public HTMLCollection getTBodies() {
        if (this._bodies == null) {
            this._bodies = new HTMLCollectionImpl(this, (short) -2);
        }
        return this._bodies;
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public synchronized HTMLTableSectionElement getTFoot() {
        for (Node firstChild = getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if ((firstChild instanceof HTMLTableSectionElement) && firstChild.getNodeName().equals("TFOOT")) {
                return (HTMLTableSectionElement) firstChild;
            }
        }
        return null;
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public synchronized HTMLTableSectionElement getTHead() {
        for (Node firstChild = getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if ((firstChild instanceof HTMLTableSectionElement) && firstChild.getNodeName().equals("THEAD")) {
                return (HTMLTableSectionElement) firstChild;
            }
        }
        return null;
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public String getWidth() {
        return getAttribute("width");
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public HTMLElement insertRow(int i) {
        HTMLTableRowElementImpl hTMLTableRowElementImpl = new HTMLTableRowElementImpl((HTMLDocumentImpl) getOwnerDocument(), "TR");
        insertRowX(i, hTMLTableRowElementImpl);
        return hTMLTableRowElementImpl;
    }

    public void insertRowX(int i, HTMLTableRowElementImpl hTMLTableRowElementImpl) {
        Node node = null;
        for (Node firstChild = getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild instanceof HTMLTableRowElement) {
                if (i == 0) {
                    insertBefore(hTMLTableRowElementImpl, firstChild);
                    return;
                }
            } else if (firstChild instanceof HTMLTableSectionElementImpl) {
                i = ((HTMLTableSectionElementImpl) firstChild).insertRowX(i, hTMLTableRowElementImpl);
                if (i < 0) {
                    return;
                } else {
                    node = firstChild;
                }
            } else {
                continue;
            }
        }
        if (node != null) {
            node.appendChild(hTMLTableRowElementImpl);
        } else {
            appendChild(hTMLTableRowElementImpl);
        }
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public void setAlign(String str) {
        setAttribute("align", str);
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public void setBgColor(String str) {
        setAttribute("bgcolor", str);
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public void setBorder(String str) {
        setAttribute("border", str);
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public synchronized void setCaption(HTMLTableCaptionElement hTMLTableCaptionElement) {
        if (hTMLTableCaptionElement != null) {
            if (!hTMLTableCaptionElement.getTagName().equals("CAPTION")) {
                throw new IllegalArgumentException("HTM016 Argument 'caption' is not an element of type <CAPTION>.");
            }
        }
        deleteCaption();
        if (hTMLTableCaptionElement != null) {
            appendChild(hTMLTableCaptionElement);
        }
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public void setCellPadding(String str) {
        setAttribute("cellpadding", str);
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public void setCellSpacing(String str) {
        setAttribute("cellspacing", str);
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public void setFrame(String str) {
        setAttribute(TypedValues.AttributesType.S_FRAME, str);
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public void setRules(String str) {
        setAttribute("rules", str);
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public void setSummary(String str) {
        setAttribute("summary", str);
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public synchronized void setTFoot(HTMLTableSectionElement hTMLTableSectionElement) {
        if (hTMLTableSectionElement != null) {
            if (!hTMLTableSectionElement.getTagName().equals("TFOOT")) {
                throw new IllegalArgumentException("HTM018 Argument 'tFoot' is not an element of type <TFOOT>.");
            }
        }
        deleteTFoot();
        if (hTMLTableSectionElement != null) {
            appendChild(hTMLTableSectionElement);
        }
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public synchronized void setTHead(HTMLTableSectionElement hTMLTableSectionElement) {
        if (hTMLTableSectionElement != null) {
            if (!hTMLTableSectionElement.getTagName().equals("THEAD")) {
                throw new IllegalArgumentException("HTM017 Argument 'tHead' is not an element of type <THEAD>.");
            }
        }
        deleteTHead();
        if (hTMLTableSectionElement != null) {
            appendChild(hTMLTableSectionElement);
        }
    }

    @Override // org.w3c.dom.html.HTMLTableElement
    public void setWidth(String str) {
        setAttribute("width", str);
    }
}
