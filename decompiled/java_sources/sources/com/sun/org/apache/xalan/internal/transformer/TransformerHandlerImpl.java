package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.ref.IncrementalSAXSource_Filter;
import com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM;
import java.io.IOException;
import javax.xml.transform.Result;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.sax.TransformerHandler;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.ext.DeclHandler;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes10.dex */
public class TransformerHandlerImpl implements EntityResolver, DTDHandler, ContentHandler, ErrorHandler, LexicalHandler, TransformerHandler, DeclHandler {
    private static boolean DEBUG;
    private String m_baseSystemID;
    private ContentHandler m_contentHandler;
    private DTDHandler m_dtdHandler;
    DTM m_dtm;
    private EntityResolver m_entityResolver;
    private ErrorHandler m_errorHandler;
    private final boolean m_incremental;
    private LexicalHandler m_lexicalHandler;
    private final boolean m_optimizer;
    private final boolean m_source_location;
    private TransformerImpl m_transformer;
    private boolean m_insideParse = false;
    private Result m_result = null;
    private Locator m_locator = null;
    private DeclHandler m_declHandler = null;

    public TransformerHandlerImpl(TransformerImpl transformerImpl, boolean z, String str) {
        this.m_entityResolver = null;
        this.m_dtdHandler = null;
        this.m_contentHandler = null;
        this.m_errorHandler = null;
        this.m_lexicalHandler = null;
        this.m_transformer = transformerImpl;
        this.m_baseSystemID = str;
        DTM dtm = transformerImpl.getXPathContext().getDTM(null, true, transformerImpl, true, true);
        this.m_dtm = dtm;
        dtm.setDocumentBaseURI(str);
        this.m_contentHandler = dtm.getContentHandler();
        this.m_dtdHandler = dtm.getDTDHandler();
        this.m_entityResolver = dtm.getEntityResolver();
        this.m_errorHandler = dtm.getErrorHandler();
        this.m_lexicalHandler = dtm.getLexicalHandler();
        this.m_incremental = transformerImpl.getIncremental();
        this.m_optimizer = transformerImpl.getOptimize();
        this.m_source_location = transformerImpl.getSource_location();
    }

