package net.p110sf.saxon.expr;

import net.p110sf.saxon.trans.SymbolicName;

/* loaded from: classes11.dex */
public class ComponentBinding {

    /* renamed from: a */
    public final SymbolicName f99216a;

    /* renamed from: b */
    public final Component f99217b;

    public ComponentBinding(SymbolicName symbolicName, Component component) {
        this.f99216a = symbolicName;
        this.f99217b = component;
    }

    public SymbolicName getSymbolicName() {
        return this.f99216a;
    }

    public Component getTarget() {
        return this.f99217b;
    }
}
