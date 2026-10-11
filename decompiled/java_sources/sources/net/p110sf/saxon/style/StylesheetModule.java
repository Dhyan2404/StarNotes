package net.p110sf.saxon.style;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.sax.SAXSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.PreparedStylesheet;
import net.p110sf.saxon.event.CheckSumFilter;
import net.p110sf.saxon.event.CommentStripper;
import net.p110sf.saxon.event.PIGrabber;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.Sender;
import net.p110sf.saxon.event.Sink;
import net.p110sf.saxon.event.Stripper;
import net.p110sf.saxon.event.Valve;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.lib.AugmentedSource;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.ResourceResolver;
import net.p110sf.saxon.om.DocumentKey;
import net.p110sf.saxon.om.NoElementsSpaceStrippingRule;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StylesheetSpaceStrippingRule;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.linked.DocumentImpl;
import net.p110sf.saxon.tree.linked.LinkedTreeBuilder;
import net.p110sf.saxon.tree.tiny.TinyBuilder;
import net.p110sf.saxon.value.NestedIntegerValue;
import net.p110sf.saxon.value.Whitespace;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

/* loaded from: classes11.dex */
public class StylesheetModule {

    /* renamed from: a */
    public final StyleElement f101814a;

    /* renamed from: b */
    public int f101815b;

    /* renamed from: c */
    public int f101816c;

    /* renamed from: d */
    public StylesheetModule f101817d;

    /* renamed from: e */
    public boolean f101818e;

    /* renamed from: f */
    public int f101819f = 0;
    protected List<ComponentDeclaration> topLevel = new ArrayList();

    public StylesheetModule(StyleElement styleElement, int i) {
        this.f101814a = styleElement;
        this.f101815b = i;
    }

    /* renamed from: a */
    public static Source m63990a(Configuration configuration, String str, Source[] sourceArr) throws XPathException {
        if (sourceArr.length == 1) {
            return sourceArr[0];
        }
        if (sourceArr.length == 0) {
            throw new XPathException("No stylesheets were supplied");
        }
        StringBuilder sb = new StringBuilder(250);
        sb.append("<xsl:stylesheet version='1.0' ");
        sb.append(" xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>");
        for (Source source : sourceArr) {
            sb.append("<xsl:import href='");
            sb.append(source.getSystemId());
            sb.append("'/>");
        }
        sb.append("</xsl:stylesheet>");
        InputSource inputSource = new InputSource();
        inputSource.setSystemId(str);
        inputSource.setCharacterStream(new StringReader(sb.toString()));
        return new SAXSource(inputSource);
    }

    /* renamed from: b */
    public static ParseOptions m63991b(Source source, PipelineConfiguration pipelineConfiguration) {
        ParseOptions parseOptions = source instanceof AugmentedSource ? ((AugmentedSource) source).getParseOptions() : new ParseOptions();
        parseOptions.setSchemaValidationMode(4);
        parseOptions.setDTDValidationMode(4);
        parseOptions.setLineNumbering(true);
        parseOptions.setSpaceStrippingRule(NoElementsSpaceStrippingRule.getInstance());
        parseOptions.setErrorReporter(pipelineConfiguration.getErrorReporter());
        return parseOptions;
    }

    /* renamed from: c */
    public static void m63992c(Source source, Configuration configuration, Receiver receiver, ParseOptions parseOptions) throws XPathException {
        if ((parseOptions.getXMLReader() == null && parseOptions.getXMLReaderMaker() == null && (!(source instanceof SAXSource) || ((SAXSource) source).getXMLReader() == null)) ? false : true) {
            Sender.send(source, receiver, parseOptions);
            return;
        }
        XMLReader styleParser = configuration.getStyleParser();
        parseOptions.setXMLReader(styleParser);
        Sender.send(source, receiver, parseOptions);
        configuration.reuseStyleParser(styleParser);
    }

