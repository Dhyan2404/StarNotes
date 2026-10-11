package org.mortbay.xml;

import com.google.android.material.motion.MotionUtils;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;
import java.util.StringTokenizer;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.mortbay.log.Log;
import org.mortbay.util.LazyList;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes13.dex */
public class XmlParser {

    /* renamed from: b */
    public SAXParser f115464b;

    /* renamed from: c */
    public Map f115465c;

    /* renamed from: e */
    public String f115467e;

    /* renamed from: f */
    public Object f115468f;

    /* renamed from: g */
    public String f115469g;

    /* renamed from: a */
    public Map f115463a = new HashMap();

    /* renamed from: d */
    public Stack f115466d = new Stack();

    /* loaded from: classes13.dex */
    public static class Attribute {

        /* renamed from: a */
        public String f115470a;

        /* renamed from: b */
        public String f115471b;

        public Attribute(String str, String str2) {
            this.f115470a = str;
            this.f115471b = str2;
        }

        public String getName() {
            return this.f115470a;
        }

        public String getValue() {
            return this.f115471b;
        }
    }

    /* loaded from: classes13.dex */
    public static class Node extends AbstractList {

        /* renamed from: e */
        public Node f115472e;

        /* renamed from: f */
        public ArrayList f115473f;

        /* renamed from: g */
        public String f115474g;

        /* renamed from: h */
        public Attribute[] f115475h;

        /* renamed from: i */
        public boolean f115476i = false;

        /* renamed from: j */
        public String f115477j;

        public Node(Node node, String str, Attributes attributes) {
            this.f115472e = node;
            this.f115474g = str;
            if (attributes != null) {
                this.f115475h = new Attribute[attributes.getLength()];
                for (int i = 0; i < attributes.getLength(); i++) {
                    String localName = attributes.getLocalName(i);
                    if (localName == null || localName.equals("")) {
                        localName = attributes.getQName(i);
                    }
                    this.f115475h[i] = new Attribute(localName, attributes.getValue(i));
                }
            }
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int i, Object obj) {
            if (this.f115473f == null) {
                this.f115473f = new ArrayList();
            }
            if (!(obj instanceof String)) {
                this.f115476i = false;
                this.f115473f.add(i, obj);
                return;
            }
            if (this.f115476i) {
                int size = this.f115473f.size() - 1;
                ArrayList arrayList = this.f115473f;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append((String) this.f115473f.get(size));
                stringBuffer.append(obj);
                arrayList.set(size, stringBuffer.toString());
            } else {
                this.f115473f.add(i, obj);
            }
            this.f115476i = true;
        }

        /* renamed from: c */
        public final synchronized void m71692c(StringBuffer stringBuffer, boolean z) {
            if (z) {
                stringBuffer.append("<");
                stringBuffer.append(this.f115474g);
                if (this.f115475h != null) {
                    for (int i = 0; i < this.f115475h.length; i++) {
                        stringBuffer.append(' ');
                        stringBuffer.append(this.f115475h[i].getName());
                        stringBuffer.append("=\"");
                        stringBuffer.append(this.f115475h[i].getValue());
                        stringBuffer.append("\"");
                    }
                }
            }
            if (this.f115473f != null) {
                if (z) {
                    stringBuffer.append(">");
                }
                for (int i2 = 0; i2 < this.f115473f.size(); i2++) {
                    Object obj = this.f115473f.get(i2);
                    if (obj != null) {
                        if (obj instanceof Node) {
                            ((Node) obj).m71692c(stringBuffer, z);
                        } else {
                            stringBuffer.append(obj.toString());
                        }
                    }
                }
                if (z) {
                    stringBuffer.append(XMLStreamWriterImpl.OPEN_END_TAG);
                    stringBuffer.append(this.f115474g);
                    stringBuffer.append(">");
                }
            } else if (z) {
                stringBuffer.append(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
            }
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            ArrayList arrayList = this.f115473f;
            if (arrayList != null) {
                arrayList.clear();
            }
            this.f115473f = null;
        }

        @Override // java.util.AbstractList, java.util.List
        public Object get(int i) {
            ArrayList arrayList = this.f115473f;
            if (arrayList != null) {
                return arrayList.get(i);
            }
            return null;
        }

        public String getAttribute(String str) {
            return getAttribute(str, null);
        }

        public Attribute[] getAttributes() {
            return this.f115475h;
        }

        public Node getParent() {
            return this.f115472e;
        }

        public String getPath() {
            if (this.f115477j == null) {
                if (getParent() == null || getParent().getTag() == null) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("/");
                    stringBuffer.append(this.f115474g);
                    this.f115477j = stringBuffer.toString();
                } else {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append(getParent().getPath());
                    stringBuffer2.append("/");
                    stringBuffer2.append(this.f115474g);
                    this.f115477j = stringBuffer2.toString();
                }
            }
            return this.f115477j;
        }

