package com.sun.org.apache.xerces.internal.jaxp;

import java.util.Hashtable;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.validation.Schema;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;

/* loaded from: classes10.dex */
public class SAXParserFactoryImpl extends SAXParserFactory {
    private static final String NAMESPACES_FEATURE = "http://xml.org/sax/features/namespaces";
    private static final String VALIDATION_FEATURE = "http://xml.org/sax/features/validation";
    private static final String XINCLUDE_FEATURE = "http://apache.org/xml/features/xinclude";
    private boolean fSecureProcess = true;
    private Hashtable features;
    private Schema grammar;
    private boolean isXIncludeAware;

    private boolean getFromFeatures(String str) {
        Object obj;
        Hashtable hashtable = this.features;
        if (hashtable == null || (obj = hashtable.get(str)) == null) {
            return false;
        }
        return Boolean.valueOf(obj.toString()).booleanValue();
    }

    private SAXParserImpl newSAXParserImpl() throws ParserConfigurationException, SAXNotRecognizedException, SAXNotSupportedException {
        try {
            return new SAXParserImpl(this, this.features);
        } catch (SAXNotRecognizedException e) {
            throw e;
        } catch (SAXNotSupportedException e2) {
            throw e2;
        } catch (SAXException e3) {
            throw new ParserConfigurationException(e3.getMessage());
        }
    }

    private void putInFeatures(String str, boolean z) {
        if (this.features == null) {
            this.features = new Hashtable();
        }
        this.features.put(str, z ? Boolean.TRUE : Boolean.FALSE);
    }

    @Override // javax.xml.parsers.SAXParserFactory
    public boolean getFeature(String str) throws ParserConfigurationException, SAXNotRecognizedException, SAXNotSupportedException {
        str.getClass();
        return str.equals("http://javax.xml.XMLConstants/feature/secure-processing") ? this.fSecureProcess : newSAXParserImpl().getXMLReader().getFeature(str);
    }

    @Override // javax.xml.parsers.SAXParserFactory
    public Schema getSchema() {
        return this.grammar;
    }

    @Override // javax.xml.parsers.SAXParserFactory
    public boolean isNamespaceAware() {
        return getFromFeatures("http://xml.org/sax/features/namespaces");
    }

    @Override // javax.xml.parsers.SAXParserFactory
    public boolean isValidating() {
        return getFromFeatures("http://xml.org/sax/features/validation");
    }

    @Override // javax.xml.parsers.SAXParserFactory
    public boolean isXIncludeAware() {
        return getFromFeatures("http://apache.org/xml/features/xinclude");
    }

    @Override // javax.xml.parsers.SAXParserFactory
    public SAXParser newSAXParser() throws ParserConfigurationException {
        try {
            return new SAXParserImpl(this, this.features, this.fSecureProcess);
        } catch (SAXException e) {
            throw new ParserConfigurationException(e.getMessage());
        }
    }

    @Override // javax.xml.parsers.SAXParserFactory
    public void setFeature(String str, boolean z) throws ParserConfigurationException, SAXNotRecognizedException, SAXNotSupportedException {
        str.getClass();
        if (str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            this.fSecureProcess = z;
            return;
        }
        putInFeatures(str, z);
        try {
            newSAXParserImpl();
        } catch (SAXNotRecognizedException e) {
            this.features.remove(str);
            throw e;
        } catch (SAXNotSupportedException e2) {
            this.features.remove(str);
            throw e2;
        }
    }

    @Override // javax.xml.parsers.SAXParserFactory
    public void setNamespaceAware(boolean z) {
        putInFeatures("http://xml.org/sax/features/namespaces", z);
    }

    @Override // javax.xml.parsers.SAXParserFactory
    public void setSchema(Schema schema) {
        this.grammar = schema;
    }

    @Override // javax.xml.parsers.SAXParserFactory
    public void setValidating(boolean z) {
        putInFeatures("http://xml.org/sax/features/validation", z);
    }

    @Override // javax.xml.parsers.SAXParserFactory
    public void setXIncludeAware(boolean z) {
        putInFeatures("http://apache.org/xml/features/xinclude", z);
    }
}