    @Override // org.xml.sax.ext.DeclHandler
    public void attributeDecl(String str, String str2, String str3, String str4, String str5) throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#attributeDecl: " + str + ", " + str2 + ", etc...");
        }
        DeclHandler declHandler = this.m_declHandler;
        if (declHandler != null) {
            declHandler.attributeDecl(str, str2, str3, str4, str5);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#characters: " + i + ", " + i2);
        }
        ContentHandler contentHandler = this.m_contentHandler;
        if (contentHandler != null) {
            contentHandler.characters(cArr, i, i2);
        }
    }

    public void clearCoRoutine() {
        clearCoRoutine(null);
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void comment(char[] cArr, int i, int i2) throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#comment: " + i + ", " + i2);
        }
        LexicalHandler lexicalHandler = this.m_lexicalHandler;
        if (lexicalHandler != null) {
            lexicalHandler.comment(cArr, i, i2);
        }
    }

    @Override // org.xml.sax.ext.DeclHandler
    public void elementDecl(String str, String str2) throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#elementDecl: " + str + ", " + str2);
        }
        DeclHandler declHandler = this.m_declHandler;
        if (declHandler != null) {
            declHandler.elementDecl(str, str2);
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endCDATA() throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#endCDATA");
        }
        LexicalHandler lexicalHandler = this.m_lexicalHandler;
        if (lexicalHandler != null) {
            lexicalHandler.endCDATA();
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endDTD() throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#endDTD");
        }
        LexicalHandler lexicalHandler = this.m_lexicalHandler;
        if (lexicalHandler != null) {
            lexicalHandler.endDTD();
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#endDocument");
        }
        this.m_insideParse = false;
        ContentHandler contentHandler = this.m_contentHandler;
        if (contentHandler != null) {
            contentHandler.endDocument();
        }
        if (this.m_incremental) {
            this.m_transformer.waitTransformThread();
        } else {
            this.m_transformer.setSourceTreeDocForThread(this.m_dtm.getDocument());
            this.m_transformer.run();
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#endElement: " + str3);
        }
        ContentHandler contentHandler = this.m_contentHandler;
        if (contentHandler != null) {
            contentHandler.endElement(str, str2, str3);
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endEntity(String str) throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#endEntity: " + str);
        }
        LexicalHandler lexicalHandler = this.m_lexicalHandler;
        if (lexicalHandler != null) {
            lexicalHandler.endEntity(str);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#endPrefixMapping: " + str);
        }
        ContentHandler contentHandler = this.m_contentHandler;
        if (contentHandler != null) {
            contentHandler.endPrefixMapping(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:?, code lost:
    
        throw r3;
     */
    @Override // org.xml.sax.ErrorHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void error(org.xml.sax.SAXParseException r3) throws org.xml.sax.SAXException {
        /*
            r2 = this;
            com.sun.org.apache.xalan.internal.transformer.TransformerImpl r0 = r2.m_transformer
            javax.xml.transform.ErrorListener r0 = r0.getErrorListener()
            boolean r1 = r0 instanceof org.xml.sax.ErrorHandler
            if (r1 == 0) goto L17
            org.xml.sax.ErrorHandler r0 = (org.xml.sax.ErrorHandler) r0
            r0.error(r3)
            org.xml.sax.ErrorHandler r2 = r2.m_errorHandler
            if (r2 == 0) goto L26
            r2.error(r3)
            goto L26
        L17:
            javax.xml.transform.TransformerException r1 = new javax.xml.transform.TransformerException     // Catch: javax.xml.transform.TransformerException -> L27
            r1.<init>(r3)     // Catch: javax.xml.transform.TransformerException -> L27
            r0.error(r1)     // Catch: javax.xml.transform.TransformerException -> L27
            org.xml.sax.ErrorHandler r2 = r2.m_errorHandler     // Catch: javax.xml.transform.TransformerException -> L27
            if (r2 == 0) goto L26
            r2.error(r3)     // Catch: javax.xml.transform.TransformerException -> L27
        L26:
            return
        L27:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.transformer.TransformerHandlerImpl.error(org.xml.sax.SAXParseException):void");
    }

    @Override // org.xml.sax.ext.DeclHandler
    public void externalEntityDecl(String str, String str2, String str3) throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#externalEntityDecl: " + str + ", " + str2 + ", " + str3);
        }
        DeclHandler declHandler = this.m_declHandler;
        if (declHandler != null) {
            declHandler.externalEntityDecl(str, str2, str3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:?, code lost:
    
        throw r3;
     */
    @Override // org.xml.sax.ErrorHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void fatalError(org.xml.sax.SAXParseException r3) throws org.xml.sax.SAXException {
        /*
            r2 = this;
            org.xml.sax.ErrorHandler r0 = r2.m_errorHandler
            if (r0 == 0) goto L7
            r0.fatalError(r3)     // Catch: org.xml.sax.SAXParseException -> L7
        L7:
            com.sun.org.apache.xalan.internal.transformer.TransformerImpl r0 = r2.m_transformer
            javax.xml.transform.ErrorListener r0 = r0.getErrorListener()
            boolean r1 = r0 instanceof org.xml.sax.ErrorHandler
            if (r1 == 0) goto L1e
            org.xml.sax.ErrorHandler r0 = (org.xml.sax.ErrorHandler) r0
            r0.fatalError(r3)
            org.xml.sax.ErrorHandler r2 = r2.m_errorHandler
            if (r2 == 0) goto L2d
            r2.fatalError(r3)
            goto L2d
        L1e:
            javax.xml.transform.TransformerException r1 = new javax.xml.transform.TransformerException     // Catch: javax.xml.transform.TransformerException -> L2e
            r1.<init>(r3)     // Catch: javax.xml.transform.TransformerException -> L2e
            r0.fatalError(r1)     // Catch: javax.xml.transform.TransformerException -> L2e
            org.xml.sax.ErrorHandler r2 = r2.m_errorHandler     // Catch: javax.xml.transform.TransformerException -> L2e
            if (r2 == 0) goto L2d
            r2.fatalError(r3)     // Catch: javax.xml.transform.TransformerException -> L2e
        L2d:
            return
        L2e:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.transformer.TransformerHandlerImpl.fatalError(org.xml.sax.SAXParseException):void");
    }

    @Override // javax.xml.transform.sax.TransformerHandler
    public String getSystemId() {
        return this.m_baseSystemID;
    }

    @Override // javax.xml.transform.sax.TransformerHandler
    public Transformer getTransformer() {
        return this.m_transformer;
    }

    @Override // org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#ignorableWhitespace: " + i + ", " + i2);
        }
        ContentHandler contentHandler = this.m_contentHandler;
        if (contentHandler != null) {
            contentHandler.ignorableWhitespace(cArr, i, i2);
        }
    }

    @Override // org.xml.sax.ext.DeclHandler
    public void internalEntityDecl(String str, String str2) throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#internalEntityDecl: " + str + ", " + str2);
        }
        DeclHandler declHandler = this.m_declHandler;
        if (declHandler != null) {
            declHandler.internalEntityDecl(str, str2);
        }
    }

    @Override // org.xml.sax.DTDHandler
    public void notationDecl(String str, String str2, String str3) throws SAXException {
        DTDHandler dTDHandler = this.m_dtdHandler;
        if (dTDHandler != null) {
            dTDHandler.notationDecl(str, str2, str3);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#processingInstruction: " + str + ", " + str2);
        }
        ContentHandler contentHandler = this.m_contentHandler;
        if (contentHandler != null) {
            contentHandler.processingInstruction(str, str2);
        }
    }

    @Override // org.xml.sax.EntityResolver
    public InputSource resolveEntity(String str, String str2) throws SAXException, IOException {
        EntityResolver entityResolver = this.m_entityResolver;
        if (entityResolver != null) {
            return entityResolver.resolveEntity(str, str2);
        }
        return null;
    }

    @Override // org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#setDocumentLocator: " + locator.getSystemId());
        }
        this.m_locator = locator;
        if (this.m_baseSystemID == null) {
            setSystemId(locator.getSystemId());
        }
        ContentHandler contentHandler = this.m_contentHandler;
        if (contentHandler != null) {
            contentHandler.setDocumentLocator(locator);
        }
    }

    @Override // javax.xml.transform.sax.TransformerHandler
    public void setResult(Result result) throws IllegalArgumentException {
        if (result == null) {
            throw new IllegalArgumentException(XSLMessages.createMessage("ER_RESULT_NULL", null));
        }
        try {
            this.m_transformer.setSerializationHandler(this.m_transformer.createSerializationHandler(result));
            this.m_result = result;
        } catch (TransformerException unused) {
            throw new IllegalArgumentException(XSLMessages.createMessage("ER_RESULT_COULD_NOT_BE_SET", null));
        }
    }

    @Override // javax.xml.transform.sax.TransformerHandler
    public void setSystemId(String str) {
        this.m_baseSystemID = str;
        this.m_dtm.setDocumentBaseURI(str);
    }

    @Override // org.xml.sax.ContentHandler
    public void skippedEntity(String str) throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#skippedEntity: " + str);
        }
        ContentHandler contentHandler = this.m_contentHandler;
        if (contentHandler != null) {
            contentHandler.skippedEntity(str);
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startCDATA() throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#startCDATA");
        }
        LexicalHandler lexicalHandler = this.m_lexicalHandler;
        if (lexicalHandler != null) {
            lexicalHandler.startCDATA();
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startDTD(String str, String str2, String str3) throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#startDTD: " + str + ", " + str2 + ", " + str3);
        }
        LexicalHandler lexicalHandler = this.m_lexicalHandler;
        if (lexicalHandler != null) {
            lexicalHandler.startDTD(str, str2, str3);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#startDocument");
        }
        this.m_insideParse = true;
        if (this.m_contentHandler != null) {
            if (this.m_incremental) {
                this.m_transformer.setSourceTreeDocForThread(this.m_dtm.getDocument());
                this.m_transformer.runTransformThread(Thread.currentThread().getPriority());
            }
            this.m_contentHandler.startDocument();
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#startElement: " + str3);
        }
        ContentHandler contentHandler = this.m_contentHandler;
        if (contentHandler != null) {
            contentHandler.startElement(str, str2, str3, attributes);
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startEntity(String str) throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#startEntity: " + str);
        }
        LexicalHandler lexicalHandler = this.m_lexicalHandler;
        if (lexicalHandler != null) {
            lexicalHandler.startEntity(str);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) throws SAXException {
        if (DEBUG) {
            System.out.println("TransformerHandlerImpl#startPrefixMapping: " + str + ", " + str2);
        }
        ContentHandler contentHandler = this.m_contentHandler;
        if (contentHandler != null) {
            contentHandler.startPrefixMapping(str, str2);
        }
    }

    @Override // org.xml.sax.DTDHandler
    public void unparsedEntityDecl(String str, String str2, String str3, String str4) throws SAXException {
        DTDHandler dTDHandler = this.m_dtdHandler;
        if (dTDHandler != null) {
            dTDHandler.unparsedEntityDecl(str, str2, str3, str4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:?, code lost:
    
        throw r2;
     */
    @Override // org.xml.sax.ErrorHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void warning(org.xml.sax.SAXParseException r2) throws org.xml.sax.SAXException {
        /*
            r1 = this;
            com.sun.org.apache.xalan.internal.transformer.TransformerImpl r1 = r1.m_transformer
            javax.xml.transform.ErrorListener r1 = r1.getErrorListener()
            boolean r0 = r1 instanceof org.xml.sax.ErrorHandler
            if (r0 == 0) goto L10
            org.xml.sax.ErrorHandler r1 = (org.xml.sax.ErrorHandler) r1
            r1.warning(r2)
            goto L18
        L10:
            javax.xml.transform.TransformerException r0 = new javax.xml.transform.TransformerException     // Catch: javax.xml.transform.TransformerException -> L19
            r0.<init>(r2)     // Catch: javax.xml.transform.TransformerException -> L19
            r1.warning(r0)     // Catch: javax.xml.transform.TransformerException -> L19
        L18:
            return
        L19:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.transformer.TransformerHandlerImpl.warning(org.xml.sax.SAXParseException):void");
    }

    public void clearCoRoutine(SAXException sAXException) {
        if (sAXException != null) {
            this.m_transformer.setExceptionThrown(sAXException);
        }
        if (this.m_dtm instanceof SAX2DTM) {
            if (DEBUG) {
                System.err.println("In clearCoRoutine...");
            }
            try {
                SAX2DTM sax2dtm = (SAX2DTM) this.m_dtm;
                ContentHandler contentHandler = this.m_contentHandler;
                if (contentHandler != null && (contentHandler instanceof IncrementalSAXSource_Filter)) {
                    ((IncrementalSAXSource_Filter) contentHandler).deliverMoreNodes(false);
                }
                sax2dtm.clearCoRoutine(true);
                this.m_contentHandler = null;
                this.m_dtdHandler = null;
                this.m_entityResolver = null;
                this.m_errorHandler = null;
                this.m_lexicalHandler = null;
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (DEBUG) {
                System.err.println("...exiting clearCoRoutine");
            }
        }
    }
}
