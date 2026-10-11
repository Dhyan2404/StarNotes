package net.p110sf.saxon;

import com.caverock.androidsvg.SVGParser;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import java.io.FileNotFoundException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.function.Function;
import java.util.function.IntPredicate;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.URIResolver;
import kotlinx.coroutines.DebugKt;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.ContentHandlerProxy;
import net.p110sf.saxon.event.FilterFactory;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.Sender;
import net.p110sf.saxon.expr.EarlyEvaluationContext;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ItemMappingFunction;
import net.p110sf.saxon.expr.ItemMappingIterator;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.PendingUpdateList;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.accum.AccumulatorRegistry;
import net.p110sf.saxon.expr.compat.TypeChecker10;
import net.p110sf.saxon.expr.instruct.Debugger;
import net.p110sf.saxon.expr.instruct.EvaluateInstr;
import net.p110sf.saxon.expr.instruct.Executable;
import net.p110sf.saxon.expr.instruct.GlobalParam;
import net.p110sf.saxon.expr.instruct.MemoFunction;
import net.p110sf.saxon.expr.instruct.ParameterSet;
import net.p110sf.saxon.expr.instruct.ResultDocument;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.instruct.SourceDocument;
import net.p110sf.saxon.expr.instruct.TemplateRule;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.expr.number.Numberer_en;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ICompilerService;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.expr.parser.OptimizerOptions;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.expr.parser.XPathParser;
import net.p110sf.saxon.expr.sort.AlphanumericCollator;
import net.p110sf.saxon.expr.sort.CodepointCollator;
import net.p110sf.saxon.expr.sort.HTML5CaseBlindCollator;
import net.p110sf.saxon.functions.FunctionLibraryList;
import net.p110sf.saxon.functions.IntegratedFunctionLibrary;
import net.p110sf.saxon.functions.MathFunctionSet;
import net.p110sf.saxon.functions.ResolveURI;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.functions.registry.BuiltInFunctionSet;
import net.p110sf.saxon.functions.registry.ConstructorFunctionLibrary;
import net.p110sf.saxon.functions.registry.ExsltCommonFunctionSet;
import net.p110sf.saxon.functions.registry.UseWhen30FunctionSet;
import net.p110sf.saxon.functions.registry.VendorFunctionSetHE;
import net.p110sf.saxon.functions.registry.XPath30FunctionSet;
import net.p110sf.saxon.functions.registry.XPath31FunctionSet;
import net.p110sf.saxon.functions.registry.XPath40FunctionSet;
import net.p110sf.saxon.functions.registry.XSLT30FunctionSet;
import net.p110sf.saxon.lib.ActiveSource;
import net.p110sf.saxon.lib.AugmentedSource;
import net.p110sf.saxon.lib.CatalogResourceResolver;
import net.p110sf.saxon.lib.ChainedEntityResolver;
import net.p110sf.saxon.lib.CollationURIResolver;
import net.p110sf.saxon.lib.CollectionFinder;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.lib.EntityResolverWrappingResourceResolver;
import net.p110sf.saxon.lib.EnvironmentVariableResolver;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.ExtensionFunctionDefinition;
import net.p110sf.saxon.lib.ExternalObjectModel;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.FeatureData;
import net.p110sf.saxon.lib.FeatureIndex;
import net.p110sf.saxon.lib.FeatureKeys;
import net.p110sf.saxon.lib.FunctionAnnotationHandler;
import net.p110sf.saxon.lib.IDynamicLoader;
import net.p110sf.saxon.lib.InvalidityReportGenerator;
import net.p110sf.saxon.lib.LocalizerFactory;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.lib.ModuleURIResolver;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.Numberer;
import net.p110sf.saxon.lib.OutputURIResolver;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.ProtocolRestrictor;
import net.p110sf.saxon.lib.ResourceCollection;
import net.p110sf.saxon.lib.ResourceFactory;
import net.p110sf.saxon.lib.ResourceResolver;
import net.p110sf.saxon.lib.ResourceResolverWrappingURIResolver;
import net.p110sf.saxon.lib.SchemaURIResolver;
import net.p110sf.saxon.lib.SerializerFactory;
import net.p110sf.saxon.lib.SourceResolver;
import net.p110sf.saxon.lib.StandardCollationURIResolver;
import net.p110sf.saxon.lib.StandardEntityResolver;
import net.p110sf.saxon.lib.StandardEnvironmentVariableResolver;
import net.p110sf.saxon.lib.StandardErrorReporter;
import net.p110sf.saxon.lib.StandardLogger;
import net.p110sf.saxon.lib.StandardModuleURIResolver;
import net.p110sf.saxon.lib.StandardURIChecker;
import net.p110sf.saxon.lib.StandardUnparsedTextResolver;
import net.p110sf.saxon.lib.StaticQueryContextFactory;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.lib.TraceListener;
import net.p110sf.saxon.lib.UnparsedTextURIResolver;
import net.p110sf.saxon.lib.Validation;
import net.p110sf.saxon.lib.XQueryFunctionAnnotationHandler;
import net.p110sf.saxon.ma.arrays.ArrayFunctionSet;
import net.p110sf.saxon.ma.map.MapFunctionSet;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.AllElementsSpaceStrippingRule;
import net.p110sf.saxon.om.DocumentPool;
import net.p110sf.saxon.om.FocusTrackingIterator;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.IgnorableSpaceStrippingRule;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeSource;
import net.p110sf.saxon.om.NotationSet;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.om.TreeModel;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.p111z.IntHashSet;
import net.p110sf.saxon.p111z.IntPredicateLambda;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.pattern.PatternParser;
import net.p110sf.saxon.query.QueryModule;
import net.p110sf.saxon.query.StaticQueryContext;
import net.p110sf.saxon.query.XQueryExpression;
import net.p110sf.saxon.query.XQueryParser;
import net.p110sf.saxon.regex.RegularExpression;
import net.p110sf.saxon.resource.ActiveSAXSource;
import net.p110sf.saxon.resource.BinaryResource;
import net.p110sf.saxon.resource.JSONResource;
import net.p110sf.saxon.resource.UnknownResource;
import net.p110sf.saxon.resource.UnparsedTextResource;
import net.p110sf.saxon.resource.XmlResource;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.serialize.charcode.CharacterSetFactory;
import net.p110sf.saxon.serialize.charcode.XMLCharacterData;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.style.Compilation;
import net.p110sf.saxon.style.ComponentDeclaration;
import net.p110sf.saxon.style.StyleNodeFactory;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.style.XSLEvaluate;
import net.p110sf.saxon.style.XSLTemplate;
import net.p110sf.saxon.sxpath.IndependentContext;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trace.XQueryTraceCodeInjector;
import net.p110sf.saxon.trace.XSLTTraceCodeInjector;
import net.p110sf.saxon.trans.CompilerInfo;
import net.p110sf.saxon.trans.ConfigurationReader;
import net.p110sf.saxon.trans.FunctionStreamability;
import net.p110sf.saxon.trans.LicenseException;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.trans.PackageLoaderHE;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.SimpleMode;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.TypeAliasManager;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.trans.packages.IPackageLoader;
import net.p110sf.saxon.tree.tiny.TreeStatistics;
import net.p110sf.saxon.tree.util.DocumentNumberAllocator;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.BuiltInType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.JavaExternalObjectType;
import net.p110sf.saxon.type.MissingComponentException;
import net.p110sf.saxon.type.SchemaDeclaration;
import net.p110sf.saxon.type.SchemaException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.StringConverter;
import net.p110sf.saxon.type.StringToDouble;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.ValidationException;
import net.p110sf.saxon.value.Closure;
import net.p110sf.saxon.value.MemoClosure;
import net.p110sf.saxon.value.ObjectValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringToDouble11;
import org.xml.sax.ContentHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.DefaultHandler2;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes11.dex */
public class Configuration implements SourceResolver, NotationSet {
    public static final int XML10 = 10;
    public static final int XML11 = 11;
    public static final int XSD10 = 10;
    public static final int XSD11 = 11;

    /* renamed from: d0 */
    public static final /* synthetic */ boolean f98746d0 = false;

    /* renamed from: A */
    public SerializerFactory f98747A;

    /* renamed from: D */
    public String f98750D;

    /* renamed from: E */
    public transient SourceResolver f98751E;

    /* renamed from: G */
    public ModuleURIResolver f98753G;

    /* renamed from: H */
    public String f98754H;

    /* renamed from: I */
    public UnparsedTextURIResolver f98755I;

    /* renamed from: R */
    public transient ResourceResolver f98764R;

    /* renamed from: W */
    public Comparator<String> f98769W;

    /* renamed from: b */
    public transient CharacterSetFactory f98775b;
    protected FunctionLibraryList builtInExtensionLibraryList;
    protected transient StaticQueryContext defaultStaticQueryContext;
    protected CompilerInfo defaultXsltCompilerInfo;

    /* renamed from: g */
    public CollectionFinder f98781g;

    /* renamed from: l */
    public Function<Configuration, ? extends ErrorReporter> f98786l;
    protected IndependentContext staticContextForSystemFunctions;
    protected transient TypeHierarchy typeHierarchy;

    /* renamed from: y */
    public transient LocalizerFactory f98799y;
    protected static IntSet booleanFeatures = new IntHashSet(40);
    protected static IntSet stringFeatures = new IntHashSet(40);

    /* renamed from: c0 */
    public static final LexicalHandler f98745c0 = new DefaultHandler2();

    /* renamed from: a */
    public transient ApiProvider f98773a = null;

    /* renamed from: c */
    public final Map<String, StringCollator> f98777c = new HashMap(10);

    /* renamed from: d */
    public CollationURIResolver f98778d = new StandardCollationURIResolver();

    /* renamed from: e */
    public String f98779e = NamespaceConstant.CODEPOINT_COLLATION_URI;

    /* renamed from: f */
    public Map<String, ResourceCollection> f98780f = new HashMap();

    /* renamed from: h */
    public EnvironmentVariableResolver f98782h = new StandardEnvironmentVariableResolver();

    /* renamed from: i */
    public String f98783i = null;

    /* renamed from: j */
    public final ParseOptions f98784j = new ParseOptions();

    /* renamed from: k */
    public StaticQueryContextFactory f98785k = new StaticQueryContextFactory();
    protected OptimizerOptions optimizerOptions = OptimizerOptions.FULL_HE_OPTIMIZATION;

