package net.p110sf.saxon.expr.sort;

import java.util.ArrayList;
import java.util.Comparator;
import net.p110sf.saxon.expr.sort.DocumentOrderIterator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.NodeListIterator;

/* loaded from: classes11.dex */
public final class DocumentOrderIterator implements SequenceIterator {

    /* renamed from: e */
    public final SequenceIterator f100029e;

    /* renamed from: f */
    public final ArrayList<NodeInfo> f100030f;

    /* renamed from: g */
    public NodeInfo f100031g = null;

    public DocumentOrderIterator(SequenceIterator sequenceIterator, Comparator<? super NodeInfo> comparator) {
        ArrayList<NodeInfo> arrayList = new ArrayList<>(SequenceTool.supportsGetLength(sequenceIterator) ? SequenceTool.getLength(sequenceIterator) : 50);
        this.f100030f = arrayList;
        SequenceTool.supply(sequenceIterator, new ItemConsumer() { // from class: com.sunia.HTREnginev2.kaf
            @Override // net.p110sf.saxon.om.ItemConsumer
            public final void accept(Item item) {
                DocumentOrderIterator.this.m62897j(item);
            }
        });
        if (arrayList.size() > 1) {
            arrayList.sort(comparator);
        }
        this.f100029e = new NodeListIterator(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m62897j(Item item) throws XPathException {
        if (item instanceof NodeInfo) {
            this.f100030f.add((NodeInfo) item);
            return;
        }
        throw new XPathException("Item in input for sorting is not a node: " + Err.depict(item), "XPTY0004");
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public NodeInfo next() {
        NodeInfo nodeInfo;
        do {
            nodeInfo = (NodeInfo) this.f100029e.next();
            if (nodeInfo == null) {
                this.f100031g = null;
                return null;
            }
        } while (nodeInfo.equals(this.f100031g));
        this.f100031g = nodeInfo;
        return nodeInfo;
    }
}
