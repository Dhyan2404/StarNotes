package net.p110sf.saxon.s9api;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Objects;
import java.util.function.BiConsumer;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.parser.OptimizerOptions;
import net.p110sf.saxon.expr.sort.LFUCache;
import net.p110sf.saxon.functions.FunctionLibraryList;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.query.XQueryParser;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.s9api.XPathCompiler;
import net.p110sf.saxon.sxpath.IndependentContext;
import net.p110sf.saxon.sxpath.XPathEvaluator;
import net.p110sf.saxon.sxpath.XPathVariable;
import net.p110sf.saxon.trans.DecimalFormatManager;
import net.p110sf.saxon.trans.DecimalSymbols;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingIncident;
import net.p110sf.saxon.value.SequenceType;
import org.scribe.oauth.OAuth20ServiceImpl;

/* loaded from: classes11.dex */
public class XPathCompiler {

    /* renamed from: a */
    public final Processor f101377a;

    /* renamed from: b */
    public final XPathEvaluator f101378b;

    /* renamed from: c */
    public final IndependentContext f101379c;

    /* renamed from: d */
    public ItemType f101380d;

    /* renamed from: e */
    public LFUCache<String, XPathExecutable> f101381e = null;

    public XPathCompiler(Processor processor) {
        this.f101377a = processor;
        XPathEvaluator xPathEvaluator = new XPathEvaluator(processor.getUnderlyingConfiguration());
        this.f101378b = xPathEvaluator;
        this.f101379c = (IndependentContext) xPathEvaluator.getStaticContext();
    }

    /* renamed from: c */
    public static /* synthetic */ void m63667c(ErrorReporter errorReporter, String str, Location location) {
        errorReporter.report(new XmlProcessingIncident(str, SaxonErrorCode.SXWN9000, location).asWarning());
    }

    public void addXsltFunctionLibrary(XsltPackage xsltPackage) {
        ((FunctionLibraryList) this.f101379c.getFunctionLibrary()).addFunctionLibrary(xsltPackage.getUnderlyingPreparedPackage().getPublicFunctions());
    }

    /* renamed from: b */
    public final XPathExecutable m63668b(String str) throws SaxonApiException {
        try {
            this.f101379c.getDecimalFormatManager().checkConsistency();
            XPathEvaluator xPathEvaluator = this.f101378b;
            IndependentContext independentContext = this.f101379c;
            if (independentContext.isAllowUndeclaredVariables()) {
                xPathEvaluator = new XPathEvaluator(this.f101377a.getUnderlyingConfiguration());
                independentContext = new IndependentContext(this.f101379c);
                xPathEvaluator.setStaticContext(independentContext);
                for (XPathVariable xPathVariable : this.f101379c.getExternalVariables()) {
                    independentContext.declareVariable(xPathVariable.getVariableQName()).setRequiredType(xPathVariable.getRequiredType());
                }
            }
            try {
                return new XPathExecutable(xPathEvaluator.createExpression(str), this.f101377a, independentContext);
            } catch (XPathException e) {
                throw new SaxonApiException(e);
            }
        } catch (XPathException e2) {
            throw new SaxonApiException(e2);
        }
    }

    public XPathExecutable compile(String str) throws SaxonApiException {
        Objects.requireNonNull(str);
        LFUCache<String, XPathExecutable> lFUCache = this.f101381e;
        if (lFUCache == null) {
            return m63668b(str);
        }
        XPathExecutable xPathExecutable = lFUCache.get(str);
        if (xPathExecutable != null) {
            return xPathExecutable;
        }
        XPathExecutable m63668b = m63668b(str);
        this.f101381e.put(str, m63668b);
        return m63668b;
    }

    public XPathExecutable compilePattern(String str) throws SaxonApiException {
        Objects.requireNonNull(str);
        try {
            this.f101379c.getDecimalFormatManager().checkConsistency();
            try {
                return new XPathExecutable(this.f101378b.createPattern(str), this.f101377a, this.f101379c);
            } catch (XPathException e) {
                throw new SaxonApiException(e);
            }
        } catch (XPathException e2) {
            throw new SaxonApiException(e2);
        }
    }

    public void declareDefaultCollation(String str) {
        StringCollator stringCollator;
        try {
            stringCollator = getProcessor().getUnderlyingConfiguration().getCollation(str);
        } catch (XPathException unused) {
            stringCollator = null;
        }
        if (stringCollator != null) {
            this.f101379c.setDefaultCollationName(str);
            return;
        }
        throw new IllegalStateException("Unknown collation " + str);
    }

    public void declareNamespace(String str, String str2) {
        LFUCache<String, XPathExecutable> lFUCache = this.f101381e;
        if (lFUCache != null) {
            lFUCache.clear();
        }
        this.f101379c.declareNamespace(str, str2);
    }

    public void declareVariable(QName qName) {
        LFUCache<String, XPathExecutable> lFUCache = this.f101381e;
        if (lFUCache != null) {
            lFUCache.clear();
        }
        this.f101379c.declareVariable(qName.getNamespaceURI(), qName.getLocalName());
    }