        public String getString(String str, boolean z, boolean z2) {
            Node node = get(str);
            if (node == null) {
                return null;
            }
            String node2 = node.toString(z);
            return (node2 == null || !z2) ? node2 : node2.trim();
        }

        public String getTag() {
            return this.f115474g;
        }

        public Iterator iterator(String str) {
            return new C20448a(this, str);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            ArrayList arrayList = this.f115473f;
            if (arrayList != null) {
                return arrayList.size();
            }
            return 0;
        }

        @Override // java.util.AbstractCollection
        public synchronized String toString() {
            return toString(true);
        }

        public String getAttribute(String str, String str2) {
            if (this.f115475h != null && str != null) {
                int i = 0;
                while (true) {
                    Attribute[] attributeArr = this.f115475h;
                    if (i >= attributeArr.length) {
                        break;
                    }
                    if (str.equals(attributeArr[i].getName())) {
                        return this.f115475h[i].getValue();
                    }
                    i++;
                }
            }
            return str2;
        }

        public synchronized String toString(boolean z) {
            String stringBuffer;
            StringBuffer stringBuffer2 = new StringBuffer();
            synchronized (stringBuffer2) {
                m71692c(stringBuffer2, z);
                stringBuffer = stringBuffer2.toString();
            }
            return stringBuffer;
        }

        public Node get(String str) {
            if (this.f115473f == null) {
                return null;
            }
            for (int i = 0; i < this.f115473f.size(); i++) {
                Object obj = this.f115473f.get(i);
                if (obj instanceof Node) {
                    Node node = (Node) obj;
                    if (str.equals(node.f115474g)) {
                        return node;
                    }
                }
            }
            return null;
        }

        public synchronized String toString(boolean z, boolean z2) {
            String node;
            node = toString(z);
            if (node != null && z2) {
                node = node.trim();
            }
            return node;
        }
    }

    /* renamed from: org.mortbay.xml.XmlParser$a */
    /* loaded from: classes13.dex */
    public class C20446a extends DefaultHandler {

        /* renamed from: e */
        public Node f115478e;

        /* renamed from: f */
        public SAXParseException f115479f;

        /* renamed from: g */
        public Node f115480g;

        /* renamed from: h */
        public C20447b f115481h;

        public C20446a() {
            Node node = new Node(null, null, null);
            this.f115478e = node;
            this.f115480g = node;
            this.f115481h = new C20447b(this);
        }

        /* renamed from: a */
        public void m71693a() {
            this.f115478e = null;
            this.f115479f = null;
            this.f115480g = null;
        }

