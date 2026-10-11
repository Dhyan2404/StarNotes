package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.Token;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.NumericType;
import net.p110sf.saxon.type.PlainType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class ArithmeticExpression extends BinaryExpression {
    protected Calculator calculator;

    /* renamed from: p */
    public PlainType f99158p;

    public ArithmeticExpression(Expression expression, int i, Expression expression2) {
        super(expression, i, expression2);
    }

    public static AtomicValue compute(AtomicValue atomicValue, int i, AtomicValue atomicValue2, XPathContext xPathContext) throws XPathException {
        return Calculator.getCalculator(atomicValue.getPrimitiveType().getFingerprint(), atomicValue2.getPrimitiveType().getFingerprint(), i, false).compute(atomicValue, atomicValue2, xPathContext);
    }

    public static int mapOpCode(int i) {
        if (i == 56) {
            return 5;
        }
        if (i == 299) {
            return 1;
        }
        switch (i) {
            case 15:
                return 0;
            case 16:
                return 1;
            case 17:
                return 2;
            case 18:
                return 3;
            case 19:
                return 4;
            default:
                throw new IllegalArgumentException();
        }
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return super.computeSpecialProperties() | 67108864;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ArithmeticExpression arithmeticExpression = new ArithmeticExpression(getLhsExpression().copy(rebindingMap), this.operator, getRhsExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, arithmeticExpression);
        arithmeticExpression.calculator = this.calculator;
        return arithmeticExpression;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public void explainExtraAttributes(ExpressionPresenter expressionPresenter) {
        Calculator calculator = this.calculator;
        if (calculator != null) {
            expressionPresenter.emitAttribute("calc", calculator.code());
        }
    }

    public Calculator getCalculator() {
        return this.calculator;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "arithmetic";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public IntegerValue[] getIntegerBounds() {
        IntegerValue[] integerBounds = getLhsExpression().getIntegerBounds();
        IntegerValue[] integerBounds2 = getRhsExpression().getIntegerBounds();
        if (integerBounds != null && integerBounds2 != null) {
            int i = this.operator;
            if (i != 56) {
                switch (i) {
                    case 15:
                        return new IntegerValue[]{integerBounds[0].plus(integerBounds2[0]), integerBounds[1].plus(integerBounds2[1])};
                    case 16:
                        return new IntegerValue[]{integerBounds[0].minus(integerBounds2[1]), integerBounds[1].minus(integerBounds2[0])};
                    case 17:
                        if (getRhsExpression() instanceof Literal) {
                            IntegerValue integerValue = integerBounds2[0];
                            if (integerValue.signum() > 0) {
                                return new IntegerValue[]{integerBounds[0].times(integerValue), integerBounds[1].times(integerValue)};
                            }
                            return null;
                        }
                        if (getLhsExpression() instanceof Literal) {
                            IntegerValue integerValue2 = integerBounds2[0];
                            if (integerValue2.signum() > 0) {
                                return new IntegerValue[]{integerBounds2[0].times(integerValue2), integerBounds2[1].times(integerValue2)};
                            }
                        }
                        return null;
                    case 18:
                        break;
                    default:
                        return null;
                }
            }
            if (getRhsExpression() instanceof Literal) {
                IntegerValue integerValue3 = integerBounds2[0];
                if (integerValue3.signum() > 0) {
                    try {
                        return new IntegerValue[]{integerBounds[0].idiv(integerValue3), integerBounds[1].idiv(integerValue3)};
                    } catch (XPathException unused) {
                    }
                }
            }
        }
        return null;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        if ((!(getParentExpression() instanceof FilterExpression) || ((FilterExpression) getParentExpression()).getRhsExpression() != this) && this.operator != 299) {
            return UType.ANY_ATOMIC;
        }
        return UType.NUMERIC;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void resetLocalStaticProperties() {
        super.resetLocalStaticProperties();
        this.f99158p = null;
    }

    public void setCalculator(Calculator calculator) {
        this.calculator = calculator;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public String tag() {
        return "arith";
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        resetLocalStaticProperties();
        getLhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        getRhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        Configuration configuration = expressionVisitor.getConfiguration();
        TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
        TypeChecker typeChecker = configuration.getTypeChecker(false);
        Expression lhsExpression = getLhsExpression();
        Expression rhsExpression = getRhsExpression();
        SequenceType sequenceType = SequenceType.OPTIONAL_ATOMIC;
        String[] strArr = Token.tokens;
        setLhsExpression(typeChecker.staticTypeCheck(getLhsExpression(), sequenceType, new RoleDiagnostic(1, strArr[this.operator], 0), expressionVisitor));
        ItemType itemType = getLhsExpression().getItemType();
        if (itemType instanceof ErrorType) {
            return Literal.makeEmptySequence();
        }
        AtomicType atomicType = (AtomicType) itemType.getPrimitiveItemType();
        if (atomicType.getFingerprint() == 631) {
            Expression lhsExpression2 = getLhsExpression();
            BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.DOUBLE;
            setLhsExpression(UntypedSequenceConverter.makeUntypedSequenceConverter(configuration, lhsExpression2, builtInAtomicType));
            atomicType = builtInAtomicType;
        } else if ((getLhsExpression().getSpecialProperties() & 67108864) == 0 && typeHierarchy.relationship(atomicType, BuiltInAtomicType.UNTYPED_ATOMIC) != Affinity.DISJOINT) {
            setLhsExpression(UntypedSequenceConverter.makeUntypedSequenceConverter(configuration, getLhsExpression(), BuiltInAtomicType.DOUBLE));
            atomicType = (AtomicType) getLhsExpression().getItemType().getPrimitiveItemType();
        }
        setRhsExpression(typeChecker.staticTypeCheck(getRhsExpression(), sequenceType, new RoleDiagnostic(1, strArr[this.operator], 1), expressionVisitor));
        ItemType itemType2 = getRhsExpression().getItemType();
        if (itemType2 instanceof ErrorType) {
            return Literal.makeEmptySequence();
        }
        AtomicType atomicType2 = (AtomicType) itemType2.getPrimitiveItemType();
        if (atomicType2.getFingerprint() == 631) {
            Expression rhsExpression2 = getRhsExpression();
            atomicType2 = BuiltInAtomicType.DOUBLE;
            setRhsExpression(UntypedSequenceConverter.makeUntypedSequenceConverter(configuration, rhsExpression2, atomicType2));
        } else if ((getRhsExpression().getSpecialProperties() & 67108864) == 0 && typeHierarchy.relationship(atomicType2, BuiltInAtomicType.UNTYPED_ATOMIC) != Affinity.DISJOINT) {
            setRhsExpression(UntypedSequenceConverter.makeUntypedSequenceConverter(configuration, getRhsExpression(), BuiltInAtomicType.DOUBLE));
            atomicType2 = (AtomicType) getRhsExpression().getItemType().getPrimitiveItemType();
        }
        if (itemType.getUType().union(itemType2.getUType()).overlaps(UType.EXTENSION)) {
            XPathException xPathException = new XPathException("Arithmetic operators are not defined for external objects");
            xPathException.setLocation(getLocation());
            xPathException.setErrorCode("XPTY0004");
            throw xPathException;
        }
        if (getLhsExpression() != lhsExpression) {
            adoptChildExpression(getLhsExpression());
        }
        if (getRhsExpression() != rhsExpression) {
            adoptChildExpression(getRhsExpression());
        }
        if (Literal.isEmptySequence(getLhsExpression()) || Literal.isEmptySequence(getRhsExpression())) {
            return Literal.makeEmptySequence();
        }
        if (this.operator == 299) {
            if ((getRhsExpression() instanceof Literal) && (((Literal) getRhsExpression()).getGroundedValue() instanceof NumericValue)) {
                return Literal.makeLiteral(((NumericValue) ((Literal) getRhsExpression()).getGroundedValue()).negate(), this);
            }
            NegateExpression negateExpression = new NegateExpression(getRhsExpression());
            negateExpression.setBackwardsCompatible(false);
            return negateExpression.typeCheck(expressionVisitor, contextItemStaticInfo);
        }
        boolean z = false;
        Object obj = BuiltInAtomicType.ANY_ATOMIC;
        if (!atomicType.equals(obj) && !atomicType2.equals(obj) && !atomicType.equals(NumericType.getInstance()) && !atomicType2.equals(NumericType.getInstance())) {
            z = true;
        }
        Calculator calculator = Calculator.getCalculator(atomicType.getFingerprint(), atomicType2.getFingerprint(), mapOpCode(this.operator), z);
        this.calculator = calculator;
        if (calculator == null) {
            XPathException xPathException2 = new XPathException("Arithmetic operator is not defined for arguments of types (" + atomicType.getDescription() + ", " + atomicType2.getDescription() + MotionUtils.f31762d);
            xPathException2.setLocation(getLocation());
            xPathException2.setIsTypeError(true);
            xPathException2.setErrorCode("XPTY0004");
            throw xPathException2;
        }
        if (calculator.code().matches("d.d")) {
            if ((getLhsExpression() instanceof Literal) && !atomicType.equals(BuiltInAtomicType.DOUBLE)) {
                GroundedValue groundedValue = ((Literal) getLhsExpression()).getGroundedValue();
                if (groundedValue instanceof NumericValue) {
                    setLhsExpression(Literal.makeLiteral(new DoubleValue(((NumericValue) groundedValue).getDoubleValue()), this));
                }
            }
            if ((getRhsExpression() instanceof Literal) && !atomicType2.equals(BuiltInAtomicType.DOUBLE)) {
                GroundedValue groundedValue2 = ((Literal) getRhsExpression()).getGroundedValue();
                if (groundedValue2 instanceof NumericValue) {
                    setRhsExpression(Literal.makeLiteral(new DoubleValue(((NumericValue) groundedValue2).getDoubleValue()), this));
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
    public AtomicValue evaluateItem(XPathContext xPathContext) throws XPathException {
        AtomicValue atomicValue;
        AtomicValue atomicValue2 = (AtomicValue) getLhsExpression().evaluateItem(xPathContext);
        if (atomicValue2 == null || (atomicValue = (AtomicValue) getRhsExpression().evaluateItem(xPathContext)) == null) {
            return null;
        }
        try {
            return this.calculator.compute(atomicValue2, atomicValue, xPathContext);
        } catch (XPathException e) {
            e.maybeSetLocation(this.getLocation());
            e.maybeSetFailingExpression(this);
            e.maybeSetContext(xPathContext);
            throw e;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PlainType getItemType() {
        PlainType plainType = this.f99158p;
        if (plainType != null) {
            return plainType;
        }
        if (this.calculator == null) {
            return BuiltInAtomicType.ANY_ATOMIC;
        }
        ItemType itemType = getLhsExpression().getItemType();
        if (!(itemType instanceof AtomicType)) {
            itemType = itemType.getAtomizedItemType();
        }
        ItemType itemType2 = getRhsExpression().getItemType();
        if (!(itemType2 instanceof AtomicType)) {
            itemType2 = itemType2.getAtomizedItemType();
        }
        PlainType resultType = this.calculator.getResultType((AtomicType) itemType.getPrimitiveItemType(), (AtomicType) itemType2.getPrimitiveItemType());
        if (resultType.equals(BuiltInAtomicType.ANY_ATOMIC)) {
            getConfiguration().getTypeHierarchy();
            int i = this.operator;
            if ((i == 15 || i == 16) && (NumericType.isNumericType(itemType2) || NumericType.isNumericType(itemType))) {
                resultType = NumericType.getInstance();
            }
        }
        this.f99158p = resultType;
        return resultType;
    }
}
