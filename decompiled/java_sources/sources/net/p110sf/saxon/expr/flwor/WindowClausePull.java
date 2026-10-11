package net.p110sf.saxon.expr.flwor;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.WindowClause;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.SequenceExtent;

/* loaded from: classes11.dex */
public class WindowClausePull extends TuplePull {

    /* renamed from: a */
    public final WindowClause f99579a;

    /* renamed from: b */
    public final TuplePull f99580b;

    /* renamed from: c */
    public SequenceIterator f99581c;

    /* renamed from: d */
    public boolean f99582d = false;

    /* renamed from: e */
    public Item f99583e = null;

    /* renamed from: f */
    public Item f99584f = null;

    /* renamed from: g */
    public Item f99585g = null;

    /* renamed from: h */
    public int f99586h = -1;

    /* renamed from: i */
    public final List<WindowClause.Window> f99587i = new ArrayList();

    public WindowClausePull(TuplePull tuplePull, WindowClause windowClause, XPathContext xPathContext) {
        this.f99579a = windowClause;
        this.f99580b = tuplePull;
    }

    /* renamed from: a */
    public final WindowClause.Window m62710a(WindowClause.Window window, XPathContext xPathContext) throws XPathException {
        this.f99579a.checkWindowContents(window);
        return m62711b();
    }

    /* renamed from: b */
    public final WindowClause.Window m62711b() throws XPathException {
        int i = Integer.MAX_VALUE;
        WindowClause.Window window = null;
        for (WindowClause.Window window2 : this.f99587i) {
            if (window2.startPosition < i && !window2.isDespatched()) {
                i = window2.startPosition;
                window = window2;
            }
        }
        if (window == null || !window.isFinished()) {
            return null;
        }
        window.despatched = true;
        return window;
    }

    /* renamed from: c */
    public final void m62712c(WindowClause.Window window, XPathContext xPathContext) throws XPathException {
        WindowClause windowClause = this.f99579a;
        xPathContext.setLocalVariable(windowClause.getVariableBinding(0).getLocalSlotNumber(), SequenceExtent.makeSequenceExtent(window.contents));
        LocalVariableBinding variableBinding = windowClause.getVariableBinding(1);
        if (variableBinding != null) {
            xPathContext.setLocalVariable(variableBinding.getLocalSlotNumber(), WindowClause.makeValue(window.startItem));
        }
        LocalVariableBinding variableBinding2 = windowClause.getVariableBinding(2);
        if (variableBinding2 != null) {
            xPathContext.setLocalVariable(variableBinding2.getLocalSlotNumber(), new Int64Value(window.startPosition));
        }
        LocalVariableBinding variableBinding3 = windowClause.getVariableBinding(4);
        if (variableBinding3 != null) {
            xPathContext.setLocalVariable(variableBinding3.getLocalSlotNumber(), WindowClause.makeValue(window.startNextItem));
        }
        LocalVariableBinding variableBinding4 = windowClause.getVariableBinding(3);
        if (variableBinding4 != null) {
            xPathContext.setLocalVariable(variableBinding4.getLocalSlotNumber(), WindowClause.makeValue(window.startPreviousItem));
        }
        LocalVariableBinding variableBinding5 = windowClause.getVariableBinding(5);
        if (variableBinding5 != null) {
            xPathContext.setLocalVariable(variableBinding5.getLocalSlotNumber(), WindowClause.makeValue(window.endItem));
        }
        LocalVariableBinding variableBinding6 = windowClause.getVariableBinding(6);
        if (variableBinding6 != null) {
            xPathContext.setLocalVariable(variableBinding6.getLocalSlotNumber(), new Int64Value(window.endPosition));
        }
        LocalVariableBinding variableBinding7 = windowClause.getVariableBinding(8);
        if (variableBinding7 != null) {
            xPathContext.setLocalVariable(variableBinding7.getLocalSlotNumber(), WindowClause.makeValue(window.endNextItem));
        }
        LocalVariableBinding variableBinding8 = windowClause.getVariableBinding(7);
        if (variableBinding8 != null) {
            xPathContext.setLocalVariable(variableBinding8.getLocalSlotNumber(), WindowClause.makeValue(window.endPreviousItem));
        }
        window.despatched = true;
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePull
    public void close() {
        this.f99581c.close();
        this.f99580b.close();
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePull
    public boolean nextTuple(XPathContext xPathContext) throws XPathException {
        WindowClause.Window m62711b = m62711b();
        if (m62711b != null) {
            m62712c(m62711b, xPathContext);
            return true;
        }
        if ((this.f99582d || this.f99581c == null) && this.f99580b.nextTuple(xPathContext)) {
            this.f99581c = this.f99579a.getSequence().iterate(xPathContext);
            this.f99582d = false;
            this.f99583e = null;
            this.f99586h = -1;
            this.f99584f = null;
            this.f99585g = null;
        }
        while (!this.f99582d) {
            boolean z = this.f99579a.isTumblingWindow() && this.f99579a.getEndCondition() == null;
            Item item = this.f99583e;
            this.f99583e = this.f99584f;
            this.f99584f = this.f99585g;
            Item next = this.f99581c.next();
            this.f99585g = next;
            if (next == null) {
                this.f99582d = true;
            }
            int i = this.f99586h + 1;
            this.f99586h = i;
            if (i > 0) {
                if ((this.f99579a.isSlidingWindow() || this.f99587i.isEmpty() || z) && this.f99579a.matchesStart(this.f99583e, this.f99584f, this.f99585g, this.f99586h, xPathContext)) {
                    if (z && !this.f99587i.isEmpty()) {
                        WindowClause.Window window = this.f99587i.get(0);
                        window.endItem = this.f99583e;
                        window.endPreviousItem = item;
                        window.endNextItem = this.f99584f;
                        window.endPosition = this.f99586h - 1;
                        m62711b = m62710a(window, xPathContext);
                        this.f99587i.clear();
                    }
                    WindowClause.Window window2 = new WindowClause.Window();
                    window2.startPosition = this.f99586h;
                    window2.startItem = this.f99584f;
                    window2.startPreviousItem = this.f99583e;
                    window2.startNextItem = this.f99585g;
                    window2.contents = new ArrayList();
                    this.f99587i.add(window2);
                }
                for (WindowClause.Window window3 : this.f99587i) {
                    if (!window3.isFinished()) {
                        window3.contents.add(this.f99584f);
                    }
                }
                boolean z2 = this.f99579a.getEndCondition() != null;
                boolean z3 = this.f99582d && this.f99579a.isIncludeUnclosedWindows();
                if (z2 || z3) {
                    ArrayList arrayList = new ArrayList();
                    for (WindowClause.Window window4 : this.f99587i) {
                        if (!window4.isFinished() && (z3 || this.f99579a.matchesEnd(window4, this.f99583e, this.f99584f, this.f99585g, this.f99586h, xPathContext))) {
                            window4.endItem = this.f99584f;
                            window4.endPreviousItem = this.f99583e;
                            window4.endNextItem = this.f99585g;
                            window4.endPosition = this.f99586h;
                            if (m62711b == null) {
                                m62711b = m62710a(window4, xPathContext);
                                if (window4.isDespatched()) {
                                    arrayList.add(window4);
                                }
                            }
                        }
                    }
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        this.f99587i.remove((WindowClause.Window) it2.next());
                    }
                }
                if (m62711b != null) {
                    m62712c(m62711b, xPathContext);
                    return true;
                }
            }
        }
        return false;
    }
}
