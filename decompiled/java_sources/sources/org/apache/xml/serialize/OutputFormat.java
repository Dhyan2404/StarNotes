package org.apache.xml.serialize;

import java.io.UnsupportedEncodingException;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Node;
import org.w3c.dom.html.HTMLDocument;

/* loaded from: classes13.dex */
public class OutputFormat {

    /* renamed from: a */
    public String f113691a;

    /* renamed from: b */
    public String f113692b;

    /* renamed from: c */
    public int f113693c;

    /* renamed from: d */
    public String f113694d;

    /* renamed from: e */
    public EncodingInfo f113695e;

    /* renamed from: f */
    public boolean f113696f;

    /* renamed from: g */
    public String f113697g;

    /* renamed from: h */
    public String f113698h;

    /* renamed from: i */
    public String f113699i;

    /* renamed from: j */
    public boolean f113700j;

    /* renamed from: k */
    public boolean f113701k;

    /* renamed from: l */
    public boolean f113702l;

    /* renamed from: m */
    public boolean f113703m;

    /* renamed from: n */
    public String[] f113704n;

    /* renamed from: o */
    public String[] f113705o;

    /* renamed from: p */
    public String f113706p;

    /* renamed from: q */
    public int f113707q;

    /* renamed from: r */
    public boolean f113708r;

    /* renamed from: s */
    public boolean f113709s;

    /* loaded from: classes13.dex */
    public static class DTD {
        public static final String HTMLPublicId = "-//W3C//DTD HTML 4.01//EN";
        public static final String HTMLSystemId = "http://www.w3.org/TR/html4/strict.dtd";
        public static final String XHTMLPublicId = "-//W3C//DTD XHTML 1.0 Strict//EN";
        public static final String XHTMLSystemId = "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd";
    }

    /* loaded from: classes13.dex */
    public static class Defaults {
        public static final String Encoding = "UTF-8";
        public static final int Indent = 4;
        public static final int LineWidth = 72;
    }

    public OutputFormat() {
        this.f113693c = 0;
        this.f113694d = "UTF-8";
        this.f113695e = null;
        this.f113696f = false;
        this.f113700j = false;
        this.f113701k = false;
        this.f113702l = false;
        this.f113703m = false;
        this.f113706p = "\n";
        this.f113707q = 72;
        this.f113708r = false;
        this.f113709s = false;
    }

    public static String whichDoctypePublic(Document document) {
        DocumentType doctype = document.getDoctype();
        if (doctype != null) {
            try {
                return doctype.getPublicId();
            } catch (Error unused) {
            }
        }
        if (document instanceof HTMLDocument) {
            return "-//W3C//DTD XHTML 1.0 Strict//EN";
        }
        return null;
    }

    public static String whichDoctypeSystem(Document document) {
        DocumentType doctype = document.getDoctype();
        if (doctype != null) {
            try {
                return doctype.getSystemId();
            } catch (Error unused) {
            }
        }
        if (document instanceof HTMLDocument) {
            return "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd";
        }
        return null;
    }

    public static String whichMediaType(String str) {
        if (str.equalsIgnoreCase("xml")) {
            return "text/xml";
        }
        if (str.equalsIgnoreCase("html") || str.equalsIgnoreCase("xhtml")) {
            return "text/html";
        }
        if (str.equalsIgnoreCase("text")) {
            return "text/plain";
        }
        if (str.equalsIgnoreCase("fop")) {
            return "application/pdf";
        }
        return null;
    }

