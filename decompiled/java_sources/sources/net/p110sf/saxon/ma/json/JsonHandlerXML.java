package net.p110sf.saxon.ma.json;

import com.onyx.android.sdk.data.common.cloud.Constant;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Stack;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnySimpleType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.AtomicValue;
import org.apache.xmlbeans.impl.schema.SoapEncSchemaTypeSystem;

/* loaded from: classes11.dex */
public class JsonHandlerXML extends JsonHandler {
    public static final String PREFIX = "";

    /* renamed from: u */
    public static final String f100621u = "http://www.w3.org/2005/xpath-functions.xsd";

    /* renamed from: v */
    public static final String f100622v = "http://www.w3.org/2005/xpath-functions";

    /* renamed from: w */
    public static final SimpleType f100623w = AnySimpleType.getInstance();

    /* renamed from: x */
    public static final SimpleType f100624x = BuiltInAtomicType.BOOLEAN;

    /* renamed from: y */
    public static final SimpleType f100625y = BuiltInAtomicType.STRING;

    /* renamed from: d */
    public final Outputter f100626d;

    /* renamed from: e */
    public final Builder f100627e;

    /* renamed from: f */
    public Stack<String> f100628f;

    /* renamed from: h */
    public boolean f100630h;

    /* renamed from: i */
    public boolean f100631i;

    /* renamed from: j */
    public NamePool f100632j;

    /* renamed from: k */
    public FingerprintedQName f100633k;

    /* renamed from: l */
    public FingerprintedQName f100634l;

    /* renamed from: m */
    public FingerprintedQName f100635m;

    /* renamed from: n */
    public FingerprintedQName f100636n;

    /* renamed from: o */
    public FingerprintedQName f100637o;

    /* renamed from: p */
    public FingerprintedQName f100638p;

    /* renamed from: q */
    public FingerprintedQName f100639q;

    /* renamed from: r */
    public FingerprintedQName f100640r;

    /* renamed from: s */
    public FingerprintedQName f100641s;
    public HashMap<String, SchemaType> types;
    public boolean validate;

    /* renamed from: g */
    public final Stack<Boolean> f100629g = new Stack<>();

    /* renamed from: t */
    public final Stack<HashSet<String>> f100642t = new Stack<>();

    public JsonHandlerXML(XPathContext xPathContext, String str, int i) throws XPathException {
        m63315h(xPathContext, i);
        Builder makeBuilder = xPathContext.getController().makeBuilder();
        this.f100627e = makeBuilder;
        makeBuilder.setSystemId(str);
        makeBuilder.setTiming(false);
        ComplexContentOutputter complexContentOutputter = new ComplexContentOutputter(makeBuilder);
        this.f100626d = complexContentOutputter;
        complexContentOutputter.open();
        complexContentOutputter.startDocument(0);
    }

