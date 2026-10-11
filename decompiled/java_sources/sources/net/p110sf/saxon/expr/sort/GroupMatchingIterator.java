package net.p110sf.saxon.expr.sort;

import java.util.List;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ListIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;

/* loaded from: classes11.dex */
public abstract class GroupMatchingIterator implements LookaheadIterator, LastPositionFinder, GroupIterator {
    protected XPathContext baseContext;
    protected List<Item> currentMembers;
    protected Item nextItem;
    protected Pattern pattern;
    protected FocusIterator population;
    protected XPathContext runningContext;
    protected Expression select;
    protected Item current = null;
    protected int position = 0;

    public abstract void advance() throws XPathException;

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.population.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.population.discharge();
    }

    @Override // net.p110sf.saxon.expr.sort.GroupIterator
    public AtomicSequence getCurrentGroupingKey() {
        return null;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return this.nextItem != null;
    }

    @Override // net.p110sf.saxon.expr.sort.GroupIterator
    public SequenceIterator iterateCurrentGroup() {
        return new ListIterator.C18538Of(this.currentMembers);
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        try {
            Item item = this.nextItem;
            if (item == null) {
                this.current = null;
                this.position = -1;
                return null;
            }
            this.current = item;
            this.position++;
            advance();
            return this.current;
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }
}
