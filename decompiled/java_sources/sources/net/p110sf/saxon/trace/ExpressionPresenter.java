package net.p110sf.saxon.trace;

import com.caverock.androidsvg.SVGParser;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;
import javax.xml.transform.stream.StreamResult;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.CheckSumFilter;
import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.event.NamespaceReducer;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NoNamespaceName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class ExpressionPresenter {

    /* renamed from: a */
    public Configuration f102181a;

    /* renamed from: b */
    public Receiver f102182b;

    /* renamed from: c */
    public ComplexContentOutputter f102183c;

    /* renamed from: d */
    public int f102184d;

    /* renamed from: e */
    public boolean f102185e;

    /* renamed from: f */
    public String f102186f;

    /* renamed from: g */
    public final Stack<Expression> f102187g;

    /* renamed from: h */
    public final Stack<String> f102188h;

    /* renamed from: i */
    public NamespaceMap f102189i;

    /* renamed from: j */
    public String f102190j;

    /* renamed from: k */
    public Options f102191k;

    /* renamed from: l */
    public boolean f102192l;

    /* loaded from: classes11.dex */
    public static class ExportOptions implements Options {
        public boolean addStaticType;
        public Map<Component, Integer> componentMap;
        public boolean explaining;
        public Map<StylesheetPackage, Integer> packageMap;
        public StylesheetPackage rootPackage;
        public boolean suppressStaticContext;
        public String target = "";
        public int targetVersion = 0;
    }

    /* loaded from: classes11.dex */
    public interface Options {
    }

    public ExpressionPresenter() {
        this.f102184d = 0;
        this.f102185e = false;
        this.f102186f = null;
        this.f102187g = new Stack<>();
        this.f102188h = new Stack<>();
        this.f102189i = NamespaceMap.emptyMap();
        this.f102191k = new ExportOptions();
        this.f102192l = false;
    }

    public static Receiver defaultDestination(Configuration configuration, Logger logger) throws XPathException {
        return configuration.getSerializerFactory().getReceiver(logger.asStreamResult(), makeDefaultProperties(configuration));
    }

    public static String jsEscape(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '\f') {
                sb.append("\\f");
            } else if (charAt == '\r') {
                sb.append("\\r");
            } else if (charAt == '\"') {
                sb.append("\\\"");
            } else if (charAt == '\'') {
                sb.append("\\'");
            } else if (charAt != '\\') {
                switch (charAt) {
                    case '\b':
                        sb.append("\\b");
                        break;
                    case '\t':
                        sb.append("\\t");
                        break;
                    case '\n':
                        sb.append("\\n");
                        break;
                    default:
                        if (charAt < ' ' || ((charAt > 127 && charAt < 160) || charAt > 55296)) {
                            sb.append("\\u");
                            StringBuilder sb2 = new StringBuilder(Integer.toHexString(charAt).toUpperCase());
                            while (sb2.length() < 4) {
                                sb2.insert(0, "0");
                            }
                            sb.append(sb2.toString());
                            break;
                        } else {
                            sb.append(charAt);
                            break;
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static SerializationProperties makeDefaultProperties(Configuration configuration) {
        SerializationProperties serializationProperties = new SerializationProperties();
        serializationProperties.setProperty("method", "xml");
        serializationProperties.setProperty("indent", "yes");
        if (configuration.isLicensedFeature(8)) {
            serializationProperties.setProperty(SaxonOutputKeys.INDENT_SPACES, "1");
            serializationProperties.setProperty(SaxonOutputKeys.LINE_LENGTH, "4096");
        }
        serializationProperties.setProperty("omit-xml-declaration", SVGParser.f16048t);
        serializationProperties.setProperty("encoding", "utf-8");
        serializationProperties.setProperty("version", "1.0");
        serializationProperties.setProperty(SaxonOutputKeys.SINGLE_QUOTES, "yes");
        return serializationProperties;
    }

    /* renamed from: a */
    public final int m64077a(String str) {
        try {
            if (this.f102185e) {
                this.f102183c.startContent();
                this.f102185e = false;
            }
            String str2 = this.f102190j;
            this.f102183c.startElement(str2 == null ? new NoNamespaceName(str) : new FingerprintedQName("", str2, str), Untyped.getInstance(), Loc.NONE, 0);
            String str3 = this.f102186f;
            if (str3 != null) {
                emitAttribute("role", str3);
                this.f102186f = null;
            }
            this.f102185e = true;
            int i = this.f102184d;
            this.f102184d = i + 1;
            return i;
        } catch (XPathException e) {
            e.printStackTrace();
            throw new InternalError(e.getMessage());
        }
    }

    /* renamed from: b */
    public final String m64078b(String str) {
        if (!this.f102192l) {
            return str;
        }
        String[] split = str.split("/");
        for (int length = split.length - 1; length >= 0; length--) {
            if (!split[length].isEmpty()) {
                return split[length];
            }
        }
        return str;
    }

    public void close() {
        try {
            Receiver receiver = this.f102182b;
            if (receiver instanceof CheckSumFilter) {
                this.f102183c.processingInstruction(CheckSumFilter.SIGMA, BMPString.m63877of(Integer.toHexString(((CheckSumFilter) receiver).getChecksum())), Loc.NONE, 0);
            }
            this.f102183c.endDocument();
            this.f102183c.close();
        } catch (XPathException e) {
            e.printStackTrace();
            throw new InternalError(e.getMessage());
        }
    }

    public void emitAttribute(String str, String str2) {
        if (str2 != null) {
            if (str.equals("module")) {
                str2 = m64078b(str2);
            }
            try {
                this.f102183c.attribute(new NoNamespaceName(str), BuiltInAtomicType.UNTYPED_ATOMIC, str2, Loc.NONE, 0);
            } catch (XPathException e) {
                e.printStackTrace();
                throw new InternalError(e.getMessage());
            }
        }
    }

    public void emitRetainedStaticContext(RetainedStaticContext retainedStaticContext, RetainedStaticContext retainedStaticContext2) {
        try {
            if (!((ExportOptions) this.f102191k).suppressStaticContext && !this.f102192l && retainedStaticContext.getStaticBaseUri() != null && (retainedStaticContext2 == null || !retainedStaticContext.getStaticBaseUri().equals(retainedStaticContext2.getStaticBaseUri()))) {
                emitAttribute("baseUri", retainedStaticContext.getStaticBaseUriString());
            }
            if (!retainedStaticContext.getDefaultCollationName().equals(NamespaceConstant.CODEPOINT_COLLATION_URI) && (retainedStaticContext2 == null || !retainedStaticContext.getDefaultCollationName().equals(retainedStaticContext2.getDefaultCollationName()))) {
                emitAttribute("defaultCollation", retainedStaticContext.getDefaultCollationName());
            }
            if (!retainedStaticContext.getDefaultElementNamespace().isEmpty() && (retainedStaticContext2 == null || !retainedStaticContext.getDefaultElementNamespace().equals(retainedStaticContext2.getDefaultElementNamespace()))) {
                emitAttribute("defaultElementNS", retainedStaticContext.getDefaultElementNamespace());
            }
            if (!"http://www.w3.org/2005/xpath-functions".equals(retainedStaticContext.getDefaultFunctionNamespace())) {
                emitAttribute("defaultFunctionNS", retainedStaticContext.getDefaultFunctionNamespace());
            }
            if (((ExportOptions) this.f102191k).suppressStaticContext) {
                return;
            }
            if (retainedStaticContext2 == null || !retainedStaticContext.declaresSameNamespaces(retainedStaticContext2)) {
                UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
                Iterator<String> iteratePrefixes = retainedStaticContext.iteratePrefixes();
                while (iteratePrefixes.hasNext()) {
                    String next = iteratePrefixes.next();
                    String uRIForPrefix = retainedStaticContext.getURIForPrefix(next, true);
                    unicodeBuilder.append(next);
                    unicodeBuilder.append("=");
                    if (Whitespace.containsWhitespace(StringTool.codePoints(uRIForPrefix))) {
                        throw new XPathException("Cannot export a stylesheet if namespaces contain whitespace: '" + uRIForPrefix + CloudStorageConstants.SINGLE_QUOTES);
                    }
                    if (uRIForPrefix.equals(NamespaceConstant.getUriForConventionalPrefix(next))) {
                        uRIForPrefix = "~";
                    }
                    unicodeBuilder.append(uRIForPrefix);
                    unicodeBuilder.append(" ");
                }
                emitAttribute(Constants.ATTRNAME_NS, Whitespace.trim(unicodeBuilder.toUnicodeString()).toString());
            }
        } catch (XPathException e) {
            throw new AssertionError(e);
        }
    }

    public int endElement() {
        try {
            if (this.f102185e) {
                this.f102183c.startContent();
                this.f102185e = false;
            }
            this.f102183c.endElement();
            if (this.f102188h.pop().startsWith("*")) {
                this.f102187g.pop();
            }
            int i = this.f102184d - 1;
            this.f102184d = i;
            return i;
        } catch (XPathException e) {
            e.printStackTrace();
            throw new InternalError(e.getMessage());
        }
    }

    public void endSubsidiaryElement() {
        endElement();
    }

    public Configuration getConfiguration() {
        return this.f102181a;
    }

    public NamePool getNamePool() {
        return this.f102181a.getNamePool();
    }

    public Options getOptions() {
        return this.f102191k;
    }

    public TypeHierarchy getTypeHierarchy() {
        return this.f102181a.getTypeHierarchy();
    }

    public void init(Configuration configuration, StreamResult streamResult, boolean z) {
        SerializationProperties makeDefaultProperties = makeDefaultProperties(configuration);
        if (configuration.getXMLVersion() == 11) {
            if ("JS".equals(((ExportOptions) getOptions()).target)) {
                configuration.getLogger().warning("For target=JS, the SEF file will use XML 1.0, which disallows control characters");
            } else {
                makeDefaultProperties.setProperty("version", SerializerConstants.XMLVERSION11);
            }
        }
        try {
            Receiver receiver = configuration.getSerializerFactory().getReceiver(streamResult, makeDefaultProperties);
            this.f102182b = receiver;
            NamespaceReducer namespaceReducer = new NamespaceReducer(receiver);
            this.f102182b = namespaceReducer;
            if (z) {
                this.f102182b = new CheckSumFilter(namespaceReducer);
            }
            ComplexContentOutputter complexContentOutputter = new ComplexContentOutputter(this.f102182b);
            this.f102183c = complexContentOutputter;
            this.f102181a = configuration;
            try {
                complexContentOutputter.open();
                this.f102183c.startDocument(0);
            } catch (XPathException e) {
                e.printStackTrace();
                throw new InternalError(e.getMessage());
            }
        } catch (XPathException e2) {
            e2.printStackTrace();
            throw new InternalError(e2.getMessage());
        }
    }

    public boolean isRelocatable() {
        return this.f102192l;
    }

    public void namespace(String str, String str2) {
        try {
            this.f102183c.namespace(str, str2, 0);
        } catch (XPathException e) {
            e.printStackTrace();
            throw new InternalError(e.getMessage());
        }
    }

    public void setChildRole(String str) {
        this.f102186f = str;
    }

    public void setDefaultNamespace(String str) {
        this.f102190j = str;
        this.f102189i = this.f102189i.put("", str);
    }

    public void setOptions(Options options) {
        this.f102191k = options;
    }

    public void setRelocatable(boolean z) {
        this.f102192l = z;
    }

    public int startElement(String str, Expression expression) {
        Expression peek = this.f102187g.isEmpty() ? null : this.f102187g.peek();
        this.f102187g.push(expression);
        this.f102188h.push("*" + str);
        int m64077a = m64077a(str);
        if ((peek == null || expression.getRetainedStaticContext() != peek.getRetainedStaticContext()) && expression.getRetainedStaticContext() != null) {
            emitRetainedStaticContext(expression.getRetainedStaticContext(), peek != null ? peek.getRetainedStaticContext() : null);
        }
        String systemId = expression.getLocation().getSystemId();
        if (systemId != null && peek != null && (peek.getLocation().getSystemId() == null || !peek.getLocation().getSystemId().equals(systemId))) {
            emitAttribute("module", m64078b(systemId));
        }
        int lineNumber = expression.getLocation().getLineNumber();
        if (peek == null || (peek.getLocation().getLineNumber() != lineNumber && lineNumber != -1)) {
            emitAttribute("line", lineNumber + "");
        }
        return m64077a;
    }

    public void startSubsidiaryElement(String str) {
        startElement(str);
    }

    public void emitAttribute(String str, StructuredQName structuredQName) {
        try {
            this.f102183c.attribute(new NoNamespaceName(str), BuiltInAtomicType.UNTYPED_ATOMIC, structuredQName.getEQName(), Loc.NONE, 0);
        } catch (XPathException e) {
            e.printStackTrace();
            throw new InternalError(e.getMessage());
        }
    }

    public ExpressionPresenter(Configuration configuration) {
        this(configuration, configuration.getLogger());
    }

    public ExpressionPresenter(Configuration configuration, StreamResult streamResult) {
        this(configuration, streamResult, false);
    }

    public ExpressionPresenter(Builder builder) {
        this();
        init(builder.getConfiguration(), (Receiver) builder, false);
    }

    public ExpressionPresenter(Configuration configuration, StreamResult streamResult, boolean z) {
        this.f102184d = 0;
        this.f102185e = false;
        this.f102186f = null;
        this.f102187g = new Stack<>();
        this.f102188h = new Stack<>();
        this.f102189i = NamespaceMap.emptyMap();
        this.f102191k = new ExportOptions();
        this.f102192l = false;
        init(configuration, streamResult, z);
    }

    public int startElement(String str) {
        this.f102188h.push(str);
        return m64077a(str);
    }

    public void init(Configuration configuration, Receiver receiver, boolean z) {
        this.f102182b = receiver;
        NamespaceReducer namespaceReducer = new NamespaceReducer(receiver);
        this.f102182b = namespaceReducer;
        if (z) {
            this.f102182b = new CheckSumFilter(namespaceReducer);
        }
        ComplexContentOutputter complexContentOutputter = new ComplexContentOutputter(this.f102182b);
        this.f102183c = complexContentOutputter;
        this.f102181a = configuration;
        try {
            complexContentOutputter.open();
            this.f102183c.startDocument(0);
        } catch (XPathException e) {
            e.printStackTrace();
            throw new InternalError(e.getMessage());
        }
    }

    public ExpressionPresenter(Configuration configuration, Logger logger) {
        this(configuration, logger.asStreamResult());
    }

    public ExpressionPresenter(Configuration configuration, Receiver receiver) {
        this.f102184d = 0;
        this.f102185e = false;
        this.f102186f = null;
        this.f102187g = new Stack<>();
        this.f102188h = new Stack<>();
        this.f102189i = NamespaceMap.emptyMap();
        this.f102191k = new ExportOptions();
        this.f102192l = false;
        this.f102181a = configuration;
        this.f102182b = receiver;
        ComplexContentOutputter complexContentOutputter = new ComplexContentOutputter(receiver);
        this.f102183c = complexContentOutputter;
        try {
            complexContentOutputter.open();
            this.f102183c.startDocument(0);
        } catch (XPathException e) {
            e.printStackTrace();
            throw new InternalError(e.getMessage());
        }
    }
}