    public static Source getAssociatedStylesheet(Configuration configuration, ResourceResolver resourceResolver, Source source, String str, String str2, String str3) throws XPathException {
        PIGrabber pIGrabber = new PIGrabber(new Sink(configuration.makePipelineConfiguration()));
        pIGrabber.setFactory(configuration);
        pIGrabber.setCriteria(str, str2);
        pIGrabber.setBaseURI(source.getSystemId());
        pIGrabber.setResourceResolver(resourceResolver);
        try {
            Sender.send(source, pIGrabber, null);
        } catch (XPathException e) {
            if (!pIGrabber.isTerminated()) {
                throw new XPathException("Failed while looking for xml-stylesheet PI", e);
            }
        }
        try {
            Source[] associatedStylesheets = pIGrabber.getAssociatedStylesheets();
            if (associatedStylesheets != null) {
                return m63990a(configuration, source.getSystemId(), associatedStylesheets);
            }
            throw new XPathException("No matching <?xml-stylesheet?> processing instruction found");
        } catch (TransformerException e2) {
            if (e2 instanceof XPathException) {
                throw ((XPathException) e2);
            }
            throw new XPathException(e2);
        }
    }

    public static PreparedStylesheet loadStylesheet(Source source, Compilation compilation) throws XPathException {
        if ((source instanceof SAXSource) && compilation.getConfiguration().getBooleanProperty(Feature.IGNORE_SAX_SOURCE_PARSER)) {
            ((SAXSource) source).setXMLReader(null);
        }
        String systemId = source.getSystemId();
        DocumentKey documentKey = systemId != null ? new DocumentKey(systemId) : null;
        if (systemId != null && compilation.getImportStack().contains(documentKey)) {
            throw new XPathException("The stylesheet module includes/imports itself directly or indirectly", "XTSE0180");
        }
        compilation.getImportStack().push(documentKey);
        compilation.setMinimalPackageData();
        Configuration configuration = compilation.getConfiguration();
        PipelineConfiguration makePipelineConfiguration = configuration.makePipelineConfiguration();
        makePipelineConfiguration.setErrorReporter(compilation.getCompilerInfo().getErrorReporter());
        LinkedTreeBuilder linkedTreeBuilder = new LinkedTreeBuilder(makePipelineConfiguration);
        linkedTreeBuilder.setSystemId(source.getSystemId());
        linkedTreeBuilder.setNodeFactory(compilation.getStyleNodeFactory(true));
        linkedTreeBuilder.setLineNumbering(true);
        UseWhenFilter useWhenFilter = new UseWhenFilter(compilation, linkedTreeBuilder, NestedIntegerValue.TWO);
        useWhenFilter.setSystemId(source.getSystemId());
        CommentStripper commentStripper = new CommentStripper(new Stripper(new StylesheetSpaceStrippingRule(configuration.getNamePool()), useWhenFilter));
        TinyBuilder tinyBuilder = new TinyBuilder(makePipelineConfiguration);
        tinyBuilder.setSystemId(source.getSystemId());
        CheckSumFilter checkSumFilter = new CheckSumFilter(tinyBuilder);
        checkSumFilter.setCheckExistingChecksum(true);
        Valve valve = new Valve(NamespaceConstant.SAXON_XSLT_EXPORT, commentStripper, checkSumFilter);
        ParseOptions m63991b = m63991b(source, makePipelineConfiguration);
        try {
            try {
                m63992c(source, configuration, valve, m63991b);
                if (valve.wasDiverted()) {
                    if (!checkSumFilter.isChecksumCorrect()) {
                        throw new XPathException("Compiled package cannot be loaded: incorrect checksum");
                    }
                    StylesheetPackage loadPackageDoc = configuration.makePackageLoader().loadPackageDoc(tinyBuilder.getCurrentRoot());
                    compilation.setPackageData(loadPackageDoc);
                    PreparedStylesheet preparedStylesheet = new PreparedStylesheet(compilation);
                    loadPackageDoc.checkForAbstractComponents();
                    loadPackageDoc.updatePreparedStylesheet(preparedStylesheet);
                    return preparedStylesheet;
                }
                NodeInfo currentRoot = linkedTreeBuilder.getCurrentRoot();
                linkedTreeBuilder.reset();
                compilation.getImportStack().pop();
                PreparedStylesheet preparedStylesheet2 = new PreparedStylesheet(compilation);
                PrincipalStylesheetModule compilePackage = compilation.compilePackage(currentRoot.asActiveSource());
                if (compilation.getErrorCount() > 0) {
                    XPathException xPathException = new XPathException("Errors were reported during stylesheet compilation");
                    xPathException.setHasBeenReported(true);
                    throw xPathException;
                }
                compilePackage.getStylesheetPackage().checkForAbstractComponents();
                compilePackage.getStylesheetPackage().updatePreparedStylesheet(preparedStylesheet2);
                preparedStylesheet2.addPackage(compilation.getPackageData());
                if (m63991b.isPleaseCloseAfterUse()) {
                    ParseOptions.close(source);
                }
                return preparedStylesheet2;
            } catch (XPathException e) {
                if (!e.hasBeenReported()) {
                    compilation.reportError(e);
                }
                throw e;
            }
        } finally {
            if (m63991b.isPleaseCloseAfterUse()) {
                ParseOptions.close(source);
            }
        }
    }

