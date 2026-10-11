package org.ahocorasick.trie;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/* loaded from: classes11.dex */
public class State {

    /* renamed from: a */
    public final int f104548a;

    /* renamed from: b */
    public final State f104549b;

    /* renamed from: c */
    public Map<Character, State> f104550c;

    /* renamed from: d */
    public State f104551d;

    /* renamed from: e */
    public Set<String> f104552e;

    public State() {
        this(0);
    }

    /* renamed from: a */
    public final State m65685a(Character ch, boolean z) {
        State state;
        State state2 = this.f104550c.get(ch);
        return (z || state2 != null || (state = this.f104549b) == null) ? state2 : state;
    }

    public void addEmit(String str) {
        if (this.f104552e == null) {
            this.f104552e = new TreeSet();
        }
        this.f104552e.add(str);
    }

    public State addState(Character ch) {
        State nextStateIgnoreRootState = nextStateIgnoreRootState(ch);
        if (nextStateIgnoreRootState != null) {
            return nextStateIgnoreRootState;
        }
        State state = new State(this.f104548a + 1);
        this.f104550c.put(ch, state);
        return state;
    }

    public Collection<String> emit() {
        Set<String> set = this.f104552e;
        return set == null ? Collections.emptyList() : set;
    }

    public State failure() {
        return this.f104551d;
    }

    public int getDepth() {
        return this.f104548a;
    }

    public Collection<State> getStates() {
        return this.f104550c.values();
    }

    public Collection<Character> getTransitions() {
        return this.f104550c.keySet();
    }

    public State nextState(Character ch) {
        return m65685a(ch, false);
    }

    public State nextStateIgnoreRootState(Character ch) {
        return m65685a(ch, true);
    }

    public void setFailure(State state) {
        this.f104551d = state;
    }

    public State(int i) {
        this.f104550c = new HashMap();
        this.f104551d = null;
        this.f104552e = null;
        this.f104548a = i;
        this.f104549b = i == 0 ? this : null;
    }

    public void addEmit(Collection<String> collection) {
        Iterator<String> it2 = collection.iterator();
        while (it2.hasNext()) {
            addEmit(it2.next());
        }
    }
}
