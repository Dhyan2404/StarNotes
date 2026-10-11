package com.sun.org.apache.xerces.internal.dom;

import com.sun.org.apache.xerces.internal.impl.RevalidationHandler;
import com.sun.org.apache.xerces.internal.parsers.DOMParserImpl;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xml.internal.serialize.DOMSerializerImpl;
import net.p110sf.saxon.query.XQueryParser;
import org.scribe.oauth.OAuth20ServiceImpl;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.ls.DOMImplementationLS;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSOutput;
import org.w3c.dom.ls.LSParser;
import org.w3c.dom.ls.LSSerializer;

/* loaded from: classes10.dex */
public class CoreDOMImplementationImpl implements DOMImplementation, DOMImplementationLS {
    private static final int SIZE = 2;
    static CoreDOMImplementationImpl singleton = new CoreDOMImplementationImpl();
    private RevalidationHandler[] validators = new RevalidationHandler[2];
    private RevalidationHandler[] dtdValidators = new RevalidationHandler[2];
    private int freeValidatorIndex = -1;
    private int freeDTDValidatorIndex = -1;
    private int currentSize = 2;
    private int docAndDoctypeCounter = 0;

    public static DOMImplementation getDOMImplementation() {
        return singleton;
    }

    public synchronized int assignDocTypeNumber() {
        int i;
        i = this.docAndDoctypeCounter + 1;
        this.docAndDoctypeCounter = i;
        return i;
    }

    public synchronized int assignDocumentNumber() {
        int i;
        i = this.docAndDoctypeCounter + 1;
        this.docAndDoctypeCounter = i;
        return i;
    }

