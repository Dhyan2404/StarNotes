package org.apache.xerces.parsers;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Locale;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarLoader;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLErrorHandler;
import org.apache.xerces.xni.parser.XMLInputSource;

/* loaded from: classes13.dex */
public class XMLGrammarPreparser {
    protected static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    protected static final String ERROR_HANDLER = "http://apache.org/xml/properties/internal/error-handler";
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String GRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";

    /* renamed from: c */
    public static final String f113424c = "http://apache.org/xml/features/continue-after-fatal-error";

    /* renamed from: d */
    public static final Hashtable f113425d;

    /* renamed from: e */
    public static final String[] f113426e;

    /* renamed from: a */
    public final Hashtable f113427a;

    /* renamed from: b */
    public int f113428b;
    protected XMLEntityResolver fEntityResolver;
    protected final XMLErrorReporter fErrorReporter;
    protected XMLGrammarPool fGrammarPool;
    protected Locale fLocale;
    protected final SymbolTable fSymbolTable;

    /* renamed from: org.apache.xerces.parsers.XMLGrammarPreparser$a */
    /* loaded from: classes13.dex */
    public static class C20077a {

        /* renamed from: a */
        public final XMLGrammarLoader f113429a;

        /* renamed from: b */
        public int f113430b = 0;

        public C20077a(XMLGrammarLoader xMLGrammarLoader) {
            this.f113429a = xMLGrammarLoader;
        }
    }

    static {
        Hashtable hashtable = new Hashtable();
        f113425d = hashtable;
        hashtable.put("http://www.w3.org/2001/XMLSchema", "org.apache.xerces.impl.xs.XMLSchemaLoader");
        hashtable.put("http://www.w3.org/TR/REC-xml", "org.apache.xerces.impl.dtd.XMLDTDLoader");
        f113426e = new String[]{"http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/error-handler", "http://apache.org/xml/properties/internal/entity-resolver", "http://apache.org/xml/properties/internal/grammar-pool"};
    }

    public XMLGrammarPreparser() {
        this(new SymbolTable());
    }

    /* renamed from: a */
    public final void m70556a() {
        Enumeration elements = this.f113427a.elements();
        while (elements.hasMoreElements()) {
            ((C20077a) elements.nextElement()).f113430b = 0;
        }
        this.f113428b = 1;
    }

    public XMLEntityResolver getEntityResolver() {
        return this.fEntityResolver;
    }

    public XMLErrorHandler getErrorHandler() {
        return this.fErrorReporter.getErrorHandler();
    }

    public boolean getFeature(String str, String str2) {
        return ((C20077a) this.f113427a.get(str)).f113429a.getFeature(str2);
    }

    public XMLGrammarPool getGrammarPool() {
        return this.fGrammarPool;
    }

    public XMLGrammarLoader getLoader(String str) {
        C20077a c20077a = (C20077a) this.f113427a.get(str);
        if (c20077a != null) {
            return c20077a.f113429a;
        }
        return null;
    }

    public Locale getLocale() {
        return this.fLocale;
    }

    public Object getProperty(String str, String str2) {
        return ((C20077a) this.f113427a.get(str)).f113429a.getProperty(str2);
    }

    public Grammar preparseGrammar(String str, XMLInputSource xMLInputSource) throws XNIException, IOException {
        if (!this.f113427a.containsKey(str)) {
            return null;
        }
        C20077a c20077a = (C20077a) this.f113427a.get(str);
        XMLGrammarLoader xMLGrammarLoader = c20077a.f113429a;
        if (c20077a.f113430b != this.f113428b) {
            xMLGrammarLoader.setProperty("http://apache.org/xml/properties/internal/symbol-table", this.fSymbolTable);
            xMLGrammarLoader.setProperty("http://apache.org/xml/properties/internal/entity-resolver", this.fEntityResolver);
            xMLGrammarLoader.setProperty("http://apache.org/xml/properties/internal/error-reporter", this.fErrorReporter);
            XMLGrammarPool xMLGrammarPool = this.fGrammarPool;
            if (xMLGrammarPool != null) {
                try {
                    xMLGrammarLoader.setProperty("http://apache.org/xml/properties/internal/grammar-pool", xMLGrammarPool);
                } catch (Exception unused) {
                }
            }
            c20077a.f113430b = this.f113428b;
        }
        return xMLGrammarLoader.loadGrammar(xMLInputSource);
    }

    public boolean registerPreparser(String str, XMLGrammarLoader xMLGrammarLoader) {
        if (xMLGrammarLoader != null) {
            this.f113427a.put(str, new C20077a(xMLGrammarLoader));
            return true;
        }
        Hashtable hashtable = f113425d;
        if (hashtable.containsKey(str)) {
            try {
                this.f113427a.put(str, new C20077a((XMLGrammarLoader) ObjectFactory.m70540h((String) hashtable.get(str), ObjectFactory.m70536d(), true)));
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public void setEntityResolver(XMLEntityResolver xMLEntityResolver) {
        if (this.fEntityResolver != xMLEntityResolver) {
            int i = this.f113428b + 1;
            this.f113428b = i;
            if (i < 0) {
                m70556a();
            }
            this.fEntityResolver = xMLEntityResolver;
        }
    }

    public void setErrorHandler(XMLErrorHandler xMLErrorHandler) {
        this.fErrorReporter.setProperty("http://apache.org/xml/properties/internal/error-handler", xMLErrorHandler);
    }

    public void setFeature(String str, boolean z) {
        Enumeration elements = this.f113427a.elements();
        while (elements.hasMoreElements()) {
            try {
                ((C20077a) elements.nextElement()).f113429a.setFeature(str, z);
            } catch (Exception unused) {
            }
        }
        if (str.equals(f113424c)) {
            this.fErrorReporter.setFeature(f113424c, z);
        }
    }

    public void setGrammarPool(XMLGrammarPool xMLGrammarPool) {
        if (this.fGrammarPool != xMLGrammarPool) {
            int i = this.f113428b + 1;
            this.f113428b = i;
            if (i < 0) {
                m70556a();
            }
            this.fGrammarPool = xMLGrammarPool;
        }
    }

    public void setLocale(Locale locale) {
        this.fLocale = locale;
        this.fErrorReporter.setLocale(locale);
    }

    public void setProperty(String str, Object obj) {
        Enumeration elements = this.f113427a.elements();
        while (elements.hasMoreElements()) {
            try {
                ((C20077a) elements.nextElement()).f113429a.setProperty(str, obj);
            } catch (Exception unused) {
            }
        }
    }

    public XMLGrammarPreparser(SymbolTable symbolTable) {
        this.f113428b = 1;
        this.fSymbolTable = symbolTable;
        this.f113427a = new Hashtable();
        this.fErrorReporter = new XMLErrorReporter();
        setLocale(Locale.getDefault());
        this.fEntityResolver = new XMLEntityManager();
    }
}