    /* renamed from: e */
    public final void m63312e(String str) throws XPathException {
        this.f100626d.characters(StringView.m63901of(str), Loc.NONE, 0);
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public void endArray() throws XPathException {
        this.f100629g.pop();
        m63314g();
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public void endMap() throws XPathException {
        this.f100629g.pop();
        if (this.f100631i) {
            this.f100642t.pop();
        }
        m63314g();
    }

    /* renamed from: f */
    public final boolean m63313f(String str) {
        return str.indexOf(92) >= 0;
    }

    /* renamed from: g */
    public final void m63314g() throws XPathException {
        this.f100626d.endElement();
    }

    /* renamed from: h */
    public final void m63315h(XPathContext xPathContext, int i) throws XPathException {
        this.f100628f = new Stack<>();
        setContext(xPathContext);
        this.charChecker = xPathContext.getConfiguration().getValidCharacterChecker();
        this.escape = (i & 1) != 0;
        this.f100630h = (i & 2) != 0;
        boolean z = (i & 8) != 0;
        this.validate = z;
        this.f100631i = z || (i & 32) == 0;
        this.types = new HashMap<>();
        this.f100632j = xPathContext.getConfiguration().getNamePool();
        this.f100633k = m63319l(Constant.MAP_TAG);
        this.f100634l = m63319l("array");
        this.f100635m = m63319l("string");
        this.f100636n = m63319l("number");
        this.f100637o = m63319l("boolean");
        this.f100638p = m63319l("null");
        this.f100639q = m63318k("key");
        this.f100640r = m63318k("escaped");
        this.f100641s = m63318k("escaped-key");
        if (this.validate) {
            try {
                Configuration configuration = xPathContext.getConfiguration();
                synchronized (configuration) {
                    configuration.checkLicensedFeature(1, "validation", -1);
                    m63317j(configuration);
                }
                String[] strArr = {"mapType", SoapEncSchemaTypeSystem.ARRAY_TYPE, "stringType", "numberType", "booleanType", "nullType", "mapWithinMapType", "arrayWithinMapType", "stringWithinMapType", "numberWithinMapType", "booleanWithinMapType", "nullWithinMapType"};
                for (int i2 = 0; i2 < 12; i2++) {
                    String str = strArr[i2];
                    setType(str, configuration.getSchemaType(new StructuredQName("", "http://www.w3.org/2005/xpath-functions", str)));
                }
            } catch (SchemaException e) {
                throw new XPathException(e);
            }
        }
    }

    /* renamed from: i */
    public final boolean m63316i() {
        return !this.f100629g.isEmpty() && this.f100629g.peek().booleanValue();
    }

    /* renamed from: j */
    public final void m63317j(Configuration configuration) throws SchemaException {
        if (configuration.isSchemaAvailable("http://www.w3.org/2005/xpath-functions")) {
            return;
        }
        InputStream locateResource = Version.platform.locateResource("xpath-functions.scm", new ArrayList());
        if (configuration.isTiming()) {
            configuration.getLogger().info("Loading schema for: http://www.w3.org/2005/xpath-functions");
        }
        configuration.addSchemaSource(new StreamSource(locateResource, "classpath:xpath-functions.xsd"));
    }

    /* renamed from: k */
    public final FingerprintedQName m63318k(String str) {
        FingerprintedQName fingerprintedQName = new FingerprintedQName("", "", str);
        fingerprintedQName.obtainFingerprint(this.f100632j);
        return fingerprintedQName;
    }

    /* renamed from: l */
    public final FingerprintedQName m63319l(String str) {
        FingerprintedQName fingerprintedQName = new FingerprintedQName("", "http://www.w3.org/2005/xpath-functions", str);
        fingerprintedQName.obtainFingerprint(this.f100632j);
        return fingerprintedQName;
    }

    /* renamed from: m */
    public final void m63320m() throws XPathException {
        this.f100626d.startContent();
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public void markAsEscaped(String str, boolean z) throws XPathException {
        if (m63313f(str) && this.escape) {
            this.f100626d.attribute(z ? this.f100641s : this.f100640r, this.validate ? f100624x : f100623w, "true", Loc.NONE, 0);
        }
    }

    /* renamed from: n */
    public final void m63321n(FingerprintedQName fingerprintedQName, String str) throws XPathException {
        m63322o(fingerprintedQName, this.types.get(str));
    }

    /* renamed from: o */
    public final void m63322o(FingerprintedQName fingerprintedQName, SchemaType schemaType) throws XPathException {
        Outputter outputter = this.f100626d;
        if (!this.validate || schemaType == null) {
            schemaType = Untyped.getInstance();
        }
        outputter.startElement(fingerprintedQName, schemaType, Loc.NONE, 0);
        if (m63316i()) {
            String reEscape = reEscape(this.f100628f.pop());
            if (this.escape) {
                markAsEscaped(reEscape, true);
            }
            this.f100626d.attribute(this.f100639q, this.validate ? f100625y : f100623w, reEscape, Loc.NONE, 0);
        }
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public boolean setKey(String str, String str2) {
        this.f100628f.push(str);
        return this.f100631i && !this.f100642t.peek().add(str2);
    }

    public void setType(String str, SchemaType schemaType) {
        this.types.put(str, schemaType);
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public void startArray() throws XPathException {
        m63321n(this.f100634l, m63316i() ? "arrayWithinMapType" : SoapEncSchemaTypeSystem.ARRAY_TYPE);
        this.f100629g.push(Boolean.FALSE);
        m63320m();
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public void startMap() throws XPathException {
        m63321n(this.f100633k, m63316i() ? "mapWithinMapType" : "mapType");
        if (this.f100631i) {
            this.f100642t.push(new HashSet<>());
        }
        this.f100629g.push(Boolean.TRUE);
        m63320m();
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public void writeBoolean(boolean z) throws XPathException {
        m63321n(this.f100637o, m63316i() ? "booleanWithinMapType" : "booleanType");
        m63320m();
        m63312e(z ? "true" : "false");
        m63314g();
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public void writeNull() throws XPathException {
        m63321n(this.f100638p, m63316i() ? "nullWithinMapType" : "nullType");
        m63320m();
        m63314g();
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public void writeNumeric(String str, AtomicValue atomicValue) throws XPathException {
        m63321n(this.f100636n, m63316i() ? "numberWithinMapType" : "numberType");
        m63320m();
        m63312e(str);
        m63314g();
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public void writeString(String str) throws XPathException {
        m63321n(this.f100635m, m63316i() ? "stringWithinMapType" : "stringType");
        String reEscape = reEscape(str);
        if (this.escape) {
            markAsEscaped(reEscape, false);
        }
        m63320m();
        m63312e(reEscape);
        m63314g();
    }

    @Override // net.p110sf.saxon.ma.json.JsonHandler
    public Item getResult() throws XPathException {
        this.f100626d.endDocument();
        this.f100626d.close();
        return this.f100627e.getCurrentRoot();
    }
}
