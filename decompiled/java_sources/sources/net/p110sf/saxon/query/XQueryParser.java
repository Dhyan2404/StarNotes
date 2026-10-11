package net.p110sf.saxon.query;

import com.couchbase.lite.internal.utils.StringUtils;
import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.HTREnginev2.gon;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Properties;
import java.util.Set;
import java.util.regex.Pattern;
import javax.xml.transform.Source;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.AtomicSequenceConverter;
import net.p110sf.saxon.expr.Atomizer;
import net.p110sf.saxon.expr.CardinalityChecker;
import net.p110sf.saxon.expr.EagerLetExpression;
import net.p110sf.saxon.expr.EquivalenceComparison;
import net.p110sf.saxon.expr.ErrorExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.InstanceOfExpression;
import net.p110sf.saxon.expr.LetExpression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.LocalVariableReference;
import net.p110sf.saxon.expr.OrExpression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.Clause;
import net.p110sf.saxon.expr.flwor.CountClause;
import net.p110sf.saxon.expr.flwor.DiagnosticClause;
import net.p110sf.saxon.expr.flwor.FLWORExpression;
import net.p110sf.saxon.expr.flwor.ForClause;
import net.p110sf.saxon.expr.flwor.ForMemberClause;
import net.p110sf.saxon.expr.flwor.GroupByClause;
import net.p110sf.saxon.expr.flwor.LetClause;
import net.p110sf.saxon.expr.flwor.LocalVariableBinding;
import net.p110sf.saxon.expr.flwor.OrderByClause;
import net.p110sf.saxon.expr.flwor.TupleExpression;
import net.p110sf.saxon.expr.flwor.WhereClause;
import net.p110sf.saxon.expr.flwor.WindowClause;
import net.p110sf.saxon.expr.instruct.Choose;
import net.p110sf.saxon.expr.instruct.Comment;
import net.p110sf.saxon.expr.instruct.ComputedAttribute;
import net.p110sf.saxon.expr.instruct.ComputedElement;
import net.p110sf.saxon.expr.instruct.CopyOf;
import net.p110sf.saxon.expr.instruct.DocumentInstr;
import net.p110sf.saxon.expr.instruct.ElementCreator;
import net.p110sf.saxon.expr.instruct.Executable;
import net.p110sf.saxon.expr.instruct.FixedAttribute;
import net.p110sf.saxon.expr.instruct.FixedElement;
import net.p110sf.saxon.expr.instruct.GlobalContextRequirement;
import net.p110sf.saxon.expr.instruct.GlobalParam;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.instruct.NamespaceConstructor;
import net.p110sf.saxon.expr.instruct.ProcessingInstruction;
import net.p110sf.saxon.expr.instruct.ResultDocument;
import net.p110sf.saxon.expr.instruct.SimpleNodeConstructor;
import net.p110sf.saxon.expr.instruct.TraceExpression;
import net.p110sf.saxon.expr.instruct.UserFunctionParameter;
import net.p110sf.saxon.expr.instruct.ValueOf;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.Token;
import net.p110sf.saxon.expr.parser.Tokenizer;
import net.p110sf.saxon.expr.parser.XPathParser;
import net.p110sf.saxon.expr.sort.GenericAtomicComparer;
import net.p110sf.saxon.expr.sort.SortKeyDefinition;
import net.p110sf.saxon.functions.ExecutableFunctionLibrary;
import net.p110sf.saxon.functions.FunctionLibraryList;
import net.p110sf.saxon.functions.ResolveURI;
import net.p110sf.saxon.functions.StringJoin;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.functions.registry.ConstructorFunctionLibrary;
import net.p110sf.saxon.lib.DirectResourceResolver;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.ResourceRequest;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.QNameParser;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.serialize.CharacterMap;
import net.p110sf.saxon.serialize.CharacterMapIndex;
import net.p110sf.saxon.serialize.SerializationParamsHandler;
import net.p110sf.saxon.serialize.charcode.UTF16CharacterSet;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.tree.util.NamespaceResolverWithDefault;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaException;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.QualifiedNameValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;
import org.apache.logging.log4j.util.Chars;
import org.mortbay.util.MultiPartWriter;
import org.scribe.model.ParameterList;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes11.dex */
public class XQueryParser extends XPathParser {

    /* renamed from: D */
    public static final /* synthetic */ boolean f101096D = false;
    public static final String XQUERY10 = "1.0";
    public static final String XQUERY30 = "3.0";
    public static final String XQUERY31 = "3.1";
    public static final String XQUERY40 = "4.0";

    /* renamed from: B */
    public Properties f101098B;
    protected Executable executable;

    /* renamed from: C */
    public static final Pattern f101095C = Pattern.compile("^[A-Za-z]([A-Za-z0-9._\\x2D])*$");
    public static final StructuredQName SAXON_MEMO_FUNCTION = new StructuredQName("saxon", NamespaceConstant.SAXON, "memo-function");

    /* renamed from: g */
    public boolean f101099g = false;

    /* renamed from: h */
    public boolean f101100h = false;

    /* renamed from: i */
    public int f101101i = 0;

    /* renamed from: j */
    public XPathException f101102j = null;

    /* renamed from: k */
    public boolean f101103k = false;

    /* renamed from: l */
    public boolean f101104l = false;

    /* renamed from: m */
    public boolean f101105m = false;

    /* renamed from: n */
    public boolean f101106n = false;

    /* renamed from: o */
    public boolean f101107o = false;

    /* renamed from: p */
    public boolean f101108p = false;

    /* renamed from: q */
    public boolean f101109q = false;

    /* renamed from: r */
    public boolean f101110r = false;

    /* renamed from: s */
    public boolean f101111s = false;

    /* renamed from: u */
    public boolean f101112u = false;

    /* renamed from: v */
    public boolean f101113v = false;

    /* renamed from: w */
    public boolean f101114w = false;
    public final Set<String> importedModules = new HashSet(5);

    /* renamed from: x */
    public final List<String> f101115x = new ArrayList(10);

    /* renamed from: y */
    public final List<C18440c> f101116y = new ArrayList(5);

    /* renamed from: z */
    public final List<C18440c> f101117z = new ArrayList(5);

    /* renamed from: A */
    public final Set<StructuredQName> f101097A = new HashSet(4);

    /* loaded from: classes11.dex */
    public static class Unescaper {

        /* renamed from: b */
        public static final /* synthetic */ boolean f101118b = false;

        /* renamed from: a */
        public final IntPredicateProxy f101119a;

        public Unescaper(IntPredicateProxy intPredicateProxy) {
            this.f101119a = intPredicateProxy;
        }

        /* renamed from: a */
        public final String m63566a(String str) throws XPathException {
            int i = 0;
            if (str.charAt(1) != 'x') {
                for (int i2 = 1; i2 < str.length(); i2++) {
                    int indexOf = StringUtils.NUMERIC.indexOf(str.charAt(i2));
                    if (indexOf < 0) {
                        throw new XPathException("Invalid digit '" + str.charAt(i2) + "' in decimal character reference", "XPST0003");
                    }
                    i = (i * 10) + indexOf;
                    if (i > 1114111) {
                        throw new XPathException("Character reference exceeds Unicode codepoint limit", "XQST0090");
                    }
                }
            } else {
                if (str.length() < 3) {
                    throw new XPathException("No hex digits in hexadecimal character reference", "XPST0003");
                }
                String lowerCase = str.toLowerCase();
                for (int i3 = 2; i3 < lowerCase.length(); i3++) {
                    int indexOf2 = "0123456789abcdef".indexOf(lowerCase.charAt(i3));
                    if (indexOf2 < 0) {
                        throw new XPathException("Invalid hex digit '" + lowerCase.charAt(i3) + "' in character reference", "XPST0003");
                    }
                    i = (i * 16) + indexOf2;
                    if (i > 1114111) {
                        throw new XPathException("Character reference exceeds Unicode codepoint limit", "XQST0090");
                    }
                }
            }
            if (!this.f101119a.test(i)) {
                throw new XPathException("Invalid XML character reference x" + Integer.toHexString(i), "XQST0090");
            }
            if (i <= 65535) {
                return "" + ((char) i);
            }
            int i4 = i - 65536;
            return "" + ((char) (55296 | (i4 >> 10))) + ((char) ((i4 & 1023) | 56320));
        }

        public String analyzeEntityReference(String str) throws XPathException {
            if (WebvttCueParser.f27233m.equals(str)) {
                return "<";
            }
            if (WebvttCueParser.f27234n.equals(str)) {
                return ">";
            }
            if (WebvttCueParser.f27235o.equals(str)) {
                return ParameterList.f115951c;
            }
            if ("quot".equals(str)) {
                return "\"";
            }
            if ("apos".equals(str)) {
                return CloudStorageConstants.SINGLE_QUOTES;
            }
            if (str.length() >= 2 && str.charAt(0) == '#') {
                return m63566a(str);
            }
            throw new XPathException("invalid character reference &" + str + ';', "XPST0003");
        }

        public String unescape(String str) throws XPathException {
            StringBuilder sb = new StringBuilder(str.length());
            int i = 0;
            while (i < str.length()) {
                char charAt = str.charAt(i);
                if (charAt == '&') {
                    int indexOf = str.indexOf(59, i);
                    if (indexOf < 0) {
                        throw new XPathException("No closing ';' found for entity or character reference", "XPST0003");
                    }
                    sb.append(analyzeEntityReference(str.substring(i + 1, indexOf)));
                    i = indexOf;
                } else {
                    sb.append(charAt);
                }
                i++;
            }
            return sb.toString();
        }
    }

    /* renamed from: net.sf.saxon.query.XQueryParser$b */
    /* loaded from: classes11.dex */
    public static class C18439b {

        /* renamed from: a */
        public String f101120a;

        /* renamed from: b */
        public int f101121b;

        public C18439b() {
        }
    }

    /* renamed from: net.sf.saxon.query.XQueryParser$c */
    /* loaded from: classes11.dex */
    public static class C18440c {

        /* renamed from: a */
        public String f101122a;

        /* renamed from: b */
        public List<String> f101123b;

        /* renamed from: c */
        public int f101124c;

        public C18440c() {
        }
    }

    /* renamed from: net.sf.saxon.query.XQueryParser$d */
    /* loaded from: classes11.dex */
    public static class C18441d {

        /* renamed from: a */
        public Expression f101125a;

        /* renamed from: b */
        public boolean f101126b;

        /* renamed from: c */
        public boolean f101127c;

        /* renamed from: d */
        public String f101128d;

        public C18441d() {
        }
    }

    public XQueryParser(int i) {
        this.languageVersion = i;
        setLanguage(XPathParser.ParsedLanguage.XQUERY, i);
    }

