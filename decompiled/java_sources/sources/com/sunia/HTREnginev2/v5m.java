package com.sunia.HTREnginev2;

import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.p117xs.XSMessageFormatter;
import org.apache.xerces.impl.validation.ValidationManager;
import org.apache.xerces.jaxp.validation.XSGrammarPoolContainer;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;

/* loaded from: classes13.dex */
public final class v5m implements XMLComponentManager {

    /* renamed from: i */
    public static final String f87163i = "http://apache.org/xml/features/validation/schema";

    /* renamed from: j */
    public static final String f87164j = "http://xml.org/sax/features/validation";

    /* renamed from: k */
    public static final String f87165k = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only";

    /* renamed from: l */
    public static final String f87166l = "http://apache.org/xml/features/internal/parser-settings";

    /* renamed from: m */
    public static final String f87167m = "http://apache.org/xml/properties/internal/error-reporter";

    /* renamed from: n */
    public static final String f87168n = "http://apache.org/xml/properties/internal/validation-manager";

    /* renamed from: o */
    public static final String f87169o = "http://apache.org/xml/properties/internal/grammar-pool";

    /* renamed from: e */
    public final XMLComponentManager f87170e;

    /* renamed from: f */
    public final XMLGrammarPool f87171f;

    /* renamed from: g */
    public final boolean f87172g;

    /* renamed from: h */
    public final ValidationManager f87173h;

    public v5m(XMLComponentManager xMLComponentManager, XSGrammarPoolContainer xSGrammarPoolContainer, ValidationManager validationManager) {
        this.f87170e = xMLComponentManager;
        this.f87171f = xSGrammarPoolContainer.getGrammarPool();
        this.f87172g = xSGrammarPoolContainer.isFullyComposed();
        this.f87173h = validationManager;
        try {
            XMLErrorReporter xMLErrorReporter = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
            if (xMLErrorReporter != null) {
                xMLErrorReporter.putMessageFormatter("http://www.w3.org/TR/xml-schema-1", new XSMessageFormatter());
            }
        } catch (XMLConfigurationException unused) {
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLComponentManager
    public boolean getFeature(String str) throws XMLConfigurationException {
        if (!"http://apache.org/xml/features/internal/parser-settings".equals(str)) {
            if ("http://xml.org/sax/features/validation".equals(str) || "http://apache.org/xml/features/validation/schema".equals(str)) {
                return true;
            }
            if ("http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only".equals(str)) {
                return this.f87172g;
            }
        }
        return this.f87170e.getFeature(str);
    }

    @Override // org.apache.xerces.xni.parser.XMLComponentManager
    public Object getProperty(String str) throws XMLConfigurationException {
        return "http://apache.org/xml/properties/internal/grammar-pool".equals(str) ? this.f87171f : "http://apache.org/xml/properties/internal/validation-manager".equals(str) ? this.f87173h : this.f87170e.getProperty(str);
    }
}
