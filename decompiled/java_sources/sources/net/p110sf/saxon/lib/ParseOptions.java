package net.p110sf.saxon.lib;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import javax.xml.transform.Source;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.FilterFactory;
import net.p110sf.saxon.expr.accum.Accumulator;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.om.TreeModel;
import net.p110sf.saxon.trans.Maker;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.ValidationParams;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

/* loaded from: classes11.dex */
public class ParseOptions {

    /* renamed from: A */
    public transient EntityResolver f100510A;

    /* renamed from: B */
    public transient ErrorHandler f100511B;

    /* renamed from: a */
    public int f100512a;

    /* renamed from: b */
    public int f100513b;

    /* renamed from: c */
    public StructuredQName f100514c;

    /* renamed from: d */
    public SchemaType f100515d;

    /* renamed from: e */
    public Optional<Boolean> f100516e;

    /* renamed from: f */
    public TreeModel f100517f;

    /* renamed from: g */
    public SpaceStrippingRule f100518g;

    /* renamed from: h */
    public Optional<Boolean> f100519h;

    /* renamed from: i */
    public boolean f100520i;

    /* renamed from: j */
    public transient ErrorReporter f100521j;

    /* renamed from: k */
    public List<FilterFactory> f100522k;

    /* renamed from: l */
    public boolean f100523l;

    /* renamed from: m */
    public boolean f100524m;

    /* renamed from: n */
    public boolean f100525n;

    /* renamed from: o */
    public boolean f100526o;

    /* renamed from: p */
    public boolean f100527p;

    /* renamed from: q */
    public boolean f100528q;

    /* renamed from: r */
    public int f100529r;

    /* renamed from: s */
    public ValidationParams f100530s;

    /* renamed from: t */
    public ValidationStatisticsRecipient f100531t;

    /* renamed from: u */
    public Map<String, Boolean> f100532u;

    /* renamed from: v */
    public Map<String, Object> f100533v;

    /* renamed from: w */
    public InvalidityHandler f100534w;

    /* renamed from: x */
    public Set<? extends Accumulator> f100535x;

    /* renamed from: y */
    public transient XMLReader f100536y;

    /* renamed from: z */
    public Maker<XMLReader> f100537z;

    public ParseOptions() {
        this.f100512a = 0;
        this.f100513b = 0;
        this.f100516e = Optional.empty();
        this.f100517f = null;
        this.f100518g = null;
        this.f100519h = Optional.empty();
        this.f100520i = false;
        this.f100521j = null;
        this.f100522k = null;
        this.f100523l = false;
        this.f100524m = false;
        this.f100525n = true;
        this.f100526o = true;
        this.f100527p = false;
        this.f100528q = true;
        this.f100529r = Integer.MAX_VALUE;
        this.f100530s = null;
        this.f100531t = null;
        this.f100532u = null;
        this.f100533v = null;
        this.f100534w = null;
        this.f100535x = null;
        this.f100536y = null;
        this.f100510A = null;
        this.f100511B = null;
    }

    public static void close(Source source) {
        try {
            if (source instanceof StreamSource) {
                StreamSource streamSource = (StreamSource) source;
                if (streamSource.getInputStream() != null) {
                    streamSource.getInputStream().close();
                }
                if (streamSource.getReader() != null) {
                    streamSource.getReader().close();
                    return;
                }
                return;
            }
            if (!(source instanceof SAXSource)) {
                if (source instanceof AugmentedSource) {
                    ((AugmentedSource) source).close();
                    return;
                }
                return;
            }
            InputSource inputSource = ((SAXSource) source).getInputSource();
            if (inputSource != null) {
                if (inputSource.getByteStream() != null) {
                    inputSource.getByteStream().close();
                }
                if (inputSource.getCharacterStream() != null) {
                    inputSource.getCharacterStream().close();
                }
            }
        } catch (IOException unused) {
        }
    }

    public void addFilter(FilterFactory filterFactory) {
        if (this.f100522k == null) {
            this.f100522k = new ArrayList(5);
        }
        this.f100522k.add(filterFactory);
    }

    public void addParserFeature(String str, boolean z) {
        if (this.f100532u == null) {
            this.f100532u = new HashMap();
        }
        this.f100532u.put(str, Boolean.valueOf(z));
    }

