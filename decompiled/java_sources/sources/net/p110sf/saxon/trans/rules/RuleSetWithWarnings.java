package net.p110sf.saxon.trans.rules;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.ParameterSet;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingIncident;
import net.p110sf.saxon.tree.util.Navigator;

/* loaded from: classes11.dex */
public class RuleSetWithWarnings implements BuiltInRuleSet {

    /* renamed from: e */
    public final BuiltInRuleSet f102416e;

    public RuleSetWithWarnings(BuiltInRuleSet builtInRuleSet) {
        this.f102416e = builtInRuleSet;
    }

    @Override // net.p110sf.saxon.trans.rules.BuiltInRuleSet
    public BuiltInRules[] getActionForParentNodes(int i) {
        return this.f102416e.getActionForParentNodes(i);
    }

    public BuiltInRuleSet getBaseRuleSet() {
        return this.f102416e;
    }

    @Override // net.p110sf.saxon.trans.rules.BuiltInRuleSet
    public String getName() {
        return this.f102416e + " with warnings";
    }

    public void outputWarning(Item item, XPathContext xPathContext) {
        String str;
        if (item instanceof NodeInfo) {
            str = "the node " + Navigator.getPath((NodeInfo) item);
        } else {
            str = "the atomic value " + item.getUnicodeStringValue();
        }
        xPathContext.getController().getErrorReporter().report(new XmlProcessingIncident("No user-defined template rule matches " + str, "XTDE0555").asWarning());
    }

    @Override // net.p110sf.saxon.trans.rules.BuiltInRuleSet
    public void process(Item item, ParameterSet parameterSet, ParameterSet parameterSet2, Outputter outputter, XPathContext xPathContext, Location location) throws XPathException {
        outputWarning(item, xPathContext);
        this.f102416e.process(item, parameterSet, parameterSet2, outputter, xPathContext, location);
    }
}