        /* renamed from: b */
        public final String m71694b(SAXParseException sAXParseException) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(sAXParseException.getSystemId());
            stringBuffer.append(" line:");
            stringBuffer.append(sAXParseException.getLineNumber());
            stringBuffer.append(" col:");
            stringBuffer.append(sAXParseException.getColumnNumber());
            return stringBuffer.toString();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i, int i2) throws SAXException {
            this.f115480g.add(new String(cArr, i, i2));
            for (int i3 = 0; i3 < XmlParser.this.f115466d.size(); i3++) {
                if (XmlParser.this.f115466d.get(i3) != null) {
                    ((ContentHandler) XmlParser.this.f115466d.get(i3)).characters(cArr, i, i2);
                }
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            this.f115480g = this.f115480g.f115472e;
            for (int i = 0; i < XmlParser.this.f115466d.size(); i++) {
                if (XmlParser.this.f115466d.get(i) != null) {
                    ((ContentHandler) XmlParser.this.f115466d.get(i)).endElement(str, str2, str3);
                }
            }
            XmlParser.this.f115466d.pop();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ErrorHandler
        public void error(SAXParseException sAXParseException) throws SAXException {
            if (this.f115479f == null) {
                this.f115479f = sAXParseException;
            }
            Log.debug(Log.EXCEPTION, sAXParseException);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("ERROR@");
            stringBuffer.append(m71694b(sAXParseException));
            stringBuffer.append(" : ");
            stringBuffer.append(sAXParseException.toString());
            Log.warn(stringBuffer.toString());
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ErrorHandler
        public void fatalError(SAXParseException sAXParseException) throws SAXException {
            this.f115479f = sAXParseException;
            Log.debug(Log.EXCEPTION, sAXParseException);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("FATAL@");
            stringBuffer.append(m71694b(sAXParseException));
            stringBuffer.append(" : ");
            stringBuffer.append(sAXParseException.toString());
            Log.warn(stringBuffer.toString());
            throw sAXParseException;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
            for (int i3 = 0; i3 < XmlParser.this.f115466d.size(); i3++) {
                if (XmlParser.this.f115466d.get(i3) != null) {
                    ((ContentHandler) XmlParser.this.f115466d.get(i3)).ignorableWhitespace(cArr, i, i2);
                }
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.EntityResolver
        public InputSource resolveEntity(String str, String str2) {
            if (Log.isDebugEnabled()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("resolveEntity(");
                stringBuffer.append(str);
                stringBuffer.append(", ");
                stringBuffer.append(str2);
                stringBuffer.append(MotionUtils.f31762d);
                Log.debug(stringBuffer.toString());
            }
            if (str2 != null && str2.endsWith(".dtd")) {
                XmlParser.this.f115469g = str2;
            }
            URL url = str != null ? (URL) XmlParser.this.f115463a.get(str) : null;
            if (url == null) {
                url = (URL) XmlParser.this.f115463a.get(str2);
            }
            if (url == null) {
                String substring = str2.lastIndexOf(47) >= 0 ? str2.substring(str2.lastIndexOf(47) + 1) : str2;
                if (Log.isDebugEnabled()) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Can't exact match entity in redirect map, trying ");
                    stringBuffer2.append(substring);
                    Log.debug(stringBuffer2.toString());
                }
                url = (URL) XmlParser.this.f115463a.get(substring);
            }
            if (url != null) {
                try {
                    InputStream openStream = url.openStream();
                    if (Log.isDebugEnabled()) {
                        StringBuffer stringBuffer3 = new StringBuffer();
                        stringBuffer3.append("Redirected entity ");
                        stringBuffer3.append(str2);
                        stringBuffer3.append(" --> ");
                        stringBuffer3.append(url);
                        Log.debug(stringBuffer3.toString());
                    }
                    InputSource inputSource = new InputSource(openStream);
                    inputSource.setSystemId(str2);
                    return inputSource;
                } catch (IOException e) {
                    Log.ignore(e);
                }
            }
            return null;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            String str4 = (str == null || str.equals("")) ? str3 : str2;
            Node node = new Node(this.f115480g, str4, attributes);
            if (XmlParser.this.f115468f != null) {
                String path = node.getPath();
                int size = LazyList.size(XmlParser.this.f115468f);
                boolean z = false;
                while (!z) {
                    int i = size - 1;
                    if (size <= 0) {
                        break;
                    }
                    String str5 = (String) LazyList.get(XmlParser.this.f115468f, i);
                    z = path.equals(str5) || (str5.startsWith(path) && str5.length() > path.length() && str5.charAt(path.length()) == '/');
                    size = i;
                }
                if (z) {
                    this.f115480g.add(node);
                    this.f115480g = node;
                } else {
                    XmlParser.this.f115464b.getXMLReader().setContentHandler(this.f115481h);
                }
            } else {
                this.f115480g.add(node);
                this.f115480g = node;
            }
            XmlParser.this.f115466d.push(XmlParser.this.f115465c != null ? (ContentHandler) XmlParser.this.f115465c.get(str4) : null);
            for (int i2 = 0; i2 < XmlParser.this.f115466d.size(); i2++) {
                if (XmlParser.this.f115466d.get(i2) != null) {
                    ((ContentHandler) XmlParser.this.f115466d.get(i2)).startElement(str, str2, str3, attributes);
                }
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ErrorHandler
        public void warning(SAXParseException sAXParseException) {
            Log.debug(Log.EXCEPTION, sAXParseException);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("WARNING@");
            stringBuffer.append(m71694b(sAXParseException));
            stringBuffer.append(" : ");
            stringBuffer.append(sAXParseException.toString());
            Log.warn(stringBuffer.toString());
        }
    }

    /* renamed from: org.mortbay.xml.XmlParser$b */
    /* loaded from: classes13.dex */
    public class C20447b extends DefaultHandler {

        /* renamed from: e */
        public C20446a f115483e;

        /* renamed from: f */
        public int f115484f;

        public C20447b(C20446a c20446a) {
            this.f115483e = c20446a;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            int i = this.f115484f;
            if (i == 0) {
                XmlParser.this.f115464b.getXMLReader().setContentHandler(this.f115483e);
            } else {
                this.f115484f = i - 1;
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            this.f115484f++;
        }
    }

    public XmlParser() {
        setValidating(!Boolean.getBoolean("org.mortbay.xml.XmlParser.NotValidating") && Boolean.valueOf(System.getProperty("org.mortbay.xml.XmlParser.Validating", SAXParserFactory.newInstance().getClass().toString().startsWith("org.apache.xerces.") ? "true" : "false")).booleanValue());
    }

    public synchronized void addContentHandler(String str, ContentHandler contentHandler) {
        if (this.f115465c == null) {
            this.f115465c = new HashMap();
        }
        this.f115465c.put(str, contentHandler);
    }

    public String getDTD() {
        return this.f115469g;
    }

    public String getXpath() {
        return this.f115467e;
    }

    public synchronized Node parse(InputSource inputSource) throws IOException, SAXException {
        Node node;
        this.f115469g = null;
        C20446a c20446a = new C20446a();
        XMLReader xMLReader = this.f115464b.getXMLReader();
        xMLReader.setContentHandler(c20446a);
        xMLReader.setErrorHandler(c20446a);
        xMLReader.setEntityResolver(c20446a);
        if (Log.isDebugEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("parsing: sid=");
            stringBuffer.append(inputSource.getSystemId());
            stringBuffer.append(",pid=");
            stringBuffer.append(inputSource.getPublicId());
            Log.debug(stringBuffer.toString());
        }
        this.f115464b.parse(inputSource, c20446a);
        SAXParseException sAXParseException = c20446a.f115479f;
        if (sAXParseException == null) {
            node = (Node) c20446a.f115478e.get(0);
            c20446a.m71693a();
        } else {
            throw sAXParseException;
        }
        return node;
    }

    public synchronized void redirectEntity(String str, URL url) {
        if (url != null) {
            this.f115463a.put(str, url);
        }
    }

    public void setValidating(boolean z) {
        try {
            SAXParserFactory newInstance = SAXParserFactory.newInstance();
            newInstance.setValidating(z);
            SAXParser newSAXParser = newInstance.newSAXParser();
            this.f115464b = newSAXParser;
            if (z) {
                try {
                    newSAXParser.getXMLReader().setFeature("http://apache.org/xml/features/validation/schema", z);
                } catch (Exception e) {
                    if (z) {
                        Log.warn("Schema validation may not be supported: ", (Throwable) e);
                    } else {
                        Log.ignore(e);
                    }
                }
            }
            this.f115464b.getXMLReader().setFeature("http://xml.org/sax/features/validation", z);
            this.f115464b.getXMLReader().setFeature("http://xml.org/sax/features/namespaces", true);
            this.f115464b.getXMLReader().setFeature("http://xml.org/sax/features/namespace-prefixes", false);
        } catch (Exception e2) {
            Log.warn(Log.EXCEPTION, (Throwable) e2);
            throw new Error(e2.toString());
        }
    }

    public void setXpath(String str) {
        this.f115467e = str;
        StringTokenizer stringTokenizer = new StringTokenizer(str, "| ");
        while (stringTokenizer.hasMoreTokens()) {
            this.f115468f = LazyList.add(this.f115468f, stringTokenizer.nextToken());
        }
    }

    public XmlParser(boolean z) {
        setValidating(z);
    }

    public synchronized Node parse(String str) throws IOException, SAXException {
        if (Log.isDebugEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("parse: ");
            stringBuffer.append(str);
            Log.debug(stringBuffer.toString());
        }
        return parse(new InputSource(str));
    }

    public synchronized Node parse(File file) throws IOException, SAXException {
        if (Log.isDebugEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("parse: ");
            stringBuffer.append(file);
            Log.debug(stringBuffer.toString());
        }
        return parse(new InputSource(file.toURL().toString()));
    }

    public synchronized Node parse(InputStream inputStream) throws IOException, SAXException {
        Node node;
        this.f115469g = null;
        C20446a c20446a = new C20446a();
        XMLReader xMLReader = this.f115464b.getXMLReader();
        xMLReader.setContentHandler(c20446a);
        xMLReader.setErrorHandler(c20446a);
        xMLReader.setEntityResolver(c20446a);
        this.f115464b.parse(new InputSource(inputStream), c20446a);
        SAXParseException sAXParseException = c20446a.f115479f;
        if (sAXParseException == null) {
            node = (Node) c20446a.f115478e.get(0);
            c20446a.m71693a();
        } else {
            throw sAXParseException;
        }
        return node;
    }
}
