package net.p110sf.saxon.expr;

import net.p110sf.saxon.trans.SymbolicName;

/* loaded from: classes11.dex */
public interface ComponentInvocation {
    int getBindingSlot();

    Component getFixedTarget();

    SymbolicName getSymbolicName();

    void setBindingSlot(int i);
}
