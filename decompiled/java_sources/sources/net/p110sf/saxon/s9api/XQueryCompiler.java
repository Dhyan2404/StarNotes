package net.p110sf.saxon.s9api;

import com.google.android.material.motion.MotionUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import javax.xml.transform.ErrorListener;
import net.p110sf.saxon.expr.parser.OptimizerOptions;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.ModuleURIResolver;
import net.p110sf.saxon.query.StaticQueryContext;
import net.p110sf.saxon.query.XQueryParser;
import net.p110sf.saxon.s9api.XmlProcessingError;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingAbort;

/* loaded from: classes11.dex */
public class XQueryCompiler {

    /* renamed from: a */
    public final Processor f101389a;

    /* renamed from: b */
    public final StaticQueryContext f101390b;

    /* renamed from: c */
    public ItemType f101391c;

    /* renamed from: d */
    public String f101392d;

    /* renamed from: e */
    public int f101393e;

    public XQueryCompiler(Processor processor) {
        this.f101389a = processor;
        this.f101390b = processor.getUnderlyingConfiguration().newStaticQueryContext();
    }

    public XQueryExecutable compile(String str) throws SaxonApiException {
        try {
            return new XQueryExecutable(this.f101389a, this.f101390b.compileQuery(str));
        } catch (UncheckedXPathException e) {
            throw new SaxonApiException(e.getXPathException());
        } catch (XPathException | XmlProcessingAbort e2) {
            throw new SaxonApiException(e2);
        }
    }

    public void compileLibrary(String str) throws SaxonApiException {
        try {
            this.f101390b.compileLibrary(str);
        } catch (UncheckedXPathException | XPathException | XmlProcessingAbort e) {
            throw new SaxonApiException(e);
        }
    }

    public void declareDefaultCollation(String str) {
        this.f101390b.declareDefaultCollation(str);
    }

    public void declareNamespace(String str, String str2) {
        this.f101390b.declareNamespace(str, str2);
    }

    public URI getBaseURI() {
        if (this.f101390b.getBaseURI() == null) {
            return null;
        }
        try {
            return new URI(this.f101390b.getBaseURI());
        } catch (URISyntaxException unused) {
            throw new IllegalStateException("Invalid base URI for query: " + this.f101390b.getBaseURI());
        }
    }

    public String getDefaultCollationName() {
        return this.f101390b.getDefaultCollationName();
    }

    public String getEncoding() {
        return this.f101392d;
    }

    public ErrorListener getErrorListener() {
        return this.f101390b.getErrorListener();
    }

    public ErrorReporter getErrorReporter() {
        return this.f101390b.getErrorReporter();
    }

    public String getLanguageVersion() {
        return this.f101393e == 40 ? XQueryParser.XQUERY40 : XQueryParser.XQUERY31;
    }

    public ModuleURIResolver getModuleURIResolver() {
        return this.f101390b.getModuleURIResolver();
    }

    public Processor getProcessor() {
        return this.f101389a;
    }

    public ItemType getRequiredContextItemType() {
        return this.f101391c;
    }

    public StaticQueryContext getUnderlyingStaticContext() {
        return this.f101390b;
    }

    public boolean isCompileWithTracing() {
        return this.f101390b.isCompileWithTracing();
    }

    public boolean isFastCompilation() {
        return this.f101390b.getOptimizerOptions().getOptions() == 0;
    }

    public boolean isSchemaAware() {
        return this.f101390b.isSchemaAware();
    }

    public boolean isStreaming() {
        return this.f101390b.isStreaming();
    }

    public boolean isUpdatingEnabled() {
        return this.f101390b.isUpdatingEnabled();
    }

    public void setBaseURI(URI uri) {
        if (uri == null) {
            this.f101390b.setBaseURI(null);
        } else {
            if (uri.isAbsolute()) {
                this.f101390b.setBaseURI(uri.toString());
                return;
            }
            throw new IllegalArgumentException("Base URI must be an absolute URI: " + uri);
        }
    }

    public void setCompileWithTracing(boolean z) {
        this.f101390b.setCompileWithTracing(z);
    }

    public void setEncoding(String str) {
        this.f101392d = str;
    }

    public void setErrorList(final List<? super XmlProcessingError> list) {
        setErrorReporter(new ErrorReporter() { // from class: com.sunia.HTREnginev2.jmo
            @Override // net.p110sf.saxon.lib.ErrorReporter
            public final void report(XmlProcessingError xmlProcessingError) {
                list.add(xmlProcessingError);
            }
        });
    }

    public void setErrorListener(ErrorListener errorListener) {
        this.f101390b.setErrorListener(errorListener);
    }

    public void setErrorReporter(ErrorReporter errorReporter) {
        this.f101390b.setErrorReporter(errorReporter);
    }

