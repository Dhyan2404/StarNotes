package net.p110sf.saxon.expr;

import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.math.BigInteger;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.FilterIterator;
import net.p110sf.saxon.expr.instruct.Choose;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.Token;
import net.p110sf.saxon.functions.LocalName_1;
import net.p110sf.saxon.functions.PositionAndLast;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.functions.registry.VendorFunctionSetHE;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.BasePatternWithPredicate;
import net.p110sf.saxon.pattern.GeneralNodePattern;
import net.p110sf.saxon.pattern.GeneralPositionalPattern;
import net.p110sf.saxon.pattern.LocalNameTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.pattern.NodeTestPattern;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.pattern.SimplePositionalPattern;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.SingletonIterator;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.NumericType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.MemoClosure;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public final class FilterExpression extends BinaryExpression implements ContextSwitchingExpression {
    public static final int FILTERED = 10000;
    public static final OperandRole FILTER_PREDICATE = new OperandRole(6, OperandUsage.INSPECTION, SequenceType.ANY_SEQUENCE);
    public boolean doneReorderingPredicates;

    /* renamed from: p */
    public boolean f99251p;

    /* renamed from: q */
    public boolean f99252q;

    /* renamed from: r */
    public boolean f99253r;

    /* renamed from: s */
    public boolean f99254s;

    public FilterExpression(Expression expression, Expression expression2) {
        super(expression, 4, expression2);
        this.doneReorderingPredicates = false;
        expression.setFiltered(true);
    }

    public static Expression forceToBoolean(Expression expression) {
        return expression.getItemType().getPrimitiveType() == 514 ? expression : SystemFunction.makeCall("boolean", expression.getRetainedStaticContext(), expression);
    }

    /* renamed from: i */
    public static boolean m62568i(Expression expression) {
        return (expression.getDependencies() & 12) != 0;
    }

    public static boolean isPositionalFilter(Expression expression, TypeHierarchy typeHierarchy) {
        ItemType itemType = expression.getItemType();
        return itemType.equals(BuiltInAtomicType.BOOLEAN) ? m62568i(expression) : itemType.equals(BuiltInAtomicType.ANY_ATOMIC) || (itemType instanceof AnyItemType) || itemType.equals(BuiltInAtomicType.INTEGER) || itemType.equals(NumericType.getInstance()) || NumericType.isNumericType(itemType) || m62568i(expression);
    }

    /* renamed from: m */
    public static Expression m62569m(Expression expression, Expression expression2, int i, TypeHierarchy typeHierarchy) throws XPathException {
        ItemType itemType = expression2.getItemType();
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.INTEGER;
        if (typeHierarchy.isSubType(itemType, builtInAtomicType)) {
            switch (i) {
                case 50:
                    return Literal.isConstantOne(expression2) ? FirstItemExpression.makeFirstItemExpression(expression) : (!(expression2 instanceof Literal) || ((IntegerValue) ((Literal) expression2).getGroundedValue()).asBigInteger().compareTo(BigInteger.ZERO) > 0) ? new SubscriptExpression(expression, expression2) : Literal.makeEmptySequence();
                case 51:
                    return SystemFunction.makeCall(SyncConstant.SYNC_ACTION_REMOVE, expression.getRetainedStaticContext(), expression, expression2);
                case 52:
                    Expression[] expressionArr = new Expression[2];
                    expressionArr[0] = expression;
                    if (Literal.isAtomic(expression2)) {
                        expressionArr[1] = Literal.makeLiteral(Int64Value.makeIntegerValue(((NumericValue) ((Literal) expression2).getGroundedValue()).longValue() + 1), expression);
                    } else {
                        expressionArr[1] = new ArithmeticExpression(expression2, 15, Literal.makeLiteral(Int64Value.makeIntegerValue(1L), expression));
                    }
                    return SystemFunction.makeCall("subsequence", expression.getRetainedStaticContext(), expressionArr);
                case 53:
                    Expression[] expressionArr2 = new Expression[3];
                    expressionArr2[0] = expression;
                    expressionArr2[1] = Literal.makeLiteral(Int64Value.makeIntegerValue(1L), expression);
                    if (Literal.isAtomic(expression2)) {
                        expressionArr2[2] = Literal.makeLiteral(Int64Value.makeIntegerValue(((NumericValue) ((Literal) expression2).getGroundedValue()).longValue() - 1), expression);
                    } else {
                        ArithmeticExpression arithmeticExpression = new ArithmeticExpression(expression2, 16, Literal.makeLiteral(Int64Value.makeIntegerValue(1L), expression));
                        arithmeticExpression.setCalculator(Calculator.getCalculator(StandardNames.XS_INTEGER, StandardNames.XS_INTEGER, 1, true));
                        expressionArr2[2] = arithmeticExpression;
                    }
                    return SystemFunction.makeCall("subsequence", expression.getRetainedStaticContext(), expressionArr2);
                case 54:
                    return SystemFunction.makeCall("subsequence", expression.getRetainedStaticContext(), expression, expression2);
                case 55:
                    return SystemFunction.makeCall("subsequence", expression.getRetainedStaticContext(), expression, Literal.makeLiteral(Int64Value.makeIntegerValue(1L), expression), expression2);
                default:
                    throw new IllegalArgumentException("operator");
            }
        }
        switch (i) {
            case 50:
                return new SubscriptExpression(expression, expression2);
            case 51:
                LetExpression letExpression = new LetExpression();
                ExpressionTool.copyLocationInfo(expression, letExpression);
                letExpression.setRequiredType(SequenceType.makeSequenceType(expression2.getItemType(), 16384));
                letExpression.setVariableQName(new StructuredQName("pp", NamespaceConstant.SAXON, "pp" + letExpression.hashCode()));
                letExpression.setSequence(expression2);
                LocalVariableReference localVariableReference = new LocalVariableReference(letExpression);
                LocalVariableReference localVariableReference2 = new LocalVariableReference(letExpression);
                Expression makeFunctionCall = VendorFunctionSetHE.getInstance().makeFunction("is-whole-number", 1).makeFunctionCall(localVariableReference);
                ExpressionTool.copyLocationInfo(expression, makeFunctionCall);
                CastExpression castExpression = new CastExpression(localVariableReference2, builtInAtomicType, false);
                ExpressionTool.copyLocationInfo(expression, castExpression);
                letExpression.setAction(SystemFunction.makeCall(SyncConstant.SYNC_ACTION_REMOVE, expression.getRetainedStaticContext(), expression, Choose.makeConditional(makeFunctionCall, castExpression, Literal.makeLiteral(Int64Value.makeIntegerValue(0L), expression))));
                return letExpression;
            case 52:
                LetExpression letExpression2 = new LetExpression();
                letExpression2.setRequiredType(SequenceType.makeSequenceType(expression2.getItemType(), 16384));
                letExpression2.setVariableQName(new StructuredQName("pp", NamespaceConstant.SAXON, "pp" + letExpression2.hashCode()));
                letExpression2.setSequence(expression2);
                letExpression2.setAction(SystemFunction.makeCall("subsequence", expression.getRetainedStaticContext(), expression, Choose.makeConditional(VendorFunctionSetHE.getInstance().makeFunction("is-whole-number", 1).makeFunctionCall(new LocalVariableReference(letExpression2)), new ArithmeticExpression(new LocalVariableReference(letExpression2), 15, Literal.makeLiteral(Int64Value.makeIntegerValue(1L), expression)), SystemFunction.makeCall(Keywords.FUNC_CEILING_STRING, expression.getRetainedStaticContext(), new LocalVariableReference(letExpression2)))));
                return letExpression2;
            case 53:
                LetExpression letExpression3 = new LetExpression();
                letExpression3.setRequiredType(SequenceType.makeSequenceType(expression2.getItemType(), 16384));
                letExpression3.setVariableQName(new StructuredQName("pp", NamespaceConstant.SAXON, "pp" + letExpression3.hashCode()));
                letExpression3.setSequence(expression2);
                letExpression3.setAction(SystemFunction.makeCall("subsequence", expression.getRetainedStaticContext(), expression, Literal.makeLiteral(Int64Value.makeIntegerValue(1L), expression), Choose.makeConditional(VendorFunctionSetHE.getInstance().makeFunction("is-whole-number", 1).makeFunctionCall(new LocalVariableReference(letExpression3)), new ArithmeticExpression(new LocalVariableReference(letExpression3), 16, Literal.makeLiteral(Int64Value.makeIntegerValue(1L), expression)), SystemFunction.makeCall(Keywords.FUNC_FLOOR_STRING, expression.getRetainedStaticContext(), new LocalVariableReference(letExpression3)))));
                return letExpression3;
            case 54:
                return SystemFunction.makeCall("subsequence", expression.getRetainedStaticContext(), expression, SystemFunction.makeCall(Keywords.FUNC_CEILING_STRING, expression.getRetainedStaticContext(), expression2));
            case 55:
                return SystemFunction.makeCall("subsequence", expression.getRetainedStaticContext(), expression, Literal.makeLiteral(Int64Value.makeIntegerValue(1L), expression), SystemFunction.makeCall(Keywords.FUNC_FLOOR_STRING, expression.getRetainedStaticContext(), expression2));
            default:
                throw new IllegalArgumentException("operator");
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        PathMap.PathMapNodeSet addToPathMap = getBase().addToPathMap(pathMap, pathMapNodeSet);
        getFilter().addToPathMap(pathMap, addToPathMap);
        return addToPathMap;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        ItemType primitiveItemType;
        if ((getFilter() instanceof Literal) && (((Literal) getFilter()).getGroundedValue() instanceof NumericValue)) {
            return (((NumericValue) ((Literal) getFilter()).getGroundedValue()).compareTo(1L) != 0 || Cardinality.allowsZero(getBase().getCardinality())) ? 24576 : 16384;
        }
        if (this.f99253r && ((primitiveItemType = getFilter().getItemType().getPrimitiveItemType()) == BuiltInAtomicType.INTEGER || primitiveItemType == BuiltInAtomicType.DOUBLE || primitiveItemType == BuiltInAtomicType.DECIMAL || primitiveItemType == BuiltInAtomicType.FLOAT || (getFilter() instanceof ArithmeticExpression))) {
            return 24576;
        }
        return (!((getFilter() instanceof IsLastExpression) && ((IsLastExpression) getFilter()).getCondition()) && Cardinality.allowsMany(getBase().getCardinality())) ? 57344 : 24576;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return 1217169488 + getBase().hashCode() + getFilter().hashCode();
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return getBase().getSpecialProperties();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        FilterExpression filterExpression = new FilterExpression(getBase().copy(rebindingMap), getFilter().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, filterExpression);
        filterExpression.f99253r = this.f99253r;
        filterExpression.f99251p = this.f99251p;
        filterExpression.f99252q = this.f99252q;
        filterExpression.f99254s = this.f99254s;
        return filterExpression;
    }

    public void disableIndexing() {
        this.f99254s = true;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (!(obj instanceof FilterExpression)) {
            return false;
        }
        FilterExpression filterExpression = (FilterExpression) obj;
        return getBase().isEqual(filterExpression.getBase()) && getFilter().isEqual(filterExpression.getFilter());
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("filter", this);
        String str = "";
        if (this.f99253r) {
            str = "i";
        }
        if (this.f99251p) {
            str = str + "p";
        }
        if (this.f99252q) {
            str = str + "b";
        }
        expressionPresenter.emitAttribute("flags", str);
        getBase().export(expressionPresenter);
        getFilter().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.ContextSwitchingExpression
    public Expression getActionExpression() {
        return getFilter();
    }

    public Expression getBase() {
        return getLhsExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public double getCost() {
        return Math.max(getLhsExpression().getCost() + (getRhsExpression().getCost() * 5.0d), 1.0E9d);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "filter";
    }

    public Expression getFilter() {
        return getRhsExpression();
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public IntegerValue[] getIntegerBounds() {
        return getBase().getIntegerBounds();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return ((getFilter() instanceof InstanceOfExpression) && (((InstanceOfExpression) getFilter()).getBaseExpression() instanceof ContextItemExpression)) ? ((InstanceOfExpression) getFilter()).getRequiredItemType() : getBase().getItemType();
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public OperandRole getOperandRole(int i) {
        return i == 0 ? OperandRole.SAME_FOCUS_ACTION : FILTER_PREDICATE;
    }

    @Override // net.p110sf.saxon.expr.ContextSwitchingExpression
    public Expression getSelectExpression() {
        return getBase();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return getBase().getStaticUType(uType);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "FilterExpression";
    }

    public boolean isFilterIsPositional() {
        return this.f99251p;
    }

    public boolean isIndependentFilter() {
        return this.f99253r;
    }

    public boolean isPositional(TypeHierarchy typeHierarchy) {
        return isPositionalFilter(getFilter(), typeHierarchy);
    }

    public boolean isSimpleBooleanFilter() {
        return this.f99252q;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        if (this.f99253r) {
            try {
                SequenceIterator iterate = getFilter().iterate(xPathContext);
                Item next = iterate.next();
                if (next == null) {
                    return EmptyIterator.emptyIterator();
                }
                boolean z = true;
                if (!(next instanceof NumericValue)) {
                    if (!(next instanceof NodeInfo)) {
                        if (next instanceof BooleanValue) {
                            z = ((BooleanValue) next).getBooleanValue();
                            if (iterate.next() != null) {
                                ExpressionTool.ebvError("sequence of two or more items starting with a boolean value", getFilter());
                            }
                        } else if (next instanceof StringValue) {
                            if (((StringValue) next).isEmpty()) {
                                z = false;
                            }
                            if (iterate.next() != null) {
                                ExpressionTool.ebvError("sequence of two or more items starting with a boolean value", getFilter());
                            }
                        } else {
                            ExpressionTool.ebvError("sequence starting with an atomic value other than a boolean, number, or string", getFilter());
                            z = false;
                        }
                    }
                    return z ? getBase().iterate(xPathContext) : EmptyIterator.emptyIterator();
                }
                if (iterate.next() == null) {
                    int asSubscript = ((NumericValue) next).asSubscript();
                    if (asSubscript == -1) {
                        return EmptyIterator.emptyIterator();
                    }
                    if (!(getBase() instanceof VariableReference)) {
                        return getBase() instanceof Literal ? SingletonIterator.makeIterator(((Literal) getBase()).getGroundedValue().itemAt(asSubscript - 1)) : SubsequenceIterator.make(getBase().iterate(xPathContext), asSubscript, asSubscript);
                    }
                    Sequence evaluateVariable = ((VariableReference) getBase()).evaluateVariable(xPathContext);
                    return evaluateVariable instanceof MemoClosure ? SingletonIterator.makeIterator(((MemoClosure) evaluateVariable).itemAt(asSubscript - 1)) : SingletonIterator.makeIterator(evaluateVariable.materialize().itemAt(asSubscript - 1));
                }
                ExpressionTool.ebvError("sequence of two or more items starting with a numeric value", getFilter());
            } catch (XPathException e) {
                e.maybeSetLocation(getLocation());
                throw e;
            }
        }
        SequenceIterator iterate2 = getBase().iterate(xPathContext);
        return iterate2 instanceof EmptyIterator ? iterate2 : (!this.f99251p || this.f99252q) ? new FilterIterator.NonNumeric(iterate2, getFilter(), xPathContext) : new FilterIterator(iterate2, getFilter(), xPathContext);
    }

    /* renamed from: j */
    public final FilterExpression m62570j(Binding[] bindingArr, Optimizer optimizer, TypeHierarchy typeHierarchy) {
        if (ExpressionTool.dependsOnVariable(getBase(), bindingArr) && !isPositional(typeHierarchy) && (getBase() instanceof FilterExpression)) {
            FilterExpression filterExpression = (FilterExpression) getBase();
            if (!filterExpression.isPositional(typeHierarchy) && ExpressionTool.dependsOnVariable(filterExpression.getFilter(), bindingArr) && !ExpressionTool.dependsOnVariable(getFilter(), bindingArr)) {
                FilterExpression filterExpression2 = new FilterExpression(new FilterExpression(filterExpression.getBase(), getFilter()).m62570j(bindingArr, optimizer, typeHierarchy), filterExpression.getFilter());
                optimizer.trace("Reordered filter predicates:", filterExpression2);
                return filterExpression2;
            }
        }
        return this;
    }

    /* renamed from: k */
    public final Sequence m62571k(ExpressionVisitor expressionVisitor) {
        try {
            if ((getBase() instanceof Literal) && !ExpressionTool.refersToVariableOrFunction(getFilter()) && (getFilter().getDependencies() & (-31)) == 0) {
                return SequenceTool.toGroundedValue(iterate(expressionVisitor.getStaticContext().makeEarlyEvaluationContext()));
            }
        } catch (Exception unused) {
        }
        return null;
    }

    /* renamed from: l */
    public final Expression m62572l(ExpressionVisitor expressionVisitor, boolean z) throws XPathException {
        Configuration configuration = expressionVisitor.getConfiguration();
        TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
        if (getFilter() instanceof Literal) {
            GroundedValue groundedValue = ((Literal) getFilter()).getGroundedValue();
            if (!(groundedValue instanceof NumericValue)) {
                Expression base = ExpressionTool.effectiveBooleanValue(groundedValue.iterate()) ? getBase() : Literal.makeEmptySequence();
                if (z) {
                    Optimizer.trace(configuration, "Rewriting boolean filter expression with constant subscript", base);
                }
                return base;
            }
            int asSubscript = ((NumericValue) groundedValue).asSubscript();
            Expression makeFirstItemExpression = asSubscript != -1 ? asSubscript == 1 ? FirstItemExpression.makeFirstItemExpression(getBase()) : new SubscriptExpression(getBase(), getFilter()) : Literal.makeEmptySequence();
            if (z) {
                Optimizer.trace(configuration, "Rewriting numeric filter expression with constant subscript", makeFirstItemExpression);
            }
            return makeFirstItemExpression;
        }
        if (NumericType.isNumericType(getFilter().getItemType()) && !Cardinality.allowsMany(getFilter().getCardinality()) && (getFilter().getDependencies() & 30) == 0) {
            SubscriptExpression subscriptExpression = new SubscriptExpression(getBase(), getFilter());
            if (z) {
                Optimizer.trace(configuration, "Rewriting numeric filter expression with focus-independent subscript", subscriptExpression);
            }
            return subscriptExpression;
        }
        LetExpression letExpression = null;
        if (!(getFilter() instanceof ComparisonExpression)) {
            if (getFilter() instanceof IntegerRangeTest) {
                if (!((IntegerRangeTest) getFilter()).getValue().isCallOn(PositionAndLast.class)) {
                    return null;
                }
                Expression min = ((IntegerRangeTest) getFilter()).getMin();
                Expression max = ((IntegerRangeTest) getFilter()).getMax();
                if (ExpressionTool.dependsOnFocus(min)) {
                    return null;
                }
                if (ExpressionTool.dependsOnFocus(max)) {
                    if (!max.isCallOn(PositionAndLast.Last.class)) {
                        return null;
                    }
                    Expression makeCall = SystemFunction.makeCall("subsequence", getRetainedStaticContext(), getBase(), min);
                    if (z) {
                        Optimizer.trace(configuration, "Rewriting numeric range filter expression using subsequence()", makeCall);
                    }
                    return makeCall;
                }
                letExpression = new LetExpression();
                letExpression.setRequiredType(SequenceType.SINGLE_INTEGER);
                letExpression.setVariableQName(new StructuredQName("nn", NamespaceConstant.SAXON, "nn" + letExpression.hashCode()));
                letExpression.setSequence(min);
                Expression makeCall2 = SystemFunction.makeCall("subsequence", getRetainedStaticContext(), getBase(), new LocalVariableReference(letExpression), new ArithmeticExpression(max, 16, new ArithmeticExpression(new LocalVariableReference(letExpression), 16, Literal.makeLiteral(Int64Value.makeIntegerValue(1L), this))));
                letExpression.setAction(makeCall2);
                if (z) {
                    Optimizer.trace(configuration, "Rewriting numeric range filter expression using subsequence()", makeCall2);
                }
            }
            return letExpression;
        }
        Expression lhsExpression = ((ComparisonExpression) getFilter()).getLhsExpression();
        Expression rhsExpression = ((ComparisonExpression) getFilter()).getRhsExpression();
        int singletonOperator = ((ComparisonExpression) getFilter()).getSingletonOperator();
        if (lhsExpression.isCallOn(PositionAndLast.Position.class) && NumericType.isNumericType(rhsExpression.getItemType())) {
            lhsExpression = rhsExpression;
        } else {
            if (!rhsExpression.isCallOn(PositionAndLast.Position.class) || !NumericType.isNumericType(lhsExpression.getItemType())) {
                return null;
            }
            singletonOperator = Token.inverse(singletonOperator);
        }
        if (ExpressionTool.dependsOnFocus(lhsExpression)) {
            return null;
        }
        int cardinality = lhsExpression.getCardinality();
        if (Cardinality.allowsMany(cardinality)) {
            return null;
        }
        if (!Cardinality.allowsZero(cardinality)) {
            return m62569m(getBase(), lhsExpression, singletonOperator, typeHierarchy);
        }
        LetExpression letExpression2 = new LetExpression();
        letExpression2.setRequiredType(SequenceType.makeSequenceType(lhsExpression.getItemType(), cardinality));
        letExpression2.setVariableQName(new StructuredQName("pp", NamespaceConstant.SAXON, "pp" + letExpression2.hashCode()));
        letExpression2.setSequence(lhsExpression);
        LocalVariableReference localVariableReference = new LocalVariableReference(letExpression2);
        Expression makeCall3 = SystemFunction.makeCall("exists", getRetainedStaticContext(), new LocalVariableReference(letExpression2));
        Expression m62569m = m62569m(getBase(), localVariableReference, singletonOperator, typeHierarchy);
        if (m62569m == null) {
            return this;
        }
        letExpression2.setAction(Choose.makeConditional(makeCall3, m62569m));
        return letExpression2;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        FilterExpression reorderPredicates;
        int isIndexableFilter;
        if (expressionVisitor.isOptimizeForStreaming() && (getSelectExpression() instanceof GlobalVariableReference)) {
            expressionVisitor.setOptimizeForStreaming(false);
            Expression optimize = optimize(expressionVisitor, contextItemStaticInfo);
            expressionVisitor.setOptimizeForStreaming(true);
            return optimize;
        }
        Configuration configuration = expressionVisitor.getConfiguration();
        Optimizer obtainOptimizer = expressionVisitor.obtainOptimizer();
        boolean booleanProperty = configuration.getBooleanProperty(Feature.TRACE_OPTIMIZER_DECISIONS);
        TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
        getLhs().optimize(expressionVisitor, contextItemStaticInfo);
        if (Literal.isEmptySequence(getSelectExpression())) {
            return getSelectExpression();
        }
        getBase().setFiltered(true);
        ContextItemStaticInfo makeContextItemStaticInfo = configuration.makeContextItemStaticInfo(getSelectExpression().getItemType(), false);
        makeContextItemStaticInfo.setContextSettingExpression(getBase());
        getRhs().optimize(expressionVisitor, makeContextItemStaticInfo);
        Expression unsortedIfHomogeneous = ExpressionTool.unsortedIfHomogeneous(getFilter(), expressionVisitor.isOptimizeForStreaming());
        if (unsortedIfHomogeneous != getFilter()) {
            setFilter(unsortedIfHomogeneous);
        }
        if ((getFilter() instanceof IsLastExpression) && ((IsLastExpression) getFilter()).getCondition() && (getBase() instanceof AxisExpression) && ((AxisExpression) getBase()).getAxis() == 3) {
            setFilter(SystemFunction.makeCall(Constants.ELEMNAME_EMPTY_STRING, getRetainedStaticContext(), new AxisExpression(7, ((AxisExpression) getBase()).getNodeTest())));
            if (booleanProperty) {
                Optimizer.trace(configuration, "Replaced [last()] predicate by test for following-sibling", this);
            }
        }
        if ((getBase() instanceof AxisExpression) && ((AxisExpression) getBase()).getNodeTest() == NodeKindTest.ELEMENT && (getFilter() instanceof CompareToStringConstant) && ((CompareToStringConstant) getFilter()).getSingletonOperator() == 50 && ((CompareToStringConstant) getFilter()).getLhsExpression().isCallOn(LocalName_1.class) && (((SystemFunctionCall) ((CompareToStringConstant) getFilter()).getLhsExpression()).getArg(0) instanceof ContextItemExpression)) {
            AxisExpression axisExpression = new AxisExpression(((AxisExpression) getBase()).getAxis(), new LocalNameTest(configuration.getNamePool(), 1, ((CompareToStringConstant) getFilter()).getComparand().toString()));
            ExpressionTool.copyLocationInfo(this, axisExpression);
            return axisExpression;
        }
        ItemType itemType = getFilter().getItemType();
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.BOOLEAN;
        if (!typeHierarchy.isSubType(itemType, builtInAtomicType) && typeHierarchy.relationship(itemType, NumericType.getInstance()) == Affinity.DISJOINT) {
            setFilter(SystemFunction.makeCall("boolean", getRetainedStaticContext(), getFilter()).optimize(expressionVisitor, makeContextItemStaticInfo));
        }
        if ((getFilter() instanceof Literal) && (((Literal) getFilter()).getGroundedValue() instanceof BooleanValue)) {
            if (((BooleanValue) ((Literal) getFilter()).getGroundedValue()).getBooleanValue()) {
                if (booleanProperty) {
                    obtainOptimizer.trace("Redundant filter removed", getBase());
                }
                return getBase();
            }
            Literal makeEmptySequence = Literal.makeEmptySequence();
            ExpressionTool.copyLocationInfo(this, makeEmptySequence);
            if (booleanProperty) {
                obtainOptimizer.trace("Filter expression eliminated because predicate is always false", makeEmptySequence);
            }
            return makeEmptySequence;
        }
        this.f99251p = isPositionalFilter(getFilter(), typeHierarchy);
        this.f99252q = getFilter().getCardinality() == 16384 && getFilter().getItemType().equals(builtInAtomicType);
        if (!this.f99251p && !expressionVisitor.isOptimizeForStreaming() && !this.f99254s && (isIndexableFilter = obtainOptimizer.isIndexableFilter(getFilter())) != 0) {
            Expression tryIndexedFilter = obtainOptimizer.tryIndexedFilter(this, expressionVisitor, isIndexableFilter > 0, (contextItemStaticInfo == null || contextItemStaticInfo.getItemType() == ErrorType.getInstance() || !typeHierarchy.isSubType(contextItemStaticInfo.getItemType(), NodeKindTest.DOCUMENT)) ? false : true);
            if (tryIndexedFilter != this) {
                return tryIndexedFilter.typeCheck(expressionVisitor, contextItemStaticInfo).optimize(expressionVisitor, contextItemStaticInfo);
            }
        }
        if (this.f99251p && (getFilter() instanceof BooleanExpression) && ((BooleanExpression) getFilter()).operator == 10) {
            BooleanExpression booleanExpression = (BooleanExpression) getFilter();
            if (m62568i(booleanExpression.getLhsExpression()) && !m62568i(booleanExpression.getRhsExpression())) {
                Expression forceToBoolean = forceToBoolean(booleanExpression.getLhsExpression());
                Expression forceToBoolean2 = forceToBoolean(booleanExpression.getRhsExpression());
                FilterExpression filterExpression = new FilterExpression(getBase(), forceToBoolean);
                ExpressionTool.copyLocationInfo(this, filterExpression);
                FilterExpression filterExpression2 = new FilterExpression(filterExpression, forceToBoolean2);
                ExpressionTool.copyLocationInfo(this, filterExpression2);
                if (booleanProperty) {
                    obtainOptimizer.trace("Composite filter replaced by nested filter expressions", filterExpression2);
                }
                return filterExpression2.optimize(expressionVisitor, contextItemStaticInfo);
            }
            if (m62568i(booleanExpression.getRhsExpression()) && !m62568i(booleanExpression.getLhsExpression())) {
                Expression forceToBoolean3 = forceToBoolean(booleanExpression.getLhsExpression());
                FilterExpression filterExpression3 = new FilterExpression(getBase(), forceToBoolean(booleanExpression.getRhsExpression()));
                ExpressionTool.copyLocationInfo(this, filterExpression3);
                FilterExpression filterExpression4 = new FilterExpression(filterExpression3, forceToBoolean3);
                ExpressionTool.copyLocationInfo(this, filterExpression4);
                if (booleanProperty) {
                    obtainOptimizer.trace("Composite filter replaced by nested filter expressions", filterExpression4);
                }
                return filterExpression4.optimize(expressionVisitor, contextItemStaticInfo);
            }
        }
        if ((getFilter() instanceof IsLastExpression) && ((IsLastExpression) getFilter()).getCondition()) {
            if (!(getBase() instanceof Literal)) {
                return new LastItemExpression(getBase());
            }
            setFilter(Literal.makeLiteral(new Int64Value(((Literal) getBase()).getGroundedValue().getLength()), this));
        }
        Expression m62572l = m62572l(expressionVisitor, booleanProperty);
        if (m62572l != null) {
            if (booleanProperty) {
                m62572l.setRetainedStaticContext(getRetainedStaticContext());
                obtainOptimizer.trace("Rewrote Filter Expression as:", m62572l);
            }
            ExpressionTool.copyLocationInfo(this, m62572l);
            return m62572l.simplify().typeCheck(expressionVisitor, contextItemStaticInfo).optimize(expressionVisitor, contextItemStaticInfo);
        }
        if (this.f99251p || this.doneReorderingPredicates || (getParentExpression() instanceof FilterExpression) || (reorderPredicates = obtainOptimizer.reorderPredicates(this, expressionVisitor, contextItemStaticInfo)) == this) {
            Sequence m62571k = m62571k(expressionVisitor);
            return m62571k != null ? Literal.makeLiteral(m62571k.materialize(), this) : this;
        }
        reorderPredicates.doneReorderingPredicates = true;
        return reorderPredicates;
    }

    public void setBase(Expression expression) {
        setLhsExpression(expression);
    }

    public void setFilter(Expression expression) {
        setRhsExpression(expression);
    }

    public void setFlags(String str) {
        this.f99253r = str.contains("i");
        this.f99251p = str.contains("p");
        this.f99252q = str.contains("b");
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        setBase(getBase().simplify());
        setFilter(getFilter().simplify());
        if (Literal.isEmptySequence(getBase())) {
            return getBase();
        }
        if (!(getFilter() instanceof Literal) || (((Literal) getFilter()).getGroundedValue() instanceof NumericValue)) {
            if (getFilter().isCallOn(PositionAndLast.Last.class)) {
                setFilter(new IsLastExpression(true));
                adoptChildExpression(getFilter());
            }
            return this;
        }
        try {
            return getFilter().effectiveBooleanValue(new EarlyEvaluationContext(getConfiguration())) ? getBase() : Literal.makeEmptySequence();
        } catch (XPathException e) {
            e.maybeSetLocation(getLocation());
            throw e;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Pattern toPattern(Configuration configuration) throws XPathException {
        Expression selectExpression = getSelectExpression();
        Expression filter = getFilter();
        TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
        Pattern pattern = selectExpression.toPattern(configuration);
        if (!isPositional(typeHierarchy)) {
            return new BasePatternWithPredicate(pattern, filter);
        }
        if (!(pattern instanceof NodeTestPattern) || !(pattern.getItemType() instanceof NodeTest) || !this.f99251p || !(selectExpression instanceof AxisExpression) || ((AxisExpression) selectExpression).getAxis() != 3 || (filter.getDependencies() & 8) != 0) {
            if (selectExpression.getItemType() instanceof NodeTest) {
                return new GeneralNodePattern(this, (NodeTest) selectExpression.getItemType());
            }
            throw new XPathException("The filtered expression in an XSLT 2.0 pattern must be a simple step");
        }
        if (filter instanceof Literal) {
            Literal literal = (Literal) filter;
            if (literal.getGroundedValue() instanceof IntegerValue) {
                return new SimplePositionalPattern((NodeTest) pattern.getItemType(), (int) ((IntegerValue) literal.getGroundedValue()).longValue());
            }
        }
        return new GeneralPositionalPattern((NodeTest) pattern.getItemType(), filter);
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return getBase().toShortString() + IteratorUtils.f104923a + getFilter().toShortString() + IteratorUtils.f104924b;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public String toString() {
        return ExpressionTool.parenthesize(getBase()) + IteratorUtils.f104923a + getFilter() + IteratorUtils.f104924b;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Configuration configuration = expressionVisitor.getConfiguration();
        TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
        getLhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        getBase().setFiltered(true);
        if (Literal.isEmptySequence(getBase())) {
            return getBase();
        }
        ContextItemStaticInfo makeContextItemStaticInfo = configuration.makeContextItemStaticInfo(getSelectExpression().getItemType(), false);
        makeContextItemStaticInfo.setContextSettingExpression(getBase());
        getRhs().typeCheck(expressionVisitor, makeContextItemStaticInfo);
        Expression unsortedIfHomogeneous = ExpressionTool.unsortedIfHomogeneous(getFilter(), expressionVisitor.isOptimizeForStreaming());
        if (unsortedIfHomogeneous != getFilter()) {
            setFilter(unsortedIfHomogeneous);
        }
        if (Literal.isConstantOne(getFilter())) {
            Expression makeFirstItemExpression = FirstItemExpression.makeFirstItemExpression(getBase());
            ExpressionTool.copyLocationInfo(this, makeFirstItemExpression);
            return makeFirstItemExpression;
        }
        this.f99251p = isPositionalFilter(getFilter(), typeHierarchy);
        this.f99252q = getFilter().getCardinality() == 16384 && getFilter().getItemType().equals(BuiltInAtomicType.BOOLEAN);
        this.f99253r = (getFilter().getDependencies() & 30) == 0;
        ExpressionTool.resetStaticProperties(this);
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression unordered(boolean z, boolean z2) throws XPathException {
        if (!this.f99251p) {
            setBase(getBase().unordered(z, z2));
        }
        return this;
    }
}
