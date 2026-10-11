package net.p110sf.saxon.trans.rules;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.TemplateRule;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class Rule {

    /* renamed from: a */
    public boolean f102405a;
    protected RuleTarget action;

    /* renamed from: b */
    public int f102406b;
    protected int minImportPrecedence;
    protected Rule next;
    protected int part;
    protected Pattern pattern;
    protected int precedence;
    protected double priority;
    protected int sequence;

    public Rule() {
    }

    public int compareComputedRank(Rule rule) {
        int i = this.precedence;
        int i2 = rule.precedence;
        return i == i2 ? Double.compare(this.priority, rule.priority) : i < i2 ? -1 : 1;
    }

    public int compareRank(Rule rule) {
        return this.f102406b - rule.f102406b;
    }

    public Rule copy(boolean z) {
        Rule rule = new Rule();
        rule.copyFrom(this, z);
        return rule;
    }

    public void copyFrom(Rule rule, boolean z) {
        this.pattern = rule.pattern.copy(new RebindingMap());
        RuleTarget ruleTarget = rule.action;
        if (ruleTarget instanceof TemplateRule) {
            ruleTarget = ((TemplateRule) ruleTarget).copy();
        }
        this.action = ruleTarget;
        this.precedence = rule.precedence;
        this.minImportPrecedence = rule.minImportPrecedence;
        this.priority = rule.priority;
        this.sequence = rule.sequence;
        this.part = rule.part;
        Rule rule2 = rule.next;
        if (rule2 == null || !z) {
            this.next = null;
        } else {
            this.next = rule2.copy(true);
        }
        this.action.registerRule(this);
    }

    public void export(ExpressionPresenter expressionPresenter, boolean z) throws XPathException {
        RuleTarget action = getAction();
        if (!(action instanceof TemplateRule)) {
            action.export(expressionPresenter);
            return;
        }
        TemplateRule templateRule = (TemplateRule) action;
        int startElement = expressionPresenter.startElement("templateRule");
        expressionPresenter.emitAttribute("prec", getPrecedence() + "");
        expressionPresenter.emitAttribute("prio", getPriority() + "");
        expressionPresenter.emitAttribute("seq", getSequence() + "");
        if (this.part != 0) {
            expressionPresenter.emitAttribute("part", "" + this.part);
        }
        expressionPresenter.emitAttribute("rank", "" + getRank());
        expressionPresenter.emitAttribute("minImp", getMinImportPrecedence() + "");
        expressionPresenter.emitAttribute("slots", templateRule.getStackFrameMap().getNumberOfVariables() + "");
        expressionPresenter.emitAttribute("matches", this.pattern.getItemType().getFullAlphaCode());
        templateRule.explainProperties(expressionPresenter);
        exportOtherProperties(expressionPresenter);
        expressionPresenter.setChildRole(Constants.ATTRNAME_MATCH);
        getPattern().export(expressionPresenter);
        if (templateRule.getBody() != null) {
            expressionPresenter.setChildRole("action");
            templateRule.getBody().export(expressionPresenter);
        }
        if (startElement == expressionPresenter.endElement()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("exported expression tree unbalanced in template at line ");
        sb.append(templateRule.getLineNumber() + " of " + templateRule.getSystemId());
        throw new IllegalStateException(sb.toString());
    }

    public void exportOtherProperties(ExpressionPresenter expressionPresenter) throws XPathException {
    }

    public RuleTarget getAction() {
        return this.action;
    }

    public int getMinImportPrecedence() {
        return this.minImportPrecedence;
    }

    public Rule getNext() {
        return this.next;
    }

    public int getPartNumber() {
        return this.part;
    }

    public Pattern getPattern() {
        return this.pattern;
    }

    public int getPrecedence() {
        return this.precedence;
    }

    public double getPriority() {
        return this.priority;
    }

    public int getRank() {
        return this.f102406b;
    }

    public int getSequence() {
        return this.sequence;
    }

    public boolean isAlwaysMatches() {
        return this.f102405a;
    }

    public boolean matches(Item item, XPathContextMajor xPathContextMajor) throws XPathException {
        return this.f102405a || this.pattern.m63465s(item, xPathContextMajor);
    }

    public void setAction(RuleTarget ruleTarget) {
        this.action = ruleTarget;
    }

    public void setAlwaysMatches(boolean z) {
        this.f102405a = z;
    }

    public void setNext(Rule rule) {
        this.next = rule;
    }

    public void setPattern(Pattern pattern) {
        this.pattern = pattern;
    }

    public void setRank(int i) {
        this.f102406b = i;
    }

    public Rule(Pattern pattern, RuleTarget ruleTarget, int i, int i2, double d, int i3, int i4) {
        this.pattern = pattern;
        this.action = ruleTarget;
        this.precedence = i;
        this.minImportPrecedence = i2;
        this.priority = d;
        this.next = null;
        this.sequence = i3;
        this.part = i4;
        ruleTarget.registerRule(this);
    }
}
