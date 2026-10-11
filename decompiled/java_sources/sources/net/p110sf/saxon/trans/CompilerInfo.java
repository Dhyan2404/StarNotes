package net.p110sf.saxon.trans;

import javax.xml.transform.ErrorListener;
import javax.xml.transform.URIResolver;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.instruct.GlobalParameterSet;
import net.p110sf.saxon.expr.parser.CodeInjector;
import net.p110sf.saxon.expr.parser.OptimizerOptions;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.ErrorReporterToListener;
import net.p110sf.saxon.lib.OutputURIResolver;
import net.p110sf.saxon.lib.ResourceResolver;
import net.p110sf.saxon.lib.ResourceResolverWrappingURIResolver;
import net.p110sf.saxon.lib.StandardErrorReporter;
import net.p110sf.saxon.lib.StandardOutputResolver;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.QueryLibrary;
import net.p110sf.saxon.s9api.UnprefixedElementMatchingPolicy;
import net.p110sf.saxon.trans.packages.PackageLibrary;

/* loaded from: classes11.dex */
public class CompilerInfo {

    /* renamed from: a */
    public Configuration f102225a;

    /* renamed from: b */
    public ResourceResolver f102226b;

    /* renamed from: c */
    public ErrorReporter f102227c;

    /* renamed from: d */
    public CodeInjector f102228d;

    /* renamed from: e */
    public int f102229e;

    /* renamed from: f */
    public boolean f102230f;

    /* renamed from: g */
    public StructuredQName f102231g;

    /* renamed from: h */
    public StructuredQName f102232h;

    /* renamed from: i */
    public GlobalParameterSet f102233i;

    /* renamed from: j */
    public String f102234j;

    /* renamed from: k */
    public PackageLibrary f102235k;

    /* renamed from: l */
    public boolean f102236l;

    /* renamed from: m */
    public String f102237m;

    /* renamed from: n */
    public boolean f102238n;

    /* renamed from: o */
    public Iterable<QueryLibrary> f102239o;

    /* renamed from: p */
    public OptimizerOptions f102240p;

    /* renamed from: q */
    public String f102241q;

    /* renamed from: r */
    public UnprefixedElementMatchingPolicy f102242r;

    /* renamed from: s */
    public int f102243s;

    /* renamed from: t */
    public String f102244t;

    /* renamed from: u */
    public OutputURIResolver f102245u;

    public CompilerInfo(Configuration configuration) {
        this.f102227c = new StandardErrorReporter();
        this.f102229e = 1;
        this.f102233i = new GlobalParameterSet();
        this.f102236l = false;
        this.f102237m = "HE";
        this.f102238n = false;
        this.f102241q = "";
        this.f102242r = UnprefixedElementMatchingPolicy.DEFAULT_NAMESPACE;
        this.f102243s = 30;
        this.f102244t = "net.sf.saxon.serialize.MessageEmitter";
        this.f102245u = StandardOutputResolver.getInstance();
        this.f102225a = configuration;
        this.f102227c = configuration.makeErrorReporter();
        this.f102235k = new PackageLibrary(this);
        this.f102240p = configuration.getOptimizerOptions();
    }

    public void clearParameters() {
        this.f102233i.clear();
    }

    public void copyFrom(CompilerInfo compilerInfo) {
        this.f102225a = compilerInfo.f102225a;
        this.f102226b = compilerInfo.f102226b;
        this.f102227c = compilerInfo.f102227c;
        this.f102228d = compilerInfo.f102228d;
        this.f102229e = compilerInfo.f102229e;
        this.f102230f = compilerInfo.f102230f;
        this.f102231g = compilerInfo.f102231g;
        this.f102232h = compilerInfo.f102232h;
        this.f102233i = new GlobalParameterSet(compilerInfo.f102233i);
        this.f102234j = compilerInfo.f102234j;
        this.f102236l = compilerInfo.f102236l;
        this.f102237m = compilerInfo.f102237m;
        this.f102235k = new PackageLibrary(compilerInfo.f102235k);
        this.f102238n = compilerInfo.f102238n;
        this.f102240p = compilerInfo.f102240p;
        this.f102239o = compilerInfo.f102239o;
        this.f102241q = compilerInfo.f102241q;
        this.f102242r = compilerInfo.f102242r;
        this.f102243s = compilerInfo.f102243s;
        this.f102245u = compilerInfo.f102245u;
        this.f102244t = compilerInfo.f102244t;
    }

    public CodeInjector getCodeInjector() {
        return this.f102228d;
    }

    public Configuration getConfiguration() {
        return this.f102225a;
    }

    public String getDefaultCollation() {
        return this.f102234j;
    }

    public String getDefaultElementNamespace() {
        return this.f102241q;
    }

    public StructuredQName getDefaultInitialMode() {
        return this.f102231g;
    }

    public StructuredQName getDefaultInitialTemplate() {
        return this.f102232h;
    }

    @Deprecated
    public ErrorListener getErrorListener() {
        ErrorReporter errorReporter = this.f102227c;
        if (errorReporter instanceof ErrorReporterToListener) {
            return ((ErrorReporterToListener) errorReporter).getErrorListener();
        }
        return null;
    }

