package com.sunia.HTREnginev2;

import com.google.firebase.components.Component;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.DependencyCycleException;
import com.google.firebase.components.Qualified;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes6.dex */
public class dpe {

    /* renamed from: com.sunia.HTREnginev2.dpe$b */
    /* loaded from: classes6.dex */
    public static class C13630b {

        /* renamed from: a */
        public final Component<?> f68099a;

        /* renamed from: b */
        public final Set<C13630b> f68100b = new HashSet();

        /* renamed from: c */
        public final Set<C13630b> f68101c = new HashSet();

        public C13630b(Component<?> component) {
            this.f68099a = component;
        }

        /* renamed from: a */
        public void m53690a(C13630b c13630b) {
            this.f68100b.add(c13630b);
        }

        /* renamed from: b */
        public void m53691b(C13630b c13630b) {
            this.f68101c.add(c13630b);
        }

        /* renamed from: c */
        public Component<?> m53692c() {
            return this.f68099a;
        }

        /* renamed from: d */
        public Set<C13630b> m53693d() {
            return this.f68100b;
        }

        /* renamed from: e */
        public boolean m53694e() {
            return this.f68100b.isEmpty();
        }

        /* renamed from: f */
        public boolean m53695f() {
            return this.f68101c.isEmpty();
        }

        /* renamed from: g */
        public void m53696g(C13630b c13630b) {
            this.f68101c.remove(c13630b);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.dpe$c */
    /* loaded from: classes6.dex */
    public static class C13631c {

        /* renamed from: a */
        public final Qualified<?> f68102a;

        /* renamed from: b */
        public final boolean f68103b;

        public boolean equals(Object obj) {
            if (!(obj instanceof C13631c)) {
                return false;
            }
            C13631c c13631c = (C13631c) obj;
            return c13631c.f68102a.equals(this.f68102a) && c13631c.f68103b == this.f68103b;
        }

        public int hashCode() {
            return Boolean.valueOf(this.f68103b).hashCode() ^ ((this.f68102a.hashCode() ^ 1000003) * 1000003);
        }

        public C13631c(Qualified<?> qualified, boolean z) {
            this.f68102a = qualified;
            this.f68103b = z;
        }
    }

    /* renamed from: a */
    public static void m53687a(List<Component<?>> list) {
        Set<C13630b> m53689c = m53689c(list);
        Set<C13630b> m53688b = m53688b(m53689c);
        int i = 0;
        while (!m53688b.isEmpty()) {
            C13630b next = m53688b.iterator().next();
            m53688b.remove(next);
            i++;
            for (C13630b c13630b : next.m53693d()) {
                c13630b.m53696g(next);
                if (c13630b.m53695f()) {
                    m53688b.add(c13630b);
                }
            }
        }
        if (i == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (C13630b c13630b2 : m53689c) {
            if (!c13630b2.m53695f() && !c13630b2.m53694e()) {
                arrayList.add(c13630b2.m53692c());
            }
        }
        throw new DependencyCycleException(arrayList);
    }

    /* renamed from: b */
    public static Set<C13630b> m53688b(Set<C13630b> set) {
        HashSet hashSet = new HashSet();
        for (C13630b c13630b : set) {
            if (c13630b.m53695f()) {
                hashSet.add(c13630b);
            }
        }
        return hashSet;
    }

    /* renamed from: c */
    public static Set<C13630b> m53689c(List<Component<?>> list) {
        Set<C13630b> set;
        HashMap hashMap = new HashMap(list.size());
        Iterator<Component<?>> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                Iterator it3 = hashMap.values().iterator();
                while (it3.hasNext()) {
                    for (C13630b c13630b : (Set) it3.next()) {
                        for (Dependency dependency : c13630b.m53692c().getDependencies()) {
                            if (dependency.isDirectInjection() && (set = (Set) hashMap.get(new C13631c(dependency.getInterface(), dependency.isSet()))) != null) {
                                for (C13630b c13630b2 : set) {
                                    c13630b.m53690a(c13630b2);
                                    c13630b2.m53691b(c13630b);
                                }
                            }
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                Iterator it4 = hashMap.values().iterator();
                while (it4.hasNext()) {
                    hashSet.addAll((Set) it4.next());
                }
                return hashSet;
            }
            Component<?> next = it2.next();
            C13630b c13630b3 = new C13630b(next);
            for (Qualified<? super Object> qualified : next.getProvidedInterfaces()) {
                C13631c c13631c = new C13631c(qualified, !next.isValue());
                if (!hashMap.containsKey(c13631c)) {
                    hashMap.put(c13631c, new HashSet());
                }
                Set set2 = (Set) hashMap.get(c13631c);
                if (!set2.isEmpty() && !c13631c.f68103b) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", qualified));
                }
                set2.add(c13630b3);
            }
        }
    }
}
