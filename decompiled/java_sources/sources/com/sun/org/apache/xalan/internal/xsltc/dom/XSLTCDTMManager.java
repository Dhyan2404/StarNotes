package com.sun.org.apache.xalan.internal.xsltc.dom;

import com.sun.org.apache.xalan.internal.xsltc.trax.DOM2SAX;
import com.sun.org.apache.xalan.internal.xsltc.trax.StAXEvent2SAX;
import com.sun.org.apache.xalan.internal.xsltc.trax.StAXStream2SAX;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMException;
import com.sun.org.apache.xml.internal.dtm.DTMWSFilter;
import com.sun.org.apache.xml.internal.dtm.ref.DTMManagerDefault;
import com.sun.org.apache.xml.internal.res.XMLMessages;
import com.sun.org.apache.xml.internal.utils.SystemIDResolver;
import com.sun.org.apache.xml.internal.utils.WrappedRuntimeException;
import javax.xml.transform.Source;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stax.StAXSource;
import javax.xml.transform.stream.StreamSource;
import org.xml.sax.InputSource;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;

/* loaded from: classes10.dex */
public class XSLTCDTMManager extends DTMManagerDefault {
    private static final boolean DEBUG = false;
    private static final String DEFAULT_CLASS_NAME = "com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager";
    private static final String DEFAULT_PROP_NAME = "com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager";
    private static final boolean DUMPTREE = false;

    public static Class getDTMManagerClass() {
        Class lookUpFactoryClass = ObjectFactory.lookUpFactoryClass("com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager", null, "com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager");
        return lookUpFactoryClass != null ? lookUpFactoryClass : XSLTCDTMManager.class;
    }

