package net.p110sf.saxon.trans.rules;

import java.util.Iterator;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.ParameterSet;
import net.p110sf.saxon.expr.instruct.TailCall;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NameOfNode;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.type.AnyType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.Untyped;

/* loaded from: classes11.dex */
public class ShallowCopyRuleSet implements BuiltInRuleSet {

    /* renamed from: e */
    public static final ShallowCopyRuleSet f102417e = new ShallowCopyRuleSet();

    public static ShallowCopyRuleSet getInstance() {
        return f102417e;
    }

    @Override // net.p110sf.saxon.trans.rules.BuiltInRuleSet
    public BuiltInRules[] getActionForParentNodes(int i) {
        return new BuiltInRules[]{BuiltInRules.SHALLOW_COPY, BuiltInRules.APPLY_TEMPLATES_TO_ATTRIBUTES, BuiltInRules.APPLY_TEMPLATES_TO_CHILDREN};
    }

    @Override // net.p110sf.saxon.trans.rules.BuiltInRuleSet
    public String getName() {
        return "shallow-copy";
    }

    @Override // net.p110sf.saxon.trans.rules.BuiltInRuleSet
    public void process(Item item, ParameterSet parameterSet, ParameterSet parameterSet2, Outputter outputter, XPathContext xPathContext, Location location) throws XPathException {
        if (!(item instanceof NodeInfo)) {
            outputter.m62516b(item, location, 0);
            return;
        }
        NodeInfo nodeInfo = (NodeInfo) item;
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind == 1) {
            boolean isSchemaAware = xPathContext.getController().getExecutable().isSchemaAware();
            PipelineConfiguration pipelineConfiguration = outputter.getPipelineConfiguration();
            if (outputter.getSystemId() == null) {
                outputter.setSystemId(nodeInfo.getBaseURI());
            }
            outputter.startElement(NameOfNode.makeName(nodeInfo), isSchemaAware ? AnyType.getInstance() : Untyped.getInstance(), location, 0);
            Iterator<NamespaceBinding> it2 = nodeInfo.getAllNamespaces().iterator();
            while (it2.hasNext()) {
                NamespaceBinding next = it2.next();
                outputter.namespace(next.getPrefix(), next.getURI(), 0);
            }
            XPathContextMajor newContext = xPathContext.newContext();
            newContext.setCurrentComponent(newContext.getCurrentMode());
            pipelineConfiguration.setXPathContext(newContext);
            AxisIterator iterateAxis = nodeInfo.iterateAxis(2);
            if (iterateAxis != EmptyIterator.ofNodes()) {
                newContext.setOrigin(this);
                newContext.trackFocus(iterateAxis);
                for (TailCall applyTemplates = newContext.getCurrentMode().getActor().applyTemplates(parameterSet, parameterSet2, null, outputter, newContext, location); applyTemplates != null; applyTemplates = applyTemplates.processLeavingTail()) {
                }
            }
            if (nodeInfo.hasChildNodes()) {
                newContext.trackFocus(nodeInfo.iterateAxis(3));
                for (TailCall applyTemplates2 = newContext.getCurrentMode().getActor().applyTemplates(parameterSet, parameterSet2, null, outputter, newContext, location); applyTemplates2 != null; applyTemplates2 = applyTemplates2.processLeavingTail()) {
                }
            }
            outputter.endElement();
            pipelineConfiguration.setXPathContext(xPathContext);
            return;
        }
        if (nodeKind == 2) {
            outputter.attribute(NameOfNode.makeName(nodeInfo), (SimpleType) nodeInfo.getSchemaType(), nodeInfo.getStringValue(), location, 0);
            return;
        }
        if (nodeKind == 3) {
            outputter.characters(nodeInfo.getUnicodeStringValue(), location, 0);
            return;
        }
        if (nodeKind == 7) {
            outputter.processingInstruction(nodeInfo.getLocalPart(), nodeInfo.getUnicodeStringValue(), location, 0);
            return;
        }
        if (nodeKind == 8) {
            outputter.comment(nodeInfo.getUnicodeStringValue(), location, 0);
            return;
        }
        if (nodeKind != 9) {
            if (nodeKind != 13) {
                return;
            }
            outputter.namespace(nodeInfo.getLocalPart(), nodeInfo.getStringValue(), 0);
            return;
        }
        PipelineConfiguration pipelineConfiguration2 = outputter.getPipelineConfiguration();
        if (outputter.getSystemId() == null) {
            outputter.setSystemId(nodeInfo.getBaseURI());
        }
        outputter.startDocument(0);
        XPathContextMajor newContext2 = xPathContext.newContext();
        newContext2.setOrigin(this);
        newContext2.trackFocus(nodeInfo.iterateAxis(3));
        newContext2.setCurrentComponent(newContext2.getCurrentMode());
        pipelineConfiguration2.setXPathContext(newContext2);
        for (TailCall applyTemplates3 = xPathContext.getCurrentMode().getActor().applyTemplates(parameterSet, parameterSet2, null, outputter, newContext2, location); applyTemplates3 != null; applyTemplates3 = applyTemplates3.processLeavingTail()) {
        }
        outputter.endDocument();
        pipelineConfiguration2.setXPathContext(xPathContext);
    }
}
