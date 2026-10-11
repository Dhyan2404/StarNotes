package net.p110sf.saxon.expr;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.Token;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.expr.sort.CodepointCollator;
import net.p110sf.saxon.expr.sort.ComparisonException;
import net.p110sf.saxon.expr.sort.GenericAtomicComparer;
import net.p110sf.saxon.expr.sort.UntypedNumericComparer;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.PlainType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public final class ValueComparison extends BinaryExpression implements ComparisonExpression, Negatable {

    /* renamed from: p */
    public AtomicComparer f99414p;

    /* renamed from: q */
    public BooleanValue f99415q;

    /* renamed from: r */
    public boolean f99416r;

    public ValueComparison(Expression expression, int i, Expression expression2) {
        super(expression, i, expression2);
        this.f99415q = null;
    }

    public static boolean compare(AtomicValue atomicValue, int i, AtomicValue atomicValue2, AtomicComparer atomicComparer, boolean z) throws XPathException {
        if (z && !Type.isGuaranteedComparable(atomicValue.getPrimitiveType(), atomicValue2.getPrimitiveType(), Token.isOrderedOperator(i))) {
            XPathException xPathException = new XPathException("Cannot compare " + Type.displayTypeName(atomicValue) + " to " + Type.displayTypeName(atomicValue2));
            xPathException.setErrorCode("XPTY0004");
            xPathException.setIsTypeError(true);
            throw xPathException;
        }
        if (atomicValue.isNaN() || atomicValue2.isNaN()) {
            return i == 51;
        }
        try {
            switch (i) {
                case 50:
                    return atomicComparer.comparesEqual(atomicValue, atomicValue2);
                case 51:
                    return !atomicComparer.comparesEqual(atomicValue, atomicValue2);
                case 52:
                    return atomicComparer.compareAtomicValues(atomicValue, atomicValue2) > 0;
                case 53:
                    return atomicComparer.compareAtomicValues(atomicValue, atomicValue2) < 0;
                case 54:
                    return atomicComparer.compareAtomicValues(atomicValue, atomicValue2) >= 0;
                case 55:
                    return atomicComparer.compareAtomicValues(atomicValue, atomicValue2) <= 0;
                default:
                    throw new UnsupportedOperationException("Unknown operator " + i);
            }
        } catch (ComparisonException e) {
            throw e.getReason();
        } catch (ClassCastException unused) {
            XPathException xPathException2 = new XPathException("Cannot compare " + Type.displayTypeName(atomicValue) + " to " + Type.displayTypeName(atomicValue2));
            xPathException2.setErrorCode("XPTY0004");
            xPathException2.setIsTypeError(true);
            throw xPathException2;
        }
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        if (this.f99415q != null) {
            return 16384;
        }
        return super.computeCardinality();
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return super.computeHashCode();
    }

    @Override // net.p110sf.saxon.expr.ComparisonExpression
    public boolean convertsUntypedToOther() {
        return this.f99414p instanceof UntypedNumericComparer;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ValueComparison valueComparison = new ValueComparison(getLhsExpression().copy(rebindingMap), this.operator, getRhsExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, valueComparison);
        valueComparison.f99414p = this.f99414p;
        valueComparison.f99415q = this.f99415q;
        valueComparison.f99416r = this.f99416r;
        return valueComparison;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        try {
            AtomicValue atomicValue = (AtomicValue) getLhsExpression().evaluateItem(xPathContext);
            if (atomicValue == null) {
                return this.f99415q == BooleanValue.TRUE;
            }
            AtomicValue atomicValue2 = (AtomicValue) getRhsExpression().evaluateItem(xPathContext);
            return atomicValue2 == null ? this.f99415q == BooleanValue.TRUE : compare(atomicValue, this.operator, atomicValue2, this.f99414p.provideContext(xPathContext), this.f99416r);
        } catch (XPathException e) {
            e.maybeSetLocation(getLocation());
            e.maybeSetContext(xPathContext);
            throw e;
        }
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        return (obj instanceof ValueComparison) && super.equals(obj) && this.f99414p.equals(((ValueComparison) obj).f99414p);
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public void explainExtraAttributes(ExpressionPresenter expressionPresenter) {
        BooleanValue booleanValue = this.f99415q;
        if (booleanValue != null) {
            expressionPresenter.emitAttribute("onEmpty", booleanValue.getBooleanValue() ? "1" : "0");
        }
        expressionPresenter.emitAttribute("comp", this.f99414p.save());
    }

    @Override // net.p110sf.saxon.expr.ComparisonExpression
    public AtomicComparer getAtomicComparer() {
        return this.f99414p;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "ValueComparison";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return BuiltInAtomicType.BOOLEAN;
    }

    public BooleanValue getResultWhenEmpty() {
        return this.f99415q;
    }

    @Override // net.p110sf.saxon.expr.ComparisonExpression
    public int getSingletonOperator() {
        return this.operator;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return UType.BOOLEAN;
    }

    /* renamed from: i */
    public final boolean m62655i(Expression expression, TypeHierarchy typeHierarchy) {
        Affinity relationship = typeHierarchy.relationship(expression.getItemType(), BuiltInAtomicType.DOUBLE);
        Affinity affinity = Affinity.DISJOINT;
        return relationship == affinity && typeHierarchy.relationship(expression.getItemType(), BuiltInAtomicType.FLOAT) == affinity;
    }

    @Override // net.p110sf.saxon.expr.Negatable
    public boolean isNegatable(TypeHierarchy typeHierarchy) {
        return m62655i(getLhsExpression(), typeHierarchy) && m62655i(getRhsExpression(), typeHierarchy);
    }

    /* renamed from: j */
    public final void m62656j(PlainType plainType, BuiltInAtomicType builtInAtomicType) throws XPathException {
        if (builtInAtomicType.isOrdered(true)) {
            return;
        }
        XPathException xPathException = new XPathException("Type " + plainType.toString() + " is not an ordered type");
        xPathException.setErrorCode("XPTY0004");
        xPathException.setIsTypeError(true);
        xPathException.setLocation(getLocation());
        throw xPathException;
    }

    public boolean needsRuntimeComparabilityCheck() {
        return this.f99416r;
    }

    @Override // net.p110sf.saxon.expr.Negatable
    public Expression negate() {
        BooleanValue booleanValue;
        ValueComparison valueComparison = new ValueComparison(getLhsExpression(), Token.negate(this.operator), getRhsExpression());
        valueComparison.f99414p = this.f99414p;
        BooleanValue booleanValue2 = this.f99415q;
        if (booleanValue2 == null || booleanValue2 == (booleanValue = BooleanValue.FALSE)) {
            valueComparison.f99415q = BooleanValue.TRUE;
        } else {
            valueComparison.f99415q = booleanValue;
        }
        ExpressionTool.copyLocationInfo(this, valueComparison);
        return valueComparison;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getLhs().optimize(expressionVisitor, contextItemStaticInfo);
        getRhs().optimize(expressionVisitor, contextItemStaticInfo);
        return expressionVisitor.obtainOptimizer().optimizeValueComparison(this, expressionVisitor, contextItemStaticInfo);
    }

    public void setAtomicComparer(AtomicComparer atomicComparer) {
        this.f99414p = atomicComparer;
    }

    public void setResultWhenEmpty(BooleanValue booleanValue) {
        this.f99415q = booleanValue;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public String tag() {
        return "vc";
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        resetLocalStaticProperties();
        getLhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        getRhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        Configuration configuration = expressionVisitor.getConfiguration();
        StaticContext staticContext = expressionVisitor.getStaticContext();
        if (Literal.isEmptySequence(getLhsExpression())) {
            BooleanValue booleanValue = this.f99415q;
            return booleanValue == null ? getLhsExpression() : Literal.makeLiteral(booleanValue, this);
        }
        if (Literal.isEmptySequence(getRhsExpression())) {
            BooleanValue booleanValue2 = this.f99415q;
            return booleanValue2 == null ? getRhsExpression() : Literal.makeLiteral(booleanValue2, this);
        }
        if (this.f99414p instanceof UntypedNumericComparer) {
            return this;
        }
        SequenceType sequenceType = SequenceType.OPTIONAL_ATOMIC;
        TypeChecker typeChecker = configuration.getTypeChecker(false);
        String[] strArr = Token.tokens;
        setLhsExpression(typeChecker.staticTypeCheck(getLhsExpression(), sequenceType, new RoleDiagnostic(1, strArr[this.operator], 0), expressionVisitor));
        setRhsExpression(typeChecker.staticTypeCheck(getRhsExpression(), sequenceType, new RoleDiagnostic(1, strArr[this.operator], 1), expressionVisitor));
        PlainType atomizedItemType = getLhsExpression().getItemType().getAtomizedItemType();
        PlainType atomizedItemType2 = getRhsExpression().getItemType().getAtomizedItemType();
        if (atomizedItemType.getUType().union(atomizedItemType2.getUType()).overlaps(UType.EXTENSION)) {
            XPathException xPathException = new XPathException("Cannot perform comparisons involving external objects");
            xPathException.setIsTypeError(true);
            xPathException.setErrorCode("XPTY0004");
            xPathException.setLocation(getLocation());
            throw xPathException;
        }
        BuiltInAtomicType builtInAtomicType = (BuiltInAtomicType) atomizedItemType.getPrimitiveItemType();
        BuiltInAtomicType builtInAtomicType2 = BuiltInAtomicType.UNTYPED_ATOMIC;
        if (builtInAtomicType.equals(builtInAtomicType2)) {
            builtInAtomicType = BuiltInAtomicType.STRING;
        }
        BuiltInAtomicType builtInAtomicType3 = (BuiltInAtomicType) atomizedItemType2.getPrimitiveItemType();
        if (builtInAtomicType3.equals(builtInAtomicType2)) {
            builtInAtomicType3 = BuiltInAtomicType.STRING;
        }
        BuiltInAtomicType builtInAtomicType4 = BuiltInAtomicType.ANY_ATOMIC;
        boolean z = builtInAtomicType.equals(builtInAtomicType4) || builtInAtomicType3.equals(builtInAtomicType4);
        this.f99416r = z;
        if (!z && !Type.isPossiblyComparable(builtInAtomicType, builtInAtomicType3, Token.isOrderedOperator(this.operator))) {
            boolean allowsZero = Cardinality.allowsZero(getLhsExpression().getCardinality());
            boolean allowsZero2 = Cardinality.allowsZero(getRhsExpression().getCardinality());
            if (!allowsZero && !allowsZero2) {
                XPathException xPathException2 = new XPathException("In {" + toShortString() + "}: cannot compare " + atomizedItemType.toString() + " to " + atomizedItemType2.toString());
                xPathException2.setIsTypeError(true);
                xPathException2.setErrorCode("XPTY0004");
                xPathException2.setLocation(getLocation());
                throw xPathException2;
            }
            String str = allowsZero ? "the first operand is" : null;
            if (allowsZero2) {
                str = "the second operand is";
            }
            if (allowsZero && allowsZero2) {
                str = "one or both operands are";
            }
            StaticContext staticContext2 = expressionVisitor.getStaticContext();
            StringBuilder sb = new StringBuilder();
            sb.append("Comparison of ");
            sb.append(atomizedItemType.toString());
            sb.append(allowsZero ? "?" : "");
            sb.append(" to ");
            sb.append(atomizedItemType2.toString());
            sb.append(allowsZero2 ? "?" : "");
            sb.append(" will fail unless ");
            sb.append(str);
            sb.append(" empty");
            staticContext2.issueWarning(sb.toString(), getLocation());
            this.f99416r = true;
        }
        int i = this.operator;
        if (i != 50 && i != 51) {
            m62656j(atomizedItemType, builtInAtomicType);
            m62656j(atomizedItemType2, builtInAtomicType3);
        }
        if (this.f99414p == null) {
            StringCollator collation = configuration.getCollation(staticContext.getDefaultCollationName());
            if (collation == null) {
                collation = CodepointCollator.getInstance();
            }
            this.f99414p = GenericAtomicComparer.makeAtomicComparer(builtInAtomicType, builtInAtomicType3, collation, staticContext.getConfiguration().getConversionContext());
        }
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public BooleanValue evaluateItem(XPathContext xPathContext) throws XPathException {
        try {
            AtomicValue atomicValue = (AtomicValue) getLhsExpression().evaluateItem(xPathContext);
            if (atomicValue == null) {
                return this.f99415q;
            }
            AtomicValue atomicValue2 = (AtomicValue) getRhsExpression().evaluateItem(xPathContext);
            if (atomicValue2 == null) {
                return this.f99415q;
            }
            return BooleanValue.get(compare(atomicValue, this.operator, atomicValue2, this.f99414p.provideContext(xPathContext), this.f99416r));
        } catch (XPathException e) {
            e.maybeSetLocation(getLocation());
            e.maybeSetContext(xPathContext);
            throw e;
        }
    }
}
