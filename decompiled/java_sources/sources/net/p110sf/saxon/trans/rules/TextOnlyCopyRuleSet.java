package net.p110sf.saxon.trans.rules;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.ParameterSet;
import net.p110sf.saxon.expr.instruct.TailCall;
import net.p110sf.saxon.ma.arrays.ArrayFunctionSet;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class TextOnlyCopyRuleSet implements BuiltInRuleSet {

    /* renamed from: e */
    public static final TextOnlyCopyRuleSet f102419e = new TextOnlyCopyRuleSet();

    public static TextOnlyCopyRuleSet getInstance() {
        return f102419e;
    }

    @Override // net.p110sf.saxon.trans.rules.BuiltInRuleSet
    public BuiltInRules[] getActionForParentNodes(int i) {
        return new BuiltInRules[]{BuiltInRules.APPLY_TEMPLATES_TO_CHILDREN};
    }

    @Override // net.p110sf.saxon.trans.rules.BuiltInRuleSet
    public String getName() {
        return "text-only";
    }

    @Override // net.p110sf.saxon.trans.rules.BuiltInRuleSet
    public void process(Item item, ParameterSet parameterSet, ParameterSet parameterSet2, Outputter outputter, XPathContext xPathContext, Location location) throws XPathException {
        if (!(item instanceof NodeInfo)) {
            if (!(item instanceof ArrayItem)) {
                if (item instanceof AtomicValue) {
                    outputter.characters(item.getUnicodeStringValue(), location, 0);
                    return;
                }
                return;
            }
            SequenceIterator iterate = ArrayFunctionSet.ArrayToSequence.toSequence((ArrayItem) item).iterate();
            XPathContextMajor newContext = xPathContext.newContext();
            newContext.setOrigin(this);
            newContext.trackFocus(iterate);
            newContext.setCurrentComponent(newContext.getCurrentMode());
            for (TailCall applyTemplates = newContext.getCurrentMode().getActor().applyTemplates(parameterSet, parameterSet2, null, outputter, newContext, location); applyTemplates != null; applyTemplates = applyTemplates.processLeavingTail()) {
            }
            return;
        }
        NodeInfo nodeInfo = (NodeInfo) item;
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind != 1) {
            if (nodeKind == 2 || nodeKind == 3) {
                outputter.characters(item.getUnicodeStringValue(), location, 0);
                return;
            } else if (nodeKind != 9) {
                return;
            }
        }
        XPathContextMajor newContext2 = xPathContext.newContext();
        newContext2.setOrigin(this);
        newContext2.trackFocus(nodeInfo.iterateAxis(3));
        newContext2.setCurrentComponent(newContext2.getCurrentMode());
        for (TailCall applyTemplates2 = newContext2.getCurrentMode().getActor().applyTemplates(parameterSet, parameterSet2, null, outputter, newContext2, location); applyTemplates2 != null; applyTemplates2 = applyTemplates2.processLeavingTail()) {
        }
    }
}
