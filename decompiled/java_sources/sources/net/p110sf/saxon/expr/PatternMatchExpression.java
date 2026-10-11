package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public final class PatternMatchExpression extends Expression {

    /* renamed from: n */
    public final Operand f99358n;

    /* renamed from: o */
    public final Operand f99359o;

    public PatternMatchExpression(Expression expression, Pattern pattern) {
        this.f99358n = new Operand(this, expression, new OperandRole(0, OperandUsage.NAVIGATION, SequenceType.ANY_SEQUENCE));
        this.f99359o = new Operand(this, pattern, OperandRole.INSPECT);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return getPattern().computeHashCode() ^ (getSelectExpression().computeHashCode() << 5);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        PatternMatchExpression patternMatchExpression = new PatternMatchExpression(this.f99358n.getChildExpression(), (Pattern) this.f99359o.getChildExpression());
        ExpressionTool.copyLocationInfo(this, patternMatchExpression);
        return patternMatchExpression;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        Item next;
        Pattern pattern = getPattern();
        SequenceIterator iterate = getSelectExpression().iterate(xPathContext);
        do {
            next = iterate.next();
            if (next == null) {
                return true;
            }
        } while (pattern.m63465s(next, xPathContext));
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (obj instanceof PatternMatchExpression) {
            PatternMatchExpression patternMatchExpression = (PatternMatchExpression) obj;
            if (patternMatchExpression.getSelectExpression().equals(getSelectExpression()) && patternMatchExpression.getPattern().equals(getSelectExpression())) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        return BooleanValue.get(effectiveBooleanValue(xPathContext));
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("patMatch", this);
        getSelectExpression().export(expressionPresenter);
        getPattern().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return Constants.ATTRNAME_MATCH;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return BuiltInAtomicType.BOOLEAN;
    }

    public Pattern getPattern() {
        return (Pattern) this.f99359o.getChildExpression();
    }

    public Expression getSelectExpression() {
        return this.f99358n.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandList(this.f99358n, this.f99359o);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return "patMatch(" + getSelectExpression().toShortString() + "," + getPattern().toShortString() + MotionUtils.f31762d;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        return "patMatch(" + getSelectExpression().toString() + "," + getPattern().toString() + MotionUtils.f31762d;
    }
}
