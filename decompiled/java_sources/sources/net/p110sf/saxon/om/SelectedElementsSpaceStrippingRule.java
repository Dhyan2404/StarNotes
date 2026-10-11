package net.p110sf.saxon.om;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TreeMap;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.Stripper;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.pattern.NodeTestPattern;
import net.p110sf.saxon.style.StylesheetModule;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.rules.Rule;
import net.p110sf.saxon.type.AlphaCode;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class SelectedElementsSpaceStrippingRule implements SpaceStrippingRule {

    /* renamed from: a */
    public Rule f100848a = null;

    /* renamed from: b */
    public Rule f100849b = null;

    /* renamed from: c */
    public final HashMap<NodeName, Rule> f100850c = new HashMap<>(32);

    /* renamed from: d */
    public int f100851d = 0;

    /* renamed from: e */
    public final boolean f100852e;

    public SelectedElementsSpaceStrippingRule(boolean z) {
        this.f100852e = z;
    }

    /* renamed from: b */
    public static void m63400b(Rule rule, ExpressionPresenter expressionPresenter) {
        expressionPresenter.startElement(rule.getAction() == Stripper.STRIP ? "s" : "p");
        expressionPresenter.emitAttribute(Constants.ATTRNAME_TEST, AlphaCode.fromItemType(rule.getPattern().getItemType()));
        expressionPresenter.emitAttribute("prec", rule.getPrecedence() + "");
        expressionPresenter.endElement();
    }

    /* renamed from: a */
    public final Rule m63401a(Rule rule, Rule rule2, boolean z) throws XPathException {
        if (rule2 == null) {
            return rule;
        }
        int precedence = rule.getPrecedence();
        Rule rule3 = rule2;
        Rule rule4 = null;
        while (true) {
            if (rule3 == null) {
                break;
            }
            if (rule3.getPrecedence() > precedence) {
                rule4 = rule3;
                rule3 = rule3.getNext();
            } else {
                if (this.f100852e && rule3.getPrecedence() == precedence && !rule3.getAction().equals(rule.getAction())) {
                    throw new XPathException("There are conflicting xsl:strip-space and xsl:preserve-space declarations for " + rule3.getPattern() + " at the same import precedence", "XTSE0270");
                }
                rule.setNext(z ? null : rule3);
                if (rule4 == null) {
                    return rule;
                }
                rule4.setNext(rule);
            }
        }
        if (rule3 == null) {
            rule4.setNext(rule);
            rule.setNext(null);
        }
        return rule2;
    }

    public void addRule(NodeTest nodeTest, Stripper.StripRuleTarget stripRuleTarget, StylesheetModule stylesheetModule, int i) throws XPathException {
        addRule(new NodeTestPattern(nodeTest), stripRuleTarget, stylesheetModule.getPrecedence(), stylesheetModule.getMinImportPrecedence());
    }

    /* renamed from: c */
    public final Rule m63402c(NodeName nodeName, Rule rule, Rule rule2) {
        while (rule2 != null) {
            if (rule == null) {
                if (!rule2.isAlwaysMatches() && !((NodeTest) rule2.getPattern().getItemType()).matches(1, nodeName, null)) {
                    rule2 = rule2.getNext();
                }
                return rule2;
            }
            int compareRank = rule2.compareRank(rule);
            if (compareRank < 0) {
                return rule;
            }
            if (compareRank == 0) {
                if (!rule2.isAlwaysMatches() && !((NodeTest) rule2.getPattern().getItemType()).matches(1, nodeName, null)) {
                }
                return rule2;
            }
            if (rule2.isAlwaysMatches() || ((NodeTest) rule2.getPattern().getItemType()).matches(1, nodeName, null)) {
                rule = rule2;
            }
            rule2 = rule2.getNext();
        }
        return rule;
    }

    @Override // net.p110sf.saxon.om.SpaceStrippingRule
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("strip");
        for (Rule rule = this.f100848a; rule != null; rule = rule.getNext()) {
            m63400b(rule, expressionPresenter);
        }
        for (Rule rule2 = this.f100849b; rule2 != null; rule2 = rule2.getNext()) {
            m63400b(rule2, expressionPresenter);
        }
        Iterator<Rule> it2 = this.f100850c.values().iterator();
        while (it2.hasNext()) {
            m63400b(it2.next(), expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    public Iterator<Rule> getRankedRules() {
        TreeMap treeMap = new TreeMap();
        for (Rule rule = this.f100848a; rule != null; rule = rule.getNext()) {
            treeMap.put(Integer.valueOf(-rule.getRank()), rule);
        }
        for (Rule rule2 = this.f100849b; rule2 != null; rule2 = rule2.getNext()) {
            treeMap.put(Integer.valueOf(-rule2.getRank()), rule2);
        }
        for (Rule rule3 : this.f100850c.values()) {
            treeMap.put(Integer.valueOf(-rule3.getRank()), rule3);
        }
        return treeMap.values().iterator();
    }

    public Rule getRule(NodeName nodeName) {
        Rule rule = this.f100850c.get(nodeName);
        Rule rule2 = this.f100849b;
        if (rule2 != null) {
            rule = m63402c(nodeName, rule, rule2);
        }
        Rule rule3 = this.f100848a;
        return rule3 != null ? m63402c(nodeName, rule, rule3) : rule;
    }

    @Override // net.p110sf.saxon.om.SpaceStrippingRule
    public int isSpacePreserving(NodeName nodeName, SchemaType schemaType) throws XPathException {
        Rule rule = getRule(nodeName);
        return (rule == null || rule.getAction() == Stripper.PRESERVE) ? 1 : 0;
    }

    @Override // net.p110sf.saxon.om.SpaceStrippingRule
    public ProxyReceiver makeStripper(Receiver receiver) {
        return new Stripper(this, receiver);
    }

    public void addRule(NodeTestPattern nodeTestPattern, Stripper.StripRuleTarget stripRuleTarget, int i, int i2) throws XPathException {
        NodeTest nodeTest = nodeTestPattern.getNodeTest();
        double defaultPriority = nodeTest.getDefaultPriority();
        int i3 = this.f100851d;
        this.f100851d = i3 + 1;
        Rule rule = new Rule(nodeTestPattern, stripRuleTarget, i, i2, defaultPriority, i3, 0);
        rule.setRank((i << 18) + ((defaultPriority == 0.0d ? 2 : defaultPriority == -0.25d ? 1 : 0) << 16) + this.f100851d);
        if (nodeTest instanceof NodeKindTest) {
            rule.setAlwaysMatches(true);
            this.f100848a = m63401a(rule, this.f100848a, true);
        } else {
            if (nodeTest instanceof NameTest) {
                rule.setAlwaysMatches(true);
                int fingerprint = nodeTest.getFingerprint();
                NamePool namePool = ((NameTest) nodeTest).getNamePool();
                FingerprintedQName fingerprintedQName = new FingerprintedQName(namePool.getUnprefixedQName(fingerprint), namePool);
                this.f100850c.put(fingerprintedQName, m63401a(rule, this.f100850c.get(fingerprintedQName), true));
                return;
            }
            this.f100849b = m63401a(rule, this.f100849b, false);
        }
    }
}
