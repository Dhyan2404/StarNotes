package com.sunia.HTREnginev2;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.p117xs.XMLSchemaValidator;
import org.apache.xerces.impl.p117xs.XSMessageFormatter;
import org.apache.xerces.impl.validation.ValidationManager;
import org.apache.xerces.jaxp.validation.XSGrammarPoolContainer;
import org.apache.xerces.util.DOMEntityResolverWrapper;
import org.apache.xerces.util.ErrorHandlerWrapper;
import org.apache.xerces.util.NamespaceSupport;
import org.apache.xerces.util.ParserConfigurationSettings;
import org.apache.xerces.util.SecurityManager;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.ErrorHandler;

/* loaded from: classes13.dex */
public final class tlo extends ParserConfigurationSettings implements XMLComponentManager {

    /* renamed from: A0 */
    public static final String f85430A0 = "http://apache.org/xml/properties/locale";

    /* renamed from: J */
    public static final String f85431J = "http://apache.org/xml/features/validation/schema/normalized-value";

    /* renamed from: O */
    public static final String f85432O = "http://apache.org/xml/features/validation/schema/element-default";

    /* renamed from: Q */
    public static final String f85433Q = "http://apache.org/xml/features/validation/schema/augment-psvi";

    /* renamed from: Z */
    public static final String f85434Z = "http://apache.org/xml/properties/internal/entity-manager";

    /* renamed from: k0 */
    public static final String f85435k0 = "http://apache.org/xml/properties/internal/entity-resolver";

    /* renamed from: q0 */
    public static final String f85436q0 = "http://apache.org/xml/properties/internal/error-handler";

    /* renamed from: s */
    public static final String f85437s = "http://apache.org/xml/features/validation/schema";

    /* renamed from: t */
    public static final String f85438t = "http://xml.org/sax/features/validation";

    /* renamed from: t0 */
    public static final String f85439t0 = "http://apache.org/xml/properties/internal/error-reporter";

    /* renamed from: u */
    public static final String f85440u = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only";

    /* renamed from: u0 */
    public static final String f85441u0 = "http://apache.org/xml/properties/internal/namespace-context";

    /* renamed from: v */
    public static final String f85442v = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl";

    /* renamed from: v0 */
    public static final String f85443v0 = "http://apache.org/xml/properties/internal/validator/schema";

    /* renamed from: w */
    public static final String f85444w = "http://apache.org/xml/features/validation/id-idref-checking";

    /* renamed from: w0 */
    public static final String f85445w0 = "http://apache.org/xml/properties/security-manager";

    /* renamed from: x */
    public static final String f85446x = "http://apache.org/xml/features/validation/unparsed-entity-checking";

    /* renamed from: x0 */
    public static final String f85447x0 = "http://apache.org/xml/properties/internal/symbol-table";

    /* renamed from: y */
    public static final String f85448y = "http://apache.org/xml/features/validation/identity-constraint-checking";

    /* renamed from: y0 */
    public static final String f85449y0 = "http://apache.org/xml/properties/internal/validation-manager";

    /* renamed from: z */
    public static final String f85450z = "http://apache.org/xml/features/disallow-doctype-decl";

    /* renamed from: z0 */
    public static final String f85451z0 = "http://apache.org/xml/properties/internal/grammar-pool";

    /* renamed from: e */
    public boolean f85452e = true;

    /* renamed from: f */
    public boolean f85453f;

    /* renamed from: g */
    public final HashMap f85454g;

    /* renamed from: h */
    public final XMLEntityManager f85455h;

    /* renamed from: i */
    public final XMLErrorReporter f85456i;

    /* renamed from: j */
    public final NamespaceContext f85457j;

    /* renamed from: k */
    public final XMLSchemaValidator f85458k;

    /* renamed from: l */
    public final ValidationManager f85459l;

    /* renamed from: m */
    public final HashMap f85460m;

    /* renamed from: n */
    public final HashMap f85461n;

    /* renamed from: o */
    public final SecurityManager f85462o;

    /* renamed from: p */
    public ErrorHandler f85463p;

    /* renamed from: q */
    public LSResourceResolver f85464q;

    /* renamed from: r */
    public Locale f85465r;

