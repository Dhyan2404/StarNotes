package net.p110sf.saxon.trans;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Predicate;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.trans.rules.BuiltInRuleSet;
import net.p110sf.saxon.trans.rules.Rule;

/* loaded from: classes11.dex */
public class CompoundMode extends Mode {

    /* renamed from: t */
    public final Mode f102249t;

    /* renamed from: u */
    public final SimpleMode f102250u;

    /* renamed from: v */
    public final int f102251v;

    public CompoundMode(Mode mode, SimpleMode simpleMode) {
        super(mode.getModeName());
        if (!mode.getModeName().equals(simpleMode.getModeName())) {
            throw new AssertionError("Base and overriding modes must have the same name");
        }
        if (mode.getModeName().equals(Mode.UNNAMED_MODE_NAME)) {
            throw new AssertionError("Cannot override an unnamed mode");
        }
        if (mode.getModeName().equals(Mode.OMNI_MODE)) {
            throw new AssertionError("Cannot override mode='#all'");
        }
        this.f102249t = mode;
        this.f102250u = simpleMode;
        this.mustBeTyped = mode.mustBeTyped;
        this.mustBeUntyped = mode.mustBeUntyped;
        this.f102251v = mode.getMaxPrecedence() + 1;
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public void allocateAllBindingSlots(StylesheetPackage stylesheetPackage) {
        if (this.f102321p) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.f102249t.getDeclaringComponent().getComponentBindings());
        getDeclaringComponent().setComponentBindings(arrayList);
        SimpleMode.forceAllocateAllBindingSlots(stylesheetPackage, this.f102250u, arrayList);
        this.f102321p = true;
    }

    @Override // net.p110sf.saxon.trans.Mode
    public void computeRankings(int i) throws XPathException {
        this.f102250u.computeRankings(this.f102249t.getMaxRank() + 1);
    }

    @Override // net.p110sf.saxon.trans.Mode
    public void explainTemplateRules(ExpressionPresenter expressionPresenter) throws XPathException {
        this.f102250u.explainTemplateRules(expressionPresenter);
        this.f102249t.explainTemplateRules(expressionPresenter);
    }

    @Override // net.p110sf.saxon.trans.Mode
    public void exportTemplateRules(ExpressionPresenter expressionPresenter) throws XPathException {
        this.f102250u.exportTemplateRules(expressionPresenter);
        this.f102249t.exportTemplateRules(expressionPresenter);
    }

    @Override // net.p110sf.saxon.trans.Mode
    public SimpleMode getActivePart() {
        return this.f102250u;
    }

    @Override // net.p110sf.saxon.trans.Mode
    public BuiltInRuleSet getBuiltInRuleSet() {
        return this.f102249t.getBuiltInRuleSet();
    }

    @Override // net.p110sf.saxon.trans.Mode
    public Set<String> getExplicitNamespaces(NamePool namePool) {
        HashSet hashSet = new HashSet();
        hashSet.addAll(this.f102249t.getExplicitNamespaces(namePool));
        hashSet.addAll(this.f102250u.getExplicitNamespaces(namePool));
        return hashSet;
    }

    @Override // net.p110sf.saxon.trans.Mode
    public int getMaxPrecedence() {
        return this.f102251v;
    }

    @Override // net.p110sf.saxon.trans.Mode
    public int getMaxRank() {
        return this.f102250u.getMaxRank();
    }

    @Override // net.p110sf.saxon.trans.Mode
    public Rule getRule(Item item, XPathContext xPathContext) throws XPathException {
        Rule rule = this.f102250u.getRule(item, xPathContext);
        return rule == null ? this.f102249t.getRule(item, xPathContext) : rule;
    }

    @Override // net.p110sf.saxon.trans.Mode
    public int getStackFrameSlotsNeeded() {
        return Math.max(this.f102249t.getStackFrameSlotsNeeded(), this.f102250u.getStackFrameSlotsNeeded());
    }

    @Override // net.p110sf.saxon.trans.Mode
    public boolean isEmpty() {
        return this.f102249t.isEmpty() && this.f102250u.isEmpty();
    }

    @Override // net.p110sf.saxon.trans.Mode
    public void processRules(Mode.RuleAction ruleAction) throws XPathException {
        this.f102250u.processRules(ruleAction);
        this.f102249t.processRules(ruleAction);
    }

    @Override // net.p110sf.saxon.trans.Mode
    public Rule getRule(Item item, XPathContext xPathContext, Predicate<Rule> predicate) throws XPathException {
        Rule rule = this.f102250u.getRule(item, xPathContext, predicate);
        return rule == null ? this.f102249t.getRule(item, xPathContext, predicate) : rule;
    }
}
