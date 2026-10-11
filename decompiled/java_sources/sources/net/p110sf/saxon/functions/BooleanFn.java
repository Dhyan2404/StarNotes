package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.ValueComparison;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public class BooleanFn extends SystemFunction {

    /* renamed from: h */
    public static final /* synthetic */ boolean f100156h = false;

    /* renamed from: net.sf.saxon.functions.BooleanFn$a */
    /* loaded from: classes11.dex */
    public class C18343a extends SystemFunctionCall {
        public C18343a(SystemFunction systemFunction, Expression[] expressionArr) {
            super(systemFunction, expressionArr);
        }

        @Override // net.p110sf.saxon.expr.Expression
        public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
            try {
                return getArg(0).effectiveBooleanValue(xPathContext);
            } catch (XPathException e) {
                e.maybeSetLocation(this.getLocation());
                e.maybeSetContext(xPathContext);
                throw e;
            }
        }

        @Override // net.p110sf.saxon.expr.SystemFunctionCall, net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
        public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
            Expression rewriteEffectiveBooleanValue;
            Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
            if (optimize != this || (rewriteEffectiveBooleanValue = BooleanFn.rewriteEffectiveBooleanValue(getArg(0), expressionVisitor, contextItemStaticInfo)) == null) {
                return optimize;
            }
            Expression optimize2 = rewriteEffectiveBooleanValue.optimize(expressionVisitor, contextItemStaticInfo);
            if (optimize2.getItemType() == BuiltInAtomicType.BOOLEAN && optimize2.getCardinality() == 16384) {
                optimize2.setParentExpression(getParentExpression());
                return optimize2;
            }
            setArg(0, optimize2);
            adoptChildExpression(optimize2);
            return this;
        }

        @Override // net.p110sf.saxon.expr.Expression
        public BooleanValue evaluateItem(XPathContext xPathContext) throws XPathException {
            return BooleanValue.get(effectiveBooleanValue(xPathContext));
        }
    }

    public static Expression rewriteEffectiveBooleanValue(Expression expression, ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
        Expression unsortedIfHomogeneous = ExpressionTool.unsortedIfHomogeneous(expression, expressionVisitor.isOptimizeForStreaming());
        if (unsortedIfHomogeneous instanceof Literal) {
            GroundedValue groundedValue = ((Literal) unsortedIfHomogeneous).getGroundedValue();
            return groundedValue instanceof BooleanValue ? unsortedIfHomogeneous : Literal.makeLiteral(BooleanValue.get(ExpressionTool.effectiveBooleanValue(groundedValue.iterate())), unsortedIfHomogeneous);
        }
        if (unsortedIfHomogeneous instanceof ValueComparison) {
            ValueComparison valueComparison = (ValueComparison) unsortedIfHomogeneous;
            if (valueComparison.getResultWhenEmpty() == null) {
                valueComparison.setResultWhenEmpty(BooleanValue.FALSE);
            }
            return unsortedIfHomogeneous;
        }
        if (unsortedIfHomogeneous.isCallOn(BooleanFn.class)) {
            return ((SystemFunctionCall) unsortedIfHomogeneous).getArg(0);
        }
        if (typeHierarchy.isSubType(unsortedIfHomogeneous.getItemType(), BuiltInAtomicType.BOOLEAN) && unsortedIfHomogeneous.getCardinality() == 16384) {
            return unsortedIfHomogeneous;
        }
        if (unsortedIfHomogeneous.isCallOn(Count.class)) {
            Expression makeCall = SystemFunction.makeCall("exists", unsortedIfHomogeneous.getRetainedStaticContext(), ((SystemFunctionCall) unsortedIfHomogeneous).getArg(0));
            ExpressionTool.copyLocationInfo(unsortedIfHomogeneous, makeCall);
            return makeCall.optimize(expressionVisitor, contextItemStaticInfo);
        }
        if (!(unsortedIfHomogeneous.getItemType() instanceof NodeTest)) {
            return null;
        }
        Expression makeCall2 = SystemFunction.makeCall("exists", unsortedIfHomogeneous.getRetainedStaticContext(), unsortedIfHomogeneous);
        ExpressionTool.copyLocationInfo(unsortedIfHomogeneous, makeCall2);
        return makeCall2.optimize(expressionVisitor, contextItemStaticInfo);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "BooleanFnCompiler";
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "BooleanFn";
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        return new C18343a(this, expressionArr);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public void supplyTypeInformation(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression[] expressionArr) throws XPathException {
        XPathException ebvError = TypeChecker.ebvError(expressionArr[0], expressionVisitor.getConfiguration().getTypeHierarchy());
        if (ebvError != null) {
            throw ebvError;
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return BooleanValue.get(ExpressionTool.effectiveBooleanValue(sequenceArr[0].iterate()));
    }
}
