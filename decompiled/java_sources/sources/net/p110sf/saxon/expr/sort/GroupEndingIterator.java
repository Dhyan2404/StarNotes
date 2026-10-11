package net.p110sf.saxon.expr.sort;

import java.util.ArrayList;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMinor;
import net.p110sf.saxon.functions.Count;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.LookaheadIterator;

/* loaded from: classes11.dex */
public class GroupEndingIterator extends GroupMatchingIterator implements GroupIterator, LookaheadIterator {
    public GroupEndingIterator(Expression expression, Pattern pattern, XPathContext xPathContext) throws XPathException {
        this.select = expression;
        this.pattern = pattern;
        this.baseContext = xPathContext;
        XPathContextMinor newMinorContext = xPathContext.newMinorContext();
        this.runningContext = newMinorContext;
        FocusIterator trackFocus = newMinorContext.trackFocus(expression.iterate(xPathContext));
        this.population = trackFocus;
        this.nextItem = trackFocus.next();
    }

    @Override // net.p110sf.saxon.expr.sort.GroupMatchingIterator
    public void advance() throws XPathException {
        ArrayList arrayList = new ArrayList(20);
        this.currentMembers = arrayList;
        arrayList.add(this.current);
        this.nextItem = this.current;
        while (true) {
            Item item = this.nextItem;
            if (item == null) {
                return;
            }
            if (this.pattern.m63465s(item, this.runningContext)) {
                Item next = this.population.next();
                this.nextItem = next;
                if (next != null) {
                    return;
                }
            } else {
                Item next2 = this.population.next();
                this.nextItem = next2;
                if (next2 != null) {
                    this.currentMembers.add(next2);
                }
            }
        }
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        try {
            return Count.steppingCount(new GroupEndingIterator(this.select, this.pattern, this.baseContext));
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public boolean supportsGetLength() {
        return true;
    }
}
