package net.p110sf.saxon.expr;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.Arrays;
import java.util.Iterator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.instruct.AnalyzeString;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.oper.OperandArray;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.Evaluator;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.functions.BooleanFn;
import net.p110sf.saxon.functions.CollectionFn;
import net.p110sf.saxon.functions.CurrentMergeGroup;
import net.p110sf.saxon.functions.CurrentMergeKey;
import net.p110sf.saxon.functions.Doc;
import net.p110sf.saxon.functions.DocumentFn;
import net.p110sf.saxon.functions.Empty;
import net.p110sf.saxon.functions.Error;
import net.p110sf.saxon.functions.Exists;
import net.p110sf.saxon.functions.KeyFn;
import net.p110sf.saxon.functions.NotFn;
import net.p110sf.saxon.functions.PushableFunction;
import net.p110sf.saxon.functions.RegexGroup;
import net.p110sf.saxon.functions.Reverse;
import net.p110sf.saxon.functions.Root_1;
import net.p110sf.saxon.functions.StatefulSystemFunction;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.functions.TreatFn;
import net.p110sf.saxon.functions.registry.BuiltInFunctionSet;
import net.p110sf.saxon.ma.map.MapFunctionSet;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.pattern.NodeSetPattern;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.IntegerValue;

/* loaded from: classes11.dex */
public class SystemFunctionCall extends StaticFunctionCall implements Negatable {
    public Evaluator[] argumentEvaluators;

    /* loaded from: classes11.dex */
    public static abstract class Optimized extends SystemFunctionCall {
        public Optimized(SystemFunction systemFunction, Expression[] expressionArr) {
            super(systemFunction, expressionArr);
        }

        @Override // net.p110sf.saxon.expr.SystemFunctionCall, net.p110sf.saxon.expr.StaticFunctionCall
        public /* bridge */ /* synthetic */ Function getTargetFunction() {
            return super.getTargetFunction();
        }

