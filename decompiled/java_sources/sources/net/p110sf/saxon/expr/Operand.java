package net.p110sf.saxon.expr;

import java.util.Iterator;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.tree.jiter.MonoIterator;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public final class Operand implements Iterable<Operand>, ExpressionOwner {

    /* renamed from: h */
    public static final boolean f99329h = false;

    /* renamed from: e */
    public final Expression f99330e;

    /* renamed from: f */
    public Expression f99331f;

    /* renamed from: g */
    public OperandRole f99332g;

    public Operand(Expression expression, Expression expression2, OperandRole operandRole) {
        this.f99330e = expression;
        this.f99332g = operandRole;
        setChildExpression(expression2);
    }

    public static OperandUsage typeDeterminedUsage(ItemType itemType) {
        return itemType.isPlainType() ? OperandUsage.ABSORPTION : ((itemType instanceof NodeTest) || itemType == AnyItemType.getInstance()) ? OperandUsage.NAVIGATION : OperandUsage.INSPECTION;
    }

    public void detachChild() {
    }

    @Override // net.p110sf.saxon.expr.ExpressionOwner
    public Expression getChildExpression() {
        return this.f99331f;
    }

    public OperandRole getOperandRole() {
        return this.f99332g;
    }

    public Expression getParentExpression() {
        return this.f99330e;
    }

    public SequenceType getRequiredType() {
        return this.f99332g.getRequiredType();
    }

    public OperandUsage getUsage() {
        return this.f99332g.getUsage();
    }

    public boolean hasSameFocus() {
        return this.f99332g.hasSameFocus();
    }

    public boolean hasSpecialFocusRules() {
        return this.f99332g.hasSpecialFocusRules();
    }

    public boolean isEvaluatedRepeatedly() {
        return this.f99332g.isEvaluatedRepeatedly();
    }

    public boolean isHigherOrder() {
        return this.f99332g.isHigherOrder();
    }

    public boolean isInChoiceGroup() {
        return this.f99332g.isInChoiceGroup();
    }

    @Override // java.lang.Iterable
    public Iterator<Operand> iterator() {
        return new MonoIterator(this);
    }

    public void optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        try {
            setChildExpression(getChildExpression().optimize(expressionVisitor, contextItemStaticInfo));
        } catch (XPathException e) {
            e.maybeSetLocation(getChildExpression().getLocation());
            if (e.isReportableStatically()) {
                throw e;
            }
            expressionVisitor.getStaticContext().issueWarning("Evaluation will always throw a dynamic error: " + e.getMessage(), getChildExpression().getLocation());
            setChildExpression(new ErrorExpression(new XmlProcessingException(e)));
        }
    }

    @Override // net.p110sf.saxon.expr.ExpressionOwner
    public void setChildExpression(Expression expression) {
        if (expression != this.f99331f) {
            if (this.f99332g.isConstrainedClass()) {
                if (this.f99332g.getConstraint() != null) {
                    if (!this.f99332g.getConstraint().test(expression)) {
                        throw new AssertionError();
                    }
                } else if (this.f99331f != null && expression.getClass() != this.f99331f.getClass()) {
                    throw new AssertionError();
                }
            }
            this.f99331f = expression;
            this.f99330e.adoptChildExpression(expression);
            this.f99330e.resetLocalStaticProperties();
        }
    }

    public void setOperandRole(OperandRole operandRole) {
        this.f99332g = operandRole;
    }

    public void setUsage(OperandUsage operandUsage) {
        OperandRole operandRole = this.f99332g;
        this.f99332g = new OperandRole(operandRole.f99333a, operandUsage, operandRole.getRequiredType());
    }

    public boolean setsNewFocus() {
        return this.f99332g.setsNewFocus();
    }

    public void typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        try {
            setChildExpression(getChildExpression().typeCheck(expressionVisitor, contextItemStaticInfo));
        } catch (XPathException e) {
            e.maybeSetLocation(getChildExpression().getLocation());
            if (e.isReportableStatically()) {
                throw e;
            }
            expressionVisitor.getStaticContext().issueWarning("Evaluation will always throw a dynamic error: " + e.getMessage(), getChildExpression().getLocation());
            setChildExpression(new ErrorExpression(new XmlProcessingException(e)));
        }
    }
}