    public void addParserProperties(String str, Object obj) {
        if (this.f100533v == null) {
            this.f100533v = new HashMap();
        }
        this.f100533v.put(str, obj);
    }

    public void applyDefaults(Configuration configuration) {
        if (this.f100513b == 0) {
            setDTDValidationMode(configuration.isValidation() ? 1 : 4);
        }
        if (this.f100512a == 0) {
            this.f100512a = configuration.getSchemaValidationMode();
        }
        if (this.f100517f == null) {
            this.f100517f = TreeModel.getTreeModel(configuration.getTreeModel());
        }
        if (this.f100518g == null) {
            this.f100518g = configuration.getParseOptions().getSpaceStrippingRule();
        }
        if (!this.f100519h.isPresent()) {
            this.f100519h = Optional.of(Boolean.valueOf(configuration.isLineNumbering()));
        }
        if (this.f100521j == null) {
            setErrorReporter(configuration.makeErrorReporter());
        }
    }

    public Set<? extends Accumulator> getApplicableAccumulators() {
        return this.f100535x;
    }

    public int getDTDValidationMode() {
        return this.f100513b;
    }

    public EntityResolver getEntityResolver() {
        return this.f100510A;
    }

    public ErrorHandler getErrorHandler() {
        return this.f100511B;
    }

    public ErrorReporter getErrorReporter() {
        return this.f100521j;
    }

    public List<FilterFactory> getFilters() {
        return this.f100522k;
    }

    public InvalidityHandler getInvalidityHandler() {
        return this.f100534w;
    }

    public TreeModel getModel() {
        TreeModel treeModel = this.f100517f;
        return treeModel == null ? TreeModel.TINY_TREE : treeModel;
    }

    public boolean getParserFeature(String str) {
        return this.f100532u.get(str).booleanValue();
    }

    public Map<String, Boolean> getParserFeatures() {
        return this.f100532u;
    }

    public Map<String, Object> getParserProperties() {
        return this.f100533v;
    }

    public Object getParserProperty(String str) {
        return this.f100533v.get(str);
    }

    public int getSchemaValidationMode() {
        return this.f100512a;
    }

    public SpaceStrippingRule getSpaceStrippingRule() {
        return this.f100518g;
    }

    public StructuredQName getTopLevelElement() {
        return this.f100514c;
    }

    public SchemaType getTopLevelType() {
        return this.f100515d;
    }

    public int getTreeModel() {
        TreeModel treeModel = this.f100517f;
        if (treeModel == null) {
            return -1;
        }
        return treeModel.getSymbolicValue();
    }

    public int getValidationErrorLimit() {
        return this.f100529r;
    }

    public ValidationParams getValidationParams() {
        return this.f100530s;
    }

    public ValidationStatisticsRecipient getValidationStatisticsRecipient() {
        return this.f100531t;
    }

    public Optional<Boolean> getWrapDocument() {
        return this.f100516e;
    }

    public XMLReader getXMLReader() {
        return this.f100536y;
    }

    public Maker<XMLReader> getXMLReaderMaker() {
        return this.f100537z;
    }

    public boolean isAddCommentsAfterValidationErrors() {
        return this.f100524m;
    }

    public boolean isCheckEntityReferences() {
        return this.f100527p;
    }

    public boolean isContinueAfterValidationErrors() {
        return this.f100523l;
    }

    public boolean isExpandAttributeDefaults() {
        return this.f100525n;
    }

    public boolean isLineNumbering() {
        return this.f100519h.isPresent() && this.f100519h.get().booleanValue();
    }

    public boolean isLineNumberingSet() {
        return this.f100519h.isPresent();
    }

    public boolean isPleaseCloseAfterUse() {
        return this.f100520i;
    }

    public boolean isStable() {
        return this.f100528q;
    }

    public boolean isUseXsiSchemaLocation() {
        return this.f100526o;
    }

    public boolean isXIncludeAware() {
        Map<String, Boolean> map = this.f100532u;
        return map != null && map.getOrDefault("http://apache.org/xml/features/xinclude", Boolean.FALSE).booleanValue();
    }

    public boolean isXIncludeAwareSet() {
        Map<String, Boolean> map = this.f100532u;
        return map != null && map.containsKey("http://apache.org/xml/features/xinclude");
    }

