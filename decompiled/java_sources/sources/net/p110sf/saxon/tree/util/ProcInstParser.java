package net.p110sf.saxon.tree.util;

import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLFilterImpl;

/* loaded from: classes11.dex */
public class ProcInstParser {

    /* renamed from: net.sf.saxon.tree.util.ProcInstParser$a */
    /* loaded from: classes11.dex */
    public static class C18548a extends XMLFilterImpl {

        /* renamed from: e */
        public List<String> f102702e;

        /* renamed from: f */
        public String f102703f;

        public C18548a(String str, List<String> list) {
            this.f102703f = str;
            this.f102702e = list;
        }

        @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            String value = attributes.getValue(this.f102703f);
            if (value != null) {
                this.f102702e.add(value);
            }
        }
    }

    public static String getPseudoAttribute(String str, String str2) throws XPathException {
        try {
            ArrayList arrayList = new ArrayList();
            C18548a c18548a = new C18548a(str2, arrayList);
            SAXParserFactory newInstance = SAXParserFactory.newInstance();
            newInstance.setNamespaceAware(false);
            XMLReader xMLReader = newInstance.newSAXParser().getXMLReader();
            xMLReader.setContentHandler(c18548a);
            xMLReader.parse(new InputSource(new StringReader("<e " + str + XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT)));
            if (arrayList.isEmpty()) {
                return null;
            }
            return (String) arrayList.get(0);
        } catch (IOException | ParserConfigurationException | SAXException e) {
            throw new XPathException("Invalid syntax for pseudo-attributes: " + e.getMessage(), SaxonErrorCode.SXCH0005);
        }
    }
}