    public void setFastCompilation(boolean z) {
        if (z) {
            this.f101390b.setOptimizerOptions(new OptimizerOptions(0));
        } else {
            this.f101390b.setOptimizerOptions(getProcessor().getUnderlyingConfiguration().getOptimizerOptions());
        }
    }

    public void setLanguageVersion(String str) {
        str.hashCode();
        if (str.equals(XQueryParser.XQUERY31)) {
            this.f101393e = 31;
        } else {
            if (!str.equals(XQueryParser.XQUERY40)) {
                throw new IllegalArgumentException("XQuery version must be 3.1 or 4.0 (not " + str + MotionUtils.f31762d);
            }
            this.f101393e = 40;
        }
        this.f101390b.setLanguageVersion(this.f101393e);
    }

    public void setModuleURIResolver(ModuleURIResolver moduleURIResolver) {
        this.f101390b.setModuleURIResolver(moduleURIResolver);
    }

    public void setRequiredContextItemType(ItemType itemType) {
        this.f101391c = itemType;
        this.f101390b.setRequiredContextItemType(itemType.getUnderlyingItemType());
    }

    public void setSchemaAware(boolean z) {
        if (z && !this.f101389a.getUnderlyingConfiguration().isLicensedFeature(4)) {
            throw new UnsupportedOperationException("Schema-awareness requires a Saxon-EE license");
        }
        this.f101390b.setSchemaAware(z);
    }

    public void setStreaming(boolean z) {
        this.f101390b.setStreaming(z);
        if (z && !this.f101389a.getUnderlyingConfiguration().isLicensedFeature(4)) {
            throw new UnsupportedOperationException("Streaming requires a Saxon-EE license");
        }
        if (z) {
            setRequiredContextItemType(ItemType.DOCUMENT_NODE);
        }
    }

    public void setUpdatingEnabled(boolean z) {
        if (z && !this.f101390b.getConfiguration().isLicensedFeature(4)) {
            throw new UnsupportedOperationException("XQuery Update is not supported in this Saxon Configuration");
        }
        this.f101390b.setUpdatingEnabled(z);
    }

    public void compileLibrary(File file) throws SaxonApiException, IOException {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                String baseURI = this.f101390b.getBaseURI();
                this.f101390b.setBaseURI(file.toURI().toString());
                this.f101390b.compileLibrary(fileInputStream, this.f101392d);
                this.f101390b.setBaseURI(baseURI);
                fileInputStream.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (UncheckedXPathException | XPathException | XmlProcessingAbort e) {
            throw new SaxonApiException(e);
        }
    }

    public XQueryExecutable compile(File file) throws SaxonApiException, IOException {
        try {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    String baseURI = this.f101390b.getBaseURI();
                    this.f101390b.setBaseURI(file.toURI().toString());
                    XQueryExecutable xQueryExecutable = new XQueryExecutable(this.f101389a, this.f101390b.compileQuery(fileInputStream, this.f101392d));
                    this.f101390b.setBaseURI(baseURI);
                    fileInputStream.close();
                    return xQueryExecutable;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (UncheckedXPathException e) {
                throw new SaxonApiException(e.getXPathException());
            }
        } catch (XPathException | XmlProcessingAbort e2) {
            throw new SaxonApiException(e2);
        }
    }

    public void compileLibrary(Reader reader) throws SaxonApiException {
        try {
            this.f101390b.compileLibrary(reader);
        } catch (IOException | UncheckedXPathException | XPathException | XmlProcessingAbort e) {
            throw new SaxonApiException(e);
        }
    }

    public void compileLibrary(InputStream inputStream) throws SaxonApiException {
        try {
            this.f101390b.compileLibrary(inputStream, this.f101392d);
        } catch (IOException | UncheckedXPathException | XPathException | XmlProcessingAbort e) {
            throw new SaxonApiException(e);
        }
    }

    public XQueryExecutable compile(InputStream inputStream) throws SaxonApiException {
        try {
            return new XQueryExecutable(this.f101389a, this.f101390b.compileQuery(inputStream, this.f101392d));
        } catch (UncheckedXPathException e) {
            throw new SaxonApiException(e.getXPathException());
        } catch (XPathException | XmlProcessingAbort e2) {
            throw new SaxonApiException(e2);
        }
    }

    public XQueryExecutable compile(Reader reader) throws SaxonApiException, IOException {
        try {
            return new XQueryExecutable(this.f101389a, this.f101390b.compileQuery(reader));
        } catch (UncheckedXPathException e) {
            throw new SaxonApiException(e.getXPathException());
        } catch (XPathException | XmlProcessingAbort e2) {
            throw new SaxonApiException(e2);
        }
    }
}
