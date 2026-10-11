package net.p110sf.saxon.expr.sort;

import java.util.Arrays;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.FocusTrackingIterator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.MemoSequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class SortedGroupIterator extends SortedIterator implements GroupIterator {
    public SortedGroupIterator(XPathContext xPathContext, GroupIterator groupIterator, SortKeyEvaluator sortKeyEvaluator, AtomicComparer[] atomicComparerArr) {
        super(xPathContext, groupIterator, sortKeyEvaluator, atomicComparerArr, true);
        setHostLanguage(HostLanguage.XSLT);
    }

    @Override // net.p110sf.saxon.expr.sort.SortedIterator
    public void buildArray() throws XPathException {
        int length = SequenceTool.supportsGetLength(this.base) ? SequenceTool.getLength(this.base) : 100;
        this.values = new ObjectToBeSorted[length];
        this.count = 0;
        XPathContextMajor newContext = this.context.newContext();
        newContext.setCurrentIterator((FocusIterator) this.base);
        GroupIterator groupIterator = (GroupIterator) ((FocusTrackingIterator) this.base).getUnderlyingIterator();
        newContext.setCurrentGroupIterator(groupIterator);
        while (true) {
            Item next = this.base.next();
            if (next == null) {
                return;
            }
            if (this.count == length) {
                length *= 2;
                this.values = (ObjectToBeSorted[]) Arrays.copyOf(this.values, length);
            }
            GroupToBeSorted groupToBeSorted = new GroupToBeSorted(this.comparators.length);
            this.values[this.count] = groupToBeSorted;
            groupToBeSorted.value = next;
            for (int i = 0; i < this.comparators.length; i++) {
                groupToBeSorted.sortKeyValues[i] = this.sortKeyEvaluator.evaluateSortKey(i, newContext);
            }
            int i2 = this.count;
            this.count = i2 + 1;
            groupToBeSorted.originalPosition = i2;
            groupToBeSorted.currentGroupingKey = groupIterator.getCurrentGroupingKey();
            groupToBeSorted.currentGroup = new MemoSequence(groupIterator.iterateCurrentGroup());
        }
    }

    @Override // net.p110sf.saxon.expr.sort.GroupIterator
    public AtomicSequence getCurrentGroupingKey() {
        return ((GroupToBeSorted) this.values[this.position - 1]).currentGroupingKey;
    }

    @Override // net.p110sf.saxon.expr.sort.GroupIterator
    public SequenceIterator iterateCurrentGroup() throws XPathException {
        return ((GroupToBeSorted) this.values[this.position - 1]).currentGroup.iterate();
    }
}