    public tlo(XSGrammarPoolContainer xSGrammarPoolContainer) {
        HashMap hashMap = new HashMap();
        this.f85454g = hashMap;
        this.f85460m = new HashMap();
        this.f85461n = new HashMap();
        this.f85463p = null;
        this.f85464q = null;
        this.f85465r = null;
        XMLEntityManager xMLEntityManager = new XMLEntityManager();
        this.f85455h = xMLEntityManager;
        hashMap.put("http://apache.org/xml/properties/internal/entity-manager", xMLEntityManager);
        XMLErrorReporter xMLErrorReporter = new XMLErrorReporter();
        this.f85456i = xMLErrorReporter;
        hashMap.put("http://apache.org/xml/properties/internal/error-reporter", xMLErrorReporter);
        NamespaceSupport namespaceSupport = new NamespaceSupport();
        this.f85457j = namespaceSupport;
        hashMap.put("http://apache.org/xml/properties/internal/namespace-context", namespaceSupport);
        XMLSchemaValidator xMLSchemaValidator = new XMLSchemaValidator();
        this.f85458k = xMLSchemaValidator;
        hashMap.put("http://apache.org/xml/properties/internal/validator/schema", xMLSchemaValidator);
        ValidationManager validationManager = new ValidationManager();
        this.f85459l = validationManager;
        hashMap.put("http://apache.org/xml/properties/internal/validation-manager", validationManager);
        hashMap.put("http://apache.org/xml/properties/internal/entity-resolver", null);
        hashMap.put("http://apache.org/xml/properties/internal/error-handler", null);
        hashMap.put("http://apache.org/xml/properties/security-manager", null);
        hashMap.put("http://apache.org/xml/properties/internal/symbol-table", new SymbolTable());
        hashMap.put("http://apache.org/xml/properties/internal/grammar-pool", xSGrammarPoolContainer.getGrammarPool());
        this.f85453f = xSGrammarPoolContainer.isFullyComposed();
        xMLErrorReporter.putMessageFormatter("http://www.w3.org/TR/xml-schema-1", new XSMessageFormatter());
        addRecognizedFeatures(new String[]{"http://apache.org/xml/features/disallow-doctype-decl", f85431J, f85432O, f85433Q});
        HashMap hashMap2 = this.fFeatures;
        Boolean bool = Boolean.FALSE;
        hashMap2.put("http://apache.org/xml/features/disallow-doctype-decl", bool);
        this.fFeatures.put(f85431J, bool);
        this.fFeatures.put(f85432O, bool);
        HashMap hashMap3 = this.fFeatures;
        Boolean bool2 = Boolean.TRUE;
        hashMap3.put(f85433Q, bool2);
        m57390a(xMLEntityManager, xSGrammarPoolContainer);
        m57390a(xMLErrorReporter, xSGrammarPoolContainer);
        m57390a(xMLSchemaValidator, xSGrammarPoolContainer);
        if (bool2.equals(xSGrammarPoolContainer.getFeature("http://javax.xml.XMLConstants/feature/secure-processing"))) {
            this.f85462o = new SecurityManager();
        } else {
            this.f85462o = null;
        }
        hashMap.put("http://apache.org/xml/properties/security-manager", this.f85462o);
        this.fFeatures.put(f85442v, bool);
        this.fFeatures.put(f85444w, bool2);
        this.fFeatures.put(f85448y, bool2);
        this.fFeatures.put(f85446x, bool2);
    }

    /* renamed from: a */
    public void m57390a(XMLComponent xMLComponent, XSGrammarPoolContainer xSGrammarPoolContainer) {
        String[] recognizedFeatures = xMLComponent.getRecognizedFeatures();
        addRecognizedFeatures(recognizedFeatures);
        String[] recognizedProperties = xMLComponent.getRecognizedProperties();
        addRecognizedProperties(recognizedProperties);
        m57395f(xMLComponent, recognizedFeatures, xSGrammarPoolContainer);
        m57396g(xMLComponent, recognizedProperties);
    }

    /* renamed from: b */
    public ErrorHandler m57391b() {
        return this.f85463p;
    }

    /* renamed from: c */
    public LSResourceResolver m57392c() {
        return this.f85464q;
    }

    /* renamed from: d */
    public void m57393d() {
        this.f85452e = true;
        this.f85454g.put("http://apache.org/xml/properties/internal/entity-resolver", null);
        this.f85454g.put("http://apache.org/xml/properties/internal/error-handler", null);
        this.f85454g.put("http://apache.org/xml/properties/security-manager", this.f85462o);
        setLocale(null);
        this.f85454g.put(f85430A0, null);
        if (!this.f85460m.isEmpty()) {
            for (Map.Entry entry : this.f85460m.entrySet()) {
                super.setFeature((String) entry.getKey(), ((Boolean) entry.getValue()).booleanValue());
            }
            this.f85460m.clear();
        }
        if (this.f85461n.isEmpty()) {
            return;
        }
        for (Map.Entry entry2 : this.f85461n.entrySet()) {
            super.setProperty((String) entry2.getKey(), entry2.getValue());
        }
        this.f85461n.clear();
    }

    /* renamed from: e */
    public void m57394e(ErrorHandler errorHandler) {
        this.f85463p = errorHandler;
        setProperty("http://apache.org/xml/properties/internal/error-handler", errorHandler != null ? new ErrorHandlerWrapper(errorHandler) : new ErrorHandlerWrapper(ehf.m53960a()));
    }

    /* renamed from: f */
    public final void m57395f(XMLComponent xMLComponent, String[] strArr, XSGrammarPoolContainer xSGrammarPoolContainer) {
        if (strArr != null) {
            for (String str : strArr) {
                Boolean feature = xSGrammarPoolContainer.getFeature(str);
                if (feature == null) {
                    feature = xMLComponent.getFeatureDefault(str);
                }
                if (feature != null && !this.fFeatures.containsKey(str)) {
                    this.fFeatures.put(str, feature);
                    this.f85452e = true;
                }
            }
        }
    }