    public XdmValue evaluate(String str, XdmItem xdmItem) throws SaxonApiException {
        Objects.requireNonNull(str);
        boolean isFastCompilation = isFastCompilation();
        if (!isCaching()) {
            setFastCompilation(true);
        }
        XPathSelector load = compile(str).load();
        if (!isCaching()) {
            setFastCompilation(isFastCompilation);
        }
        if (xdmItem != null) {
            load.setContextItem(xdmItem);
        }
        return load.evaluate();
    }

    public XdmItem evaluateSingle(String str, XdmItem xdmItem) throws SaxonApiException {
        Objects.requireNonNull(str);
        boolean isFastCompilation = isFastCompilation();
        if (!isCaching()) {
            setFastCompilation(true);
        }
        XPathSelector load = compile(str).load();
        if (!isCaching()) {
            setFastCompilation(isFastCompilation);
        }
        if (xdmItem != null) {
            load.setContextItem(xdmItem);
        }
        return load.evaluateSingle();
    }

    public URI getBaseURI() {
        try {
            return new URI(this.f101379c.getStaticBaseURI());
        } catch (URISyntaxException unused) {
            throw new IllegalStateException("Invalid base URI for XPath: " + this.f101379c.getStaticBaseURI());
        }
    }

    public String getLanguageVersion() {
        if (this.f101379c.getXPathVersion() == 20) {
            return OAuth20ServiceImpl.f115984c;
        }
        if (this.f101379c.getXPathVersion() == 30) {
            return XQueryParser.XQUERY30;
        }
        if (this.f101379c.getXPathVersion() == 31) {
            return XQueryParser.XQUERY31;
        }
        if (this.f101379c.getXPathVersion() == 40) {
            return XQueryParser.XQUERY40;
        }
        throw new IllegalStateException("Unknown XPath version " + this.f101379c.getXPathVersion());
    }

    public Processor getProcessor() {
        return this.f101377a;
    }

    public ItemType getRequiredContextItemType() {
        return this.f101380d;
    }

    public StaticContext getUnderlyingStaticContext() {
        return this.f101379c;
    }

    public UnprefixedElementMatchingPolicy getUnprefixedElementMatchingPolicy() {
        return this.f101379c.getUnprefixedElementMatchingPolicy();
    }

    public void importSchemaNamespace(String str) {
        LFUCache<String, XPathExecutable> lFUCache = this.f101381e;
        if (lFUCache != null) {
            lFUCache.clear();
        }
        this.f101379c.getImportedSchemaNamespaces().add(str);
        this.f101379c.setSchemaAware(true);
    }

    public boolean isAllowUndeclaredVariables() {
        return this.f101379c.isAllowUndeclaredVariables();
    }

    public boolean isBackwardsCompatible() {
        return this.f101379c.isInBackwardsCompatibleMode();
    }

    public boolean isCaching() {
        return this.f101381e != null;
    }

    public boolean isFastCompilation() {
        return this.f101379c.getOptimizerOptions().getOptions() == 0;
    }

    public boolean isSchemaAware() {
        return this.f101379c.getPackageData().isSchemaAware();
    }

    public void setAllowUndeclaredVariables(boolean z) {
        LFUCache<String, XPathExecutable> lFUCache = this.f101381e;
        if (lFUCache != null) {
            lFUCache.clear();
        }
        this.f101379c.setAllowUndeclaredVariables(z);
    }

    public void setBackwardsCompatible(boolean z) {
        LFUCache<String, XPathExecutable> lFUCache = this.f101381e;
        if (lFUCache != null) {
            lFUCache.clear();
        }
        this.f101379c.setBackwardsCompatibilityMode(z);
    }

    public void setBaseURI(URI uri) {
        LFUCache<String, XPathExecutable> lFUCache = this.f101381e;
        if (lFUCache != null) {
            lFUCache.clear();
        }
        if (uri == null) {
            this.f101379c.setBaseURI(null);
        } else {
            if (!uri.isAbsolute()) {
                throw new IllegalArgumentException("Supplied base URI must be absolute");
            }
            this.f101379c.setBaseURI(uri.toString());
        }
    }

    public void setCaching(boolean z) {
        if (!z) {
            this.f101381e = null;
        } else if (this.f101381e == null) {
            this.f101381e = new LFUCache<>(100, true);
        }
    }

