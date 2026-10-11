package com.sun.org.apache.xerces.internal.jaxp;

import com.sun.org.apache.xerces.internal.parsers.DOMParser;
import com.sun.org.apache.xerces.internal.util.SAXMessageFormatter;
import java.util.Hashtable;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.validation.Schema;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;

/* loaded from: classes10.dex */
public class DocumentBuilderFactoryImpl extends DocumentBuilderFactory {
    private Hashtable attributes;
    private boolean fSecureProcess = true;
    private Hashtable features;
    private Schema grammar;
    private boolean isXIncludeAware;

    @Override // javax.xml.parsers.DocumentBuilderFactory
    public Object getAttribute(String str) throws IllegalArgumentException {
        Object obj;
        Hashtable hashtable = this.attributes;
        if (hashtable != null && (obj = hashtable.get(str)) != null) {
            return obj;
        }
        DOMParser dOMParser = null;
        try {
            dOMParser = new DocumentBuilderImpl(this, this.attributes, this.features).getDOMParser();
            return dOMParser.getProperty(str);
        } catch (SAXException e) {
            try {
                return dOMParser.getFeature(str) ? Boolean.TRUE : Boolean.FALSE;
            } catch (SAXException unused) {
                throw new IllegalArgumentException(e.getMessage());
            }
        }
    }

    @Override // javax.xml.parsers.DocumentBuilderFactory
    public boolean getFeature(String str) throws ParserConfigurationException {
        Object obj;
        if (str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            return this.fSecureProcess;
        }
        Hashtable hashtable = this.features;
        if (hashtable != null && (obj = hashtable.get(str)) != null) {
            return ((Boolean) obj).booleanValue();
        }
        try {
            return new DocumentBuilderImpl(this, this.attributes, this.features).getDOMParser().getFeature(str);
        } catch (SAXException e) {
            throw new ParserConfigurationException(e.getMessage());
        }
    }

    @Override // javax.xml.parsers.DocumentBuilderFactory
    public Schema getSchema() {
        return this.grammar;
    }

    @Override // javax.xml.parsers.DocumentBuilderFactory
    public boolean isXIncludeAware() {
        return this.isXIncludeAware;
    }

    @Override // javax.xml.parsers.DocumentBuilderFactory
    public DocumentBuilder newDocumentBuilder() throws ParserConfigurationException {
        Hashtable hashtable;
        if (this.grammar != null && (hashtable = this.attributes) != null) {
            if (hashtable.containsKey("http://java.sun.com/xml/jaxp/properties/schemaLanguage")) {
                throw new ParserConfigurationException(SAXMessageFormatter.formatMessage(null, "schema-already-specified", new Object[]{"http://java.sun.com/xml/jaxp/properties/schemaLanguage"}));
            }
            if (this.attributes.containsKey("http://java.sun.com/xml/jaxp/properties/schemaSource")) {
                throw new ParserConfigurationException(SAXMessageFormatter.formatMessage(null, "schema-already-specified", new Object[]{"http://java.sun.com/xml/jaxp/properties/schemaSource"}));
            }
        }
        try {
            return new DocumentBuilderImpl(this, this.attributes, this.features, this.fSecureProcess);
        } catch (SAXException e) {
            throw new ParserConfigurationException(e.getMessage());
        }
    }

    @Override // javax.xml.parsers.DocumentBuilderFactory
    public void setAttribute(String str, Object obj) throws IllegalArgumentException {
        if (obj == null) {
            Hashtable hashtable = this.attributes;
            if (hashtable != null) {
                hashtable.remove(str);
                return;
            }
            return;
        }
        if (this.attributes == null) {
            this.attributes = new Hashtable();
        }
        this.attributes.put(str, obj);
        try {
            new DocumentBuilderImpl(this, this.attributes, this.features);
        } catch (Exception e) {
            this.attributes.remove(str);
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    @Override // javax.xml.parsers.DocumentBuilderFactory
    public void setFeature(String str, boolean z) throws ParserConfigurationException {
        if (str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            this.fSecureProcess = z;
            return;
        }
        if (this.features == null) {
            this.features = new Hashtable();
        }
        this.features.put(str, z ? Boolean.TRUE : Boolean.FALSE);
        try {
            new DocumentBuilderImpl(this, this.attributes, this.features);
        } catch (SAXNotRecognizedException e) {
            this.features.remove(str);
            throw new ParserConfigurationException(e.getMessage());
        } catch (SAXNotSupportedException e2) {
            this.features.remove(str);
            throw new ParserConfigurationException(e2.getMessage());
        }
    }

    @Override // javax.xml.parsers.DocumentBuilderFactory
    public void setSchema(Schema schema) {
        this.grammar = schema;
    }

    @Override // javax.xml.parsers.DocumentBuilderFactory
    public void setXIncludeAware(boolean z) {
        this.isXIncludeAware = z;
    }
}
