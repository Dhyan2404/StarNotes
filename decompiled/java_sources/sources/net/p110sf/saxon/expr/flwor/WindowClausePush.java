package net.p110sf.saxon.expr.flwor;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.WindowClause;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.SequenceExtent;

/* loaded from: classes11.dex */
public class WindowClausePush extends TuplePush {

    /* renamed from: b */
    public final WindowClause f99588b;

    /* renamed from: c */
    public final TuplePush f99589c;

    /* renamed from: d */
    public List<WindowClause.Window> f99590d;

    public WindowClausePush(Outputter outputter, TuplePush tuplePush, WindowClause windowClause) {
        super(outputter);
        this.f99590d = new ArrayList();
        this.f99588b = windowClause;
        this.f99589c = tuplePush;
    }

    /* renamed from: a */
    public final void m62713a(WindowClause.Window window, Outputter outputter, XPathContext xPathContext) throws XPathException {
        this.f99588b.checkWindowContents(window);
        while (true) {
            int i = Integer.MAX_VALUE;
            WindowClause.Window window2 = null;
            for (WindowClause.Window window3 : this.f99590d) {
                if (window3.startPosition < i && !window3.isDespatched()) {
                    i = window3.startPosition;
                    window2 = window3;
                }
            }
            if (window2 == null || !window2.isFinished()) {
                return;
            }
            WindowClause windowClause = this.f99588b;
            xPathContext.setLocalVariable(windowClause.getVariableBinding(0).getLocalSlotNumber(), SequenceExtent.makeSequenceExtent(window2.contents));
            LocalVariableBinding variableBinding = windowClause.getVariableBinding(1);
            if (variableBinding != null) {
                xPathContext.setLocalVariable(variableBinding.getLocalSlotNumber(), WindowClause.makeValue(window2.startItem));
            }
            LocalVariableBinding variableBinding2 = windowClause.getVariableBinding(2);
            if (variableBinding2 != null) {
                xPathContext.setLocalVariable(variableBinding2.getLocalSlotNumber(), new Int64Value(window2.startPosition));
            }
            LocalVariableBinding variableBinding3 = windowClause.getVariableBinding(4);
            if (variableBinding3 != null) {
                xPathContext.setLocalVariable(variableBinding3.getLocalSlotNumber(), WindowClause.makeValue(window2.startNextItem));
            }
            LocalVariableBinding variableBinding4 = windowClause.getVariableBinding(3);
            if (variableBinding4 != null) {
                xPathContext.setLocalVariable(variableBinding4.getLocalSlotNumber(), WindowClause.makeValue(window2.startPreviousItem));
            }
            LocalVariableBinding variableBinding5 = windowClause.getVariableBinding(5);
            if (variableBinding5 != null) {
                xPathContext.setLocalVariable(variableBinding5.getLocalSlotNumber(), WindowClause.makeValue(window2.endItem));
            }
            LocalVariableBinding variableBinding6 = windowClause.getVariableBinding(6);
            if (variableBinding6 != null) {
                xPathContext.setLocalVariable(variableBinding6.getLocalSlotNumber(), new Int64Value(window2.endPosition));
            }
            LocalVariableBinding variableBinding7 = windowClause.getVariableBinding(8);
            if (variableBinding7 != null) {
                xPathContext.setLocalVariable(variableBinding7.getLocalSlotNumber(), WindowClause.makeValue(window2.endNextItem));
            }
            LocalVariableBinding variableBinding8 = windowClause.getVariableBinding(7);
            if (variableBinding8 != null) {
                xPathContext.setLocalVariable(variableBinding8.getLocalSlotNumber(), WindowClause.makeValue(window2.endPreviousItem));
            }
            this.f99589c.processTuple(xPathContext);
            window2.despatched = true;
        }
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void close() throws XPathException {
        this.f99590d = null;
        this.f99589c.close();
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void processTuple(XPathContext xPathContext) throws XPathException {
        Item item;
        boolean z;
        int i;
        int i2;
        ArrayList arrayList;
        boolean z2;
        int i3;
        this.f99590d = new ArrayList();
        int i4 = 0;
        boolean z3 = this.f99588b.isTumblingWindow() && this.f99588b.getEndCondition() == null;
        SequenceIterator iterate = this.f99588b.getSequence().iterate(xPathContext);
        int i5 = -1;
        boolean z4 = false;
        Item item2 = null;
        Item item3 = null;
        Item item4 = null;
        while (!z4) {
            Item next = iterate.next();
            boolean z5 = next == null ? true : z4;
            int i6 = i5 + 1;
            if (i6 > 0) {
                if (this.f99588b.isSlidingWindow() || this.f99590d.isEmpty() || z3) {
                    item = next;
                    if (this.f99588b.matchesStart(item3, item4, next, i6, xPathContext)) {
                        if (!z3 || this.f99590d.isEmpty()) {
                            i2 = i6;
                        } else {
                            WindowClause.Window window = this.f99590d.get(i4);
                            window.endItem = item3;
                            window.endPreviousItem = item2;
                            window.endNextItem = item4;
                            i2 = i6;
                            window.endPosition = i2 - 1;
                            m62713a(window, getOutputter(), xPathContext);
                            this.f99590d.clear();
                        }
                        WindowClause.Window window2 = new WindowClause.Window();
                        window2.startPosition = i2;
                        window2.startItem = item4;
                        window2.startPreviousItem = item3;
                        window2.startNextItem = item;
                        window2.contents = new ArrayList();
                        this.f99590d.add(window2);
                    } else {
                        i2 = i6;
                    }
                } else {
                    i2 = i6;
                    item = next;
                }
                for (WindowClause.Window window3 : this.f99590d) {
                    if (!window3.isFinished()) {
                        window3.contents.add(item4);
                    }
                }
                if (this.f99588b.getEndCondition() != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (WindowClause.Window window4 : this.f99590d) {
                        if (window4.isFinished()) {
                            arrayList = arrayList2;
                            z2 = z3;
                            i3 = i2;
                        } else {
                            arrayList = arrayList2;
                            z2 = z3;
                            i3 = i2;
                            if (this.f99588b.matchesEnd(window4, item3, item4, item, i2, xPathContext)) {
                                window4.endItem = item4;
                                window4.endPreviousItem = item3;
                                window4.endNextItem = item;
                                window4.endPosition = i3;
                                m62713a(window4, getOutputter(), xPathContext);
                                if (window4.isDespatched()) {
                                    arrayList.add(window4);
                                }
                            }
                        }
                        i2 = i3;
                        arrayList2 = arrayList;
                        z3 = z2;
                    }
                    z = z3;
                    i = i2;
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        this.f99590d.remove((WindowClause.Window) it2.next());
                    }
                } else {
                    z = z3;
                    i = i2;
                }
            } else {
                item = next;
                z = z3;
                i = i6;
            }
            i5 = i;
            item2 = item3;
            item3 = item4;
            z4 = z5;
            z3 = z;
            i4 = 0;
            item4 = item;
        }
        if (this.f99588b.isIncludeUnclosedWindows()) {
            for (WindowClause.Window window5 : this.f99590d) {
                window5.endItem = item3;
                window5.endPreviousItem = item2;
                window5.endNextItem = null;
                window5.endPosition = i5;
                m62713a(window5, getOutputter(), xPathContext);
            }
        }
    }
}
