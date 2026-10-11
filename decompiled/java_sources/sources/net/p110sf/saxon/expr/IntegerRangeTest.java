package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.StringConverter;
import net.p110sf.saxon.type.ValidationFailure;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.NumericValue;

/* loaded from: classes11.dex */
public class IntegerRangeTest extends Expression {

    /* renamed from: n */
    public final Operand f99264n;

    /* renamed from: o */
    public final Operand f99265o;

    /* renamed from: p */
    public final Operand f99266p;

    public IntegerRangeTest(Expression expression, Expression expression2, Expression expression3) {
        this.f99264n = new Operand(this, expression, OperandRole.ATOMIC_SEQUENCE);
        OperandRole operandRole = OperandRole.SINGLE_ATOMIC;
        this.f99265o = new Operand(this, expression2, operandRole);
        this.f99266p = new Operand(this, expression3, operandRole);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return (getMax().hashCode() ^ getMin().hashCode()) ^ (getValue().hashCode() + 77);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        IntegerRangeTest integerRangeTest = new IntegerRangeTest(getValue().copy(rebindingMap), getMin().copy(rebindingMap), getMax().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, integerRangeTest);
        return integerRangeTest;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (obj instanceof IntegerRangeTest) {
            IntegerRangeTest integerRangeTest = (IntegerRangeTest) obj;
            if (integerRangeTest.getValue().isEqual(getValue()) && integerRangeTest.getMin().isEqual(getMin()) && integerRangeTest.getMax().isEqual(getMax())) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("intRangeTest", this);
        getValue().export(expressionPresenter);
        getMin().export(expressionPresenter);
        getMax().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "intRangeTest";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return BuiltInAtomicType.BOOLEAN;
    }

    public Expression getMax() {
        return this.f99266p.getChildExpression();
    }

    public Expression getMin() {
        return this.f99265o.getChildExpression();
    }

    public Expression getValue() {
        return this.f99264n.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandList(this.f99264n, this.f99265o, this.f99266p);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return (Literal.isEmptySequence(getMin()) || Literal.isEmptySequence(getMax()) || Literal.isEmptySequence(getValue())) ? new Literal(BooleanValue.FALSE) : ((getMin() instanceof Literal) && (getMax() instanceof Literal) && (getValue() instanceof Literal)) ? new Literal(evaluateItem(expressionVisitor.makeDynamicContext())) : this;
    }

    public void setMax(Expression expression) {
        this.f99266p.setChildExpression(expression);
    }

    public void setMin(Expression expression) {
        this.f99265o.setChildExpression(expression);
    }

    public void setValue(Expression expression) {
        this.f99264n.setChildExpression(expression);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        return ExpressionTool.parenthesize(getValue()) + " = (" + ExpressionTool.parenthesize(getMin()) + " to " + ExpressionTool.parenthesize(getMax()) + MotionUtils.f31762d;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public BooleanValue evaluateItem(XPathContext xPathContext) throws XPathException {
        NumericValue numericValue;
        SequenceIterator iterate = getValue().iterate(xPathContext);
        IntegerValue integerValue = null;
        StringConverter stringConverter = null;
        IntegerValue integerValue2 = null;
        while (true) {
            AtomicValue atomicValue = (AtomicValue) iterate.next();
            if (atomicValue != null) {
                if (integerValue == null) {
                    integerValue = (IntegerValue) getMin().evaluateItem(xPathContext);
                    if (integerValue == null) {
                        return BooleanValue.FALSE;
                    }
                    integerValue2 = (IntegerValue) getMax().evaluateItem(xPathContext);
                    if (integerValue2 == null || integerValue2.compareTo((XPathComparable) integerValue) < 0) {
                        break;
                    }
                }
                if (atomicValue.isUntypedAtomic()) {
                    if (stringConverter == null) {
                        stringConverter = BuiltInAtomicType.DOUBLE.getStringConverter(xPathContext.getConfiguration().getConversionRules());
                    }
                    ConversionResult convertString = stringConverter.convertString(atomicValue.getUnicodeStringValue());
                    if (!(convertString instanceof ValidationFailure)) {
                        numericValue = (DoubleValue) convertString.asAtomic();
                    } else {
                        XPathException xPathException = new XPathException("Failed to convert untypedAtomic value {" + atomicValue.getUnicodeStringValue() + "}  to xs:integer", "FORG0001");
                        xPathException.setLocation(getLocation());
                        throw xPathException;
                    }
                } else if (atomicValue instanceof NumericValue) {
                    numericValue = (NumericValue) atomicValue;
                } else {
                    XPathException xPathException2 = new XPathException("Cannot compare value of type " + atomicValue.getUType() + " to xs:integer", "XPTY0004");
                    xPathException2.setIsTypeError(true);
                    xPathException2.setLocation(getLocation());
                    throw xPathException2;
                }
                if (numericValue.isWholeNumber() && numericValue.compareTo((XPathComparable) integerValue) >= 0 && numericValue.compareTo((XPathComparable) integerValue2) <= 0) {
                    return BooleanValue.TRUE;
                }
            } else {
                return BooleanValue.FALSE;
            }
        }
        return BooleanValue.FALSE;
    }
}