        @Override // net.p110sf.saxon.expr.SystemFunctionCall, net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
        public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
            return this;
        }
    }

    public SystemFunctionCall(SystemFunction systemFunction, Expression[] expressionArr) {
        super(systemFunction, expressionArr);
        Evaluator[] evaluatorArr = new Evaluator[expressionArr.length];
        this.argumentEvaluators = evaluatorArr;
        Arrays.fill(evaluatorArr, Evaluator.LazySequence.INSTANCE);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        if (!isCallOn(Doc.class) && !isCallOn(DocumentFn.class) && !isCallOn(CollectionFn.class)) {
            return isCallOn(KeyFn.class) ? ((KeyFn) getTargetFunction()).addToPathMap(pathMap, pathMapNodeSet) : super.addToPathMap(pathMap, pathMapNodeSet);
        }
        getArg(0).addToPathMap(pathMap, pathMapNodeSet);
        return new PathMap.PathMapNodeSet(pathMap.makeNewRoot(this));
    }

    public void allocateArgumentEvaluators(Expression[] expressionArr) {
        int min = Math.min(expressionArr.length, getTargetFunction().getDetails().argumentTypes.length) - 1;
        for (int i = 0; i < expressionArr.length; i++) {
            Expression expression = expressionArr[i];
            int cardinality = getTargetFunction().getDetails().argumentTypes[Math.min(i, min)].getCardinality();
            if (expression instanceof Literal) {
                this.argumentEvaluators[i] = Evaluator.Literal.INSTANCE;
            } else if (expression instanceof VariableReference) {
                this.argumentEvaluators[i] = Evaluator.Variable.INSTANCE;
            } else if (cardinality == 16384 || expression.getCardinality() == 16384) {
                this.argumentEvaluators[i] = Evaluator.SingleItem.INSTANCE;
            } else if (cardinality == 24576 || expression.getCardinality() == 24576) {
                this.argumentEvaluators[i] = Evaluator.OptionalItem.INSTANCE;
            } else {
                this.argumentEvaluators[i] = Evaluator.LazySequence.INSTANCE;
            }
        }
    }

    @Override // net.p110sf.saxon.expr.StaticFunctionCall, net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return super.call(xPathContext, sequenceArr);
    }

    @Override // net.p110sf.saxon.expr.StaticFunctionCall, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return getTargetFunction().getCardinality(getArguments());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return getTargetFunction().getSpecialProperties(getArguments());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.p110sf.saxon.expr.StaticFunctionCall, net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        int arity = getArity();
        Expression[] expressionArr = new Expression[arity];
        for (int i = 0; i < arity; i++) {
            expressionArr[i] = getArg(i).copy(rebindingMap);
        }
        SystemFunction targetFunction = getTargetFunction();
        boolean z = targetFunction instanceof StatefulSystemFunction;
        SystemFunction systemFunction = targetFunction;
        if (z) {
            systemFunction = ((StatefulSystemFunction) targetFunction).copy();
        }
        return systemFunction.makeFunctionCall(expressionArr);
    }

    @Override // net.p110sf.saxon.expr.FunctionCall
    public Sequence[] evaluateArguments(XPathContext xPathContext) throws XPathException {
        OperandArray operanda = getOperanda();
        int numberOfOperands = operanda.getNumberOfOperands();
        Sequence[] sequenceArr = new Sequence[numberOfOperands];
        for (int i = 0; i < numberOfOperands; i++) {
            sequenceArr[i] = this.argumentEvaluators[i].evaluate(operanda.getOperandExpression(i), xPathContext);
        }
        return sequenceArr;
    }

    @Override // net.p110sf.saxon.expr.StaticFunctionCall, net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        if (!getFunctionName().hasURI("http://www.w3.org/2005/xpath-functions")) {
            expressionPresenter.startElement("ifCall", this);
            expressionPresenter.emitAttribute("name", getFunctionName());
            expressionPresenter.emitAttribute("type", getTargetFunction().getFunctionItemType().getResultType().toAlphaCode());
            getTargetFunction().exportAttributes(expressionPresenter);
            Iterator<Operand> it2 = operands().iterator();
            while (it2.hasNext()) {
                it2.next().getChildExpression().export(expressionPresenter);
            }
            getTargetFunction().exportAdditionalArguments(this, expressionPresenter);
            expressionPresenter.endElement();
            return;
        }
        expressionPresenter.startElement("fn", this);
        String localPart = getFunctionName().getLocalPart();
        expressionPresenter.emitAttribute("name", localPart);
        getTargetFunction().exportAttributes(expressionPresenter);
        if (localPart.equals(Keywords.FUNC_CONCAT_STRING) && "JS".equals(((ExpressionPresenter.ExportOptions) expressionPresenter.getOptions()).target) && getArity() == 1 && (getArg(0) instanceof Block)) {
            for (Operand operand : getArg(0).operands()) {
                if (operand.getChildExpression() instanceof Literal) {
                    Iterator<? extends Item> it3 = ((Literal) operand.getChildExpression()).getGroundedValue().asIterable().iterator();
                    while (it3.hasNext()) {
                        Literal.exportValue(it3.next(), expressionPresenter);
                    }
                } else {
                    operand.getChildExpression().export(expressionPresenter);
                }
            }
        } else {
            Iterator<Operand> it4 = operands().iterator();
            while (it4.hasNext()) {
                it4.next().getChildExpression().export(expressionPresenter);
            }
        }
        getTargetFunction().exportAdditionalArguments(this, expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.StaticFunctionCall, net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "sysFuncCall";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public IntegerValue[] getIntegerBounds() {
        SystemFunction targetFunction = getTargetFunction();
        return (targetFunction.getDetails().properties & 256) != 0 ? getArg(0).getIntegerBounds() : targetFunction.getIntegerBounds();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        int i = getTargetFunction().getDetails().properties;
        int i2 = (i & 512) != 0 ? 1024 : 0;
        if ((i & BuiltInFunctionSet.FOCUS) != 0) {
            if ((i & 16384) != 0) {
                i2 |= 16;
            }
            if ((i & 4) != 0) {
                i2 |= 2;
            }
            if ((i & 2048) != 0) {
                i2 |= 4;
            }
            if ((i & 4096) != 0) {
                i2 |= 8;
            }
        }
        if ((i & 8) != 0) {
            i2 |= 2048;
        }
        if ((i & 32) != 0) {
            i2 |= 2048;
        }
        return (isCallOn(RegexGroup.class) || isCallOn(CurrentMergeGroup.class) || isCallOn(CurrentMergeKey.class)) ? i2 | 32 : i2;
    }

    @Override // net.p110sf.saxon.expr.StaticFunctionCall, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getTargetFunction().getResultItemType(getArguments());
    }

    @Override // net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
    public int getNetCost() {
        return getTargetFunction().getNetCost();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression getScopingExpression() {
        if (!isCallOn(RegexGroup.class)) {
            return super.getScopingExpression();
        }
        for (Expression parentExpression = getParentExpression(); parentExpression != null; parentExpression = parentExpression.getParentExpression()) {
            if (parentExpression instanceof AnalyzeString) {
                return parentExpression;
            }
        }
        return null;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isLiftable(boolean z) {
        return (!super.isLiftable(z) || isCallOn(CurrentMergeGroup.class) || isCallOn(CurrentMergeKey.class) || (z && isCallOn(MapFunctionSet.MapEntry.class))) ? false : true;
    }

    @Override // net.p110sf.saxon.expr.Negatable
    public boolean isNegatable(TypeHierarchy typeHierarchy) {
        return isCallOn(NotFn.class) || isCallOn(BooleanFn.class) || isCallOn(Empty.class) || isCallOn(Exists.class);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isVacuousExpression() {
        return isCallOn(Error.class);
    }

    @Override // net.p110sf.saxon.expr.Negatable
    public Expression negate() {
        SystemFunction targetFunction = getTargetFunction();
        if (targetFunction instanceof NotFn) {
            Expression arg = getArg(0);
            return (arg.getItemType() == BuiltInAtomicType.BOOLEAN && arg.getCardinality() == 16384) ? arg : SystemFunction.makeCall("boolean", getRetainedStaticContext(), arg);
        }
        if (targetFunction instanceof BooleanFn) {
            return SystemFunction.makeCall(Keywords.FUNC_NOT_STRING, getRetainedStaticContext(), getArg(0));
        }
        if (targetFunction instanceof Exists) {
            return SystemFunction.makeCall(Constants.ELEMNAME_EMPTY_STRING, getRetainedStaticContext(), getArg(0));
        }
        if (targetFunction instanceof Empty) {
            return SystemFunction.makeCall("exists", getRetainedStaticContext(), getArg(0));
        }
        throw new UnsupportedOperationException();
    }

    @Override // net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Sequence sequence;
        Expression makeOptimizedFunctionCall;
        Expression makeOptimizedFunctionCall2;
        if ((getTargetFunction().getDetails().properties & 131072) != 0 && (makeOptimizedFunctionCall2 = getTargetFunction().makeOptimizedFunctionCall(expressionVisitor, contextItemStaticInfo, getArguments())) != null) {
            makeOptimizedFunctionCall2.setParentExpression(getParentExpression());
            ExpressionTool.copyLocationInfo(this, makeOptimizedFunctionCall2);
            if (makeOptimizedFunctionCall2 instanceof SystemFunctionCall) {
                SystemFunctionCall systemFunctionCall = (SystemFunctionCall) makeOptimizedFunctionCall2;
                systemFunctionCall.allocateArgumentEvaluators(systemFunctionCall.getArguments());
            }
            return makeOptimizedFunctionCall2;
        }
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        if (optimize == this && (makeOptimizedFunctionCall = getTargetFunction().makeOptimizedFunctionCall(expressionVisitor, contextItemStaticInfo, getArguments())) != null) {
            makeOptimizedFunctionCall.setParentExpression(getParentExpression());
            ExpressionTool.copyLocationInfo(this, makeOptimizedFunctionCall);
            if (makeOptimizedFunctionCall instanceof SystemFunctionCall) {
                SystemFunctionCall systemFunctionCall2 = (SystemFunctionCall) makeOptimizedFunctionCall;
                systemFunctionCall2.allocateArgumentEvaluators(systemFunctionCall2.getArguments());
            }
            return makeOptimizedFunctionCall;
        }
        Optimizer obtainOptimizer = expressionVisitor.obtainOptimizer();
        if ((optimize instanceof SystemFunctionCall) && obtainOptimizer.isOptionSet(32768)) {
            SystemFunctionCall systemFunctionCall3 = (SystemFunctionCall) optimize;
            BuiltInFunctionSet.Entry details = systemFunctionCall3.getTargetFunction().getDetails();
            if ((details.properties & 1024) != 0) {
                setArg(0, getArg(0).unordered(true, expressionVisitor.isOptimizeForStreaming()));
            }
            if (getArity() <= details.resultIfEmpty.length) {
                for (int i = 0; i < getArity(); i++) {
                    if (Literal.isEmptySequence(getArg(i)) && (sequence = details.resultIfEmpty[i]) != null) {
                        return Literal.makeLiteral(sequence.materialize(), this);
                    }
                }
            }
            systemFunctionCall3.allocateArgumentEvaluators(systemFunctionCall3.getArguments());
        }
        return optimize;
    }

    @Override // net.p110sf.saxon.expr.FunctionCall
    public Expression preEvaluate(ExpressionVisitor expressionVisitor) throws XPathException {
        return (getTargetFunction().getDetails().properties & 512) == 0 ? super.preEvaluate(expressionVisitor) : this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void process(Outputter outputter, XPathContext xPathContext) throws XPathException {
        Item targetFunction = getTargetFunction();
        if (!(targetFunction instanceof PushableFunction)) {
            super.process(outputter, xPathContext);
            return;
        }
        try {
            ((PushableFunction) targetFunction).process(outputter, xPathContext, evaluateArguments(xPathContext));
        } catch (XPathException e) {
            e.maybeSetLocation(getLocation());
            e.maybeSetContext(xPathContext);
            e.maybeSetFailingExpression(this);
            throw e;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void resetLocalStaticProperties() {
        super.resetLocalStaticProperties();
        if (this.argumentEvaluators != null) {
            allocateArgumentEvaluators(getArguments());
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void setRetainedStaticContext(RetainedStaticContext retainedStaticContext) {
        super.setRetainedStaticContext(retainedStaticContext);
        getTargetFunction().setRetainedStaticContext(retainedStaticContext);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Pattern toPattern(Configuration configuration) throws XPathException {
        return ((getTargetFunction() instanceof Root_1) && ((getArg(0) instanceof ContextItemExpression) || ((getArg(0) instanceof ItemChecker) && (((ItemChecker) getArg(0)).getBaseExpression() instanceof ContextItemExpression)))) ? new NodeSetPattern(this) : super.toPattern(configuration);
    }

    @Override // net.p110sf.saxon.expr.StaticFunctionCall, net.p110sf.saxon.expr.FunctionCall, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        typeCheckChildren(expressionVisitor, contextItemStaticInfo);
        checkFunctionCall(getTargetFunction(), expressionVisitor);
        getTargetFunction().supplyTypeInformation(expressionVisitor, contextItemStaticInfo, getArguments());
        if ((getTargetFunction().getDetails().properties & 512) == 0) {
            return preEvaluateIfConstant(expressionVisitor);
        }
        allocateArgumentEvaluators(getArguments());
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression unordered(boolean z, boolean z2) throws XPathException {
        SystemFunction targetFunction = getTargetFunction();
        if (targetFunction instanceof Reverse) {
            return getArg(0);
        }
        if (targetFunction instanceof TreatFn) {
            setArg(0, getArg(0).unordered(z, z2));
        }
        return this;
    }

    @Override // net.p110sf.saxon.expr.StaticFunctionCall
    public SystemFunction getTargetFunction() {
        return (SystemFunction) super.getTargetFunction();
    }
}
