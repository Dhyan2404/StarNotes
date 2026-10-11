package net.p110sf.saxon.style;

import com.caverock.androidsvg.SVGParser;
import com.google.android.material.motion.MotionUtils;
import com.google.firebase.installations.local.IidStore;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.w2n;
import java.math.BigDecimal;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import javax.xml.transform.SourceLocator;
import kotlinx.coroutines.DebugKt;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.ErrorExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.LetExpression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.instruct.Actor;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.ConditionalBlock;
import net.p110sf.saxon.expr.instruct.SequenceInstr;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.instruct.ValueOf;
import net.p110sf.saxon.expr.instruct.WithParam;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.expr.parser.XPathParser;
import net.p110sf.saxon.expr.sort.SortKeyDefinition;
import net.p110sf.saxon.expr.sort.SortKeyDefinitionList;
import net.p110sf.saxon.functions.Current;
import net.p110sf.saxon.functions.registry.VendorFunctionSetHE;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.lib.Validation;
import net.p110sf.saxon.ma.arrays.ArrayFunctionSet;
import net.p110sf.saxon.om.Action;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.QNameException;
import net.p110sf.saxon.om.QNameParser;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.BasePatternWithPredicate;
import net.p110sf.saxon.pattern.NodeTestPattern;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.pattern.PatternThatSetsCurrent;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.s9api.XmlProcessingError;
import net.p110sf.saxon.style.SourceBinding;
import net.p110sf.saxon.style.StyleElement;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.trans.XmlProcessingIncident;
import net.p110sf.saxon.tree.AttributeLocation;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.NodeListIterator;
import net.p110sf.saxon.tree.linked.ElementImpl;
import net.p110sf.saxon.tree.linked.NodeImpl;
import net.p110sf.saxon.tree.linked.TextImpl;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.type.BuiltInType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.ValidationFailure;
import net.p110sf.saxon.value.BigDecimalValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.Whitespace;
import org.apache.poi.ss.util.CellUtil;

/* loaded from: classes11.dex */
public abstract class StyleElement extends ElementImpl {
    public static final int ACTION_COMPILE = 2;
    public static final int ACTION_FIXUP = 16;
    public static final int ACTION_OPTIMIZE = 8;
    public static final int ACTION_PROCESS_ATTRIBUTES = 32;
    public static final int ACTION_TYPECHECK = 4;
    public static final int ACTION_VALIDATE = 1;
    public static final String[] YES_NO = {"0", "1", "false", SVGParser.f16048t, "true", "yes"};

    /* renamed from: t */
    public static final /* synthetic */ boolean f101803t = false;
    protected StructuredQName defaultMode;

    /* renamed from: o */
    public StructuredQName f101805o;

    /* renamed from: p */
    public String f101806p;

    /* renamed from: q */
    public Compilation f101807q;
    protected String[] extensionNamespaces = null;

    /* renamed from: n */
    public String[] f101804n = null;
    protected int version = -1;
    protected ExpressionContext staticContext = null;
    protected XmlProcessingIncident validationError = null;
    protected OnFailure reportingCircumstances = OnFailure.REPORT_ALWAYS;
    protected String defaultXPathNamespace = null;
    protected String defaultCollationName = null;
    protected boolean expandText = false;

    /* renamed from: r */
    public Loc f101808r = null;

    /* renamed from: s */
    public int f101809s = 0;
    protected int actionsCompleted = 0;

    /* loaded from: classes11.dex */
    public enum OnFailure {
        REPORT_ALWAYS,
        REPORT_UNLESS_FORWARDS_COMPATIBLE,
        REPORT_IF_INSTANTIATED,
        REPORT_STATICALLY_UNLESS_FALLBACK_AVAILABLE,
        REPORT_DYNAMICALLY_UNLESS_FALLBACK_AVAILABLE,
        IGNORED_INSTRUCTION
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J */
    public /* synthetic */ void m63948J(PrincipalStylesheetModule principalStylesheetModule, StructuredQName structuredQName) throws XPathException {
        if (principalStylesheetModule.getRuleManager().obtainMode(structuredQName, false) != null) {
            return;
        }
        XPathException xPathException = new XPathException("Mode " + structuredQName.getDisplayName() + " is not declared in an xsl:mode declaration", "XTSE3085");
        xPathException.setLocation(this);
        throw xPathException;
    }

    public static boolean isNo(String str) {
        return SVGParser.f16048t.equals(str) || "false".equals(str) || "0".equals(str);
    }

    public static boolean isYes(String str) {
        return "yes".equals(str) || "true".equals(str) || "1".equals(str);
    }

    public static void setInstructionLocation(StyleElement styleElement, Expression expression) {
        if (expression.getLocation() == null || expression.getLocation() == Loc.NONE) {
            expression.setLocation(styleElement.saveLocation());
        }
    }

    /* renamed from: A */
    public int m63950A() {
        if (this.version == -1) {
            NodeImpl parent = getParent();
            if (!(parent instanceof StyleElement)) {
                return 20;
            }
            this.version = ((StyleElement) parent).m63950A();
        }
        return this.version;
    }

