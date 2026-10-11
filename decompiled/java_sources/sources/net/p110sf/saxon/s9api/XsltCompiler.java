package net.p110sf.saxon.s9api;

import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.Source;
import javax.xml.transform.URIResolver;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.OptimizerOptions;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.ResourceResolver;
import net.p110sf.saxon.lib.ResourceResolverWrappingURIResolver;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.query.XQueryParser;
import net.p110sf.saxon.s9api.XmlProcessingError;
import net.p110sf.saxon.style.Compilation;
import net.p110sf.saxon.style.PackageVersionRanges;
import net.p110sf.saxon.style.StylesheetModule;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trace.XSLTTraceCodeInjector;
import net.p110sf.saxon.trans.CompilerInfo;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingAbort;
import net.p110sf.saxon.trans.packages.IPackageLoader;
import net.p110sf.saxon.trans.packages.PackageDetails;
import net.p110sf.saxon.trans.packages.PackageLibrary;
import net.p110sf.saxon.trans.packages.VersionedPackageName;

/* loaded from: classes11.dex */
public class XsltCompiler {

    /* renamed from: a */
    public final Processor f101423a;

    /* renamed from: b */
    public final Configuration f101424b;

    /* renamed from: c */
    public final CompilerInfo f101425c;

    public XsltCompiler(Processor processor) {
        this.f101423a = processor;
        Configuration underlyingConfiguration = processor.getUnderlyingConfiguration();
        this.f101424b = underlyingConfiguration;
        CompilerInfo compilerInfo = new CompilerInfo(underlyingConfiguration.getDefaultXsltCompilerInfo());
        this.f101425c = compilerInfo;
        compilerInfo.setGenerateByteCode(underlyingConfiguration.isGenerateByteCode(HostLanguage.XSLT));
        compilerInfo.setTargetEdition(underlyingConfiguration.getEditionCode());
        compilerInfo.setJustInTimeCompilation(underlyingConfiguration.isJITEnabled());
    }

    /* renamed from: b */
    public final PackageLibrary m63696b() {
        return this.f101425c.getPackageLibrary();
    }

    public void clearParameters() {
        this.f101425c.clearParameters();
    }

