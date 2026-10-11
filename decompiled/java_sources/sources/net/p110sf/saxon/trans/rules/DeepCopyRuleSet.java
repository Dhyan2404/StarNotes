package net.p110sf.saxon.trans.rules;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.ParameterSet;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NameOfNode;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.type.SimpleType;

/* loaded from: classes11.dex */
public class DeepCopyRuleSet implements BuiltInRuleSet {

    /* renamed from: e */
    public static final DeepCopyRuleSet f102402e = new DeepCopyRuleSet();

    public static DeepCopyRuleSet getInstance() {
        return f102402e;
    }

    @Override // net.p110sf.saxon.trans.rules.BuiltInRuleSet
    public BuiltInRules[] getActionForParentNodes(int i) {
        return new BuiltInRules[]{BuiltInRules.DEEP_COPY};
    }

    @Override // net.p110sf.saxon.trans.rules.BuiltInRuleSet
    public String getName() {
        return "deep-copy";
    }

    @Override // net.p110sf.saxon.trans.rules.BuiltInRuleSet
    public void process(Item item, ParameterSet parameterSet, ParameterSet parameterSet2, Outputter outputter, XPathContext xPathContext, Location location) throws XPathException {
        if (!(item instanceof NodeInfo)) {
            outputter.m62516b(item, location, 0);
            return;
        }
        NodeInfo nodeInfo = (NodeInfo) item;
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind != 1) {
            if (nodeKind == 2) {
                outputter.attribute(NameOfNode.makeName(nodeInfo), (SimpleType) nodeInfo.getSchemaType(), nodeInfo.getStringValue(), location, 0);
                return;
            }
            if (nodeKind == 3) {
                outputter.characters(item.getUnicodeStringValue(), location, 0);
                return;
            }
            if (nodeKind == 7) {
                outputter.processingInstruction(nodeInfo.getLocalPart(), nodeInfo.getUnicodeStringValue(), location, 0);
                return;
            }
            if (nodeKind == 8) {
                outputter.comment(nodeInfo.getUnicodeStringValue(), location, 0);
                return;
            } else if (nodeKind != 9) {
                if (nodeKind != 13) {
                    return;
                }
                outputter.namespace(nodeInfo.getLocalPart(), nodeInfo.getStringValue(), 0);
                return;
            }
        }
        if (outputter.getSystemId() == null) {
            outputter.setSystemId(nodeInfo.getBaseURI());
        }
        Navigator.copy(nodeInfo, outputter, 6, location);
    }
}
