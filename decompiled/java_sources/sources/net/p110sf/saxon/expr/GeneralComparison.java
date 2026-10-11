package net.p110sf.saxon.expr;

import java.util.ArrayList;
import java.util.Iterator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.Token;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.expr.sort.CodepointCollator;
import net.p110sf.saxon.expr.sort.GenericAtomicComparer;
import net.p110sf.saxon.expr.sort.UntypedNumericComparer;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.functions.Minimax;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.RangeIterator;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.NumericType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.StringConverter;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerRange;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.QualifiedNameValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public abstract class GeneralComparison extends BinaryExpression implements ComparisonExpression, Callable {
    protected AtomicComparer comparer;
    protected ComparisonCardinality comparisonCardinality;
    protected boolean doneWarnings;
    protected boolean runtimeCheckNeeded;
    protected int singletonOperator;

    /* loaded from: classes11.dex */
    public enum ComparisonCardinality {
        ONE_TO_ONE,
        MANY_TO_ONE,
        MANY_TO_MANY
    }

    /* renamed from: net.sf.saxon.expr.GeneralComparison$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18302a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f99259a;

        static {
            int[] iArr = new int[ComparisonCardinality.values().length];
            f99259a = iArr;
            try {
                iArr[ComparisonCardinality.ONE_TO_ONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f99259a[ComparisonCardinality.MANY_TO_ONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f99259a[ComparisonCardinality.MANY_TO_MANY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public GeneralComparison(Expression expression, int i, Expression expression2) {
        super(expression, i, expression2);
        this.runtimeCheckNeeded = true;
        this.comparisonCardinality = ComparisonCardinality.MANY_TO_MANY;
        this.doneWarnings = false;
        this.singletonOperator = getCorrespondingSingletonOperator(i);
    }

    public static boolean compare(AtomicValue atomicValue, int i, AtomicValue atomicValue2, AtomicComparer atomicComparer, boolean z, XPathContext xPathContext, NamespaceResolver namespaceResolver) throws XPathException {
        boolean isUntypedAtomic = atomicValue.isUntypedAtomic();
        if (isUntypedAtomic != atomicValue2.isUntypedAtomic()) {
            ConversionRules conversionRules = xPathContext.getConfiguration().getConversionRules();
            if (isUntypedAtomic) {
                if (atomicValue2 instanceof NumericValue) {
                    return UntypedNumericComparer.quickCompare((StringValue) atomicValue, (NumericValue) atomicValue2, i, conversionRules);
                }
                if (!(atomicValue2 instanceof StringValue)) {
                    StringConverter stringConverter = atomicValue2.getPrimitiveType().getStringConverter(conversionRules);
                    if (atomicValue2 instanceof QualifiedNameValue) {
                        stringConverter = (StringConverter) stringConverter.setNamespaceResolver(namespaceResolver);
                    }
                    atomicValue = stringConverter.convertString(atomicValue.getUnicodeStringValue()).asAtomic();
                }
            } else {
                if (atomicValue instanceof NumericValue) {
                    return UntypedNumericComparer.quickCompare((StringValue) atomicValue2, (NumericValue) atomicValue, Token.inverse(i), conversionRules);
                }
                if (!(atomicValue instanceof StringValue)) {
                    StringConverter stringConverter2 = atomicValue.getPrimitiveType().getStringConverter(conversionRules);
                    if (atomicValue instanceof QualifiedNameValue) {
                        stringConverter2 = (StringConverter) stringConverter2.setNamespaceResolver(namespaceResolver);
                    }
                    atomicValue2 = stringConverter2.convertString(atomicValue2.getUnicodeStringValue()).asAtomic();
                }
            }
            z = false;
        }
        return ValueComparison.compare(atomicValue, i, atomicValue2, atomicComparer, z);
    }

    public static int getCorrespondingSingletonOperator(int i) {
        if (i == 6) {
            return 50;
        }
        if (i == 22) {
            return 51;
        }
        switch (i) {
            case 11:
                return 52;
            case 12:
                return 53;
            case 13:
                return 54;
            case 14:
                return 55;
            default:
                return i;
        }
    }

    /* renamed from: l */
    public static Expression m62580l(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression expression, String str) throws XPathException {
        if (!Cardinality.allowsMany(expression.getCardinality())) {
            return expression;
        }
        SystemFunction makeFunction = SystemFunction.makeFunction(str, expression.getRetainedStaticContext(), 1);
        ((Minimax) makeFunction).setIgnoreNaN(true);
        Expression makeOptimizedFunctionCall = makeFunction.makeOptimizedFunctionCall(expressionVisitor, contextItemStaticInfo, expression);
        return makeOptimizedFunctionCall == null ? makeFunction.makeFunctionCall(expression) : makeOptimizedFunctionCall;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return super.computeHashCode();
    }

    @Override // net.p110sf.saxon.expr.ComparisonExpression
    public boolean convertsUntypedToOther() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        int i = C18302a.f99259a[this.comparisonCardinality.ordinal()];
        if (i == 1) {
            return m62582j((AtomicValue) getLhsExpression().evaluateItem(xPathContext), (AtomicValue) getRhsExpression().evaluateItem(xPathContext), xPathContext);
        }
        if (i == 2) {
            return m62581i(getLhsExpression().iterate(xPathContext), (AtomicValue) getRhsExpression().evaluateItem(xPathContext), xPathContext);
        }
        if (i != 3) {
            return false;
        }
        return evaluateManyToMany(getLhsExpression().iterate(xPathContext), getRhsExpression().iterate(xPathContext), xPathContext);
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        return (obj instanceof GeneralComparison) && super.equals(obj) && this.comparer.equals(((GeneralComparison) obj).comparer);
    }

    public boolean evaluateManyToMany(SequenceIterator sequenceIterator, SequenceIterator sequenceIterator2, XPathContext xPathContext) throws XPathException {
        boolean z;
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            AtomicComparer provideContext = this.comparer.provideContext(xPathContext);
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            while (true) {
                if (!z3) {
                    AtomicValue atomicValue = (AtomicValue) sequenceIterator.next();
                    if (atomicValue != null) {
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            AtomicValue atomicValue2 = atomicValue;
                            if (compare(atomicValue, this.singletonOperator, (AtomicValue) it2.next(), provideContext, this.runtimeCheckNeeded, xPathContext, getRetainedStaticContext())) {
                                sequenceIterator.close();
                                sequenceIterator2.close();
                                return true;
                            }
                            atomicValue = atomicValue2;
                        }
                        AtomicValue atomicValue3 = atomicValue;
                        if (!z4) {
                            arrayList.add(atomicValue3);
                        }
                    } else {
                        if (z4) {
                            return z2;
                        }
                        z3 = true;
                    }
                }
                if (z4) {
                    z2 = false;
                } else {
                    AtomicValue atomicValue4 = (AtomicValue) sequenceIterator2.next();
                    if (atomicValue4 != null) {
                        z = false;
                        Iterator it3 = arrayList.iterator();
                        while (it3.hasNext()) {
                            if (compare((AtomicValue) it3.next(), this.singletonOperator, atomicValue4, provideContext, this.runtimeCheckNeeded, xPathContext, getRetainedStaticContext())) {
                                sequenceIterator.close();
                                sequenceIterator2.close();
                                return true;
                            }
                        }
                        if (!z3) {
                            arrayList2.add(atomicValue4);
                        }
                    } else {
                        if (z3) {
                            return false;
                        }
                        z = false;
                        z4 = true;
                    }
                    z2 = z;
                }
            }
        } catch (XPathException e) {
            e.maybeSetLocation(getLocation());
            e.maybeSetContext(xPathContext);
            throw e;
        }
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public void explainExtraAttributes(ExpressionPresenter expressionPresenter) {
        int i = C18302a.f99259a[this.comparisonCardinality.ordinal()];
        expressionPresenter.emitAttribute("card", i != 1 ? i != 2 ? i != 3 ? "" : "M:N" : "N:1" : "1:1");
        expressionPresenter.emitAttribute("comp", this.comparer.save());
    }

    @Override // net.p110sf.saxon.expr.ComparisonExpression
    public AtomicComparer getAtomicComparer() {
        return this.comparer;
    }

    public ComparisonCardinality getComparisonCardinality() {
        return this.comparisonCardinality;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "GeneralComparison";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        TypeHierarchy typeHierarchy = getConfiguration().getTypeHierarchy();
        return (m62586o(typeHierarchy, getLhsExpression(), getRhsExpression()) || m62586o(typeHierarchy, getRhsExpression(), getLhsExpression())) ? 2048 : 0;
    }

    public GeneralComparison getInverseComparison() {
        GeneralComparison20 generalComparison20 = new GeneralComparison20(getRhsExpression(), Token.inverse(this.operator), getLhsExpression());
        generalComparison20.setRetainedStaticContext(getRetainedStaticContext());
        return generalComparison20;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return BuiltInAtomicType.BOOLEAN;
    }

    public NamespaceResolver getNamespaceResolver() {
        return getRetainedStaticContext();
    }

    @Override // net.p110sf.saxon.expr.ComparisonExpression
    public int getSingletonOperator() {
        return this.singletonOperator;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return UType.BOOLEAN;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "GeneralComparison";
    }

    /* renamed from: i */
    public final boolean m62581i(SequenceIterator sequenceIterator, AtomicValue atomicValue, XPathContext xPathContext) throws XPathException {
        AtomicValue atomicValue2;
        if (atomicValue == null) {
            return false;
        }
        try {
            if (!(sequenceIterator instanceof RangeIterator)) {
                AtomicComparer provideContext = this.comparer.provideContext(xPathContext);
                do {
                    atomicValue2 = (AtomicValue) sequenceIterator.next();
                    if (atomicValue2 == null) {
                        return false;
                    }
                } while (!compare(atomicValue2, this.singletonOperator, atomicValue, provideContext, this.runtimeCheckNeeded, xPathContext, getRetainedStaticContext()));
                sequenceIterator.close();
                return true;
            }
            if (atomicValue.isUntypedAtomic()) {
                atomicValue = StringConverter.StringToInteger.INSTANCE.convertString(atomicValue.getUnicodeStringValue()).asAtomic();
            }
            RangeIterator rangeIterator = (RangeIterator) sequenceIterator;
            switch (this.singletonOperator) {
                case 50:
                    return rangeIterator.containsEq((NumericValue) atomicValue);
                case 51:
                    return (rangeIterator.getFirst().compareTo((XPathComparable) rangeIterator.getLast()) == 0 && rangeIterator.getFirst().compareTo((XPathComparable) atomicValue) == 0) ? false : true;
                case 52:
                    return rangeIterator.getMax().compareTo((XPathComparable) atomicValue) > 0;
                case 53:
                    return rangeIterator.getMin().compareTo((XPathComparable) atomicValue) < 0;
                case 54:
                    return rangeIterator.getMax().compareTo((XPathComparable) atomicValue) >= 0;
                case 55:
                    return rangeIterator.getMin().compareTo((XPathComparable) atomicValue) <= 0;
                default:
                    throw new AssertionError();
            }
        } catch (XPathException e) {
            e.maybeSetLocation(getLocation());
            e.maybeSetContext(xPathContext);
            throw e;
        }
    }

    /* renamed from: j */
    public final boolean m62582j(AtomicValue atomicValue, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
        if (atomicValue != null && atomicValue2 != null) {
            try {
                if (compare(atomicValue, this.singletonOperator, atomicValue2, this.comparer.provideContext(xPathContext), this.runtimeCheckNeeded, xPathContext, getRetainedStaticContext())) {
                    return true;
                }
            } catch (XPathException e) {
                e.maybeSetLocation(this.getLocation());
                e.maybeSetContext(xPathContext);
                throw e;
            }
        }
        return false;
    }

    /* renamed from: k */
    public final Expression m62583k(Expression expression, Expression expression2, int i) {
        ValueComparison valueComparison = new ValueComparison(expression, i, expression2);
        valueComparison.setAtomicComparer(new UntypedNumericComparer());
        ExpressionTool.copyLocationInfo(this, valueComparison);
        Optimizer.trace(getConfiguration(), "Replaced general comparison by untyped-numeric value comparison", valueComparison);
        return valueComparison;
    }

    /* renamed from: m */
    public final boolean m62584m() {
        if (!(getParentExpression() instanceof ContextSwitchingExpression) || ((ContextSwitchingExpression) getParentExpression()).getActionExpression() != this) {
            return false;
        }
        for (Operand operand : operands()) {
            if (Cardinality.allowsMany(operand.getChildExpression().getCardinality()) && ExpressionTool.dependsOnFocus(operand.getChildExpression())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: n */
    public final boolean m62585n() {
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            Expression childExpression = it2.next().getChildExpression();
            if (Cardinality.allowsMany(childExpression.getCardinality())) {
                return (childExpression instanceof RangeExpression) || ((childExpression instanceof Literal) && (((Literal) childExpression).getGroundedValue() instanceof IntegerRange));
            }
        }
        return false;
    }

    public boolean needsRuntimeCheck() {
        return this.runtimeCheckNeeded;
    }

    /* renamed from: o */
    public final boolean m62586o(TypeHierarchy typeHierarchy, Expression expression, Expression expression2) {
        SimpleType simpleType = (SimpleType) expression.getItemType().getAtomizedItemType();
        return (simpleType == BuiltInAtomicType.ANY_ATOMIC || simpleType.isNamespaceSensitive()) && typeHierarchy.relationship(expression2.getItemType().getAtomizedItemType(), BuiltInAtomicType.UNTYPED_ATOMIC) != Affinity.DISJOINT && (expression2.getSpecialProperties() & 67108864) == 0;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        ComparisonCardinality comparisonCardinality;
        ValueComparison valueComparison;
        expressionVisitor.getConfiguration().getTypeHierarchy();
        StaticContext staticContext = expressionVisitor.getStaticContext();
        getLhs().optimize(expressionVisitor, contextItemStaticInfo);
        getRhs().optimize(expressionVisitor, contextItemStaticInfo);
        if (Literal.isEmptySequence(getLhsExpression()) || Literal.isEmptySequence(getRhsExpression())) {
            return Literal.makeLiteral(BooleanValue.FALSE, this);
        }
        setLhsExpression(getLhsExpression().unordered(false, false));
        setRhsExpression(getRhsExpression().unordered(false, false));
        if ((getLhsExpression() instanceof Literal) && (getRhsExpression() instanceof Literal)) {
            return Literal.makeLiteral(evaluateItem(expressionVisitor.getStaticContext().makeEarlyEvaluationContext()).materialize(), this);
        }
        ItemType itemType = getLhsExpression().getItemType();
        ItemType itemType2 = getRhsExpression().getItemType();
        int cardinality = getLhsExpression().getCardinality();
        int cardinality2 = getRhsExpression().getCardinality();
        boolean allowsMany = Cardinality.allowsMany(cardinality);
        boolean allowsMany2 = Cardinality.allowsMany(cardinality2);
        if (allowsMany) {
            if (allowsMany2) {
                this.comparisonCardinality = ComparisonCardinality.MANY_TO_MANY;
            } else {
                this.comparisonCardinality = ComparisonCardinality.MANY_TO_ONE;
            }
        } else {
            if (allowsMany2) {
                GeneralComparison inverseComparison = getInverseComparison();
                inverseComparison.comparisonCardinality = ComparisonCardinality.MANY_TO_ONE;
                ExpressionTool.copyLocationInfo(this, inverseComparison);
                inverseComparison.comparer = this.comparer;
                inverseComparison.runtimeCheckNeeded = this.runtimeCheckNeeded;
                return inverseComparison.optimize(expressionVisitor, contextItemStaticInfo);
            }
            this.comparisonCardinality = ComparisonCardinality.ONE_TO_ONE;
        }
        if (this.operator == 6) {
            if ((getLhsExpression() instanceof RangeExpression) && ((RangeExpression) getLhsExpression()).isDefaultedStep()) {
                IntegerRangeTest integerRangeTest = new IntegerRangeTest(getRhsExpression(), ((RangeExpression) getLhsExpression()).getStartExpression(), ((RangeExpression) getLhsExpression()).getEndExpression());
                ExpressionTool.copyLocationInfo(this, integerRangeTest);
                return integerRangeTest;
            }
            if ((getRhsExpression() instanceof RangeExpression) && ((RangeExpression) getRhsExpression()).isDefaultedStep()) {
                IntegerRangeTest integerRangeTest2 = new IntegerRangeTest(getLhsExpression(), ((RangeExpression) getRhsExpression()).getStartExpression(), ((RangeExpression) getRhsExpression()).getEndExpression());
                ExpressionTool.copyLocationInfo(this, integerRangeTest2);
                return integerRangeTest2;
            }
            if (getLhsExpression() instanceof Literal) {
                GroundedValue groundedValue = ((Literal) getLhsExpression()).getGroundedValue();
                if (groundedValue instanceof IntegerRange) {
                    IntegerRange integerRange = (IntegerRange) groundedValue;
                    if (integerRange.getStep() == 1) {
                        IntegerRangeTest integerRangeTest3 = new IntegerRangeTest(getRhsExpression(), Literal.makeLiteral(Int64Value.makeIntegerValue(integerRange.getStart()), this), Literal.makeLiteral(Int64Value.makeIntegerValue(integerRange.getEnd()), this));
                        ExpressionTool.copyLocationInfo(this, integerRangeTest3);
                        return integerRangeTest3;
                    }
                }
            }
            if (getRhsExpression() instanceof Literal) {
                GroundedValue groundedValue2 = ((Literal) getRhsExpression()).getGroundedValue();
                if (groundedValue2 instanceof IntegerRange) {
                    IntegerRange integerRange2 = (IntegerRange) groundedValue2;
                    if (integerRange2.getStep() == 1) {
                        IntegerRangeTest integerRangeTest4 = new IntegerRangeTest(getLhsExpression(), Literal.makeLiteral(Int64Value.makeIntegerValue(integerRange2.getStart()), this), Literal.makeLiteral(Int64Value.makeIntegerValue(integerRange2.getEnd()), this));
                        ExpressionTool.copyLocationInfo(this, integerRangeTest4);
                        return integerRangeTest4;
                    }
                }
            }
        }
        int i = this.operator;
        if (i == 6 || i == 22 || !(((comparisonCardinality = this.comparisonCardinality) == ComparisonCardinality.MANY_TO_MANY || (comparisonCardinality == ComparisonCardinality.MANY_TO_ONE && (m62584m() || m62585n()))) && (NumericType.isNumericType(itemType) || NumericType.isNumericType(itemType2)))) {
            return ((getLhsExpression() instanceof Literal) && (getRhsExpression() instanceof Literal)) ? Literal.makeLiteral(evaluateItem(staticContext.makeEarlyEvaluationContext()), this) : expressionVisitor.obtainOptimizer().optimizeGeneralComparison(expressionVisitor, this, false, contextItemStaticInfo);
        }
        switch (this.operator) {
            case 11:
            case 13:
                valueComparison = new ValueComparison(m62580l(expressionVisitor, contextItemStaticInfo, getLhsExpression(), "max"), this.singletonOperator, m62580l(expressionVisitor, contextItemStaticInfo, getRhsExpression(), "min"));
                valueComparison.setResultWhenEmpty(BooleanValue.FALSE);
                valueComparison.setAtomicComparer(this.comparer);
                break;
            case 12:
            case 14:
                valueComparison = new ValueComparison(m62580l(expressionVisitor, contextItemStaticInfo, getLhsExpression(), "min"), this.singletonOperator, m62580l(expressionVisitor, contextItemStaticInfo, getRhsExpression(), "max"));
                valueComparison.setResultWhenEmpty(BooleanValue.FALSE);
                valueComparison.setAtomicComparer(this.comparer);
                break;
            default:
                throw new UnsupportedOperationException("Unknown operator " + this.operator);
        }
        ExpressionTool.copyLocationInfo(this, valueComparison);
        valueComparison.setRetainedStaticContext(getRetainedStaticContext());
        return valueComparison.typeCheck(expressionVisitor, contextItemStaticInfo);
    }

    public void setAtomicComparer(AtomicComparer atomicComparer) {
        this.comparer = atomicComparer;
    }

    public void setComparisonCardinality(ComparisonCardinality comparisonCardinality) {
        this.comparisonCardinality = comparisonCardinality;
    }

    public void setNeedsRuntimeCheck(boolean z) {
        this.runtimeCheckNeeded = z;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public String tag() {
        return "gc";
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Configuration configuration = expressionVisitor.getConfiguration();
        configuration.getTypeHierarchy();
        Expression lhsExpression = getLhsExpression();
        Expression rhsExpression = getRhsExpression();
        getLhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        getRhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        if (Literal.isEmptySequence(getLhsExpression()) || Literal.isEmptySequence(getRhsExpression())) {
            return Literal.makeLiteral(BooleanValue.FALSE, this);
        }
        setLhsExpression(getLhsExpression().unordered(false, false));
        setRhsExpression(getRhsExpression().unordered(false, false));
        SequenceType sequenceType = SequenceType.ATOMIC_SEQUENCE;
        TypeChecker typeChecker = configuration.getTypeChecker(false);
        String[] strArr = Token.tokens;
        setLhsExpression(typeChecker.staticTypeCheck(getLhsExpression(), sequenceType, new RoleDiagnostic(1, strArr[this.operator], 0), expressionVisitor));
        setRhsExpression(typeChecker.staticTypeCheck(getRhsExpression(), sequenceType, new RoleDiagnostic(1, strArr[this.operator], 1), expressionVisitor));
        if (getLhsExpression() != lhsExpression) {
            adoptChildExpression(getLhsExpression());
        }
        if (getRhsExpression() != rhsExpression) {
            adoptChildExpression(getRhsExpression());
        }
        ItemType itemType = getLhsExpression().getItemType();
        ItemType itemType2 = getRhsExpression().getItemType();
        if ((itemType instanceof ErrorType) || (itemType2 instanceof ErrorType)) {
            return Literal.makeLiteral(BooleanValue.FALSE, this);
        }
        if (itemType.getUType().union(itemType2.getUType()).overlaps(UType.EXTENSION)) {
            XPathException xPathException = new XPathException("Cannot perform comparisons involving external objects");
            xPathException.setIsTypeError(true);
            xPathException.setErrorCode("XPTY0004");
            xPathException.setLocator(getLocation());
            throw xPathException;
        }
        BuiltInAtomicType builtInAtomicType = (BuiltInAtomicType) itemType.getPrimitiveItemType();
        BuiltInAtomicType builtInAtomicType2 = (BuiltInAtomicType) itemType2.getPrimitiveItemType();
        int cardinality = getLhsExpression().getCardinality();
        int cardinality2 = getRhsExpression().getCardinality();
        if (cardinality == 8192 || cardinality2 == 8192) {
            return Literal.makeLiteral(BooleanValue.FALSE, this);
        }
        BuiltInAtomicType builtInAtomicType3 = BuiltInAtomicType.ANY_ATOMIC;
        if (!itemType.equals(builtInAtomicType3)) {
            BuiltInAtomicType builtInAtomicType4 = BuiltInAtomicType.UNTYPED_ATOMIC;
            if (!itemType.equals(builtInAtomicType4) && !itemType2.equals(builtInAtomicType3) && !itemType2.equals(builtInAtomicType4) && !Type.isPossiblyComparable(builtInAtomicType, builtInAtomicType2, Token.isOrderedOperator(this.singletonOperator))) {
                String str = "In {" + toShortString() + "}: cannot compare " + itemType + " to " + itemType2;
                if (!Cardinality.allowsZero(cardinality) && !Cardinality.allowsZero(cardinality2)) {
                    XPathException xPathException2 = new XPathException(str);
                    xPathException2.setErrorCode("XPTY0004");
                    xPathException2.setIsTypeError(true);
                    xPathException2.setLocator(getLocation());
                    throw xPathException2;
                }
                if (!this.doneWarnings) {
                    this.doneWarnings = true;
                    String str2 = (!Cardinality.allowsZero(cardinality) || Cardinality.allowsZero(cardinality2)) ? (!Cardinality.allowsZero(cardinality2) || Cardinality.allowsZero(cardinality)) ? "one" : "the second" : "the first";
                    expressionVisitor.getStaticContext().issueWarning(str + ". The comparison can succeed only if " + str2 + " operand is empty, and in that case will always be false", getLocation());
                }
            }
        }
        this.runtimeCheckNeeded = !Type.isGuaranteedGenerallyComparable(builtInAtomicType, builtInAtomicType2, Token.isOrderedOperator(this.singletonOperator));
        if (Cardinality.allowsMany(cardinality) || Cardinality.allowsMany(cardinality2) || itemType.equals(builtInAtomicType3) || itemType2.equals(builtInAtomicType3)) {
            StaticContext staticContext = expressionVisitor.getStaticContext();
            if (this.comparer == null) {
                StringCollator collation = configuration.getCollation(staticContext.getDefaultCollationName());
                if (collation == null) {
                    collation = CodepointCollator.getInstance();
                }
                this.comparer = GenericAtomicComparer.makeAtomicComparer(builtInAtomicType, builtInAtomicType2, collation, configuration.getConversionContext());
            }
            return ((getLhsExpression() instanceof Literal) && (getRhsExpression() instanceof Literal)) ? Literal.makeLiteral(evaluateItem(staticContext.makeEarlyEvaluationContext()), this) : this;
        }
        Expression lhsExpression2 = getLhsExpression();
        Expression rhsExpression2 = getRhsExpression();
        BuiltInAtomicType builtInAtomicType5 = BuiltInAtomicType.UNTYPED_ATOMIC;
        if (itemType.equals(builtInAtomicType5)) {
            if (itemType2.equals(builtInAtomicType5)) {
                Expression lhsExpression3 = getLhsExpression();
                BuiltInAtomicType builtInAtomicType6 = BuiltInAtomicType.STRING;
                lhsExpression2 = new CastExpression(lhsExpression3, builtInAtomicType6, Cardinality.allowsZero(cardinality));
                adoptChildExpression(lhsExpression2);
                rhsExpression2 = new CastExpression(getRhsExpression(), builtInAtomicType6, Cardinality.allowsZero(cardinality2));
                adoptChildExpression(rhsExpression2);
            } else {
                if (NumericType.isNumericType(itemType2)) {
                    return m62583k(getLhsExpression(), getRhsExpression(), this.singletonOperator).typeCheck(expressionVisitor, contextItemStaticInfo);
                }
                lhsExpression2 = new CastExpression(getLhsExpression(), builtInAtomicType2, Cardinality.allowsZero(cardinality));
                adoptChildExpression(lhsExpression2);
            }
        } else if (itemType2.equals(builtInAtomicType5)) {
            if (NumericType.isNumericType(itemType)) {
                return m62583k(getRhsExpression(), getLhsExpression(), Token.inverse(this.singletonOperator)).typeCheck(expressionVisitor, contextItemStaticInfo);
            }
            rhsExpression2 = new CastExpression(getRhsExpression(), builtInAtomicType, Cardinality.allowsZero(cardinality2));
            adoptChildExpression(rhsExpression2);
        }
        ValueComparison valueComparison = new ValueComparison(lhsExpression2, this.singletonOperator, rhsExpression2);
        valueComparison.setAtomicComparer(this.comparer);
        valueComparison.setResultWhenEmpty(BooleanValue.FALSE);
        ExpressionTool.copyLocationInfo(this, valueComparison);
        Optimizer.trace(configuration, "Replaced general comparison by value comparison", valueComparison);
        return valueComparison.typeCheck(expressionVisitor, contextItemStaticInfo);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        int i = C18302a.f99259a[this.comparisonCardinality.ordinal()];
        if (i == 1) {
            return BooleanValue.get(m62582j((AtomicValue) sequenceArr[0].head(), (AtomicValue) sequenceArr[1].head(), xPathContext));
        }
        if (i == 2) {
            return BooleanValue.get(m62581i(sequenceArr[0].iterate(), (AtomicValue) sequenceArr[1].head(), xPathContext));
        }
        if (i != 3) {
            return null;
        }
        return BooleanValue.get(evaluateManyToMany(sequenceArr[0].iterate(), sequenceArr[1].iterate(), xPathContext));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public BooleanValue evaluateItem(XPathContext xPathContext) throws XPathException {
        int i = C18302a.f99259a[this.comparisonCardinality.ordinal()];
        if (i == 1) {
            return BooleanValue.get(m62582j((AtomicValue) getLhsExpression().evaluateItem(xPathContext), (AtomicValue) getRhsExpression().evaluateItem(xPathContext), xPathContext));
        }
        if (i == 2) {
            return BooleanValue.get(m62581i(getLhsExpression().iterate(xPathContext), (AtomicValue) getRhsExpression().evaluateItem(xPathContext), xPathContext));
        }
        if (i != 3) {
            return null;
        }
        return BooleanValue.get(evaluateManyToMany(getLhsExpression().iterate(xPathContext), getRhsExpression().iterate(xPathContext), xPathContext));
    }
}