    public XsltExecutable compile(Source source) throws SaxonApiException {
        Objects.requireNonNull(source);
        try {
            return new XsltExecutable(this.f101423a, Compilation.compileSingletonPackage(this.f101424b, new CompilerInfo(this.f101425c), source));
        } catch (UncheckedXPathException e) {
            throw new SaxonApiException(e.getXPathException());
        } catch (XPathException | XmlProcessingAbort e2) {
            throw new SaxonApiException(e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a A[Catch: XPathException | XmlProcessingAbort -> 0x0082, UncheckedXPathException -> 0x0089, TryCatch #2 {UncheckedXPathException -> 0x0089, XPathException | XmlProcessingAbort -> 0x0082, blocks: (B:2:0x0000, B:4:0x0004, B:6:0x000f, B:8:0x0020, B:10:0x002a, B:11:0x0038, B:15:0x0065, B:16:0x0080, B:19:0x0054), top: B:1:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0081 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.s9api.XsltPackage compilePackage(javax.xml.transform.Source r5) throws net.p110sf.saxon.s9api.SaxonApiException {
        /*
            r4 = this;
            boolean r0 = r5 instanceof net.p110sf.saxon.om.NodeSource     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            if (r0 == 0) goto L27
            r0 = r5
            net.sf.saxon.om.NodeSource r0 = (net.p110sf.saxon.om.NodeSource) r0     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            net.sf.saxon.om.NodeInfo r0 = r0.getNode()     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            boolean r0 = r0 instanceof net.p110sf.saxon.tree.linked.DocumentImpl     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            if (r0 == 0) goto L27
            r0 = r5
            net.sf.saxon.om.NodeSource r0 = (net.p110sf.saxon.om.NodeSource) r0     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            net.sf.saxon.om.NodeInfo r0 = r0.getNode()     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            net.sf.saxon.tree.linked.DocumentImpl r0 = (net.p110sf.saxon.tree.linked.DocumentImpl) r0     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            net.sf.saxon.tree.linked.ElementImpl r0 = r0.getDocumentElement()     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            boolean r1 = r0 instanceof net.p110sf.saxon.style.StyleElement     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            if (r1 == 0) goto L27
            net.sf.saxon.style.StyleElement r0 = (net.p110sf.saxon.style.StyleElement) r0     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            net.sf.saxon.style.Compilation r0 = r0.getCompilation()     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            goto L28
        L27:
            r0 = 0
        L28:
            if (r0 != 0) goto L38
            net.sf.saxon.style.Compilation r0 = new net.sf.saxon.style.Compilation     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            net.sf.saxon.Configuration r1 = r4.f101424b     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            net.sf.saxon.trans.CompilerInfo r2 = new net.sf.saxon.trans.CompilerInfo     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            net.sf.saxon.trans.CompilerInfo r3 = r4.f101425c     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
        L38:
            r1 = 1
            r0.setLibraryPackage(r1)     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            net.sf.saxon.s9api.XsltPackage r2 = new net.sf.saxon.s9api.XsltPackage     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            net.sf.saxon.style.PrincipalStylesheetModule r5 = r0.compilePackage(r5)     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            net.sf.saxon.style.StylesheetPackage r5 = r5.getStylesheetPackage()     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            r2.<init>(r4, r5)     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            int r4 = r0.getErrorCount()     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            if (r4 <= 0) goto L81
            if (r4 != r1) goto L54
            java.lang.String r4 = "one error"
            goto L65
        L54:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            r5.<init>()     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            r5.append(r4)     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            java.lang.String r4 = " errors"
            r5.append(r4)     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            java.lang.String r4 = r5.toString()     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
        L65:
            net.sf.saxon.s9api.SaxonApiException r5 = new net.sf.saxon.s9api.SaxonApiException     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            r0.<init>()     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            java.lang.String r1 = "Package compilation failed: "
            r0.append(r1)     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            r0.append(r4)     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            java.lang.String r4 = " reported"
            r0.append(r4)     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            java.lang.String r4 = r0.toString()     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
            throw r5     // Catch: java.lang.Throwable -> L82 net.p110sf.saxon.trans.UncheckedXPathException -> L89
        L81:
            return r2
        L82:
            r4 = move-exception
            net.sf.saxon.s9api.SaxonApiException r5 = new net.sf.saxon.s9api.SaxonApiException
            r5.<init>(r4)
            throw r5
        L89:
            r4 = move-exception
            net.sf.saxon.s9api.SaxonApiException r5 = new net.sf.saxon.s9api.SaxonApiException
            net.sf.saxon.trans.XPathException r4 = r4.getXPathException()
            r5.<init>(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.s9api.XsltCompiler.compilePackage(javax.xml.transform.Source):net.sf.saxon.s9api.XsltPackage");
    }

    public void declareDefaultCollation(String str) {
        StringCollator stringCollator;
        try {
            stringCollator = getProcessor().getUnderlyingConfiguration().getCollation(str);
        } catch (XPathException unused) {
            stringCollator = null;
        }
        if (stringCollator != null) {
            this.f101425c.setDefaultCollation(str);
            return;
        }
        throw new IllegalStateException("Unknown collation " + str);
    }

    public Source getAssociatedStylesheet(Source source, String str, String str2, String str3) throws SaxonApiException {
        try {
            return StylesheetModule.getAssociatedStylesheet(this.f101424b, this.f101425c.getResourceResolver(), source, str, str2, str3);
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public String getDefaultCollation() {
        return this.f101425c.getDefaultCollation();
    }

    public String getDefaultElementNamespace() {
        return this.f101425c.getDefaultElementNamespace();
    }

    @Deprecated
    public ErrorListener getErrorListener() {
        return this.f101425c.getErrorListener();
    }

    public ErrorReporter getErrorReporter() {
        return this.f101425c.getErrorReporter();
    }

    public Processor getProcessor() {
        return this.f101423a;
    }

    public ResourceResolver getResourceResolver() {
        return this.f101425c.getResourceResolver();
    }

    public String getTargetEdition() {
        return this.f101425c.getTargetEdition();
    }

    public URIResolver getURIResolver() {
        ResourceResolver resourceResolver = this.f101425c.getResourceResolver();
        if (resourceResolver instanceof ResourceResolverWrappingURIResolver) {
            return ((ResourceResolverWrappingURIResolver) resourceResolver).getWrappedURIResolver();
        }
        return null;
    }

    public CompilerInfo getUnderlyingCompilerInfo() {
        return this.f101425c;
    }

    public UnprefixedElementMatchingPolicy getUnprefixedElementMatchingPolicy() {
        return this.f101425c.getUnprefixedElementMatchingPolicy();
    }

    public String getXsltLanguageVersion() {
        return this.f101425c.getXsltVersion() == 40 ? XQueryParser.XQUERY40 : XQueryParser.XQUERY30;
    }

    public void importPackage(XsltPackage xsltPackage) throws SaxonApiException {
        if (xsltPackage.getProcessor() == this.f101423a) {
            this.f101425c.getPackageLibrary().addPackage(xsltPackage.getUnderlyingPreparedPackage());
            return;
        }
        throw new SaxonApiException("The imported package and the XsltCompiler must belong to the same Processor");
    }

    public void importXQueryEnvironment(XQueryCompiler xQueryCompiler) {
        this.f101425c.setXQueryLibraries(xQueryCompiler.getUnderlyingStaticContext().getCompiledLibraries());
    }

    public boolean isAssertionsEnabled() {
        return this.f101425c.isAssertionsEnabled();
    }

    public boolean isCompileWithTracing() {
        return this.f101425c.isCompileWithTracing();
    }

    public boolean isFastCompilation() {
        return this.f101425c.getOptimizerOptions().getOptions() == 1024;
    }

    public boolean isGenerateByteCode() {
        return this.f101425c.isGenerateByteCode();
    }

    public boolean isJustInTimeCompilation() {
        return this.f101425c.isJustInTimeCompilation();
    }

    public boolean isRelocatable() {
        return this.f101425c.isRelocatable();
    }

    public boolean isSchemaAware() {
        return this.f101425c.isSchemaAware();
    }

    public XsltExecutable loadExecutablePackage(URI uri) throws SaxonApiException {
        return loadLibraryPackage(uri).link();
    }

    public XsltPackage loadLibraryPackage(URI uri) throws SaxonApiException {
        return loadLibraryPackage(new StreamSource(uri.toString()));
    }

    public XsltPackage obtainPackage(String str, String str2) throws SaxonApiException {
        try {
            PackageDetails findPackage = m63696b().findPackage(str, new PackageVersionRanges(str2));
            if (findPackage == null) {
                return null;
            }
            StylesheetPackage stylesheetPackage = findPackage.loadedPackage;
            if (stylesheetPackage != null) {
                return new XsltPackage(this, stylesheetPackage);
            }
            Source source = findPackage.sourceLocation;
            if (source == null) {
                return null;
            }
            XsltPackage compilePackage = compilePackage(source);
            findPackage.loadedPackage = compilePackage.getUnderlyingPreparedPackage();
            return compilePackage;
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public XsltPackage obtainPackageWithAlias(String str) throws SaxonApiException {
        PackageDetails findDetailsForAlias = m63696b().findDetailsForAlias(str);
        if (findDetailsForAlias != null) {
            try {
                return new XsltPackage(this, m63696b().obtainLoadedPackage(findDetailsForAlias, new ArrayList()));
            } catch (XPathException e) {
                throw new SaxonApiException(e);
            }
        }
        throw new SaxonApiException("No package with alias " + str + " found in package library");
    }

    public void setAssertionsEnabled(boolean z) {
        this.f101425c.setAssertionsEnabled(z);
    }

    public void setCompileWithTracing(boolean z) {
        if (!z) {
            this.f101425c.setCodeInjector(null);
            return;
        }
        this.f101425c.setCodeInjector(new XSLTTraceCodeInjector());
        CompilerInfo compilerInfo = this.f101425c;
        compilerInfo.setOptimizerOptions(compilerInfo.getOptimizerOptions().except(new OptimizerOptions(32911)));
    }

    public void setDefaultElementNamespace(String str) {
        this.f101425c.setDefaultElementNamespace(str);
    }

    public void setErrorList(final List<? super XmlProcessingError> list) {
        this.f101425c.setErrorReporter(new ErrorReporter() { // from class: com.sunia.HTREnginev2.xwo
            @Override // net.p110sf.saxon.lib.ErrorReporter
            public final void report(XmlProcessingError xmlProcessingError) {
                list.add(xmlProcessingError);
            }
        });
    }

    @Deprecated
    public void setErrorListener(ErrorListener errorListener) {
        this.f101425c.setErrorListener(errorListener);
    }

    public void setErrorReporter(ErrorReporter errorReporter) {
        this.f101425c.setErrorReporter(errorReporter);
    }

    public void setFastCompilation(boolean z) {
        if (z) {
            this.f101425c.setOptimizerOptions(new OptimizerOptions(1024));
        } else {
            this.f101425c.setOptimizerOptions(getProcessor().getUnderlyingConfiguration().getOptimizerOptions());
        }
    }

    public void setGenerateByteCode(boolean z) {
        this.f101425c.setGenerateByteCode(z);
    }

    public void setJustInTimeCompilation(boolean z) {
        if (z && !this.f101424b.isLicensedFeature(2)) {
            throw new UnsupportedOperationException("XSLT just-in-time compilation requires a Saxon-EE license");
        }
        this.f101425c.setJustInTimeCompilation(z);
    }

    public void setParameter(QName qName, XdmValue xdmValue) {
        try {
            this.f101425c.setParameter(qName.getStructuredQName(), xdmValue.getUnderlyingValue().materialize());
        } catch (UncheckedXPathException e) {
            throw new SaxonApiUncheckedException(e);
        }
    }

    public void setRelocatable(boolean z) {
        this.f101425c.setRelocatable(z);
    }

    public void setResourceResolver(ResourceResolver resourceResolver) {
        this.f101425c.setResourceResolver(resourceResolver);
    }

    public void setSchemaAware(boolean z) {
        this.f101425c.setSchemaAware(z);
    }

    public void setTargetEdition(String str) {
        if ("EE".equals(str) || "PE".equals(str) || "HE".equals(str) || "JS".equals(str)) {
            this.f101425c.setTargetEdition(str);
            return;
        }
        throw new IllegalArgumentException("Unknown Saxon edition " + str);
    }

    public void setURIResolver(URIResolver uRIResolver) {
        this.f101425c.setResourceResolver(new ResourceResolverWrappingURIResolver(uRIResolver));
    }

    public void setUnprefixedElementMatchingPolicy(UnprefixedElementMatchingPolicy unprefixedElementMatchingPolicy) {
        this.f101425c.setUnprefixedElementMatchingPolicy(unprefixedElementMatchingPolicy);
    }

    public void setXsltLanguageVersion(String str) {
        str.hashCode();
        if (str.equals(XQueryParser.XQUERY30)) {
            this.f101425c.setXsltVersion(30);
        } else {
            if (!str.equals(XQueryParser.XQUERY40)) {
                throw new IllegalArgumentException("Language version must be 3.0|4.0");
            }
            this.f101425c.setXsltVersion(40);
        }
    }

    public XsltExecutable loadExecutablePackage(Source source) throws SaxonApiException {
        return loadLibraryPackage(source).link();
    }

    public XsltPackage loadLibraryPackage(Source source) throws SaxonApiException {
        try {
            IPackageLoader makePackageLoader = this.f101423a.getUnderlyingConfiguration().makePackageLoader();
            if (makePackageLoader != null) {
                return new XsltPackage(this, makePackageLoader.loadPackage(source));
            }
            throw new SaxonApiException("Loading library package requires Saxon PE or higher");
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public void importPackage(XsltPackage xsltPackage, String str, String str2) throws SaxonApiException {
        try {
            if (xsltPackage.getProcessor() == this.f101423a) {
                PackageDetails packageDetails = new PackageDetails();
                if (str == null) {
                    str = xsltPackage.getName();
                }
                if (str2 == null) {
                    str2 = xsltPackage.getVersion();
                }
                packageDetails.nameAndVersion = new VersionedPackageName(str, str2);
                packageDetails.loadedPackage = xsltPackage.getUnderlyingPreparedPackage();
                this.f101425c.getPackageLibrary().addPackage(packageDetails);
                return;
            }
            throw new SaxonApiException("The imported package and the XsltCompiler must belong to the same Processor");
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }
}
