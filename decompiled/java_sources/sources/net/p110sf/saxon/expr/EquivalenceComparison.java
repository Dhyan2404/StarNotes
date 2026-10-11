package net.p110sf.saxon.expr;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.expr.sort.CodepointCollator;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class EquivalenceComparison extends BinaryExpression implements ComparisonExpression {

    /* renamed from: p */
    public AtomicComparer f99237p;

    /* renamed from: q */
    public boolean f99238q;

    public EquivalenceComparison(Expression expression, int i, Expression expression2) {
        super(expression, i, expression2);
        this.f99238q = false;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.ComparisonExpression
    public boolean convertsUntypedToOther() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        EquivalenceComparison equivalenceComparison = new EquivalenceComparison(getLhsExpression().copy(rebindingMap), this.operator, getRhsExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, equivalenceComparison);
        equivalenceComparison.f99237p = this.f99237p;
        equivalenceComparison.f99238q = this.f99238q;
        return equivalenceComparison;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        AtomicValue atomicValue = (AtomicValue) getLhsExpression().evaluateItem(xPathContext);
        AtomicValue atomicValue2 = (AtomicValue) getRhsExpression().evaluateItem(xPathContext);
        if (atomicValue == null || atomicValue2 == null) {
            return atomicValue == atomicValue2;
        }
        return (this.f99238q || Type.isGuaranteedComparable(atomicValue.getPrimitiveType(), atomicValue2.getPrimitiveType(), false)) && this.f99237p.provideContext(xPathContext).comparesEqual(atomicValue, atomicValue2);
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public void explainExtraAttributes(ExpressionPresenter expressionPresenter) {
        expressionPresenter.emitAttribute("cardinality", "singleton");
    }

    @Override // net.p110sf.saxon.expr.ComparisonExpression
    public AtomicComparer getAtomicComparer() {
        return this.f99237p;
    }

    public AtomicComparer getComparer() {
        return this.f99237p;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "equivalent";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return BuiltInAtomicType.BOOLEAN;
    }

    @Override // net.p110sf.saxon.expr.ComparisonExpression
    public int getSingletonOperator() {
        return this.operator;
    }

    public boolean isKnownToBeComparable() {
        return this.f99238q;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        StaticContext staticContext = expressionVisitor.getStaticContext();
        String defaultCollationName = staticContext.getDefaultCollationName();
        Configuration configuration = expressionVisitor.getConfiguration();
        StringCollator collation = configuration.getCollation(defaultCollationName);
        if (collation == null) {
            collation = CodepointCollator.getInstance();
        }
        this.f99237p = new EquivalenceComparer(collation, configuration.getConversionContext());
        Expression lhsExpression = getLhsExpression();
        Expression rhsExpression = getRhsExpression();
        getLhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        getRhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        setLhsExpression(getLhsExpression().unordered(false, false));
        setRhsExpression(getRhsExpression().unordered(false, false));
        SequenceType sequenceType = SequenceType.OPTIONAL_ATOMIC;
        TypeChecker typeChecker = configuration.getTypeChecker(false);
        setLhsExpression(typeChecker.staticTypeCheck(getLhsExpression(), sequenceType, new RoleDiagnostic(1, "eq", 0), expressionVisitor));
        setRhsExpression(typeChecker.staticTypeCheck(getRhsExpression(), sequenceType, new RoleDiagnostic(1, "eq", 1), expressionVisitor));
        if (getLhsExpression() != lhsExpression) {
            adoptChildExpression(getLhsExpression());
        }
        if (getRhsExpression() != rhsExpression) {
            adoptChildExpression(getRhsExpression());
        }
        ItemType itemType = getLhsExpression().getItemType();
        ItemType itemType2 = getRhsExpression().getItemType();
        if (itemType instanceof ErrorType) {
            itemType = BuiltInAtomicType.ANY_ATOMIC;
        }
        if (itemType2 instanceof ErrorType) {
            itemType2 = BuiltInAtomicType.ANY_ATOMIC;
        }
        if (itemType.getUType().union(itemType2.getUType()).overlaps(UType.EXTENSION)) {
            XPathException xPathException = new XPathException("Cannot perform comparisons involving external objects");
            xPathException.setIsTypeError(true);
            xPathException.setErrorCode("XPTY0004");
            xPathException.setLocation(getLocation());
            throw xPathException;
        }
        BuiltInAtomicType builtInAtomicType = (BuiltInAtomicType) itemType.getPrimitiveItemType();
        BuiltInAtomicType builtInAtomicType2 = (BuiltInAtomicType) itemType2.getPrimitiveItemType();
        BuiltInAtomicType builtInAtomicType3 = BuiltInAtomicType.ANY_ATOMIC;
        if (!itemType.equals(builtInAtomicType3)) {
            BuiltInAtomicType builtInAtomicType4 = BuiltInAtomicType.UNTYPED_ATOMIC;
            if (!itemType.equals(builtInAtomicType4) && !itemType2.equals(builtInAtomicType3) && !itemType2.equals(builtInAtomicType4)) {
                if (Type.isGuaranteedComparable(builtInAtomicType, builtInAtomicType2, false)) {
                    this.f99238q = true;
                } else if (!Type.isPossiblyComparable(builtInAtomicType, builtInAtomicType2, false)) {
                    staticContext.issueWarning("Cannot compare " + itemType.toString() + " to " + itemType2.toString(), getLocation());
                }
            }
        }
        try {
            return ((getLhsExpression() instanceof Literal) && (getRhsExpression() instanceof Literal)) ? Literal.makeLiteral(evaluateItem(expressionVisitor.getStaticContext().makeEarlyEvaluationContext()).materialize(), this) : this;
        } catch (XPathException unused) {
            return this;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public BooleanValue evaluateItem(XPathContext xPathContext) throws XPathException {
        return BooleanValue.get(effectiveBooleanValue(xPathContext));
    }
}
