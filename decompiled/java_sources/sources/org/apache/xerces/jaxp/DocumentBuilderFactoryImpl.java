package org.apache.xerces.jaxp;

import java.util.Hashtable;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.validation.Schema;
import org.apache.xerces.parsers.DOMParser;
import org.apache.xerces.util.SAXMessageFormatter;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;

/* loaded from: classes13.dex */
public class DocumentBuilderFactoryImpl extends DocumentBuilderFactory {

    /* renamed from: f */
    public static final String f113269f = "http://xml.org/sax/features/namespaces";

    /* renamed from: g */
    public static final String f113270g = "http://xml.org/sax/features/validation";

    /* renamed from: h */
    public static final String f113271h = "http://apache.org/xml/features/xinclude";

    /* renamed from: i */
    public static final String f113272i = "http://apache.org/xml/features/dom/include-ignorable-whitespace";

    /* renamed from: j */
    public static final String f113273j = "http://apache.org/xml/features/dom/create-entity-ref-nodes";

    /* renamed from: k */
    public static final String f113274k = "http://apache.org/xml/features/include-comments";

    /* renamed from: l */
    public static final String f113275l = "http://apache.org/xml/features/create-cdata-nodes";

    /* renamed from: a */
    public Hashtable f113276a;

    /* renamed from: b */
    public Hashtable f113277b;

    /* renamed from: c */
    public Schema f113278c;

    /* renamed from: d */
    public boolean f113279d;

    /* renamed from: e */
    public boolean f113280e = false;

    @Override // javax.xml.parsers.DocumentBuilderFactory
    public Object getAttribute(String str) throws IllegalArgumentException {
        Object obj;
        Hashtable hashtable = this.f113276a;
        if (hashtable != null && (obj = hashtable.get(str)) != null) {
            return obj;
        }
        DOMParser dOMParser = null;
        try {
            dOMParser = new DocumentBuilderImpl(this, this.f113276a, this.f113277b).m70493a();
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
            return this.f113280e;
        }
        if (str.equals("http://xml.org/sax/features/namespaces")) {
            return isNamespaceAware();
        }
        if (str.equals("http://xml.org/sax/features/validation")) {
            return isValidating();
        }
        if (str.equals("http://apache.org/xml/features/xinclude")) {
            return isXIncludeAware();
        }
        if (str.equals("http://apache.org/xml/features/dom/include-ignorable-whitespace")) {
            return !isIgnoringElementContentWhitespace();
        }
        if (str.equals("http://apache.org/xml/features/dom/create-entity-ref-nodes")) {
            return !isExpandEntityReferences();
        }
        if (str.equals("http://apache.org/xml/features/include-comments")) {
            return !isIgnoringComments();
        }
        if (str.equals("http://apache.org/xml/features/create-cdata-nodes")) {
            return !isCoalescing();
        }
        Hashtable hashtable = this.f113277b;
        if (hashtable != null && (obj = hashtable.get(str)) != null) {
            return ((Boolean) obj).booleanValue();
        }
        try {
            return new DocumentBuilderImpl(this, this.f113276a, this.f113277b).m70493a().getFeature(str);
        } catch (SAXException e) {
            throw new ParserConfigurationException(e.getMessage());
        }
    }

    @Override // javax.xml.parsers.DocumentBuilderFactory
    public Schema getSchema() {
        return this.f113278c;
    }

    @Override // javax.xml.parsers.DocumentBuilderFactory
    public boolean isXIncludeAware() {
        return this.f113279d;
    }

    @Override // javax.xml.parsers.DocumentBuilderFactory
    public DocumentBuilder newDocumentBuilder() throws ParserConfigurationException {
        Hashtable hashtable;
        if (this.f113278c != null && (hashtable = this.f113276a) != null) {
            if (hashtable.containsKey("http://java.sun.com/xml/jaxp/properties/schemaLanguage")) {
                throw new ParserConfigurationException(SAXMessageFormatter.formatMessage(null, "schema-already-specified", new Object[]{"http://java.sun.com/xml/jaxp/properties/schemaLanguage"}));
            }
            if (this.f113276a.containsKey("http://java.sun.com/xml/jaxp/properties/schemaSource")) {
                throw new ParserConfigurationException(SAXMessageFormatter.formatMessage(null, "schema-already-specified", new Object[]{"http://java.sun.com/xml/jaxp/properties/schemaSource"}));
            }
        }
        try {
            return new DocumentBuilderImpl(this, this.f113276a, this.f113277b, this.f113280e);
        } catch (SAXException e) {
            throw new ParserConfigurationException(e.getMessage());
        }
    }

    @Override // javax.xml.parsers.DocumentBuilderFactory
    public void setAttribute(String str, Object obj) throws IllegalArgumentException {
        if (obj == null) {
            Hashtable hashtable = this.f113276a;
            if (hashtable != null) {
                hashtable.remove(str);
                return;
            }
            return;
        }
        if (this.f113276a == null) {
            this.f113276a = new Hashtable();
        }
        this.f113276a.put(str, obj);
        try {
            new DocumentBuilderImpl(this, this.f113276a, this.f113277b);
        } catch (Exception e) {
            this.f113276a.remove(str);
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    @Override // javax.xml.parsers.DocumentBuilderFactory
    public void setFeature(String str, boolean z) throws ParserConfigurationException {
        if (str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            this.f113280e = z;
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
        if (str.equals("http://apache.org/xml/features/dom/include-ignorable-whitespace")) {
            setIgnoringElementContentWhitespace(!z);
            return;
        }
        if (str.equals("http://apache.org/xml/features/dom/create-entity-ref-nodes")) {
            setExpandEntityReferences(!z);
            return;
        }
        if (str.equals("http://apache.org/xml/features/include-comments")) {
            setIgnoringComments(!z);
            return;
        }
        if (str.equals("http://apache.org/xml/features/create-cdata-nodes")) {
            setCoalescing(!z);
            return;
        }
        if (this.f113277b == null) {
            this.f113277b = new Hashtable();
        }
        this.f113277b.put(str, z ? Boolean.TRUE : Boolean.FALSE);
        try {
            new DocumentBuilderImpl(this, this.f113276a, this.f113277b);
        } catch (SAXNotRecognizedException e) {
            this.f113277b.remove(str);
            throw new ParserConfigurationException(e.getMessage());
        } catch (SAXNotSupportedException e2) {
            this.f113277b.remove(str);
            throw new ParserConfigurationException(e2.getMessage());
        }
    }

    @Override // javax.xml.parsers.DocumentBuilderFactory
    public void setSchema(Schema schema) {
        this.f113278c = schema;
    }

    @Override // javax.xml.parsers.DocumentBuilderFactory
    public void setXIncludeAware(boolean z) {
        this.f113279d = z;
    }
}
