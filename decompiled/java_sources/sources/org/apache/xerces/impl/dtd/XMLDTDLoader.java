package org.apache.xerces.impl.dtd;

import com.sunia.HTREnginev2.C13677em;
import java.io.EOFException;
import java.io.IOException;
import java.io.StringReader;
import java.util.Locale;
import org.apache.xerces.impl.XMLDTDScannerImpl;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.msg.XMLMessageFormatter;
import org.apache.xerces.util.DefaultErrorHandler;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarLoader;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLErrorHandler;
import org.apache.xerces.xni.parser.XMLInputSource;

/* loaded from: classes13.dex */
public class XMLDTDLoader extends XMLDTDProcessor implements XMLGrammarLoader {
    protected static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    protected static final String ERROR_HANDLER = "http://apache.org/xml/properties/internal/error-handler";
    protected static final String LOCALE = "http://apache.org/xml/properties/locale";
    protected XMLDTDScannerImpl fDTDScanner;
    protected XMLEntityManager fEntityManager;
    protected XMLEntityResolver fEntityResolver;
    protected Locale fLocale;

    /* renamed from: t */
    public boolean f112179t;

    /* renamed from: u */
    public boolean f112180u;
    protected static final String STANDARD_URI_CONFORMANT_FEATURE = "http://apache.org/xml/features/standard-uri-conformant";
    protected static final String BALANCE_SYNTAX_TREES = "http://apache.org/xml/features/validation/balance-syntax-trees";

    /* renamed from: v */
    public static final String[] f112177v = {"http://xml.org/sax/features/validation", "http://apache.org/xml/features/validation/warn-on-duplicate-attdef", "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef", "http://apache.org/xml/features/scanner/notify-char-refs", STANDARD_URI_CONFORMANT_FEATURE, BALANCE_SYNTAX_TREES};

    /* renamed from: w */
    public static final String[] f112178w = {"http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/error-handler", "http://apache.org/xml/properties/internal/entity-resolver", "http://apache.org/xml/properties/internal/grammar-pool", "http://apache.org/xml/properties/internal/validator/dtd", "http://apache.org/xml/properties/locale"};

    public XMLDTDLoader() {
        this(new SymbolTable());
    }

