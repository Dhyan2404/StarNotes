package net.p110sf.saxon;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.accum.Accumulator;
import net.p110sf.saxon.expr.instruct.Executable;
import net.p110sf.saxon.expr.instruct.GlobalParam;
import net.p110sf.saxon.expr.instruct.GlobalParameterSet;
import net.p110sf.saxon.expr.instruct.NamedTemplate;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.functions.ExecutableFunctionLibrary;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.functions.ResolveURI;
import net.p110sf.saxon.lib.OutputURIResolver;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.style.Compilation;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.CompilerInfo;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.VisibilityProvenance;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.trans.rules.RuleManager;

/* loaded from: classes11.dex */
public class PreparedStylesheet extends Executable {

    /* renamed from: n */
    public HashMap<URI, PreparedStylesheet> f98844n;

    /* renamed from: o */
    public RuleManager f98845o;

    /* renamed from: p */
    public HashMap<StructuredQName, NamedTemplate> f98846p;

    /* renamed from: q */
    public Map<SymbolicName, Component> f98847q;

    /* renamed from: r */
    public final StructuredQName f98848r;

    /* renamed from: s */
    public final StructuredQName f98849s;

    /* renamed from: t */
    public final String f98850t;

    /* renamed from: u */
    public final GlobalParameterSet f98851u;

    /* renamed from: v */
    public final OutputURIResolver f98852v;

    public PreparedStylesheet(Compilation compilation) {
        super(compilation.getConfiguration());
        CompilerInfo compilerInfo = compilation.getCompilerInfo();
        setHostLanguage(HostLanguage.XSLT);
        if (compilerInfo.isSchemaAware()) {
            getConfiguration().checkLicensedFeature(2, "schema-aware XSLT", compilation.getPackageData().getLocalLicenseId());
            this.schemaAware = true;
        }
        this.f98849s = compilerInfo.getDefaultInitialMode();
        this.f98848r = compilerInfo.getDefaultInitialTemplate();
        this.f98851u = compilation.getParameters();
        this.f98850t = compilerInfo.getMessageReceiverClassName();
        this.f98852v = compilerInfo.getOutputURIResolver();
    }

    @Override // net.p110sf.saxon.expr.instruct.Executable
    public void checkSuppliedParameters(GlobalParameterSet globalParameterSet) throws XPathException {
        for (Map.Entry<StructuredQName, GlobalParam> entry : getGlobalParameters().entrySet()) {
            if (entry.getValue().isRequiredParam()) {
                StructuredQName key = entry.getKey();
                if (getCompileTimeParams().get(key) == null && (globalParameterSet == null || globalParameterSet.get(key) == null)) {
                    XPathException xPathException = new XPathException("No value supplied for required parameter " + key.getDisplayName());
                    xPathException.setErrorCode(getHostLanguage() == HostLanguage.XQUERY ? "XPDY0002" : "XTDE0050");
                    throw xPathException;
                }
            }
        }
        for (StructuredQName structuredQName : globalParameterSet.getKeys()) {
            GlobalParam globalParameter = getGlobalParameter(structuredQName);
            if (globalParameter != null && globalParameter.isStatic()) {
                throw new XPathException("Parameter $" + structuredQName.getDisplayName() + " cannot be supplied dynamically because it is declared as static");
            }
            if (this.f98851u.containsKey(structuredQName)) {
                throw new XPathException("Parameter $" + structuredQName.getDisplayName() + " cannot be supplied dynamically because a value was already supplied at compile time");
            }
        }
        for (StructuredQName structuredQName2 : this.f98851u.getKeys()) {
            globalParameterSet.put(structuredQName2, this.f98851u.get(structuredQName2));
        }
    }

    public void explain(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement(Constants.ELEMNAME_STYLESHEET_STRING);
        expressionPresenter.namespace("fn", "http://www.w3.org/2005/xpath-functions");
        expressionPresenter.namespace("xs", "http://www.w3.org/2001/XMLSchema");
        explainGlobalVariables(expressionPresenter);
        this.f98845o.explainTemplateRules(expressionPresenter);
        explainNamedTemplates(expressionPresenter);
        expressionPresenter.startElement("accumulators");
        Iterator<Accumulator> it2 = getTopLevelPackage().getAccumulatorRegistry().getAllAccumulators().iterator();
        while (it2.hasNext()) {
            it2.next().export(expressionPresenter);
        }
        expressionPresenter.endElement();
        List<FunctionLibrary> libraryList = getFunctionLibrary().getLibraryList();
        expressionPresenter.startElement(Constants.ELEMNAME_EXTENSION_STRING);
        for (FunctionLibrary functionLibrary : libraryList) {
            if (functionLibrary instanceof ExecutableFunctionLibrary) {
                Iterator<UserFunction> it3 = ((ExecutableFunctionLibrary) functionLibrary).getAllFunctions().iterator();
                while (it3.hasNext()) {
                    it3.next().export(expressionPresenter);
                }
            }
        }
        expressionPresenter.endElement();
        expressionPresenter.endElement();
        expressionPresenter.close();
    }