    public void setDecimalFormatProperty(QName qName, String str, String str2) throws SaxonApiException {
        char c;
        DecimalFormatManager decimalFormatManager = this.f101379c.getDecimalFormatManager();
        if (decimalFormatManager == null) {
            decimalFormatManager = new DecimalFormatManager(HostLanguage.XPATH, this.f101379c.getXPathVersion());
            this.f101379c.setDecimalFormatManager(decimalFormatManager);
        }
        DecimalSymbols obtainNamedDecimalFormat = decimalFormatManager.obtainNamedDecimalFormat(qName.getStructuredQName());
        try {
            switch (str.hashCode()) {
                case -2055231639:
                    if (str.equals(Constants.ATTRNAME_DECIMALSEPARATOR)) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -1413120792:
                    if (str.equals(Constants.ATTRNAME_PATTERNSEPARATOR)) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case -1152836839:
                    if (str.equals(Constants.ATTRNAME_PERMILLE)) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case -678927291:
                    if (str.equals(Constants.ATTRNAME_PERCENT)) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 78043:
                    if (str.equals("NaN")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 95582509:
                    if (str.equals(Constants.ATTRNAME_DIGIT)) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case 173173288:
                    if (str.equals(Constants.ATTRNAME_INFINITY)) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 355351195:
                    if (str.equals(Constants.ATTRNAME_GROUPINGSEPARATOR)) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 1212707143:
                    if (str.equals("exponent-separator")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 1782471930:
                    if (str.equals(Constants.ATTRNAME_MINUSSIGN)) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 1855319496:
                    if (str.equals(Constants.ATTRNAME_ZERODIGIT)) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    obtainNamedDecimalFormat.setDecimalSeparator(str2);
                    return;
                case 1:
                    obtainNamedDecimalFormat.setGroupingSeparator(str2);
                    return;
                case 2:
                    obtainNamedDecimalFormat.setExponentSeparator(str2);
                    return;
                case 3:
                    obtainNamedDecimalFormat.setInfinity(str2);
                    return;
                case 4:
                    obtainNamedDecimalFormat.setNaN(str2);
                    return;
                case 5:
                    obtainNamedDecimalFormat.setMinusSign(str2);
                    return;
                case 6:
                    obtainNamedDecimalFormat.setPercent(str2);
                    return;
                case 7:
                    obtainNamedDecimalFormat.setPerMille(str2);
                    return;
                case '\b':
                    obtainNamedDecimalFormat.setZeroDigit(str2);
                    return;
                case '\t':
                    obtainNamedDecimalFormat.setDigit(str2);
                    return;
                case '\n':
                    obtainNamedDecimalFormat.setPatternSeparator(str2);
                    return;
                default:
                    throw new IllegalArgumentException("Unknown decimal format attribute " + str);
            }
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public void setFastCompilation(boolean z) {
        if (z) {
            this.f101379c.setOptimizerOptions(new OptimizerOptions(0));
        } else {
            this.f101379c.setOptimizerOptions(getProcessor().getUnderlyingConfiguration().getOptimizerOptions());
        }
    }

    public void setLanguageVersion(String str) {
        LFUCache<String, XPathExecutable> lFUCache = this.f101381e;
        if (lFUCache != null) {
            lFUCache.clear();
        }
        int i = 20;
        if ("1.0".equals(str)) {
            this.f101379c.setBackwardsCompatibilityMode(true);
        } else if (!OAuth20ServiceImpl.f115984c.equals(str)) {
            if (XQueryParser.XQUERY30.equals(str) || "3.05".equals(str)) {
                i = 30;
            } else if (XQueryParser.XQUERY31.equals(str)) {
                i = 31;
            } else {
                if (!XQueryParser.XQUERY40.equals(str)) {
                    throw new IllegalArgumentException("XPath version");
                }
                i = 40;
            }
        }
        this.f101379c.setXPathLanguageLevel(i);
        this.f101379c.setDefaultFunctionLibrary(i);
    }

    public void setRequiredContextItemType(ItemType itemType) {
        this.f101380d = itemType;
        this.f101379c.setRequiredContextItemType(itemType.getUnderlyingItemType());
    }

    public void setSchemaAware(boolean z) {
        if (z && !this.f101377a.getUnderlyingConfiguration().isLicensedFeature(1)) {
            throw new UnsupportedOperationException("Schema processing requires a licensed Saxon-EE configuration");
        }
        this.f101379c.setSchemaAware(z);
    }

    public void setUnprefixedElementMatchingPolicy(UnprefixedElementMatchingPolicy unprefixedElementMatchingPolicy) {
        this.f101379c.setUnprefixedElementMatchingPolicy(unprefixedElementMatchingPolicy);
    }

    public void setWarningHandler(final ErrorReporter errorReporter) {
        this.f101379c.setWarningHandler(new BiConsumer() { // from class: com.sunia.HTREnginev2.amo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XPathCompiler.m63667c(ErrorReporter.this, (String) obj, (Location) obj2);
            }
        });
    }

    public void declareVariable(QName qName, ItemType itemType, OccurrenceIndicator occurrenceIndicator) {
        LFUCache<String, XPathExecutable> lFUCache = this.f101381e;
        if (lFUCache != null) {
            lFUCache.clear();
        }
        this.f101379c.declareVariable(qName.getNamespaceURI(), qName.getLocalName()).setRequiredType(SequenceType.makeSequenceType(itemType.getUnderlyingItemType(), occurrenceIndicator.getCardinality()));
    }
}
