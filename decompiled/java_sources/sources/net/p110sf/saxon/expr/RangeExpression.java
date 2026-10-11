package net.p110sf.saxon.expr;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.math.BigInteger;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerRange;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class RangeExpression extends Expression {

    /* renamed from: n */
    public Operand f99361n;

    /* renamed from: o */
    public Operand f99362o;

    /* renamed from: p */
    public Operand f99363p;

    /* renamed from: q */
    public boolean f99364q;

    public RangeExpression(Expression expression, Expression expression2) {
        this(expression, new Literal(Int64Value.PLUS_ONE), expression2);
        this.f99364q = true;
    }

    public static RangeExpression makeSteppingExpression(Expression expression, Expression expression2) throws XPathException {
        if (expression instanceof RangeExpression) {
            RangeExpression rangeExpression = (RangeExpression) expression;
            if (rangeExpression.f99364q) {
                return new RangeExpression(rangeExpression.getStartExpression(), expression2, rangeExpression.getEndExpression());
            }
        }
        throw new XPathException("Temporary restriction: 'by' operator must be preceded by 'x to y'");
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 57344;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return (getEndExpression().hashCode() << 7) ^ (getStartExpression().hashCode() ^ (getStepExpression().hashCode() << 3));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return super.computeSpecialProperties() | 8388608;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        RangeExpression rangeExpression = new RangeExpression(getStartExpression().copy(rebindingMap), getStepExpression().copy(rebindingMap), getEndExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, rangeExpression);
        return rangeExpression;
    }

    /* renamed from: d */
    public final Expression m62630d() throws XPathException {
        Literal makeEmptySequence;
        if (!(getStartExpression() instanceof Literal) || !(getStepExpression() instanceof Literal) || !(getEndExpression() instanceof Literal)) {
            return this;
        }
        GroundedValue groundedValue = ((Literal) getStartExpression()).getGroundedValue();
        GroundedValue groundedValue2 = ((Literal) getStepExpression()).getGroundedValue();
        GroundedValue groundedValue3 = ((Literal) getEndExpression()).getGroundedValue();
        if (groundedValue.getLength() == 0 || groundedValue2.getLength() == 0 || groundedValue3.getLength() == 0) {
            makeEmptySequence = Literal.makeEmptySequence();
        } else if ((groundedValue instanceof Int64Value) && (groundedValue2 instanceof Int64Value) && (groundedValue3 instanceof Int64Value)) {
            long longValue = ((Int64Value) groundedValue).longValue();
            long longValue2 = ((Int64Value) groundedValue2).longValue();
            long longValue3 = ((Int64Value) groundedValue3).longValue();
            if (longValue2 == 0 || longValue > longValue3) {
                makeEmptySequence = Literal.makeEmptySequence();
            } else {
                if (Math.abs((longValue3 - longValue) / longValue2) > 2147483647L) {
                    throw new XPathException("Maximum length of sequence in Saxon is 2147483647", "XPDY0130");
                }
                makeEmptySequence = Literal.makeLiteral(longValue2 < 0 ? new IntegerRange(longValue3, longValue2, longValue) : new IntegerRange(longValue, longValue2, longValue3), this);
            }
        } else {
            BigInteger asBigInteger = ((IntegerValue) groundedValue).asBigInteger();
            ((IntegerValue) groundedValue2).asBigInteger();
            BigInteger asBigInteger2 = ((IntegerValue) groundedValue3).asBigInteger();
            if (asBigInteger.equals(BigInteger.ZERO) || asBigInteger.compareTo(asBigInteger2) > 0) {
                makeEmptySequence = Literal.makeEmptySequence();
            } else {
                if (!asBigInteger.equals(asBigInteger2)) {
                    return this;
                }
                makeEmptySequence = Literal.makeLiteral(IntegerValue.makeIntegerValue(asBigInteger), this);
            }
        }
        ExpressionTool.copyLocationInfo(this, makeEmptySequence);
        return makeEmptySequence;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (!(obj instanceof RangeExpression) || !hasCompatibleStaticContext((Expression) obj)) {
            return false;
        }
        RangeExpression rangeExpression = (RangeExpression) obj;
        return getStartExpression().equals(rangeExpression.getStartExpression()) && getStepExpression().equals(rangeExpression.getStepExpression()) && getEndExpression().equals(rangeExpression.getEndExpression());
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("to", this);
        getStartExpression().export(expressionPresenter);
        getEndExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    public Expression getEndExpression() {
        return this.f99363p.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return SessionDescription.f26441q;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public IntegerValue[] getIntegerBounds() {
        IntegerValue[] integerBounds = getStartExpression().getIntegerBounds();
        IntegerValue[] integerBounds2 = getEndExpression().getIntegerBounds();
        if (integerBounds == null || integerBounds2 == null) {
            return null;
        }
        return new IntegerValue[]{integerBounds[0], integerBounds2[1]};
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return BuiltInAtomicType.INTEGER;
    }

    public Expression getStartExpression() {
        return this.f99361n.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return UType.DECIMAL;
    }

    public Expression getStepExpression() {
        return this.f99362o.getChildExpression();
    }

    public boolean isDefaultedStep() {
        return this.f99364q;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return AscendingRangeIterator.makeRangeIterator((IntegerValue) getStartExpression().evaluateItem(xPathContext), (IntegerValue) getStepExpression().evaluateItem(xPathContext), (IntegerValue) getEndExpression().evaluateItem(xPathContext));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandList(this.f99361n, this.f99362o, this.f99363p);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.f99361n.optimize(expressionVisitor, contextItemStaticInfo);
        this.f99362o.optimize(expressionVisitor, contextItemStaticInfo);
        this.f99363p.optimize(expressionVisitor, contextItemStaticInfo);
        return m62630d();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        String str;
        String shortString = getStepExpression().toShortString();
        StringBuilder sb = new StringBuilder();
        sb.append(getStartExpression().toShortString());
        sb.append(" to ");
        sb.append(getEndExpression().toShortString());
        if (shortString.equals("1")) {
            str = "";
        } else {
            str = " by " + shortString;
        }
        sb.append(str);
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        String str;
        String expression = getStepExpression().toString();
        StringBuilder sb = new StringBuilder();
        sb.append(getStartExpression().toString());
        sb.append(" to ");
        sb.append(getEndExpression().toString());
        if (expression.equals("1")) {
            str = "";
        } else {
            str = " by " + expression;
        }
        sb.append(str);
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.f99361n.typeCheck(expressionVisitor, contextItemStaticInfo);
        this.f99362o.typeCheck(expressionVisitor, contextItemStaticInfo);
        this.f99363p.typeCheck(expressionVisitor, contextItemStaticInfo);
        TypeChecker typeChecker = expressionVisitor.getConfiguration().getTypeChecker(expressionVisitor.getStaticContext().isInBackwardsCompatibleMode());
        RoleDiagnostic roleDiagnostic = new RoleDiagnostic(1, "to", 0);
        Operand operand = this.f99361n;
        Expression startExpression = getStartExpression();
        SequenceType sequenceType = SequenceType.OPTIONAL_INTEGER;
        operand.setChildExpression(typeChecker.staticTypeCheck(startExpression, sequenceType, roleDiagnostic, expressionVisitor));
        this.f99362o.setChildExpression(typeChecker.staticTypeCheck(getStepExpression(), sequenceType, new RoleDiagnostic(1, "by", 1), expressionVisitor));
        this.f99363p.setChildExpression(typeChecker.staticTypeCheck(getEndExpression(), sequenceType, new RoleDiagnostic(1, "to", 1), expressionVisitor));
        return m62630d();
    }

    public RangeExpression(Expression expression, Expression expression2, Expression expression3) {
        OperandRole operandRole = OperandRole.SINGLE_ATOMIC;
        this.f99361n = new Operand(this, expression, operandRole);
        this.f99362o = new Operand(this, expression2, operandRole);
        this.f99363p = new Operand(this, expression3, operandRole);
        adoptChildExpression(expression);
        adoptChildExpression(expression2);
        adoptChildExpression(expression3);
    }
}