    public static DocumentImpl loadStylesheetModule(Source source, boolean z, Compilation compilation, NestedIntegerValue nestedIntegerValue) throws XPathException {
        String systemId = source.getSystemId();
        DocumentKey documentKey = systemId == null ? null : new DocumentKey(systemId);
        if (systemId != null && compilation.getImportStack().contains(documentKey)) {
            throw new XPathException("The stylesheet module includes/imports itself directly or indirectly", "XTSE0180");
        }
        compilation.getImportStack().push(documentKey);
        Configuration configuration = compilation.getConfiguration();
        PipelineConfiguration makePipelineConfiguration = configuration.makePipelineConfiguration();
        makePipelineConfiguration.setErrorReporter(compilation.getCompilerInfo().getErrorReporter());
        LinkedTreeBuilder linkedTreeBuilder = new LinkedTreeBuilder(makePipelineConfiguration);
        linkedTreeBuilder.setSystemId(source.getSystemId());
        linkedTreeBuilder.setNodeFactory(compilation.getStyleNodeFactory(z));
        linkedTreeBuilder.setLineNumbering(true);
        UseWhenFilter useWhenFilter = new UseWhenFilter(compilation, linkedTreeBuilder, nestedIntegerValue);
        useWhenFilter.setSystemId(source.getSystemId());
        CommentStripper commentStripper = new CommentStripper(new Stripper(new StylesheetSpaceStrippingRule(configuration.getNamePool()), useWhenFilter));
        ParseOptions m63991b = m63991b(source, makePipelineConfiguration);
        try {
            try {
                m63992c(source, configuration, commentStripper, m63991b);
                DocumentImpl documentImpl = (DocumentImpl) linkedTreeBuilder.getCurrentRoot();
                linkedTreeBuilder.reset();
                compilation.getImportStack().pop();
                return documentImpl;
            } catch (XPathException e) {
                if (z && !e.hasBeenReported()) {
                    compilation.reportError(e);
                }
                throw e;
            }
        } finally {
            if (m63991b.isPleaseCloseAfterUse()) {
                ParseOptions.close(source);
            }
        }
    }

    public Configuration getConfiguration() {
        return this.f101814a.getConfiguration();
    }

    public StylesheetModule getImporter() {
        return this.f101817d;
    }

    public int getInputTypeAnnotations() {
        return this.f101819f;
    }

    public int getMinImportPrecedence() {
        return this.f101816c;
    }

    public int getPrecedence() {
        return this.f101818e ? this.f101817d.getPrecedence() : this.f101815b;
    }

    public PrincipalStylesheetModule getPrincipalStylesheetModule() {
        return this.f101817d.getPrincipalStylesheetModule();
    }

    public StyleElement getRootElement() {
        return this.f101814a;
    }

    public XSLModuleRoot getStylesheetElement() {
        return (XSLModuleRoot) this.f101814a;
    }

