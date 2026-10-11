package net.p110sf.saxon.event;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.XMLFilterImpl;

/* loaded from: classes11.dex */
public class RepairingContentHandler extends XMLFilterImpl {
    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (str != null && !str.isEmpty() && !str3.contains(":")) {
            startPrefixMapping("", str);
        }
        super.startElement(str, str2, str3, attributes);
    }
}
