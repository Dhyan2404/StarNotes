package net.p110sf.saxon.expr.instruct;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.Iterator;
import java.util.Objects;
import java.util.Optional;
import java.util.function.BiConsumer;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.PendingUpdateList;
import net.p110sf.saxon.expr.UserFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.Evaluator;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trace.TraceableComponent;
import net.p110sf.saxon.trans.FunctionStreamability;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class UserFunction extends Actor implements Function, ContextOriginator, TraceableComponent {

    /* renamed from: J */
    public static final int f99839J = 100;

    /* renamed from: m */
    public StructuredQName f99840m;

    /* renamed from: p */
    public UserFunctionParameter[] f99843p;

    /* renamed from: q */
    public SequenceType f99844q;

    /* renamed from: r */
    public SequenceType f99845r;

    /* renamed from: n */
    public boolean f99841n = false;

    /* renamed from: o */
    public boolean f99842o = false;
    protected Evaluator evaluator = null;

    /* renamed from: s */
    public boolean f99846s = false;

    /* renamed from: t */
    public int f99847t = -1;

    /* renamed from: u */
    public int f99848u = 0;

    /* renamed from: v */
    public boolean f99849v = true;

    /* renamed from: w */
    public AnnotationList f99850w = AnnotationList.EMPTY;

    /* renamed from: x */
    public FunctionStreamability f99851x = FunctionStreamability.UNCLASSIFIED;

    /* renamed from: y */
    public Determinism f99852y = Determinism.PROACTIVE;

    /* renamed from: z */
    public int f99853z = 0;

    /* loaded from: classes11.dex */
    public enum Determinism {
        DETERMINISTIC,
        PROACTIVE,
        ELIDABLE
    }

    /* renamed from: net.sf.saxon.expr.instruct.UserFunction$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18318a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f99854a;

        static {
            int[] iArr = new int[FunctionStreamability.values().length];
            f99854a = iArr;
            try {
                iArr[FunctionStreamability.UNCLASSIFIED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f99854a[FunctionStreamability.ABSORBING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f99854a[FunctionStreamability.INSPECTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f99854a[FunctionStreamability.FILTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f99854a[FunctionStreamability.SHALLOW_DESCENT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f99854a[FunctionStreamability.DEEP_DESCENT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f99854a[FunctionStreamability.ASCENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: b */
    public static boolean m62797b(Expression expression) {
        if (expression instanceof UserFunctionCall) {
            return true;
        }
        Iterator<Operand> it2 = expression.operands().iterator();
        while (it2.hasNext()) {
            if (m62797b(it2.next().getChildExpression())) {
                return true;
            }
        }
        return false;
    }

    public boolean acceptsNodesWithoutAtomization() {
        for (int i = 0; i < getArity(); i++) {
            ItemType primaryType = getArgumentType(i).getPrimaryType();
            if ((primaryType instanceof NodeTest) || primaryType == AnyItemType.getInstance()) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.om.Item
    public AtomicSequence atomize() throws XPathException {
        throw new XPathException("Functions cannot be atomized", "FOTY0013");
    }

    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        String str;
        if (this.evaluator == null) {
            computeEvaluationMode();
        }
        XPathContextMajor xPathContextMajor = (XPathContextMajor) xPathContext;
        xPathContextMajor.setStackFrame(getStackFrameMap(), sequenceArr);
        try {
            return this.evaluator.evaluate(getBody(), xPathContextMajor);
        } catch (UncheckedXPathException e) {
            XPathException xPathException = e.getXPathException();
            xPathException.maybeSetLocation(this.getLocation());
            xPathException.maybeSetContext(xPathContextMajor);
            throw xPathException;
        } catch (XPathException e2) {
            e2.maybeSetLocation(this.getLocation());
            e2.maybeSetContext(xPathContextMajor);
            throw e2;
        } catch (Exception e3) {
            StringBuilder sb = new StringBuilder();
            sb.append("Internal error evaluating function ");
            StructuredQName structuredQName = this.f99840m;
            sb.append(structuredQName == null ? "(unnamed)" : structuredQName.getDisplayName());
            String str2 = "";
            if (this.getLineNumber() > 0) {
                str = " at line " + this.getLineNumber();
            } else {
                str = "";
            }
            sb.append(str);
            if (this.getSystemId() != null) {
                str2 = " in module " + this.getSystemId();
            }
            sb.append(str2);
            throw new RuntimeException(sb.toString(), e3);
        }
    }

    public void callUpdating(Sequence[] sequenceArr, XPathContextMajor xPathContextMajor, PendingUpdateList pendingUpdateList) throws XPathException {
        xPathContextMajor.setStackFrame(getStackFrameMap(), sequenceArr);
        try {
            getBody().evaluatePendingUpdates(xPathContextMajor, pendingUpdateList);
        } catch (XPathException e) {
            e.maybeSetLocation(getLocation());
            throw e;
        }
    }

    public void computeEvaluationMode() {
        if (this.f99842o) {
            this.evaluator = ExpressionTool.eagerEvaluator(getBody());
        } else {
            this.evaluator = ExpressionTool.lazyEvaluator(getBody(), true);
        }
    }

    public boolean containsTailCalls() {
        return this.f99841n;
    }

    @Override // net.p110sf.saxon.om.Function
    public boolean deepEquals(Function function, XPathContext xPathContext, AtomicComparer atomicComparer, int i) throws XPathException {
        XPathException xPathException = new XPathException("Cannot compare functions using deep-equal", "FOTY0015");
        xPathException.setIsTypeError(true);
        xPathException.setXPathContext(xPathContext);
        throw xPathException;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() throws XPathException {
        return ExpressionTool.effectiveBooleanValue(this);
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        String str;
        expressionPresenter.startElement(Constants.EXSLT_ELEMNAME_FUNCTION_STRING);
        if (getFunctionName() != null) {
            expressionPresenter.emitAttribute("name", getFunctionName());
            expressionPresenter.emitAttribute("line", getLineNumber() + "");
            expressionPresenter.emitAttribute("module", getSystemId());
            expressionPresenter.emitAttribute(Constants.ELEMNAME_EVAL_STRING, getEvaluator().getCode() + "");
        }
        Determinism determinism = this.f99852y;
        if (determinism == Determinism.PROACTIVE) {
            str = "p";
        } else if (determinism == Determinism.ELIDABLE) {
            str = "e";
        } else {
            str = "d";
        }
        if (isMemoFunction()) {
            str = str + "m";
        }
        switch (C18318a.f99854a[this.f99851x.ordinal()]) {
            case 1:
                str = str + "U";
                break;
            case 2:
                str = str + "A";
                break;
            case 3:
                str = str + "I";
                break;
            case 4:
                str = str + "F";
                break;
            case 5:
                str = str + "S";
                break;
            case 6:
                str = str + SardineUtil.DEFAULT_NAMESPACE_PREFIX;
                break;
            case 7:
                str = str + BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY;
                break;
        }
        expressionPresenter.emitAttribute("flags", str);
        expressionPresenter.emitAttribute("as", getDeclaredResultType().toAlphaCode());
        expressionPresenter.emitAttribute("slots", getStackFrameMap().getNumberOfVariables() + "");
        for (UserFunctionParameter userFunctionParameter : this.f99843p) {
            expressionPresenter.startElement(Constants.ELEMNAME_ARG_STRING);
            expressionPresenter.emitAttribute("name", userFunctionParameter.getVariableQName());
            expressionPresenter.emitAttribute("as", userFunctionParameter.getRequiredType().toAlphaCode());
            expressionPresenter.endElement();
        }
        expressionPresenter.setChildRole("body");
        getBody().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.trace.Traceable
    public void gatherProperties(BiConsumer<String, Object> biConsumer) {
        biConsumer.accept("name", getFunctionName());
        biConsumer.accept("arity", Integer.valueOf(getArity()));
    }

    @Override // net.p110sf.saxon.om.Function
    public AnnotationList getAnnotations() {
        return this.f99850w;
    }

    public SequenceType getArgumentType(int i) {
        return this.f99843p[i].getRequiredType();
    }

    @Override // net.p110sf.saxon.om.Function
    public int getArity() {
        return this.f99843p.length;
    }

    public SequenceType getDeclaredResultType() {
        return this.f99845r;
    }

    public FunctionStreamability getDeclaredStreamability() {
        return this.f99851x;
    }

    @Override // net.p110sf.saxon.om.Function
    public String getDescription() {
        StructuredQName functionName = getFunctionName();
        if (!functionName.hasURI(NamespaceConstant.ANONYMOUS)) {
            return functionName.getDisplayName();
        }
        StringBuilder sb = new StringBuilder("function(");
        boolean z = true;
        for (UserFunctionParameter userFunctionParameter : getParameterDefinitions()) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append("$");
            sb.append(userFunctionParameter.getVariableQName().getDisplayName());
        }
        sb.append("){");
        Expression body = getBody();
        if (body == null) {
            sb.append(RemoveAudioAction.f58149k);
        } else {
            sb.append(body.toShortString());
        }
        sb.append("}");
        return sb.toString();
    }

    public Determinism getDeterminism() {
        return this.f99852y;
    }

    public Evaluator getEvaluator() {
        if (this.evaluator == null) {
            computeEvaluationMode();
        }
        return this.evaluator;
    }

    @Override // net.p110sf.saxon.om.Function
    public FunctionItemType getFunctionItemType() {
        SequenceType[] sequenceTypeArr = new SequenceType[this.f99843p.length];
        int i = 0;
        while (true) {
            UserFunctionParameter[] userFunctionParameterArr = this.f99843p;
            if (i >= userFunctionParameterArr.length) {
                return new SpecificFunctionType(sequenceTypeArr, this.f99844q, this.f99850w);
            }
            sequenceTypeArr[i] = userFunctionParameterArr[i].getRequiredType();
            i++;
        }
    }

    @Override // net.p110sf.saxon.om.Function
    public StructuredQName getFunctionName() {
        return this.f99840m;
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public int getLength() {
        return 1;
    }

    @Override // net.p110sf.saxon.trace.Traceable
    public StructuredQName getObjectName() {
        return this.f99840m;
    }

    @Override // net.p110sf.saxon.om.Function
    public OperandRole[] getOperandRoles() {
        int arity = getArity();
        OperandRole[] operandRoleArr = new OperandRole[arity];
        OperandUsage operandUsage = OperandUsage.TRANSMISSION;
        switch (C18318a.f99854a[this.f99851x.ordinal()]) {
            case 1:
                operandUsage = OperandRole.getTypeDeterminedUsage(getArgumentType(0).getPrimaryType());
                break;
            case 2:
                operandUsage = OperandUsage.ABSORPTION;
                break;
            case 3:
                operandUsage = OperandUsage.INSPECTION;
                break;
        }
        operandRoleArr[0] = new OperandRole(0, operandUsage, getArgumentType(0));
        for (int i = 1; i < arity; i++) {
            SequenceType argumentType = getArgumentType(i);
            operandRoleArr[i] = new OperandRole(0, OperandRole.getTypeDeterminedUsage(argumentType.getPrimaryType()), argumentType);
        }
        return operandRoleArr;
    }

    public UserFunctionParameter[] getParameterDefinitions() {
        return this.f99843p;
    }

    public int getReferenceCount() {
        return this.f99853z;
    }

    public SequenceType getResultType() {
        if (this.f99844q == SequenceType.ANY_SEQUENCE && getBody() != null && !m62797b(getBody())) {
            this.f99844q = SequenceType.makeSequenceType(getBody().getItemType(), getBody().getCardinality());
        }
        return this.f99844q;
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor, net.p110sf.saxon.trace.TraceableComponent
    public String getTracingTag() {
        return "xsl:function";
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        throw new UnsupportedOperationException("A function has no string value");
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public UserFunction head() {
        return this;
    }

    public void incrementReferenceCount() {
        this.f99853z++;
    }

    @Override // net.p110sf.saxon.om.Function
    public boolean isArray() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public boolean isExportable() {
        return this.f99853z > 0 || !(getDeclaredVisibility() == Visibility.UNDEFINED || getDeclaredVisibility() == Visibility.PRIVATE) || ((StylesheetPackage) getPackageData()).isRetainUnusedFunctions();
    }

    public Optional<Boolean> isInlineable() {
        int i = this.f99847t;
        if (i != -1) {
            return Optional.of(Boolean.valueOf(i > 0 && this.f99848u < 100));
        }
        Expression expression = this.body;
        if (expression == null) {
            return Optional.empty();
        }
        if (expression.hasSpecialProperty(33554432) || this.f99841n) {
            return Optional.of(Boolean.FALSE);
        }
        if (getDeclaringComponent() == null) {
            return Optional.empty();
        }
        Visibility visibility = getDeclaringComponent().getVisibility();
        if (visibility != Visibility.PRIVATE && visibility != Visibility.FINAL) {
            return Optional.of(Boolean.FALSE);
        }
        int i2 = this.f99847t;
        if (i2 < 0) {
            return Optional.empty();
        }
        return Optional.of(Boolean.valueOf(i2 > 0));
    }

    @Override // net.p110sf.saxon.om.Function
    public boolean isMap() {
        return false;
    }

    public boolean isMemoFunction() {
        return false;
    }

    public boolean isOverrideExtensionFunction() {
        return this.f99849v;
    }

    public boolean isTailRecursive() {
        return this.f99842o;
    }

    @Override // net.p110sf.saxon.om.Function
    public boolean isTrustedResultType() {
        return false;
    }

    public boolean isUpdating() {
        return this.f99846s;
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public Function itemAt(int i) {
        if (i == 0) {
            return this;
        }
        return null;
    }

    public void markAsInlined() {
        this.f99848u++;
    }

    public void prepareForStreaming() throws XPathException {
    }

    public void process(XPathContextMajor xPathContextMajor, Sequence[] sequenceArr, Outputter outputter) throws XPathException {
        xPathContextMajor.setStackFrame(getStackFrameMap(), sequenceArr);
        getBody().process(outputter, xPathContextMajor);
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UserFunction reduce() {
        return this;
    }

    public void setAnnotations(AnnotationList annotationList) {
        Objects.requireNonNull(annotationList);
        this.f99850w = annotationList;
    }

    public void setDeclaredStreamability(FunctionStreamability functionStreamability) {
        if (functionStreamability == null) {
            functionStreamability = FunctionStreamability.UNCLASSIFIED;
        }
        this.f99851x = functionStreamability;
    }

    public void setDeterminism(Determinism determinism) {
        this.f99852y = determinism;
    }

    public void setEvaluator(Evaluator evaluator) {
        this.evaluator = evaluator;
    }

    public void setFunctionName(StructuredQName structuredQName) {
        this.f99840m = structuredQName;
    }

    public void setInlineable(boolean z) {
        this.f99847t = z ? 1 : 0;
    }

    public void setOverrideExtensionFunction(boolean z) {
        this.f99849v = z;
    }

    public void setParameterDefinitions(UserFunctionParameter[] userFunctionParameterArr) {
        this.f99843p = userFunctionParameterArr;
    }

    public void setResultType(SequenceType sequenceType) {
        this.f99845r = sequenceType;
        this.f99844q = sequenceType;
    }

    public void setTailRecursive(boolean z, boolean z2) {
        this.f99841n = z;
        this.f99842o = z2;
    }

    public void setUpdating(boolean z) {
        this.f99846s = z;
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public GroundedValue subsequence(int i, int i2) {
        return (i > 0 || i + i2 <= 0) ? EmptySequence.getInstance() : this;
    }

    public void typeCheck(ExpressionVisitor expressionVisitor) throws XPathException {
        String str;
        Expression body = getBody();
        if ((body instanceof ValueOf) && ((ValueOf) body).getSelect().getItemType().isAtomicType() && this.f99845r.getPrimaryType().isAtomicType() && this.f99845r.getPrimaryType() != BuiltInAtomicType.STRING) {
            expressionVisitor.getStaticContext().issueWarning("A function that computes atomic values should use xsl:sequence rather than xsl:value-of", getLocation());
        }
        ExpressionTool.resetPropertiesWithinSubtree(body);
        try {
            Expression typeCheck = body.typeCheck(expressionVisitor, ContextItemStaticInfo.ABSENT);
            if (this.f99844q != null) {
                if (this.f99840m == null) {
                    str = "";
                } else {
                    str = this.f99840m.getDisplayName() + "#" + getArity();
                }
                RoleDiagnostic roleDiagnostic = new RoleDiagnostic(5, str, 0);
                roleDiagnostic.setErrorCode((!getPackageData().isXSLT() || getFunctionName() == null) ? "XPTY0004" : "XTTE0780");
                typeCheck = expressionVisitor.getConfiguration().getTypeChecker(false).staticTypeCheck(typeCheck, this.f99844q, roleDiagnostic, expressionVisitor);
            }
            if (typeCheck != body) {
                setBody(typeCheck);
            }
        } catch (XPathException e) {
            e.maybeSetLocation(getLocation());
            throw e;
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public SymbolicName.C18533F getSymbolicName() {
        return new SymbolicName.C18533F(this.f99840m, getArity());
    }

    @Override // net.p110sf.saxon.om.Function
    public XPathContextMajor makeNewContext(XPathContext xPathContext, ContextOriginator contextOriginator) {
        XPathContextMajor newCleanContext = xPathContext.newCleanContext();
        newCleanContext.setTemporaryOutputState(160);
        newCleanContext.setCurrentOutputUri(null);
        newCleanContext.setCurrentComponent(getDeclaringComponent());
        newCleanContext.setOrigin(contextOriginator);
        return newCleanContext;
    }

    public Sequence call(Sequence[] sequenceArr, Controller controller) throws XPathException {
        return call(controller.newXPathContext(), sequenceArr);
    }
}
