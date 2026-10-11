package net.p110sf.saxon.expr.parser;

import java.util.IdentityHashMap;
import java.util.Map;
import net.p110sf.saxon.expr.Binding;

/* loaded from: classes11.dex */
public class RebindingMap {

    /* renamed from: a */
    public Map<Binding, Binding> f99953a = null;

    public Binding get(Binding binding) {
        Map<Binding, Binding> map = this.f99953a;
        if (map == null) {
            return null;
        }
        return map.get(binding);
    }

    public void put(Binding binding, Binding binding2) {
        if (this.f99953a == null) {
            this.f99953a = new IdentityHashMap();
        }
        this.f99953a.put(binding, binding2);
    }
}
