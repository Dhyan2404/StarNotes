package com.sun.org.apache.html.internal.dom;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xerces.internal.dom.ElementImpl;
import java.util.Locale;
import org.w3c.dom.Attr;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.html.HTMLElement;
import org.w3c.dom.html.HTMLFormElement;

/* loaded from: classes10.dex */
public class HTMLElementImpl extends ElementImpl implements HTMLElement {
    public HTMLElementImpl(HTMLDocumentImpl hTMLDocumentImpl, String str) {
        super(hTMLDocumentImpl, str.toUpperCase(Locale.ENGLISH));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String capitalize(String str) {
        char[] charArray = str.toCharArray();
        if (charArray.length <= 0) {
            return str;
        }
        charArray[0] = Character.toUpperCase(charArray[0]);
        for (int i = 1; i < charArray.length; i++) {
            charArray[i] = Character.toLowerCase(charArray[i]);
        }
        return String.valueOf(charArray);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ElementImpl, org.w3c.dom.Element
    public String getAttribute(String str) {
        return super.getAttribute(str.toLowerCase(Locale.ENGLISH));
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ElementImpl, org.w3c.dom.Element
    public String getAttributeNS(String str, String str2) {
        return (str == null || str.length() <= 0) ? super.getAttribute(str2.toLowerCase(Locale.ENGLISH)) : super.getAttributeNS(str, str2);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ElementImpl, org.w3c.dom.Element
    public Attr getAttributeNode(String str) {
        return super.getAttributeNode(str.toLowerCase(Locale.ENGLISH));
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ElementImpl, org.w3c.dom.Element
    public Attr getAttributeNodeNS(String str, String str2) {
        return (str == null || str.length() <= 0) ? super.getAttributeNode(str2.toLowerCase(Locale.ENGLISH)) : super.getAttributeNodeNS(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean getBinary(String str) {
        return getAttributeNode(str) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getCapitalized(String str) {
        String attribute = getAttribute(str);
        if (attribute == null) {
            return attribute;
        }
        char[] charArray = attribute.toCharArray();
        if (charArray.length <= 0) {
            return attribute;
        }
        charArray[0] = Character.toUpperCase(charArray[0]);
        for (int i = 1; i < charArray.length; i++) {
            charArray[i] = Character.toLowerCase(charArray[i]);
        }
        return String.valueOf(charArray);
    }

    @Override // org.w3c.dom.html.HTMLElement
    public String getClassName() {
        return getAttribute("class");
    }

    @Override // org.w3c.dom.html.HTMLElement
    public String getDir() {
        return getAttribute(CouchFieldKey.KEY_DIR);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ElementImpl, org.w3c.dom.Element
    public final NodeList getElementsByTagName(String str) {
        return super.getElementsByTagName(str.toUpperCase(Locale.ENGLISH));
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ElementImpl, org.w3c.dom.Element
    public final NodeList getElementsByTagNameNS(String str, String str2) {
        return (str == null || str.length() <= 0) ? super.getElementsByTagName(str2.toUpperCase(Locale.ENGLISH)) : super.getElementsByTagNameNS(str, str2.toUpperCase(Locale.ENGLISH));
    }

    public HTMLFormElement getForm() {
        for (Node parentNode = getParentNode(); parentNode != null; parentNode = parentNode.getParentNode()) {
            if (parentNode instanceof HTMLFormElement) {
                return (HTMLFormElement) parentNode;
            }
        }
        return null;
    }

    @Override // org.w3c.dom.html.HTMLElement
    public String getId() {
        return getAttribute("id");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getInteger(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    @Override // org.w3c.dom.html.HTMLElement
    public String getLang() {
        return getAttribute("lang");
    }

    @Override // org.w3c.dom.html.HTMLElement
    public String getTitle() {
        return getAttribute("title");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAttribute(String str, boolean z) {
        if (z) {
            setAttribute(str, str);
        } else {
            removeAttribute(str);
        }
    }

    @Override // org.w3c.dom.html.HTMLElement
    public void setClassName(String str) {
        setAttribute("class", str);
    }

    @Override // org.w3c.dom.html.HTMLElement
    public void setDir(String str) {
        setAttribute(CouchFieldKey.KEY_DIR, str);
    }

    @Override // org.w3c.dom.html.HTMLElement
    public void setId(String str) {
        setAttribute("id", str);
    }

    @Override // org.w3c.dom.html.HTMLElement
    public void setLang(String str) {
        setAttribute("lang", str);
    }

    @Override // org.w3c.dom.html.HTMLElement
    public void setTitle(String str) {
        setAttribute("title", str);
    }
}
