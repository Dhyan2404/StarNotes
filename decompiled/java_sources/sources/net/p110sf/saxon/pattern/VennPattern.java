package net.p110sf.saxon.pattern;

import java.util.HashSet;
import java.util.Set;
import net.p110sf.saxon.expr.LocalBinding;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class VennPattern extends Pattern {

    /* renamed from: p1 */
    protected Pattern f100938p1;

    /* renamed from: p2 */
    protected Pattern f100939p2;

    public VennPattern(Pattern pattern, Pattern pattern2) {
        this.f100938p1 = pattern;
        this.f100939p2 = pattern2;
        adoptChildExpression(pattern);
        adoptChildExpression(pattern2);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public int allocateSlots(SlotManager slotManager, int i) {
        return this.f100939p2.allocateSlots(slotManager, this.f100938p1.allocateSlots(slotManager, i));
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public void bindCurrent(LocalBinding localBinding) {
        this.f100938p1.bindCurrent(localBinding);
        this.f100939p2.bindCurrent(localBinding);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return this.f100939p2.hashCode() ^ (this.f100938p1.hashCode() ^ 1809261478);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (!(obj instanceof VennPattern)) {
            return false;
        }
        Set<Pattern> hashSet = new HashSet<>(10);
        gatherComponentPatterns(hashSet);
        HashSet hashSet2 = new HashSet(10);
        ((VennPattern) obj).gatherComponentPatterns(hashSet2);
        return hashSet.equals(hashSet2);
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("p.venn");
        expressionPresenter.emitAttribute("op", getOperatorName());
        this.f100938p1.export(expressionPresenter);
        this.f100939p2.export(expressionPresenter);
        expressionPresenter.endElement();
    }

    public void gatherComponentPatterns(Set<Pattern> set) {
        Pattern pattern = this.f100938p1;
        if (pattern instanceof VennPattern) {
            ((VennPattern) pattern).gatherComponentPatterns(set);
        } else {
            set.add(pattern);
        }
        Pattern pattern2 = this.f100939p2;
        if (pattern2 instanceof VennPattern) {
            ((VennPattern) pattern2).gatherComponentPatterns(set);
        } else {
            set.add(pattern2);
        }
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public int getDependencies() {
        return this.f100939p2.getDependencies() | this.f100938p1.getDependencies();
    }

    public Pattern getLHS() {
        return this.f100938p1;
    }

    public abstract String getOperatorName();

    public Pattern getRHS() {
        return this.f100939p2;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public boolean isMotionless() {
        return this.f100938p1.isMotionless() && this.f100939p2.isMotionless();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public boolean matchesCurrentGroup() {
        return this.f100938p1.matchesCurrentGroup() || this.f100939p2.matchesCurrentGroup();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        Pattern pattern = this.f100938p1;
        OperandRole operandRole = OperandRole.SAME_FOCUS_ACTION;
        return operandList(new Operand(this, pattern, operandRole), new Operand(this, this.f100939p2, operandRole));
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public String reconstruct() {
        return this.f100938p1 + " " + getOperatorName() + " " + this.f100939p2;
    }

    /* renamed from: t */
    public final void m63471t(Pattern pattern) throws XPathException {
        if (!(pattern instanceof NodeTestPattern) || (pattern.getItemType() instanceof NodeTest)) {
            return;
        }
        XPathException xPathException = new XPathException("The operands of a union, intersect, or except pattern must be patterns that match nodes", "XPTY0004");
        xPathException.setIsTypeError(true);
        throw xPathException;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern simplify() throws XPathException {
        this.f100938p1 = this.f100938p1.simplify();
        this.f100939p2 = this.f100939p2.simplify();
        return this;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        m63471t(this.f100938p1);
        this.f100938p1 = this.f100938p1.typeCheck(expressionVisitor, contextItemStaticInfo);
        m63471t(this.f100939p2);
        this.f100939p2 = this.f100939p2.typeCheck(expressionVisitor, contextItemStaticInfo);
        return this;
    }
}
