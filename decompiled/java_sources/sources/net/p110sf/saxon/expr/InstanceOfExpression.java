package net.p110sf.saxon.expr;

import androidx.transition.Transition;
import com.google.android.material.motion.MotionUtils;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.DocumentNodeTest;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public final class InstanceOfExpression extends UnaryExpression {

    /* renamed from: o */
    public ItemType f99262o;

    /* renamed from: p */
    public int f99263p;

    public InstanceOfExpression(Expression expression, SequenceType sequenceType) {
        super(expression);
        ItemType primaryType = sequenceType.getPrimaryType();
        this.f99262o = primaryType;
        if (primaryType == null) {
            throw new IllegalArgumentException("Primary item type must not be null");
        }
        this.f99263p = sequenceType.getCardinality();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return this.f99263p ^ (super.computeHashCode() ^ this.f99262o.hashCode());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        InstanceOfExpression instanceOfExpression = new InstanceOfExpression(getBaseExpression().copy(rebindingMap), SequenceType.makeSequenceType(this.f99262o, this.f99263p));
        ExpressionTool.copyLocationInfo(this, instanceOfExpression);
        return instanceOfExpression;
    }

    /* renamed from: d */
    public final boolean m62589d(SequenceIterator sequenceIterator, XPathContext xPathContext) throws XPathException {
        int i = 0;
        while (true) {
            Item next = sequenceIterator.next();
            if (next == null) {
                return (i == 0 && (this.f99263p & 8192) == 0) ? false : true;
            }
            i++;
            if (!this.f99262o.matches(next, xPathContext.getConfiguration().getTypeHierarchy())) {
                sequenceIterator.close();
                return false;
            }
            if (i == 2 && !Cardinality.allowsMany(this.f99263p)) {
                sequenceIterator.close();
                return false;
            }
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        return m62589d(getBaseExpression().iterate(xPathContext), xPathContext);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            InstanceOfExpression instanceOfExpression = (InstanceOfExpression) obj;
            if (this.f99262o == instanceOfExpression.f99262o && this.f99263p == instanceOfExpression.f99263p) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement(Transition.f10626J0, this);
        expressionPresenter.emitAttribute("of", SequenceType.makeSequenceType(this.f99262o, this.f99263p).toAlphaCode());
        getBaseExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return Transition.f10626J0;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return BuiltInAtomicType.BOOLEAN;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return this.f99262o instanceof DocumentNodeTest ? OperandRole.ABSORB : OperandRole.INSPECT;
    }

    public int getRequiredCardinality() {
        return this.f99263p;
    }

    public ItemType getRequiredItemType() {
        return this.f99262o;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return UType.BOOLEAN;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "InstanceOf";
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        if (optimize != this) {
            return optimize;
        }
        if (!Cardinality.subsumes(this.f99263p, getBaseExpression().getCardinality())) {
            return this;
        }
        Affinity relationship = expressionVisitor.getConfiguration().getTypeHierarchy().relationship(getBaseExpression().getItemType(), this.f99262o);
        return (relationship == Affinity.SAME_TYPE || relationship == Affinity.SUBSUMED_BY) ? Literal.makeLiteral(BooleanValue.TRUE, this) : relationship == Affinity.DISJOINT ? (Cardinality.allowsZero(this.f99263p) && Cardinality.allowsZero(getBaseExpression().getCardinality())) ? this : Literal.makeLiteral(BooleanValue.FALSE, this) : this;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return getBaseExpression().toShortString() + " instance of " + this.f99262o.toString() + Cardinality.getOccurrenceIndicator(this.f99263p);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toString() {
        return MotionUtils.f31761c + getBaseExpression().toString() + " instance of " + this.f99262o.toString() + Cardinality.getOccurrenceIndicator(this.f99263p) + MotionUtils.f31762d;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getOperand().typeCheck(expressionVisitor, contextItemStaticInfo);
        Expression baseExpression = getBaseExpression();
        if (baseExpression instanceof Literal) {
            Literal makeLiteral = Literal.makeLiteral(evaluateItem(expressionVisitor.getStaticContext().makeEarlyEvaluationContext()), this);
            ExpressionTool.copyLocationInfo(this, makeLiteral);
            return makeLiteral;
        }
        if (Cardinality.subsumes(this.f99263p, baseExpression.getCardinality())) {
            Affinity relationship = expressionVisitor.getConfiguration().getTypeHierarchy().relationship(baseExpression.getItemType(), this.f99262o);
            if (relationship == Affinity.SAME_TYPE || relationship == Affinity.SUBSUMED_BY) {
                Literal makeLiteral2 = Literal.makeLiteral(BooleanValue.TRUE, this);
                ExpressionTool.copyLocationInfo(this, makeLiteral2);
                return makeLiteral2;
            }
            if (relationship == Affinity.DISJOINT && (!Cardinality.allowsZero(this.f99263p) || !Cardinality.allowsZero(baseExpression.getCardinality()))) {
                Literal makeLiteral3 = Literal.makeLiteral(BooleanValue.FALSE, this);
                ExpressionTool.copyLocationInfo(this, makeLiteral3);
                return makeLiteral3;
            }
        } else if ((this.f99263p & baseExpression.getCardinality()) == 0) {
            Literal makeLiteral4 = Literal.makeLiteral(BooleanValue.FALSE, this);
            ExpressionTool.copyLocationInfo(this, makeLiteral4);
            return makeLiteral4;
        }
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public BooleanValue evaluateItem(XPathContext xPathContext) throws XPathException {
        return BooleanValue.get(effectiveBooleanValue(xPathContext));
    }
}