    public ErrorReporter getErrorReporter() {
        return this.f102227c;
    }

    public String getMessageReceiverClassName() {
        return this.f102244t;
    }

    public OptimizerOptions getOptimizerOptions() {
        return this.f102240p;
    }

    public OutputURIResolver getOutputURIResolver() {
        return this.f102245u;
    }

    public PackageLibrary getPackageLibrary() {
        return this.f102235k;
    }

    public GlobalParameterSet getParameters() {
        return this.f102233i;
    }

    public Iterable<QueryLibrary> getQueryLibraries() {
        return this.f102239o;
    }

    public ResourceResolver getResourceResolver() {
        return this.f102226b;
    }

    public String getTargetEdition() {
        return this.f102237m;
    }

    public URIResolver getURIResolver() {
        ResourceResolver resourceResolver = this.f102226b;
        if (resourceResolver instanceof ResourceResolverWrappingURIResolver) {
            return ((ResourceResolverWrappingURIResolver) resourceResolver).getWrappedURIResolver();
        }
        return null;
    }

    public UnprefixedElementMatchingPolicy getUnprefixedElementMatchingPolicy() {
        return this.f102242r;
    }

    public int getXsltVersion() {
        return this.f102243s;
    }

    public boolean isAssertionsEnabled() {
        return this.f102236l;
    }

    public boolean isCompileWithTracing() {
        return this.f102228d != null;
    }

    public boolean isGenerateByteCode() {
        return this.f102240p.isSet(64);
    }

    public boolean isJustInTimeCompilation() {
        return this.f102240p.isSet(1024);
    }

    public boolean isRelocatable() {
        return this.f102238n;
    }

    public boolean isSchemaAware() {
        return this.f102230f;
    }

    public void setAssertionsEnabled(boolean z) {
        this.f102236l = z;
    }

    public void setCodeInjector(CodeInjector codeInjector) {
        this.f102228d = codeInjector;
    }

    public void setDefaultCollation(String str) {
        this.f102234j = str;
    }

    public void setDefaultElementNamespace(String str) {
        this.f102241q = str;
    }

    public void setDefaultInitialMode(StructuredQName structuredQName) {
        this.f102231g = structuredQName;
    }

    public void setDefaultInitialTemplate(StructuredQName structuredQName) {
        this.f102232h = structuredQName;
    }

    @Deprecated
    public void setErrorListener(ErrorListener errorListener) {
        setErrorReporter(new ErrorReporterToListener(errorListener));
    }

    public void setErrorReporter(ErrorReporter errorReporter) {
        this.f102227c = errorReporter;
    }

    public void setGenerateByteCode(boolean z) {
        if (z) {
            this.f102240p = this.f102240p.union(new OptimizerOptions(64));
        } else {
            this.f102240p = this.f102240p.except(new OptimizerOptions(64));
        }
    }

    public void setJustInTimeCompilation(boolean z) {
        if (z) {
            this.f102240p = this.f102240p.union(new OptimizerOptions(1024));
        } else {
            this.f102240p = this.f102240p.except(new OptimizerOptions(1024));
        }
    }

    public void setMessageReceiverClassName(String str) {
        this.f102244t = str;
    }

    public void setOptimizerOptions(OptimizerOptions optimizerOptions) {
        this.f102240p = optimizerOptions;
    }

    public void setOutputURIResolver(OutputURIResolver outputURIResolver) {
        this.f102245u = outputURIResolver;
    }

    public void setPackageLibrary(PackageLibrary packageLibrary) {
        this.f102235k = packageLibrary;
    }

    public void setParameter(StructuredQName structuredQName, GroundedValue groundedValue) {
        this.f102233i.put(structuredQName, groundedValue);
    }

    public void setRelocatable(boolean z) {
        this.f102238n = z;
    }

    public void setResourceResolver(ResourceResolver resourceResolver) {
        this.f102226b = resourceResolver;
    }

    public void setSchemaAware(boolean z) {
        this.f102230f = z;
    }

    public void setTargetEdition(String str) {
        this.f102237m = str;
    }

    public void setURIResolver(URIResolver uRIResolver) {
        this.f102226b = new ResourceResolverWrappingURIResolver(uRIResolver);
    }

    public void setUnprefixedElementMatchingPolicy(UnprefixedElementMatchingPolicy unprefixedElementMatchingPolicy) {
        this.f102242r = unprefixedElementMatchingPolicy;
    }

    public void setXQueryLibraries(Iterable<QueryLibrary> iterable) {
        this.f102239o = iterable;
    }

    public void setXsltVersion(int i) {
        this.f102243s = i;
    }

    public CompilerInfo(CompilerInfo compilerInfo) {
        this.f102227c = new StandardErrorReporter();
        this.f102229e = 1;
        this.f102233i = new GlobalParameterSet();
        this.f102236l = false;
        this.f102237m = "HE";
        this.f102238n = false;
        this.f102241q = "";
        this.f102242r = UnprefixedElementMatchingPolicy.DEFAULT_NAMESPACE;
        this.f102243s = 30;
        this.f102244t = "net.sf.saxon.serialize.MessageEmitter";
        this.f102245u = StandardOutputResolver.getInstance();
        copyFrom(compilerInfo);
    }
}