    /* renamed from: m */
    public String f98787m = null;

    /* renamed from: n */
    public DocumentNumberAllocator f98788n = new DocumentNumberAllocator();

    /* renamed from: o */
    public transient Debugger f98789o = null;

    /* renamed from: p */
    public String f98790p = Version.platform.getDefaultLanguage();

    /* renamed from: q */
    public String f98791q = Version.platform.getDefaultCountry();

    /* renamed from: r */
    public Properties f98792r = new Properties();

    /* renamed from: s */
    public transient IDynamicLoader f98793s = Version.platform.getDefaultDynamicLoader();

    /* renamed from: t */
    public final IntSet f98794t = new IntHashSet(64);

    /* renamed from: u */
    public final IntHashMap<String> f98795u = new IntHashMap<>();

    /* renamed from: v */
    public List<ExternalObjectModel> f98796v = new ArrayList(4);

    /* renamed from: w */
    public final DocumentPool f98797w = new DocumentPool();

    /* renamed from: x */
    public final IntegratedFunctionLibrary f98798x = new IntegratedFunctionLibrary();

    /* renamed from: z */
    public NamePool f98800z = new NamePool();
    protected Optimizer optimizer = null;

    /* renamed from: B */
    public volatile ConcurrentLinkedQueue<XMLReader> f98748B = new ConcurrentLinkedQueue<>();

    /* renamed from: C */
    public volatile ConcurrentLinkedQueue<XMLReader> f98749C = new ConcurrentLinkedQueue<>();

    /* renamed from: F */
    public transient Logger f98752F = new StandardLogger();

    /* renamed from: J */
    public transient XPathContext f98756J = null;

    /* renamed from: K */
    public ConversionRules f98757K = null;

    /* renamed from: L */
    public transient TraceListener f98758L = null;

    /* renamed from: M */
    public String f98759M = null;

    /* renamed from: N */
    public String f98760N = null;

    /* renamed from: O */
    public String f98761O = "S";

    /* renamed from: P */
    public final TypeChecker f98762P = new TypeChecker();

    /* renamed from: Q */
    public final TypeChecker10 f98763Q = new TypeChecker10();

    /* renamed from: S */
    public ProtocolRestrictor f98765S = new ProtocolRestrictor("all");
    protected int xsdVersion = 11;

    /* renamed from: T */
    public int f98766T = 10;

    /* renamed from: U */
    public int f98767U = 20;

    /* renamed from: V */
    public int f98768V = 31;

    /* renamed from: X */
    public final Map<String, String> f98770X = new HashMap();

    /* renamed from: Y */
    public final Map<String, ResourceFactory> f98771Y = new HashMap();

    /* renamed from: Z */
    public final Map<String, FunctionAnnotationHandler> f98772Z = new HashMap();
    protected int byteCodeThreshold = 100;

    /* renamed from: a0 */
    public int f98774a0 = 10000000;

    /* renamed from: b0 */
    public final TreeStatistics f98776b0 = new TreeStatistics();

    /* loaded from: classes11.dex */
    public interface ApiProvider {
    }

    /* loaded from: classes11.dex */
    public static class LicenseFeature {
        public static final int ENTERPRISE_XQUERY = 4;
        public static final int ENTERPRISE_XSLT = 2;
        public static final int PROFESSIONAL_EDITION = 8;
        public static final int SCHEMA_VALIDATION = 1;
    }

    /* renamed from: net.sf.saxon.Configuration$a */
    /* loaded from: classes11.dex */
    public class C18256a implements ActiveSource {

        /* renamed from: e */
        public final /* synthetic */ Source f98801e;

        /* renamed from: f */
        public final /* synthetic */ Configuration f98802f;

        public C18256a(Source source, Configuration configuration) {
            this.f98801e = source;
            this.f98802f = configuration;
        }

        @Override // net.p110sf.saxon.lib.ActiveSource
        public void deliver(Receiver receiver, ParseOptions parseOptions) throws XPathException {
            parseOptions.merge(((AugmentedSource) this.f98801e).getParseOptions());
            Configuration.this.resolveSource(((AugmentedSource) this.f98801e).getContainedSource(), this.f98802f).deliver(receiver, parseOptions);
        }

        @Override // javax.xml.transform.Source
        public String getSystemId() {
            return this.f98801e.getSystemId();
        }

        @Override // javax.xml.transform.Source
        public void setSystemId(String str) {
            this.f98801e.setSystemId(str);
        }
    }

    static {
        booleanFeatures.add(1);
        booleanFeatures.add(2);
        booleanFeatures.add(4);
        booleanFeatures.add(5);
        booleanFeatures.add(12);
        booleanFeatures.add(15);
        booleanFeatures.add(22);
        booleanFeatures.add(23);
        booleanFeatures.add(24);
        booleanFeatures.add(26);
        booleanFeatures.add(31);
        booleanFeatures.add(32);
        booleanFeatures.add(33);
        booleanFeatures.add(34);
        booleanFeatures.add(35);
        booleanFeatures.add(39);
        booleanFeatures.add(44);
        booleanFeatures.add(45);
        booleanFeatures.add(51);
        booleanFeatures.add(53);
        booleanFeatures.add(57);
        booleanFeatures.add(65);
        booleanFeatures.add(66);
        booleanFeatures.add(70);
        booleanFeatures.add(69);
        booleanFeatures.add(73);
        booleanFeatures.add(74);
        booleanFeatures.add(75);
        booleanFeatures.add(78);
        booleanFeatures.add(82);
        booleanFeatures.add(88);
        booleanFeatures.add(89);
        booleanFeatures.add(104);
        booleanFeatures.add(125);
        booleanFeatures.add(126);
        stringFeatures.add(127);
    }

    public Configuration() {
        init();
    }

    /* renamed from: f */
    public static /* synthetic */ FocusTrackingIterator m62359f(SequenceIterator sequenceIterator) {
        return new FocusTrackingIterator(sequenceIterator);
    }

    public static Configuration getConfiguration(XPathContext xPathContext) {
        return xPathContext.getConfiguration();
    }

    /* renamed from: i */
    public static /* synthetic */ int m62362i(String str, String str2) {
        return 0;
    }

