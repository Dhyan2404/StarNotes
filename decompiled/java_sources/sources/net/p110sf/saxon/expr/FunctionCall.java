package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import java.util.Collections;
import java.util.Iterator;
import net.p110sf.saxon.expr.oper.OperandArray;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.JavaExternalObjectType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public abstract class FunctionCall extends Expression {

    /* renamed from: n */
    public OperandArray f99258n;

    public static String pluralArguments(int i) {
        if (i == 1) {
            return "one argument";
        }
        return i + " arguments";
    }

    public PathMap.PathMapNodeSet addExternalFunctionCallToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        PathMap.PathMapNodeSet pathMapNodeSet2 = new PathMap.PathMapNodeSet();
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            pathMapNodeSet2.addNodeSet(it2.next().getChildExpression().addToPathMap(pathMap, pathMapNodeSet));
        }
        pathMapNodeSet2.setHasUnknownDependencies();
        return pathMapNodeSet2;
    }

    public boolean adjustRequiredType(JavaExternalObjectType javaExternalObjectType) throws XPathException {
        return false;
    }

    public int checkArgumentCount(int i, int i2) throws XPathException {
        String str;
        int arity = getArity();
        if (i == i2 && arity != i) {
            str = "Function " + getDisplayName() + " must have " + pluralArguments(i);
        } else if (arity < i) {
            str = "Function " + getDisplayName() + " must have at least " + pluralArguments(i);
        } else if (arity > i2) {
            str = "Function " + getDisplayName() + " must have no more than " + pluralArguments(i2);
        } else {
            str = null;
        }
        if (str == null) {
            return arity;
        }
        XPathException xPathException = new XPathException(str, "XPST0017");
        xPathException.setIsStaticError(true);
        xPathException.setLocation(getLocation());
        throw xPathException;
    }

    public void checkArguments(ExpressionVisitor expressionVisitor) throws XPathException {
    }

    public void checkFunctionCall(Function function, ExpressionVisitor expressionVisitor) throws XPathException {
        TypeChecker typeChecker = expressionVisitor.getConfiguration().getTypeChecker(expressionVisitor.getStaticContext().isInBackwardsCompatibleMode());
        SequenceType[] argumentTypes = function.getFunctionItemType().getArgumentTypes();
        if (function.isSequenceVariadic() && getArity() == 1) {
            setArg(0, typeChecker.staticTypeCheck(getArg(0), new SequenceType(argumentTypes[0].getPrimaryType(), 57344), new RoleDiagnostic(0, getFunctionName() != null ? getFunctionName().getDisplayName() : "", 0), expressionVisitor));
            return;
        }
        int arity = function.getArity();
        for (int i = 0; i < arity; i++) {
            setArg(i, typeChecker.staticTypeCheck(getArg(i), argumentTypes[i], new RoleDiagnostic(0, getFunctionName() == null ? "" : getFunctionName().getDisplayName(), i), expressionVisitor));
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        if (getFunctionName() == null) {
            return super.computeHashCode();
        }
        int hashCode = getFunctionName().hashCode();
        for (int i = 0; i < getArity(); i++) {
            hashCode ^= getArg(i).hashCode();
        }
        return hashCode;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (!(obj instanceof FunctionCall)) {
            return false;
        }
        if (getFunctionName() == null) {
            return this == obj;
        }
        FunctionCall functionCall = (FunctionCall) obj;
        if (!getFunctionName().equals(functionCall.getFunctionName()) || getArity() != functionCall.getArity()) {
            return false;
        }
        for (int i = 0; i < getArity(); i++) {
            if (!getArg(i).isEqual(functionCall.getArg(i))) {
                return false;
            }
        }
        return true;
    }

    public Sequence[] evaluateArguments(XPathContext xPathContext) throws XPathException {
        int arity = getArity();
        Sequence[] sequenceArr = new Sequence[arity];
        for (int i = 0; i < arity; i++) {
            sequenceArr[i] = ExpressionTool.lazyEvaluate(getArg(i), xPathContext, false);
        }
        return sequenceArr;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("functionCall", this);
        if (getFunctionName() == null) {
            throw new AssertionError("Exporting call to anonymous function");
        }
        expressionPresenter.emitAttribute("name", getFunctionName().getDisplayName());
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            it2.next().getChildExpression().export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    public Expression getArg(int i) {
        return getOperanda().getOperandExpression(i);
    }

    public Expression[] getArguments() {
        Expression[] expressionArr = new Expression[getArity()];
        Iterator<Operand> it2 = operands().iterator();
        int i = 0;
        while (it2.hasNext()) {
            expressionArr[i] = it2.next().getChildExpression();
            i++;
        }
        return expressionArr;
    }

    public final int getArity() {
        return getOperanda().getNumberOfOperands();
    }

    public final String getDisplayName() {
        StructuredQName functionName = getFunctionName();
        return functionName == null ? "(anonymous)" : functionName.getDisplayName();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "functionCall";
    }

    public abstract StructuredQName getFunctionName();

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getNetCost() {
        return 5;
    }

    public OperandArray getOperanda() {
        return this.f99258n;
    }

    public abstract Function getTargetFunction(XPathContext xPathContext) throws XPathException;

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        try {
            return getTargetFunction(xPathContext).call(xPathContext, evaluateArguments(xPathContext)).iterate();
        } catch (XPathException e) {
            e.maybeSetLocation(this.getLocation());
            e.maybeSetContext(xPathContext);
            e.maybeSetFailingExpression(this);
            throw e;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        OperandArray operandArray = this.f99258n;
        return operandArray != null ? operandArray.operands() : Collections.emptyList();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        boolean z;
        optimizeChildren(expressionVisitor, contextItemStaticInfo);
        if (!expressionVisitor.obtainOptimizer().isOptionSet(32768)) {
            return this;
        }
        Iterator<Operand> it2 = operands().iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = true;
                break;
            }
            if (!(it2.next().getChildExpression() instanceof Literal)) {
                z = false;
                break;
            }
        }
        return z ? preEvaluate(expressionVisitor) : this;
    }

    public Expression preEvaluate(ExpressionVisitor expressionVisitor) throws XPathException {
        if ((getIntrinsicDependencies() & (-2049)) != 0) {
            return this;
        }
        try {
            try {
                Literal makeLiteral = Literal.makeLiteral(SequenceTool.toGroundedValue(iterate(expressionVisitor.getStaticContext().makeEarlyEvaluationContext())), this);
                Optimizer.trace(expressionVisitor.getConfiguration(), "Pre-evaluated function call " + toShortString(), makeLiteral);
                return makeLiteral;
            } catch (UncheckedXPathException e) {
                throw e.getXPathException();
            }
        } catch (UnsupportedOperationException e2) {
            if (e2.getCause() instanceof NoDynamicContextException) {
                return this;
            }
            throw e2;
        } catch (NoDynamicContextException unused) {
            return this;
        }
    }

    public Expression preEvaluateIfConstant(ExpressionVisitor expressionVisitor) throws XPathException {
        if (!expressionVisitor.obtainOptimizer().isOptionSet(32768)) {
            return this;
        }
        Iterator<Operand> it2 = operands().iterator();
        boolean z = true;
        while (it2.hasNext()) {
            if (!(it2.next().getChildExpression() instanceof Literal)) {
                z = false;
            }
        }
        if (!z) {
            return this;
        }
        try {
            return preEvaluate(expressionVisitor);
        } catch (NoDynamicContextException unused) {
            return this;
        }
    }

    public void setArg(int i, Expression expression) {
        getOperanda().setOperand(i, expression);
        adoptChildExpression(expression);
    }

    public void setArguments(Expression[] expressionArr) {
        setOperanda(new OperandArray(this, expressionArr));
    }

    public void setOperanda(OperandArray operandArray) {
        this.f99258n = operandArray;
    }

    public final Expression simplifyArguments(StaticContext staticContext) throws XPathException {
        for (int i = 0; i < getArguments().length; i++) {
            Expression simplify = getArg(i).simplify();
            if (simplify != getArg(i)) {
                adoptChildExpression(simplify);
                setArg(i, simplify);
            }
        }
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        StructuredQName functionName = getFunctionName();
        StringBuilder sb = new StringBuilder();
        sb.append(functionName == null ? "$anonFn" : functionName.getDisplayName());
        sb.append(MotionUtils.f31761c);
        sb.append(getArity() == 0 ? "" : RemoveAudioAction.f58149k);
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        StructuredQName functionName = getFunctionName();
        sb.append(functionName == null ? "$anonymousFunction" : functionName.hasURI("http://www.w3.org/2005/xpath-functions") ? functionName.getLocalPart() : functionName.getEQName());
        boolean z = true;
        for (Operand operand : operands()) {
            sb.append(z ? MotionUtils.f31761c : ", ");
            sb.append(operand.getChildExpression().toString());
            z = false;
        }
        sb.append(z ? "()" : MotionUtils.f31762d);
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        typeCheckChildren(expressionVisitor, contextItemStaticInfo);
        checkArguments(expressionVisitor);
        return preEvaluateIfConstant(expressionVisitor);
    }

    public void setOperanda(Expression[] expressionArr, OperandRole[] operandRoleArr) {
        setOperanda(new OperandArray(this, expressionArr, operandRoleArr));
    }
}
