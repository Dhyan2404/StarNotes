package org.apache.xerces.jaxp;

import java.util.Hashtable;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.validation.Schema;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;

/* loaded from: classes13.dex */
public class SAXParserFactoryImpl extends SAXParserFactory {

    /* renamed from: e */
    public static final String f113298e = "http://xml.org/sax/features/namespaces";

    /* renamed from: f */
    public static final String f113299f = "http://xml.org/sax/features/validation";

    /* renamed from: g */
    public static final String f113300g = "http://apache.org/xml/features/xinclude";

    /* renamed from: a */
    public Hashtable f113301a;

    /* renamed from: b */
    public Schema f113302b;

    /* renamed from: c */
    public boolean f113303c;

    /* renamed from: d */
    public boolean f113304d = false;

    /* renamed from: a */
    public final SAXParserImpl m70494a() throws ParserConfigurationException, SAXNotRecognizedException, SAXNotSupportedException {
        try {
            return new SAXParserImpl(this, this.f113301a);
        } catch (SAXNotRecognizedException e) {
            throw e;
        } catch (SAXNotSupportedException e2) {
            throw e2;
        } catch (SAXException e3) {
            throw new ParserConfigurationException(e3.getMessage());
        }
    }

    @Override // javax.xml.parsers.SAXParserFactory
    public boolean getFeature(String str) throws ParserConfigurationException, SAXNotRecognizedException, SAXNotSupportedException {
        str.getClass();
        return str.equals("http://javax.xml.XMLConstants/feature/secure-processing") ? this.f113304d : str.equals("http://xml.org/sax/features/namespaces") ? isNamespaceAware() : str.equals("http://xml.org/sax/features/validation") ? isValidating() : str.equals("http://apache.org/xml/features/xinclude") ? isXIncludeAware() : m70494a().getXMLReader().getFeature(str);
    }

    @Override // javax.xml.parsers.SAXParserFactory
    public Schema getSchema() {
        return this.f113302b;
    }

    @Override // javax.xml.parsers.SAXParserFactory
    public boolean isXIncludeAware() {
        return this.f113303c;
    }

    @Override // javax.xml.parsers.SAXParserFactory
    public SAXParser newSAXParser() throws ParserConfigurationException {
        try {
            return new SAXParserImpl(this, this.f113301a, this.f113304d);
        } catch (SAXException e) {
            throw new ParserConfigurationException(e.getMessage());
        }
    }

    @Override // javax.xml.parsers.SAXParserFactory
    public void setFeature(String str, boolean z) throws ParserConfigurationException, SAXNotRecognizedException, SAXNotSupportedException {
        str.getClass();
        if (str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            this.f113304d = z;
            return;
        }
        if (str.equals("http://xml.org/sax/features/namespaces")) {
            setNamespaceAware(z);
            return;
        }
        if (str.equals("http://xml.org/sax/features/validation")) {
            setValidating(z);
            return;
        }
        if (str.equals("http://apache.org/xml/features/xinclude")) {
            setXIncludeAware(z);
            return;
        }
        if (this.f113301a == null) {
            this.f113301a = new Hashtable();
        }
        this.f113301a.put(str, z ? Boolean.TRUE : Boolean.FALSE);
        try {
            m70494a();
        } catch (SAXNotRecognizedException e) {
            this.f113301a.remove(str);
            throw e;
        } catch (SAXNotSupportedException e2) {
            this.f113301a.remove(str);
            throw e2;
        }
    }

    @Override // javax.xml.parsers.SAXParserFactory
    public void setSchema(Schema schema) {
        this.f113302b = schema;
    }

    @Override // javax.xml.parsers.SAXParserFactory
    public void setXIncludeAware(boolean z) {
        this.f113303c = z;
    }
}