    public XMLDTDScannerImpl createDTDScanner(SymbolTable symbolTable, XMLErrorReporter xMLErrorReporter, XMLEntityManager xMLEntityManager) {
        return new XMLDTDScannerImpl(symbolTable, xMLErrorReporter, xMLEntityManager);
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader
    public XMLEntityResolver getEntityResolver() {
        return this.fEntityResolver;
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader
    public XMLErrorHandler getErrorHandler() {
        return this.fErrorReporter.getErrorHandler();
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader
    public boolean getFeature(String str) throws XMLConfigurationException {
        if (str.equals("http://xml.org/sax/features/validation")) {
            return this.fValidation;
        }
        if (str.equals("http://apache.org/xml/features/validation/warn-on-duplicate-attdef")) {
            return this.fWarnDuplicateAttdef;
        }
        if (str.equals("http://apache.org/xml/features/validation/warn-on-undeclared-elemdef")) {
            return this.fWarnOnUndeclaredElemdef;
        }
        if (str.equals("http://apache.org/xml/features/scanner/notify-char-refs")) {
            return this.fDTDScanner.getFeature(str);
        }
        if (str.equals(STANDARD_URI_CONFORMANT_FEATURE)) {
            return this.f112179t;
        }
        if (str.equals(BALANCE_SYNTAX_TREES)) {
            return this.f112180u;
        }
        throw new XMLConfigurationException((short) 0, str);
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader
    public Locale getLocale() {
        return this.fLocale;
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader
    public Object getProperty(String str) throws XMLConfigurationException {
        if (str.equals("http://apache.org/xml/properties/internal/symbol-table")) {
            return this.fSymbolTable;
        }
        if (str.equals("http://apache.org/xml/properties/internal/error-reporter")) {
            return this.fErrorReporter;
        }
        if (str.equals("http://apache.org/xml/properties/internal/error-handler")) {
            return this.fErrorReporter.getErrorHandler();
        }
        if (str.equals("http://apache.org/xml/properties/internal/entity-resolver")) {
            return this.fEntityResolver;
        }
        if (str.equals("http://apache.org/xml/properties/locale")) {
            return getLocale();
        }
        if (str.equals("http://apache.org/xml/properties/internal/grammar-pool")) {
            return this.fGrammarPool;
        }
        if (str.equals("http://apache.org/xml/properties/internal/validator/dtd")) {
            return this.fValidator;
        }
        throw new XMLConfigurationException((short) 0, str);
    }

    @Override // org.apache.xerces.impl.dtd.XMLDTDProcessor, org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return (String[]) f112177v.clone();
    }

    @Override // org.apache.xerces.impl.dtd.XMLDTDProcessor, org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return (String[]) f112178w.clone();
    }

    public short getScannerVersion() {
        return (short) 1;
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader
    public Grammar loadGrammar(XMLInputSource xMLInputSource) throws IOException, XNIException {
        XMLGrammarPool xMLGrammarPool;
        reset();
        XMLDTDDescription xMLDTDDescription = new XMLDTDDescription(xMLInputSource.getPublicId(), xMLInputSource.getSystemId(), xMLInputSource.getBaseSystemId(), XMLEntityManager.expandSystemId(xMLInputSource.getSystemId(), xMLInputSource.getBaseSystemId(), this.f112179t), null);
        this.fDTDGrammar = !this.f112180u ? new DTDGrammar(this.fSymbolTable, xMLDTDDescription) : new C13677em(this.fSymbolTable, xMLDTDDescription);
        DTDGrammarBucket dTDGrammarBucket = new DTDGrammarBucket();
        this.fGrammarBucket = dTDGrammarBucket;
        dTDGrammarBucket.m69892d(false);
        this.fGrammarBucket.m69891c(this.fDTDGrammar);
        try {
            this.fDTDScanner.setInputSource(xMLInputSource);
            this.fDTDScanner.scanDTDExternalSubset(true);
        } catch (EOFException unused) {
        } catch (Throwable th) {
            this.fEntityManager.closeReaders();
            throw th;
        }
        this.fEntityManager.closeReaders();
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null && (xMLGrammarPool = this.fGrammarPool) != null) {
            xMLGrammarPool.cacheGrammars("http://www.w3.org/TR/REC-xml", new Grammar[]{dTDGrammar});
        }
        return this.fDTDGrammar;
    }

    public void loadGrammarWithContext(XMLDTDValidator xMLDTDValidator, String str, String str2, String str3, String str4, String str5) throws IOException, XNIException {
        DTDGrammarBucket m69901t = xMLDTDValidator.m69901t();
        DTDGrammar m69889a = m69901t.m69889a();
        if (m69889a == null || m69889a.m69882k()) {
            return;
        }
        this.fGrammarBucket = m69901t;
        this.fEntityManager.setScannerVersion(getScannerVersion());
        reset();
        if (str5 != null) {
            try {
                StringBuffer stringBuffer = new StringBuffer(str5.length() + 2);
                stringBuffer.append(str5);
                stringBuffer.append("]>");
                this.fEntityManager.startDocumentEntity(new XMLInputSource((String) null, str4, (String) null, new StringReader(stringBuffer.toString()), (String) null));
                this.fDTDScanner.scanDTDInternalSubset(true, false, str3 != null);
            } catch (EOFException unused) {
            } catch (Throwable th) {
                this.fEntityManager.closeReaders();
                throw th;
            }
        }
        if (str3 != null) {
            this.fDTDScanner.setInputSource(this.fEntityManager.resolveEntity(new XMLDTDDescription(str2, str3, str4, null, str)));
            this.fDTDScanner.scanDTDExternalSubset(true);
        }
        this.fEntityManager.closeReaders();
    }

    @Override // org.apache.xerces.impl.dtd.XMLDTDProcessor
    public void reset() {
        super.reset();
        this.fDTDScanner.reset();
        this.fEntityManager.reset();
        this.fErrorReporter.setDocumentLocator(this.fEntityManager.getEntityScanner());
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader
    public void setEntityResolver(XMLEntityResolver xMLEntityResolver) {
        this.fEntityResolver = xMLEntityResolver;
        this.fEntityManager.setProperty("http://apache.org/xml/properties/internal/entity-resolver", xMLEntityResolver);
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader
    public void setErrorHandler(XMLErrorHandler xMLErrorHandler) {
        this.fErrorReporter.setProperty("http://apache.org/xml/properties/internal/error-handler", xMLErrorHandler);
    }

    @Override // org.apache.xerces.impl.dtd.XMLDTDProcessor, org.apache.xerces.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        if (str.equals("http://xml.org/sax/features/validation")) {
            this.fValidation = z;
            return;
        }
        if (str.equals("http://apache.org/xml/features/validation/warn-on-duplicate-attdef")) {
            this.fWarnDuplicateAttdef = z;
            return;
        }
        if (str.equals("http://apache.org/xml/features/validation/warn-on-undeclared-elemdef")) {
            this.fWarnOnUndeclaredElemdef = z;
            return;
        }
        if (str.equals("http://apache.org/xml/features/scanner/notify-char-refs")) {
            this.fDTDScanner.setFeature(str, z);
        } else if (str.equals(STANDARD_URI_CONFORMANT_FEATURE)) {
            this.f112179t = z;
        } else {
            if (!str.equals(BALANCE_SYNTAX_TREES)) {
                throw new XMLConfigurationException((short) 0, str);
            }
            this.f112180u = z;
        }
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader
    public void setLocale(Locale locale) {
        this.fLocale = locale;
        this.fErrorReporter.setLocale(locale);
    }

    @Override // org.apache.xerces.impl.dtd.XMLDTDProcessor, org.apache.xerces.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        if (str.equals("http://apache.org/xml/properties/internal/symbol-table")) {
            this.fSymbolTable = (SymbolTable) obj;
        } else {
            if (!str.equals("http://apache.org/xml/properties/internal/error-reporter")) {
                if (str.equals("http://apache.org/xml/properties/internal/error-handler")) {
                    this.fErrorReporter.setProperty(str, obj);
                    return;
                }
                if (str.equals("http://apache.org/xml/properties/internal/entity-resolver")) {
                    this.fEntityResolver = (XMLEntityResolver) obj;
                    this.fEntityManager.setProperty(str, obj);
                } else if (str.equals("http://apache.org/xml/properties/locale")) {
                    setLocale((Locale) obj);
                    return;
                } else {
                    if (!str.equals("http://apache.org/xml/properties/internal/grammar-pool")) {
                        throw new XMLConfigurationException((short) 0, str);
                    }
                    this.fGrammarPool = (XMLGrammarPool) obj;
                    return;
                }
            }
            XMLErrorReporter xMLErrorReporter = (XMLErrorReporter) obj;
            this.fErrorReporter = xMLErrorReporter;
            if (xMLErrorReporter.getMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210") == null) {
                XMLMessageFormatter xMLMessageFormatter = new XMLMessageFormatter();
                this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210", xMLMessageFormatter);
                this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/1999/REC-xml-names-19990114", xMLMessageFormatter);
            }
        }
        this.fDTDScanner.setProperty(str, obj);
        this.fEntityManager.setProperty(str, obj);
    }

    public XMLDTDLoader(SymbolTable symbolTable) {
        this(symbolTable, null);
    }

    public XMLDTDLoader(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool) {
        this(symbolTable, xMLGrammarPool, null, new XMLEntityManager());
    }

    public XMLDTDLoader(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool, XMLErrorReporter xMLErrorReporter, XMLEntityResolver xMLEntityResolver) {
        this.f112179t = false;
        this.f112180u = false;
        this.fSymbolTable = symbolTable;
        this.fGrammarPool = xMLGrammarPool;
        if (xMLErrorReporter == null) {
            xMLErrorReporter = new XMLErrorReporter();
            xMLErrorReporter.setProperty("http://apache.org/xml/properties/internal/error-handler", new DefaultErrorHandler());
        }
        this.fErrorReporter = xMLErrorReporter;
        if (xMLErrorReporter.getMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210") == null) {
            XMLMessageFormatter xMLMessageFormatter = new XMLMessageFormatter();
            this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210", xMLMessageFormatter);
            this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/1999/REC-xml-names-19990114", xMLMessageFormatter);
        }
        this.fEntityResolver = xMLEntityResolver;
        if (xMLEntityResolver instanceof XMLEntityManager) {
            this.fEntityManager = (XMLEntityManager) xMLEntityResolver;
        } else {
            this.fEntityManager = new XMLEntityManager();
        }
        this.fEntityManager.setProperty("http://apache.org/xml/properties/internal/error-reporter", xMLErrorReporter);
        XMLDTDScannerImpl createDTDScanner = createDTDScanner(this.fSymbolTable, this.fErrorReporter, this.fEntityManager);
        this.fDTDScanner = createDTDScanner;
        createDTDScanner.setDTDHandler(this);
        this.fDTDScanner.setDTDContentModelHandler(this);
        reset();
    }
}
