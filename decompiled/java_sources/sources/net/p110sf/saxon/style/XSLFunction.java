package net.p110sf.saxon.style;

import com.sunia.HTREnginev2.w2n;
import java.util.ArrayList;
import java.util.Iterator;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.TailCallLoop;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.expr.instruct.UserFunctionParameter;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.Annotation;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.trans.FunctionStreamability;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLFunction extends StyleElement implements StylesheetComponent {

    /* renamed from: w0 */
    public static final /* synthetic */ boolean f101982w0 = false;

    /* renamed from: k0 */
    public UserFunction f101987k0;

    /* renamed from: t0 */
    public FunctionStreamability f101989t0;

    /* renamed from: v0 */
    public boolean f101993v0;

    /* renamed from: z */
    public SlotManager f101997z;

    /* renamed from: u */
    public boolean f101990u = false;

    /* renamed from: v */
    public String f101992v = null;

    /* renamed from: w */
    public String f101994w = null;

    /* renamed from: x */
    public String f101995x = null;

    /* renamed from: y */
    public SequenceType f101996y = SequenceType.ANY_SEQUENCE;

    /* renamed from: J */
    public boolean f101983J = false;

    /* renamed from: O */
    public String f101984O = null;

    /* renamed from: Q */
    public boolean f101985Q = true;

    /* renamed from: Z */
    public int f101986Z = -1;

    /* renamed from: q0 */
    public Visibility f101988q0 = Visibility.UNDEFINED;

    /* renamed from: u0 */
    public UserFunction.Determinism f101991u0 = UserFunction.Determinism.PROACTIVE;

    /* renamed from: Z */
    public final void m64037Z(UserFunction userFunction) {
        UserFunctionParameter[] parameterDefinitions = userFunction.getParameterDefinitions();
        int i = 0;
        for (NodeInfo nodeInfo : children(new w2n(XSLLocalParam.class))) {
            int i2 = i + 1;
            UserFunctionParameter userFunctionParameter = parameterDefinitions[i];
            XSLLocalParam xSLLocalParam = (XSLLocalParam) nodeInfo;
            userFunctionParameter.setRequiredType(xSLLocalParam.getRequiredType());
            userFunctionParameter.setVariableQName(xSLLocalParam.getVariableQName());
            userFunctionParameter.setSlotNumber(xSLLocalParam.getSlotNumber());
            xSLLocalParam.getSourceBinding().fixupBinding(userFunctionParameter);
            i = i2;
        }
    }

    /* renamed from: a0 */
    public final FunctionStreamability m64038a0(String str) {
        if (str.contains(":")) {
            makeQName(str, null, "streamability");
            return FunctionStreamability.UNCLASSIFIED;
        }
        try {
            return FunctionStreamability.m64107of(str);
        } catch (IllegalArgumentException unused) {
            this.invalidAttribute("streamability", "unclassified|absorbing|inspection|filter|shallow-descent|deep-descent|ascent");
            return null;
        }
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public void checkCompatibility(Component component) {
        if (this.f101987k0 == null) {
            getCompiledFunction();
        }
        TypeHierarchy typeHierarchy = getConfiguration().getTypeHierarchy();
        UserFunction userFunction = (UserFunction) component.getActor();
        if (!this.f101987k0.getSymbolicName().equals(userFunction.getSymbolicName())) {
            compileError("The overriding xsl:function " + this.f101992v + " does not match the overridden function: the function name/arity does not match", "XTSE3070");
        }
        if (!this.f101987k0.getDeclaredResultType().isSameType(userFunction.getDeclaredResultType(), typeHierarchy)) {
            compileError("The overriding xsl:function " + this.f101992v + " does not match the overridden function: the return type does not match", "XTSE3070");
        }
        if (!this.f101987k0.getDeclaredStreamability().equals(userFunction.getDeclaredStreamability())) {
            compileError("The overriding xsl:function " + this.f101992v + " does not match the overridden function: the streamability category does not match", "XTSE3070");
        }
        if (!this.f101987k0.getDeterminism().equals(userFunction.getDeterminism())) {
            compileError("The overriding xsl:function " + this.f101992v + " does not match the overridden function: the new-each-time attribute does not match", "XTSE3070");
        }
        for (int i = 0; i < getNumberOfArguments(); i++) {
            if (!this.f101987k0.getArgumentType(i).isSameType(userFunction.getArgumentType(i), typeHierarchy)) {
                compileError("The overriding xsl:function " + this.f101992v + " does not match the overridden function: the type of the " + RoleDiagnostic.ordinal(i + 1) + " argument does not match", "XTSE3070");
            }
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void compileDeclaration(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, false);
        if (compileSequenceConstructor == null) {
            compileSequenceConstructor = Literal.makeEmptySequence();
        } else if (!Literal.isEmptySequence(compileSequenceConstructor)) {
            if (this.f101988q0 == Visibility.ABSTRACT) {
                compileError("A function defined with visibility='abstract' must have no body");
            }
            compileSequenceConstructor = compileSequenceConstructor.simplify();
        }
        UserFunction compiledFunction = getCompiledFunction();
        compiledFunction.setBody(compileSequenceConstructor);
        compiledFunction.setStackFrameMap(this.f101997z);
        m64037Z(compiledFunction);
        compiledFunction.setRetainedStaticContext(makeRetainedStaticContext());
        compiledFunction.setOverrideExtensionFunction(this.f101985Q);
        if (compilation.getCompilerInfo().getCodeInjector() != null) {
            compilation.getCompilerInfo().getCodeInjector().process(compiledFunction);
        }
        Component m63952C = m63952C();
        if (m63952C != null) {
            checkCompatibility(m63952C);
        }
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public void generateByteCode(Optimizer optimizer) throws XPathException {
    }

    public SequenceType[] getArgumentTypes() {
        SequenceType[] sequenceTypeArr = new SequenceType[getNumberOfArguments()];
        Iterator<? extends NodeInfo> it2 = children(new w2n(XSLLocalParam.class)).iterator();
        int i = 0;
        while (it2.hasNext()) {
            sequenceTypeArr[i] = ((XSLLocalParam) it2.next()).getRequiredType();
            i++;
        }
        return sequenceTypeArr;
    }

    public UserFunction getCompiledFunction() {
        if (this.f101987k0 == null) {
            prepareAttributes();
            UserFunction newUserFunction = getConfiguration().newUserFunction(this.f101983J, this.f101989t0);
            newUserFunction.setPackageData(getCompilation().getPackageData());
            newUserFunction.setFunctionName(getObjectName());
            setParameterDefinitions(newUserFunction);
            newUserFunction.setResultType(getResultType());
            newUserFunction.setLineNumber(getLineNumber());
            newUserFunction.setColumnNumber(getColumnNumber());
            newUserFunction.setSystemId(getSystemId());
            newUserFunction.obtainDeclaringComponent(this);
            newUserFunction.setDeclaredVisibility(getDeclaredVisibility());
            newUserFunction.setDeclaredStreamability(this.f101989t0);
            newUserFunction.setDeterminism(this.f101991u0);
            ArrayList arrayList = new ArrayList();
            if (this.f101983J) {
                arrayList.add(new Annotation(new StructuredQName("saxon", NamespaceConstant.SAXON, "memo-function")));
            }
            newUserFunction.setAnnotations(new AnnotationList(arrayList));
            newUserFunction.setOverrideExtensionFunction(this.f101985Q);
            this.f101987k0 = newUserFunction;
        }
        return this.f101987k0;
    }

    public int getNumberOfArguments() {
        if (this.f101986Z == -1) {
            this.f101986Z = 0;
            Iterator<? extends NodeInfo> it2 = children().iterator();
            while (it2.hasNext()) {
                if (!(it2.next() instanceof XSLLocalParam)) {
                    return this.f101986Z;
                }
                this.f101986Z++;
            }
        }
        return this.f101986Z;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public StructuredQName getObjectName() {
        StructuredQName objectName = super.getObjectName();
        if (objectName != null) {
            return objectName;
        }
        String trim = Whitespace.trim(getAttributeValue("", "name"));
        this.f101992v = trim;
        if (trim != null) {
            StructuredQName makeQName = makeQName(trim, null, "name");
            setObjectName(makeQName);
            return makeQName;
        }
        return new StructuredQName("saxon", NamespaceConstant.SAXON, "badly-named-function" + generateId());
    }

    public SequenceType getResultType() {
        String attributeValue;
        if (this.f101996y == null && (attributeValue = getAttributeValue("", "as")) != null) {
            try {
                this.f101996y = makeSequenceType(attributeValue);
            } catch (XPathException unused) {
            }
        }
        SequenceType sequenceType = this.f101996y;
        return sequenceType == null ? SequenceType.ANY_SEQUENCE : sequenceType;
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public SlotManager getSlotManager() {
        return this.f101997z;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public Visibility getVisibility() {
        Visibility visibility = this.f101988q0;
        if (visibility != Visibility.UNDEFINED) {
            return visibility;
        }
        String attributeValue = getAttributeValue("", "visibility");
        return attributeValue == null ? Visibility.PRIVATE : m63954E(Whitespace.trim(attributeValue), "");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void index(ComponentDeclaration componentDeclaration, PrincipalStylesheetModule principalStylesheetModule) {
        getCompiledFunction();
        principalStylesheetModule.indexFunction(componentDeclaration);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isDeclaration() {
        return true;
    }

    public boolean isOverrideExtensionFunction() {
        if (this.f101984O == null) {
            prepareAttributes();
        }
        return this.f101985Q;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isPermittedChild(StyleElement styleElement) {
        return styleElement instanceof XSLLocalParam;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainParam() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public void optimize(ComponentDeclaration componentDeclaration) throws XPathException {
        int markTailFunctionCalls;
        Expression body = this.f101987k0.getBody();
        ExpressionTool.resetPropertiesWithinSubtree(body);
        ExpressionVisitor makeExpressionVisitor = makeExpressionVisitor();
        ContextItemStaticInfo contextItemStaticInfo = ContextItemStaticInfo.ABSENT;
        Expression typeCheck = body.typeCheck(makeExpressionVisitor, contextItemStaticInfo);
        if (this.f101989t0.isStreaming()) {
            makeExpressionVisitor.setOptimizeForStreaming(true);
        }
        Expression optimizeComponentBody = ExpressionTool.optimizeComponentBody(typeCheck, getCompilation(), makeExpressionVisitor, contextItemStaticInfo, true);
        StyleElement.setInstructionLocation(this, optimizeComponentBody);
        this.f101987k0.setBody(optimizeComponentBody);
        Optimizer obtainOptimizer = makeExpressionVisitor.getConfiguration().obtainOptimizer();
        if (this.f101989t0.isStreaming()) {
            obtainOptimizer.assessFunctionStreamability(this, this.f101987k0);
        }
        m63974m(optimizeComponentBody);
        if (optimizeComponentBody != body) {
            this.f101987k0.setBody(optimizeComponentBody);
        }
        if (getCompilation().getCompilerInfo().getOptimizerOptions().isSet(16384) && !this.f101989t0.isStreaming() && (markTailFunctionCalls = ExpressionTool.markTailFunctionCalls(optimizeComponentBody, getObjectName(), getNumberOfArguments())) != 0) {
            this.f101987k0.setTailRecursive(markTailFunctionCalls > 0, markTailFunctionCalls > 1);
            optimizeComponentBody = this.f101987k0.getBody();
            this.f101987k0.setBody(new TailCallLoop(this.f101987k0, optimizeComponentBody));
        }
        this.f101987k0.computeEvaluationMode();
        if (this.f101989t0.isStreaming()) {
            this.f101987k0.prepareForStreaming();
        } else if (makeExpressionVisitor.getConfiguration().isDeferredByteCode(HostLanguage.XSLT)) {
            UserFunction userFunction = this.f101987k0;
            Optimizer obtainOptimizer2 = getConfiguration().obtainOptimizer();
            UserFunction userFunction2 = this.f101987k0;
            userFunction.setBody(obtainOptimizer2.makeByteCodeCandidate(userFunction2, userFunction2.getBody(), this.f101992v, 6));
        }
        if (this.f101993v0) {
            optimizeComponentBody.explain(getConfiguration().getLogger());
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x005c. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:38:0x00b5. Please report as an issue. */
    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        SequenceType sequenceType;
        String str;
        String str2;
        Object obj;
        char c;
        if (this.f101990u) {
            return;
        }
        this.f101990u = true;
        AttributeMap attributes = attributes();
        this.f101984O = null;
        Iterator<AttributeInfo> it2 = attributes.iterator();
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        while (it2.hasNext()) {
            AttributeInfo next = it2.next();
            NodeName nodeName = next.getNodeName();
            String uri = nodeName.getURI();
            String localPart = nodeName.getLocalPart();
            Iterator<AttributeInfo> it3 = it2;
            String str7 = str6;
            if ("".equals(uri)) {
                localPart.hashCode();
                str = str4;
                str2 = str5;
                char c2 = 65535;
                switch (localPart.hashCode()) {
                    case -1323421908:
                        if (localPart.equals("new-each-time")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case 3122:
                        if (localPart.equals("as")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case 3373707:
                        if (localPart.equals("name")) {
                            c = 2;
                            c2 = c;
                            break;
                        }
                        break;
                    case 94416770:
                        if (localPart.equals("cache")) {
                            c = 3;
                            c2 = c;
                            break;
                        }
                        break;
                    case 175847751:
                        if (localPart.equals("override-extension-function")) {
                            c = 4;
                            c2 = c;
                            break;
                        }
                        break;
                    case 529996748:
                        if (localPart.equals("override")) {
                            c = 5;
                            c2 = c;
                            break;
                        }
                        break;
                    case 1902900650:
                        if (localPart.equals("streamability")) {
                            c = 6;
                            c2 = c;
                            break;
                        }
                        break;
                    case 1941332754:
                        if (localPart.equals("visibility")) {
                            c = 7;
                            c2 = c;
                            break;
                        }
                        break;
                }
                switch (c2) {
                    case 0:
                        obj = null;
                        str = Whitespace.trim(next.getValue());
                        break;
                    case 1:
                        obj = null;
                        this.f101994w = next.getValue();
                        break;
                    case 2:
                        String trim = Whitespace.trim(next.getValue());
                        this.f101992v = trim;
                        obj = null;
                        StructuredQName makeQName = makeQName(trim, null, "name");
                        if (makeQName.hasURI("")) {
                            StructuredQName structuredQName = new StructuredQName("saxon", NamespaceConstant.SAXON, makeQName.getLocalPart());
                            compileError("Function name must be in a namespace", "XTSE0740");
                            makeQName = structuredQName;
                        }
                        setObjectName(makeQName);
                        break;
                    case 3:
                        str6 = Whitespace.trim(next.getValue());
                        str5 = str2;
                        obj = null;
                        break;
                    case 4:
                        String trim2 = Whitespace.trim(next.getValue());
                        boolean processBooleanAttribute = processBooleanAttribute("override-extension-function", trim2);
                        if (this.f101984O == null) {
                            this.f101984O = trim2;
                            this.f101985Q = processBooleanAttribute;
                        } else if (processBooleanAttribute != this.f101985Q) {
                            compileError("Attributes override-extension-function and override are both used, but do not match", "XTSE0020");
                        }
                        if (localPart.equals("override")) {
                            compileWarning("The xsl:function/@override attribute is deprecated; use override-extension-function", SaxonErrorCode.SXWN9014);
                        }
                        obj = null;
                        break;
                    case 5:
                        String trim3 = Whitespace.trim(next.getValue());
                        boolean processBooleanAttribute2 = processBooleanAttribute("override", trim3);
                        if (this.f101984O == null) {
                            this.f101984O = trim3;
                            this.f101985Q = processBooleanAttribute2;
                        } else if (processBooleanAttribute2 != this.f101985Q) {
                            compileError("Attributes override-extension-function and override are both used, but do not match", "XTSE0020");
                        }
                        compileWarning("The xsl:function/@override attribute is deprecated; use override-extension-function", SaxonErrorCode.SXWN9014);
                        obj = null;
                        break;
                    case 6:
                        str5 = Whitespace.trim(next.getValue());
                        str6 = str7;
                        obj = null;
                        break;
                    case 7:
                        str3 = Whitespace.trim(next.getValue());
                        str6 = str7;
                        str5 = str2;
                        obj = null;
                        break;
                    default:
                        checkUnknownAttribute(nodeName);
                        obj = null;
                        break;
                }
                str4 = str;
                it2 = it3;
            } else {
                str = str4;
                str2 = str5;
                obj = null;
                if (!uri.equals(NamespaceConstant.SAXON)) {
                    checkUnknownAttribute(nodeName);
                } else if (isExtensionAttributeAllowed(next.getNodeName().getDisplayName())) {
                    if (localPart.equals("memo-function")) {
                        compileWarning("saxon:memo-function is deprecated: use cache='yes'", SaxonErrorCode.SXWN9014);
                        if (getConfiguration().isLicensedFeature(8)) {
                            this.f101983J = processBooleanAttribute("saxon:memo-function", next.getValue());
                        }
                    } else if (localPart.equals("as")) {
                        isExtensionAttributeAllowed(nodeName.getDisplayName());
                        this.f101995x = next.getValue();
                    } else if (localPart.equals("explain") && StyleElement.isYes(Whitespace.trim(next.getValue()))) {
                        this.f101993v0 = true;
                    }
                }
            }
            str6 = str7;
            str5 = str2;
            str4 = str;
            it2 = it3;
        }
        String str8 = str4;
        String str9 = str5;
        String str10 = str6;
        if (this.f101992v == null) {
            reportAbsence("name");
            this.f101992v = "xsl:unnamed-function-" + generateId();
        }
        String str11 = this.f101994w;
        if (str11 != null) {
            try {
                this.f101996y = makeSequenceType(str11);
            } catch (XPathException e) {
                compileErrorInAttribute(e.getMessage(), e.getErrorCodeLocalPart(), "as");
            }
        }
        String str12 = this.f101995x;
        if (str12 != null) {
            try {
                sequenceType = m63959K(str12);
            } catch (XPathException e2) {
                compileErrorInAttribute(e2.getMessage(), e2.getErrorCodeLocalPart(), "saxon:as");
                sequenceType = this.f101996y;
            }
            if (this.f101994w != null) {
                Affinity sequenceTypeRelationship = getConfiguration().getTypeHierarchy().sequenceTypeRelationship(sequenceType, this.f101996y);
                if (sequenceTypeRelationship == Affinity.SAME_TYPE || sequenceTypeRelationship == Affinity.SUBSUMED_BY) {
                    this.f101996y = sequenceType;
                } else {
                    compileErrorInAttribute("When both are present, @saxon:as must be a subtype of @as", "SXER7TBA", "saxon:as");
                }
            } else {
                this.f101996y = sequenceType;
            }
        }
        if (str3 == null) {
            this.f101988q0 = Visibility.PRIVATE;
        } else {
            this.f101988q0 = m63954E(str3, "");
        }
        if (str9 == null) {
            this.f101989t0 = FunctionStreamability.UNCLASSIFIED;
        } else {
            FunctionStreamability m64038a0 = m64038a0(str9);
            this.f101989t0 = m64038a0;
            if (m64038a0.isStreaming() && !m63969U("yes")) {
                this.f101989t0 = FunctionStreamability.UNCLASSIFIED;
            }
        }
        if (str8 != null) {
            if ("maybe".equals(str8)) {
                this.f101991u0 = UserFunction.Determinism.ELIDABLE;
            } else {
                this.f101991u0 = processBooleanAttribute("new-each-time", str8) ? UserFunction.Determinism.PROACTIVE : UserFunction.Determinism.DETERMINISTIC;
            }
        }
        boolean processBooleanAttribute3 = str10 != null ? processBooleanAttribute("cache", str10) : false;
        if (this.f101991u0 == UserFunction.Determinism.DETERMINISTIC || processBooleanAttribute3) {
            this.f101983J = true;
        }
    }

    public void setParameterDefinitions(UserFunction userFunction) {
        FunctionStreamability functionStreamability;
        UserFunctionParameter[] userFunctionParameterArr = new UserFunctionParameter[getNumberOfArguments()];
        userFunction.setParameterDefinitions(userFunctionParameterArr);
        int i = 0;
        for (NodeInfo nodeInfo : children()) {
            if (!(nodeInfo instanceof XSLLocalParam)) {
                return;
            }
            UserFunctionParameter userFunctionParameter = new UserFunctionParameter();
            userFunctionParameterArr[i] = userFunctionParameter;
            XSLLocalParam xSLLocalParam = (XSLLocalParam) nodeInfo;
            userFunctionParameter.setRequiredType(xSLLocalParam.getRequiredType());
            userFunctionParameter.setVariableQName(xSLLocalParam.getVariableQName());
            userFunctionParameter.setSlotNumber(xSLLocalParam.getSlotNumber());
            if (i == 0 && (functionStreamability = this.f101989t0) != FunctionStreamability.UNCLASSIFIED) {
                userFunctionParameter.setFunctionStreamability(functionStreamability);
            }
            i++;
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        this.f101997z = getConfiguration().makeSlotManager();
        checkTopLevel("XTSE0010", true);
        if (getNumberOfArguments() != 0 || this.f101989t0 == FunctionStreamability.UNCLASSIFIED) {
            return;
        }
        compileError("A function with no arguments must have streamability=unclassified", "XTSE3155");
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public UserFunction getActor() {
        return this.f101987k0;
    }

    @Override // net.p110sf.saxon.style.StylesheetComponent
    public SymbolicName.C18533F getSymbolicName() {
        return new SymbolicName.C18533F(getObjectName(), getNumberOfArguments());
    }
}