    public static String whichMethod(Document document) {
        if (document instanceof HTMLDocument) {
            return "html";
        }
        for (Node firstChild = document.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild.getNodeType() == 1) {
                return firstChild.getNodeName().equalsIgnoreCase("html") ? "html" : firstChild.getNodeName().equalsIgnoreCase("root") ? "fop" : "xml";
            }
            if (firstChild.getNodeType() == 3) {
                String nodeValue = firstChild.getNodeValue();
                for (int i = 0; i < nodeValue.length(); i++) {
                    if (nodeValue.charAt(i) != ' ' && nodeValue.charAt(i) != '\n' && nodeValue.charAt(i) != '\t' && nodeValue.charAt(i) != '\r') {
                        return "xml";
                    }
                }
            }
        }
        return "xml";
    }

    public String[] getCDataElements() {
        return this.f113704n;
    }

    public String getDoctypePublic() {
        return this.f113699i;
    }

    public String getDoctypeSystem() {
        return this.f113698h;
    }

    public String getEncoding() {
        return this.f113694d;
    }

    public EncodingInfo getEncodingInfo() throws UnsupportedEncodingException {
        if (this.f113695e == null) {
            this.f113695e = Encodings.m70679a(this.f113694d, this.f113696f);
        }
        return this.f113695e;
    }

    public int getIndent() {
        return this.f113693c;
    }

    public boolean getIndenting() {
        return this.f113693c > 0;
    }

    public char getLastPrintable() {
        return (getEncoding() == null || !getEncoding().equalsIgnoreCase("ASCII")) ? (char) 65535 : (char) 255;
    }

    public String getLineSeparator() {
        return this.f113706p;
    }

    public int getLineWidth() {
        return this.f113707q;
    }

    public String getMediaType() {
        return this.f113697g;
    }

    public String getMethod() {
        return this.f113691a;
    }

    public String[] getNonEscapingElements() {
        return this.f113705o;
    }

    public boolean getOmitComments() {
        return this.f113702l;
    }

    public boolean getOmitDocumentType() {
        return this.f113701k;
    }

    public boolean getOmitXMLDeclaration() {
        return this.f113700j;
    }

    public boolean getPreserveEmptyAttributes() {
        return this.f113709s;
    }

    public boolean getPreserveSpace() {
        return this.f113708r;
    }

    public boolean getStandalone() {
        return this.f113703m;
    }

    public String getVersion() {
        return this.f113692b;
    }

    public boolean isCDataElement(String str) {
        if (this.f113704n == null) {
            return false;
        }
        int i = 0;
        while (true) {
            String[] strArr = this.f113704n;
            if (i >= strArr.length) {
                return false;
            }
            if (strArr[i].equals(str)) {
                return true;
            }
            i++;
        }
    }

    public boolean isNonEscapingElement(String str) {
        if (this.f113705o == null) {
            return false;
        }
        int i = 0;
        while (true) {
            String[] strArr = this.f113705o;
            if (i >= strArr.length) {
                return false;
            }
            if (strArr[i].equals(str)) {
                return true;
            }
            i++;
        }
    }

    public void setAllowJavaNames(boolean z) {
        this.f113696f = z;
    }

    public void setCDataElements(String[] strArr) {
        this.f113704n = strArr;
    }

    public void setDoctype(String str, String str2) {
        this.f113699i = str;
        this.f113698h = str2;
    }

    public void setEncoding(String str) {
        this.f113694d = str;
        this.f113695e = null;
    }

    public void setIndent(int i) {
        if (i < 0) {
            i = 0;
        }
        this.f113693c = i;
    }

    public void setIndenting(boolean z) {
        int i;
        if (z) {
            this.f113693c = 4;
            i = 72;
        } else {
            i = 0;
            this.f113693c = 0;
        }
        this.f113707q = i;
    }

    public void setLineSeparator(String str) {
        if (str == null) {
            str = "\n";
        }
        this.f113706p = str;
    }

    public void setLineWidth(int i) {
        if (i <= 0) {
            i = 0;
        }
        this.f113707q = i;
    }

    public void setMediaType(String str) {
        this.f113697g = str;
    }

    public void setMethod(String str) {
        this.f113691a = str;
    }

    public void setNonEscapingElements(String[] strArr) {
        this.f113705o = strArr;
    }

    public void setOmitComments(boolean z) {
        this.f113702l = z;
    }

    public void setOmitDocumentType(boolean z) {
        this.f113701k = z;
    }

    public void setOmitXMLDeclaration(boolean z) {
        this.f113700j = z;
    }

    public void setPreserveEmptyAttributes(boolean z) {
        this.f113709s = z;
    }

    public void setPreserveSpace(boolean z) {
        this.f113708r = z;
    }

    public void setStandalone(boolean z) {
        this.f113703m = z;
    }

    public void setVersion(String str) {
        this.f113692b = str;
    }

    public OutputFormat(String str, String str2, boolean z) {
        this.f113693c = 0;
        this.f113694d = "UTF-8";
        this.f113695e = null;
        this.f113696f = false;
        this.f113700j = false;
        this.f113701k = false;
        this.f113702l = false;
        this.f113703m = false;
        this.f113706p = "\n";
        this.f113707q = 72;
        this.f113708r = false;
        this.f113709s = false;
        setMethod(str);
        setEncoding(str2);
        setIndenting(z);
    }

    public boolean setAllowJavaNames() {
        return this.f113696f;
    }

    public void setEncoding(EncodingInfo encodingInfo) {
        this.f113694d = encodingInfo.getIANAName();
        this.f113695e = encodingInfo;
    }

    public OutputFormat(Document document) {
        this.f113693c = 0;
        this.f113694d = "UTF-8";
        this.f113695e = null;
        this.f113696f = false;
        this.f113700j = false;
        this.f113701k = false;
        this.f113702l = false;
        this.f113703m = false;
        this.f113706p = "\n";
        this.f113707q = 72;
        this.f113708r = false;
        this.f113709s = false;
        setMethod(whichMethod(document));
        setDoctype(whichDoctypePublic(document), whichDoctypeSystem(document));
        setMediaType(whichMediaType(getMethod()));
    }

    public OutputFormat(Document document, String str, boolean z) {
        this(document);
        setEncoding(str);
        setIndenting(z);
    }
}
