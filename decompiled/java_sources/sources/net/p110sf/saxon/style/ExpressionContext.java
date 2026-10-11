package net.p110sf.saxon.style;

import java.util.Set;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.EarlyEvaluationContext;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.GlobalVariableReference;
import net.p110sf.saxon.expr.LocalVariableReference;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.SuppliedParameterReference;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.parser.OptimizerOptions;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.functions.FunctionLibraryList;
import net.p110sf.saxon.functions.registry.VendorFunctionSetHE;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.s9api.UnprefixedElementMatchingPolicy;
import net.p110sf.saxon.style.ExpressionContext;
import net.p110sf.saxon.style.SourceBinding;
import net.p110sf.saxon.trans.DecimalFormatManager;
import net.p110sf.saxon.trans.KeyManager;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.AttributeLocation;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class ExpressionContext implements StaticContext {

    /* renamed from: e */
    public final StyleElement f101752e;

    /* renamed from: f */
    public final StructuredQName f101753f;

    /* renamed from: g */
    public Location f101754g = null;

    /* renamed from: h */
    public RetainedStaticContext f101755h = null;

    public ExpressionContext(StyleElement styleElement, StructuredQName structuredQName) {
        this.f101752e = styleElement;
        this.f101753f = structuredQName;
    }

    /* renamed from: b */
    public static /* synthetic */ void m63930b(StructuredQName structuredQName, Item item) throws XPathException {
        if ((item instanceof XSLGlobalVariable) && ((XSLGlobalVariable) item).getVariableQName().equals(structuredQName)) {
            XPathException xPathException = new XPathException("Variable " + structuredQName.getDisplayName() + " cannot be used within its own declaration", "XPST0008");
            xPathException.setIsStaticError(true);
            throw xPathException;
        }
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public Expression bindVariable(final StructuredQName structuredQName) throws XPathException {
        SourceBinding bindVariable = this.f101752e.bindVariable(structuredQName);
        if (bindVariable != null) {
            if (bindVariable.hasProperty(SourceBinding.BindingProperty.IMPLICITLY_DECLARED)) {
                SuppliedParameterReference suppliedParameterReference = new SuppliedParameterReference(0);
                suppliedParameterReference.setSuppliedType(bindVariable.getDeclaredType());
                return suppliedParameterReference;
            }
            if (!bindVariable.hasProperty(SourceBinding.BindingProperty.GLOBAL)) {
                LocalVariableReference localVariableReference = new LocalVariableReference(structuredQName);
                bindVariable.registerReference(localVariableReference);
                return localVariableReference;
            }
            GlobalVariableReference globalVariableReference = new GlobalVariableReference(structuredQName);
            GlobalVariable compiledVariable = ((XSLGlobalVariable) bindVariable.getSourceElement()).getCompiledVariable();
            if (compiledVariable == null || !this.f101752e.getCompilation().getCompilerInfo().isJustInTimeCompilation()) {
                bindVariable.registerReference(globalVariableReference);
            } else {
                globalVariableReference.fixup(compiledVariable);
                globalVariableReference.setStaticType(compiledVariable.getRequiredType(), bindVariable.getConstantValue(), 0);
            }
            return globalVariableReference;
        }
        if (structuredQName.hasURI("http://www.w3.org/1999/XSL/Transform") && structuredQName.getLocalPart().equals("original")) {
            this.f101752e.getXslOriginal(218);
            return new GlobalVariableReference(structuredQName);
        }
        Component component = this.f101752e.getCompilation().getPrincipalStylesheetModule().getComponent(new SymbolicName(218, structuredQName));
        if (component != null) {
            SequenceTool.supply(this.f101752e.iterateAxis(1), new ItemConsumer() { // from class: com.sunia.HTREnginev2.w2g
                @Override // net.p110sf.saxon.om.ItemConsumer
                public final void accept(Item item) {
                    ExpressionContext.m63930b(StructuredQName.this, item);
                }
            });
            GlobalVariable globalVariable = (GlobalVariable) component.getActor();
            GlobalVariableReference globalVariableReference2 = new GlobalVariableReference(globalVariable);
            globalVariableReference2.setStaticType(globalVariable.getRequiredType(), null, 0);
            return globalVariableReference2;
        }
        if (getXPathVersion() >= 30 && structuredQName.hasURI(NamespaceConstant.ERR)) {
            StyleElement styleElement = this.f101752e;
            if (((StyleElement) styleElement.iterateAxis(1, new NameTest(1, 141, styleElement.getNamePool())).next()) != null) {
                for (StructuredQName structuredQName2 : StandardNames.errorVariables) {
                    if (structuredQName2.getLocalPart().equals(structuredQName.getLocalPart())) {
                        return VendorFunctionSetHE.getInstance().makeFunction("dynamic-error-info", 1).makeFunctionCall(new StringLiteral(structuredQName.getLocalPart()));
                    }
                }
            }
        }
        XPathException xPathException = new XPathException("Variable " + structuredQName.getDisplayName() + " has not been declared (or its declaration is not in scope)", "XPST0008");
        xPathException.setIsStaticError(true);
        throw xPathException;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public Configuration getConfiguration() {
        return this.f101752e.getConfiguration();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public Location getContainingLocation() {
        if (this.f101754g == null) {
            StructuredQName structuredQName = this.f101753f;
            if (structuredQName == null) {
                this.f101754g = this.f101752e;
            } else {
                this.f101754g = new AttributeLocation(this.f101752e, structuredQName);
            }
        }
        return this.f101754g;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public DecimalFormatManager getDecimalFormatManager() {
        return this.f101752e.getCompilation().getPrincipalStylesheetModule().getDecimalFormatManager();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public String getDefaultCollationName() {
        return this.f101752e.getDefaultCollationName();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public String getDefaultElementNamespace() {
        return this.f101752e.getDefaultXPathNamespace();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public String getDefaultFunctionNamespace() {
        return "http://www.w3.org/2005/xpath-functions";
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public FunctionLibrary getFunctionLibrary() {
        FunctionLibraryList functionLibrary = this.f101752e.getContainingPackage().getFunctionLibrary();
        StyleElement m63983v = this.f101752e.m63983v(192);
        if (m63983v == null) {
            return functionLibrary;
        }
        FunctionLibraryList functionLibraryList = new FunctionLibraryList();
        functionLibraryList.addFunctionLibrary(functionLibrary);
        ((XSLOverride) m63983v).addXSLOverrideFunctionLibrary(functionLibraryList);
        return functionLibraryList;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public Set<String> getImportedSchemaNamespaces() {
        return this.f101752e.getPrincipalStylesheetModule().getImportedSchemaTable();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public KeyManager getKeyManager() {
        return this.f101752e.getCompilation().getPrincipalStylesheetModule().getKeyManager();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public NamespaceResolver getNamespaceResolver() {
        return this.f101752e.getAllNamespaces();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public OptimizerOptions getOptimizerOptions() {
        return this.f101752e.getCompilation().getCompilerInfo().getOptimizerOptions();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public ItemType getRequiredContextItemType() {
        return AnyItemType.getInstance();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public String getStaticBaseURI() {
        return this.f101752e.getBaseURI();
    }

    public StyleElement getStyleElement() {
        return this.f101752e;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public String getSystemId() {
        return this.f101752e.getSystemId();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public UnprefixedElementMatchingPolicy getUnprefixedElementMatchingPolicy() {
        return this.f101752e.getCompilation().getCompilerInfo().getUnprefixedElementMatchingPolicy();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public int getXPathVersion() {
        StructuredQName structuredQName;
        if (this.f101752e.m63950A() == 40 || this.f101752e.getCompilation().getCompilerInfo().getXsltVersion() == 40 || ((structuredQName = this.f101753f) != null && structuredQName.hasURI(NamespaceConstant.SAXON))) {
            return 40;
        }
        return ((Integer) getConfiguration().getConfigurationProperty(Feature.XPATH_VERSION_FOR_XSLT)).intValue();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public boolean isImportedSchema(String str) {
        return this.f101752e.getPrincipalStylesheetModule().isImportedSchema(str);
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public boolean isInBackwardsCompatibleMode() {
        return this.f101752e.m63973Y();
    }

    public boolean isSchemaAware() {
        return this.f101752e.isSchemaAware();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public void issueWarning(String str, Location location) {
        this.f101752e.compileWarning(str, SaxonErrorCode.SXWN9000, location);
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public XPathContext makeEarlyEvaluationContext() {
        return new EarlyEvaluationContext(getConfiguration());
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public RetainedStaticContext makeRetainedStaticContext() {
        if (this.f101755h == null) {
            if (this.f101752e.m63975n() || !(this.f101752e.getParent() instanceof StyleElement)) {
                this.f101755h = new RetainedStaticContext(this);
            } else {
                this.f101755h = ((StyleElement) this.f101752e.getParent()).getStaticContext().makeRetainedStaticContext();
            }
        }
        return this.f101755h;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public ItemType resolveTypeAlias(StructuredQName structuredQName) {
        return getPackageData().obtainTypeAliasManager().getItemType(structuredQName);
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public StylesheetPackage getPackageData() {
        return this.f101752e.getPackageData();
    }
}
