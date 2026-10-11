package net.p110sf.saxon.xpath;

import com.google.android.material.motion.MotionUtils;
import java.io.PrintStream;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathFactory;
import javax.xml.xpath.XPathFactoryConfigurationException;
import javax.xml.xpath.XPathFunctionResolver;
import javax.xml.xpath.XPathVariableResolver;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.FeatureKeys;
import net.p110sf.saxon.lib.NamespaceConstant;

/* loaded from: classes11.dex */
public class XPathFactoryImpl extends XPathFactory implements Configuration.ApiProvider {

    /* renamed from: h */
    public static final String f102967h = "http://javax.xml.XMLConstants/feature/secure-processing";

    /* renamed from: e */
    public Configuration f102968e;

    /* renamed from: f */
    public XPathVariableResolver f102969f;

    /* renamed from: g */
    public XPathFunctionResolver f102970g;

    public XPathFactoryImpl() {
        Configuration newConfiguration = Configuration.newConfiguration();
        this.f102968e = newConfiguration;
        setConfiguration(newConfiguration);
        Version.platform.registerAllBuiltInObjectModels(this.f102968e);
    }

    /* renamed from: a */
    public final boolean m64695a(String str) {
        return str.equals(NamespaceConstant.OBJECT_MODEL_SAXON) || this.f102968e.getExternalObjectModel(str) != null;
    }

    public Configuration getConfiguration() {
        return this.f102968e;
    }

    @Override // javax.xml.xpath.XPathFactory
    public boolean getFeature(String str) throws XPathFactoryConfigurationException {
        if (str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            return !this.f102968e.getBooleanProperty(Feature.ALLOW_EXTERNAL_FUNCTIONS);
        }
        if (str.equals(FeatureKeys.SCHEMA_VALIDATION)) {
            return this.f102968e.getSchemaValidationMode() == 1;
        }
        try {
            Object configurationProperty = this.f102968e.getConfigurationProperty(str);
            if (configurationProperty instanceof Boolean) {
                return ((Boolean) configurationProperty).booleanValue();
            }
            throw new XPathFactoryConfigurationException("Configuration property " + str + " is not a boolean (it is an instance of " + configurationProperty.getClass() + MotionUtils.f31762d);
        } catch (IllegalArgumentException unused) {
            throw new XPathFactoryConfigurationException("Unknown feature: " + str);
        }
    }

    @Override // javax.xml.xpath.XPathFactory
    public boolean isObjectModelSupported(String str) {
        boolean z = System.getProperty("jaxp.debug") != null;
        boolean m64695a = m64695a(str);
        if (z) {
            System.err.println("JAXP: Calling " + getClass().getName() + ".isObjectModelSupported(\"" + str + "\")");
            PrintStream printStream = System.err;
            StringBuilder sb = new StringBuilder();
            sb.append("JAXP: -- returning ");
            sb.append(m64695a ? "true" : "false (check all required libraries are on the class path");
            printStream.println(sb.toString());
        }
        return m64695a;
    }

    @Override // javax.xml.xpath.XPathFactory
    public XPath newXPath() {
        XPathEvaluator xPathEvaluator = new XPathEvaluator(this.f102968e);
        xPathEvaluator.setXPathFunctionResolver(this.f102970g);
        xPathEvaluator.setXPathVariableResolver(this.f102969f);
        return xPathEvaluator;
    }

    public void setConfiguration(Configuration configuration) {
        this.f102968e = configuration;
        configuration.setProcessor(this);
    }

    @Override // javax.xml.xpath.XPathFactory
    public void setFeature(String str, boolean z) throws XPathFactoryConfigurationException {
        if (str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            this.f102968e.setBooleanProperty(Feature.ALLOW_EXTERNAL_FUNCTIONS, !z);
            return;
        }
        if (str.equals(FeatureKeys.SCHEMA_VALIDATION)) {
            this.f102968e.setSchemaValidationMode(z ? 1 : 4);
            return;
        }
        try {
            this.f102968e.setBooleanProperty(str, z);
        } catch (IllegalArgumentException unused) {
            throw new XPathFactoryConfigurationException("Unknown or non-boolean feature: " + str);
        }
    }

    @Override // javax.xml.xpath.XPathFactory
    public void setXPathFunctionResolver(XPathFunctionResolver xPathFunctionResolver) {
        this.f102970g = xPathFunctionResolver;
    }

    @Override // javax.xml.xpath.XPathFactory
    public void setXPathVariableResolver(XPathVariableResolver xPathVariableResolver) {
        this.f102969f = xPathVariableResolver;
    }

    public XPathFactoryImpl(Configuration configuration) {
        this.f102968e = configuration;
        configuration.setProcessor(this);
    }
}