    public void merge(ParseOptions parseOptions) {
        int i = parseOptions.f100513b;
        if (i != 0) {
            setDTDValidationMode(i);
        }
        int i2 = parseOptions.f100512a;
        if (i2 != 0) {
            this.f100512a = i2;
        }
        InvalidityHandler invalidityHandler = parseOptions.f100534w;
        if (invalidityHandler != null) {
            this.f100534w = invalidityHandler;
        }
        StructuredQName structuredQName = parseOptions.f100514c;
        if (structuredQName != null) {
            this.f100514c = structuredQName;
        }
        SchemaType schemaType = parseOptions.f100515d;
        if (schemaType != null) {
            this.f100515d = schemaType;
        }
        if (parseOptions.f100516e.isPresent()) {
            this.f100516e = parseOptions.f100516e;
        }
        TreeModel treeModel = parseOptions.f100517f;
        if (treeModel != null) {
            this.f100517f = treeModel;
        }
        SpaceStrippingRule spaceStrippingRule = parseOptions.f100518g;
        if (spaceStrippingRule != null) {
            this.f100518g = spaceStrippingRule;
        }
        if (parseOptions.f100519h.isPresent()) {
            this.f100519h = parseOptions.f100519h;
        }
        if (parseOptions.f100520i) {
            this.f100520i = true;
        }
        if (parseOptions.f100522k != null) {
            if (this.f100522k == null) {
                this.f100522k = new ArrayList();
            }
            this.f100522k.addAll(parseOptions.f100522k);
        }
        if (parseOptions.f100532u != null) {
            if (this.f100532u == null) {
                this.f100532u = new HashMap();
            }
            this.f100532u.putAll(parseOptions.f100532u);
        }
        if (parseOptions.f100533v != null) {
            if (this.f100533v == null) {
                this.f100533v = new HashMap();
            }
            this.f100533v.putAll(parseOptions.f100533v);
        }
        if (!parseOptions.f100525n) {
            setExpandAttributeDefaults(false);
        }
        if (!parseOptions.f100526o) {
            this.f100526o = false;
        }
        if (parseOptions.f100524m) {
            this.f100524m = true;
        }
        this.f100529r = Math.min(this.f100529r, parseOptions.f100529r);
        XMLReader xMLReader = parseOptions.f100536y;
        if (xMLReader != null) {
            this.f100536y = xMLReader;
        }
        ErrorReporter errorReporter = parseOptions.f100521j;
        if (errorReporter != null) {
            this.f100521j = errorReporter;
        }
        EntityResolver entityResolver = parseOptions.f100510A;
        if (entityResolver != null) {
            this.f100510A = entityResolver;
        }
    }

    public XMLReader obtainXMLReader() throws XPathException {
        Maker<XMLReader> maker = this.f100537z;
        if (maker != null) {
            return maker.make();
        }
        XMLReader xMLReader = this.f100536y;
        if (xMLReader != null) {
            return xMLReader;
        }
        return null;
    }

    public void setAddCommentsAfterValidationErrors(boolean z) {
        this.f100524m = z;
    }

    public void setApplicableAccumulators(Set<? extends Accumulator> set) {
        this.f100535x = set;
    }

    public void setCheckEntityReferences(boolean z) {
        this.f100527p = z;
    }

    public void setContinueAfterValidationErrors(boolean z) {
        this.f100523l = z;
    }

    public void setDTDValidationMode(int i) {
        this.f100513b = i;
        boolean z = true;
        if (i != 1 && i != 2) {
            z = false;
        }
        addParserFeature("http://xml.org/sax/features/validation", z);
    }

    public void setEntityResolver(EntityResolver entityResolver) {
        this.f100510A = entityResolver;
    }

    public void setErrorHandler(ErrorHandler errorHandler) {
        this.f100511B = errorHandler;
    }

    public void setErrorReporter(ErrorReporter errorReporter) {
        if (errorReporter == null) {
            errorReporter = new StandardErrorReporter();
        }
        this.f100521j = errorReporter;
    }

    public void setExpandAttributeDefaults(boolean z) {
        this.f100525n = z;
    }

    public void setInvalidityHandler(InvalidityHandler invalidityHandler) {
        this.f100534w = invalidityHandler;
    }