    /* renamed from: N */
    public static String m63497N(String str) {
        if (str.indexOf(13) < 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt == '\r') {
                if (i < str.length() - 1) {
                    int i2 = i + 1;
                    if (str.charAt(i2) == '\n') {
                        sb.append('\n');
                        i = i2;
                    }
                }
                sb.append('\n');
            } else {
                sb.append(charAt);
            }
            i++;
        }
        return sb.toString();
    }

    /* renamed from: O */
    public static String m63498O(String str) {
        if (str.indexOf(13) < 0 && str.indexOf(133) < 0 && str.indexOf(8232) < 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt == '\r') {
                if (i < str.length() - 1) {
                    int i2 = i + 1;
                    if (str.charAt(i2) == '\n' || str.charAt(i2) == 133) {
                        sb.append('\n');
                        i = i2;
                    }
                }
                sb.append('\n');
            } else if (charAt == 133 || charAt == 8232) {
                sb.append('\n');
            } else {
                sb.append(charAt);
            }
            i++;
        }
        return sb.toString();
    }

    public static boolean containsLoopingClause(List<Clause> list) {
        Iterator<Clause> it2 = list.iterator();
        while (it2.hasNext()) {
            if (FLWORExpression.isLoopingClause(it2.next())) {
                return true;
            }
        }
        return false;
    }

    public static Expression makeStringJoin(Expression expression, StaticContext staticContext) {
        Expression makeAtomizer = Atomizer.makeAtomizer(expression, null);
        ItemType itemType = makeAtomizer.getItemType();
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.STRING;
        if (!itemType.equals(builtInAtomicType) && !itemType.equals(BuiltInAtomicType.UNTYPED_ATOMIC)) {
            AtomicSequenceConverter atomicSequenceConverter = new AtomicSequenceConverter(makeAtomizer, builtInAtomicType);
            atomicSequenceConverter.allocateConverterStatically(staticContext.getConfiguration(), false);
            makeAtomizer = atomicSequenceConverter;
        }
        if (makeAtomizer.getCardinality() == 16384) {
            return makeAtomizer;
        }
        Expression makeCall = SystemFunction.makeCall("string-join", new RetainedStaticContext(staticContext), makeAtomizer, new StringLiteral(StringValue.SINGLE_SPACE));
        ExpressionTool.copyLocationInfo(makeAtomizer, makeCall);
        return makeCall;
    }

    public static Expression stringify(Expression expression, boolean z, StaticContext staticContext) {
        if (expression instanceof StringLiteral) {
            return expression;
        }
        if (expression.getLocalRetainedStaticContext() == null) {
            expression.setRetainedStaticContext(staticContext.makeRetainedStaticContext());
        }
        AtomicSequenceConverter atomicSequenceConverter = new AtomicSequenceConverter(Atomizer.makeAtomizer(expression, null), BuiltInAtomicType.STRING);
        Expression makeCall = SystemFunction.makeCall("string-join", atomicSequenceConverter.getRetainedStaticContext(), atomicSequenceConverter, new StringLiteral(StringValue.SINGLE_SPACE));
        if (z) {
            ((StringJoin) ((SystemFunctionCall) makeCall).getTargetFunction()).setReturnEmptyIfEmpty(true);
        }
        return makeCall;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: A0 */
    public final void m63499A0() throws XPathException {
        ensureSchemaAware("import schema");
        String str = null;
        C18440c c18440c = new C18440c();
        c18440c.f101122a = null;
        c18440c.f101123b = new ArrayList(5);
        c18440c.f101124c = this.f99997t.currentTokenStartOffset;
        nextToken();
        if (isKeyword(Constants.ATTRNAME_NAMESPACE)) {
            str = m63523N0();
        } else if (isKeyword("default")) {
            nextToken();
            if (!isKeyword("element")) {
                grumble("In 'import schema', expected 'element namespace'");
            }
            nextToken();
            if (!isKeyword(Constants.ATTRNAME_NAMESPACE)) {
                grumble("In 'import schema', expected keyword 'namespace'");
            }
            nextToken();
            str = "";
        }
        Tokenizer tokenizer = this.f99997t;
        if (tokenizer.currentToken == 202) {
            String uriLiteral = uriLiteral(tokenizer.currentTokenValue);
            m63511H(str, uriLiteral);
            c18440c.f101122a = uriLiteral;
            nextToken();
            if (isKeyword("at")) {
                nextToken();
                expect(202);
                c18440c.f101123b.add(uriLiteral(this.f99997t.currentTokenValue));
                nextToken();
                while (this.f99997t.currentToken == 7) {
                    nextToken();
                    expect(202);
                    c18440c.f101123b.add(uriLiteral(this.f99997t.currentTokenValue));
                    nextToken();
                }
            } else if (this.f99997t.currentToken != 149) {
                grumble("After the target namespace URI, expected 'at' or ';'");
            }
        } else {
            grumble("After 'import schema', expected 'namespace', 'default', or a string-literal");
        }
        if (str != null) {
            try {
                if (str.isEmpty()) {
                    ((QueryModule) this.env).setDefaultElementNamespace(c18440c.f101122a);
                } else {
                    String str2 = c18440c.f101122a;
                    if (str2 == null || "".equals(str2)) {
                        grumble("A prefix cannot be bound to the null namespace", "XQST0057");
                    }
                    ((QueryModule) this.env).declarePrologNamespace(str, c18440c.f101122a);
                }
            } catch (XPathException e) {
                e.setLocator(makeLocation());
                m63526P0(e);
            }
        }
        Iterator<C18440c> it2 = this.f101116y.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            if (it2.next().f101122a.equals(c18440c.f101122a)) {
                grumble("Schema namespace '" + c18440c.f101122a + "' is imported more than once", "XQST0058");
                break;
            }
        }
        this.f101116y.add(c18440c);
    }

    /* renamed from: B0 */
    public final List<SequenceType> m63500B0() throws XPathException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            arrayList.add(parseSequenceType());
            this.f99997t.treatCurrentAsOperator();
            if (this.f99997t.currentToken != 1) {
                expect(25);
                nextToken();
                return arrayList;
            }
            nextToken();
        }
    }

    /* renamed from: C */
    public final void m63501C(List<Expression> list, String str, int i, int i2) throws XPathException {
        int i3;
        if (i < i2) {
            StringBuilder sb = new StringBuilder(i2 - i);
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt == '\t' || charAt == '\n') {
                    sb.append(' ');
                } else if (charAt == '\r') {
                    sb.append(' ');
                    i3 = i + 1;
                    if (i3 < i2) {
                        if (str.charAt(i3) != '\n') {
                        }
                        i = i3;
                    }
                } else if (charAt == '&') {
                    i3 = str.indexOf(59, i);
                    if (i3 < 0) {
                        grumble("No closing ';' found for entity or character reference");
                    } else {
                        sb.append(new Unescaper(this.env.getConfiguration().getValidCharacterChecker()).analyzeEntityReference(str.substring(i + 1, i3)));
                        i = i3;
                    }
                } else if (charAt != '<') {
                    sb.append(charAt);
                } else {
                    grumble("The < character must not appear in attribute content");
                }
                i++;
            }
            list.add(new StringLiteral(sb.toString()));
        }
    }

    /* renamed from: C0 */
    public final List<C18441d> m63502C0() throws XPathException {
        ArrayList arrayList = new ArrayList(5);
        while (true) {
            C18441d c18441d = new C18441d();
            c18441d.f101125a = parseExprSingle();
            c18441d.f101126b = true;
            c18441d.f101127c = ((QueryModule) this.env).isEmptyLeast();
            c18441d.f101128d = this.env.getDefaultCollationName();
            if (isKeyword(Constants.ATTRVAL_ORDER_ASCENDING)) {
                nextToken();
            } else if (isKeyword(Constants.ATTRVAL_ORDER_DESCENDING)) {
                c18441d.f101126b = false;
                nextToken();
            }
            if (isKeyword(Constants.ELEMNAME_EMPTY_STRING)) {
                nextToken();
                if (isKeyword("greatest")) {
                    c18441d.f101127c = false;
                    nextToken();
                } else if (isKeyword("least")) {
                    c18441d.f101127c = true;
                    nextToken();
                } else {
                    grumble("'empty' must be followed by 'greatest' or 'least'");
                }
            }
            if (isKeyword("collation")) {
                c18441d.f101128d = readCollationName();
            }
            arrayList.add(c18441d);
            if (this.f99997t.currentToken != 7) {
                return arrayList;
            }
            nextToken();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x014a A[LOOP:2: B:33:0x0144->B:35:0x014a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x015a  */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m63503D(net.p110sf.saxon.query.XQueryParser.C18440c r12) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 493
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.query.XQueryParser.m63503D(net.sf.saxon.query.XQueryParser$c):void");
    }

    /* renamed from: D0 */
    public final Expression m63504D0(int i) throws XPathException {
        nextToken();
        Expression makeEmptySequence = (this.f99997t.currentToken == 215 && this.allowXPath31Syntax) ? Literal.makeEmptySequence() : parseExpression();
        expect(215);
        lookAhead();
        nextToken();
        ValueOf valueOf = new ValueOf(stringify(makeEmptySequence, true, this.env), false, true);
        setLocation(valueOf, i);
        return makeTracer(valueOf, null);
    }

    /* renamed from: E */
    public final void m63505E(C18440c c18440c) throws XPathException {
        Configuration configuration = this.env.getConfiguration();
        synchronized (configuration) {
            if (!configuration.isSchemaAvailable(c18440c.f101122a)) {
                if (c18440c.f101123b.isEmpty()) {
                    if (!c18440c.f101122a.equals("http://www.w3.org/XML/1998/namespace") && !c18440c.f101122a.equals("http://www.w3.org/2005/xpath-functions") && !c18440c.f101122a.equals("http://www.w3.org/2001/XMLSchema-instance")) {
                        grumble("Unable to locate requested schema " + c18440c.f101122a, "XQST0059", c18440c.f101124c);
                    }
                    configuration.addSchemaForBuiltInNamespace(c18440c.f101122a);
                } else {
                    try {
                        configuration.readMultipleSchemas(configuration.makePipelineConfiguration(), this.env.getStaticBaseURI(), c18440c.f101123b, c18440c.f101122a);
                        this.f101115x.add(c18440c.f101122a);
                    } catch (SchemaException e) {
                        grumble("Error in schema " + c18440c.f101122a + ": " + e.getMessage(), "XQST0059", c18440c.f101124c);
                    }
                }
            }
            StaticContext staticContext = this.env;
            ((QueryModule) staticContext).addImportedSchema(c18440c.f101122a, staticContext.getStaticBaseURI(), c18440c.f101123b);
        }
    }

    /* renamed from: E0 */
    public final void m63506E0(FLWORExpression fLWORExpression, List<Clause> list) throws XPathException {
        DiagnosticClause diagnosticClause = new DiagnosticClause();
        setLocation(diagnosticClause, this.f99997t.currentTokenStartOffset);
        diagnosticClause.setRepeated(containsLoopingClause(list));
        list.add(diagnosticClause);
        nextToken();
        diagnosticClause.initSequence(fLWORExpression, parseExpression());
    }

    /* renamed from: F */
    public final void m63507F(String str) {
        warning("Invalid serialization property (" + str + MotionUtils.f31762d);
    }

    /* renamed from: F0 */
    public final Expression m63508F0(StructuredQName structuredQName, LetExpression letExpression) throws XPathException {
        LetExpression makeLetExpression = makeLetExpression();
        makeLetExpression.setRequiredType(SequenceType.ANY_SEQUENCE);
        makeLetExpression.setVariableQName(structuredQName);
        makeLetExpression.setSequence(new LocalVariableReference(letExpression));
        declareRangeVariable(makeLetExpression);
        Expression parseExprSingle = parseExprSingle();
        undeclareRangeVariable();
        makeLetExpression.setAction(parseExprSingle);
        return makeLetExpression;
    }

    /* renamed from: G */
    public final void m63509G(FLWORExpression fLWORExpression, ForClause forClause) throws XPathException {
        if (!this.allowXPath30Syntax) {
            grumble("The 'allowing empty' option requires XQuery 3.0");
        }
        if (Cardinality.allowsZero(forClause.getRangeVariable().getRequiredType().getCardinality())) {
            return;
        }
        warning("When 'allowing empty' is specified, the occurrence indicator on the range variable type should be '?'");
    }

    /* renamed from: G0 */
    public final void m63510G0(AnnotationList annotationList) throws XPathException {
        int i = this.f99997t.currentTokenStartOffset;
        GlobalVariable globalVariable = new GlobalVariable();
        globalVariable.setPackageData(this.env.getPackageData());
        globalVariable.setLineNumber(this.f99997t.getLineNumber() + 1);
        globalVariable.setColumnNumber(this.f99997t.getColumnNumber() + 1);
        globalVariable.setSystemId(this.env.getSystemId());
        if (annotationList != null) {
            globalVariable.setPrivate(annotationList.includes(Annotation.PRIVATE));
        }
        nextToken();
        expect(21);
        this.f99997t.setState(1);
        nextToken();
        expect(201);
        String str = this.f99997t.currentTokenValue;
        StructuredQName makeStructuredQName = makeStructuredQName(str, "");
        globalVariable.setVariableQName(makeStructuredQName);
        String uri = makeStructuredQName.getURI();
        String moduleNamespace = ((QueryModule) this.env).getModuleNamespace();
        if (moduleNamespace != null && !moduleNamespace.equals(uri)) {
            grumble("A variable declared in a library module must be in the module namespace", "XQST0048", i);
        }
        nextToken();
        SequenceType sequenceType = SequenceType.ANY_SEQUENCE;
        Tokenizer tokenizer = this.f99997t;
        if (tokenizer.currentToken == 71) {
            tokenizer.setState(2);
            nextToken();
            sequenceType = parseSequenceType();
        }
        globalVariable.setRequiredType(sequenceType);
        Tokenizer tokenizer2 = this.f99997t;
        int i2 = tokenizer2.currentToken;
        if (i2 == 58) {
            tokenizer2.setState(0);
            nextToken();
            globalVariable.setBody(makeTracer(parseExprSingle(), makeStructuredQName));
        } else if (i2 != 201) {
            grumble("Expected ':=' or 'external' in variable declaration");
        } else if ("external".equals(tokenizer2.currentTokenValue)) {
            GlobalParam globalParam = new GlobalParam();
            globalParam.setPackageData(this.env.getPackageData());
            globalParam.setLineNumber(globalVariable.getLineNumber());
            globalParam.setColumnNumber(globalVariable.getColumnNumber());
            globalParam.setSystemId(globalVariable.getSystemId());
            globalParam.setVariableQName(globalVariable.getVariableQName());
            globalParam.setRequiredType(globalVariable.getRequiredType());
            nextToken();
            Tokenizer tokenizer3 = this.f99997t;
            if (tokenizer3.currentToken == 58) {
                tokenizer3.setState(0);
                nextToken();
                globalParam.setBody(makeTracer(parseExprSingle(), makeStructuredQName));
            }
            globalVariable = globalParam;
        } else {
            grumble("Variable must either be initialized or be declared as external");
        }
        StaticContext staticContext = this.env;
        QueryModule queryModule = (QueryModule) staticContext;
        RetainedStaticContext makeRetainedStaticContext = staticContext.makeRetainedStaticContext();
        globalVariable.setRetainedStaticContext(makeRetainedStaticContext);
        if (globalVariable.getBody() != null) {
            ExpressionTool.setDeepRetainedStaticContext(globalVariable.getBody(), makeRetainedStaticContext);
        }
        if (queryModule.getModuleNamespace() != null && !uri.equals(queryModule.getModuleNamespace())) {
            grumble("Variable " + Err.wrap(str, 5) + " is not defined in the module namespace");
        }
        try {
            queryModule.declareVariable(globalVariable);
        } catch (XPathException e) {
            grumble(e.getMessage(), e.getErrorCodeQName(), -1);
        }
    }

    /* renamed from: H */
    public final void m63511H(String str, String str2) throws XPathException {
        if (str != null && !str.isEmpty() && !NameChecker.isValidNCName(str)) {
            grumble("The namespace prefix " + Err.wrap(str) + " is not a valid NCName");
        }
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        if ("xmlns".equals(str)) {
            grumble("The namespace prefix 'xmlns' cannot be redeclared", "XQST0070");
        }
        if (str2.equals("http://www.w3.org/2000/xmlns/")) {
            grumble("The xmlns namespace URI is reserved", "XQST0070");
        }
        if (str2.equals("http://www.w3.org/XML/1998/namespace") && !str.equals("xml")) {
            grumble("The XML namespace cannot be bound to any prefix other than 'xml'", "XQST0070");
        }
        if (!str.equals("xml") || str2.equals("http://www.w3.org/XML/1998/namespace")) {
            return;
        }
        grumble("The prefix 'xml' cannot be bound to any namespace other than http://www.w3.org/XML/1998/namespace", "XQST0070");
    }

    /* renamed from: H0 */
    public final void m63512H0() throws XPathException {
        int i = this.f99997t.currentToken;
        if (i != 88) {
            if (i == 89) {
                nextToken();
                expect(202);
                if (!f101095C.matcher(this.f99997t.currentTokenValue).matches()) {
                    grumble("Encoding name contains invalid characters", "XQST0087");
                }
                nextToken();
                expect(149);
                nextToken();
                return;
            }
            return;
        }
        nextToken();
        expect(202);
        String str = unescape(this.f99997t.currentTokenValue).toString();
        if (Arrays.binarySearch(new String[]{"1.0", XQUERY30, XQUERY31, XQUERY40}, str) < 0) {
            grumble("Invalid XQuery version " + str, "XQST0031");
        }
        if (str.equals(XQUERY40)) {
            this.allowXPath40Syntax = true;
        }
        nextToken();
        if ("encoding".equals(this.f99997t.currentTokenValue)) {
            nextToken();
            expect(202);
            if (!f101095C.matcher(unescape(this.f99997t.currentTokenValue)).matches()) {
                grumble("Encoding name contains invalid characters", "XQST0087");
            }
            nextToken();
        }
        expect(149);
        nextToken();
    }

    /* renamed from: I */
    public final void m63513I(char c, char c2) throws XPathException {
        String str;
        if (c != c2) {
            StringBuilder sb = new StringBuilder();
            sb.append("Expected '");
            sb.append(c2);
            sb.append("', found ");
            if (c == 0) {
                str = "end of input";
            } else {
                str = CloudStorageConstants.SINGLE_QUOTES + c + CloudStorageConstants.SINGLE_QUOTES;
            }
            sb.append(str);
            grumble(sb.toString());
        }
    }

    /* renamed from: I0 */
    public final void m63514I0(FLWORExpression fLWORExpression, List<Clause> list) throws XPathException {
        WindowClause windowClause = new WindowClause();
        setLocation(windowClause, this.f99997t.currentTokenStartOffset);
        windowClause.setRepeated(containsLoopingClause(list));
        windowClause.setIsSlidingWindow(this.f99997t.currentToken == 74);
        nextToken();
        if (!isKeyword("window")) {
            grumble("after 'sliding' or 'tumbling', expected 'window', but found " + currentTokenDisplay());
        }
        nextToken();
        StructuredQName m63524O0 = m63524O0();
        SequenceType sequenceType = SequenceType.ANY_SEQUENCE;
        if (this.f99997t.currentToken == 71) {
            nextToken();
            sequenceType = parseSequenceType();
        }
        LocalVariableBinding localVariableBinding = new LocalVariableBinding(m63524O0, sequenceType);
        windowClause.setVariableBinding(0, localVariableBinding);
        SequenceType sequenceType2 = SequenceType.SINGLE_ITEM;
        SequenceType sequenceType3 = SequenceType.OPTIONAL_ITEM;
        expect(31);
        nextToken();
        windowClause.initSequence(fLWORExpression, parseExprSingle());
        if (!isKeyword(gon.f71290o0)) {
            grumble("in window clause, expected 'start', but found " + currentTokenDisplay());
        }
        this.f99997t.setState(1);
        nextToken();
        if (this.f99997t.currentToken == 21) {
            LocalVariableBinding localVariableBinding2 = new LocalVariableBinding(m63524O0(), sequenceType2);
            windowClause.setVariableBinding(1, localVariableBinding2);
            declareRangeVariable(localVariableBinding2);
        }
        if (isKeyword("at")) {
            nextToken();
            LocalVariableBinding localVariableBinding3 = new LocalVariableBinding(m63524O0(), SequenceType.SINGLE_INTEGER);
            windowClause.setVariableBinding(2, localVariableBinding3);
            declareRangeVariable(localVariableBinding3);
        }
        if (isKeyword("previous")) {
            nextToken();
            LocalVariableBinding localVariableBinding4 = new LocalVariableBinding(m63524O0(), sequenceType3);
            windowClause.setVariableBinding(3, localVariableBinding4);
            declareRangeVariable(localVariableBinding4);
        }
        if (isKeyword(com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.NEXT)) {
            nextToken();
            LocalVariableBinding localVariableBinding5 = new LocalVariableBinding(m63524O0(), sequenceType3);
            windowClause.setVariableBinding(4, localVariableBinding5);
            declareRangeVariable(localVariableBinding5);
        }
        if (!isKeyword(Constants.ELEMNAME_WHEN_STRING)) {
            grumble("Expected 'when' condition for window start, but found " + currentTokenDisplay());
        }
        this.f99997t.setState(0);
        nextToken();
        windowClause.initStartCondition(fLWORExpression, parseExprSingle());
        if (isKeyword(Constants.ATTRNAME_ONLY)) {
            windowClause.setIncludeUnclosedWindows(false);
            nextToken();
        }
        if (isKeyword("end")) {
            this.f99997t.setState(1);
            nextToken();
            if (this.f99997t.currentToken == 21) {
                LocalVariableBinding localVariableBinding6 = new LocalVariableBinding(m63524O0(), sequenceType2);
                windowClause.setVariableBinding(5, localVariableBinding6);
                declareRangeVariable(localVariableBinding6);
            }
            if (isKeyword("at")) {
                nextToken();
                LocalVariableBinding localVariableBinding7 = new LocalVariableBinding(m63524O0(), SequenceType.SINGLE_INTEGER);
                windowClause.setVariableBinding(6, localVariableBinding7);
                declareRangeVariable(localVariableBinding7);
            }
            if (isKeyword("previous")) {
                nextToken();
                LocalVariableBinding localVariableBinding8 = new LocalVariableBinding(m63524O0(), sequenceType3);
                windowClause.setVariableBinding(7, localVariableBinding8);
                declareRangeVariable(localVariableBinding8);
            }
            if (isKeyword(com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.NEXT)) {
                nextToken();
                LocalVariableBinding localVariableBinding9 = new LocalVariableBinding(m63524O0(), sequenceType3);
                windowClause.setVariableBinding(8, localVariableBinding9);
                declareRangeVariable(localVariableBinding9);
            }
            if (!isKeyword(Constants.ELEMNAME_WHEN_STRING)) {
                grumble("Expected 'when' condition for window end, but found " + currentTokenDisplay());
            }
            this.f99997t.setState(0);
            nextToken();
            windowClause.initEndCondition(fLWORExpression, parseExprSingle());
        } else if (windowClause.isSlidingWindow()) {
            grumble("A sliding window requires an end condition");
        }
        declareRangeVariable(localVariableBinding);
        list.add(windowClause);
    }

    /* renamed from: J */
    public final boolean m63515J(List<Clause> list, List<LocalVariableReference> list2, List<LocalVariableBinding> list3, StructuredQName structuredQName) {
        int size = list.size() - 1;
        while (true) {
            if (size < 0) {
                return false;
            }
            for (LocalVariableBinding localVariableBinding : list.get(size).getRangeVariables()) {
                if (structuredQName.equals(localVariableBinding.getVariableQName())) {
                    list3.add(localVariableBinding);
                    list2.add(new LocalVariableReference(localVariableBinding));
                    return true;
                }
            }
            size--;
        }
    }

    /* renamed from: J0 */
    public final void m63516J0() throws XPathException {
        String str = NamespaceConstant.CODEPOINT_COLLATION_URI;
        if (this.f101114w) {
            return;
        }
        this.f101114w = true;
        if (this.f101107o) {
            String defaultCollationName = this.env.getDefaultCollationName();
            try {
                URI uri = new URI(defaultCollationName);
                if (!uri.isAbsolute()) {
                    defaultCollationName = new URI(this.env.getStaticBaseURI()).resolve(uri).toString();
                }
            } catch (URISyntaxException unused) {
                grumble("Default collation name '" + defaultCollationName + "' is not a valid URI", "XQST0046");
                defaultCollationName = NamespaceConstant.CODEPOINT_COLLATION_URI;
            }
            if (this.env.getConfiguration().getCollation(defaultCollationName) == null) {
                grumble("Default collation name '" + defaultCollationName + "' is not a recognized collation", "XQST0038");
            } else {
                str = defaultCollationName;
            }
            ((QueryModule) this.env).setDefaultCollationName(str);
        }
        for (C18440c c18440c : this.f101116y) {
            try {
                m63505E(c18440c);
            } catch (XPathException e) {
                if (!e.hasBeenReported()) {
                    e.maybeSetLocation(makeLocation(c18440c.f101124c));
                    throw e;
                }
            }
        }
        for (C18440c c18440c2 : this.f101117z) {
            try {
                m63503D(c18440c2);
            } catch (XPathException e2) {
                if (!e2.hasBeenReported()) {
                    e2.maybeSetLocation(makeLocation(c18440c2.f101124c));
                    throw e2;
                }
            }
        }
    }

    /* renamed from: K */
    public final Expression m63517K(String str, int i, char c, boolean z) throws XPathException {
        Location makeLocation = makeLocation();
        ArrayList arrayList = new ArrayList(10);
        int length = str.length();
        while (i < length) {
            int indexOf = str.indexOf(c, i);
            if (indexOf < 0) {
                XPathException xPathException = new XPathException("Attribute constructor is not properly terminated");
                xPathException.setIsStaticError(true);
                throw xPathException;
            }
            int indexOf2 = str.indexOf("{", i);
            int indexOf3 = str.indexOf("{{", i);
            int indexOf4 = str.indexOf("}", i);
            int indexOf5 = str.indexOf("}}", i);
            if ((indexOf2 < 0 || indexOf < indexOf2) && (indexOf4 < 0 || indexOf < indexOf4)) {
                m63501C(arrayList, str, i, indexOf);
                int i2 = indexOf + 1;
                if (i2 >= str.length() || str.charAt(i2) != c) {
                    i = indexOf;
                    break;
                }
                arrayList.add(new StringLiteral(c + ""));
                i = indexOf + 2;
            } else if (indexOf4 < 0 || (indexOf2 >= 0 && indexOf4 >= indexOf2)) {
                if (indexOf3 >= 0 && indexOf3 == indexOf2) {
                    m63501C(arrayList, str, i, indexOf3 + 1);
                    i = indexOf3 + 2;
                } else {
                    if (indexOf2 < 0) {
                        throw new IllegalStateException("Internal error parsing direct attribute constructor");
                    }
                    if (indexOf2 > i) {
                        m63501C(arrayList, str, i, indexOf2);
                    }
                    XQueryParser m63521M = m63521M();
                    m63521M.executable = this.executable;
                    m63521M.setAllowAbsentExpression(this.allowXPath31Syntax);
                    m63521M.setScanOnly(z);
                    m63521M.setRangeVariableStack(this.rangeVariables);
                    m63521M.setCatchDepth(this.catchDepth);
                    Expression parse = m63521M.parse(str, indexOf2 + 1, 215, this.env);
                    if (!z) {
                        parse = parse.simplify();
                    }
                    i = m63521M.getTokenizer().currentTokenStartOffset + 1;
                    arrayList.add(makeStringJoin(parse, this.env));
                }
            } else {
                if (indexOf4 != indexOf5) {
                    XPathException xPathException2 = new XPathException("Closing curly brace in attribute value template \"" + str + "\" must be doubled");
                    xPathException2.setIsStaticError(true);
                    throw xPathException2;
                }
                m63501C(arrayList, str, i, indexOf4 + 1);
                i = indexOf4 + 2;
            }
        }
        if (z) {
            return Literal.makeLiteral(Int64Value.makeIntegerValue(i));
        }
        if (arrayList.isEmpty()) {
            return new StringLiteral(StringValue.EMPTY_STRING);
        }
        if (arrayList.size() == 1) {
            return arrayList.get(0);
        }
        Expression makeCall = SystemFunction.makeCall(Keywords.FUNC_CONCAT_STRING, new RetainedStaticContext(this.env), (Expression[]) arrayList.toArray(new Expression[arrayList.size()]));
        makeCall.setLocation(makeLocation);
        return makeCall;
    }

    /* renamed from: K0 */
    public final void m63518K0(StringBuilder sb) throws XPathException {
        m63513I(this.f99997t.nextChar(), 'C');
        m63513I(this.f99997t.nextChar(), 'D');
        m63513I(this.f99997t.nextChar(), 'A');
        m63513I(this.f99997t.nextChar(), 'T');
        m63513I(this.f99997t.nextChar(), 'A');
        m63513I(this.f99997t.nextChar(), '[');
        while (!sb.toString().endsWith("]]>")) {
            char nextChar = this.f99997t.nextChar();
            if (nextChar == 0) {
                grumble("No closing ']]>' found for CDATA section");
            }
            sb.append(nextChar);
        }
        sb.setLength(sb.length() - 3);
    }

    /* renamed from: L */
    public final int m63519L(String str, int i, char c) throws XPathException {
        int length = str.length();
        while (i < length) {
            i = str.indexOf(c, i);
            if (i < 0) {
                XPathException xPathException = new XPathException("Namespace declaration is not properly terminated");
                xPathException.setIsStaticError(true);
                throw xPathException;
            }
            int i2 = i + 1;
            if (i2 >= str.length() || str.charAt(i2) != c) {
                break;
            }
            i += 2;
        }
        return i;
    }

    /* renamed from: L0 */
    public final void m63520L0(String str, List<Expression> list) throws XPathException {
        char nextChar;
        boolean z = false;
        while (true) {
            StringBuilder sb = new StringBuilder(64);
            boolean z2 = false;
            while (true) {
                nextChar = this.f99997t.nextChar();
                if (nextChar == '<') {
                    if (this.f99997t.nextChar() != '!') {
                        this.f99997t.unreadChar();
                        break;
                    } else if (this.f99997t.nextChar() != '[') {
                        this.f99997t.unreadChar();
                        this.f99997t.unreadChar();
                        break;
                    } else {
                        m63518K0(sb);
                        z2 = true;
                    }
                } else if (nextChar == '&') {
                    sb.append(m63522M0());
                    z2 = true;
                } else if (nextChar == '}') {
                    char nextChar2 = this.f99997t.nextChar();
                    if (nextChar2 != '}') {
                        grumble("'}' must be written as '}}' within element content");
                    }
                    sb.append(nextChar2);
                } else if (nextChar == '{') {
                    char nextChar3 = this.f99997t.nextChar();
                    if (nextChar3 != '{') {
                        nextChar = '{';
                        break;
                    }
                    sb.append(nextChar3);
                } else if (nextChar == 0) {
                    grumble("Reached end of input while reading XQuery element content");
                } else {
                    if (!this.charChecker.test(nextChar) && !UTF16CharacterSet.isSurrogate(nextChar)) {
                        grumble("Character code " + nextChar + " is not a valid XML character");
                    }
                    sb.append(nextChar);
                }
            }
            String sb2 = sb.toString();
            if (!sb2.isEmpty() && ((z2 | ((QueryModule) this.env).isPreserveBoundarySpace()) || !Whitespace.isAllWhite(StringView.m63901of(sb2)))) {
                ValueOf valueOf = new ValueOf(new StringLiteral(new StringValue(sb2)), false, false);
                setLocation(valueOf);
                list.add(valueOf);
                z = false;
            }
            if (nextChar == '<') {
                Expression m63564y0 = m63564y0(true);
                if (m63564y0 instanceof StringLiteral) {
                    String obj = ((StringLiteral) m63564y0).getString().toString();
                    if (Whitespace.isWhite(obj.charAt(0))) {
                        grumble("End tag contains whitespace before the name");
                    }
                    String trim = Whitespace.trim(obj);
                    if (trim.equals(str)) {
                        return;
                    }
                    grumble("End tag </" + trim + "> does not match start tag <" + str + '>', "XQST0118");
                } else {
                    list.add(m63564y0);
                }
            } else {
                if (z) {
                    if (!UType.ANY_NODE.subsumes(list.get(list.size() - 1).getStaticUType(UType.ANY))) {
                        ValueOf valueOf2 = new ValueOf(new StringLiteral(StringValue.EMPTY_STRING), false, false);
                        setLocation(valueOf2);
                        list.add(valueOf2);
                    }
                }
                this.f99997t.unreadChar();
                this.f99997t.setState(0);
                lookAhead();
                nextToken();
                if (this.f99997t.currentToken == 215 && this.allowXPath31Syntax) {
                    list.add(Literal.makeEmptySequence());
                } else {
                    Expression parseExpression = parseExpression();
                    if (!((QueryModule) this.env).isPreserveNamespaces()) {
                        parseExpression = new CopyOf(parseExpression, false, 3, null, true);
                    }
                    list.add(parseExpression);
                    expect(215);
                }
                z = true;
            }
        }
    }

    /* renamed from: M */
    public final XQueryParser m63521M() {
        XQueryParser xQueryParser = new XQueryParser(this.languageVersion);
        xQueryParser.setLanguage(this.language, this.languageVersion);
        xQueryParser.setParserExtension(this.parserExtension);
        return xQueryParser;
    }

    /* renamed from: M0 */
    public final String m63522M0() throws XPathException {
        StringBuilder sb = new StringBuilder(64);
        while (true) {
            char nextChar = this.f99997t.nextChar();
            if (nextChar == ';') {
                return new Unescaper(this.env.getConfiguration().getValidCharacterChecker()).analyzeEntityReference(sb.toString());
            }
            if (nextChar == 0) {
                grumble("No closing ';' found for entity or character reference");
                return "";
            }
            sb.append(nextChar);
        }
    }

    /* renamed from: N0 */
    public final String m63523N0() throws XPathException {
        this.f99997t.setState(0);
        nextToken();
        expect(201);
        String str = this.f99997t.currentTokenValue;
        nextToken();
        expect(6);
        nextToken();
        return str;
    }

    /* renamed from: O0 */
    public final StructuredQName m63524O0() throws XPathException {
        expect(21);
        nextToken();
        expect(201);
        String str = this.f99997t.currentTokenValue;
        nextToken();
        return makeStructuredQName(str, "");
    }

    /* renamed from: P */
    public final void m63525P() throws XPathException {
        if (this.f101111s) {
            grumble("Base URI Declaration may only appear once", "XQST0032");
        }
        this.f101111s = true;
        nextToken();
        expect(202);
        String uriLiteral = uriLiteral(this.f99997t.currentTokenValue);
        try {
            if (!new URI(uriLiteral).isAbsolute()) {
                uriLiteral = ResolveURI.makeAbsolute(uriLiteral, this.env.getStaticBaseURI()).toString();
            }
            ((QueryModule) this.env).setBaseURI(uriLiteral);
        } catch (URISyntaxException unused) {
            ((QueryModule) this.env).setBaseURI(uriLiteral);
        }
        nextToken();
    }

    /* renamed from: P0 */
    public final void m63526P0(XPathException xPathException) throws XPathException {
        this.f101101i++;
        if (this.f101102j == null) {
            this.f101102j = xPathException;
        }
        ((QueryModule) this.env).reportStaticError(xPathException);
        throw xPathException;
    }

    /* renamed from: Q */
    public final void m63527Q() throws XPathException {
        if (this.f101104l) {
            grumble("'declare boundary-space' appears more than once", "XQST0068");
        }
        this.f101104l = true;
        nextToken();
        expect(201);
        if ("preserve".equals(this.f99997t.currentTokenValue)) {
            ((QueryModule) this.env).setPreserveBoundarySpace(true);
        } else if ("strip".equals(this.f99997t.currentTokenValue)) {
            ((QueryModule) this.env).setPreserveBoundarySpace(false);
        } else {
            grumble("boundary-space must be 'preserve' or 'strip'");
        }
        nextToken();
    }

    /* renamed from: Q0 */
    public final void m63528Q0(List<String> list, Configuration configuration) {
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            configuration.sealNamespace(it2.next());
        }
    }

    /* renamed from: R */
    public final Expression m63529R() throws XPathException {
        m63513I(this.f99997t.nextChar(), '-');
        StringBuilder sb = new StringBuilder(256);
        while (!sb.toString().endsWith(MultiPartWriter.f115320h)) {
            char nextChar = this.f99997t.nextChar();
            if (nextChar == 0) {
                grumble("Reached end of input while reading XML comment constructor");
            }
            sb.append(nextChar);
        }
        if (this.f99997t.nextChar() != '>') {
            grumble("'--' is not permitted in an XML comment");
        }
        String substring = sb.substring(0, sb.length() - 2);
        Comment comment = new Comment();
        comment.setSelect(new StringLiteral(new StringValue(substring.toString())));
        setLocation(comment);
        return comment;
    }

    /* renamed from: R0 */
    public final void m63530R0(String str) {
        int indexOf = str.indexOf("=");
        if (indexOf < 0) {
            m63507F("no equals sign");
        } else if (indexOf == 0) {
            m63507F("starts with '=");
        }
        String trim = Whitespace.trim(str.substring(0, indexOf));
        String trim2 = indexOf == str.length() + (-1) ? "" : Whitespace.trim(str.substring(indexOf + 1));
        Properties properties = getExecutable().getPrimarySerializationProperties().getProperties();
        try {
            StructuredQName makeStructuredQName = makeStructuredQName(trim, "");
            ResultDocument.setSerializationProperty(properties, makeStructuredQName.getURI(), makeStructuredQName.getLocalPart(), trim2, this.env.getNamespaceResolver(), false, this.env.getConfiguration());
        } catch (XPathException e) {
            m63507F(e.getMessage());
        }
    }

    /* renamed from: S */
    public final Expression m63531S(int i) throws XPathException {
        nextToken();
        Expression makeEmptySequence = (this.f99997t.currentToken == 215 && this.allowXPath31Syntax) ? Literal.makeEmptySequence() : parseExpression();
        expect(215);
        lookAhead();
        nextToken();
        Comment comment = new Comment();
        makeSimpleContent(makeEmptySequence, comment, i);
        return makeTracer(comment, null);
    }

    /* renamed from: S0 */
    public final char m63532S0(char c) {
        while (true) {
            if (c != ' ' && c != '\n' && c != '\r' && c != '\t') {
                return c;
            }
            c = this.f99997t.nextChar();
        }
    }

    /* renamed from: T */
    public final Expression m63533T(int i) throws XPathException {
        Expression expression;
        nextToken();
        Expression parseExpression = parseExpression();
        expect(215);
        lookAhead();
        nextToken();
        expect(59);
        this.f99997t.setState(0);
        nextToken();
        if (this.f99997t.currentToken != 215) {
            Expression parseExpression2 = parseExpression();
            expect(215);
            expression = parseExpression2;
        } else {
            expression = null;
        }
        lookAhead();
        nextToken();
        if (parseExpression instanceof Literal) {
            GroundedValue groundedValue = ((Literal) parseExpression).getGroundedValue();
            if ((groundedValue instanceof StringValue) && !(groundedValue instanceof AnyURIValue)) {
                String stringValue = ((StringValue) groundedValue).getStringValue();
                if (stringValue.equals("xmlns") || stringValue.startsWith("xmlns:")) {
                    grumble("Cannot create a namespace using an attribute constructor", "XQDY0044", i);
                }
                try {
                    QNameParser qNameParser = getQNameParser();
                    setQNameParser(qNameParser.withUnescaper(null));
                    NodeName makeNodeName = makeNodeName(stringValue, false);
                    setQNameParser(qNameParser);
                    if (makeNodeName.getPrefix().isEmpty() && !makeNodeName.hasURI("")) {
                        makeNodeName = new FingerprintedQName("_", makeNodeName.getURI(), makeNodeName.getLocalPart(), makeNodeName.getFingerprint());
                    }
                    FixedAttribute fixedAttribute = new FixedAttribute(makeNodeName, 4, null);
                    fixedAttribute.setRejectDuplicates();
                    makeSimpleContent(expression, fixedAttribute, i);
                    return makeTracer(fixedAttribute, null);
                } catch (XPathException e) {
                    String errorCodeLocalPart = e.getErrorCodeLocalPart();
                    e.setLocator(makeLocation());
                    if ("XPST0008".equals(errorCodeLocalPart) || "XPST0081".equals(errorCodeLocalPart)) {
                        e.setErrorCode("XQDY0074");
                    } else if ("XPST0003".equals(errorCodeLocalPart)) {
                        grumble("Invalid QName in attribute constructor: " + stringValue, "XQDY0074", i);
                        return new ErrorExpression();
                    }
                    throw e;
                }
            }
            if (groundedValue instanceof QNameValue) {
                QNameValue qNameValue = (QNameValue) groundedValue;
                FingerprintedQName fingerprintedQName = new FingerprintedQName(qNameValue.getPrefix(), qNameValue.getNamespaceURI(), qNameValue.getLocalName());
                fingerprintedQName.obtainFingerprint(this.env.getConfiguration().getNamePool());
                FixedAttribute fixedAttribute2 = new FixedAttribute(fingerprintedQName, 4, null);
                fixedAttribute2.setRejectDuplicates();
                makeSimpleContent(expression, fixedAttribute2, i);
                return makeTracer(fixedAttribute2, null);
            }
        }
        ComputedAttribute computedAttribute = new ComputedAttribute(parseExpression, null, this.env.getNamespaceResolver(), 4, null, true);
        computedAttribute.setRejectDuplicates();
        makeSimpleContent(expression, computedAttribute, i);
        return makeTracer(computedAttribute, null);
    }

    /* renamed from: U */
    public final Expression m63534U(int i) throws XPathException {
        Expression expression;
        NodeName fingerprintedQName;
        nextToken();
        Expression parseExpression = parseExpression();
        expect(215);
        lookAhead();
        nextToken();
        expect(59);
        this.f99997t.setState(0);
        nextToken();
        if (this.f99997t.currentToken != 215) {
            Expression parseExpression2 = parseExpression();
            if (parseExpression2 instanceof ElementCreator) {
                ElementCreator elementCreator = (ElementCreator) parseExpression2;
                if (elementCreator.getSchemaType() == null) {
                    elementCreator.setValidationAction(3, null);
                }
            }
            expect(215);
            expression = parseExpression2;
        } else {
            expression = null;
        }
        lookAhead();
        nextToken();
        if (!(parseExpression instanceof Literal)) {
            new NamespaceResolverWithDefault(this.env.getNamespaceResolver(), this.env.getDefaultElementNamespace());
            ComputedElement computedElement = new ComputedElement(parseExpression, null, null, ((QueryModule) this.env).getConstructionMode(), ((QueryModule) this.env).isInheritNamespaces(), true);
            setLocation(computedElement);
            if (expression == null) {
                expression = Literal.makeEmptySequence();
            }
            Expression expression2 = expression;
            if (!((QueryModule) this.env).isPreserveNamespaces()) {
                expression2 = new CopyOf(expression2, false, 3, null, true);
            }
            computedElement.setContentExpression(expression2);
            setLocation(computedElement, i);
            return makeTracer(computedElement, null);
        }
        GroundedValue groundedValue = ((Literal) parseExpression).getGroundedValue();
        if ((groundedValue instanceof StringValue) && !(groundedValue instanceof AnyURIValue)) {
            String stringValue = ((StringValue) groundedValue).getStringValue();
            try {
                QNameParser qNameParser = getQNameParser();
                setQNameParser(qNameParser.withUnescaper(null));
                fingerprintedQName = makeNodeName(stringValue, true);
                setQNameParser(qNameParser);
                fingerprintedQName.obtainFingerprint(this.env.getConfiguration().getNamePool());
            } catch (XPathException e) {
                String errorCodeLocalPart = e.getErrorCodeLocalPart();
                if ("XPST0008".equals(errorCodeLocalPart) || "XPST0081".equals(errorCodeLocalPart)) {
                    e.setErrorCode("XQDY0074");
                } else if ("XPST0003".equals(errorCodeLocalPart)) {
                    grumble("Invalid QName in element constructor: " + stringValue, "XQDY0074", i);
                    return new ErrorExpression();
                }
                e.setLocator(makeLocation());
                e.setIsStaticError(false);
                return new ErrorExpression(new XmlProcessingException(e));
            }
        } else {
            if (!(groundedValue instanceof QualifiedNameValue)) {
                grumble("Element name must be either a string or a QName", "XPTY0004", i);
                return new ErrorExpression();
            }
            QualifiedNameValue qualifiedNameValue = (QualifiedNameValue) groundedValue;
            fingerprintedQName = new FingerprintedQName("", qualifiedNameValue.getNamespaceURI(), qualifiedNameValue.getLocalName());
            fingerprintedQName.obtainFingerprint(this.env.getConfiguration().getNamePool());
        }
        FixedElement fixedElement = new FixedElement(fingerprintedQName, ((QueryModule) this.env).m63482a(), ((QueryModule) this.env).isInheritNamespaces(), true, null, ((QueryModule) this.env).getConstructionMode());
        if (expression == null) {
            expression = Literal.makeEmptySequence();
        }
        Expression expression3 = expression;
        if (!((QueryModule) this.env).isPreserveNamespaces()) {
            expression3 = new CopyOf(expression3, false, 3, null, true);
        }
        fixedElement.setContentExpression(expression3);
        setLocation(fixedElement, i);
        return makeTracer(fixedElement, fingerprintedQName.getStructuredQName());
    }

    /* renamed from: V */
    public final void m63535V() throws XPathException {
        int i;
        if (this.f101108p) {
            grumble("declare construction appears more than once", "XQST0067");
        }
        this.f101108p = true;
        nextToken();
        expect(201);
        if ("preserve".equals(this.f99997t.currentTokenValue)) {
            i = 3;
        } else {
            if (!"strip".equals(this.f99997t.currentTokenValue)) {
                grumble("construction mode must be 'preserve' or 'strip'");
            }
            i = 4;
        }
        ((QueryModule) this.env).setConstructionMode(i);
        nextToken();
    }

    /* renamed from: W */
    public final void m63536W() throws XPathException {
        int i = this.f99997t.currentTokenStartOffset;
        nextToken();
        if (!isKeyword("item")) {
            grumble("After 'declare context', expected 'item'");
        }
        if (this.f101112u) {
            grumble("More than one context item declaration found", "XQST0099", i);
        }
        this.f101112u = true;
        GlobalContextRequirement globalContextRequirement = new GlobalContextRequirement();
        globalContextRequirement.setAbsentFocus(false);
        this.f99997t.setState(1);
        nextToken();
        ItemType anyItemType = AnyItemType.getInstance();
        Tokenizer tokenizer = this.f99997t;
        if (tokenizer.currentToken == 71) {
            tokenizer.setState(2);
            nextToken();
            anyItemType = parseItemType();
        }
        globalContextRequirement.addRequiredItemType(anyItemType);
        Tokenizer tokenizer2 = this.f99997t;
        int i2 = tokenizer2.currentToken;
        if (i2 == 58) {
            if (!((QueryModule) this.env).isMainModule()) {
                grumble("The context item must not be initialized in a library module", "XQST0113");
            }
            this.f99997t.setState(0);
            nextToken();
            Expression parseExprSingle = parseExprSingle();
            parseExprSingle.setRetainedStaticContext(this.env.makeRetainedStaticContext());
            Expression makeCardinalityChecker = CardinalityChecker.makeCardinalityChecker(parseExprSingle, 16384, new RoleDiagnostic(13, "context item declaration", 0));
            ExpressionVisitor make = ExpressionVisitor.make(this.env);
            Expression simplify = makeCardinalityChecker.simplify();
            ContextItemStaticInfo makeContextItemStaticInfo = this.env.getConfiguration().makeContextItemStaticInfo(AnyItemType.getInstance(), true);
            simplify.setRetainedStaticContext(this.env.makeRetainedStaticContext());
            globalContextRequirement.setDefaultValue(simplify.typeCheck(make, makeContextItemStaticInfo));
            globalContextRequirement.setExternal(false);
        } else if (i2 == 201 && "external".equals(tokenizer2.currentTokenValue)) {
            globalContextRequirement.setAbsentFocus(false);
            globalContextRequirement.setExternal(true);
            nextToken();
            if (this.f99997t.currentToken == 58) {
                if (!((QueryModule) this.env).isMainModule()) {
                    grumble("The context item must not be initialized in a library module", "XQST0113");
                }
                this.f99997t.setState(0);
                nextToken();
                Expression makeCardinalityChecker2 = CardinalityChecker.makeCardinalityChecker(parseExprSingle(), 16384, new RoleDiagnostic(13, "context item declaration", 0));
                makeCardinalityChecker2.setRetainedStaticContext(this.env.makeRetainedStaticContext());
                globalContextRequirement.setDefaultValue(makeCardinalityChecker2);
            }
        } else {
            grumble("Expected ':=' or 'external' in context item declaration");
        }
        Executable executable = getExecutable();
        if (executable.getGlobalContextRequirement() == null) {
            executable.setGlobalContextRequirement(globalContextRequirement);
            return;
        }
        GlobalContextRequirement globalContextRequirement2 = executable.getGlobalContextRequirement();
        if (globalContextRequirement2.getDefaultValue() == null && globalContextRequirement.getDefaultValue() != null) {
            globalContextRequirement2.setDefaultValue(globalContextRequirement.getDefaultValue());
        }
        for (ItemType itemType : globalContextRequirement2.getRequiredItemTypes()) {
            if (itemType != AnyItemType.getInstance() && this.env.getConfiguration().getTypeHierarchy().relationship(anyItemType, itemType) == Affinity.DISJOINT) {
                grumble("Different modules specify incompatible requirements for the type of the initial context item", "XPTY0004");
            }
        }
        globalContextRequirement2.addRequiredItemType(anyItemType);
    }

    /* renamed from: X */
    public final void m63537X() throws XPathException {
        if (this.f101103k) {
            grumble("declare copy-namespaces appears more than once", "XQST0055");
        }
        this.f101103k = true;
        nextToken();
        expect(201);
        if ("preserve".equals(this.f99997t.currentTokenValue)) {
            ((QueryModule) this.env).setPreserveNamespaces(true);
        } else if ("no-preserve".equals(this.f99997t.currentTokenValue)) {
            ((QueryModule) this.env).setPreserveNamespaces(false);
        } else {
            grumble("copy-namespaces must be followed by 'preserve' or 'no-preserve'");
        }
        nextToken();
        expect(7);
        nextToken();
        expect(201);
        if ("inherit".equals(this.f99997t.currentTokenValue)) {
            ((QueryModule) this.env).setInheritNamespaces(true);
        } else if ("no-inherit".equals(this.f99997t.currentTokenValue)) {
            ((QueryModule) this.env).setInheritNamespaces(false);
        } else {
            grumble("After the comma in the copy-namespaces declaration, expected 'inherit' or 'no-inherit'");
        }
        nextToken();
    }

    /* renamed from: Y */
    public final void m63538Y(List<Clause> list) throws XPathException {
        CountClause countClause = new CountClause();
        setLocation(countClause, this.f99997t.currentTokenStartOffset);
        countClause.setRepeated(containsLoopingClause(list));
        list.add(countClause);
        nextToken();
        expect(21);
        nextToken();
        expect(201);
        StructuredQName makeStructuredQName = makeStructuredQName(this.f99997t.currentTokenValue, "");
        SequenceType sequenceType = SequenceType.ANY_SEQUENCE;
        nextToken();
        LocalVariableBinding localVariableBinding = new LocalVariableBinding(makeStructuredQName, sequenceType);
        countClause.setRangeVariable(localVariableBinding);
        declareRangeVariable(localVariableBinding);
    }

    /* renamed from: Z */
    public final void m63539Z() throws XPathException {
        nextToken();
        expect(201);
        StructuredQName makeStructuredQName = makeStructuredQName(this.f99997t.currentTokenValue, "");
        if (this.env.getDecimalFormatManager().getNamedDecimalFormat(makeStructuredQName) != null) {
            grumble("Duplicate declaration of decimal-format " + makeStructuredQName.getDisplayName(), "XQST0111");
        }
        nextToken();
        m63540a0(makeStructuredQName);
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x00b5, code lost:
    
        if (r4.equals(com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_INFINITY) == false) goto L14;
     */
    /* renamed from: a0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m63540a0(net.p110sf.saxon.om.StructuredQName r11) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.query.XQueryParser.m63540a0(net.sf.saxon.om.StructuredQName):void");
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public boolean atStartOfRelativePath() {
        return this.f99997t.currentToken == 217 || super.atStartOfRelativePath();
    }

    /* renamed from: b0 */
    public final void m63541b0() throws XPathException {
        if (this.f101107o) {
            grumble("default collation appears more than once", "XQST0038");
        }
        this.f101107o = true;
        nextToken();
        expect(202);
        ((QueryModule) this.env).setDefaultCollationName(uriLiteral(this.f99997t.currentTokenValue));
        nextToken();
    }

    /* renamed from: c0 */
    public final void m63542c0() throws XPathException {
        if (this.f101113v) {
            grumble("Duplicate declaration of default decimal-format", "XQST0111");
        }
        this.f101113v = true;
        m63540a0(null);
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public void customizeTokenizer(Tokenizer tokenizer) {
        tokenizer.isXQuery = true;
    }

    /* renamed from: d0 */
    public final void m63543d0() throws XPathException {
        if (this.f101110r) {
            grumble("default element namespace appears more than once", "XQST0066");
        }
        this.f101110r = true;
        nextToken();
        expect(201);
        if (!Constants.ATTRNAME_NAMESPACE.equals(this.f99997t.currentTokenValue)) {
            grumble("After 'declare default element', expected 'namespace'");
        }
        nextToken();
        expect(202);
        String uriLiteral = uriLiteral(this.f99997t.currentTokenValue);
        if (uriLiteral.equals("http://www.w3.org/XML/1998/namespace") || uriLiteral.equals("http://www.w3.org/2000/xmlns/")) {
            grumble("Reserved namespace used as default element/type namespace", "XQST0070");
        }
        ((QueryModule) this.env).setDefaultElementNamespace(uriLiteral);
        nextToken();
    }

    /* renamed from: e0 */
    public final void m63544e0() throws XPathException {
        if (this.f101109q) {
            grumble("default function namespace appears more than once", "XQST0066");
        }
        this.f101109q = true;
        nextToken();
        expect(201);
        if (!Constants.ATTRNAME_NAMESPACE.equals(this.f99997t.currentTokenValue)) {
            grumble("After 'declare default function', expected 'namespace'");
        }
        nextToken();
        expect(202);
        String uriLiteral = uriLiteral(this.f99997t.currentTokenValue);
        if (uriLiteral.equals("http://www.w3.org/XML/1998/namespace") || uriLiteral.equals("http://www.w3.org/2000/xmlns/")) {
            grumble("Reserved namespace used as default element/type namespace", "XQST0070");
        }
        ((QueryModule) this.env).setDefaultFunctionNamespace(uriLiteral);
        nextToken();
    }

    public void ensureSchemaAware(String str) throws XPathException {
        if (this.env.getConfiguration().isLicensedFeature(4)) {
            this.env.getConfiguration().checkLicensedFeature(4, str, -1);
            getExecutable().setSchemaAware(true);
            getStaticContext().getPackageData().setSchemaAware(true);
        } else {
            throw new XPathException("This Saxon version and license does not allow use of '" + str + CloudStorageConstants.SINGLE_QUOTES, "XQST0009");
        }
    }

    /* renamed from: f0 */
    public final void m63545f0() throws XPathException {
        if (this.f101106n) {
            grumble("empty ordering declaration appears more than once", "XQST0069");
        }
        this.f101106n = true;
        nextToken();
        if (!isKeyword(Constants.ELEMNAME_EMPTY_STRING)) {
            grumble("After 'declare default order', expected keyword 'empty'");
        }
        nextToken();
        if (isKeyword("least")) {
            ((QueryModule) this.env).setEmptyLeast(true);
        } else if (isKeyword("greatest")) {
            ((QueryModule) this.env).setEmptyLeast(false);
        } else {
            grumble("After 'declare default order empty', expected keyword 'least' or 'greatest'");
        }
        nextToken();
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x0199, code lost:
    
        if (r14 != false) goto L72;
     */
    /* JADX WARN: Removed duplicated region for block: B:170:0x03e5  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0509  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0527  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0545  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0558 A[LOOP:7: B:248:0x0556->B:249:0x0558, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0515  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01b3  */
    /* renamed from: g0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final net.p110sf.saxon.expr.Expression m63546g0(boolean r36) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 1385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.query.XQueryParser.m63546g0(boolean):net.sf.saxon.expr.Expression");
    }

    public Executable getExecutable() {
        return this.executable;
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public String getLanguage() {
        return "XQuery";
    }

    /* renamed from: h0 */
    public final Expression m63547h0(int i) throws XPathException {
        nextToken();
        Expression makeEmptySequence = (this.f99997t.currentToken == 215 && this.allowXPath31Syntax) ? Literal.makeEmptySequence() : parseExpression();
        expect(215);
        lookAhead();
        nextToken();
        DocumentInstr documentInstr = new DocumentInstr(false, null);
        if (!((QueryModule) this.env).isPreserveNamespaces()) {
            makeEmptySequence = new CopyOf(makeEmptySequence, false, 3, null, true);
        }
        documentInstr.setValidationAction(((QueryModule) this.env).getConstructionMode(), null);
        documentInstr.setContentExpression(makeEmptySequence);
        setLocation(documentInstr, i);
        return documentInstr;
    }

    /* renamed from: i0 */
    public final void m63548i0(FLWORExpression fLWORExpression, List<Clause> list) throws XPathException {
        boolean z;
        boolean z2;
        boolean z3 = this.f99997t.currentToken == 75;
        if (z3 && !this.allowXPath40Syntax) {
            grumble("The 'for member' syntax requires XQuery 4.0 to be enabled");
        }
        boolean z4 = true;
        do {
            nextToken();
            int i = this.f99997t.currentTokenStartOffset;
            ForClause forMemberClause = z3 ? new ForMemberClause() : new ForClause();
            forMemberClause.setRepeated(!z4 || containsLoopingClause(list));
            if (z4) {
                z4 = false;
            }
            setLocation(forMemberClause, i);
            list.add(forMemberClause);
            expect(21);
            nextToken();
            expect(201);
            StructuredQName makeStructuredQName = makeStructuredQName(this.f99997t.currentTokenValue, "");
            SequenceType sequenceType = z3 ? SequenceType.ANY_SEQUENCE : SequenceType.SINGLE_ITEM;
            nextToken();
            if (this.f99997t.currentToken == 71) {
                nextToken();
                sequenceType = parseSequenceType();
                z = true;
            } else {
                z = false;
            }
            if (isKeyword("allowing")) {
                if (z3) {
                    grumble("'allowing empty' cannot appear in a 'for member' clause");
                }
                forMemberClause.setAllowingEmpty(true);
                if (!z) {
                    sequenceType = z3 ? SequenceType.ANY_SEQUENCE : SequenceType.OPTIONAL_ITEM;
                }
                nextToken();
                if (!isKeyword(Constants.ELEMNAME_EMPTY_STRING)) {
                    grumble("After 'allowing', expected 'empty'");
                }
                nextToken();
                z2 = true;
            } else {
                z2 = false;
            }
            if (z && !z2 && !z3 && sequenceType.getCardinality() != 16384) {
                warning("Occurrence indicator on singleton range variable has no effect");
                sequenceType = SequenceType.makeSequenceType(sequenceType.getPrimaryType(), 16384);
            }
            forMemberClause.setRangeVariable(new LocalVariableBinding(makeStructuredQName, sequenceType));
            if (isKeyword("at")) {
                nextToken();
                expect(21);
                nextToken();
                expect(201);
                StructuredQName makeStructuredQName2 = makeStructuredQName(this.f99997t.currentTokenValue, "");
                if (!this.scanOnly && makeStructuredQName2.equals(makeStructuredQName)) {
                    grumble("The two variables declared in a single 'for' clause must have different names", "XQST0089");
                }
                forMemberClause.setPositionVariable(new LocalVariableBinding(makeStructuredQName2, SequenceType.SINGLE_INTEGER));
                nextToken();
            }
            expect(31);
            nextToken();
            forMemberClause.initSequence(fLWORExpression, parseExprSingle());
            declareRangeVariable(forMemberClause.getRangeVariable());
            if (forMemberClause.getPositionVariable() != null) {
                declareRangeVariable(forMemberClause.getPositionVariable());
            }
            if (z2) {
                m63509G(fLWORExpression, forMemberClause);
            }
        } while (this.f99997t.currentToken == 7);
    }

    public boolean isStreaming() {
        return this.f101100h;
    }

    /* renamed from: j0 */
    public final void m63549j0(FLWORExpression fLWORExpression, List<Clause> list) throws XPathException {
        int i;
        GroupByClause groupByClause = new GroupByClause(this.env.getConfiguration());
        setLocation(groupByClause, this.f99997t.currentTokenStartOffset);
        groupByClause.setRepeated(containsLoopingClause(list));
        ArrayList<StructuredQName> arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        nextToken();
        while (true) {
            SequenceType sequenceType = SequenceType.ANY_SEQUENCE;
            StructuredQName m63524O0 = m63524O0();
            if (this.f99997t.currentToken == 71) {
                nextToken();
                sequenceType = parseSequenceType();
                if (this.f99997t.currentToken != 58) {
                    grumble("In group by, if the type is declared then it must be followed by ':= value'");
                }
            }
            if (this.f99997t.currentToken == 58) {
                LetClause letClause = new LetClause();
                list.add(letClause);
                nextToken();
                LocalVariableBinding localVariableBinding = new LocalVariableBinding(m63524O0, sequenceType);
                letClause.initSequence(fLWORExpression, Atomizer.makeAtomizer(parseExprSingle(), new RoleDiagnostic(20, "grouping key", 0)));
                letClause.setRangeVariable(localVariableBinding);
                declareRangeVariable(localVariableBinding);
            }
            arrayList.add(m63524O0);
            if (isKeyword("collation")) {
                nextToken();
                expect(202);
                arrayList2.add(this.f99997t.currentTokenValue);
                nextToken();
            } else {
                arrayList2.add(this.env.getDefaultCollationName());
            }
            if (this.f99997t.currentToken != 7) {
                break;
            } else {
                nextToken();
            }
        }
        TupleExpression tupleExpression = new TupleExpression();
        TupleExpression tupleExpression2 = new TupleExpression();
        List<LocalVariableReference> arrayList3 = new ArrayList<>();
        ArrayList arrayList4 = new ArrayList();
        List<LocalVariableBinding> arrayList5 = new ArrayList<>();
        for (StructuredQName structuredQName : arrayList) {
            if (!m63515J(list, arrayList3, arrayList5, structuredQName)) {
                grumble("The grouping variable " + structuredQName.getDisplayName() + " must be the name of a variable bound earlier in the FLWOR expression", "XQST0094");
            }
        }
        tupleExpression.setVariables(arrayList3);
        groupByClause.initGroupingTupleExpression(fLWORExpression, tupleExpression);
        ArrayList<LocalVariableBinding> arrayList6 = new ArrayList();
        for (int size = list.size() - 1; size >= 0; size--) {
            for (LocalVariableBinding localVariableBinding2 : list.get(size).getRangeVariables()) {
                if (!arrayList5.contains(localVariableBinding2)) {
                    arrayList6.add(localVariableBinding2);
                    arrayList4.add(new LocalVariableReference(localVariableBinding2));
                }
            }
        }
        tupleExpression2.setVariables(arrayList4);
        groupByClause.initRetainedTupleExpression(fLWORExpression, tupleExpression2);
        int size2 = arrayList5.size() + arrayList6.size();
        LocalVariableBinding[] localVariableBindingArr = new LocalVariableBinding[size2];
        int i2 = 0;
        for (LocalVariableBinding localVariableBinding3 : arrayList5) {
            localVariableBindingArr[i2] = new LocalVariableBinding(localVariableBinding3.getVariableQName(), localVariableBinding3.getRequiredType());
            i2++;
        }
        for (LocalVariableBinding localVariableBinding4 : arrayList6) {
            localVariableBindingArr[i2] = new LocalVariableBinding(localVariableBinding4.getVariableQName(), SequenceType.makeSequenceType(localVariableBinding4.getRequiredType().getPrimaryType(), 57344));
            i2++;
        }
        for (int size3 = arrayList5.size(); size3 < size2; size3++) {
            declareRangeVariable(localVariableBindingArr[size3]);
        }
        for (int i3 = 0; i3 < arrayList5.size(); i3++) {
            declareRangeVariable(localVariableBindingArr[i3]);
        }
        groupByClause.setVariableBindings(localVariableBindingArr);
        int size4 = arrayList2.size();
        GenericAtomicComparer[] genericAtomicComparerArr = new GenericAtomicComparer[size4];
        XPathContext makeEarlyEvaluationContext = this.env.makeEarlyEvaluationContext();
        for (i = 0; i < size4; i++) {
            StringCollator collation = this.env.getConfiguration().getCollation((String) arrayList2.get(i));
            BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.ANY_ATOMIC;
            genericAtomicComparerArr[i] = (GenericAtomicComparer) GenericAtomicComparer.makeAtomicComparer(builtInAtomicType, builtInAtomicType, collation, makeEarlyEvaluationContext);
        }
        groupByClause.setComparers(genericAtomicComparerArr);
        list.add(groupByClause);
    }

    /* renamed from: k0 */
    public final void m63550k0(FLWORExpression fLWORExpression, List<Clause> list) throws XPathException {
        boolean z = true;
        do {
            LetClause letClause = new LetClause();
            setLocation(letClause, this.f99997t.currentTokenStartOffset);
            letClause.setRepeated(containsLoopingClause(list));
            list.add(letClause);
            nextToken();
            if (z) {
                z = false;
            }
            expect(21);
            nextToken();
            expect(201);
            StructuredQName makeStructuredQName = makeStructuredQName(this.f99997t.currentTokenValue, "");
            SequenceType sequenceType = SequenceType.ANY_SEQUENCE;
            nextToken();
            if (this.f99997t.currentToken == 71) {
                nextToken();
                sequenceType = parseSequenceType();
            }
            LocalVariableBinding localVariableBinding = new LocalVariableBinding(makeStructuredQName, sequenceType);
            expect(58);
            nextToken();
            letClause.initSequence(fLWORExpression, parseExprSingle());
            letClause.setRangeVariable(localVariableBinding);
            declareRangeVariable(localVariableBinding);
        } while (this.f99997t.currentToken == 7);
    }

    /* renamed from: l0 */
    public final void m63551l0() throws XPathException {
        expect(101);
        nextToken();
        expect(201);
        String str = this.f99997t.currentTokenValue;
        nextToken();
        expect(6);
        nextToken();
        expect(202);
        String uriLiteral = uriLiteral(this.f99997t.currentTokenValue);
        m63511H(str, uriLiteral);
        if (uriLiteral.isEmpty()) {
            grumble("Module namespace cannot be \"\"", "XQST0088");
            uriLiteral = "http://saxon.fallback.namespace/";
        }
        nextToken();
        expect(149);
        nextToken();
        try {
            ((QueryModule) this.env).setModuleNamespace(uriLiteral);
            ((QueryModule) this.env).declarePrologNamespace(str, uriLiteral);
            this.executable.addQueryLibraryModule((QueryModule) this.env);
        } catch (XPathException e) {
            e.setLocator(makeLocation());
            m63526P0(e);
        }
    }

    public void lookAhead() throws XPathException {
        try {
            this.f99997t.lookAhead();
        } catch (XPathException e) {
            grumble(e.getMessage());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0096, code lost:
    
        if (isKeyword("at") != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0098, code lost:
    
        nextToken();
        expect(202);
        r1.f101123b.add(uriLiteral(r6.f99997t.currentTokenValue));
        nextToken();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00b3, code lost:
    
        if (r6.f99997t.currentToken == 7) goto L36;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [net.sf.saxon.query.XQueryParser$a] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* renamed from: m0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m63552m0() throws net.p110sf.saxon.trans.XPathException {
        /*
            r6 = this;
            net.sf.saxon.expr.StaticContext r0 = r6.env
            net.sf.saxon.query.QueryModule r0 = (net.p110sf.saxon.query.QueryModule) r0
            net.sf.saxon.query.XQueryParser$c r1 = new net.sf.saxon.query.XQueryParser$c
            r2 = 0
            r1.<init>()
            r1.f101122a = r2
            java.util.ArrayList r3 = new java.util.ArrayList
            r4 = 5
            r3.<init>(r4)
            r1.f101123b = r3
            net.sf.saxon.expr.parser.Tokenizer r3 = r6.f99997t
            int r3 = r3.currentTokenStartOffset
            r1.f101124c = r3
            r6.nextToken()
            net.sf.saxon.expr.parser.Tokenizer r3 = r6.f99997t
            int r4 = r3.currentToken
            r5 = 201(0xc9, float:2.82E-43)
            if (r4 != r5) goto L33
            java.lang.String r3 = r3.currentTokenValue
            java.lang.String r4 = "namespace"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L33
            java.lang.String r2 = r6.m63523N0()
        L33:
            net.sf.saxon.expr.parser.Tokenizer r3 = r6.f99997t
            int r4 = r3.currentToken
            r5 = 202(0xca, float:2.83E-43)
            if (r4 != r5) goto Lb6
            java.lang.String r3 = r3.currentTokenValue
            java.lang.String r3 = r6.uriLiteral(r3)
            r6.m63511H(r2, r3)
            r1.f101122a = r3
            boolean r3 = r3.isEmpty()
            if (r3 == 0) goto L6c
            java.lang.String r3 = "Imported module namespace cannot be \"\""
            java.lang.String r4 = "XQST0088"
            r6.grumble(r3, r4)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "http://saxon.fallback.namespace/line"
            r3.append(r4)
            net.sf.saxon.expr.parser.Tokenizer r4 = r6.f99997t
            int r4 = r4.getLineNumber()
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            r1.f101122a = r3
        L6c:
            java.util.Set<java.lang.String> r3 = r6.importedModules
            java.lang.String r4 = r1.f101122a
            boolean r3 = r3.contains(r4)
            if (r3 == 0) goto L7d
            java.lang.String r3 = "Two 'import module' declarations specify the same module namespace"
            java.lang.String r4 = "XQST0047"
            r6.grumble(r3, r4)
        L7d:
            java.util.Set<java.lang.String> r3 = r6.importedModules
            java.lang.String r4 = r1.f101122a
            r3.add(r4)
            net.sf.saxon.expr.StaticContext r3 = r6.env
            net.sf.saxon.query.QueryModule r3 = (net.p110sf.saxon.query.QueryModule) r3
            java.lang.String r4 = r1.f101122a
            r3.addImportedNamespace(r4)
            r6.nextToken()
            java.lang.String r3 = "at"
            boolean r3 = r6.isKeyword(r3)
            if (r3 == 0) goto Lbb
        L98:
            r6.nextToken()
            r6.expect(r5)
            java.util.List<java.lang.String> r3 = r1.f101123b
            net.sf.saxon.expr.parser.Tokenizer r4 = r6.f99997t
            java.lang.String r4 = r4.currentTokenValue
            java.lang.String r4 = r6.uriLiteral(r4)
            r3.add(r4)
            r6.nextToken()
            net.sf.saxon.expr.parser.Tokenizer r3 = r6.f99997t
            int r3 = r3.currentToken
            r4 = 7
            if (r3 == r4) goto L98
            goto Lbb
        Lb6:
            java.lang.String r3 = "After 'import module', expected 'namespace' or a string-literal"
            r6.grumble(r3)
        Lbb:
            if (r2 == 0) goto Le7
            java.lang.String r3 = r1.f101122a     // Catch: net.p110sf.saxon.trans.XPathException -> Ldc
            java.lang.String r4 = r0.getModuleNamespace()     // Catch: net.p110sf.saxon.trans.XPathException -> Ldc
            boolean r3 = r3.equals(r4)     // Catch: net.p110sf.saxon.trans.XPathException -> Ldc
            if (r3 == 0) goto Ld6
            java.lang.String r3 = r1.f101122a     // Catch: net.p110sf.saxon.trans.XPathException -> Ldc
            java.lang.String r4 = r0.checkURIForPrefix(r2)     // Catch: net.p110sf.saxon.trans.XPathException -> Ldc
            boolean r3 = r3.equals(r4)     // Catch: net.p110sf.saxon.trans.XPathException -> Ldc
            if (r3 == 0) goto Ld6
            goto Le7
        Ld6:
            java.lang.String r3 = r1.f101122a     // Catch: net.p110sf.saxon.trans.XPathException -> Ldc
            r0.declarePrologNamespace(r2, r3)     // Catch: net.p110sf.saxon.trans.XPathException -> Ldc
            goto Le7
        Ldc:
            r0 = move-exception
            net.sf.saxon.s9api.Location r2 = r6.makeLocation()
            r0.setLocator(r2)
            r6.m63526P0(r0)
        Le7:
            java.util.List<net.sf.saxon.query.XQueryParser$c> r6 = r6.f101117z
            r6.add(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.query.XQueryParser.m63552m0():void");
    }

    public LetExpression makeLetExpression() {
        return ((QueryModule) this.env).getUserQueryContext().isCompileWithTracing() ? new EagerLetExpression() : new LetExpression();
    }

    public void makeSimpleContent(Expression expression, SimpleNodeConstructor simpleNodeConstructor, int i) {
        if (expression == null) {
            simpleNodeConstructor.setSelect(new StringLiteral(StringValue.EMPTY_STRING));
        } else {
            simpleNodeConstructor.setSelect(stringify(expression, false, this.env));
        }
        setLocation(simpleNodeConstructor, i);
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public Literal makeStringLiteral(String str) throws XPathException {
        StringLiteral stringLiteral = str.indexOf(38) == -1 ? new StringLiteral(str) : new StringLiteral(StringValue.makeStringValue(unescape(str)));
        setLocation(stringLiteral);
        return stringLiteral;
    }

    public XQueryExpression makeXQueryExpression(String str, QueryModule queryModule, Configuration configuration) throws XPathException {
        try {
            setLanguage(XPathParser.ParsedLanguage.XQUERY, this.languageVersion);
            String m63497N = configuration.getXMLVersion() == 10 ? m63497N(str) : m63498O(str);
            Executable executable = queryModule.getExecutable();
            if (executable == null) {
                executable = new Executable(configuration);
                executable.setHostLanguage(HostLanguage.XQUERY);
                executable.setTopLevelPackage(queryModule.getPackageData());
                setExecutable(executable);
            }
            GlobalContextRequirement globalContextRequirement = executable.getGlobalContextRequirement();
            if (globalContextRequirement != null) {
                globalContextRequirement.addRequiredItemType(queryModule.getRequiredContextItemType());
            } else if (queryModule.getRequiredContextItemType() != null && queryModule.getRequiredContextItemType() != AnyItemType.getInstance()) {
                GlobalContextRequirement globalContextRequirement2 = new GlobalContextRequirement();
                globalContextRequirement2.setExternal(true);
                globalContextRequirement2.addRequiredItemType(queryModule.getRequiredContextItemType());
                executable.setGlobalContextRequirement(globalContextRequirement2);
            }
            Properties properties = new Properties(configuration.getDefaultSerializationProperties());
            if (properties.getProperty("method") == null) {
                properties.setProperty("method", "xml");
            }
            this.f101098B = new Properties(properties);
            executable.setDefaultOutputProperties(new Properties(this.f101098B));
            FunctionLibraryList functionLibraryList = new FunctionLibraryList();
            functionLibraryList.addFunctionLibrary(new ExecutableFunctionLibrary(configuration));
            executable.setFunctionLibrary(functionLibraryList);
            setExecutable(executable);
            setCodeInjector(queryModule.getCodeInjector());
            Expression m63565z0 = m63565z0(m63497N, queryModule);
            if (this.f101100h) {
                this.env.getConfiguration().checkLicensedFeature(4, "streaming", -1);
            }
            executable.fixupQueryModules(queryModule);
            XQueryExpression makeXQueryExpression = configuration.makeXQueryExpression(m63565z0, queryModule, this.f101100h);
            FunctionLibraryList functionLibrary = executable.getFunctionLibrary();
            FunctionLibraryList functionLibraryList2 = new FunctionLibraryList();
            functionLibraryList2.addFunctionLibrary(queryModule.getBuiltInFunctionSet());
            functionLibraryList2.addFunctionLibrary(configuration.getBuiltInExtensionLibraryList());
            functionLibraryList2.addFunctionLibrary(new ConstructorFunctionLibrary(configuration));
            functionLibraryList2.addFunctionLibrary(configuration.getIntegratedFunctionLibrary());
            functionLibraryList2.addFunctionLibrary(queryModule.getGlobalFunctionLibrary());
            configuration.addExtensionBinders(functionLibraryList2);
            functionLibraryList2.addFunctionLibrary(functionLibrary);
            executable.setFunctionLibrary(functionLibraryList2);
            return makeXQueryExpression;
        } catch (XPathException e) {
            if (!e.hasBeenReported()) {
                m63526P0(e);
            }
            throw e;
        }
    }

    /* renamed from: n0 */
    public final Expression m63553n0(int i) throws XPathException {
        Expression expression;
        String str = (this.f99997t.currentTokenValue.equals("xmlns") || this.f99997t.currentTokenValue.startsWith("xmlns:")) ? "Cannot create a namespace declaration using an attribute constructor" : null;
        NodeName makeNodeName = makeNodeName(this.f99997t.currentTokenValue, false);
        if (!makeNodeName.getURI().equals("") && makeNodeName.getPrefix().equals("")) {
            makeNodeName = new FingerprintedQName("_", makeNodeName.getURI(), makeNodeName.getLocalPart());
        }
        nextToken();
        if (this.f99997t.currentToken != 215) {
            expression = parseExpression();
            expect(215);
        } else {
            expression = null;
        }
        lookAhead();
        nextToken();
        if (str != null) {
            warning(str);
            return new ErrorExpression(str, "XQDY0044", false);
        }
        FixedAttribute fixedAttribute = new FixedAttribute(makeNodeName, 4, null);
        fixedAttribute.setRejectDuplicates();
        fixedAttribute.setRetainedStaticContext(this.env.makeRetainedStaticContext());
        makeSimpleContent(expression, fixedAttribute, i);
        return makeTracer(fixedAttribute, makeNodeName.getStructuredQName());
    }

    /* renamed from: o0 */
    public final Expression m63554o0(int i) throws XPathException {
        Expression expression;
        NodeName makeNodeName = makeNodeName(this.f99997t.currentTokenValue, true);
        nextToken();
        if (this.f99997t.currentToken != 215) {
            expression = parseExpression();
            expect(215);
        } else {
            expression = null;
        }
        lookAhead();
        nextToken();
        FixedElement fixedElement = new FixedElement(makeNodeName, ((QueryModule) this.env).m63482a(), ((QueryModule) this.env).isInheritNamespaces(), true, null, ((QueryModule) this.env).getConstructionMode());
        setLocation(fixedElement, i);
        if (expression == null) {
            expression = Literal.makeEmptySequence();
        }
        Expression expression2 = expression;
        if (!((QueryModule) this.env).isPreserveNamespaces()) {
            expression2 = new CopyOf(expression2, false, 3, null, true);
        }
        fixedElement.setContentExpression(expression2);
        return makeTracer(fixedElement, makeNodeName.getStructuredQName());
    }

    /* renamed from: p0 */
    public final Expression m63555p0(int i) throws XPathException {
        Expression expression;
        if (!this.allowXPath30Syntax) {
            grumble("Namespace node constructors require XQuery 3.0");
        }
        String str = this.f99997t.currentTokenValue;
        if (!NameChecker.isValidNCName(str)) {
            grumble("Invalid namespace prefix " + Err.wrap(str));
        }
        StringLiteral stringLiteral = new StringLiteral(str);
        nextToken();
        if (this.f99997t.currentToken != 215) {
            expression = parseExpression();
            expect(215);
        } else {
            expression = null;
        }
        lookAhead();
        nextToken();
        NamespaceConstructor namespaceConstructor = new NamespaceConstructor(stringLiteral);
        makeSimpleContent(expression, namespaceConstructor, i);
        return makeTracer(namespaceConstructor, null);
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public AnnotationList parseAnnotationsList() throws XPathException {
        StructuredQName makeStructuredQName;
        String uri;
        Literal literal;
        ArrayList arrayList = new ArrayList();
        do {
            this.f99997t.setState(1);
            nextToken();
            expect(201);
            this.f99997t.setState(0);
            if (this.f99997t.currentTokenValue.indexOf(58) < 0) {
                makeStructuredQName = new StructuredQName("", NamespaceConstant.XQUERY, this.f99997t.currentTokenValue);
                uri = NamespaceConstant.XQUERY;
            } else {
                makeStructuredQName = makeStructuredQName(this.f99997t.currentTokenValue, "");
                uri = makeStructuredQName.getURI();
            }
            Annotation annotation = new Annotation(makeStructuredQName);
            if (uri.equals(NamespaceConstant.XQUERY)) {
                if (!makeStructuredQName.equals(Annotation.PRIVATE) && !makeStructuredQName.equals(Annotation.PUBLIC) && !makeStructuredQName.equals(Annotation.UPDATING) && !makeStructuredQName.equals(Annotation.SIMPLE)) {
                    grumble("Unrecognized variable or function annotation " + makeStructuredQName.getDisplayName(), "XQST0045");
                }
                annotation.addAnnotationParameter(new Int64Value(0));
            } else if (isReservedInQuery(uri)) {
                grumble("The annotation " + this.f99997t.currentTokenValue + " is in a reserved namespace", "XQST0045");
            } else if (uri.equals("")) {
                grumble("The annotation " + this.f99997t.currentTokenValue + " is in no namespace", "XQST0045");
            }
            nextToken();
            if (this.f99997t.currentToken == 5) {
                nextToken();
                if (this.f99997t.currentToken == 204) {
                    grumble("Annotation parameter list cannot be empty");
                }
                while (true) {
                    int i = this.f99997t.currentToken;
                    if (i == 202) {
                        literal = (Literal) parseStringLiteral(false);
                    } else {
                        if (i != 209) {
                            grumble("Annotation parameter must be a literal");
                            return null;
                        }
                        literal = (Literal) parseNumericLiteral(false);
                    }
                    GroundedValue groundedValue = literal.getGroundedValue();
                    if ((groundedValue instanceof StringValue) || (groundedValue instanceof NumericValue)) {
                        annotation.addAnnotationParameter((AtomicValue) groundedValue);
                    } else {
                        grumble("Annotation parameter must be a string or number");
                    }
                    if (this.f99997t.currentToken == 204) {
                        nextToken();
                        break;
                    }
                    expect(7);
                    nextToken();
                }
            }
            arrayList.add(annotation);
        } while (this.f99997t.currentToken == 106);
        return new AnnotationList(arrayList);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0080, code lost:
    
        if (r0.equals(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_PI_STRING) == false) goto L16;
     */
    @Override // net.p110sf.saxon.expr.parser.XPathParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.expr.Expression parseConstructor() throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.query.XQueryParser.parseConstructor():net.sf.saxon.expr.Expression");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0150 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e9  */
    @Override // net.p110sf.saxon.expr.parser.XPathParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.expr.Expression parseExtensionExpression() throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.query.XQueryParser.parseExtensionExpression():net.sf.saxon.expr.Expression");
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public Expression parseFLWORExpression() throws XPathException {
        FLWORExpression fLWORExpression = new FLWORExpression();
        int i = this.f99997t.currentTokenStartOffset;
        ArrayList arrayList = new ArrayList(4);
        while (true) {
            Tokenizer tokenizer = this.f99997t;
            int i2 = tokenizer.currentTokenStartOffset;
            int i3 = tokenizer.currentToken;
            if (i3 == 211 || i3 == 75) {
                m63548i0(fLWORExpression, arrayList);
            } else if (i3 == 216) {
                m63550k0(fLWORExpression, arrayList);
            } else if (i3 == 220) {
                m63538Y(arrayList);
            } else if (i3 == 72) {
                m63549j0(fLWORExpression, arrayList);
            } else if (i3 == 73 || i3 == 74) {
                m63514I0(fLWORExpression, arrayList);
            } else if (i3 == 28 || isKeyword("where")) {
                nextToken();
                WhereClause whereClause = new WhereClause(fLWORExpression, parseExprSingle());
                setLocation(whereClause, this.f99997t.currentTokenStartOffset);
                whereClause.setRepeated(containsLoopingClause(arrayList));
                arrayList.add(whereClause);
            } else if (!isKeyword(AbstractLogger.TRACE)) {
                boolean z = false;
                if (!isKeyword("stable") && !isKeyword(Constants.ATTRNAME_ORDER)) {
                    break;
                }
                if (isKeyword("stable")) {
                    nextToken();
                    if (!isKeyword(Constants.ATTRNAME_ORDER)) {
                        grumble("'stable' must be followed by 'order by'");
                    }
                }
                TupleExpression tupleExpression = new TupleExpression();
                ArrayList arrayList2 = new ArrayList();
                Iterator<Clause> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    for (LocalVariableBinding localVariableBinding : it2.next().getRangeVariables()) {
                        arrayList2.add(new LocalVariableReference(localVariableBinding));
                    }
                }
                tupleExpression.setVariables(arrayList2);
                this.f99997t.setState(1);
                nextToken();
                if (this.f99997t.currentToken != 82 && !isKeyword("by")) {
                    grumble("'order' must be followed by 'by'");
                }
                this.f99997t.setState(0);
                nextToken();
                List<C18441d> m63502C0 = m63502C0();
                int size = m63502C0.size();
                SortKeyDefinition[] sortKeyDefinitionArr = new SortKeyDefinition[size];
                int i4 = 0;
                while (i4 < size) {
                    C18441d c18441d = m63502C0.get(i4);
                    SortKeyDefinition sortKeyDefinition = new SortKeyDefinition();
                    sortKeyDefinition.setSortKey(m63502C0.get(i4).f101125a, z);
                    sortKeyDefinition.setOrder(new StringLiteral(BMPString.m63877of(c18441d.f101126b ? Constants.ATTRVAL_ORDER_ASCENDING : Constants.ATTRVAL_ORDER_DESCENDING)));
                    sortKeyDefinition.setEmptyLeast(c18441d.f101127c);
                    if (c18441d.f101128d != null) {
                        StringCollator collation = this.env.getConfiguration().getCollation(c18441d.f101128d);
                        if (collation == null) {
                            grumble("Unknown collation '" + c18441d.f101128d + Chars.QUOTE, "XQST0076");
                        }
                        sortKeyDefinition.setCollation(collation);
                    }
                    sortKeyDefinitionArr[i4] = sortKeyDefinition;
                    i4++;
                    z = false;
                }
                OrderByClause orderByClause = new OrderByClause(fLWORExpression, sortKeyDefinitionArr, tupleExpression);
                orderByClause.setRepeated(containsLoopingClause(arrayList));
                arrayList.add(orderByClause);
            } else {
                m63506E0(fLWORExpression, arrayList);
            }
            setLocation(arrayList.get(arrayList.size() - 1), i2);
        }
        int i5 = this.f99997t.currentTokenStartOffset;
        expect(25);
        this.f99997t.setState(0);
        nextToken();
        Expression makeTracer = makeTracer(parseExprSingle(), null);
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            Clause clause = arrayList.get(size2);
            for (int i6 = 0; i6 < clause.getRangeVariables().length; i6++) {
                undeclareRangeVariable();
            }
        }
        fLWORExpression.init(arrayList, makeTracer);
        setLocation(fLWORExpression, i);
        return fLWORExpression;
    }

    public void parseFunctionDeclaration(AnnotationList annotationList) throws XPathException {
        StructuredQName makeStructuredQName;
        String uri;
        boolean z = true;
        if (annotationList.includes(SAXON_MEMO_FUNCTION)) {
            if (this.env.getConfiguration().getEditionCode().equals("HE")) {
                warning("saxon:memo-function option is ignored under Saxon-HE");
            } else {
                this.f101099g = true;
            }
        }
        Tokenizer tokenizer = this.f99997t;
        int i = tokenizer.currentTokenStartOffset;
        tokenizer.setState(0);
        nextToken();
        expect(35);
        if (this.f99997t.currentTokenValue.indexOf(58) < 0) {
            uri = this.env.getDefaultFunctionNamespace();
            makeStructuredQName = new StructuredQName("", uri, this.f99997t.currentTokenValue);
        } else {
            makeStructuredQName = makeStructuredQName(this.f99997t.currentTokenValue, "");
            uri = makeStructuredQName.getURI();
        }
        if (uri.isEmpty()) {
            grumble("The function must be in a namespace", "XQST0060");
        }
        String moduleNamespace = ((QueryModule) this.env).getModuleNamespace();
        if (moduleNamespace != null && !moduleNamespace.equals(uri)) {
            grumble("A function in a library module must be in the module namespace", "XQST0048");
        }
        if (isReservedInQuery(uri)) {
            grumble("The function name " + this.f99997t.currentTokenValue + " is in a reserved namespace", "XQST0045");
        }
        XQueryFunction xQueryFunction = new XQueryFunction();
        xQueryFunction.setFunctionName(makeStructuredQName);
        xQueryFunction.setResultType(SequenceType.ANY_SEQUENCE);
        xQueryFunction.setBody(null);
        xQueryFunction.setLocation(makeNestedLocation(this.env.getContainingLocation(), this.f99997t.getLineNumber(i), this.f99997t.getColumnNumber(i), null));
        xQueryFunction.setStaticContext((QueryModule) this.env);
        xQueryFunction.setMemoFunction(this.f101099g);
        xQueryFunction.setUpdating(annotationList.includes(Annotation.UPDATING));
        xQueryFunction.setAnnotations(annotationList);
        nextToken();
        HashSet hashSet = new HashSet(8);
        if (this.f99997t.currentToken != 204) {
            while (true) {
                expect(21);
                nextToken();
                expect(201);
                StructuredQName makeStructuredQName2 = makeStructuredQName(this.f99997t.currentTokenValue, "");
                if (hashSet.contains(makeStructuredQName2)) {
                    grumble("Duplicate parameter name " + Err.wrap(this.f99997t.currentTokenValue, 5), "XQST0039");
                }
                hashSet.add(makeStructuredQName2);
                SequenceType sequenceType = SequenceType.ANY_SEQUENCE;
                nextToken();
                if (this.f99997t.currentToken == 71) {
                    nextToken();
                    sequenceType = parseSequenceType();
                }
                UserFunctionParameter userFunctionParameter = new UserFunctionParameter();
                userFunctionParameter.setRequiredType(sequenceType);
                userFunctionParameter.setVariableQName(makeStructuredQName2);
                xQueryFunction.addArgument(userFunctionParameter);
                declareRangeVariable(userFunctionParameter);
                int i2 = this.f99997t.currentToken;
                if (i2 == 204) {
                    break;
                }
                if (i2 == 7) {
                    nextToken();
                } else {
                    grumble("Expected ',' or ')' after function argument, found '" + Token.tokens[this.f99997t.currentToken] + Chars.QUOTE);
                }
            }
        }
        this.f99997t.setState(1);
        nextToken();
        if (this.f99997t.currentToken == 71) {
            if (xQueryFunction.isUpdating()) {
                grumble("Cannot specify a return type for an updating function", "XUST0028");
            }
            this.f99997t.setState(2);
            nextToken();
            xQueryFunction.setResultType(parseSequenceType());
        }
        if (!isKeyword("external")) {
            expect(59);
            this.f99997t.setState(0);
            nextToken();
            if (this.f99997t.currentToken == 215) {
                Expression makeEmptySequence = Literal.makeEmptySequence();
                makeEmptySequence.setRetainedStaticContext(this.env.makeRetainedStaticContext());
                setLocation(makeEmptySequence);
                xQueryFunction.setBody(makeEmptySequence);
            } else {
                Expression parseExpression = parseExpression();
                xQueryFunction.setBody(parseExpression);
                ExpressionTool.setDeepRetainedStaticContext(parseExpression, this.env.makeRetainedStaticContext());
            }
            expect(215);
            lookAhead();
            z = false;
        }
        for (UserFunctionParameter userFunctionParameter2 : xQueryFunction.getParameterDefinitions()) {
            undeclareRangeVariable();
        }
        this.f99997t.setState(0);
        nextToken();
        QueryModule queryModule = (QueryModule) this.env;
        if (z) {
            this.parserExtension.handleExternalFunctionDeclaration(this, xQueryFunction);
        } else {
            try {
                queryModule.declareFunction(xQueryFunction);
            } catch (XPathException e) {
                grumble(e.getMessage(), e.getErrorCodeQName(), -1);
            }
        }
        this.f101099g = false;
    }

    public final void parseLibraryModule(String str, QueryModule queryModule) throws XPathException {
        this.env = queryModule;
        Configuration configuration = queryModule.getConfiguration();
        this.charChecker = configuration.getValidCharacterChecker();
        String m63497N = configuration.getXMLVersion() == 10 ? m63497N(str) : m63498O(str);
        Executable executable = queryModule.getExecutable();
        if (executable == null) {
            throw new IllegalStateException("Query library module has no associated Executable");
        }
        this.executable = executable;
        Tokenizer tokenizer = new Tokenizer();
        this.f99997t = tokenizer;
        tokenizer.languageLevel = this.languageVersion;
        boolean z = true;
        tokenizer.isXQuery = true;
        setQNameParser(new QNameParser(queryModule.getLiveNamespaceResolver()).withAcceptEQName(true).withUnescaper(new Unescaper(configuration.getValidCharacterChecker())));
        try {
            this.f99997t.tokenize(m63497N, 0, -1);
        } catch (XPathException e) {
            grumble(e.getMessage());
        }
        m63512H0();
        Tokenizer tokenizer2 = this.f99997t;
        if (!this.allowXPath40Syntax && !queryModule.getConfiguration().getBooleanProperty(Feature.ALLOW_SYNTAX_EXTENSIONS)) {
            z = false;
        }
        tokenizer2.allowSaxonExtensions = z;
        this.allowXPath40Syntax = z;
        int i = this.f99997t.currentToken;
        if (i != 101) {
            if (i == 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("The file imported for module ");
                sb.append(queryModule.getModuleNamespace());
                sb.append(m63497N.trim().length() == 0 ? " is empty" : " has no significant content");
                grumble(sb.toString());
            } else {
                grumble("The file imported for module " + queryModule.getModuleNamespace() + " is not a valid XQuery library module. The content starts: " + Err.truncate30(StringView.m63901of(m63497N.substring(this.f99997t.currentTokenStartOffset))));
            }
        }
        m63551l0();
        m63563x0();
        m63516J0();
        if (this.f99997t.currentToken != 0) {
            grumble("Unrecognized content found after the variable and function declarations in a library module");
        }
        if (this.f101101i == 0) {
            return;
        }
        XPathException xPathException = new XPathException("Static errors were reported in the imported library module");
        xPathException.setErrorCodeQName(this.f101102j.getErrorCodeQName());
        throw xPathException;
    }

    public void parseOutputDeclaration(StructuredQName structuredQName, String str) throws XPathException {
        if (!((QueryModule) this.env).isMainModule()) {
            grumble("Output declarations must not appear in a library module", "XQST0108");
        }
        String localPart = structuredQName.getLocalPart();
        if (this.f101097A.contains(structuredQName)) {
            grumble("Duplicate output declaration (" + structuredQName + MotionUtils.f31762d, "XQST0110");
        }
        this.f101097A.add(structuredQName);
        localPart.hashCode();
        if (!localPart.equals(SaxonOutputKeys.PARAMETER_DOCUMENT)) {
            if (localPart.equals(SaxonOutputKeys.USE_CHARACTER_MAPS)) {
                grumble("Output declaration use-character-maps cannot appear except in a parameter file", "XQST0109");
                return;
            } else {
                ResultDocument.setSerializationProperty(getExecutable().getPrimarySerializationProperties().getProperties(), "", localPart, str, this.env.getNamespaceResolver(), false, this.env.getConfiguration());
                return;
            }
        }
        Configuration configuration = this.env.getConfiguration();
        ResourceRequest resourceRequest = new ResourceRequest();
        resourceRequest.relativeUri = str;
        resourceRequest.baseUri = this.env.getStaticBaseURI();
        try {
            resourceRequest.uri = ResolveURI.makeAbsolute(str, this.env.getStaticBaseURI()).toString();
            resourceRequest.nature = "http://www.w3.org/2010/xslt-xquery-serialization";
            resourceRequest.purpose = "serialization";
            Source resolve = resourceRequest.resolve(configuration.getResourceResolver(), new DirectResourceResolver(configuration));
            ParseOptions parseOptions = new ParseOptions();
            parseOptions.setSchemaValidationMode(2);
            parseOptions.setDTDValidationMode(4);
            TreeInfo buildDocumentTree = configuration.buildDocumentTree(resolve);
            SerializationParamsHandler serializationParamsHandler = new SerializationParamsHandler(this.f101098B);
            serializationParamsHandler.setSerializationParams(buildDocumentTree.getRootNode());
            CharacterMap characterMap = serializationParamsHandler.getCharacterMap();
            if (characterMap != null) {
                CharacterMapIndex characterMapIndex = new CharacterMapIndex();
                characterMapIndex.putCharacterMap(characterMap.getName(), characterMap);
                getExecutable().setCharacterMapIndex(characterMapIndex);
                this.f101098B.setProperty(SaxonOutputKeys.USE_CHARACTER_MAPS, characterMap.getName().getClarkName());
            }
        } catch (URISyntaxException e) {
            throw XPathException.makeXPathException(e);
        }
    }

    public void parseRevalidationDeclaration() throws XPathException {
        grumble("declare revalidation is allowed only in XQuery Update");
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public Expression parseStringConstructor() throws XPathException {
        boolean z;
        int i = this.f99997t.currentTokenStartOffset;
        if (!this.allowXPath31Syntax) {
            throw new XPathException("String constructor expressions require XQuery 3.1");
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new StringLiteral(this.f99997t.currentTokenValue));
        this.f99997t.next();
        do {
            z = true;
            if (this.f99997t.currentToken == 215) {
                arrayList.add(new StringLiteral(StringValue.EMPTY_STRING));
            } else {
                arrayList.add(SystemFunction.makeCall("string-join", this.env.makeRetainedStaticContext(), parseExpression(), new StringLiteral(" ")));
            }
            if (this.f99997t.currentToken != 215) {
                grumble("Expected '}' after enclosed expression in string constructor");
            }
            StringBuilder sb = new StringBuilder(256);
            if (this.f99997t.nextChar() != '`') {
                grumble("Expected '}`' after enclosed expression in string constructor");
            }
            char c = 0;
            char c2 = 0;
            while (true) {
                char nextChar = this.f99997t.nextChar();
                if (nextChar == 0) {
                    grumble("Reached end of input while reading string constructor");
                }
                if (c != '`' || nextChar != '{') {
                    if (c2 == ']' && c == '`' && nextChar == '`') {
                        sb.setLength(sb.length() - 2);
                        arrayList.add(new StringLiteral(sb.toString()));
                        this.f99997t.lookAhead();
                        this.f99997t.next();
                        z = false;
                        break;
                    }
                    sb.append(nextChar);
                    c2 = c;
                    c = nextChar;
                } else {
                    sb.setLength(sb.length() - 1);
                    arrayList.add(new StringLiteral(sb.toString()));
                    this.f99997t.lookAhead();
                    this.f99997t.next();
                    if (this.f99997t.currentToken != 215) {
                        break;
                    }
                    arrayList.add(Literal.makeEmptySequence());
                    sb.setLength(0);
                }
            }
        } while (z);
        Expression makeCall = SystemFunction.makeCall(Keywords.FUNC_CONCAT_STRING, this.env.makeRetainedStaticContext(), (Expression[]) arrayList.toArray(new Expression[0]));
        setLocation(makeCall, i);
        return makeCall;
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public Expression parseSwitchExpression() throws XPathException {
        int i = this.f99997t.currentTokenStartOffset;
        nextToken();
        Expression parseExpression = parseExpression();
        expect(204);
        nextToken();
        ArrayList arrayList = new ArrayList(10);
        ArrayList arrayList2 = new ArrayList(10);
        LetExpression makeLetExpression = makeLetExpression();
        makeLetExpression.setRequiredType(SequenceType.OPTIONAL_ATOMIC);
        makeLetExpression.setVariableQName(new StructuredQName("zz", NamespaceConstant.SAXON, "zz_switchVar"));
        makeLetExpression.setSequence(Atomizer.makeAtomizer(parseExpression, null));
        do {
            ArrayList arrayList3 = new ArrayList(4);
            expect(67);
            do {
                nextToken();
                arrayList3.add(parseExprSingle());
            } while (this.f99997t.currentToken == 67);
            expect(25);
            nextToken();
            Expression parseExprSingle = parseExprSingle();
            for (int i2 = 0; i2 < arrayList3.size(); i2++) {
                EquivalenceComparison equivalenceComparison = new EquivalenceComparison(new LocalVariableReference(makeLetExpression), 50, (Expression) arrayList3.get(i2));
                if (i2 == 0) {
                    arrayList.add(equivalenceComparison);
                    arrayList2.add(parseExprSingle);
                } else {
                    arrayList.add(new OrExpression((Expression) arrayList.remove(arrayList.size() - 1), equivalenceComparison));
                }
            }
        } while (this.f99997t.currentToken == 67);
        expect(212);
        nextToken();
        expect(25);
        nextToken();
        Expression parseExprSingle2 = parseExprSingle();
        arrayList.add(Literal.makeLiteral(BooleanValue.TRUE));
        arrayList2.add(parseExprSingle2);
        makeLetExpression.setAction(new Choose((Expression[]) arrayList.toArray(new Expression[0]), (Expression[]) arrayList2.toArray(new Expression[arrayList.size()])));
        return makeTracer(makeLetExpression, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ce A[EDGE_INSN: B:46:0x00ce->B:30:0x00ce BREAK  A[LOOP:1: B:13:0x0049->B:45:?], SYNTHETIC] */
    @Override // net.p110sf.saxon.expr.parser.XPathParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.expr.Expression parseTryCatchExpression() throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.query.XQueryParser.parseTryCatchExpression():net.sf.saxon.expr.Expression");
    }

    public void parseTypeAliasDeclaration() throws XPathException {
        this.parserExtension.parseTypeAliasDeclaration(this);
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public Expression parseTypeswitchExpression() throws XPathException {
        Expression makeTracer;
        List<SequenceType> m63500B0;
        Expression makeTracer2;
        int i = this.f99997t.currentTokenStartOffset;
        nextToken();
        Expression parseExpression = parseExpression();
        ArrayList arrayList = new ArrayList(10);
        ArrayList arrayList2 = new ArrayList(10);
        expect(204);
        nextToken();
        LetExpression makeLetExpression = makeLetExpression();
        makeLetExpression.setRequiredType(SequenceType.ANY_SEQUENCE);
        makeLetExpression.setVariableQName(new StructuredQName("zz", NamespaceConstant.SAXON, "zz_typeswitchVar"));
        makeLetExpression.setSequence(parseExpression);
        while (true) {
            Tokenizer tokenizer = this.f99997t;
            if (tokenizer.currentToken != 67) {
                break;
            }
            int i2 = tokenizer.currentTokenStartOffset;
            nextToken();
            if (this.f99997t.currentToken == 21) {
                nextToken();
                expect(201);
                StructuredQName makeStructuredQName = makeStructuredQName(this.f99997t.currentTokenValue, "");
                nextToken();
                expect(71);
                nextToken();
                m63500B0 = m63500B0();
                makeTracer2 = makeTracer(m63508F0(makeStructuredQName, makeLetExpression), makeStructuredQName);
                if (makeTracer2 instanceof TraceExpression) {
                    ((TraceExpression) makeTracer2).setProperty("type", m63500B0.get(0).toString());
                }
            } else {
                m63500B0 = m63500B0();
                makeTracer2 = makeTracer(parseExprSingle(), null);
                if (makeTracer2 instanceof TraceExpression) {
                    ((TraceExpression) makeTracer2).setProperty("type", m63500B0.get(0).toString());
                }
            }
            arrayList.add(m63500B0);
            arrayList2.add(makeTracer2);
        }
        if (arrayList.isEmpty()) {
            grumble("At least one case clause is required in a typeswitch");
        }
        expect(212);
        int i3 = this.f99997t.currentTokenStartOffset;
        nextToken();
        Tokenizer tokenizer2 = this.f99997t;
        if (tokenizer2.currentToken == 21) {
            nextToken();
            expect(201);
            StructuredQName makeStructuredQName2 = makeStructuredQName(this.f99997t.currentTokenValue, "");
            nextToken();
            expect(25);
            nextToken();
            makeTracer = makeTracer(m63508F0(makeStructuredQName2, makeLetExpression), makeStructuredQName2);
        } else {
            tokenizer2.treatCurrentAsOperator();
            expect(25);
            nextToken();
            makeTracer = makeTracer(parseExprSingle(), null);
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            LocalVariableReference localVariableReference = new LocalVariableReference(makeLetExpression);
            setLocation(localVariableReference);
            Expression instanceOfExpression = new InstanceOfExpression(localVariableReference, (SequenceType) ((List) arrayList.get(size)).get(0));
            int i4 = 1;
            while (i4 < ((List) arrayList.get(size)).size()) {
                OrExpression orExpression = new OrExpression(instanceOfExpression, new InstanceOfExpression(localVariableReference.copy(new RebindingMap()), (SequenceType) ((List) arrayList.get(size)).get(i4)));
                i4++;
                instanceOfExpression = orExpression;
            }
            setLocation(instanceOfExpression);
            makeTracer = Choose.makeConditional(instanceOfExpression, (Expression) arrayList2.get(size), makeTracer);
            setLocation(makeTracer);
        }
        makeLetExpression.setAction(makeTracer);
        return makeTracer(makeLetExpression, null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0087  */
    @Override // net.p110sf.saxon.expr.parser.XPathParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.expr.Expression parseValidateExpression() throws net.p110sf.saxon.trans.XPathException {
        /*
            r12 = this;
            net.sf.saxon.expr.parser.Tokenizer r0 = r12.f99997t
            int r0 = r0.currentTokenStartOffset
            java.lang.String r0 = "validate expression"
            r12.ensureSchemaAware(r0)
            net.sf.saxon.expr.parser.Tokenizer r0 = r12.f99997t
            int r1 = r0.currentToken
            r2 = 8
            r3 = 60
            r4 = 1
            r5 = 0
            if (r1 == r3) goto L78
            r0 = 0
            switch(r1) {
                case 103: goto L74;
                case 104: goto L6e;
                case 105: goto L1d;
                default: goto L19;
            }
        L19:
            r9 = r4
        L1a:
            r10 = r5
            goto L85
        L1d:
            r12.nextToken()
            r12.expect(r3)
            net.sf.saxon.expr.parser.Tokenizer r0 = r12.f99997t
            java.lang.String r0 = r0.currentTokenValue
            net.sf.saxon.z.IntIterator r0 = net.p110sf.saxon.str.StringTool.codePoints(r0)
            boolean r0 = net.p110sf.saxon.om.NameChecker.isQName(r0)
            if (r0 != 0) goto L36
            java.lang.String r0 = "Schema type name expected after 'validate type"
            r12.grumble(r0)
        L36:
            net.sf.saxon.expr.StaticContext r0 = r12.env
            net.sf.saxon.Configuration r0 = r0.getConfiguration()
            net.sf.saxon.expr.parser.Tokenizer r1 = r12.f99997t
            java.lang.String r1 = r1.currentTokenValue
            net.sf.saxon.expr.StaticContext r3 = r12.env
            java.lang.String r3 = r3.getDefaultElementNamespace()
            net.sf.saxon.om.StructuredQName r1 = r12.makeStructuredQName(r1, r3)
            net.sf.saxon.type.SchemaType r0 = r0.getSchemaType(r1)
            if (r0 != 0) goto L6a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "Unknown schema type "
            r1.append(r3)
            net.sf.saxon.expr.parser.Tokenizer r3 = r12.f99997t
            java.lang.String r3 = r3.currentTokenValue
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            java.lang.String r3 = "XQST0104"
            r12.grumble(r1, r3)
        L6a:
            r10 = r0
            r9 = r2
            r0 = r4
            goto L85
        L6e:
            r12.nextToken()
            r1 = 2
            r9 = r1
            goto L1a
        L74:
            r12.nextToken()
            goto L19
        L78:
            java.lang.String r0 = r0.currentTokenValue
            java.lang.String r1 = "validate"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lc3
            r0 = r4
            r9 = r0
            goto L1a
        L85:
            if (r0 != 0) goto L8c
            r0 = 59
            r12.expect(r0)
        L8c:
            r12.nextToken()
            net.sf.saxon.expr.Expression r7 = r12.parseExpression()
            boolean r0 = r7 instanceof net.p110sf.saxon.expr.instruct.ParentNodeConstructor
            if (r0 == 0) goto La2
            r0 = r7
            net.sf.saxon.expr.instruct.ParentNodeConstructor r0 = (net.p110sf.saxon.expr.instruct.ParentNodeConstructor) r0
            if (r9 != r2) goto L9d
            goto L9e
        L9d:
            r10 = r5
        L9e:
            r0.setValidationAction(r9, r10)
            goto Lb1
        La2:
            net.sf.saxon.expr.instruct.CopyOf r0 = new net.sf.saxon.expr.instruct.CopyOf
            r8 = 1
            r11 = 1
            r6 = r0
            r6.<init>(r7, r8, r9, r10, r11)
            r12.setLocation(r0)
            r0.setRequireDocumentOrElement(r4)
            r7 = r0
        Lb1:
            r0 = 215(0xd7, float:3.01E-43)
            r12.expect(r0)
            net.sf.saxon.expr.parser.Tokenizer r0 = r12.f99997t
            r0.lookAhead()
            r12.nextToken()
            net.sf.saxon.expr.Expression r12 = r12.makeTracer(r7, r5)
            return r12
        Lc3:
            java.lang.AssertionError r12 = new java.lang.AssertionError
            java.lang.String r0 = "shouldn't be parsing a validate expression"
            r12.<init>(r0)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.query.XQueryParser.parseValidateExpression():net.sf.saxon.expr.Expression");
    }

    /* renamed from: q0 */
    public final Expression m63556q0(int i) throws XPathException {
        Expression expression;
        String str = this.f99997t.currentTokenValue;
        String str2 = str.equalsIgnoreCase("xml") ? "A processing instruction must not be named 'xml' in any combination of upper and lower case" : null;
        if (!NameChecker.isValidNCName(str)) {
            grumble("Invalid processing instruction name " + Err.wrap(str));
        }
        StringLiteral stringLiteral = new StringLiteral(str);
        nextToken();
        if (this.f99997t.currentToken != 215) {
            expression = parseExpression();
            expect(215);
        } else {
            expression = null;
        }
        lookAhead();
        nextToken();
        if (str2 != null) {
            warning(str2);
            return new ErrorExpression(str2, "XQDY0064", false);
        }
        ProcessingInstruction processingInstruction = new ProcessingInstruction(stringLiteral);
        makeSimpleContent(expression, processingInstruction, i);
        return makeTracer(processingInstruction, null);
    }

    /* renamed from: r0 */
    public final Expression m63557r0(int i) throws XPathException {
        Expression expression;
        if (!this.allowXPath30Syntax) {
            grumble("Namespace node constructors require XQuery 3.0");
        }
        nextToken();
        Expression parseExpression = parseExpression();
        expect(215);
        lookAhead();
        nextToken();
        expect(59);
        this.f99997t.setState(0);
        nextToken();
        if (this.f99997t.currentToken != 215) {
            expression = parseExpression();
            expect(215);
        } else {
            expression = null;
        }
        lookAhead();
        nextToken();
        SimpleNodeConstructor namespaceConstructor = new NamespaceConstructor(parseExpression);
        setLocation(namespaceConstructor);
        makeSimpleContent(expression, namespaceConstructor, i);
        return makeTracer(namespaceConstructor, null);
    }

    public String readCollationName() throws XPathException {
        nextToken();
        expect(202);
        String uriLiteral = uriLiteral(this.f99997t.currentTokenValue);
        try {
            URI uri = new URI(uriLiteral);
            if (!uri.isAbsolute()) {
                uriLiteral = new URI(this.env.getStaticBaseURI()).resolve(uri).toString();
            }
        } catch (URISyntaxException unused) {
            grumble("Collation name '" + uriLiteral + "' is not a valid URI", "XQST0046");
            uriLiteral = NamespaceConstant.CODEPOINT_COLLATION_URI;
        }
        nextToken();
        return uriLiteral;
    }

    /* renamed from: s0 */
    public final void m63558s0() throws XPathException {
        nextToken();
        expect(201);
        String str = this.f99997t.currentTokenValue;
        if (!NameChecker.isValidNCName(str)) {
            grumble("Invalid namespace prefix " + Err.wrap(str));
        }
        nextToken();
        expect(6);
        nextToken();
        expect(202);
        String uriLiteral = uriLiteral(this.f99997t.currentTokenValue);
        m63511H(str, uriLiteral);
        if ("xml".equals(str)) {
            grumble("Namespace prefix 'xml' cannot be declared", "XQST0070");
        }
        try {
            ((QueryModule) this.env).declarePrologNamespace(str, uriLiteral);
        } catch (XPathException e) {
            e.setLocator(makeLocation());
            m63526P0(e);
        }
        nextToken();
    }

    public void setExecutable(Executable executable) {
        this.executable = executable;
    }

    public void setStreaming(boolean z) {
        this.f101100h = z;
    }

    /* renamed from: t0 */
    public final void m63559t0() throws XPathException {
        nextToken();
        expect(201);
        StructuredQName makeStructuredQName = makeStructuredQName(this.f99997t.currentTokenValue, NamespaceConstant.XQUERY);
        String uri = makeStructuredQName.getURI();
        if (uri.isEmpty()) {
            grumble("The QName identifying an option declaration must be prefixed", "XPST0081");
            return;
        }
        nextToken();
        expect(202);
        String str = unescape(this.f99997t.currentTokenValue).toString();
        if (!uri.equals("http://www.w3.org/2010/xslt-xquery-serialization")) {
            if (uri.equals(NamespaceConstant.SAXON)) {
                String localPart = makeStructuredQName.getLocalPart();
                localPart.hashCode();
                char c = 65535;
                switch (localPart.hashCode()) {
                    case -1005512447:
                        if (localPart.equals(Constants.ELEMNAME_OUTPUT_STRING)) {
                            c = 0;
                            break;
                        }
                        break;
                    case 1248797451:
                        if (localPart.equals("memo-function")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 1499379537:
                        if (localPart.equals("allow-cycles")) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        m63530R0(str);
                        break;
                    case 1:
                        String trim = str.trim();
                        trim.hashCode();
                        if (!trim.equals("true")) {
                            if (!trim.equals("false")) {
                                warning("Value of saxon:memo-function must be 'true' or 'false'");
                                break;
                            } else {
                                this.f101099g = false;
                                break;
                            }
                        } else {
                            this.f101099g = true;
                            if (this.env.getConfiguration().getEditionCode().equals("HE")) {
                                warning("saxon:memo-function option is ignored under Saxon-HE");
                                break;
                            }
                        }
                        break;
                    case 2:
                        warning("Value of saxon:allow-cycles is ignored");
                        break;
                    default:
                        warning("Unknown Saxon option declaration: " + makeStructuredQName.getDisplayName());
                        break;
                }
            }
        } else {
            parseOutputDeclaration(makeStructuredQName, str);
        }
        nextToken();
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public void testPermittedAxis(int i, String str) throws XPathException {
        super.testPermittedAxis(i, str);
        if (i == 8 && this.language == XPathParser.ParsedLanguage.XQUERY) {
            grumble("The namespace axis is not available in XQuery", str);
        }
    }

    /* renamed from: u0 */
    public final void m63560u0() throws XPathException {
        if (this.f101105m) {
            grumble("ordering mode declaration appears more than once", "XQST0065");
        }
        this.f101105m = true;
        nextToken();
        expect(201);
        if (!"ordered".equals(this.f99997t.currentTokenValue) && !"unordered".equals(this.f99997t.currentTokenValue)) {
            grumble("ordering mode must be 'ordered' or 'unordered'");
        }
        nextToken();
    }

    @Override // net.p110sf.saxon.expr.parser.XPathParser
    public String unescape(String str) throws XPathException {
        return new Unescaper(this.env.getConfiguration().getValidCharacterChecker()).unescape(str);
    }

    public String uriLiteral(String str) throws XPathException {
        return Whitespace.collapse(unescape(str)).toString();
    }

    /* renamed from: v0 */
    public final Expression m63561v0() throws XPathException {
        String substring;
        String str;
        StringBuilder sb = new StringBuilder(64);
        int i = -1;
        while (!sb.toString().endsWith("?>")) {
            char nextChar = this.f99997t.nextChar();
            if (nextChar == 0) {
                grumble("Found end of input while reading processing instruction constructor");
            }
            if (i < 0 && " \t\r\n".indexOf(nextChar) >= 0) {
                i = sb.length();
            }
            sb.append(nextChar);
        }
        sb.setLength(sb.length() - 2);
        if (i < 0) {
            str = sb.toString();
            substring = "";
        } else {
            String substring2 = sb.toString().substring(0, i);
            do {
                i++;
                if (i >= sb.length()) {
                    break;
                }
            } while (" \t\r\n".indexOf(sb.charAt(i)) >= 0);
            substring = sb.toString().substring(i);
            str = substring2;
        }
        if (!NameChecker.isValidNCName(str)) {
            grumble("Invalid processing instruction name " + Err.wrap(str));
        }
        if (str.equalsIgnoreCase("xml")) {
            grumble("A processing instruction must not be named 'xml' in any combination of upper and lower case");
        }
        ProcessingInstruction processingInstruction = new ProcessingInstruction(new StringLiteral(str));
        processingInstruction.setSelect(new StringLiteral(substring));
        setLocation(processingInstruction);
        return processingInstruction;
    }

    /* renamed from: w0 */
    public final Expression m63562w0(int i) throws XPathException {
        Expression expression;
        nextToken();
        Expression parseExpression = parseExpression();
        expect(215);
        lookAhead();
        nextToken();
        expect(59);
        this.f99997t.setState(0);
        nextToken();
        if (this.f99997t.currentToken != 215) {
            expression = parseExpression();
            expect(215);
        } else {
            expression = null;
        }
        lookAhead();
        nextToken();
        ProcessingInstruction processingInstruction = new ProcessingInstruction(parseExpression);
        makeSimpleContent(expression, processingInstruction, i);
        return makeTracer(processingInstruction, null);
    }

    /* renamed from: x0 */
    public final void m63563x0() throws XPathException {
        char c;
        boolean z = true;
        boolean z2 = true;
        while (true) {
            try {
                if (this.f99997t.currentToken == 101) {
                    if (((QueryModule) this.env).getModuleNamespace() == null) {
                        grumble("Module declaration must not be used in a main module");
                    } else {
                        grumble("Module declaration appears more than once");
                    }
                    if (!z) {
                        grumble("Module declaration must precede other declarations in the query prolog");
                    }
                }
                z = false;
                int i = this.f99997t.currentToken;
                if (i != 0) {
                    switch (i) {
                        case 90:
                            if (!z2) {
                                grumble("Namespace declarations cannot follow variables, functions, or options");
                            }
                            m63558s0();
                            break;
                        case 91:
                            nextToken();
                            expect(201);
                            String str = this.f99997t.currentTokenValue;
                            switch (str.hashCode()) {
                                case -1662836996:
                                    if (str.equals("element")) {
                                        c = 0;
                                        break;
                                    }
                                    break;
                                case 106006350:
                                    if (str.equals(Constants.ATTRNAME_ORDER)) {
                                        c = 3;
                                        break;
                                    }
                                    break;
                                case 1380938712:
                                    if (str.equals(Constants.EXSLT_ELEMNAME_FUNCTION_STRING)) {
                                        c = 1;
                                        break;
                                    }
                                    break;
                                case 1692344819:
                                    if (str.equals(Constants.ELEMNAME_DECIMALFORMAT_STRING)) {
                                        c = 4;
                                        break;
                                    }
                                    break;
                                case 1880293257:
                                    if (str.equals("collation")) {
                                        c = 2;
                                        break;
                                    }
                                    break;
                            }
                            c = 65535;
                            if (c == 0) {
                                if (!z2) {
                                    grumble("Namespace declarations cannot follow variables, functions, or options");
                                }
                                m63543d0();
                                break;
                            } else if (c == 1) {
                                if (!z2) {
                                    grumble("Namespace declarations cannot follow variables, functions, or options");
                                }
                                m63544e0();
                                break;
                            } else if (c == 2) {
                                if (!z2) {
                                    grumble("Collation declarations must appear earlier in the prolog");
                                }
                                m63541b0();
                                break;
                            } else if (c == 3) {
                                if (!z2) {
                                    grumble("Order declarations must appear earlier in the prolog");
                                }
                                m63545f0();
                                break;
                            } else if (c == 4) {
                                nextToken();
                                m63542c0();
                                break;
                            } else {
                                grumble("After 'declare default', expected 'element', 'function', or 'collation'");
                                break;
                            }
                            break;
                        case 92:
                            if (!z2) {
                                grumble("'declare construction' must appear earlier in the query prolog");
                            }
                            m63535V();
                            break;
                        case 93:
                            if (!z2) {
                                grumble("'declare base-uri' must appear earlier in the query prolog");
                            }
                            m63525P();
                            break;
                        case 94:
                            if (!z2) {
                                grumble("'declare boundary-space' must appear earlier in the query prolog");
                            }
                            m63527Q();
                            break;
                        case 95:
                            if (!z2) {
                                grumble("'declare decimal-format' must appear earlier in the query prolog");
                            }
                            m63539Z();
                            break;
                        case 96:
                            if (!z2) {
                                grumble("Import schema must appear earlier in the prolog");
                            }
                            m63499A0();
                            break;
                        case 97:
                            if (!z2) {
                                grumble("Import module must appear earlier in the prolog");
                            }
                            m63552m0();
                            break;
                        case 98:
                            if (z2) {
                                m63528Q0(this.f101115x, this.env.getConfiguration());
                                z2 = false;
                            }
                            m63516J0();
                            m63510G0(AnnotationList.EMPTY);
                            break;
                        case 99:
                            if (z2) {
                                m63528Q0(this.f101115x, this.env.getConfiguration());
                                z2 = false;
                            }
                            m63516J0();
                            m63536W();
                            break;
                        case 100:
                            if (z2) {
                                m63528Q0(this.f101115x, this.env.getConfiguration());
                                z2 = false;
                            }
                            m63516J0();
                            parseFunctionDeclaration(AnnotationList.EMPTY);
                            break;
                        default:
                            switch (i) {
                                case 107:
                                    if (!z2) {
                                        grumble("'declare ordering' must appear earlier in the query prolog");
                                    }
                                    m63560u0();
                                    break;
                                case 108:
                                    if (!z2) {
                                        grumble("'declare copy-namespaces' must appear earlier in the query prolog");
                                    }
                                    m63537X();
                                    break;
                                case 109:
                                    if (z2) {
                                        m63528Q0(this.f101115x, this.env.getConfiguration());
                                        z2 = false;
                                    }
                                    m63559t0();
                                    break;
                                case 110:
                                    if (!z2) {
                                        grumble("'declare revalidation' must appear earlier in the query prolog");
                                    }
                                    this.parserExtension.parseRevalidationDeclaration(this);
                                    break;
                                default:
                                    switch (i) {
                                        case 122:
                                            nextToken();
                                            if (!isKeyword(Constants.EXSLT_ELEMNAME_FUNCTION_STRING)) {
                                                grumble("expected 'function' after 'declare updating");
                                            }
                                            if (z2) {
                                                m63528Q0(this.f101115x, this.env.getConfiguration());
                                                z2 = false;
                                            }
                                            m63516J0();
                                            this.parserExtension.parseUpdatingFunctionDeclaration(this);
                                            break;
                                        case 123:
                                            m63516J0();
                                            if (z2) {
                                                m63528Q0(this.f101115x, this.env.getConfiguration());
                                                z2 = false;
                                            }
                                            nextToken();
                                            expect(106);
                                            AnnotationList parseAnnotationsList = parseAnnotationsList();
                                            if (!isKeyword(Constants.EXSLT_ELEMNAME_FUNCTION_STRING)) {
                                                if (!isKeyword(Constants.ELEMNAME_VARIABLE_STRING)) {
                                                    grumble("Annotations can appear only in 'declare variable' and 'declare function'");
                                                    break;
                                                } else {
                                                    parseAnnotationsList.check(this.env.getConfiguration(), "DV");
                                                    m63510G0(parseAnnotationsList);
                                                    break;
                                                }
                                            } else {
                                                parseAnnotationsList.check(this.env.getConfiguration(), "DF");
                                                parseFunctionDeclaration(parseAnnotationsList);
                                                break;
                                            }
                                        case 124:
                                            checkSyntaxExtensions("declare type");
                                            if (z2) {
                                                m63528Q0(this.f101115x, this.env.getConfiguration());
                                                z2 = false;
                                            }
                                            parseTypeAliasDeclaration();
                                            break;
                                        default:
                                            return;
                                    }
                            }
                    }
                } else if (((QueryModule) this.env).getModuleNamespace() != null) {
                    return;
                } else {
                    grumble("The main module must contain a query expression after any declarations in the prolog");
                }
                expect(149);
                nextToken();
            } catch (XPathException e) {
                if (e.getLocator() == null) {
                    e.setLocator(makeLocation());
                }
                if (!e.hasBeenReported()) {
                    this.f101101i++;
                    if (this.f101102j == null) {
                        this.f101102j = e;
                    }
                    m63526P0(e);
                }
                while (this.f99997t.currentToken != 149) {
                    nextToken();
                    Tokenizer tokenizer = this.f99997t;
                    int i2 = tokenizer.currentToken;
                    if (i2 == 0) {
                        return;
                    }
                    if (i2 == 215) {
                        tokenizer.lookAhead();
                    } else if (i2 == 217) {
                        m63564y0(true);
                    }
                }
                nextToken();
            }
        }
    }

    /* renamed from: y0 */
    public final Expression m63564y0(boolean z) throws XPathException {
        Expression m63529R;
        Tokenizer tokenizer = this.f99997t;
        int i = tokenizer.inputOffset;
        char nextChar = tokenizer.nextChar();
        if (nextChar == 0) {
            grumble("End of input encountered while parsing direct constructor");
            return new ErrorExpression();
        }
        if (nextChar == '!') {
            char nextChar2 = this.f99997t.nextChar();
            if (nextChar2 != '-') {
                if (nextChar2 == '[') {
                    grumble("A CDATA section is allowed only in element content");
                    return null;
                }
                grumble("Expected '--' or '[CDATA[' after '<!'");
                return null;
            }
            m63529R = m63529R();
        } else if (nextChar != '/') {
            if (nextChar != '?') {
                this.f99997t.unreadChar();
                m63529R = m63546g0(z);
            } else {
                m63529R = m63561v0();
            }
        } else {
            if (!z) {
                grumble("Unmatched XML end tag");
                return new ErrorExpression();
            }
            StringBuilder sb = new StringBuilder(16);
            while (true) {
                char nextChar3 = this.f99997t.nextChar();
                if (nextChar3 == '>') {
                    return new StringLiteral(sb.toString());
                }
                if (nextChar3 == 0) {
                    grumble("Expected '>' after '/'; found end of input");
                }
                sb.append(nextChar3);
            }
        }
        setLocation(m63529R, i);
        return m63529R;
    }

    /* renamed from: z0 */
    public final Expression m63565z0(String str, QueryModule queryModule) throws XPathException {
        Objects.requireNonNull(queryModule);
        this.env = queryModule;
        this.charChecker = queryModule.getConfiguration().getValidCharacterChecker();
        this.language = XPathParser.ParsedLanguage.XQUERY;
        Tokenizer tokenizer = new Tokenizer();
        this.f99997t = tokenizer;
        tokenizer.languageLevel = this.languageVersion;
        tokenizer.isXQuery = true;
        try {
            Objects.requireNonNull(str);
            tokenizer.tokenize(str, 0, -1);
        } catch (XPathException e) {
            grumble(e.getMessage());
        }
        m63512H0();
        Tokenizer tokenizer2 = this.f99997t;
        boolean z = this.allowXPath40Syntax || queryModule.getConfiguration().getBooleanProperty(Feature.ALLOW_SYNTAX_EXTENSIONS);
        tokenizer2.allowSaxonExtensions = z;
        this.allowXPath40Syntax = z;
        setQNameParser(new QNameParser(queryModule.getLiveNamespaceResolver()).withAcceptEQName(true).withUnescaper(new Unescaper(queryModule.getConfiguration().getValidCharacterChecker())));
        m63563x0();
        m63516J0();
        Expression makeTracer = makeTracer(parseExpression(), null);
        if (this.f99997t.currentToken != 0) {
            grumble("Unexpected token " + currentTokenDisplay() + " beyond end of query");
        }
        setLocation(makeTracer);
        ExpressionTool.setDeepRetainedStaticContext(makeTracer, queryModule.makeRetainedStaticContext());
        if (this.f101101i == 0) {
            return makeTracer;
        }
        XPathException xPathException = new XPathException("One or more static errors were reported during query analysis");
        xPathException.setHasBeenReported(true);
        xPathException.setErrorCodeQName(this.f101102j.getErrorCodeQName());
        throw xPathException;
    }
}
