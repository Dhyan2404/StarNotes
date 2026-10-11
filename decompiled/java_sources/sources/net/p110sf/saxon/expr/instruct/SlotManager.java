package net.p110sf.saxon.expr.instruct;

import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.om.StructuredQName;

/* loaded from: classes11.dex */
public class SlotManager {
    public static SlotManager EMPTY = new SlotManager(0);

    /* renamed from: a */
    public ArrayList<StructuredQName> f99818a;

    /* renamed from: b */
    public int f99819b;

    public SlotManager() {
        this.f99818a = new ArrayList<>(10);
        this.f99819b = 0;
        this.f99818a = new ArrayList<>();
    }

    public int allocateSlotNumber(StructuredQName structuredQName) {
        this.f99818a.add(structuredQName);
        int i = this.f99819b;
        this.f99819b = i + 1;
        return i;
    }

    public int getNumberOfVariables() {
        return this.f99819b;
    }

    public List<StructuredQName> getVariableMap() {
        return this.f99818a;
    }

    public void setNumberOfVariables(int i) {
        this.f99819b = i;
        this.f99818a.trimToSize();
    }

    public void showStackFrame(XPathContext xPathContext, Logger logger) {
    }

    public SlotManager(int i) {
        this.f99818a = new ArrayList<>(10);
        this.f99819b = i;
        this.f99818a = new ArrayList<>(i);
    }
}
