package net.p110sf.saxon.trans.rules;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.ParameterSet;
import net.p110sf.saxon.expr.instruct.TailCall;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class DeepSkipRuleSet implements BuiltInRuleSet {

    /* renamed from: e */
    public static final DeepSkipRuleSet f102403e = new DeepSkipRuleSet();

    public static DeepSkipRuleSet getInstance() {
        return f102403e;
    }

    @Override // net.p110sf.saxon.trans.rules.BuiltInRuleSet
    public BuiltInRules[] getActionForParentNodes(int i) {
        return i == 9 ? new BuiltInRules[]{BuiltInRules.APPLY_TEMPLATES_TO_CHILDREN} : new BuiltInRules[]{BuiltInRules.DEEP_SKIP};
    }

    @Override // net.p110sf.saxon.trans.rules.BuiltInRuleSet
    public String getName() {
        return "deep-skip";
    }

    @Override // net.p110sf.saxon.trans.rules.BuiltInRuleSet
    public void process(Item item, ParameterSet parameterSet, ParameterSet parameterSet2, Outputter outputter, XPathContext xPathContext, Location location) throws XPathException {
        if (item instanceof NodeInfo) {
            NodeInfo nodeInfo = (NodeInfo) item;
            if (nodeInfo.getNodeKind() == 9) {
                XPathContextMajor newContext = xPathContext.newContext();
                newContext.setOrigin(this);
                newContext.trackFocus(nodeInfo.iterateAxis(3));
                newContext.setCurrentComponent(newContext.getCurrentMode());
                for (TailCall applyTemplates = newContext.getCurrentMode().getActor().applyTemplates(parameterSet, parameterSet2, null, outputter, newContext, location); applyTemplates != null; applyTemplates = applyTemplates.processLeavingTail()) {
                }
            }
        }
    }
}