    public void setImporter(StylesheetModule stylesheetModule) {
        this.f101817d = stylesheetModule;
    }

    public void setInputTypeAnnotations(int i) throws XPathException {
        int i2 = this.f101819f | i;
        this.f101819f = i2;
        if (i2 == 3) {
            getPrincipalStylesheetModule().compileError("One stylesheet module specifies input-type-annotations='strip', another specifies input-type-annotations='preserve'", "XTSE0265");
        }
        if (i == 1) {
            getPrincipalStylesheetModule().getStylesheetPackage().setStripsTypeAnnotations(true);
        }
    }

    public void setMinImportPrecedence(int i) {
        this.f101816c = i;
    }

    public void setWasIncluded() {
        this.f101818e = true;
    }

    public void spliceIncludes() throws XPathException {
        List<ComponentDeclaration> list = this.topLevel;
        if (list == null || list.size() == 0) {
            this.topLevel = new ArrayList(50);
        }
        this.f101816c = this.f101815b;
        StyleElement styleElement = this.f101814a;
        for (NodeInfo nodeInfo : getStylesheetElement().children()) {
            if (nodeInfo.getNodeKind() == 3) {
                if (!Whitespace.isAllWhite(nodeInfo.getUnicodeStringValue())) {
                    styleElement.compileError("No character data is allowed between top-level elements", "XTSE0120");
                }
            } else if (nodeInfo instanceof DataElement) {
                DataElement dataElement = (DataElement) nodeInfo;
                if (dataElement.getNodeName().getURI().isEmpty()) {
                    styleElement.compileError("Top-level elements must be in a namespace: " + dataElement.getNodeName().getLocalPart() + " is not", "XTSE0130", new Loc(nodeInfo));
                }
            } else {
                styleElement = (StyleElement) nodeInfo;
                if (nodeInfo instanceof XSLGeneralIncorporate) {
                    XSLGeneralIncorporate xSLGeneralIncorporate = (XSLGeneralIncorporate) nodeInfo;
                    xSLGeneralIncorporate.processAttributes();
                    xSLGeneralIncorporate.validateInstruction();
                    int errorCount = xSLGeneralIncorporate.getCompilation().getErrorCount();
                    StylesheetModule includedStylesheet = xSLGeneralIncorporate.getIncludedStylesheet(this, this.f101815b);
                    if (includedStylesheet == null) {
                        return;
                    }
                    int errorCount2 = xSLGeneralIncorporate.getCompilation().getErrorCount() - errorCount;
                    if (errorCount2 > 0) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Reported ");
                        sb.append(errorCount2);
                        sb.append(errorCount2 == 1 ? " error" : " errors");
                        sb.append(CloudStorageConstants.OPERATION_IN);
                        sb.append(xSLGeneralIncorporate.isImport() ? "imported" : "included");
                        sb.append(" stylesheet module");
                        xSLGeneralIncorporate.compileError(sb.toString(), "XTSE0165");
                    }
                    if (xSLGeneralIncorporate.isImport()) {
                        this.f101815b = includedStylesheet.getPrecedence() + 1;
                    } else {
                        this.f101815b = includedStylesheet.getPrecedence();
                        includedStylesheet.setMinImportPrecedence(this.f101816c);
                        includedStylesheet.setWasIncluded();
                    }
                    for (ComponentDeclaration componentDeclaration : includedStylesheet.topLevel) {
                        int size = this.topLevel.size() - 1;
                        if (size < 0 || componentDeclaration.getPrecedence() >= this.topLevel.get(size).getPrecedence()) {
                            this.topLevel.add(componentDeclaration);
                        } else {
                            while (size >= 0 && componentDeclaration.getPrecedence() < this.topLevel.get(size).getPrecedence()) {
                                size--;
                            }
                            this.topLevel.add(size + 1, componentDeclaration);
                        }
                    }
                } else {
                    this.topLevel.add(new ComponentDeclaration(this, styleElement));
                }
            }
        }
    }
}
