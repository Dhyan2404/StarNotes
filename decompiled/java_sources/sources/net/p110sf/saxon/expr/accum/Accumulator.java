package net.p110sf.saxon.expr.accum;

import java.util.Map;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.accum.Accumulator;
import net.p110sf.saxon.expr.instruct.Actor;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.trans.SimpleMode;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.rules.Rule;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class Accumulator extends Actor {

    /* renamed from: m */
    public StructuredQName f99443m;

    /* renamed from: n */
    public SimpleMode f99444n = new SimpleMode(new StructuredQName("saxon", NamespaceConstant.SAXON, "preDescent"));

    /* renamed from: o */
    public SimpleMode f99445o = new SimpleMode(new StructuredQName("saxon", NamespaceConstant.SAXON, "postDescent"));

    /* renamed from: p */
    public Expression f99446p;

    /* renamed from: q */
    public SequenceType f99447q;

    /* renamed from: r */
    public boolean f99448r;

    /* renamed from: s */
    public boolean f99449s;

    /* renamed from: t */
    public int f99450t;

    /* renamed from: u */
    public boolean f99451u;

    /* renamed from: v */
    public SlotManager f99452v;

    public Accumulator() {
        this.body = Literal.makeEmptySequence();
    }

    /* renamed from: c */
    public static /* synthetic */ void m62668c(ExpressionPresenter expressionPresenter, Rule rule) throws XPathException {
        expressionPresenter.startElement("accRule");
        expressionPresenter.emitAttribute("slots", ((AccumulatorRule) rule.getAction()).getStackFrameMap().getNumberOfVariables() + "");
        expressionPresenter.emitAttribute("rank", "" + rule.getRank());
        if (((AccumulatorRule) rule.getAction()).isCapturing()) {
            expressionPresenter.emitAttribute("flags", "c");
        }
        rule.getPattern().export(expressionPresenter);
        rule.getAction().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    public void addChildExpression(Expression expression) {
        setBody(Block.makeBlock(getBody(), expression));
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        export(expressionPresenter, null);
    }

    public StructuredQName getAccumulatorName() {
        return this.f99443m;
    }

    public int getImportPrecedence() {
        return this.f99450t;
    }

    public Expression getInitialValueExpression() {
        return this.f99446p;
    }

    public StructuredQName getObjectName() {
        return this.f99443m;
    }

    public SimpleMode getPostDescentRules() {
        return this.f99445o;
    }

    public SimpleMode getPreDescentRules() {
        return this.f99444n;
    }

    public SlotManager getSlotManagerForInitialValueExpression() {
        return this.f99452v;
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public SymbolicName getSymbolicName() {
        return new SymbolicName(129, getAccumulatorName());
    }

    public SequenceType getType() {
        return this.f99447q;
    }

    public boolean isCompatible(Accumulator accumulator) {
        return getAccumulatorName().equals(accumulator.getAccumulatorName());
    }

    public boolean isDeclaredStreamable() {
        return this.f99448r;
    }

    public boolean isTracing() {
        return this.f99451u;
    }

    public boolean isUniversallyApplicable() {
        return this.f99449s;
    }

    public void setAccumulatorName(StructuredQName structuredQName) {
        this.f99443m = structuredQName;
    }

    public void setDeclaredStreamable(boolean z) {
        this.f99448r = z;
    }

    public void setImportPrecedence(int i) {
        this.f99450t = i;
    }

    public void setInitialValueExpression(Expression expression) {
        this.f99446p = expression;
    }

    public void setPostDescentRules(SimpleMode simpleMode) {
        this.f99445o = simpleMode;
    }

    public void setPreDescentRules(SimpleMode simpleMode) {
        this.f99444n = simpleMode;
    }

    public void setSlotManagerForInitialValueExpression(SlotManager slotManager) {
        this.f99452v = slotManager;
    }

    public void setTracing(boolean z) {
        this.f99451u = z;
    }

    public void setType(SequenceType sequenceType) {
        this.f99447q = sequenceType;
    }

    public void setUniversallyApplicable(boolean z) {
        this.f99449s = z;
    }

    public void export(final ExpressionPresenter expressionPresenter, Map<Component, Integer> map) throws XPathException {
        expressionPresenter.startElement("accumulator");
        expressionPresenter.emitAttribute("name", getObjectName());
        expressionPresenter.emitAttribute("line", getLineNumber() + "");
        expressionPresenter.emitAttribute("module", getSystemId());
        expressionPresenter.emitAttribute("as", this.f99447q.toAlphaCode());
        expressionPresenter.emitAttribute("streamable", this.f99448r ? "1" : "0");
        expressionPresenter.emitAttribute("slots", getSlotManagerForInitialValueExpression().getNumberOfVariables() + "");
        if (map != null) {
            expressionPresenter.emitAttribute("binds", "" + getDeclaringComponent().listComponentReferences(map));
        }
        if (isUniversallyApplicable()) {
            expressionPresenter.emitAttribute("flags", "u");
        }
        expressionPresenter.setChildRole("init");
        this.f99446p.export(expressionPresenter);
        Mode.RuleAction ruleAction = new Mode.RuleAction() { // from class: com.sunia.HTREnginev2.c6
            @Override // net.sf.saxon.trans.Mode.RuleAction
            public final void processRule(Rule rule) {
                Accumulator.m62668c(ExpressionPresenter.this, rule);
            }
        };
        try {
            expressionPresenter.startElement("pre");
            expressionPresenter.emitAttribute("slots", this.f99444n.getStackFrameSlotsNeeded() + "");
            this.f99444n.processRules(ruleAction);
            expressionPresenter.endElement();
            expressionPresenter.startElement("post");
            expressionPresenter.emitAttribute("slots", this.f99445o.getStackFrameSlotsNeeded() + "");
            this.f99445o.processRules(ruleAction);
            expressionPresenter.endElement();
            expressionPresenter.endElement();
        } catch (XPathException e) {
            throw new AssertionError(e);
        }
    }
}
