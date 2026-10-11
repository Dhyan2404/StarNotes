package net.p110sf.saxon.functions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.event.BuilderMonitor;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ItemMapper;
import net.p110sf.saxon.expr.ItemMappingIterator;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.functions.SnapshotFn;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.LazySequence;
import net.p110sf.saxon.om.NameOfNode;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.tiny.TinyBuilder;
import net.p110sf.saxon.tree.wrapper.SnapshotNode;
import net.p110sf.saxon.tree.wrapper.VirtualCopy;
import net.p110sf.saxon.type.AnyType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Untyped;

/* loaded from: classes11.dex */
public class SnapshotFn extends SystemFunction {
    public static void closeAncestors(List<NodeInfo> list, Receiver receiver) throws XPathException {
        for (NodeInfo nodeInfo : list) {
            int nodeKind = nodeInfo.getNodeKind();
            if (nodeKind == 1) {
                receiver.endElement();
            } else {
                if (nodeKind != 9) {
                    throw new IllegalStateException("Unknown ancestor node kind " + nodeInfo.getNodeKind());
                }
                receiver.endDocument();
            }
        }
        receiver.close();
    }

    public static List<NodeInfo> makeAncestorList(NodeInfo nodeInfo) {
        ArrayList arrayList = new ArrayList(20);
        AxisIterator iterateAxis = nodeInfo.iterateAxis(0);
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return arrayList;
            }
            arrayList.add(next);
        }
    }

    public static BuilderMonitor openAncestors(NodeInfo nodeInfo, List<NodeInfo> list, XPathContext xPathContext) throws XPathException {
        NodeInfo root = nodeInfo.getRoot();
        TinyBuilder tinyBuilder = new TinyBuilder(xPathContext.getController().makePipelineConfiguration());
        tinyBuilder.setStatistics(xPathContext.getConfiguration().getTreeStatistics().TEMPORARY_TREE_STATISTICS);
        tinyBuilder.setSystemId(root.getSystemId());
        tinyBuilder.setTiming(false);
        BuilderMonitor builderMonitor = tinyBuilder.getBuilderMonitor();
        builderMonitor.open();
        TreeInfo treeInfo = root.getTreeInfo();
        Iterator<String> unparsedEntityNames = treeInfo.getUnparsedEntityNames();
        while (unparsedEntityNames.hasNext()) {
            String next = unparsedEntityNames.next();
            String[] unparsedEntity = treeInfo.getUnparsedEntity(next);
            tinyBuilder.setUnparsedEntity(next, unparsedEntity[0], unparsedEntity[1]);
        }
        SchemaType anyType = xPathContext.getController().getExecutable().isSchemaAware() ? AnyType.getInstance() : Untyped.getInstance();
        for (int size = list.size() - 1; size >= 0; size--) {
            NodeInfo nodeInfo2 = list.get(size);
            int nodeKind = nodeInfo2.getNodeKind();
            if (nodeKind == 1) {
                builderMonitor.startElement(NameOfNode.makeName(nodeInfo2), anyType, nodeInfo2.attributes(), nodeInfo2.getAllNamespaces(), Loc.NONE, 0);
            } else {
                if (nodeKind != 9) {
                    throw new IllegalStateException("Unknown ancestor node kind " + nodeInfo2.getNodeKind());
                }
                builderMonitor.startDocument(0);
            }
        }
        return builderMonitor;
    }

    public static SequenceIterator snapshotSequence(SequenceIterator sequenceIterator) {
        return ItemMappingIterator.map(sequenceIterator, new ItemMapper.Lambda() { // from class: com.sunia.HTREnginev2.bvm
            @Override // net.sf.saxon.expr.ItemMapper.Lambda
            public final Item map(Item item) {
                Item snapshotSingle;
                snapshotSingle = SnapshotFn.snapshotSingle(item);
                return snapshotSingle;
            }
        });
    }

    public static Item snapshotSingle(Item item) {
        if (!(item instanceof NodeInfo)) {
            return item;
        }
        NodeInfo nodeInfo = (NodeInfo) item;
        if (nodeInfo.getParent() != null) {
            return SnapshotNode.makeSnapshot(nodeInfo);
        }
        VirtualCopy makeVirtualCopy = VirtualCopy.makeVirtualCopy(nodeInfo);
        makeVirtualCopy.getTreeInfo().setCopyAccumulators(true);
        return makeVirtualCopy;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return new LazySequence(snapshotSequence((sequenceArr.length == 0 ? xPathContext.getContextItem() : sequenceArr[0]).iterate()));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getCardinality(Expression[] expressionArr) {
        return expressionArr[0].getCardinality();
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "SnapshotFn";
    }
}