    /* renamed from: g */
    public final void m57396g(XMLComponent xMLComponent, String[] strArr) {
        if (strArr != null) {
            for (String str : strArr) {
                Object propertyDefault = xMLComponent.getPropertyDefault(str);
                if (propertyDefault != null && !this.fProperties.containsKey(str)) {
                    this.fProperties.put(str, propertyDefault);
                    this.f85452e = true;
                }
            }
        }
    }

    @Override // org.apache.xerces.util.ParserConfigurationSettings, org.apache.xerces.xni.parser.XMLComponentManager
    public boolean getFeature(String str) throws XMLConfigurationException {
        if ("http://apache.org/xml/features/internal/parser-settings".equals(str)) {
            return this.f85452e;
        }
        if ("http://xml.org/sax/features/validation".equals(str) || "http://apache.org/xml/features/validation/schema".equals(str)) {
            return true;
        }
        return "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only".equals(str) ? this.f85453f : "http://javax.xml.XMLConstants/feature/secure-processing".equals(str) ? getProperty("http://apache.org/xml/properties/security-manager") != null : super.getFeature(str);
    }

    public Locale getLocale() {
        return this.f85465r;
    }

    @Override // org.apache.xerces.util.ParserConfigurationSettings, org.apache.xerces.xni.parser.XMLComponentManager
    public Object getProperty(String str) throws XMLConfigurationException {
        if (f85430A0.equals(str)) {
            return getLocale();
        }
        Object obj = this.f85454g.get(str);
        if (obj != null) {
            return obj;
        }
        if (this.f85454g.containsKey(str)) {
            return null;
        }
        return super.getProperty(str);
    }

    /* renamed from: h */
    public void m57397h(LSResourceResolver lSResourceResolver) {
        this.f85464q = lSResourceResolver;
        setProperty("http://apache.org/xml/properties/internal/entity-resolver", new DOMEntityResolverWrapper(lSResourceResolver));
    }

    public void reset() throws XNIException {
        this.f85457j.reset();
        this.f85459l.reset();
        this.f85455h.reset(this);
        this.f85456i.reset(this);
        this.f85458k.reset(this);
        this.f85452e = false;
    }

    @Override // org.apache.xerces.util.ParserConfigurationSettings
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        if ("http://apache.org/xml/features/internal/parser-settings".equals(str)) {
            throw new XMLConfigurationException((short) 1, str);
        }
        if (!z && ("http://xml.org/sax/features/validation".equals(str) || "http://apache.org/xml/features/validation/schema".equals(str))) {
            throw new XMLConfigurationException((short) 1, str);
        }
        if ("http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only".equals(str) && z != this.f85453f) {
            throw new XMLConfigurationException((short) 1, str);
        }
        if ("http://javax.xml.XMLConstants/feature/secure-processing".equals(str)) {
            setProperty("http://apache.org/xml/properties/security-manager", z ? new SecurityManager() : null);
            return;
        }
        this.f85452e = true;
        this.f85455h.setFeature(str, z);
        this.f85456i.setFeature(str, z);
        this.f85458k.setFeature(str, z);
        if (!this.f85460m.containsKey(str)) {
            this.f85460m.put(str, super.getFeature(str) ? Boolean.TRUE : Boolean.FALSE);
        }
        super.setFeature(str, z);
    }

    public void setLocale(Locale locale) {
        this.f85465r = locale;
        this.f85456i.setLocale(locale);
    }

    @Override // org.apache.xerces.util.ParserConfigurationSettings
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        if ("http://apache.org/xml/properties/internal/entity-manager".equals(str) || "http://apache.org/xml/properties/internal/error-reporter".equals(str) || "http://apache.org/xml/properties/internal/namespace-context".equals(str) || "http://apache.org/xml/properties/internal/validator/schema".equals(str) || "http://apache.org/xml/properties/internal/symbol-table".equals(str) || "http://apache.org/xml/properties/internal/validation-manager".equals(str) || "http://apache.org/xml/properties/internal/grammar-pool".equals(str)) {
            throw new XMLConfigurationException((short) 1, str);
        }
        this.f85452e = true;
        this.f85455h.setProperty(str, obj);
        this.f85456i.setProperty(str, obj);
        this.f85458k.setProperty(str, obj);
        if (!"http://apache.org/xml/properties/internal/entity-resolver".equals(str) && !"http://apache.org/xml/properties/internal/error-handler".equals(str) && !"http://apache.org/xml/properties/security-manager".equals(str)) {
            if (!f85430A0.equals(str)) {
                if (!this.f85461n.containsKey(str)) {
                    this.f85461n.put(str, super.getProperty(str));
                }
                super.setProperty(str, obj);
                return;
            }
            setLocale((Locale) obj);
        }
        this.f85454g.put(str, obj);
    }
}