    public void setLineNumbering(boolean z) {
        this.f100519h = Optional.of(Boolean.valueOf(z));
    }

    public void setModel(TreeModel treeModel) {
        this.f100517f = treeModel;
    }

    public void setPleaseCloseAfterUse(boolean z) {
        this.f100520i = z;
    }

    public void setSchemaValidationMode(int i) {
        this.f100512a = i;
    }

    public void setSpaceStrippingRule(SpaceStrippingRule spaceStrippingRule) {
        this.f100518g = spaceStrippingRule;
    }

    public void setStable(boolean z) {
        this.f100528q = z;
    }

    public void setTopLevelElement(StructuredQName structuredQName) {
        this.f100514c = structuredQName;
    }

    public void setTopLevelType(SchemaType schemaType) {
        this.f100515d = schemaType;
    }

    public void setTreeModel(int i) {
        this.f100517f = TreeModel.getTreeModel(i);
    }

    public void setUseXsiSchemaLocation(boolean z) {
        this.f100526o = z;
    }

    public void setValidationErrorLimit(int i) {
        this.f100529r = i;
    }

    public void setValidationParams(ValidationParams validationParams) {
        this.f100530s = validationParams;
    }

    public void setValidationStatisticsRecipient(ValidationStatisticsRecipient validationStatisticsRecipient) {
        this.f100531t = validationStatisticsRecipient;
    }

    public void setWrapDocument(Optional<Boolean> optional) {
        this.f100516e = optional;
    }

    public void setXIncludeAware(boolean z) {
        addParserFeature("http://apache.org/xml/features/xinclude", z);
    }

    public void setXMLReader(XMLReader xMLReader) {
        this.f100536y = xMLReader;
    }

    public void setXMLReaderMaker(Maker<XMLReader> maker) {
        this.f100537z = maker;
    }

    public ParseOptions(ParseOptions parseOptions) {
        this.f100512a = 0;
        this.f100513b = 0;
        this.f100516e = Optional.empty();
        this.f100517f = null;
        this.f100518g = null;
        this.f100519h = Optional.empty();
        this.f100520i = false;
        this.f100521j = null;
        this.f100522k = null;
        this.f100523l = false;
        this.f100524m = false;
        this.f100525n = true;
        this.f100526o = true;
        this.f100527p = false;
        this.f100528q = true;
        this.f100529r = Integer.MAX_VALUE;
        this.f100530s = null;
        this.f100531t = null;
        this.f100532u = null;
        this.f100533v = null;
        this.f100534w = null;
        this.f100535x = null;
        this.f100536y = null;
        this.f100510A = null;
        this.f100511B = null;
        this.f100512a = parseOptions.f100512a;
        this.f100530s = parseOptions.f100530s;
        setDTDValidationMode(parseOptions.f100513b);
        this.f100514c = parseOptions.f100514c;
        this.f100515d = parseOptions.f100515d;
        this.f100516e = parseOptions.f100516e;
        this.f100517f = parseOptions.f100517f;
        this.f100518g = parseOptions.f100518g;
        this.f100519h = parseOptions.f100519h;
        this.f100520i = parseOptions.f100520i;
        this.f100521j = parseOptions.f100521j;
        this.f100534w = parseOptions.f100534w;
        this.f100528q = parseOptions.f100528q;
        if (parseOptions.f100522k != null) {
            this.f100522k = new ArrayList(parseOptions.f100522k);
        }
        setExpandAttributeDefaults(parseOptions.f100525n);
        this.f100526o = parseOptions.f100526o;
        this.f100529r = parseOptions.f100529r;
        this.f100523l = parseOptions.f100523l;
        this.f100524m = parseOptions.f100524m;
        if (parseOptions.f100532u != null) {
            this.f100532u = new HashMap(parseOptions.f100532u);
        }
        if (parseOptions.f100533v != null) {
            this.f100533v = new HashMap(parseOptions.f100533v);
        }
        this.f100535x = parseOptions.f100535x;
        this.f100527p = parseOptions.f100527p;
        this.f100531t = parseOptions.f100531t;
        this.f100537z = parseOptions.getXMLReaderMaker();
        this.f100536y = parseOptions.f100536y;
        this.f100511B = parseOptions.f100511B;
        this.f100510A = parseOptions.f100510A;
    }
}