    public void explainNamedTemplates(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("namedTemplates");
        HashMap<StructuredQName, NamedTemplate> hashMap = this.f98846p;
        if (hashMap != null) {
            for (NamedTemplate namedTemplate : hashMap.values()) {
                expressionPresenter.startElement("template");
                expressionPresenter.emitAttribute("name", namedTemplate.getTemplateName().getDisplayName());
                expressionPresenter.emitAttribute("line", namedTemplate.getLineNumber() + "");
                expressionPresenter.emitAttribute("module", namedTemplate.getSystemId());
                if (namedTemplate.getBody() != null) {
                    namedTemplate.getBody().export(expressionPresenter);
                }
                expressionPresenter.endElement();
            }
        }
        expressionPresenter.endElement();
    }

    public PreparedStylesheet getCachedStylesheet(String str, String str2) {
        URI uri;
        HashMap<URI, PreparedStylesheet> hashMap;
        try {
            uri = ResolveURI.makeAbsolute(str, str2);
        } catch (URISyntaxException unused) {
            uri = null;
        }
        if (uri == null || (hashMap = this.f98844n) == null) {
            return null;
        }
        return hashMap.get(uri);
    }

    public GlobalParameterSet getCompileTimeParams() {
        return this.f98851u;
    }

    public Component getComponent(SymbolicName symbolicName) {
        return this.f98847q.get(symbolicName);
    }

    public SerializationProperties getDeclaredSerializationProperties() {
        return new SerializationProperties(new Properties(getPrimarySerializationProperties().getProperties()), getCharacterMapIndex());
    }

    public StructuredQName getDefaultInitialTemplateName() {
        return this.f98848r;
    }

    public RuleManager getRuleManager() {
        return this.f98845o;
    }

    public boolean isEligibleInitialMode(Component.C18300M c18300m) {
        if (c18300m == null) {
            return false;
        }
        if (c18300m.getVisibility() == Visibility.PUBLIC || c18300m.getVisibility() == Visibility.FINAL || c18300m.getActor().isUnnamedMode()) {
            return true;
        }
        StylesheetPackage topLevelPackage = getTopLevelPackage();
        if (c18300m.getActor().getModeName().equals(topLevelPackage.getDefaultMode())) {
            return true;
        }
        return (topLevelPackage.isDeclaredModes() || c18300m.getActor().isEmpty() || (c18300m.getVisibilityProvenance() != VisibilityProvenance.DEFAULTED && c18300m.getVisibility() == Visibility.PRIVATE)) ? false : true;
    }

    public XsltController newController() {
        XsltController xsltController = new XsltController(getConfiguration(), this);
        xsltController.setMessageReceiverClassName(this.f98850t);
        xsltController.setOutputURIResolver(this.f98852v);
        StructuredQName structuredQName = this.f98849s;
        if (structuredQName != null) {
            try {
                xsltController.setInitialMode(structuredQName);
            } catch (XPathException unused) {
            }
        }
        return xsltController;
    }

    public void putCachedStylesheet(String str, String str2, PreparedStylesheet preparedStylesheet) {
        URI uri;
        try {
            uri = ResolveURI.makeAbsolute(str, str2);
        } catch (URISyntaxException unused) {
            uri = null;
        }
        if (uri != null) {
            if (this.f98844n == null) {
                this.f98844n = new HashMap<>(4);
            }
            this.f98844n.put(uri, preparedStylesheet);
        }
    }

    public void putNamedTemplate(StructuredQName structuredQName, NamedTemplate namedTemplate) {
        if (this.f98846p == null) {
            this.f98846p = new HashMap<>(32);
        }
        this.f98846p.put(structuredQName, namedTemplate);
    }

    public void setComponentIndex(Map<SymbolicName, Component> map) {
        this.f98847q = map;
    }

    public void setRuleManager(RuleManager ruleManager) {
        this.f98845o = ruleManager;
    }

    @Override // net.p110sf.saxon.expr.instruct.Executable
    public StylesheetPackage getTopLevelPackage() {
        return (StylesheetPackage) super.getTopLevelPackage();
    }
}