    public static Configuration instantiateConfiguration(String str, ClassLoader classLoader) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        Class<?> cls;
        if (classLoader == null) {
            try {
                classLoader = Thread.currentThread().getContextClassLoader();
            } catch (Exception unused) {
                System.err.println("Failed to getContextClassLoader() - continuing");
            }
        }
        if (classLoader != null) {
            try {
                cls = classLoader.loadClass(str);
            } catch (Exception unused2) {
                cls = Class.forName(str);
            }
        } else {
            cls = Class.forName(str);
        }
        return (Configuration) cls.newInstance();
    }

    public static boolean isAssertionsEnabled() {
        return false;
    }

    /* renamed from: j */
    public static /* synthetic */ ErrorReporter m62363j(Configuration configuration) {
        StandardErrorReporter standardErrorReporter = new StandardErrorReporter();
        standardErrorReporter.setLogger(configuration.getLogger());
        return standardErrorReporter;
    }

    /* renamed from: k */
    public static XMLReader m62364k() {
        return Version.platform.loadParser();
    }

    public static Configuration makeLicensedConfiguration(ClassLoader classLoader, String str) throws RuntimeException {
        if (str == null) {
            str = "com.saxonica.config.ProfessionalConfiguration";
        }
        try {
            return instantiateConfiguration(str, classLoader);
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            throw new RuntimeException(e);
        }
    }

    public static Configuration newConfiguration() {
        try {
            return (Configuration) Configuration.class.newInstance();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Cannot instantiate a Configuration", e);
        }
    }

    public static Configuration readConfiguration(Source source) throws XPathException {
        return newConfiguration().readConfigurationFile(source);
    }

    public static boolean requireBoolean(String str, Object obj) {
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        if (!(obj instanceof String)) {
            throw new IllegalArgumentException(str + " must be a boolean (or a string representing a boolean)");
        }
        String trim = ((String) obj).trim();
        if ("true".equals(trim) || DebugKt.DEBUG_PROPERTY_VALUE_ON.equals(trim) || "yes".equals(trim) || "1".equals(trim)) {
            return true;
        }
        if ("false".equals(trim) || DebugKt.DEBUG_PROPERTY_VALUE_OFF.equals(trim) || SVGParser.f16048t.equals(trim) || "0".equals(trim)) {
            return false;
        }
        throw new IllegalArgumentException(str + " must be 'true' or 'false' (or on|off, yes|no, 1|0)");
    }

    public void addExtensionBinders(FunctionLibraryList functionLibraryList) {
    }

    public void addSchemaForBuiltInNamespace(String str) {
    }

    public void addSchemaSource(Source source) throws SchemaException {
        addSchemaSource(source, makeErrorReporter());
    }

    public SystemFunction bindSaxonExtensionFunction(String str, int i) throws XPathException {
        throw new UnsupportedOperationException("The extension function saxon:" + str + "#" + i + " requires Saxon-PE or higher");
    }

    public TreeInfo buildDocumentTree(Source source) throws XPathException {
        if (source != null) {
            if (source instanceof AugmentedSource) {
                AugmentedSource augmentedSource = (AugmentedSource) source;
                return buildDocumentTree(augmentedSource.getContainedSource(), augmentedSource.getParseOptions());
            }
            return buildDocumentTree(source, new ParseOptions(this.f98784j));
        }
        throw new NullPointerException("source");
    }

    public void checkLicensedFeature(int i, String str, int i2) throws LicenseException {
        StringBuilder sb;
        String str2;
        String str3 = "Requested feature (" + str + ") requires Saxon-" + (i == 8 ? "PE" : "EE");
        if (!Version.softwareEdition.equals("HE")) {
            String str4 = Version.platform.isDotNet() ? "Saxon.Eej.config" : "com.saxonica.config";
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str3);
            sb2.append(". You are using Saxon-");
            sb2.append(Version.softwareEdition);
            sb2.append(" software, but the Configuration is an instance of ");
            sb2.append(getClass());
            sb2.append("; to use this feature you need to create an instance of ");
            if (i == 8) {
                sb = new StringBuilder();
                sb.append(str4);
                str2 = ".ProfessionalConfiguration";
            } else {
                sb = new StringBuilder();
                sb.append(str4);
                str2 = ".EnterpriseConfiguration";
            }
            sb.append(str2);
            sb2.append(sb.toString());
            str3 = sb2.toString();
        }
        throw new LicenseException(str3, 6);
    }

    public void checkStrictStreamability(XSLTemplate xSLTemplate, Expression expression) throws XPathException {
    }

    public void checkTypeDerivationIsOK(SchemaType schemaType, SchemaType schemaType2, int i) throws SchemaException {
    }

    public void clearSchemaCache() {
    }

    public void close() {
        Logger logger = this.f98752F;
        if (logger != null) {
            logger.close();
        }
    }

    public RegularExpression compileRegularExpression(UnicodeString unicodeString, String str, String str2, List<String> list) throws XPathException {
        return Version.platform.compileRegularExpression(this, unicodeString, str, str2, list);
    }

    public void createByteCodeReport(String str) {
    }

    public InvalidityReportGenerator createValidityReporter() {
        throw new UnsupportedOperationException("Schema validation requires Saxon-EE");
    }

    public void disableLicensing() {
    }

    public void displayLicenseMessage() {
    }

    public void exportComponents(Receiver receiver) throws XPathException {
        needEnterpriseEdition();
    }

    public MapItem externalObjectAsMap(ObjectValue<?> objectValue, String str) {
        throw new UnsupportedOperationException();
    }

    public Receiver getAnnotationStripper(Receiver receiver) {
        return receiver;
    }

    public SchemaDeclaration getAttributeDeclaration(int i) {
        return null;
    }

    public boolean getBooleanProperty(Feature<Boolean> feature) {
        return this.f98794t.contains(feature.code);
    }

    public FunctionLibraryList getBuiltInExtensionLibraryList() {
        if (this.builtInExtensionLibraryList == null) {
            FunctionLibraryList functionLibraryList = new FunctionLibraryList();
            this.builtInExtensionLibraryList = functionLibraryList;
            functionLibraryList.addFunctionLibrary(VendorFunctionSetHE.getInstance());
            this.builtInExtensionLibraryList.addFunctionLibrary(MathFunctionSet.getInstance());
            this.builtInExtensionLibraryList.addFunctionLibrary(MapFunctionSet.getInstance());
            this.builtInExtensionLibraryList.addFunctionLibrary(ArrayFunctionSet.getInstance());
            this.builtInExtensionLibraryList.addFunctionLibrary(ExsltCommonFunctionSet.getInstance());
        }
        return this.builtInExtensionLibraryList;
    }

    public CharacterSetFactory getCharacterSetFactory() {
        if (this.f98775b == null) {
            this.f98775b = new CharacterSetFactory();
        }
        return this.f98775b;
    }

    public Class<?> getClass(String str, boolean z) throws XPathException {
        return this.f98793s.getClass(str, z ? this.f98752F : null, null);
    }

    public StringCollator getCollation(String str) throws XPathException {
        if (str != null && !str.equals(NamespaceConstant.CODEPOINT_COLLATION_URI)) {
            if (str.equals(NamespaceConstant.HTML5_CASE_BLIND_COLLATION_URI)) {
                return HTML5CaseBlindCollator.getInstance();
            }
            if (str.startsWith(AlphanumericCollator.PREFIX)) {
                return new AlphanumericCollator(getCollation(str.substring(48)));
            }
            StringCollator stringCollator = this.f98777c.get(str);
            return stringCollator == null ? getCollationURIResolver().resolve(str, this) : stringCollator;
        }
        return CodepointCollator.getInstance();
    }

    public CollationURIResolver getCollationURIResolver() {
        return this.f98778d;
    }

    public CollectionFinder getCollectionFinder() {
        return this.f98781g;
    }

    public Object getConfigurationProperty(String str) {
        if (FeatureIndex.exists(str)) {
            return getFeature(FeatureIndex.getData(str));
        }
        throw new IllegalArgumentException("Unknown configuration property " + str);
    }

    public XPathContext getConversionContext() {
        if (this.f98756J == null) {
            this.f98756J = new EarlyEvaluationContext(this);
        }
        return this.f98756J;
    }

    public ConversionRules getConversionRules() {
        ConversionRules conversionRules;
        ConversionRules conversionRules2 = this.f98757K;
        if (conversionRules2 != null) {
            return conversionRules2;
        }
        synchronized (this) {
            conversionRules = new ConversionRules();
            conversionRules.setTypeHierarchy(getTypeHierarchy());
            conversionRules.setNotationSet(this);
            if (this.xsdVersion == 10) {
                conversionRules.setStringToDoubleConverter(StringToDouble.getInstance());
                conversionRules.setURIChecker(StandardURIChecker.getInstance());
            } else {
                conversionRules.setStringToDoubleConverter(StringToDouble11.getInstance());
            }
            conversionRules.setAllowYearZero(this.xsdVersion != 10);
            this.f98757K = conversionRules;
        }
        return conversionRules;
    }

    public int getCountDown() {
        return this.byteCodeThreshold;
    }

    public Debugger getDebugger() {
        return this.f98789o;
    }

    public Collection<GlobalParam> getDeclaredSchemaParameters() {
        return null;
    }

    public String getDefaultCollationName() {
        return this.f98779e;
    }

    public String getDefaultCollection() {
        return this.f98783i;
    }

    public ContextItemStaticInfo getDefaultContextItemStaticInfo() {
        return ContextItemStaticInfo.DEFAULT;
    }

    public String getDefaultCountry() {
        return this.f98791q;
    }

    public String getDefaultLanguage() {
        return this.f98790p;
    }

    public String getDefaultRegexEngine() {
        return this.f98761O;
    }

    public Properties getDefaultSerializationProperties() {
        return this.f98792r;
    }

    public StaticQueryContext getDefaultStaticQueryContext() {
        if (this.defaultStaticQueryContext == null) {
            this.defaultStaticQueryContext = makeStaticQueryContext(false);
        }
        return this.defaultStaticQueryContext;
    }

    public CompilerInfo getDefaultXsltCompilerInfo() {
        return this.defaultXsltCompilerInfo;
    }

    public DocumentNumberAllocator getDocumentNumberAllocator() {
        return this.f98788n;
    }

    public Receiver getDocumentValidator(Receiver receiver, String str, ParseOptions parseOptions, Location location) {
        return receiver;
    }

    public IDynamicLoader getDynamicLoader() {
        return this.f98793s;
    }

    public String getEditionCode() {
        return "HE";
    }

    public SchemaDeclaration getElementDeclaration(int i) {
        return null;
    }

    public Receiver getElementValidator(Receiver receiver, ParseOptions parseOptions, Location location) throws XPathException {
        return receiver;
    }

    public Iterable<? extends SchemaType> getExtensionsOfType(SchemaType schemaType) {
        return Collections.emptyList();
    }

    public ExternalObjectModel getExternalObjectModel(String str) {
        for (ExternalObjectModel externalObjectModel : this.f98796v) {
            if (externalObjectModel.getIdentifyingURI().equals(str)) {
                return externalObjectModel;
            }
        }
        return null;
    }

    public List<ExternalObjectModel> getExternalObjectModels() {
        return this.f98796v;
    }

    public Object getFeature(FeatureData featureData) {
        int i = featureData.code;
        if (booleanFeatures.contains(i)) {
            return Boolean.valueOf(this.f98794t.contains(i));
        }
        if (stringFeatures.contains(i)) {
            String str = this.f98795u.get(i);
            return str == null ? featureData.defaultValue : str;
        }
        switch (i) {
            case 6:
                return getCollationURIResolver();
            case 7:
                return getCollationURIResolver().getClass().getName();
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 16:
            case 21:
            case 22:
            case 23:
            case 26:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 39:
            case 40:
            case 44:
            case 45:
            case 47:
            case 51:
            case 52:
            case 53:
            case 56:
            case 57:
            case 58:
            case 59:
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 70:
            case 73:
            case 74:
            case 75:
            case 76:
            case 78:
            case 82:
            case 88:
            case 89:
            case 96:
            case 97:
            case 104:
            case 122:
            case 123:
            case 125:
            case 126:
            case 127:
            default:
                throw new IllegalArgumentException("Unknown configuration property ");
            case 13:
                return this;
            case 17:
                return this.f98779e;
            case 18:
                return getDefaultCollection();
            case 19:
                return getDefaultCountry();
            case 20:
                return getDefaultLanguage();
            case 24:
                return Boolean.valueOf(isValidation());
            case 25:
                return Boolean.valueOf(this.f98784j.getDTDValidationMode() == 2);
            case 27:
                EntityResolver entityResolver = this.f98784j.getEntityResolver();
                return entityResolver == null ? "" : entityResolver.getClass().getName();
            case 28:
                return this.f98782h;
            case 29:
                return this.f98782h.getClass().getName();
            case 30:
                return null;
            case 31:
                return Boolean.valueOf(isExpandAttributeDefaults());
            case 38:
                return Boolean.valueOf(isLineNumbering());
            case 41:
                return getMessageEmitterClass();
            case 42:
                return getModuleURIResolver();
            case 43:
                return getModuleURIResolver().getClass().getName();
            case 46:
                return getNamePool();
            case 48:
                return this.optimizerOptions.toString();
            case 49:
                return getOutputURIResolver();
            case 50:
                return getOutputURIResolver().getClass().getName();
            case 54:
                return 0;
            case 55:
                return "recoverWithWarnings";
            case 60:
                return Integer.valueOf(getSchemaValidationMode());
            case 61:
                return Validation.describe(getSchemaValidationMode());
            case 62:
                return getSerializerFactory().getClass().getName();
            case 63:
                return getSourceParserClass();
            case 64:
                return getSourceResolver().getClass().getName();
            case 71:
                SpaceStrippingRule spaceStrippingRule = getParseOptions().getSpaceStrippingRule();
                return spaceStrippingRule == AllElementsSpaceStrippingRule.getInstance() ? "all" : (spaceStrippingRule == null || spaceStrippingRule == IgnorableSpaceStrippingRule.getInstance()) ? "ignorable" : "none";
            case 72:
                return getStyleParserClass();
            case 77:
                return Boolean.valueOf(isTiming());
            case 79:
                return this.f98758L;
            case 80:
                return this.f98759M;
            case 81:
                return this.f98760N;
            case 83:
                return Integer.valueOf(getTreeModel());
            case 84:
                int treeModel = getTreeModel();
                return treeModel != 0 ? treeModel != 2 ? "tinyTree" : "tinyTreeCondensed" : "linkedTree";
            case 85:
                return getUnparsedTextURIResolver();
            case 86:
                return getUnparsedTextURIResolver().getClass().getName();
            case 87:
                if (getResourceResolver() instanceof ResourceResolverWrappingURIResolver) {
                    return ((ResourceResolverWrappingURIResolver) getResourceResolver()).getClass().getName();
                }
                return null;
            case 90:
                return Boolean.valueOf(this.f98784j.isUseXsiSchemaLocation());
            case 91:
                return Boolean.valueOf(this.f98784j.isAddCommentsAfterValidationErrors());
            case 92:
                return Boolean.valueOf(isValidationWarnings());
            case 93:
                return Boolean.FALSE;
            case 94:
                return Boolean.valueOf(isXIncludeAware());
            case 95:
                return getXMLVersion() == 10 ? "1.0" : SerializerConstants.XMLVERSION11;
            case 98:
                return Boolean.valueOf(getDefaultStaticQueryContext().isUpdatingEnabled());
            case 99:
                return Integer.valueOf(getDefaultStaticQueryContext().getConstructionMode());
            case 100:
                return getDefaultStaticQueryContext().getDefaultElementNamespace();
            case 101:
                return getDefaultStaticQueryContext().getDefaultFunctionNamespace();
            case 102:
                return Boolean.valueOf(getDefaultStaticQueryContext().isEmptyLeast());
            case 103:
                return Boolean.valueOf(getDefaultStaticQueryContext().isInheritNamespaces());
            case 105:
                return Boolean.valueOf(getDefaultStaticQueryContext().isPreserveBoundarySpace());
            case 106:
                return Boolean.valueOf(getDefaultStaticQueryContext().isPreserveNamespaces());
            case 107:
                return getDefaultStaticQueryContext().getRequiredContextItemType();
            case 108:
                return Boolean.valueOf(getDefaultStaticQueryContext().isSchemaAware());
            case 109:
                return getDefaultStaticQueryContext().getErrorListener().getClass().getName();
            case 110:
                return XQueryParser.XQUERY31;
            case 111:
                return this.xsdVersion == 10 ? "1.0" : SerializerConstants.XMLVERSION11;
            case 112:
                return Boolean.valueOf(getDefaultXsltCompilerInfo().isAssertionsEnabled());
            case 113:
                return getDefaultXsltCompilerInfo().getDefaultInitialMode().getClarkName();
            case 114:
                return getDefaultXsltCompilerInfo().getDefaultInitialTemplate().getClarkName();
            case 115:
                return Boolean.valueOf(getDefaultXsltCompilerInfo().isSchemaAware());
            case 116:
                return getDefaultXsltCompilerInfo().getErrorListener().getClass().getName();
            case 117:
                return null;
            case 118:
                return 30;
            case 119:
                return Integer.valueOf(this.f98774a0);
            case 120:
                return Integer.valueOf(this.f98767U);
            case 121:
                return Integer.valueOf(this.f98768V);
            case 124:
                return this.f98765S.toString();
            case 128:
                return getResourceResolver();
            case 129:
                return getResourceResolver().getClass().getName();
        }
    }

    public Function<SequenceIterator, FocusTrackingIterator> getFocusTrackerFactory(Executable executable, boolean z) {
        return new Function() { // from class: com.sunia.HTREnginev2.i9e
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                FocusTrackingIterator m62359f;
                m62359f = Configuration.m62359f((SequenceIterator) obj);
                return m62359f;
            }
        };
    }

    public FunctionAnnotationHandler getFunctionAnnotationHandler(String str) {
        return this.f98772Z.get(str);
    }

    public DocumentPool getGlobalDocumentPool() {
        return this.f98797w;
    }

    public Set<String> getImportedNamespaces() {
        return Collections.emptySet();
    }

    public Object getInstance(String str) throws XPathException {
        return this.f98793s.getInstance(str, isTiming() ? this.f98752F : null, null);
    }

    public IntegratedFunctionLibrary getIntegratedFunctionLibrary() {
        return this.f98798x;
    }

    public synchronized JavaExternalObjectType getJavaExternalObjectType(Class<?> cls) {
        return new JavaExternalObjectType(cls);
    }

    public String getLabel() {
        return this.f98787m;
    }

    public String getLicenseFeature(String str) {
        return null;
    }

    public LocalizerFactory getLocalizerFactory() {
        return this.f98799y;
    }

    public Logger getLogger() {
        return this.f98752F;
    }

    public Comparator<String> getMediaQueryEvaluator() {
        return this.f98769W;
    }

    public String getMediaTypeForFileExtension(String str) {
        String str2 = this.f98770X.get(str);
        return str2 == null ? this.f98770X.get("") : str2;
    }

    public String getMessageEmitterClass() {
        return this.defaultXsltCompilerInfo.getMessageReceiverClassName();
    }

    public ModuleURIResolver getModuleURIResolver() {
        return getDefaultStaticQueryContext().getModuleURIResolver();
    }

    public SequenceIterator getMultithreadedItemMappingIterator(SequenceIterator sequenceIterator, ItemMappingFunction itemMappingFunction) throws XPathException {
        return new ItemMappingIterator(sequenceIterator, itemMappingFunction);
    }

    public NamePool getNamePool() {
        return this.f98800z;
    }

    public OptimizerOptions getOptimizerOptions() {
        return this.optimizerOptions.intersect(OptimizerOptions.FULL_HE_OPTIMIZATION);
    }

    public OutputURIResolver getOutputURIResolver() {
        return this.defaultXsltCompilerInfo.getOutputURIResolver();
    }

    public ParseOptions getParseOptions() {
        return this.f98784j;
    }

    public ApiProvider getProcessor() {
        return this.f98773a;
    }

    public String getProductTitle() {
        return "Saxon" + Version.platform.getPlatformSuffix() + "-" + getEditionCode() + " " + Version.getProductVersion() + " from Saxonica";
    }

    public ProtocolRestrictor getProtocolRestrictor() {
        return this.f98765S;
    }

    public ResourceCollection getRegisteredCollection(String str) {
        return this.f98780f.get(str);
    }

    public ResourceFactory getResourceFactoryForMediaType(String str) {
        return this.f98771Y.get(str);
    }

    public ResourceResolver getResourceResolver() {
        if (this.f98764R == null) {
            setResourceResolver(new CatalogResourceResolver());
        }
        return this.f98764R;
    }

    public SchemaType getSchemaType(StructuredQName structuredQName) {
        if (structuredQName.hasURI("http://www.w3.org/2001/XMLSchema")) {
            return BuiltInType.getSchemaTypeByLocalName(structuredQName.getLocalPart());
        }
        return null;
    }

    public int getSchemaValidationMode() {
        return this.f98784j.getSchemaValidationMode();
    }

    public SerializerFactory getSerializerFactory() {
        return this.f98747A;
    }

    public XMLReader getSourceParser() throws TransformerFactoryConfigurationError {
        if (this.f98748B == null) {
            this.f98748B = new ConcurrentLinkedQueue<>();
        }
        XMLReader poll = this.f98748B.poll();
        if (poll != null) {
            return poll;
        }
        XMLReader makeParser = getSourceParserClass() != null ? makeParser(getSourceParserClass()) : m62364k();
        EntityResolver entityResolverWrappingResourceResolver = new EntityResolverWrappingResourceResolver(getResourceResolver());
        if (makeParser.getEntityResolver() != null) {
            entityResolverWrappingResourceResolver = new ChainedEntityResolver(entityResolverWrappingResourceResolver, makeParser.getEntityResolver());
        }
        makeParser.setEntityResolver(entityResolverWrappingResourceResolver);
        if (isTiming()) {
            m62365l(makeParser);
        }
        try {
            ActiveSAXSource.configureParser(makeParser);
            if (isValidation()) {
                try {
                    makeParser.setFeature("http://xml.org/sax/features/validation", true);
                } catch (SAXException unused) {
                    throw new TransformerFactoryConfigurationError("The XML parser does not support validation");
                }
            }
            return makeParser;
        } catch (XPathException e) {
            throw new TransformerFactoryConfigurationError(e);
        }
    }

    public String getSourceParserClass() {
        return this.f98750D;
    }

    public SourceResolver getSourceResolver() {
        return this.f98751E;
    }

    public ModuleURIResolver getStandardModuleURIResolver() {
        return this.f98753G;
    }

    public synchronized XMLReader getStyleParser() throws TransformerFactoryConfigurationError {
        if (this.f98749C == null) {
            this.f98749C = new ConcurrentLinkedQueue<>();
        }
        XMLReader poll = this.f98749C.poll();
        if (poll != null) {
            return poll;
        }
        XMLReader makeParser = getStyleParserClass() != null ? makeParser(getStyleParserClass()) : m62364k();
        EntityResolver entityResolverWrappingResourceResolver = new EntityResolverWrappingResourceResolver(getResourceResolver());
        if (makeParser.getEntityResolver() != null) {
            entityResolverWrappingResourceResolver = new ChainedEntityResolver(entityResolverWrappingResourceResolver, makeParser.getEntityResolver());
        }
        makeParser.setEntityResolver(entityResolverWrappingResourceResolver);
        try {
            makeParser.setFeature("http://xml.org/sax/features/namespaces", true);
            makeParser.setFeature("http://xml.org/sax/features/namespace-prefixes", false);
            return makeParser;
        } catch (SAXNotRecognizedException | SAXNotSupportedException e) {
            throw new TransformerFactoryConfigurationError(e);
        }
    }

    public String getStyleParserClass() {
        return this.f98754H;
    }

    public net.p110sf.saxon.om.Function getSystemFunction(StructuredQName structuredQName, int i) {
        try {
            if (this.staticContextForSystemFunctions == null) {
                this.staticContextForSystemFunctions = new IndependentContext(this);
            }
            FunctionLibraryList functionLibraryList = new FunctionLibraryList();
            functionLibraryList.addFunctionLibrary(XPath31FunctionSet.getInstance());
            functionLibraryList.addFunctionLibrary(getBuiltInExtensionLibraryList());
            functionLibraryList.addFunctionLibrary(new ConstructorFunctionLibrary(this));
            functionLibraryList.addFunctionLibrary(getIntegratedFunctionLibrary());
            return functionLibraryList.getFunctionItem(new SymbolicName.C18533F(structuredQName, i), this.staticContextForSystemFunctions);
        } catch (XPathException unused) {
            return null;
        }
    }

    public TraceListener getTraceListener() {
        return this.f98758L;
    }

    public String getTraceListenerClass() {
        return this.f98759M;
    }

    public String getTraceListenerOutputFile() {
        return this.f98760N;
    }

    public int getTreeModel() {
        return this.f98784j.getModel().getSymbolicValue();
    }

    public TreeStatistics getTreeStatistics() {
        return this.f98776b0;
    }

    public TypeChecker getTypeChecker(boolean z) {
        return z ? this.f98763Q : this.f98762P;
    }

    public TypeHierarchy getTypeHierarchy() {
        if (this.typeHierarchy == null) {
            this.typeHierarchy = new TypeHierarchy(this);
        }
        return this.typeHierarchy;
    }

    public UnparsedTextURIResolver getUnparsedTextURIResolver() {
        return this.f98755I;
    }

    public BuiltInFunctionSet getUseWhenFunctionSet() {
        return UseWhen30FunctionSet.getInstance();
    }

    public IntPredicateProxy getValidCharacterChecker() {
        return this.f98766T == 10 ? IntPredicateLambda.m64716of(new IntPredicate() { // from class: com.sunia.HTREnginev2.g9e
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean isValid10;
                isValid10 = XMLCharacterData.isValid10(i);
                return isValid10;
            }
        }) : IntPredicateLambda.m64716of(new IntPredicate() { // from class: com.sunia.HTREnginev2.h9e
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean isValid11;
                isValid11 = XMLCharacterData.isValid11(i);
                return isValid11;
            }
        });
    }

    public int getXMLVersion() {
        return this.f98766T;
    }

    public BuiltInFunctionSet getXPath30FunctionSet() {
        return XPath30FunctionSet.getInstance();
    }

    public BuiltInFunctionSet getXPath31FunctionSet() {
        return XPath31FunctionSet.getInstance();
    }

    public BuiltInFunctionSet getXPath40FunctionSet() {
        return XPath40FunctionSet.getInstance();
    }

    public BuiltInFunctionSet getXQueryUpdateFunctionSet() {
        return null;
    }

    public BuiltInFunctionSet getXSLT30FunctionSet() {
        return XSLT30FunctionSet.getInstance();
    }

    public int getXsdVersion() {
        return this.xsdVersion;
    }

    public void importComponents(Source source) throws XPathException {
        needEnterpriseEdition();
    }

    public void importLicenseDetails(Configuration configuration) {
    }

    public void init() {
        this.f98764R = new CatalogResourceResolver();
        this.defaultXsltCompilerInfo = makeCompilerInfo();
        this.f98753G = Version.platform.makeStandardModuleURIResolver(this);
        this.f98747A = new SerializerFactory(this);
        this.f98751E = this;
        this.f98755I = new StandardUnparsedTextResolver();
        this.f98769W = new Comparator() { // from class: com.sunia.HTREnginev2.j9e
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m62362i;
                m62362i = Configuration.m62362i((String) obj, (String) obj2);
                return m62362i;
            }
        };
        Version.platform.initialize(this);
        this.f98784j.setEntityResolver(new StandardEntityResolver(this));
        ModuleURIResolver moduleURIResolver = this.f98753G;
        if (moduleURIResolver instanceof StandardModuleURIResolver) {
            ((StandardModuleURIResolver) moduleURIResolver).setConfiguration(this);
        }
        internalSetBooleanProperty(1, FeatureKeys.ALLOW_EXTERNAL_FUNCTIONS, Boolean.TRUE);
        internalSetBooleanProperty(22, FeatureKeys.DISABLE_XSL_EVALUATE, Boolean.FALSE);
        registerFileExtension("xml", "application/xml");
        registerFileExtension("html", "application/html");
        registerFileExtension("atom", "application/atom");
        registerFileExtension("xsl", "application/xml+xslt");
        registerFileExtension("xslt", "application/xml+xslt");
        registerFileExtension("xsd", "application/xml+xsd");
        registerFileExtension("txt", "text/plain");
        registerFileExtension("MF", "text/plain");
        registerFileExtension("class", "application/java");
        registerFileExtension("json", "application/json");
        registerFileExtension("", "application/unknown");
        ResourceFactory resourceFactory = XmlResource.FACTORY;
        registerMediaType("application/xml", resourceFactory);
        registerMediaType("text/xml", resourceFactory);
        registerMediaType("application/html", resourceFactory);
        registerMediaType("text/html", resourceFactory);
        registerMediaType("application/atom", resourceFactory);
        registerMediaType("application/xml+xslt", resourceFactory);
        registerMediaType("application/xml+xsd", resourceFactory);
        registerMediaType("application/rdf+xml", resourceFactory);
        registerMediaType("text/plain", UnparsedTextResource.FACTORY);
        ResourceFactory resourceFactory2 = BinaryResource.FACTORY;
        registerMediaType("application/java", resourceFactory2);
        registerMediaType("application/binary", resourceFactory2);
        registerMediaType("application/json", JSONResource.FACTORY);
        registerMediaType("application/unknown", UnknownResource.FACTORY);
        registerFunctionAnnotationHandler(new XQueryFunctionAnnotationHandler());
    }

    public Object instantiateClassName(String str, Object obj, Class<?> cls) {
        if (!(obj instanceof String)) {
            throw new IllegalArgumentException(str + " must be a String");
        }
        try {
            Object configuration = getInstance((String) obj);
            if (cls.isAssignableFrom(configuration.getClass())) {
                return configuration;
            }
            throw new IllegalArgumentException("Error in " + str + ": Class " + obj + " does not implement " + cls.getName());
        } catch (XPathException e) {
            throw new IllegalArgumentException("Cannot use " + obj + " as the value of " + str + ". " + e.getMessage());
        }
    }

    public void internalSetBooleanProperty(int i, String str, Object obj) {
        if (requireBoolean(str, obj)) {
            this.f98794t.add(i);
        } else {
            this.f98794t.remove(i);
        }
    }

    public boolean isCompatible(Configuration configuration) {
        return this.f98800z == configuration.f98800z && this.f98788n == configuration.f98788n;
    }

    public boolean isCompileWithTracing() {
        return getBooleanProperty(Feature.COMPILE_WITH_TRACING);
    }

    @Override // net.p110sf.saxon.om.NotationSet
    public boolean isDeclaredNotation(String str, String str2) {
        return false;
    }

    public boolean isDeferredByteCode(HostLanguage hostLanguage) {
        return false;
    }

    public boolean isExpandAttributeDefaults() {
        return this.f98784j.isExpandAttributeDefaults();
    }

    public boolean isExtensionElementAvailable(StructuredQName structuredQName) {
        return false;
    }

    public boolean isFeatureAllowedBySecondaryLicense(int i, int i2) {
        return false;
    }

    public boolean isGenerateByteCode(HostLanguage hostLanguage) {
        return false;
    }

    public boolean isJITEnabled() {
        return false;
    }

    public boolean isLicensedFeature(int i) {
        return false;
    }

    public boolean isLineNumbering() {
        return this.f98784j.isLineNumbering();
    }

    public boolean isSchemaAvailable(String str) {
        return false;
    }

    public boolean isStreamabilityEnabled() {
        return false;
    }

    public boolean isStreamedNode(NodeInfo nodeInfo) {
        return false;
    }

    public boolean isStripsAllWhiteSpace() {
        return this.f98784j.getSpaceStrippingRule() == AllElementsSpaceStrippingRule.getInstance();
    }

    public boolean isTiming() {
        return this.f98794t.contains(77);
    }

    public boolean isValidation() {
        return this.f98784j.getDTDValidationMode() == 1 || this.f98784j.getDTDValidationMode() == 2;
    }

    public boolean isValidationWarnings() {
        return this.f98784j.isContinueAfterValidationErrors();
    }

    @Deprecated
    public boolean isVersionWarning() {
        return false;
    }

    public boolean isXIncludeAware() {
        return this.f98784j.isXIncludeAware();
    }

    /* renamed from: l */
    public final void m62365l(XMLReader xMLReader) {
        String name = xMLReader.getClass().getName();
        this.f98752F.info("Using parser " + name);
    }

    public void loadSchema(String str) throws SchemaException {
        readSchema(makePipelineConfiguration(), "", str, null);
    }

    public AccumulatorRegistry makeAccumulatorRegistry() {
        return new AccumulatorRegistry();
    }

    public Sequence makeClosure(Expression expression, int i, XPathContext xPathContext) throws XPathException {
        if (getBooleanProperty(Feature.EAGER_EVALUATION)) {
            return SequenceTool.toGroundedValue(expression.iterate(xPathContext));
        }
        Closure memoClosure = i > 1 ? new MemoClosure() : new Closure();
        memoClosure.setExpression(expression);
        memoClosure.setSavedXPathContext(xPathContext.newContext());
        memoClosure.saveContext(expression, xPathContext);
        return memoClosure;
    }

    public CompilerInfo makeCompilerInfo() {
        return new CompilerInfo(this);
    }

    public ICompilerService makeCompilerService(HostLanguage hostLanguage) {
        return null;
    }

    public ConfigurationReader makeConfigurationReader() {
        return new ConfigurationReader();
    }

    public ContextItemStaticInfo makeContextItemStaticInfo(ItemType itemType, boolean z) {
        return new ContextItemStaticInfo(itemType, z);
    }

    public FilterFactory makeDocumentProjector(PathMap.PathMapRoot pathMapRoot) {
        throw new UnsupportedOperationException("Document projection requires Saxon-EE");
    }

    public Receiver makeEmitter(String str, Properties properties) throws XPathException {
        String localPart = StructuredQName.fromEQName(str).getLocalPart();
        try {
            Object iDynamicLoader = this.f98793s.getInstance(localPart, null);
            if (iDynamicLoader instanceof Receiver) {
                return (Receiver) iDynamicLoader;
            }
            if (iDynamicLoader instanceof ContentHandler) {
                ContentHandlerProxy contentHandlerProxy = new ContentHandlerProxy();
                contentHandlerProxy.setUnderlyingContentHandler((ContentHandler) iDynamicLoader);
                contentHandlerProxy.setOutputProperties(properties);
                return contentHandlerProxy;
            }
            throw new XPathException("Output method " + localPart + " is neither a Receiver nor a SAX2 ContentHandler");
        } catch (XPathException e) {
            throw new XPathException("Cannot create user-supplied output method. " + e.getMessage(), SaxonErrorCode.SXCH0004);
        }
    }

    public ErrorReporter makeErrorReporter() {
        if (this.f98786l == null) {
            this.f98786l = new Function() { // from class: com.sunia.HTREnginev2.k9e
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    ErrorReporter m62363j;
                    m62363j = Configuration.m62363j((Configuration) obj);
                    return m62363j;
                }
            };
        }
        return this.f98786l.apply(this);
    }

    public Expression makeEvaluateInstruction(XSLEvaluate xSLEvaluate, ComponentDeclaration componentDeclaration) throws XPathException {
        Expression targetExpression = xSLEvaluate.getTargetExpression();
        SequenceType requiredType = xSLEvaluate.getRequiredType();
        Expression contextItemExpression = xSLEvaluate.getContextItemExpression();
        Expression baseUriExpression = xSLEvaluate.getBaseUriExpression();
        Expression namespaceContextExpression = xSLEvaluate.getNamespaceContextExpression();
        Expression schemaAwareExpression = xSLEvaluate.getSchemaAwareExpression();
        Expression withParamsExpression = xSLEvaluate.getWithParamsExpression();
        EvaluateInstr evaluateInstr = new EvaluateInstr(targetExpression, requiredType, contextItemExpression, baseUriExpression, namespaceContextExpression, schemaAwareExpression);
        evaluateInstr.setActualParams(xSLEvaluate.getWithParamInstructions(evaluateInstr, xSLEvaluate.getCompilation(), componentDeclaration, false));
        evaluateInstr.setDynamicParams(withParamsExpression);
        evaluateInstr.setDefaultXPathNamespace(xSLEvaluate.getDefaultXPathNamespace());
        evaluateInstr.setOptionsExpression(xSLEvaluate.getOptionsExpression());
        return evaluateInstr;
    }

    public Map<String, net.p110sf.saxon.om.Function> makeMethodMap(Class cls, String str) {
        throw new UnsupportedOperationException();
    }

    public SimpleMode makeMode(StructuredQName structuredQName, CompilerInfo compilerInfo) {
        return new SimpleMode(structuredQName);
    }

    public Numberer makeNumberer(String str, String str2) {
        LocalizerFactory localizerFactory = this.f98799y;
        if (localizerFactory != null) {
            Numberer numberer = localizerFactory.getNumberer(str, str2);
            return numberer == null ? new Numberer_en() : numberer;
        }
        Numberer_en numberer_en = new Numberer_en();
        if (str != null) {
            numberer_en.setLanguage(str);
        }
        if (str2 != null) {
            numberer_en.setCountry(str2);
        }
        return numberer_en;
    }

    public Expression makeObjectLookupExpression(Expression expression, Expression expression2) throws XPathException {
        throw new UnsupportedOperationException();
    }

    public IPackageLoader makePackageLoader() {
        return new PackageLoaderHE(this);
    }

    public XMLReader makeParser(String str) throws TransformerFactoryConfigurationError {
        try {
            Object iDynamicLoader = this.f98793s.getInstance(str, null);
            if (iDynamicLoader instanceof XMLReader) {
                return (XMLReader) iDynamicLoader;
            }
            if (iDynamicLoader instanceof SAXParserFactory) {
                try {
                    return ((SAXParserFactory) iDynamicLoader).newSAXParser().getXMLReader();
                } catch (ParserConfigurationException | SAXException e) {
                    throw new XPathException(e);
                }
            }
            throw new TransformerFactoryConfigurationError("Class " + str + " is not a SAX2 XMLReader or SAXParserFactory");
        } catch (XPathException e2) {
            throw new TransformerFactoryConfigurationError(e2);
        }
    }

    public PipelineConfiguration makePipelineConfiguration() {
        PipelineConfiguration pipelineConfiguration = new PipelineConfiguration(this);
        pipelineConfiguration.setParseOptions(new ParseOptions(this.f98784j));
        pipelineConfiguration.setErrorReporter(makeErrorReporter());
        return pipelineConfiguration;
    }

    public ResourceResolver makeResourceResolver(String str) throws XPathException {
        Object iDynamicLoader = this.f98793s.getInstance(str, null);
        if (iDynamicLoader instanceof URIResolver) {
            getLogger().warning("From Saxon 11.1, the value of the -r option should be a ResourceResolver, not a URIResolver");
            iDynamicLoader = new ResourceResolverWrappingURIResolver((URIResolver) iDynamicLoader);
        }
        if (iDynamicLoader instanceof ResourceResolver) {
            return (ResourceResolver) iDynamicLoader;
        }
        throw new XPathException("Class " + str + " is not a ResourceResolver");
    }

    public SchemaURIResolver makeSchemaURIResolver(ResourceResolver resourceResolver) {
        return null;
    }

    public GroundedValue makeSequenceExtent(Expression expression, int i, XPathContext xPathContext) throws XPathException {
        return SequenceTool.toGroundedValue(expression.iterate(xPathContext));
    }

    public SlotManager makeSlotManager() {
        Debugger debugger = this.f98789o;
        return debugger == null ? new SlotManager() : debugger.makeSlotManager();
    }

    public StaticQueryContext makeStaticQueryContext(boolean z) {
        return this.f98785k.newStaticQueryContext(this, z);
    }

    public Expression makeStreamInstruction(Expression expression, Expression expression2, boolean z, ParseOptions parseOptions, PackageData packageData, Location location, RetainedStaticContext retainedStaticContext) throws XPathException {
        SourceDocument sourceDocument = new SourceDocument(expression, expression2, parseOptions);
        sourceDocument.setLocation(location);
        sourceDocument.setRetainedStaticContext(retainedStaticContext);
        return sourceDocument;
    }

    public Receiver makeStreamingTransformer(Mode mode, ParameterSet parameterSet, ParameterSet parameterSet2, Outputter outputter, XPathContext xPathContext) throws XPathException {
        throw new XPathException("Streaming is only available in Saxon-EE");
    }

    public StyleNodeFactory makeStyleNodeFactory(Compilation compilation) {
        return new StyleNodeFactory(this, compilation);
    }

    public StylesheetPackage makeStylesheetPackage() {
        return new StylesheetPackage(this);
    }

    public SystemFunction makeSystemFunction(String str, int i) {
        try {
            return getXSLT30FunctionSet().makeFunction(str, i);
        } catch (XPathException unused) {
            return null;
        }
    }

    public TemplateRule makeTemplateRule() {
        return new TemplateRule();
    }

    public XPathContextMajor.ThreadManager makeThreadManager() {
        return null;
    }

    public TraceListener makeTraceListener() throws XPathException {
        TraceListener traceListener = this.f98758L;
        if (traceListener != null) {
            return traceListener;
        }
        String str = this.f98759M;
        if (str == null) {
            return null;
        }
        try {
            return makeTraceListener(str);
        } catch (ClassCastException e) {
            throw new XPathException(e);
        }
    }

    public TypeAliasManager makeTypeAliasManager() {
        return new TypeAliasManager();
    }

    public ItemType makeUserUnionType(List<AtomicType> list) {
        return null;
    }

    public XQueryExpression makeXQueryExpression(Expression expression, QueryModule queryModule, boolean z) throws XPathException {
        XQueryExpression xQueryExpression = new XQueryExpression(expression, queryModule, false);
        if (queryModule.getCodeInjector() != null) {
            queryModule.getCodeInjector().process(xQueryExpression);
        }
        return xQueryExpression;
    }

    public void needEnterpriseEdition() {
        throw new UnsupportedOperationException("You need the Enterprise Edition of Saxon (with an EnterpriseConfiguration) for this operation");
    }

    public ExpressionPresenter newExpressionExporter(String str, OutputStream outputStream, StylesheetPackage stylesheetPackage) throws XPathException {
        throw new XPathException("Exporting a stylesheet requires Saxon-EE");
    }

    public XPathParser newExpressionParser(String str, boolean z, int i) throws XPathException {
        if ("XQ".equals(str)) {
            if (z) {
                throw new XPathException("XQuery Update is supported only in Saxon-EE");
            }
            if (i == 40 || i == 31 || i == 30 || i == 10) {
                XQueryParser xQueryParser = new XQueryParser(31);
                xQueryParser.setLanguage(XPathParser.ParsedLanguage.XQUERY, Math.max(i, 31));
                return xQueryParser;
            }
            throw new XPathException("Unknown XQuery version " + i);
        }
        if ("XP".equals(str)) {
            if (i == 40 || i == 31 || i == 30 || i == 305 || i == 20) {
                XPathParser xPathParser = new XPathParser();
                xPathParser.setLanguage(XPathParser.ParsedLanguage.XPATH, i);
                return xPathParser;
            }
            throw new XPathException("Unknown XPath version " + i);
        }
        if (!"PATTERN".equals(str)) {
            throw new XPathException("Unknown expression language " + str);
        }
        if (i == 30 || i == 20 || i == 305 || i == 31) {
            return new PatternParser();
        }
        throw new XPathException("Unknown XPath version " + i);
    }

    public PendingUpdateList newPendingUpdateList() {
        throw new UnsupportedOperationException("XQuery update is supported only in Saxon-EE");
    }

    public StaticQueryContext newStaticQueryContext() {
        return makeStaticQueryContext(true);
    }

    public UserFunction newUserFunction(boolean z, FunctionStreamability functionStreamability) {
        return z ? new MemoFunction() : new UserFunction();
    }

    public SerializationProperties obtainDefaultSerializationProperties() {
        return new SerializationProperties(this.f98792r);
    }

    public Optimizer obtainOptimizer() {
        Optimizer optimizer = this.optimizer;
        if (optimizer != null) {
            return optimizer;
        }
        Optimizer optimizer2 = new Optimizer(this);
        this.optimizer = optimizer2;
        optimizer2.setOptimizerOptions(this.optimizerOptions.intersect(OptimizerOptions.FULL_HE_OPTIMIZATION));
        return this.optimizer;
    }

    public void prepareValidationReporting(XPathContext xPathContext, ParseOptions parseOptions) {
    }

    public void processResultDocument(ResultDocument resultDocument, Expression expression, XPathContext xPathContext) throws XPathException {
        resultDocument.processInstruction(expression, xPathContext);
    }

    public Configuration readConfigurationFile(Source source) throws XPathException {
        return makeConfigurationReader().makeConfiguration(source);
    }

    public String readInlineSchema(NodeInfo nodeInfo, String str, ErrorReporter errorReporter) throws SchemaException {
        needEnterpriseEdition();
        return null;
    }

    public void readMultipleSchemas(PipelineConfiguration pipelineConfiguration, String str, List<String> list, String str2) throws SchemaException {
        needEnterpriseEdition();
    }

    public String readSchema(PipelineConfiguration pipelineConfiguration, String str, String str2, String str3) throws SchemaException {
        needEnterpriseEdition();
        return null;
    }

    public void registerCollation(String str, StringCollator stringCollator) {
        this.f98777c.put(str, stringCollator);
    }

    public void registerCollection(String str, ResourceCollection resourceCollection) {
        this.f98780f.put(str, resourceCollection);
    }

    public void registerExtensionFunction(ExtensionFunctionDefinition extensionFunctionDefinition) {
        this.f98798x.registerFunction(extensionFunctionDefinition);
    }

    public void registerExternalObjectModel(ExternalObjectModel externalObjectModel) {
        try {
            getClass(externalObjectModel.getDocumentClassName(), false);
            if (this.f98796v == null) {
                this.f98796v = new ArrayList(4);
            }
            if (this.f98796v.contains(externalObjectModel)) {
                return;
            }
            this.f98796v.add(externalObjectModel);
        } catch (XPathException unused) {
        }
    }

    public void registerFileExtension(String str, String str2) {
        this.f98770X.put(str, str2);
    }

    public void registerFunctionAnnotationHandler(FunctionAnnotationHandler functionAnnotationHandler) {
        this.f98772Z.put(functionAnnotationHandler.getAssertionNamespace(), functionAnnotationHandler);
    }

    public int registerLocalLicense(String str) {
        return -1;
    }

    public void registerMediaType(String str, ResourceFactory resourceFactory) {
        this.f98771Y.put(str, resourceFactory);
    }

    public void reportFatalError(XPathException xPathException) {
        if (xPathException.hasBeenReported()) {
            return;
        }
        makeErrorReporter().report(new XmlProcessingException(xPathException));
        xPathException.setHasBeenReported(true);
    }

    public int requireInteger(String str, Object obj) {
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (!(obj instanceof String)) {
            throw new IllegalArgumentException(str + " must be an integer (or a string representing an integer)");
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (NumberFormatException unused) {
            throw new IllegalArgumentException(str + " must be an integer");
        }
    }

    public void requireProfessionalLicense(String str) throws LicenseException {
        if (isLicensedFeature(8)) {
            return;
        }
        throw new LicenseException("Use of " + str + " requires a license key for Saxon-PE or Saxon-EE", 3);
    }

    public String requireString(String str, Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        throw new IllegalArgumentException("The value of " + str + " must be a string");
    }

    @Override // net.p110sf.saxon.lib.SourceResolver
    public ActiveSource resolveSource(Source source, Configuration configuration) throws XPathException {
        if (source instanceof ActiveSource) {
            return (ActiveSource) source;
        }
        if (source instanceof AugmentedSource) {
            return new C18256a(source, configuration);
        }
        ActiveSource resolveSource = Version.platform.resolveSource(source, configuration);
        if (resolveSource != null) {
            return resolveSource;
        }
        Iterator<ExternalObjectModel> it2 = configuration.getExternalObjectModels().iterator();
        while (it2.hasNext()) {
            ActiveSource activeSource = it2.next().getActiveSource(source);
            if (activeSource != null) {
                return activeSource;
            }
        }
        return null;
    }

    public synchronized void reuseSourceParser(XMLReader xMLReader) {
        if (this.f98748B == null) {
            this.f98748B = new ConcurrentLinkedQueue<>();
        }
        try {
            try {
                xMLReader.setContentHandler(null);
                if (xMLReader.getEntityResolver() == this.f98784j.getEntityResolver()) {
                    xMLReader.setEntityResolver(null);
                }
                xMLReader.setDTDHandler(null);
                xMLReader.setErrorHandler(null);
                xMLReader.setProperty("http://xml.org/sax/properties/lexical-handler", f98745c0);
            } catch (SAXNotRecognizedException | SAXNotSupportedException unused) {
            }
            this.f98748B.offer(xMLReader);
        } catch (Exception unused2) {
        }
    }

    public synchronized void reuseStyleParser(XMLReader xMLReader) {
        if (this.f98749C == null) {
            this.f98749C = new ConcurrentLinkedQueue<>();
        }
        try {
            try {
                xMLReader.setContentHandler(null);
                xMLReader.setDTDHandler(null);
                xMLReader.setErrorHandler(null);
                xMLReader.setProperty("http://xml.org/sax/properties/lexical-handler", f98745c0);
            } catch (SAXNotRecognizedException | SAXNotSupportedException unused) {
            }
            this.f98749C.offer(xMLReader);
        } catch (Exception unused2) {
        }
    }

    public void sealNamespace(String str) {
    }

    public void setBooleanProperty(String str, boolean z) {
        setConfigurationProperty(str, Boolean.valueOf(z));
    }

    public void setCollationURIResolver(CollationURIResolver collationURIResolver) {
        this.f98778d = collationURIResolver;
    }

    public void setCollectionFinder(CollectionFinder collectionFinder) {
        this.f98781g = collectionFinder;
    }

    public void setCompileWithTracing(boolean z) {
        internalSetBooleanProperty(12, FeatureKeys.COMPILE_WITH_TRACING, Boolean.valueOf(z));
        CompilerInfo compilerInfo = this.defaultXsltCompilerInfo;
        if (compilerInfo != null) {
            if (z) {
                compilerInfo.setCodeInjector(new XSLTTraceCodeInjector());
            } else {
                compilerInfo.setCodeInjector(null);
            }
        }
        getDefaultStaticQueryContext().setCodeInjector(z ? new XQueryTraceCodeInjector() : null);
    }

    public void setConfigurationProperty(String str, Object obj) {
        if (FeatureIndex.exists(str)) {
            setFeature(FeatureIndex.getData(str), obj);
            return;
        }
        if (str.startsWith(FeatureKeys.XML_PARSER_FEATURE)) {
            try {
                this.f98784j.addParserFeature(URLDecoder.decode(str.substring(46), "utf-8"), requireBoolean(str, obj));
                return;
            } catch (UnsupportedEncodingException e) {
                throw new IllegalArgumentException(e);
            }
        }
        if (str.startsWith(FeatureKeys.XML_PARSER_PROPERTY)) {
            try {
                this.f98784j.addParserProperties(URLDecoder.decode(str.substring(47), "utf-8"), obj);
                return;
            } catch (UnsupportedEncodingException e2) {
                throw new IllegalArgumentException(e2);
            }
        }
        throw new IllegalArgumentException("Unrecognized configuration feature: " + str);
    }

    public void setConversionRules(ConversionRules conversionRules) {
        this.f98757K = conversionRules;
    }

    public void setDebugger(Debugger debugger) {
        this.f98789o = debugger;
    }

    public void setDefaultCollection(String str) {
        this.f98783i = str;
    }

    public void setDefaultCountry(String str) {
        this.f98791q = str;
    }

    public void setDefaultLanguage(String str) {
        if (StringConverter.StringToLanguage.INSTANCE.validate(StringView.m63901of(str).tidy()) != null) {
            throw new IllegalArgumentException("The default language must be a valid language code");
        }
        this.f98790p = str;
    }

    public void setDefaultRegexEngine(String str) {
        if (!"J".equals(str) && !"N".equals(str) && !"S".equals(str)) {
            throw new IllegalArgumentException("Regex engine must be S|J|N");
        }
        this.f98761O = str;
    }

    public void setDefaultSerializationProperties(Properties properties) {
        this.f98792r = properties;
    }

    public void setDocumentNumberAllocator(DocumentNumberAllocator documentNumberAllocator) {
        this.f98788n = documentNumberAllocator;
    }

    public void setDynamicLoader(IDynamicLoader iDynamicLoader) {
        this.f98793s = iDynamicLoader;
    }

    public void setErrorReporterFactory(Function<Configuration, ? extends ErrorReporter> function) {
        this.f98786l = function;
    }

    public void setExpandAttributeDefaults(boolean z) {
        this.f98784j.setExpandAttributeDefaults(z);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x03f4, code lost:
    
        if (r1.equals("all") == false) goto L165;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setFeature(net.p110sf.saxon.lib.FeatureData r18, java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 1892
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.Configuration.setFeature(net.sf.saxon.lib.FeatureData, java.lang.Object):void");
    }

    public void setLabel(String str) {
        this.f98787m = str;
    }

    public void setLineNumbering(boolean z) {
        this.f98784j.setLineNumbering(z);
    }

    public void setLocalizerFactory(LocalizerFactory localizerFactory) {
        this.f98799y = localizerFactory;
    }

    public void setLogger(Logger logger) {
        this.f98752F = logger;
    }

    public void setMediaQueryEvaluator(Comparator<String> comparator) {
        this.f98769W = comparator;
    }

    public void setMessageEmitterClass(String str) {
        this.defaultXsltCompilerInfo.setMessageReceiverClassName(str);
    }

    public void setModuleURIResolver(ModuleURIResolver moduleURIResolver) {
        getDefaultStaticQueryContext().setModuleURIResolver(moduleURIResolver);
    }

    public void setNamePool(NamePool namePool) {
        this.f98800z = namePool;
    }

    @Deprecated
    public void setOutputURIResolver(OutputURIResolver outputURIResolver) {
        this.defaultXsltCompilerInfo.setOutputURIResolver(outputURIResolver);
    }

    public void setParameterizedURIResolver() {
        setBooleanProperty(Feature.RECOGNIZE_URI_QUERY_PARAMETERS, true);
    }

    public void setProcessor(ApiProvider apiProvider) {
        this.f98773a = apiProvider;
    }

    public void setResourceResolver(ResourceResolver resourceResolver) {
        this.f98764R = resourceResolver;
    }

    public void setSchemaValidationMode(int i) {
        this.f98784j.setSchemaValidationMode(i);
    }

    public void setSerializerFactory(SerializerFactory serializerFactory) {
        this.f98747A = serializerFactory;
    }

    public void setSourceParserClass(String str) {
        this.f98750D = str;
    }

    public void setSourceResolver(SourceResolver sourceResolver) {
        this.f98751E = sourceResolver;
    }

    public void setStandardErrorOutput(PrintStream printStream) {
        Logger logger = this.f98752F;
        if (logger instanceof StandardLogger) {
            ((StandardLogger) logger).setPrintStream(printStream);
        }
    }

    public void setStaticQueryContextFactory(StaticQueryContextFactory staticQueryContextFactory) {
        this.f98785k = staticQueryContextFactory;
    }

    public void setStyleParserClass(String str) {
        this.f98754H = str;
    }

    public void setTiming(boolean z) {
        if (z) {
            this.f98794t.add(77);
        } else {
            this.f98794t.remove(77);
        }
    }

    public void setTraceListener(TraceListener traceListener) {
        this.f98758L = traceListener;
        setCompileWithTracing(traceListener != null);
        internalSetBooleanProperty(2, FeatureKeys.ALLOW_MULTITHREADING, Boolean.FALSE);
    }

    public void setTraceListenerClass(String str) {
        if (str == null) {
            this.f98759M = null;
            setCompileWithTracing(false);
            return;
        }
        try {
            makeTraceListener(str);
            this.f98759M = str;
            setCompileWithTracing(true);
        } catch (XPathException e) {
            throw new IllegalArgumentException(str + ": " + e.getMessage());
        }
    }

    public void setTraceListenerOutputFile(String str) {
        this.f98760N = str;
    }

    public void setTreeModel(int i) {
        this.f98784j.setModel(TreeModel.getTreeModel(i));
    }

    public void setUnparsedTextURIResolver(UnparsedTextURIResolver unparsedTextURIResolver) {
        this.f98755I = unparsedTextURIResolver;
    }

    public void setValidation(boolean z) {
        this.f98784j.setDTDValidationMode(z ? 1 : 4);
    }

    public void setValidationWarnings(boolean z) {
        this.f98784j.setContinueAfterValidationErrors(z);
    }

    @Deprecated
    public void setVersionWarning(boolean z) {
    }

    public void setXIncludeAware(boolean z) {
        this.f98784j.setXIncludeAware(z);
    }

    public void setXMLVersion(int i) {
        this.f98766T = i;
        this.f98757K = null;
    }

    public NodeInfo unravel(Source source) {
        List<ExternalObjectModel> externalObjectModels = getExternalObjectModels();
        boolean z = source instanceof NodeInfo;
        if (!z) {
            Iterator<ExternalObjectModel> it2 = externalObjectModels.iterator();
            while (it2.hasNext()) {
                NodeInfo unravel = it2.next().unravel(source, this);
                if (unravel != null) {
                    if (unravel.getConfiguration().isCompatible(this)) {
                        return unravel;
                    }
                    throw new IllegalArgumentException("Externally supplied Node belongs to the wrong Configuration");
                }
            }
        }
        NodeInfo nodeInfo = z ? (NodeInfo) source : null;
        if (source instanceof NodeSource) {
            nodeInfo = ((NodeSource) source).getNode();
        }
        if (nodeInfo != null) {
            if (nodeInfo.getConfiguration().isCompatible(this)) {
                return nodeInfo;
            }
            throw new IllegalArgumentException("Externally supplied NodeInfo belongs to the wrong Configuration");
        }
        throw new IllegalArgumentException("A source of class " + source.getClass() + " is not recognized by any registered object model");
    }

    public SimpleType validateAttribute(StructuredQName structuredQName, UnicodeString unicodeString, int i) throws ValidationException, MissingComponentException {
        return BuiltInAtomicType.UNTYPED_ATOMIC;
    }

    public void addSchemaSource(Source source, ErrorReporter errorReporter) throws SchemaException {
        needEnterpriseEdition();
    }

    public SchemaDeclaration getAttributeDeclaration(StructuredQName structuredQName) {
        return null;
    }

    public SchemaDeclaration getElementDeclaration(StructuredQName structuredQName) {
        return null;
    }

    public FilterFactory makeDocumentProjector(XQueryExpression xQueryExpression) {
        throw new UnsupportedOperationException("Document projection requires Saxon-EE");
    }

    public Configuration readConfigurationFile(Source source, Configuration configuration) throws XPathException {
        ConfigurationReader makeConfigurationReader = makeConfigurationReader();
        makeConfigurationReader.setBaseConfiguration(configuration);
        return makeConfigurationReader.makeConfiguration(source);
    }

    public void setBooleanProperty(Feature<Boolean> feature, boolean z) {
        setConfigurationProperty((Feature<Feature<Boolean>>) feature, (Feature<Boolean>) Boolean.valueOf(z));
    }

    public void setModuleURIResolver(String str) throws TransformerException {
        Object iDynamicLoader = this.f98793s.getInstance(str, null);
        if (iDynamicLoader instanceof ModuleURIResolver) {
            if (iDynamicLoader instanceof StandardModuleURIResolver) {
                ((StandardModuleURIResolver) iDynamicLoader).setConfiguration(this);
            }
            setModuleURIResolver((ModuleURIResolver) iDynamicLoader);
        } else {
            throw new XPathException("Class " + str + " is not a ModuleURIResolver");
        }
    }

    public static Configuration readConfiguration(Source source, Configuration configuration) throws XPathException {
        return newConfiguration().readConfigurationFile(source, configuration);
    }

    public ExternalObjectModel getExternalObjectModel(Class<?> cls) {
        for (ExternalObjectModel externalObjectModel : this.f98796v) {
            if (externalObjectModel.getPJConverter(cls) != null) {
                return externalObjectModel;
            }
        }
        return null;
    }

    public <T> T getConfigurationProperty(Feature<T> feature) {
        return (T) getFeature(FeatureIndex.getData(feature.code));
    }

    public TraceListener makeTraceListener(String str) throws XPathException {
        Object iDynamicLoader = this.f98793s.getInstance(str, null);
        if (iDynamicLoader instanceof TraceListener) {
            String traceListenerOutputFile = getTraceListenerOutputFile();
            if (traceListenerOutputFile != null) {
                try {
                    ((TraceListener) iDynamicLoader).setOutputDestination(new StandardLogger(new PrintStream(traceListenerOutputFile)));
                } catch (FileNotFoundException e) {
                    throw new XPathException(e);
                }
            }
            return (TraceListener) iDynamicLoader;
        }
        throw new XPathException("Class " + str + " is not a TraceListener");
    }

    public Optimizer obtainOptimizer(OptimizerOptions optimizerOptions) {
        Optimizer optimizer = new Optimizer(this);
        optimizer.setOptimizerOptions(optimizerOptions.intersect(OptimizerOptions.FULL_HE_OPTIMIZATION));
        return optimizer;
    }

    public TreeInfo buildDocumentTree(Source source, ParseOptions parseOptions) throws XPathException {
        if (source != null) {
            try {
                ParseOptions parseOptions2 = new ParseOptions(parseOptions);
                Source resolveSource = resolveSource(source, this);
                if (resolveSource != null) {
                    try {
                        if (resolveSource instanceof AugmentedSource) {
                            parseOptions2.merge(((AugmentedSource) resolveSource).getParseOptions());
                        }
                        parseOptions2.applyDefaults(this);
                        boolean isPleaseCloseAfterUse = parseOptions2.isPleaseCloseAfterUse();
                        TreeModel model = parseOptions2.getModel();
                        boolean isLineNumbering = parseOptions2.isLineNumbering();
                        PipelineConfiguration makePipelineConfiguration = makePipelineConfiguration();
                        makePipelineConfiguration.setParseOptions(parseOptions2);
                        Builder makeBuilder = model.makeBuilder(makePipelineConfiguration);
                        makeBuilder.setTiming(isTiming());
                        makeBuilder.setLineNumbering(isLineNumbering);
                        makeBuilder.setPipelineConfiguration(makePipelineConfiguration);
                        makeBuilder.setSystemId(resolveSource.getSystemId());
                        Sender.send(resolveSource, makeBuilder, parseOptions2);
                        NodeInfo currentRoot = makeBuilder.getCurrentRoot();
                        if (currentRoot.getNodeKind() == 9) {
                            makeBuilder.reset();
                            TreeInfo treeInfo = currentRoot.getTreeInfo();
                            if (isPleaseCloseAfterUse) {
                                ParseOptions.close(resolveSource);
                            }
                            return treeInfo;
                        }
                        throw new XPathException("Source object represents a node other than a document node");
                    } catch (Throwable th) {
                        th = th;
                        source = resolveSource;
                        if (0 != 0) {
                            ParseOptions.close(source);
                        }
                        throw th;
                    }
                }
                throw new XPathException("Unknown source class " + source.getClass().getName());
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            throw new NullPointerException("source");
        }
    }

    public StringCollator getCollation(String str, String str2) throws XPathException {
        if (str.equals(NamespaceConstant.CODEPOINT_COLLATION_URI)) {
            return CodepointCollator.getInstance();
        }
        try {
            return getCollation(ResolveURI.makeAbsolute(str, str2).toString());
        } catch (URISyntaxException unused) {
            throw new XPathException("Collation name is not a valid URI: " + str + " (base = " + str2 + MotionUtils.f31762d, "FOCH0002");
        }
    }

    public <T> void setConfigurationProperty(Feature<T> feature, T t) {
        setFeature(FeatureIndex.getData(feature.code), t);
    }

    public StringCollator getCollation(String str, String str2, String str3) throws XPathException {
        String uri;
        if (str.equals(NamespaceConstant.CODEPOINT_COLLATION_URI)) {
            return CodepointCollator.getInstance();
        }
        if (str2 != null) {
            try {
                uri = ResolveURI.makeAbsolute(str, str2).toString();
            } catch (URISyntaxException unused) {
                throw new XPathException("Collation name is not a valid URI: " + str + " (base = " + str2 + MotionUtils.f31762d, str3);
            }
        } else {
            uri = str;
        }
        StringCollator collation = getCollation(uri);
        if (collation != null) {
            return collation;
        }
        throw new XPathException("Unknown collation " + uri, str3);
    }
}
