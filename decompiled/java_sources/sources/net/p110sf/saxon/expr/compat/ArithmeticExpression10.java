package net.p110sf.saxon.expr.compat;

import com.google.android.material.motion.MotionUtils;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.ArithmeticExpression;
import net.p110sf.saxon.expr.Calculator;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FirstItemExpression;
import net.p110sf.saxon.expr.InstanceOfExpression;
import net.p110sf.saxon.expr.LetExpression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.LocalVariableReference;
import net.p110sf.saxon.expr.NegateExpression;
import net.p110sf.saxon.expr.OrExpression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.Choose;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.Token;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.functions.Number_1;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.NumericType;
import net.p110sf.saxon.type.PlainType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class ArithmeticExpression10 extends ArithmeticExpression implements Callable {
    public ArithmeticExpression10(Expression expression, int i, Expression expression2) {
        super(expression, i, expression2);
    }

    @Override // net.p110sf.saxon.expr.ArithmeticExpression, net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ArithmeticExpression10 arithmeticExpression10 = new ArithmeticExpression10(getLhsExpression().copy(rebindingMap), this.operator, getRhsExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, arithmeticExpression10);
        arithmeticExpression10.calculator = this.calculator;
        return arithmeticExpression10;
    }

    @Override // net.p110sf.saxon.expr.ArithmeticExpression, net.p110sf.saxon.expr.BinaryExpression
    public void explainExtraAttributes(ExpressionPresenter expressionPresenter) {
        expressionPresenter.emitAttribute("calc", this.calculator.code());
    }

    /* renamed from: i */
    public final Calculator m62675i(AtomicType atomicType, AtomicType atomicType2, boolean z) throws XPathException {
        Calculator calculator = Calculator.getCalculator(atomicType.getFingerprint(), atomicType2.getFingerprint(), ArithmeticExpression.mapOpCode(this.operator), z);
        if (calculator != null) {
            return calculator;
        }
        XPathException xPathException = new XPathException("Arithmetic operator is not defined for arguments of types (" + atomicType.getDescription() + ", " + atomicType2.getDescription() + MotionUtils.f31762d);
        xPathException.setLocation(getLocation());
        xPathException.setErrorCode("XPTY0004");
        throw xPathException;
    }

    /* renamed from: j */
    public final Expression m62676j(Expression expression, Configuration configuration, AtomicType atomicType) {
        TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
        if (Cardinality.allowsMany(expression.getCardinality())) {
            expression = FirstItemExpression.makeFirstItemExpression(expression);
            ExpressionTool.copyLocationInfo(this, expression);
        }
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.DOUBLE;
        if (typeHierarchy.isSubType(atomicType, builtInAtomicType) || typeHierarchy.isSubType(atomicType, BuiltInAtomicType.DATE) || typeHierarchy.isSubType(atomicType, BuiltInAtomicType.TIME) || typeHierarchy.isSubType(atomicType, BuiltInAtomicType.DATE_TIME) || typeHierarchy.isSubType(atomicType, BuiltInAtomicType.DURATION)) {
            return expression;
        }
        BuiltInAtomicType builtInAtomicType2 = BuiltInAtomicType.BOOLEAN;
        if (!typeHierarchy.isSubType(atomicType, builtInAtomicType2)) {
            BuiltInAtomicType builtInAtomicType3 = BuiltInAtomicType.STRING;
            if (!typeHierarchy.isSubType(atomicType, builtInAtomicType3)) {
                BuiltInAtomicType builtInAtomicType4 = BuiltInAtomicType.UNTYPED_ATOMIC;
                if (!typeHierarchy.isSubType(atomicType, builtInAtomicType4)) {
                    BuiltInAtomicType builtInAtomicType5 = BuiltInAtomicType.FLOAT;
                    if (!typeHierarchy.isSubType(atomicType, builtInAtomicType5)) {
                        BuiltInAtomicType builtInAtomicType6 = BuiltInAtomicType.DECIMAL;
                        if (!typeHierarchy.isSubType(atomicType, builtInAtomicType6)) {
                            LetExpression letExpression = new LetExpression();
                            letExpression.setRequiredType(SequenceType.OPTIONAL_ATOMIC);
                            letExpression.setVariableQName(new StructuredQName("nn", NamespaceConstant.SAXON, "nn" + letExpression.hashCode()));
                            letExpression.setSequence(expression);
                            InstanceOfExpression instanceOfExpression = new InstanceOfExpression(new LocalVariableReference(letExpression), builtInAtomicType.zeroOrOne());
                            InstanceOfExpression instanceOfExpression2 = new InstanceOfExpression(new LocalVariableReference(letExpression), builtInAtomicType6.zeroOrOne());
                            OrExpression orExpression = new OrExpression(new OrExpression(new OrExpression(new OrExpression(new OrExpression(instanceOfExpression, instanceOfExpression2), new InstanceOfExpression(new LocalVariableReference(letExpression), builtInAtomicType5.zeroOrOne())), new InstanceOfExpression(new LocalVariableReference(letExpression), builtInAtomicType3.zeroOrOne())), new InstanceOfExpression(new LocalVariableReference(letExpression), builtInAtomicType4.zeroOrOne())), new InstanceOfExpression(new LocalVariableReference(letExpression), builtInAtomicType2.zeroOrOne()));
                            Expression makeCall = SystemFunction.makeCall("number", getRetainedStaticContext(), new LocalVariableReference(letExpression));
                            LocalVariableReference localVariableReference = new LocalVariableReference(letExpression);
                            localVariableReference.setStaticType(SequenceType.SINGLE_ATOMIC, null, 0);
                            letExpression.setAction(Choose.makeConditional(orExpression, makeCall, localVariableReference));
                            return letExpression;
                        }
                    }
                }
            }
        }
        return expression instanceof Literal ? Literal.makeLiteral(Number_1.convert((AtomicValue) ((Literal) expression).getGroundedValue(), configuration), this) : SystemFunction.makeCall("number", getRetainedStaticContext(), expression);
    }

    @Override // net.p110sf.saxon.expr.ArithmeticExpression
    public void setCalculator(Calculator calculator) {
        this.calculator = calculator;
    }

    @Override // net.p110sf.saxon.expr.ArithmeticExpression, net.p110sf.saxon.expr.BinaryExpression
    public String tag() {
        return "arith10";
    }

    @Override // net.p110sf.saxon.expr.ArithmeticExpression, net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        int i;
        getLhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        getRhs().typeCheck(expressionVisitor, contextItemStaticInfo);
        Configuration configuration = expressionVisitor.getConfiguration();
        TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
        if (!Literal.isEmptySequence(getLhsExpression()) && !Literal.isEmptySequence(getRhsExpression())) {
            Expression lhsExpression = getLhsExpression();
            Expression rhsExpression = getRhsExpression();
            SequenceType sequenceType = SequenceType.OPTIONAL_ATOMIC;
            TypeChecker typeChecker = expressionVisitor.getConfiguration().getTypeChecker(true);
            String[] strArr = Token.tokens;
            setLhsExpression(typeChecker.staticTypeCheck(getLhsExpression(), sequenceType, new RoleDiagnostic(1, strArr[this.operator], 0), expressionVisitor));
            setRhsExpression(typeChecker.staticTypeCheck(getRhsExpression(), sequenceType, new RoleDiagnostic(1, strArr[this.operator], 1), expressionVisitor));
            ItemType itemType = getLhsExpression().getItemType();
            if (itemType instanceof ErrorType) {
                return Literal.makeLiteral(DoubleValue.NaN, this);
            }
            AtomicType atomicType = (AtomicType) itemType.getPrimitiveItemType();
            ItemType itemType2 = getRhsExpression().getItemType();
            if (itemType2 instanceof ErrorType) {
                return Literal.makeLiteral(DoubleValue.NaN, this);
            }
            AtomicType atomicType2 = (AtomicType) itemType2.getPrimitiveItemType();
            BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.INTEGER;
            if (typeHierarchy.isSubType(atomicType, builtInAtomicType) && typeHierarchy.isSubType(atomicType2, builtInAtomicType) && ((i = this.operator) == 15 || i == 16 || i == 17)) {
                return SystemFunction.makeCall("number", getRetainedStaticContext(), new ArithmeticExpression(getLhsExpression(), this.operator, getRhsExpression())).typeCheck(expressionVisitor, contextItemStaticInfo);
            }
            if (this.calculator == null) {
                setLhsExpression(m62676j(getLhsExpression(), configuration, atomicType));
            }
            AtomicType atomicType3 = (AtomicType) getLhsExpression().getItemType().getPrimitiveItemType();
            if (this.calculator == null) {
                setRhsExpression(m62676j(getRhsExpression(), configuration, atomicType2));
            }
            AtomicType atomicType4 = (AtomicType) getRhsExpression().getItemType().getPrimitiveItemType();
            if (getLhsExpression() != lhsExpression) {
                adoptChildExpression(getLhsExpression());
            }
            if (getRhsExpression() != rhsExpression) {
                adoptChildExpression(getRhsExpression());
            }
            if (this.operator != 299) {
                BuiltInAtomicType builtInAtomicType2 = BuiltInAtomicType.ANY_ATOMIC;
                this.calculator = m62675i(atomicType3, atomicType4, (atomicType3.equals(builtInAtomicType2) || atomicType4.equals(builtInAtomicType2) || atomicType3.equals(NumericType.getInstance()) || atomicType4.equals(NumericType.getInstance())) ? false : true);
                try {
                    return ((getLhsExpression() instanceof Literal) && (getRhsExpression() instanceof Literal)) ? Literal.makeLiteral(evaluateItem(expressionVisitor.getStaticContext().makeEarlyEvaluationContext()).materialize(), this) : this;
                } catch (XPathException unused) {
                    return this;
                }
            }
            if (getRhsExpression() instanceof Literal) {
                GroundedValue groundedValue = ((Literal) getRhsExpression()).getGroundedValue();
                if (groundedValue instanceof NumericValue) {
                    return Literal.makeLiteral(((NumericValue) groundedValue).negate(), this);
                }
            }
            NegateExpression negateExpression = new NegateExpression(getRhsExpression());
            negateExpression.setBackwardsCompatible(true);
            return negateExpression.typeCheck(expressionVisitor, contextItemStaticInfo);
        }
        return Literal.makeLiteral(DoubleValue.NaN, this);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public AtomicValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        Calculator calculator = this.calculator;
        AtomicValue atomicValue = (AtomicValue) sequenceArr[0].head();
        if (atomicValue == null) {
            return DoubleValue.NaN;
        }
        AtomicValue atomicValue2 = (AtomicValue) sequenceArr[1].head();
        if (atomicValue2 == null) {
            return DoubleValue.NaN;
        }
        if (calculator == null) {
            calculator = m62675i(atomicValue.getPrimitiveType(), atomicValue2.getPrimitiveType(), true);
        }
        return calculator.compute(atomicValue, atomicValue2, xPathContext);
    }

    @Override // net.p110sf.saxon.expr.ArithmeticExpression, net.p110sf.saxon.expr.Expression
    public AtomicValue evaluateItem(XPathContext xPathContext) throws XPathException {
        Calculator calculator = this.calculator;
        AtomicValue atomicValue = (AtomicValue) getLhsExpression().evaluateItem(xPathContext);
        if (atomicValue == null) {
            return DoubleValue.NaN;
        }
        AtomicValue atomicValue2 = (AtomicValue) getRhsExpression().evaluateItem(xPathContext);
        if (atomicValue2 == null) {
            return DoubleValue.NaN;
        }
        if (calculator == null) {
            calculator = m62675i(atomicValue.getPrimitiveType(), atomicValue2.getPrimitiveType(), true);
        }
        return calculator.compute(atomicValue, atomicValue2, xPathContext);
    }

    @Override // net.p110sf.saxon.expr.ArithmeticExpression, net.p110sf.saxon.expr.Expression
    public PlainType getItemType() {
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
        return this.calculator.getResultType((AtomicType) itemType.getPrimitiveItemType(), (AtomicType) itemType2.getPrimitiveItemType());
    }
}
