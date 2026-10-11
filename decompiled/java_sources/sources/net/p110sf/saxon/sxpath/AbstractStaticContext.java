package net.p110sf.saxon.sxpath;

import java.util.HashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.EarlyEvaluationContext;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.functions.FunctionLibraryList;
import net.p110sf.saxon.functions.registry.ConstructorFunctionLibrary;
import net.p110sf.saxon.functions.registry.XPath20FunctionSet;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.s9api.UnprefixedElementMatchingPolicy;
import net.p110sf.saxon.sxpath.AbstractStaticContext;
import net.p110sf.saxon.trans.DecimalFormatManager;
import net.p110sf.saxon.trans.KeyManager;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XmlProcessingIncident;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public abstract class AbstractStaticContext implements StaticContext {

    /* renamed from: f */
    public Configuration f102145f;

    /* renamed from: g */
    public PackageData f102146g;

    /* renamed from: i */
    public String f102148i;

    /* renamed from: q */
    public BiConsumer<String, Location> f102156q;
    protected boolean usingDefaultFunctionLibrary;

    /* renamed from: e */
    public String f102144e = null;

    /* renamed from: h */
    public Location f102147h = Loc.NONE;

    /* renamed from: j */
    public FunctionLibraryList f102149j = new FunctionLibraryList();

    /* renamed from: k */
    public String f102150k = "http://www.w3.org/2005/xpath-functions";

    /* renamed from: l */
    public String f102151l = "";

    /* renamed from: m */
    public boolean f102152m = false;

    /* renamed from: n */
    public int f102153n = 31;

    /* renamed from: o */
    public final Map<StructuredQName, ItemType> f102154o = new HashMap();

    /* renamed from: p */
    public UnprefixedElementMatchingPolicy f102155p = UnprefixedElementMatchingPolicy.DEFAULT_NAMESPACE;

    /* renamed from: b */
    public static /* synthetic */ void m64069b(Configuration configuration, String str, Location location) {
        configuration.makeErrorReporter().report(new XmlProcessingIncident(str, SaxonErrorCode.SXWN9000, location).asWarning());
    }

    public final void addFunctionLibrary(FunctionLibrary functionLibrary) {
        this.f102149j.addFunctionLibrary(functionLibrary);
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public Configuration getConfiguration() {
        return this.f102145f;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public Location getContainingLocation() {
        return this.f102147h;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public DecimalFormatManager getDecimalFormatManager() {
        DecimalFormatManager decimalFormatManager = getPackageData().getDecimalFormatManager();
        if (decimalFormatManager != null) {
            return decimalFormatManager;
        }
        DecimalFormatManager decimalFormatManager2 = new DecimalFormatManager(HostLanguage.XPATH, this.f102153n);
        getPackageData().setDecimalFormatManager(decimalFormatManager2);
        return decimalFormatManager2;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public String getDefaultCollationName() {
        return this.f102148i;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public String getDefaultElementNamespace() {
        return this.f102151l;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public String getDefaultFunctionNamespace() {
        return this.f102150k;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public FunctionLibrary getFunctionLibrary() {
        return this.f102149j;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public KeyManager getKeyManager() {
        return getPackageData().getKeyManager();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public PackageData getPackageData() {
        return this.f102146g;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public ItemType getRequiredContextItemType() {
        return AnyItemType.getInstance();
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public String getStaticBaseURI() {
        String str = this.f102144e;
        return str == null ? "" : str;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public String getSystemId() {
        return "";
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public UnprefixedElementMatchingPolicy getUnprefixedElementMatchingPolicy() {
        return this.f102155p;
    }

    public BiConsumer<String, Location> getWarningHandler() {
        return this.f102156q;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public int getXPathVersion() {
        return this.f102153n;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public boolean isInBackwardsCompatibleMode() {
        return this.f102152m;
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public void issueWarning(String str, Location location) {
        getWarningHandler().accept(str, location);
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public XPathContext makeEarlyEvaluationContext() {
        return new EarlyEvaluationContext(getConfiguration());
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public RetainedStaticContext makeRetainedStaticContext() {
        return new RetainedStaticContext(this);
    }

    @Override // net.p110sf.saxon.expr.StaticContext
    public ItemType resolveTypeAlias(StructuredQName structuredQName) {
        return this.f102154o.get(structuredQName);
    }

    public void setBackwardsCompatibilityMode(boolean z) {
        this.f102152m = z;
    }

    public void setBaseURI(String str) {
        this.f102144e = str;
    }

    public void setConfiguration(final Configuration configuration) {
        this.f102145f = configuration;
        this.f102148i = configuration.getDefaultCollationName();
        this.f102156q = new BiConsumer() { // from class: com.sunia.HTREnginev2.u4
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                AbstractStaticContext.m64069b(Configuration.this, (String) obj, (Location) obj2);
            }
        };
    }

    public void setContainingLocation(Location location) {
        this.f102147h = location;
    }

    public void setDecimalFormatManager(DecimalFormatManager decimalFormatManager) {
        getPackageData().setDecimalFormatManager(decimalFormatManager);
    }

    public void setDefaultCollationName(String str) {
        this.f102148i = str;
    }

    public void setDefaultElementNamespace(String str) {
        this.f102151l = str;
    }

    public final void setDefaultFunctionLibrary() {
        FunctionLibraryList functionLibraryList = new FunctionLibraryList();
        functionLibraryList.addFunctionLibrary(this.f102145f.getXPath31FunctionSet());
        functionLibraryList.addFunctionLibrary(getConfiguration().getBuiltInExtensionLibraryList());
        functionLibraryList.addFunctionLibrary(new ConstructorFunctionLibrary(getConfiguration()));
        functionLibraryList.addFunctionLibrary(this.f102145f.getIntegratedFunctionLibrary());
        this.f102145f.addExtensionBinders(functionLibraryList);
        setFunctionLibrary(functionLibraryList);
    }

    public void setDefaultFunctionNamespace(String str) {
        this.f102150k = str;
    }

    public void setFunctionLibrary(FunctionLibraryList functionLibraryList) {
        this.f102149j = functionLibraryList;
        this.usingDefaultFunctionLibrary = false;
    }

    public void setPackageData(PackageData packageData) {
        this.f102146g = packageData;
    }

    public void setSchemaAware(boolean z) {
        getPackageData().setSchemaAware(z);
    }

    public void setTypeAlias(StructuredQName structuredQName, ItemType itemType) {
        this.f102154o.put(structuredQName, itemType);
    }

    public void setUnprefixedElementMatchingPolicy(UnprefixedElementMatchingPolicy unprefixedElementMatchingPolicy) {
        this.f102155p = unprefixedElementMatchingPolicy;
    }

    public void setWarningHandler(BiConsumer<String, Location> biConsumer) {
        this.f102156q = biConsumer;
    }

    public void setXPathLanguageLevel(int i) {
        this.f102153n = i;
    }

    public final void setDefaultFunctionLibrary(int i) {
        FunctionLibraryList functionLibraryList = new FunctionLibraryList();
        if (i != 30) {
            if (i == 31) {
                functionLibraryList.addFunctionLibrary(this.f102145f.getXPath31FunctionSet());
            } else if (i == 40) {
                functionLibraryList.addFunctionLibrary(this.f102145f.getXPath40FunctionSet());
            } else if (i != 305) {
                functionLibraryList.addFunctionLibrary(XPath20FunctionSet.getInstance());
            }
            functionLibraryList.addFunctionLibrary(getConfiguration().getBuiltInExtensionLibraryList());
            functionLibraryList.addFunctionLibrary(new ConstructorFunctionLibrary(getConfiguration()));
            functionLibraryList.addFunctionLibrary(this.f102145f.getIntegratedFunctionLibrary());
            this.f102145f.addExtensionBinders(functionLibraryList);
            setFunctionLibrary(functionLibraryList);
        }
        functionLibraryList.addFunctionLibrary(this.f102145f.getXPath30FunctionSet());
        functionLibraryList.addFunctionLibrary(getConfiguration().getBuiltInExtensionLibraryList());
        functionLibraryList.addFunctionLibrary(new ConstructorFunctionLibrary(getConfiguration()));
        functionLibraryList.addFunctionLibrary(this.f102145f.getIntegratedFunctionLibrary());
        this.f102145f.addExtensionBinders(functionLibraryList);
        setFunctionLibrary(functionLibraryList);
    }
}
