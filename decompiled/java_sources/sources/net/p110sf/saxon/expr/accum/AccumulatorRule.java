package net.p110sf.saxon.expr.accum;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.rules.Rule;
import net.p110sf.saxon.trans.rules.RuleTarget;

/* loaded from: classes11.dex */
public class AccumulatorRule implements RuleTarget {

    /* renamed from: e */
    public final Expression f99464e;

    /* renamed from: f */
    public final SlotManager f99465f;

    /* renamed from: g */
    public final boolean f99466g;

    /* renamed from: h */
    public boolean f99467h;

    public AccumulatorRule(Expression expression, SlotManager slotManager, boolean z) {
        this.f99464e = expression;
        this.f99465f = slotManager;
        this.f99466g = z;
    }

    @Override // net.p110sf.saxon.trans.rules.RuleTarget
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        this.f99464e.export(expressionPresenter);
    }

    public Expression getNewValueExpression() {
        return this.f99464e;
    }

    public SlotManager getStackFrameMap() {
        return this.f99465f;
    }

    public boolean isCapturing() {
        return this.f99467h;
    }

    public boolean isPostDescent() {
        return this.f99466g;
    }

    @Override // net.p110sf.saxon.trans.rules.RuleTarget
    public void registerRule(Rule rule) {
    }

    public void setCapturing(boolean z) {
        this.f99467h = z;
    }
}
