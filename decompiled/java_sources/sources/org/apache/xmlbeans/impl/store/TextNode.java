package org.apache.xmlbeans.impl.store;

import com.sun.org.apache.xpath.internal.compiler.PsuedoNames;
import org.w3c.dom.Text;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public class TextNode extends CharNode implements Text {
    public TextNode(Locale locale) {
        super(locale);
    }

    @Override // org.w3c.dom.Text
    public String getWholeText() {
        return DomImpl._text_getWholeText(this);
    }

    @Override // org.w3c.dom.Text
    public boolean isElementContentWhitespace() {
        return DomImpl._text_isElementContentWhitespace(this);
    }

    public String name() {
        return PsuedoNames.PSEUDONAME_TEXT;
    }

    @Override // org.apache.xmlbeans.impl.store.DomImpl.Dom
    public int nodeType() {
        return 3;
    }

    @Override // org.w3c.dom.Text
    public Text replaceWholeText(String str) {
        return DomImpl._text_replaceWholeText(this, str);
    }

    @Override // org.w3c.dom.Text
    public Text splitText(int i) {
        return DomImpl._text_splitText(this, i);
    }
}