    /* renamed from: B */
    public StyleElement m63951B() {
        StyleElement styleElement;
        while (true) {
            for (NodeInfo nodeInfo : children()) {
                styleElement = nodeInfo instanceof StyleElement ? (StyleElement) nodeInfo : null;
            }
            return styleElement;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: C */
    public Component m63952C() {
        StyleElement m63983v;
        if (!(this instanceof StylesheetComponent)) {
            return null;
        }
        SymbolicName symbolicName = ((StylesheetComponent) this).getSymbolicName();
        StyleElement m63983v2 = m63983v(192);
        if (m63983v2 == null || (m63983v = m63983v2.m63983v(214)) == null) {
            return null;
        }
        return m63983v.getUsedPackage().getComponent(symbolicName);
    }

    /* renamed from: D */
    public StructuredQName[] m63953D(String str) {
        ArrayList arrayList = new ArrayList(4);
        StringTokenizer stringTokenizer = new StringTokenizer(str, " \t\n\r", false);
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(makeQName(stringTokenizer.nextToken(), "XTSE0710", Constants.ATTRNAME_USEATTRIBUTESETS));
        }
        return (StructuredQName[]) arrayList.toArray(new StructuredQName[0]);
    }

    /* renamed from: E */
    public Visibility m63954E(String str, String str2) {
        for (Visibility visibility : Visibility.values()) {
            if (visibility.toString().toLowerCase().equals(str) && ((str2.contains(C6999h.f39688c) || !str.equals(CellUtil.HIDDEN)) && (str2.contains("a") || !str.equals("absent")))) {
                return visibility;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("public|final|private|abstract");
        sb.append(str2.contains(C6999h.f39688c) ? "|hidden" : "");
        sb.append(str2.contains("a") ? "|absent" : "");
        invalidAttribute("visibility", sb.toString());
        return Visibility.UNDEFINED;
    }

    /* renamed from: F */
    public boolean m63955F(int i) {
        return (this.actionsCompleted & i) != 0;
    }

    /* renamed from: G */
    public boolean m63956G() {
        if (!isInstruction()) {
            return false;
        }
        for (NodeInfo parent = getParent(); (parent instanceof StyleElement) && ((StyleElement) parent).isInstruction(); parent = parent.getParent()) {
            if (parent instanceof XSLGeneralVariable) {
                return ((XSLGeneralVariable) parent).getAttributeValue("as") == null;
            }
            if ((parent instanceof XSLElement) || (parent instanceof LiteralResultElement) || (parent instanceof XSLDocument) || (parent instanceof XSLCopy)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [net.sf.saxon.om.NodeInfo] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* renamed from: H */
    public boolean m63957H(String str) {
        if (str.equals("http://www.w3.org/1999/XSL/Transform") || str.equals("http://www.w3.org/XML/1998/namespace")) {
            return true;
        }
        boolean isExtensionNamespace = isExtensionNamespace(str);
        if (isExtensionNamespace) {
            return true;
        }
        for (?? r2 = this; r2 instanceof StyleElement; r2 = r2.getParent()) {
            if (r2.m63979r(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: I */
    public boolean m63958I() {
        return this.expandText;
    }

    /* renamed from: K */
    public SequenceType m63959K(String str) throws XPathException {
        ExpressionContext staticContext = getStaticContext(new StructuredQName("saxon", NamespaceConstant.SAXON, "as"));
        XPathParser newExpressionParser = getConfiguration().newExpressionParser("XP", false, 40);
        newExpressionParser.setQNameParser(new QNameParser(this.staticContext.getNamespaceResolver()).withAcceptEQName(true).withErrorOnBadSyntax("XPST0003").withErrorOnUnresolvedPrefix("XPST0081"));
        return newExpressionParser.parseExtendedSequenceType(str, staticContext);
    }

    /* renamed from: L */
    public Pattern m63960L(String str, String str2) {
        try {
            Pattern make = Pattern.make(str, getStaticContext(new StructuredQName("", "", str2)), getCompilation().getPackageData());
            make.setLocation(allocateLocation());
            return make;
        } catch (XPathException e) {
            e.maybeSetErrorCode("XTSE0340");
            if ("XPST0003".equals(e.getErrorCodeLocalPart())) {
                e.setErrorCode("XTSE0340");
            }
            compileError(e);
            NodeTestPattern nodeTestPattern = new NodeTestPattern(AnyNodeTest.getInstance());
            nodeTestPattern.setLocation(allocateLocation());
            return nodeTestPattern;
        }
    }

    /* renamed from: M */
    public SortKeyDefinitionList m63961M(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        Class<XSLSortOrMergeKey> cls = XSLSortOrMergeKey.class;
        int i = 0;
        int i2 = 0;
        for (NodeInfo nodeInfo : children(new w2n(cls))) {
            ((XSLSortOrMergeKey) nodeInfo).compile(compilation, componentDeclaration);
            if ((nodeInfo instanceof XSLSort) && i2 != 0 && ((XSLSort) nodeInfo).getStable() != null) {
                compileError("stable attribute may appear only on the first xsl:sort element", "XTSE1017");
            }
            i2++;
        }
        if (i2 <= 0) {
            return null;
        }
        SortKeyDefinition[] sortKeyDefinitionArr = new SortKeyDefinition[i2];
        Iterator<? extends NodeInfo> it2 = children(new w2n(cls)).iterator();
        while (it2.hasNext()) {
            sortKeyDefinitionArr[i] = (SortKeyDefinition) ((XSLSortOrMergeKey) it2.next()).getSortKeyDefinition().simplify();
            i++;
        }
        return new SortKeyDefinitionList(sortKeyDefinitionArr);
    }

    /* renamed from: N */
    public void m63962N() {
        String str = getURI().equals("http://www.w3.org/1999/XSL/Transform") ? "" : "http://www.w3.org/1999/XSL/Transform";
        String attributeValue = getAttributeValue(str, "default-collation");
        StringBuilder sb = new StringBuilder();
        if (attributeValue != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(attributeValue, " \t\n\r", false);
            while (stringTokenizer.hasMoreTokens()) {
                String nextToken = stringTokenizer.nextToken();
                String str2 = NamespaceConstant.CODEPOINT_COLLATION_URI;
                if (nextToken.equals(NamespaceConstant.CODEPOINT_COLLATION_URI)) {
                    this.defaultCollationName = nextToken;
                    return;
                }
                try {
                    URI uri = new URI(nextToken);
                    if (!uri.isAbsolute()) {
                        nextToken = new URI(getBaseURI()).resolve(uri).toString();
                    }
                    str2 = nextToken;
                } catch (URISyntaxException unused) {
                    compileError("default collation '" + nextToken + "' is not a valid URI");
                }
                try {
                } catch (XPathException e) {
                    if (sb.length() != 0) {
                        sb.append("; ");
                    }
                    sb.append("Collation ");
                    sb.append(str2);
                    sb.append(" is not recognized (");
                    sb.append(e.getMessage());
                    sb.append(MotionUtils.f31762d);
                }
                if (getConfiguration().getCollation(str2) != null) {
                    this.defaultCollationName = str2;
                    return;
                }
                if (sb.length() != 0) {
                    sb.append("; ");
                }
                sb.append("Collation ");
                sb.append(str2);
                sb.append(" is not recognized");
            }
            String str3 = "No recognized collation URI found in default-collation attribute";
            if (sb.length() != 0) {
                str3 = ("No recognized collation URI found in default-collation attribute. ") + sb.toString();
            }
            compileErrorInAttribute(str3, "XTSE0125", new StructuredQName("", str, "default-collation").getClarkName());
        }
    }

    /* renamed from: O */
    public void m63963O() {
        String attributeValue = getAttributeValue(getURI().equals("http://www.w3.org/1999/XSL/Transform") ? "" : "http://www.w3.org/1999/XSL/Transform", "default-mode");
        if (attributeValue != null) {
            if (attributeValue.equals("#unnamed")) {
                this.defaultMode = Mode.UNNAMED_MODE_NAME;
            } else {
                this.defaultMode = makeQName(attributeValue, null, "default-mode");
            }
        }
        final PrincipalStylesheetModule principalStylesheetModule = this.f101807q.getPrincipalStylesheetModule();
        final StructuredQName structuredQName = this.defaultMode;
        if (principalStylesheetModule == null || !principalStylesheetModule.isDeclaredModes()) {
            return;
        }
        principalStylesheetModule.addFixupAction(new Action() { // from class: com.sunia.HTREnginev2.x2n
            @Override // net.p110sf.saxon.om.Action
            public final void doAction() {
                StyleElement.this.m63948J(principalStylesheetModule, structuredQName);
            }
        });
    }

    /* renamed from: P */
    public void m63964P(String str) {
        String attributeValue = getAttributeValue(str, "default-validation");
        if (attributeValue != null) {
            int code = Validation.getCode(attributeValue);
            if (code == 4 || code == 3) {
                this.f101809s = code;
            } else {
                compileErrorInAttribute("@default-validation must be preserve|strip", "XTSE0020", "default-validation");
            }
        }
    }

    /* renamed from: Q */
    public void m63965Q(String str) {
        String attributeValue = getAttributeValue(str, "xpath-default-namespace");
        if (attributeValue != null) {
            this.defaultXPathNamespace = attributeValue;
        }
    }

    /* renamed from: R */
    public void m63966R(String str) {
        String attributeValue = getAttributeValue(str, Constants.ATTRNAME_EXCLUDE_RESULT_PREFIXES);
        if (attributeValue != null) {
            int i = 0;
            if ("#all".equals(Whitespace.trim(attributeValue))) {
                ArrayList arrayList = new ArrayList();
                Iterator<NamespaceBinding> it2 = getAllNamespaces().iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next().getURI());
                }
                this.f101804n = (String[]) arrayList.toArray(new String[0]);
                return;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(attributeValue, " \t\n\r", false);
            int i2 = 0;
            while (stringTokenizer.hasMoreTokens()) {
                stringTokenizer.nextToken();
                i2++;
            }
            this.f101804n = new String[i2];
            StringTokenizer stringTokenizer2 = new StringTokenizer(attributeValue, " \t\n\r", false);
            while (stringTokenizer2.hasMoreTokens()) {
                String nextToken = stringTokenizer2.nextToken();
                if ("#default".equals(nextToken)) {
                    nextToken = "";
                } else if ("#all".equals(nextToken)) {
                    compileError("In exclude-result-prefixes, cannot mix #all with other values", "XTSE0020");
                }
                String uRIForPrefix = getURIForPrefix(nextToken, true);
                if (uRIForPrefix == null) {
                    this.f101804n = null;
                    compileError("Namespace prefix " + nextToken + " is not declared", "XTSE0808");
                    return;
                }
                int i3 = i + 1;
                this.f101804n[i] = uRIForPrefix;
                if (nextToken.isEmpty() && uRIForPrefix.isEmpty()) {
                    compileError("Cannot exclude the #default namespace when no default namespace is declared", "XTSE0809");
                }
                i = i3;
            }
        }
    }

    /* renamed from: S */
    public void m63967S(String str) {
        String attributeValue = getAttributeValue(str, "expand-text");
        if (attributeValue != null) {
            this.expandText = processBooleanAttribute("expand-text", attributeValue);
        } else {
            NodeImpl parent = getParent();
            this.expandText = (parent instanceof StyleElement) && ((StyleElement) parent).expandText;
        }
    }

    /* renamed from: T */
    public void m63968T(String str) {
        int i;
        String attributeValue = getAttributeValue(str, Constants.ATTRNAME_EXTENSIONELEMENTPREFIXES);
        if (attributeValue != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(attributeValue, " \t\n\r", false);
            int i2 = 0;
            while (stringTokenizer.hasMoreTokens()) {
                stringTokenizer.nextToken();
                i2++;
            }
            this.extensionNamespaces = new String[i2];
            StringTokenizer stringTokenizer2 = new StringTokenizer(attributeValue, " \t\n\r", false);
            int i3 = 0;
            while (stringTokenizer2.hasMoreTokens()) {
                String nextToken = stringTokenizer2.nextToken();
                if ("#default".equals(nextToken)) {
                    nextToken = "";
                }
                String uRIForPrefix = getURIForPrefix(nextToken, false);
                if (uRIForPrefix == null) {
                    this.extensionNamespaces = null;
                    compileError("Namespace prefix " + nextToken + " is undeclared", "XTSE1430");
                } else {
                    if (NamespaceConstant.isReserved(uRIForPrefix)) {
                        compileError("Namespace " + uRIForPrefix + " is reserved: it cannot be used for extension instructions (perhaps exclude-result-prefixes was intended).", "XTSE0085");
                        i = i3 + 1;
                        this.extensionNamespaces[i3] = uRIForPrefix;
                    } else {
                        i = i3 + 1;
                        this.extensionNamespaces[i3] = uRIForPrefix;
                    }
                    i3 = i;
                }
            }
        }
    }

    /* renamed from: U */
    public boolean m63969U(String str) {
        boolean processBooleanAttribute = processBooleanAttribute("streamable", str);
        if (processBooleanAttribute) {
            if (!getConfiguration().isLicensedFeature(2)) {
                compileWarning("Request for streaming ignored: this Saxon configuration does not support streaming", SaxonErrorCode.SXST0068);
                return false;
            }
            if (DebugKt.DEBUG_PROPERTY_VALUE_OFF.equals(getConfiguration().getConfigurationProperty(Feature.STREAMABILITY))) {
                compileWarning("Request for streaming ignored: streaming is disabled in this Saxon configuration", SaxonErrorCode.SXST0068);
                return false;
            }
        }
        return processBooleanAttribute;
    }

    /* renamed from: V */
    public void m63970V(int i) {
        this.actionsCompleted = i | this.actionsCompleted;
    }

    /* renamed from: W */
    public void m63971W() {
        this.reportingCircumstances = OnFailure.IGNORED_INSTRUCTION;
    }

    /* renamed from: X */
    public void m63972X(String str, String str2, String str3) {
        if (str2 == null) {
            str2 = "XTSE0280";
        }
        compileErrorInAttribute("Undeclared namespace prefix " + Err.wrap(str), str2, str3);
    }

    /* renamed from: Y */
    public boolean m63973Y() {
        return m63950A() < 20;
    }

    public Location allocateLocation() {
        if (this.f101808r == null) {
            this.f101808r = new Loc(this);
        }
        return this.f101808r;
    }

    public Expression arrayToSequence(Expression expression) {
        try {
            return ArrayFunctionSet.getInstance().makeFunction("members", 1).makeFunctionCall(expression);
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [net.sf.saxon.style.StyleElement, net.sf.saxon.om.NodeInfo] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [net.sf.saxon.om.NodeInfo] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v6, types: [net.sf.saxon.om.NodeInfo] */
    /* JADX WARN: Type inference failed for: r4v7, types: [net.sf.saxon.om.NodeInfo] */
    /* JADX WARN: Type inference failed for: r4v8, types: [net.sf.saxon.om.NodeInfo] */
    /* JADX WARN: Type inference failed for: r4v9 */
    public SourceBinding bindLocalVariable(StructuredQName structuredQName) {
        SourceBinding bindingInformation;
        SourceBinding hasImplicitBinding;
        SourceBinding hasImplicitBinding2 = hasImplicitBinding(structuredQName);
        if (hasImplicitBinding2 != null) {
            return hasImplicitBinding2;
        }
        if (isTopLevel()) {
            return null;
        }
        AxisIterator iterateAxis = iterateAxis(11);
        while (true) {
            NodeInfo next = iterateAxis.next();
            this = this;
            while (true) {
                if (next != null) {
                    break;
                }
                this = this.getParent();
                if ((this instanceof StyleElement) && (hasImplicitBinding = ((StyleElement) this).hasImplicitBinding(structuredQName)) != null) {
                    return hasImplicitBinding;
                }
                while ((this instanceof StyleElement) && !this.seesAvuncularVariables()) {
                    this = this.getParent();
                }
                if (this.getParent() instanceof XSLModuleRoot) {
                    next = this;
                    break;
                }
                iterateAxis = this.iterateAxis(11);
                next = iterateAxis.next();
                this = this;
            }
            if (next.getParent() instanceof XSLModuleRoot) {
                return null;
            }
            if ((next instanceof XSLGeneralVariable) && (bindingInformation = ((XSLGeneralVariable) next).getBindingInformation(structuredQName)) != null) {
                return bindingInformation;
            }
        }
    }

    public SourceBinding bindVariable(StructuredQName structuredQName) {
        SourceBinding bindLocalVariable = bindLocalVariable(structuredQName);
        if (bindLocalVariable != null) {
            return bindLocalVariable;
        }
        SourceBinding globalVariableBinding = getPrincipalStylesheetModule().getGlobalVariableBinding(structuredQName);
        if (globalVariableBinding == null || Navigator.isAncestorOrSelf(globalVariableBinding.getSourceElement(), this)) {
            return null;
        }
        return globalVariableBinding;
    }

    public void checkEmpty() {
        if (hasChildNodes()) {
            compileError("Element must be empty", "XTSE0260");
        }
    }

    public void checkTopLevel(String str, boolean z) {
        if (getParent().getFingerprint() == 192) {
            if (z) {
                return;
            }
            compileError("Element " + getDisplayName() + " is not allowed as a child of xsl:override");
            return;
        }
        if (isTopLevel()) {
            return;
        }
        compileError("Element " + getDisplayName() + " must be top-level (a child of xsl:stylesheet, xsl:transform, or xsl:package)", str);
    }

    public void checkUnknownAttribute(NodeName nodeName) {
        String uri = nodeName.getURI();
        String uri2 = getURI();
        String clarkName = nodeName.getStructuredQName().getClarkName();
        if (m63985x()) {
            return;
        }
        if (isInstruction() && uri.equals("http://www.w3.org/1999/XSL/Transform") && !uri2.equals("http://www.w3.org/1999/XSL/Transform") && (clarkName.endsWith("}default-collation") || clarkName.endsWith("}default-mode") || clarkName.endsWith("}xpath-default-namespace") || clarkName.endsWith("}expand-text") || clarkName.endsWith("}extension-element-prefixes") || clarkName.endsWith("}exclude-result-prefixes") || clarkName.endsWith("}version") || clarkName.endsWith("}default-validation") || clarkName.endsWith("}use-when"))) {
            return;
        }
        if (uri2.equals("http://www.w3.org/1999/XSL/Transform") && (clarkName.equals("default-collation") || clarkName.equals("default-mode") || clarkName.equals("expand-text") || clarkName.equals("xpath-default-namespace") || clarkName.equals(Constants.ATTRNAME_EXTENSIONELEMENTPREFIXES) || clarkName.equals(Constants.ATTRNAME_EXCLUDE_RESULT_PREFIXES) || clarkName.equals("version") || clarkName.equals("default-validation") || clarkName.equals("use-when"))) {
            return;
        }
        if ("".equals(uri) || "http://www.w3.org/1999/XSL/Transform".equals(uri)) {
            compileErrorInAttribute("Attribute " + Err.wrap(nodeName.getDisplayName(), 2) + " is not allowed on element " + Err.wrap(getDisplayName(), 1), "XTSE0090", clarkName);
            return;
        }
        if (NamespaceConstant.SAXON.equals(uri)) {
            compileWarning("Unrecognized attribute in Saxon namespace: " + nodeName.getDisplayName(), "XTSE0090");
        }
    }

    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        return null;
    }

    public void compileDeclaration(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
    }

    public void compileError(XmlProcessingError xmlProcessingError) {
        XmlProcessingIncident.maybeSetHostLanguage(xmlProcessingError, HostLanguage.XSLT);
        if (xmlProcessingError.getLocation() == null || (((xmlProcessingError.getLocation() instanceof Loc) || (xmlProcessingError.getLocation() instanceof Expression)) && !(this instanceof StylesheetComponent))) {
            XmlProcessingIncident.maybeSetLocation(xmlProcessingError, this);
        }
        getCompilation().reportError(xmlProcessingError);
    }

    public void compileErrorInAttribute(String str, String str2, String str3) {
        compileError(new XPathException(str, str2, new AttributeLocation(this, StructuredQName.fromClarkName(str3))));
    }

    public Expression compileSequenceConstructor(Compilation compilation, ComponentDeclaration componentDeclaration, boolean z) throws XPathException {
        Iterator<? extends NodeInfo> it2 = children().iterator();
        boolean z2 = false;
        while (it2.hasNext()) {
            int fingerprint = it2.next().getFingerprint();
            if (fingerprint == 189 || fingerprint == 190) {
                z2 = true;
            }
        }
        if (z2) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (NodeInfo nodeInfo : children()) {
                int fingerprint2 = nodeInfo.getFingerprint();
                if (fingerprint2 == 218 || fingerprint2 == 195) {
                    arrayList.add(nodeInfo);
                } else if (fingerprint2 == 189) {
                    arrayList2.add(nodeInfo);
                } else {
                    arrayList3.add(nodeInfo);
                }
            }
            arrayList.addAll(arrayList3);
            arrayList.addAll(arrayList2);
            return compileSequenceConstructor(compilation, componentDeclaration, new NodeListIterator(arrayList), z);
        }
        return compileSequenceConstructor(compilation, componentDeclaration, iterateAxis(3), z);
    }

    public void compileWarning(String str, StructuredQName structuredQName) {
        getCompilation().reportWarning(str, structuredQName.getEQName(), this);
    }

    public void fixupReferences() throws XPathException {
        Iterator<? extends NodeInfo> it2 = children(new w2n(StyleElement.class)).iterator();
        while (it2.hasNext()) {
            ((StyleElement) it2.next()).fixupReferences();
        }
    }

    public String generateId() {
        StringBuilder sb = new StringBuilder(16);
        generateId(sb);
        return sb.toString();
    }

    public String getAttributeValue(String str) {
        FingerprintedQName fromClarkName = FingerprintedQName.fromClarkName(str);
        return getAttributeValue(fromClarkName.getURI(), fromClarkName.getLocalPart());
    }

    @Override // net.p110sf.saxon.tree.linked.ElementImpl, net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public String getBaseURI() {
        if (this.f101806p == null) {
            this.f101806p = super.getBaseURI();
        }
        return this.f101806p;
    }

    public SourceBinding getBindingInformation(StructuredQName structuredQName) {
        return null;
    }

    public Compilation getCompilation() {
        return this.f101807q;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public Configuration getConfiguration() {
        return this.f101807q.getConfiguration();
    }

    public StylesheetPackage getContainingPackage() {
        PrincipalStylesheetModule principalStylesheetModule = getPrincipalStylesheetModule();
        if (principalStylesheetModule == null) {
            return null;
        }
        return principalStylesheetModule.getStylesheetPackage();
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r3 = r3;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [net.sf.saxon.tree.linked.NodeImpl] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.expr.instruct.SlotManager getContainingSlotManager() {
        /*
            r3 = this;
        L0:
            net.sf.saxon.tree.linked.NodeImpl r0 = r3.getParent()
            boolean r1 = r0 instanceof net.p110sf.saxon.style.XSLModuleRoot
            if (r1 != 0) goto L13
            int r1 = r0.getFingerprint()
            r2 = 192(0xc0, float:2.69E-43)
            if (r1 != r2) goto L11
            goto L13
        L11:
            r3 = r0
            goto L0
        L13:
            boolean r0 = r3 instanceof net.p110sf.saxon.style.StylesheetComponent
            if (r0 == 0) goto L1e
            net.sf.saxon.style.StylesheetComponent r3 = (net.p110sf.saxon.style.StylesheetComponent) r3
            net.sf.saxon.expr.instruct.SlotManager r3 = r3.getSlotManager()
            return r3
        L1e:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.StyleElement.getContainingSlotManager():net.sf.saxon.expr.instruct.SlotManager");
    }

    public Visibility getDeclaredVisibility() {
        String attributeValue = getAttributeValue("", "visibility");
        return attributeValue == null ? Visibility.UNDEFINED : m63954E(attributeValue, "");
    }

    public String getDefaultCollationName() {
        StyleElement styleElement = this;
        while (true) {
            String str = styleElement.defaultCollationName;
            if (str != null) {
                return str;
            }
            NodeImpl parent = styleElement.getParent();
            if (!(parent instanceof StyleElement)) {
                return getConfiguration().getDefaultCollationName();
            }
            styleElement = (StyleElement) parent;
        }
    }

    public String getDefaultXPathNamespace() {
        for (NodeInfo nodeInfo = this; nodeInfo instanceof StyleElement; nodeInfo = nodeInfo.getParent()) {
            String str = ((StyleElement) nodeInfo).defaultXPathNamespace;
            if (str != null) {
                return str;
            }
        }
        return this.f101807q.getCompilerInfo().getDefaultElementNamespace();
    }

    public NamespaceResolver getNamespaceResolver() {
        return this;
    }

    public StructuredQName getObjectName() {
        return this.f101805o;
    }

    public StylesheetPackage getPackageData() {
        return getPrincipalStylesheetModule().getStylesheetPackage();
    }

    public PrincipalStylesheetModule getPrincipalStylesheetModule() {
        return getCompilation().getPrincipalStylesheetModule();
    }

    public Iterator<String> getProperties() {
        ArrayList arrayList = new ArrayList(10);
        Iterator<AttributeInfo> it2 = attributes().iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getNodeName().getStructuredQName().getClarkName());
        }
        return arrayList.iterator();
    }

    public SchemaType getSchemaType(String str) {
        String uRIForPrefix;
        String str2;
        String str3;
        try {
            if (str.startsWith("Q{")) {
                StructuredQName makeQName = makeQName(str, "XTSE1520", "type");
                str2 = makeQName.getURI();
                str3 = makeQName.getLocalPart();
            } else {
                String[] qNameParts = NameChecker.getQNameParts(str);
                String str4 = qNameParts[1];
                if ("".equals(qNameParts[0])) {
                    uRIForPrefix = getDefaultXPathNamespace();
                } else {
                    uRIForPrefix = getURIForPrefix(qNameParts[0], false);
                    if (uRIForPrefix == null) {
                        compileError("Namespace prefix for type annotation is undeclared", "XTSE1520");
                        return null;
                    }
                }
                str2 = uRIForPrefix;
                str3 = str4;
            }
            if (str2.equals("http://www.w3.org/2001/XMLSchema")) {
                SchemaType schemaTypeByLocalName = BuiltInType.getSchemaTypeByLocalName(str3);
                if (schemaTypeByLocalName != null) {
                    return schemaTypeByLocalName;
                }
                compileError("Unknown built-in type " + str, "XTSE1520");
                return null;
            }
            if (!getPrincipalStylesheetModule().isImportedSchema(str2)) {
                compileError("There is no imported schema for the namespace of type " + str, "XTSE1520");
                return null;
            }
            SchemaType schemaType = getConfiguration().getSchemaType(new StructuredQName("", str2, str3));
            if (schemaType == null) {
                compileError("There is no type named " + str + " in an imported schema", "XTSE1520");
            }
            return schemaType;
        } catch (QNameException e) {
            compileError("Invalid type name. " + e.getMessage(), "XTSE1520");
            return null;
        }
    }

    public ExpressionContext getStaticContext() {
        if (this.staticContext == null) {
            this.staticContext = new ExpressionContext(this, null);
        }
        return this.staticContext;
    }

    public SimpleType getTypeAnnotation(SchemaType schemaType) {
        return (SimpleType) schemaType;
    }

    public StylesheetPackage getUsedPackage() {
        return null;
    }

    public Visibility getVisibility() {
        String attributeValue = getAttributeValue("", "visibility");
        return attributeValue == null ? Visibility.PRIVATE : m63954E(attributeValue, "");
    }

    public WithParam[] getWithParamInstructions(Expression expression, Compilation compilation, ComponentDeclaration componentDeclaration, boolean z) throws XPathException {
        Class<XSLWithParam> cls = XSLWithParam.class;
        Iterator<? extends NodeInfo> it2 = children(new w2n(cls)).iterator();
        int i = 0;
        int i2 = 0;
        while (it2.hasNext()) {
            if (((XSLWithParam) it2.next()).getSourceBinding().hasProperty(SourceBinding.BindingProperty.TUNNEL) == z) {
                i2++;
            }
        }
        if (i2 == 0) {
            return WithParam.EMPTY_ARRAY;
        }
        WithParam[] withParamArr = new WithParam[i2];
        Iterator<? extends NodeInfo> it3 = children(new w2n(cls)).iterator();
        while (it3.hasNext()) {
            XSLWithParam xSLWithParam = (XSLWithParam) it3.next();
            if (xSLWithParam.getSourceBinding().hasProperty(SourceBinding.BindingProperty.TUNNEL) == z) {
                WithParam compileWithParam = xSLWithParam.compileWithParam(expression, compilation, componentDeclaration);
                if ((xSLWithParam.getParent() instanceof XSLNextIteration) && xSLWithParam.hasChildNodes()) {
                    xSLWithParam.checkAgainstRequiredType(((XSLNextIteration) xSLWithParam.getParent()).getDeclaredParamType(xSLWithParam.getSourceBinding().getVariableQName()));
                    compileWithParam.getSelectOperand().setChildExpression(xSLWithParam.sourceBinding.getSelectExpression());
                }
                withParamArr[i] = compileWithParam;
                i++;
            }
        }
        return withParamArr;
    }

    public Actor getXslOriginal(int i) throws XPathException {
        StyleElement m63983v = i == getFingerprint() ? this : m63983v(i);
        if (!(m63983v instanceof StylesheetComponent)) {
            throw new XPathException("A reference to xsl:original appears within the wrong kind of component: in this case, it must be within xsl:" + getNamePool().getLocalName(i), "XTSE0650", this);
        }
        SymbolicName symbolicName = ((StylesheetComponent) m63983v).getSymbolicName();
        StyleElement m63983v2 = m63983v.m63983v(192);
        if (m63983v2 == null) {
            throw new XPathException("A reference to xsl:original can be used only within an xsl:override element");
        }
        StyleElement m63983v3 = m63983v2.m63983v(214);
        if (m63983v3 == null) {
            throw new XPathException("The parent of xsl:override must be an xsl:use-package element", "XTSE0010", m63983v2);
        }
        Component component = m63983v3.getUsedPackage().getComponent(symbolicName);
        if (component == null) {
            return null;
        }
        return component.getActor();
    }

    public SourceBinding hasImplicitBinding(StructuredQName structuredQName) {
        return null;
    }

    public void index(ComponentDeclaration componentDeclaration, PrincipalStylesheetModule principalStylesheetModule) throws XPathException {
    }

    public void invalidAttribute(String str, String str2) {
        compileErrorInAttribute("Attribute " + getDisplayName() + "/@" + str + " must be " + str2, "XTSE0020", str);
    }

    public boolean isDeclaration() {
        return false;
    }

    public boolean isExtensionAttributeAllowed(String str) {
        if (getConfiguration().isLicensedFeature(8)) {
            return true;
        }
        issueWarning("The option " + getDisplayName() + "/@" + str + " is ignored because it requires a Saxon-PE license", this);
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r1 = r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [net.sf.saxon.om.NodeInfo] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isExtensionNamespace(java.lang.String r2) {
        /*
            r1 = this;
        L0:
            boolean r0 = r1 instanceof net.p110sf.saxon.style.StyleElement
            if (r0 == 0) goto L14
            r0 = r1
            net.sf.saxon.style.StyleElement r0 = (net.p110sf.saxon.style.StyleElement) r0
            boolean r0 = r0.m63980s(r2)
            if (r0 == 0) goto Lf
            r1 = 1
            return r1
        Lf:
            net.sf.saxon.om.NodeInfo r1 = r1.getParent()
            goto L0
        L14:
            r1 = 0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.StyleElement.isExtensionNamespace(java.lang.String):boolean");
    }

    public boolean isInstruction() {
        return false;
    }

    public boolean isPermittedChild(StyleElement styleElement) {
        return false;
    }

    public boolean isSchemaAware() {
        return getCompilation().isSchemaAware();
    }

    public boolean isTopLevel() {
        return getParent() instanceof XSLModuleRoot;
    }

    public boolean isWithinDeclaredStreamableConstruct() {
        String attributeValue;
        if (getURI().equals("http://www.w3.org/1999/XSL/Transform") && (attributeValue = getAttributeValue("streamable")) != null) {
            return m63969U(attributeValue);
        }
        NodeImpl parent = getParent();
        return (parent instanceof StyleElement) && ((StyleElement) parent).isWithinDeclaredStreamableConstruct();
    }

    public void issueWarning(XPathException xPathException) {
        if (xPathException.getLocator() == null) {
            xPathException.setLocator(this);
        }
        getCompilation().reportWarning(xPathException);
    }

    /* renamed from: m */
    public void m63974m(Expression expression) {
        SlotManager containingSlotManager = getContainingSlotManager();
        if (containingSlotManager == null) {
            throw new AssertionError("Slot manager has not been allocated");
        }
        int numberOfVariables = containingSlotManager.getNumberOfVariables();
        int allocateSlots = ExpressionTool.allocateSlots(expression, numberOfVariables, containingSlotManager);
        if (allocateSlots > numberOfVariables) {
            containingSlotManager.setNumberOfVariables(allocateSlots);
        }
    }

    public Expression makeAttributeValueTemplate(String str, AttributeInfo attributeInfo) {
        ExpressionContext staticContext = attributeInfo == null ? this.staticContext : getStaticContext(attributeInfo.getNodeName().getStructuredQName());
        if (attributeInfo != null) {
            staticContext = getStaticContext(attributeInfo.getNodeName().getStructuredQName());
        }
        try {
            return AttributeValueTemplate.make(str, staticContext);
        } catch (XPathException e) {
            this.compileError(e);
            return new StringLiteral(str);
        }
    }

    public Expression makeExpression(String str, AttributeInfo attributeInfo) {
        try {
            ExpressionContext expressionContext = this.staticContext;
            if (attributeInfo != null) {
                expressionContext = getStaticContext(attributeInfo.getNodeName().getStructuredQName());
            }
            return ExpressionTool.make(str, expressionContext, 0, 0, getCompilation().getCompilerInfo().getCodeInjector());
        } catch (XPathException e) {
            e.maybeSetLocation(this.allocateLocation());
            if (e.isReportableStatically()) {
                this.compileError(e);
            }
            ErrorExpression errorExpression = new ErrorExpression(new XmlProcessingException(e));
            errorExpression.setRetainedStaticContext(this.makeRetainedStaticContext());
            errorExpression.setLocation(this.allocateLocation());
            return errorExpression;
        }
    }

    public ExpressionVisitor makeExpressionVisitor() {
        return ExpressionVisitor.make(getStaticContext());
    }

    public final StructuredQName makeQName(String str, String str2, String str3) {
        StructuredQName structuredQName;
        try {
            structuredQName = StructuredQName.fromLexicalQName(str, false, true, this);
        } catch (XPathException e) {
            e.setIsStaticError(true);
            if (str2 == null) {
                String errorCodeLocalPart = e.getErrorCodeLocalPart();
                if ("FONS0004".equals(errorCodeLocalPart)) {
                    e.setErrorCode("XTSE0280");
                } else if ("FOCA0002".equals(errorCodeLocalPart)) {
                    e.setErrorCode("XTSE0020");
                } else if (errorCodeLocalPart == null) {
                    e.setErrorCode("XTSE0020");
                }
            } else {
                e.setErrorCode(str2);
            }
            if (str3 == null) {
                e.setLocator(this);
            } else {
                e.setLocator(new AttributeLocation(this, StructuredQName.fromEQName(str3)));
            }
            compileError(e);
            structuredQName = new StructuredQName("saxon", NamespaceConstant.SAXON, "error-name");
        }
        if (!NamespaceConstant.isReserved(structuredQName.getURI())) {
            return structuredQName;
        }
        if (structuredQName.hasURI("http://www.w3.org/1999/XSL/Transform")) {
            if (structuredQName.getLocalPart().equals("initial-template") && ((this instanceof XSLTemplate) || (this instanceof XSLCallTemplate))) {
                return structuredQName;
            }
            if (structuredQName.getLocalPart().equals("original") && m63983v(192) != null) {
                return structuredQName;
            }
        }
        compileError(new XmlProcessingIncident("Namespace prefix " + structuredQName.getPrefix() + " refers to a reserved namespace", "XTSE0080"));
        return new StructuredQName("saxon", NamespaceConstant.SAXON, "error-name");
    }

    public RetainedStaticContext makeRetainedStaticContext() {
        return getStaticContext().makeRetainedStaticContext();
    }

    public SequenceType makeSequenceType(String str) throws XPathException {
        int xPathVersion = getStaticContext().getXPathVersion();
        if (xPathVersion == 30) {
            xPathVersion = 305;
        }
        XPathParser newExpressionParser = getConfiguration().newExpressionParser("XP", false, xPathVersion);
        newExpressionParser.setQNameParser(new QNameParser(this.staticContext.getNamespaceResolver()).withAcceptEQName(this.staticContext.getXPathVersion() >= 30).withErrorOnBadSyntax("XPST0003").withErrorOnUnresolvedPrefix("XPST0081"));
        return newExpressionParser.parseSequenceType(str, this.staticContext);
    }

    public Expression mapToSequence(Expression expression) {
        try {
            return VendorFunctionSetHE.getInstance().makeFunction("map-as-sequence-of-maps", 1).makeFunctionCall(expression);
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
    }

    public boolean markTailCalls() {
        return false;
    }

    public boolean mayContainFallback() {
        return mayContainSequenceConstructor();
    }

    public boolean mayContainParam() {
        return false;
    }

    public boolean mayContainSequenceConstructor() {
        return false;
    }

    /* renamed from: n */
    public boolean m63975n() {
        NodeImpl parent = getParent();
        return (parent != null && ExpressionTool.equalOrNull(getBaseURI(), parent.getBaseURI()) && this.defaultCollationName == null && this.defaultXPathNamespace == null && (parent instanceof StyleElement) && getAllNamespaces() == parent.getAllNamespaces() && m63950A() == ((StyleElement) parent).m63950A()) ? false : true;
    }

    /* renamed from: o */
    public void m63976o(String str, String str2, boolean z, String[] strArr) {
        if (!(z && str2.contains("{")) && Arrays.binarySearch(strArr, str2) < 0) {
            StringBuilder sb = new StringBuilder(64);
            sb.append("Invalid value for ");
            sb.append("@");
            sb.append(str);
            sb.append(". Value must be one of (");
            int i = 0;
            while (i < strArr.length) {
                sb.append(i == 0 ? "" : IidStore.f35940g);
                sb.append(strArr[i]);
                i++;
            }
            sb.append(MotionUtils.f31762d);
            compileError(sb.toString(), "XTSE0020");
        }
    }

    /* renamed from: p */
    public void m63977p(boolean z) {
        boolean z2 = false;
        boolean z3 = false;
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo instanceof XSLSort) {
                if (z3) {
                    ((XSLSort) nodeInfo).compileError("Within " + getDisplayName() + ", xsl:sort elements must come before other instructions", "XTSE0010");
                }
                z2 = true;
            } else if (nodeInfo.getNodeKind() != 3 || !Whitespace.isAllWhite(nodeInfo.getUnicodeStringValue())) {
                z3 = true;
            }
        }
        if (!z || z2) {
            return;
        }
        compileError(getDisplayName() + " must have at least one xsl:sort child", "XTSE0010");
    }

    public void postValidate() throws XPathException {
    }

    public abstract void prepareAttributes();

    public void processAllAttributes() throws XPathException {
        m63962N();
        m63963O();
        this.staticContext = new ExpressionContext(this, null);
        processAttributes();
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo instanceof StyleElement) {
                ((StyleElement) nodeInfo).processAllAttributes();
            } else if (nodeInfo instanceof TextValueTemplateNode) {
                ((TextValueTemplateNode) nodeInfo).parse();
            }
        }
    }

    public final void processAttributes() {
        prepareAttributes();
    }

    public boolean processBooleanAttribute(String str, String str2) {
        String trim = Whitespace.trim(str2);
        if (isYes(trim)) {
            return true;
        }
        if (isNo(trim)) {
            return false;
        }
        invalidAttribute(str, "yes|no | true|false | 1|0");
        return false;
    }

    public void processStandardAttributes(String str) {
        m63968T(str);
        m63966R(str);
        processVersionAttribute(str);
        m63965Q(str);
        m63964P(str);
        m63967S(str);
    }

    public void processVersionAttribute(String str) {
        String trim = Whitespace.trim(getAttributeValue(str, "version"));
        if (trim != null) {
            ConversionResult makeDecimalValue = BigDecimalValue.makeDecimalValue(trim, true);
            if (makeDecimalValue instanceof ValidationFailure) {
                this.version = 30;
                compileError("The version attribute must be a decimal literal", "XTSE0110");
                return;
            }
            int intValue = ((BigDecimalValue) makeDecimalValue).getDecimalValue().multiply(BigDecimal.TEN).intValue();
            this.version = intValue;
            if (intValue < 20 && intValue != 10) {
                issueWarning("Unrecognized version " + makeDecimalValue + ": treated as 1.0", this);
                this.version = 10;
                return;
            }
            if (intValue <= 20 || intValue >= 30) {
                return;
            }
            issueWarning("Unrecognized version " + makeDecimalValue + ": treated as 2.0", this);
            this.version = 20;
        }
    }

    /* renamed from: q */
    public void m63978q(TextImpl textImpl, List<Expression> list) {
        if (!(textImpl instanceof TextValueTemplateNode)) {
            list.add(new StringLiteral(textImpl.getUnicodeStringValue()));
            return;
        }
        Expression contentExpression = ((TextValueTemplateNode) textImpl).getContentExpression();
        if (getConfiguration().getBooleanProperty(Feature.STRICT_STREAMABILITY) && !(contentExpression instanceof Literal)) {
            contentExpression = new SequenceInstr(contentExpression);
        }
        list.add(contentExpression);
    }

    /* renamed from: r */
    public final boolean m63979r(String str) {
        String[] strArr = this.f101804n;
        if (strArr == null) {
            return false;
        }
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public void reportAbsence(String str) {
        compileError("Element must have an " + Err.wrap(str, 2) + " attribute", "XTSE0010");
    }

    public void requireXslt40(String str) {
        if (this.f101807q.getCompilerInfo().getXsltVersion() != 40) {
            if (str == null) {
                compileError("Element " + getDisplayName() + " is allowed only if XSLT 4.0 is enabled", "XTSE0010");
                return;
            }
            compileErrorInAttribute("Attribute " + getDisplayName() + "/@" + str + " is allowed only if XSLT 4.0 is enabled", "XTSE0020", str);
        }
    }

    /* renamed from: s */
    public final boolean m63980s(String str) {
        String[] strArr = this.extensionNamespaces;
        if (strArr == null) {
            return false;
        }
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean seesAvuncularVariables() {
        return true;
    }

    public void setCompilation(Compilation compilation) {
        this.f101807q = compilation;
    }

    public void setObjectName(StructuredQName structuredQName) {
        this.f101805o = structuredQName;
    }

    public void setValidationError(XmlProcessingIncident xmlProcessingIncident, OnFailure onFailure) {
        this.validationError = xmlProcessingIncident;
        this.reportingCircumstances = onFailure;
    }

    public void substituteFor(StyleElement styleElement) {
        setRawParent(styleElement.getRawParent());
        setAttributes(styleElement.attributes());
        setNamespaceMap(styleElement.getAllNamespaces());
        setNodeName(styleElement.getNodeName());
        setRawSequenceNumber(styleElement.getRawSequenceNumber());
        this.extensionNamespaces = styleElement.extensionNamespaces;
        this.f101804n = styleElement.f101804n;
        this.version = styleElement.version;
        this.staticContext = styleElement.staticContext;
        this.validationError = styleElement.validationError;
        this.reportingCircumstances = styleElement.reportingCircumstances;
        this.f101807q = styleElement.f101807q;
    }

    /* renamed from: t */
    public final boolean m63981t(NodeInfo nodeInfo) throws XPathException {
        if (!(nodeInfo instanceof TextValueTemplateNode)) {
            return false;
        }
        ((TextValueTemplateNode) nodeInfo).validate();
        return !(r1.getContentExpression() instanceof Literal);
    }

    public Expression typeCheck(String str, Expression expression) throws XPathException {
        if (expression == null) {
            return null;
        }
        Configuration configuration = getConfiguration();
        if (configuration.getBooleanProperty(Feature.STRICT_STREAMABILITY)) {
            return expression;
        }
        try {
            expression = expression.typeCheck(makeExpressionVisitor(), configuration.makeContextItemStaticInfo(Type.ITEM_TYPE, true));
            return ExpressionTool.resolveCallsToCurrentFunction(expression);
        } catch (XPathException e) {
            if (e.isReportableStatically()) {
                e.setLocation(new AttributeLocation(this, StructuredQName.fromClarkName(str)));
                this.compileError(e);
                return expression;
            }
            ErrorExpression errorExpression = new ErrorExpression(new XmlProcessingException(e));
            ExpressionTool.copyLocationInfo(expression, errorExpression);
            return errorExpression;
        }
    }

    /* renamed from: u */
    public Expression m63982u(Compilation compilation, ComponentDeclaration componentDeclaration, StyleElement styleElement) throws XPathException {
        Iterator<? extends NodeInfo> it2 = children(new w2n(XSLFallback.class)).iterator();
        Expression expression = null;
        while (it2.hasNext()) {
            Expression compileSequenceConstructor = ((XSLFallback) it2.next()).compileSequenceConstructor(compilation, componentDeclaration, true);
            if (compileSequenceConstructor == null) {
                compileSequenceConstructor = Literal.makeEmptySequence();
            }
            if (expression == null) {
                expression = compileSequenceConstructor;
            } else {
                expression = Block.makeBlock(expression, compileSequenceConstructor);
                expression.setLocation(allocateLocation());
            }
        }
        return expression != null ? expression : new ErrorExpression(styleElement.validationError);
    }

    /* renamed from: v */
    public StyleElement m63983v(int i) {
        for (NodeInfo parent = getParent(); parent instanceof StyleElement; parent = parent.getParent()) {
            if (parent.getFingerprint() == i) {
                return (StyleElement) parent;
            }
        }
        return null;
    }

    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
    }

    public void validateChildren(ComponentDeclaration componentDeclaration, boolean z) throws XPathException {
        boolean mayContainSequenceConstructor = mayContainSequenceConstructor();
        StyleElement styleElement = null;
        boolean z2 = false;
        for (NodeInfo nodeInfo : children()) {
            if (!(nodeInfo instanceof StyleElement)) {
                z2 = m63981t(nodeInfo);
            } else if (!z || !(nodeInfo instanceof XSLStylesheet)) {
                if (mayContainSequenceConstructor) {
                    StyleElement styleElement2 = (StyleElement) nodeInfo;
                    if (!styleElement2.isInstruction() && !isPermittedChild(styleElement2)) {
                        styleElement2.compileError("An " + getDisplayName() + " element must not contain an " + nodeInfo.getDisplayName() + " element", "XTSE0010");
                    }
                }
                StyleElement styleElement3 = (StyleElement) nodeInfo;
                styleElement3.validateSubtree(componentDeclaration, z);
                z2 = false;
                styleElement = styleElement3;
            }
        }
        if (!(styleElement instanceof XSLLocalVariable) || (this instanceof XSLStylesheet) || z2) {
            return;
        }
        styleElement.compileWarning("A variable with no following sibling instructions has no effect", SaxonErrorCode.SXWN9001);
    }

    public void validateSubtree(ComponentDeclaration componentDeclaration, boolean z) throws XPathException {
        if (m63955F(1)) {
            return;
        }
        m63970V(1);
        XmlProcessingIncident xmlProcessingIncident = this.validationError;
        if (xmlProcessingIncident == null) {
            try {
                validate(componentDeclaration);
            } catch (XPathException e) {
                compileError(e);
            }
            validateChildren(componentDeclaration, z);
            if (getCompilation().getErrorCount() == 0) {
                postValidate();
                return;
            }
            return;
        }
        OnFailure onFailure = this.reportingCircumstances;
        if (onFailure == OnFailure.REPORT_ALWAYS) {
            compileError(xmlProcessingIncident);
            return;
        }
        if (onFailure == OnFailure.REPORT_UNLESS_FORWARDS_COMPATIBLE && !m63985x()) {
            compileError(this.validationError);
            return;
        }
        OnFailure onFailure2 = this.reportingCircumstances;
        Class<XSLFallback> cls = XSLFallback.class;
        if (onFailure2 != OnFailure.REPORT_STATICALLY_UNLESS_FALLBACK_AVAILABLE) {
            if (onFailure2 == OnFailure.REPORT_DYNAMICALLY_UNLESS_FALLBACK_AVAILABLE) {
                Iterator<? extends NodeInfo> it2 = children(new w2n(cls)).iterator();
                while (it2.hasNext()) {
                    ((XSLFallback) it2.next()).validateSubtree(componentDeclaration, false);
                }
                return;
            }
            return;
        }
        Iterator<? extends NodeInfo> it3 = children(new w2n(cls)).iterator();
        boolean z2 = false;
        while (it3.hasNext()) {
            ((XSLFallback) it3.next()).validateSubtree(componentDeclaration, false);
            z2 = true;
        }
        if (z2) {
            return;
        }
        compileError(this.validationError);
    }

    public int validateValidationAttribute(String str) {
        int code = Validation.getCode(str);
        if (code == -1) {
            compileError("Invalid value of " + (this instanceof LiteralResultElement ? "xsl:" : "") + "validation attribute: '" + str + CloudStorageConstants.SINGLE_QUOTES, "XTSE0020");
            code = m63987z();
        }
        if (isSchemaAware()) {
            return code;
        }
        if (code == 1) {
            compileError("To perform validation, a schema-aware XSLT processor is needed", "XTSE1660");
        }
        return 4;
    }

    /* renamed from: w */
    public StringCollator m63984w(String str, String str2) throws XPathException {
        return getConfiguration().getCollation(str, str2);
    }

    /* renamed from: x */
    public boolean m63985x() {
        return m63950A() > 30;
    }

    /* renamed from: y */
    public StructuredQName m63986y() throws XPathException {
        if (this.defaultMode == null) {
            m63963O();
            if (this.defaultMode == null) {
                NodeImpl parent = getParent();
                if (parent instanceof StyleElement) {
                    StructuredQName m63986y = ((StyleElement) parent).m63986y();
                    this.defaultMode = m63986y;
                    return m63986y;
                }
                StructuredQName structuredQName = Mode.UNNAMED_MODE_NAME;
                this.defaultMode = structuredQName;
                return structuredQName;
            }
        }
        return this.defaultMode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [net.sf.saxon.om.NodeInfo] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* renamed from: z */
    public int m63987z() {
        int i = this.f101809s;
        ?? r1 = this;
        while (i == 0) {
            NodeInfo parent = r1.getParent();
            if (!(parent instanceof StyleElement)) {
                return 4;
            }
            i = ((StyleElement) parent).f101809s;
            r1 = parent;
        }
        return i;
    }

    public void compileWarning(String str, String str2) {
        getCompilation().reportWarning(str, str2, this);
    }

    public void compileWarning(String str, String str2, Location location) {
        getCompilation().reportWarning(str, str2, location);
    }

    public ExpressionContext getStaticContext(StructuredQName structuredQName) {
        return new ExpressionContext(this, structuredQName);
    }

    public void issueWarning(String str, SourceLocator sourceLocator) {
        XPathException xPathException = new XPathException(str);
        if (sourceLocator == null) {
            xPathException.setLocator(this);
        } else {
            xPathException.setLocator(sourceLocator);
        }
        issueWarning(xPathException);
    }

    public void compileError(XPathException xPathException) {
        if (xPathException.getLocator() == null) {
            xPathException.setLocation(this);
        }
        XmlProcessingIncident xmlProcessingIncident = new XmlProcessingIncident(xPathException.getMessage(), xPathException.getErrorCodeLocalPart(), xPathException.getLocator());
        xmlProcessingIncident.setHostLanguage(HostLanguage.XSLT);
        compileError(xmlProcessingIncident);
    }

    public Pattern typeCheck(String str, Pattern pattern) throws XPathException {
        if (pattern == null) {
            return null;
        }
        try {
            boolean z = true;
            Pattern typeCheck = pattern.typeCheck(makeExpressionVisitor(), getConfiguration().makeContextItemStaticInfo(Type.ITEM_TYPE, true));
            Iterator<Operand> it2 = typeCheck.operands().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = false;
                    break;
                }
                if (ExpressionTool.callsFunction(it2.next().getChildExpression(), Current.FN_CURRENT, false)) {
                    break;
                }
            }
            if (!z) {
                return typeCheck;
            }
            PatternThatSetsCurrent patternThatSetsCurrent = new PatternThatSetsCurrent(typeCheck);
            typeCheck.bindCurrent(patternThatSetsCurrent.getCurrentBinding());
            return patternThatSetsCurrent;
        } catch (XPathException e) {
            if (!e.isReportableStatically()) {
                BasePatternWithPredicate basePatternWithPredicate = new BasePatternWithPredicate(new NodeTestPattern(ErrorType.getInstance()), new ErrorExpression(new XmlProcessingException(e)));
                basePatternWithPredicate.setLocation(allocateLocation());
                return basePatternWithPredicate;
            }
            XPathException xPathException = new XPathException("Error in " + str + " pattern", e);
            xPathException.setLocator(this);
            xPathException.setErrorCodeQName(e.getErrorCodeQName());
            throw xPathException;
        }
    }

    public void compileError(String str) {
        compileError(str, "XTSE0010");
    }

    public void compileError(String str, StructuredQName structuredQName) {
        XmlProcessingIncident xmlProcessingIncident = new XmlProcessingIncident(str, structuredQName.getEQName(), this);
        xmlProcessingIncident.setHostLanguage(HostLanguage.XSLT);
        compileError(xmlProcessingIncident);
    }

    public Expression compileSequenceConstructor(Compilation compilation, ComponentDeclaration componentDeclaration, SequenceIterator sequenceIterator, boolean z) throws XPathException {
        Expression compile;
        Location allocateLocation = allocateLocation();
        List<Expression> arrayList = new ArrayList<>(10);
        boolean z2 = false;
        while (true) {
            NodeInfo nodeInfo = (NodeInfo) sequenceIterator.next();
            if (nodeInfo == null) {
                break;
            }
            if (nodeInfo.getNodeKind() == 3) {
                if (m63958I()) {
                    m63978q((TextImpl) nodeInfo, arrayList);
                } else {
                    NodeInfo next = nodeInfo.iterateAxis(7).next();
                    if (!(next instanceof XSLLocalParam) && !(next instanceof XSLSort) && !(next instanceof XSLContextItem) && !(next instanceof XSLOnCompletion)) {
                        Expression valueOf = new ValueOf(new StringLiteral(nodeInfo.getUnicodeStringValue()), false, false);
                        valueOf.setLocation(allocateLocation());
                        arrayList.add(valueOf);
                    }
                }
            } else if (nodeInfo instanceof XSLLocalVariable) {
                XSLLocalVariable xSLLocalVariable = (XSLLocalVariable) nodeInfo;
                SourceBinding sourceBinding = xSLLocalVariable.getSourceBinding();
                xSLLocalVariable.compileLocalVariable(compilation, componentDeclaration);
                Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, sequenceIterator, z);
                if (compileSequenceConstructor != null && !Literal.isEmptySequence(compileSequenceConstructor)) {
                    LetExpression letExpression = new LetExpression();
                    letExpression.setInstruction(true);
                    letExpression.setRequiredType(xSLLocalVariable.getRequiredType());
                    letExpression.setVariableQName(sourceBinding.getVariableQName());
                    letExpression.setSequence(sourceBinding.getSelectExpression());
                    letExpression.setAction(compileSequenceConstructor);
                    sourceBinding.fixupBinding(letExpression);
                    Location allocateLocation2 = ((StyleElement) nodeInfo).allocateLocation();
                    letExpression.setLocation(allocateLocation2);
                    arrayList.add(letExpression);
                    if (xSLLocalVariable.m63975n()) {
                        letExpression.setRetainedStaticContext(makeRetainedStaticContext());
                    }
                    allocateLocation = allocateLocation2;
                }
            } else if (nodeInfo instanceof StyleElement) {
                StyleElement styleElement = (StyleElement) nodeInfo;
                int fingerprint = styleElement.getFingerprint();
                if (fingerprint == 189 || fingerprint == 190) {
                    z2 = true;
                }
                if (styleElement.validationError != null && !(styleElement instanceof AbsentExtensionElement)) {
                    compile = styleElement.reportingCircumstances == OnFailure.REPORT_IF_INSTANTIATED ? new ErrorExpression(styleElement.validationError) : m63982u(compilation, componentDeclaration, styleElement);
                } else {
                    compile = styleElement.compile(compilation, componentDeclaration);
                    if (compile != null) {
                        if (styleElement.m63975n()) {
                            compile.setRetainedStaticContext(styleElement.makeRetainedStaticContext());
                        }
                        setInstructionLocation(styleElement, compile);
                    }
                }
                if (compile != null) {
                    arrayList.add(compile);
                }
            }
        }
        if (z2) {
            return new ConditionalBlock(arrayList);
        }
        Expression makeBlock = Block.makeBlock(arrayList);
        if (makeBlock.getLocation() == null) {
            makeBlock.setLocation(allocateLocation);
        }
        if (makeBlock.getLocalRetainedStaticContext() == null) {
            makeBlock.setRetainedStaticContext(makeRetainedStaticContext());
        }
        return makeBlock;
    }

    public void compileError(String str, String str2) {
        compileError(new XPathException(str, str2, this));
    }

    public void compileError(String str, String str2, Location location) {
        compileError(new XPathException(str, str2, location));
    }
}
