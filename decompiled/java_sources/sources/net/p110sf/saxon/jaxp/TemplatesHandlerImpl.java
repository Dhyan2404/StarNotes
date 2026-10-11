package net.p110sf.saxon.jaxp;

import javax.xml.transform.Templates;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.TemplatesHandler;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.CommentStripper;
import net.p110sf.saxon.event.ReceivingContentHandler;
import net.p110sf.saxon.event.Stripper;
import net.p110sf.saxon.om.StylesheetSpaceStrippingRule;
import net.p110sf.saxon.s9api.Processor;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.style.Compilation;
import net.p110sf.saxon.style.StyleNodeFactory;
import net.p110sf.saxon.style.UseWhenFilter;
import net.p110sf.saxon.style.XSLModuleRoot;
import net.p110sf.saxon.trans.CompilerInfo;
import net.p110sf.saxon.tree.linked.DocumentImpl;
import net.p110sf.saxon.tree.linked.LinkedTreeBuilder;
import net.p110sf.saxon.value.NestedIntegerValue;
import org.xml.sax.Locator;

/* loaded from: classes11.dex */
public class TemplatesHandlerImpl extends ReceivingContentHandler implements TemplatesHandler {

    /* renamed from: J */
    public final StyleNodeFactory f100462J;

    /* renamed from: O */
    public Templates f100463O;

    /* renamed from: Q */
    public String f100464Q;

    /* renamed from: x */
    public final TransformerFactory f100465x;

    /* renamed from: y */
    public final Processor f100466y;

    /* renamed from: z */
    public final LinkedTreeBuilder f100467z;

    /* renamed from: net.sf.saxon.jaxp.TemplatesHandlerImpl$a */
    /* loaded from: classes11.dex */
    public class C18392a implements Locator {
        public C18392a() {
        }

        @Override // org.xml.sax.Locator
        public int getColumnNumber() {
            return -1;
        }

        @Override // org.xml.sax.Locator
        public int getLineNumber() {
            return -1;
        }

        @Override // org.xml.sax.Locator
        public String getPublicId() {
            return null;
        }

        @Override // org.xml.sax.Locator
        public String getSystemId() {
            return TemplatesHandlerImpl.this.f100464Q;
        }
    }

    public TemplatesHandlerImpl(TransformerFactory transformerFactory, Processor processor) {
        this.f100465x = transformerFactory;
        this.f100466y = processor;
        Configuration underlyingConfiguration = processor.getUnderlyingConfiguration();
        setPipelineConfiguration(underlyingConfiguration.makePipelineConfiguration());
        Compilation compilation = new Compilation(underlyingConfiguration, new CompilerInfo(underlyingConfiguration.getDefaultXsltCompilerInfo()));
        compilation.setMinimalPackageData();
        StyleNodeFactory styleNodeFactory = compilation.getStyleNodeFactory(true);
        this.f100462J = styleNodeFactory;
        LinkedTreeBuilder linkedTreeBuilder = new LinkedTreeBuilder(getPipelineConfiguration());
        this.f100467z = linkedTreeBuilder;
        linkedTreeBuilder.setNodeFactory(styleNodeFactory);
        linkedTreeBuilder.setLineNumbering(true);
        setReceiver(new CommentStripper(new Stripper(new StylesheetSpaceStrippingRule(underlyingConfiguration.getNamePool()), new UseWhenFilter(compilation, linkedTreeBuilder, NestedIntegerValue.TWO))));
    }

    @Override // javax.xml.transform.sax.TemplatesHandler
    public String getSystemId() {
        return this.f100464Q;
    }

    @Override // javax.xml.transform.sax.TemplatesHandler
    public Templates getTemplates() {
        if (this.f100463O == null) {
            DocumentImpl documentImpl = (DocumentImpl) this.f100467z.getCurrentRoot();
            if (documentImpl == null) {
                return null;
            }
            if (!(documentImpl.getDocumentElement() instanceof XSLModuleRoot)) {
                throw new IllegalStateException("Input is not a stylesheet");
            }
            this.f100467z.reset();
            try {
                this.f100463O = new TemplatesImpl(this.f100465x, this.f100466y.newXsltCompiler().compile(documentImpl.asActiveSource()));
            } catch (SaxonApiException e) {
                throw new IllegalStateException(e.getMessage());
            }
        }
        return this.f100463O;
    }

    @Override // net.p110sf.saxon.event.ReceivingContentHandler, org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        if (this.f100464Q == null) {
            super.setDocumentLocator(locator);
        }
    }

    @Override // javax.xml.transform.sax.TemplatesHandler
    public void setSystemId(String str) {
        this.f100464Q = str;
        this.f100467z.setSystemId(str);
        super.setDocumentLocator(new C18392a());
    }
}
