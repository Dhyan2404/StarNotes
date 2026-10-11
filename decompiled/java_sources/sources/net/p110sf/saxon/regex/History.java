package net.p110sf.saxon.regex;

import java.util.HashMap;
import java.util.Map;
import net.p110sf.saxon.p111z.IntHashSet;
import net.p110sf.saxon.p111z.IntSet;

/* loaded from: classes11.dex */
public class History {

    /* renamed from: a */
    public final Map<Operation, IntSet> f101146a = new HashMap();

    public boolean isDuplicateZeroLengthMatch(Operation operation, int i) {
        if (this.f101146a.get(operation) != null) {
            return !r0.add(i);
        }
        IntHashSet intHashSet = new IntHashSet(i);
        intHashSet.add(i);
        this.f101146a.put(operation, intHashSet);
        return false;
    }
}