    public static XSLTCDTMManager newInstance() {
        return new XSLTCDTMManager();
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMManagerDefault, com.sun.org.apache.xml.internal.dtm.DTMManager
    public DTM getDTM(Source source, boolean z, DTMWSFilter dTMWSFilter, boolean z2, boolean z3) {
        return getDTM(source, z, dTMWSFilter, z2, z3, false, 0, true, false);
    }

    public DTM getDTM(Source source, boolean z, DTMWSFilter dTMWSFilter, boolean z2, boolean z3, boolean z4) {
        return getDTM(source, z, dTMWSFilter, z2, z3, false, 0, z4, false);
    }

    public DTM getDTM(Source source, boolean z, DTMWSFilter dTMWSFilter, boolean z2, boolean z3, boolean z4, boolean z5) {
        return getDTM(source, z, dTMWSFilter, z2, z3, false, 0, z4, z5);
    }

    public DTM getDTM(Source source, boolean z, DTMWSFilter dTMWSFilter, boolean z2, boolean z3, boolean z4, int i, boolean z5) {
        return getDTM(source, z, dTMWSFilter, z2, z3, z4, i, z5, false);
    }

    public DTM getDTM(Source source, boolean z, DTMWSFilter dTMWSFilter, boolean z2, boolean z3, boolean z4, int i, boolean z5, boolean z6) {
        boolean z7;
        XMLReader xMLReader;
        InputSource inputSource;
        SAXImpl sAXImpl;
        InputSource inputSource2;
        SAXImpl sAXImpl2;
        StAXEvent2SAX stAXEvent2SAX;
        StAXStream2SAX stAXStream2SAX;
        SAXImpl sAXImpl3;
        int firstFreeDTMID = getFirstFreeDTMID();
        int i2 = firstFreeDTMID << 16;
        if (source != null && (source instanceof StAXSource)) {
            StAXSource stAXSource = (StAXSource) source;
            if (stAXSource.getXMLEventReader() != null) {
                stAXStream2SAX = null;
                stAXEvent2SAX = new StAXEvent2SAX(stAXSource.getXMLEventReader());
            } else if (stAXSource.getXMLStreamReader() != null) {
                stAXEvent2SAX = null;
                stAXStream2SAX = new StAXStream2SAX(stAXSource.getXMLStreamReader());
            } else {
                stAXEvent2SAX = null;
                stAXStream2SAX = null;
            }
            if (i <= 0) {
                sAXImpl3 = new SAXImpl(this, source, i2, dTMWSFilter, null, z3, 512, z5, z6);
            } else {
                sAXImpl3 = new SAXImpl(this, source, i2, dTMWSFilter, null, z3, i, z5, z6);
            }
            sAXImpl3.setDocumentURI(source.getSystemId());
            addDTM(sAXImpl3, firstFreeDTMID, 0);
            try {
                if (stAXEvent2SAX == null) {
                    if (stAXStream2SAX != null) {
                        stAXStream2SAX.setContentHandler(sAXImpl3);
                        stAXStream2SAX.parse();
                    }
                    return sAXImpl3;
                }
                stAXEvent2SAX.setContentHandler(sAXImpl3);
                stAXEvent2SAX.parse();
                return sAXImpl3;
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new WrappedRuntimeException(e2);
            }
        }
        if (source != null && (source instanceof DOMSource)) {
            DOM2SAX dom2sax = new DOM2SAX(((DOMSource) source).getNode());
            if (i <= 0) {
                sAXImpl2 = new SAXImpl(this, source, i2, dTMWSFilter, null, z3, 512, z5, z6);
            } else {
                sAXImpl2 = new SAXImpl(this, source, i2, dTMWSFilter, null, z3, i, z5, z6);
            }
            sAXImpl2.setDocumentURI(source.getSystemId());
            addDTM(sAXImpl2, firstFreeDTMID, 0);
            dom2sax.setContentHandler(sAXImpl2);
            try {
                dom2sax.parse();
                return sAXImpl2;
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Exception e4) {
                throw new WrappedRuntimeException(e4);
            }
        }
        boolean z8 = source != null ? source instanceof SAXSource : true;
        boolean z9 = source != null ? source instanceof StreamSource : false;
        if (!z8 && !z9) {
            throw new DTMException(XMLMessages.createXMLMessage("ER_NOT_SUPPORTED", new Object[]{source}));
        }
        if (source == null) {
            inputSource = null;
            xMLReader = null;
            z7 = false;
        } else {
            XMLReader xMLReader2 = getXMLReader(source);
            InputSource sourceToInputSource = SAXSource.sourceToInputSource(source);
            String systemId = sourceToInputSource.getSystemId();
            if (systemId != null) {
                try {
                    systemId = SystemIDResolver.getAbsoluteURI(systemId);
                } catch (Exception unused) {
                    System.err.println("Can not absolutize URL: " + systemId);
                }
                sourceToInputSource.setSystemId(systemId);
            }
            z7 = z4;
            xMLReader = xMLReader2;
            inputSource = sourceToInputSource;
        }
        if (i <= 0) {
            inputSource2 = inputSource;
            sAXImpl = new SAXImpl(this, source, i2, dTMWSFilter, null, z3, 512, z5, z6);
        } else {
            inputSource2 = inputSource;
            sAXImpl = new SAXImpl(this, source, i2, dTMWSFilter, null, z3, i, z5, z6);
        }
        addDTM(sAXImpl, firstFreeDTMID, 0);
        if (xMLReader == null) {
            return sAXImpl;
        }
        xMLReader.setContentHandler(sAXImpl.getBuilder());
        if (!z7 || xMLReader.getDTDHandler() == null) {
            xMLReader.setDTDHandler(sAXImpl);
        }
        if (!z7 || xMLReader.getErrorHandler() == null) {
            xMLReader.setErrorHandler(sAXImpl);
        }
        try {
            try {
                xMLReader.setProperty("http://xml.org/sax/properties/lexical-handler", sAXImpl);
            } catch (SAXNotRecognizedException | SAXNotSupportedException unused2) {
            }
            try {
                try {
                    xMLReader.parse(inputSource2);
                    return sAXImpl;
                } catch (Exception e5) {
                    throw new WrappedRuntimeException(e5);
                }
            } catch (RuntimeException e6) {
                throw e6;
            }
        } finally {
            if (!z7) {
                releaseXMLReader(xMLReader);
            }
        }
    }
}