    final void checkQName(String str) {
        int indexOf = str.indexOf(58);
        int lastIndexOf = str.lastIndexOf(58);
        int length = str.length();
        if (indexOf == 0 || indexOf == length - 1 || lastIndexOf != indexOf) {
            throw new DOMException((short) 14, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NAMESPACE_ERR", null));
        }
        int i = 0;
        if (indexOf > 0) {
            if (!XMLChar.isNCNameStart(str.charAt(0))) {
                throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
            }
            for (int i2 = 1; i2 < indexOf; i2++) {
                if (!XMLChar.isNCName(str.charAt(i2))) {
                    throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
                }
            }
            i = indexOf + 1;
        }
        if (!XMLChar.isNCNameStart(str.charAt(i))) {
            throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
        }
        for (int i3 = i + 1; i3 < length; i3++) {
            if (!XMLChar.isNCName(str.charAt(i3))) {
                throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
            }
        }
    }

    @Override // org.w3c.dom.DOMImplementation
    public Document createDocument(String str, String str2, DocumentType documentType) throws DOMException {
        if (documentType != null && documentType.getOwnerDocument() != null) {
            throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
        }
        CoreDocumentImpl coreDocumentImpl = new CoreDocumentImpl(documentType);
        coreDocumentImpl.appendChild(coreDocumentImpl.createElementNS(str, str2));
        return coreDocumentImpl;
    }

    @Override // org.w3c.dom.DOMImplementation
    public DocumentType createDocumentType(String str, String str2, String str3) {
        checkQName(str);
        return new DocumentTypeImpl(null, str, str2, str3);
    }

    @Override // org.w3c.dom.ls.DOMImplementationLS
    public LSInput createLSInput() {
        return new DOMInputImpl();
    }

    @Override // org.w3c.dom.ls.DOMImplementationLS
    public LSOutput createLSOutput() {
        return new DOMOutputImpl();
    }

    @Override // org.w3c.dom.ls.DOMImplementationLS
    public LSParser createLSParser(short s, String str) throws DOMException {
        if (s == 1 && (str == null || "http://www.w3.org/2001/XMLSchema".equals(str) || "http://www.w3.org/TR/REC-xml".equals(str))) {
            return (str == null || !str.equals("http://www.w3.org/TR/REC-xml")) ? new DOMParserImpl("com.sun.org.apache.xerces.internal.parsers.XIncludeAwareParserConfiguration", str) : new DOMParserImpl("com.sun.org.apache.xerces.internal.parsers.DTDConfiguration", str);
        }
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.w3c.dom.ls.DOMImplementationLS
    public LSSerializer createLSSerializer() {
        return new DOMSerializerImpl();
    }

    @Override // org.w3c.dom.DOMImplementation
    public Object getFeature(String str, String str2) {
        if (singleton.hasFeature(str, str2)) {
            if (!str.equalsIgnoreCase("+XPath")) {
                return singleton;
            }
            try {
                Class findProviderClass = ObjectFactory.findProviderClass("com.sun.org.apache.xpath.internal.domapi.XPathEvaluatorImpl", ObjectFactory.findClassLoader(), true);
                for (Class<?> cls : findProviderClass.getInterfaces()) {
                    if (cls.getName().equals("org.w3c.dom.xpath.XPathEvaluator")) {
                        return findProviderClass.newInstance();
                    }
                }
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public synchronized RevalidationHandler getValidator(String str) {
        if (str == "http://www.w3.org/2001/XMLSchema") {
            int i = this.freeValidatorIndex;
            if (i < 0) {
                return (RevalidationHandler) ObjectFactory.newInstance("com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator", ObjectFactory.findClassLoader(), true);
            }
            RevalidationHandler[] revalidationHandlerArr = this.validators;
            RevalidationHandler revalidationHandler = revalidationHandlerArr[i];
            this.freeValidatorIndex = i - 1;
            revalidationHandlerArr[i] = null;
            return revalidationHandler;
        }
        if (str != "http://www.w3.org/TR/REC-xml") {
            return null;
        }
        int i2 = this.freeDTDValidatorIndex;
        if (i2 < 0) {
            return (RevalidationHandler) ObjectFactory.newInstance("com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidator", ObjectFactory.findClassLoader(), true);
        }
        RevalidationHandler[] revalidationHandlerArr2 = this.dtdValidators;
        RevalidationHandler revalidationHandler2 = revalidationHandlerArr2[i2];
        this.freeDTDValidatorIndex = i2 - 1;
        revalidationHandlerArr2[i2] = null;
        return revalidationHandler2;
    }

    @Override // org.w3c.dom.DOMImplementation
    public boolean hasFeature(String str, String str2) {
        boolean z = str2 == null || str2.length() == 0;
        if (str.equalsIgnoreCase("+XPath") && (z || str2.equals(XQueryParser.XQUERY30))) {
            try {
                Class<?>[] interfaces = ObjectFactory.findProviderClass("com.sun.org.apache.xpath.internal.domapi.XPathEvaluatorImpl", ObjectFactory.findClassLoader(), true).getInterfaces();
                for (int i = 0; i < interfaces.length && !interfaces[i].getName().equals("org.w3c.dom.xpath.XPathEvaluator"); i++) {
                }
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
        if (str.startsWith("+")) {
            str = str.substring(1);
        }
        if ((!str.equalsIgnoreCase("Core") || (!z && !str2.equals("1.0") && !str2.equals(OAuth20ServiceImpl.f115984c) && !str2.equals(XQueryParser.XQUERY30))) && (!str.equalsIgnoreCase("XML") || (!z && !str2.equals("1.0") && !str2.equals(OAuth20ServiceImpl.f115984c) && !str2.equals(XQueryParser.XQUERY30)))) {
            if (!str.equalsIgnoreCase("LS")) {
                return false;
            }
            if (!z && !str2.equals(XQueryParser.XQUERY30)) {
                return false;
            }
        }
        return true;
    }

    public synchronized void releaseValidator(String str, RevalidationHandler revalidationHandler) {
        if (str == "http://www.w3.org/2001/XMLSchema") {
            int i = this.freeValidatorIndex + 1;
            this.freeValidatorIndex = i;
            RevalidationHandler[] revalidationHandlerArr = this.validators;
            if (revalidationHandlerArr.length == i) {
                int i2 = this.currentSize + 2;
                this.currentSize = i2;
                RevalidationHandler[] revalidationHandlerArr2 = new RevalidationHandler[i2];
                System.arraycopy(revalidationHandlerArr, 0, revalidationHandlerArr2, 0, revalidationHandlerArr.length);
                this.validators = revalidationHandlerArr2;
            }
            this.validators[this.freeValidatorIndex] = revalidationHandler;
        } else if (str == "http://www.w3.org/TR/REC-xml") {
            int i3 = this.freeDTDValidatorIndex + 1;
            this.freeDTDValidatorIndex = i3;
            RevalidationHandler[] revalidationHandlerArr3 = this.dtdValidators;
            if (revalidationHandlerArr3.length == i3) {
                int i4 = this.currentSize + 2;
                this.currentSize = i4;
                RevalidationHandler[] revalidationHandlerArr4 = new RevalidationHandler[i4];
                System.arraycopy(revalidationHandlerArr3, 0, revalidationHandlerArr4, 0, revalidationHandlerArr3.length);
                this.dtdValidators = revalidationHandlerArr4;
            }
            this.dtdValidators[this.freeDTDValidatorIndex] = revalidationHandler;
        }
    }
}
