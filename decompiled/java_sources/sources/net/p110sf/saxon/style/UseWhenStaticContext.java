package net.p110sf.saxon.style;

import java.util.Collections;
import java.util.Set;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.functions.FunctionLibraryList;
import net.p110sf.saxon.functions.registry.ConstructorFunctionLibrary;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.sxpath.AbstractStaticContext;
import net.p110sf.saxon.trans.DecimalFormatManager;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingIncident;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class UseWhenStaticContext extends AbstractStaticContext implements StaticContext {

    /* renamed from: r */
    public final NamespaceResolver f101859r;

    /* renamed from: s */
    public final FunctionLibrary f101860s;

    /* renamed from: t */
    public final Compilation f101861t;

    public UseWhenStaticContext(Compilation compilation, NamespaceResolver namespaceResolver) {
        Configuration configuration = compilation.getConfiguration();
        setConfiguration(configuration);
        this.f101861t = compilation;
        setPackageData(compilation.getPackageData());
        this.f101859r = namespaceResolver;
        setXPathLanguageLevel(31);
        FunctionLibraryList functionLibraryList = new FunctionLibraryList();
        functionLibraryList.addFunctionLibrary(configuration.getUseWhenFunctionSet());
        functionLibraryList.addFunctionLibrary(getConfiguration().getBuiltInExtensionLibraryList());
        functionLibraryList.addFunctionLibrary(new ConstructorFunctionLibrary(getConfiguration()));
        functionLibraryList.addFunctionLibrary(configuration.getIntegratedFunctionLibrary());
        configuration.addExtensionBinders(functionLibraryList);
        this.f101860s = functionLibraryList;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public Expression bindVariable(StructuredQName structuredQName) throws XPathException {
        GroundedValue staticVariable = this.f101861t.getStaticVariable(structuredQName);
        if (staticVariable != null) {
            return Literal.makeLiteral(staticVariable);
        }
        XPathException xPathException = new XPathException("Variables (other than XSLT 3.0 static variables) cannot be used in a static expression: " + structuredQName.getDisplayName());
        xPathException.setErrorCode("XPST0008");
        xPathException.setIsStaticError(true);
        throw xPathException;
    }

    public int getColumnNumber() {
        return 0;
    }

    public Compilation getCompilation() {
        return this.f101861t;
    }

    @Override // net.p110sf.saxon.sxpath.AbstractStaticContext, net.p110sf.saxon.expr.StaticContext
    public DecimalFormatManager getDecimalFormatManager() {
        return null;
    }

    @Override // net.p110sf.saxon.sxpath.AbstractStaticContext, net.p110sf.saxon.expr.StaticContext
    public String getDefaultCollationName() {
        return NamespaceConstant.CODEPOINT_COLLATION_URI;
    }

    @Override // net.p110sf.saxon.sxpath.AbstractStaticContext, net.p110sf.saxon.expr.StaticContext
    public String getDefaultFunctionNamespace() {
        return "http://www.w3.org/2005/xpath-functions";
    }

    @Override // net.p110sf.saxon.sxpath.AbstractStaticContext, net.p110sf.saxon.expr.StaticContext
    public FunctionLibrary getFunctionLibrary() {
        return this.f101860s;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public Set<String> getImportedSchemaNamespaces() {
        return Collections.emptySet();
    }

    public int getLineNumber() {
        return -1;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public NamespaceResolver getNamespaceResolver() {
        return this.f101859r;
    }

    public String getPublicId() {
        return null;
    }

    @Override // net.p110sf.saxon.sxpath.AbstractStaticContext, net.p110sf.saxon.expr.StaticContext
    public String getSystemId() {
        return getStaticBaseURI();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public boolean isImportedSchema(String str) {
        return false;
    }

    @Override // net.p110sf.saxon.sxpath.AbstractStaticContext, net.p110sf.saxon.expr.StaticContext
    public boolean isInBackwardsCompatibleMode() {
        return false;
    }

    @Override // net.p110sf.saxon.sxpath.AbstractStaticContext, net.p110sf.saxon.expr.StaticContext
    public void issueWarning(String str, Location location) {
        this.f101861t.getCompilerInfo().getErrorReporter().report(new XmlProcessingIncident(str, SaxonErrorCode.SXWN9000, location).asWarning());
    }

    @Override // net.p110sf.saxon.sxpath.AbstractStaticContext, net.p110sf.saxon.expr.StaticContext
    public RetainedStaticContext makeRetainedStaticContext() {
        return new RetainedStaticContext(this);
    }

    @Override // net.p110sf.saxon.sxpath.AbstractStaticContext, net.p110sf.saxon.expr.StaticContext
    public ItemType resolveTypeAlias(StructuredQName structuredQName) {
        return null;
    }
}
