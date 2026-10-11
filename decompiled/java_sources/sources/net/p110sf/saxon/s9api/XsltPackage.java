package net.p110sf.saxon.s9api;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import net.p110sf.saxon.PreparedStylesheet;
import net.p110sf.saxon.Query;
import net.p110sf.saxon.style.Compilation;
import net.p110sf.saxon.style.PackageVersion;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XsltPackage {

    /* renamed from: a */
    public final XsltCompiler f101431a;

    /* renamed from: b */
    public final StylesheetPackage f101432b;

    public XsltPackage(XsltCompiler xsltCompiler, StylesheetPackage stylesheetPackage) {
        this.f101431a = xsltCompiler;
        this.f101432b = stylesheetPackage;
    }

    public String getName() {
        return this.f101432b.getPackageName();
    }

    public PackageVersion getPackageVersion() {
        return this.f101432b.getPackageVersion();
    }

    public Processor getProcessor() {
        return this.f101431a.getProcessor();
    }

    public StylesheetPackage getUnderlyingPreparedPackage() {
        return this.f101432b;
    }

    public String getVersion() {
        return this.f101432b.getPackageVersion().toString();
    }

    public WhitespaceStrippingPolicy getWhitespaceStrippingPolicy() {
        return new WhitespaceStrippingPolicy(this.f101432b);
    }

    public XsltExecutable link() throws SaxonApiException {
        try {
            Compilation compilation = new Compilation(getProcessor().getUnderlyingConfiguration(), this.f101431a.getUnderlyingCompilerInfo());
            compilation.setPackageData(this.f101432b);
            this.f101432b.checkForAbstractComponents();
            PreparedStylesheet preparedStylesheet = new PreparedStylesheet(compilation);
            this.f101432b.updatePreparedStylesheet(preparedStylesheet);
            preparedStylesheet.addPackage(this.f101432b);
            return new XsltExecutable(getProcessor(), preparedStylesheet);
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public void save(File file) throws SaxonApiException {
        String targetEdition = this.f101432b.getTargetEdition();
        if (targetEdition == null) {
            targetEdition = getProcessor().getSaxonEdition();
        }
        save(file, targetEdition);
    }

    @Deprecated
    public void save(File file, String str) throws SaxonApiException {
        try {
            Query.createFileIfNecessary(file);
            ExpressionPresenter newExpressionExporter = getProcessor().getUnderlyingConfiguration().newExpressionExporter(str, new FileOutputStream(file), this.f101432b);
            newExpressionExporter.setRelocatable(this.f101432b.isRelocatable());
            this.f101432b.export(newExpressionExporter);
        } catch (IOException | XPathException e) {
            throw new SaxonApiException(e);
        }
    }
}
