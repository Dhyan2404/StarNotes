package com.sunia.calculatorv2.ink.model;

import com.sunia.HTREnginev2.C13751g0;
import com.sunia.HTREnginev2.C14219p1;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;

/* renamed from: com.sunia.calculatorv2.ink.model.m */
/* loaded from: classes10.dex */
public class C14814m extends AbstractC14807f<AbstractC14807f> {

    /* renamed from: f */
    public static final AbstractC14807f f92441f = new C14814m(Collections.emptyList());

    /* renamed from: h */
    public static final Set<String> f92442h;

    /* renamed from: i */
    public static final Set<String> f92443i;

    /* renamed from: e */
    public final List<AbstractC14807f> f92444e;

    static {
        HashSet hashSet = new HashSet();
        f92442h = hashSet;
        HashSet hashSet2 = new HashSet();
        f92443i = hashSet2;
        hashSet.add("∑");
        hashSet.add("∏");
        hashSet.add("∐");
        hashSet.add("∧");
        hashSet.add("∨");
        hashSet.add("∩");
        hashSet.add("∪");
        hashSet.add("⊕");
        hashSet.add("⊖");
        hashSet.add("⊗");
        hashSet.add("∫");
        hashSet.add("∮");
        hashSet.add("⨏");
        hashSet.add("∯");
        hashSet.add("∰");
        hashSet.add("=");
        hashSet.add("→");
        hashSet.add("lim");
        hashSet.add("limsup");
        hashSet.add("liminf");
        hashSet.add("sup");
        hashSet.add("inf");
        hashSet.add("max");
        hashSet.add("min");
        hashSet2.add("∫");
        hashSet2.add("∮");
        hashSet2.add("⨏");
        hashSet2.add("∯");
        hashSet2.add("∰");
    }

    public C14814m(List<AbstractC14807f> list) {
        this.f92444e = list;
    }

    /* renamed from: b */
    public static C14814m m58872b(List<? extends AbstractC14807f> list) {
        ArrayList<AbstractC14807f> arrayList = new ArrayList();
        m58876s(list, arrayList);
        LinkedList linkedList = new LinkedList();
        linkedList.push(new ArrayList());
        for (AbstractC14807f abstractC14807f : arrayList) {
            if (abstractC14807f instanceof C14819r) {
                C14819r c14819r = (C14819r) abstractC14807f;
                if (C14819r.m58896b(c14819r.mo53565a())) {
                    linkedList.push(new ArrayList());
                } else if (C14819r.m58895a(c14819r.mo53565a())) {
                    List list2 = (List) linkedList.pop();
                    if (linkedList.isEmpty()) {
                        linkedList.push(new ArrayList());
                        if (list2.isEmpty()) {
                            ((List) linkedList.peek()).add(abstractC14807f);
                        } else {
                            list2.add(abstractC14807f);
                            ((List) linkedList.peek()).add(m58874q(list2));
                        }
                    } else {
                        list2.add(abstractC14807f);
                        ((List) linkedList.peek()).add(m58874q(list2));
                    }
                }
            }
            ((List) linkedList.peek()).add(abstractC14807f);
        }
        while (linkedList.size() > 1) {
            ((List) linkedList.peek()).add(m58874q((List) linkedList.pop()));
        }
        return m58874q((List) linkedList.peek());
    }

    /* renamed from: l */
    public static C14814m m58873l() {
        return new C14814m(C13751g0.m54216a(new AbstractC14807f[0]));
    }

    /* renamed from: q */
    public static C14814m m58874q(List<AbstractC14807f> list) {
        LinkedList linkedList = new LinkedList();
        ListIterator<AbstractC14807f> listIterator = list.listIterator(list.size());
        LinkedList linkedList2 = null;
        LinkedList linkedList3 = null;
        while (true) {
            boolean z = false;
            if (!listIterator.hasPrevious()) {
                break;
            }
            AbstractC14807f previous = listIterator.previous();
            if (previous instanceof C14816o) {
                C14816o c14816o = (C14816o) previous;
                if (m58879v(c14816o.m58882l())) {
                    if (linkedList2 == null) {
                        linkedList2 = new LinkedList();
                    }
                    linkedList2.addFirst(c14816o.m58883m());
                }
            }
            if (previous instanceof C14818q) {
                C14818q c14818q = (C14818q) previous;
                if (m58879v(c14818q.m58891l())) {
                    if (linkedList3 == null) {
                        linkedList3 = new LinkedList();
                    }
                    linkedList3.addFirst(c14818q.m58892m());
                }
            }
            if (previous instanceof C14817p) {
                C14817p c14817p = (C14817p) previous;
                if (m58879v(c14817p.m58886l())) {
                    if (linkedList2 == null) {
                        linkedList2 = new LinkedList();
                    }
                    linkedList2.addFirst(c14817p.m58887m());
                    if (linkedList3 == null) {
                        linkedList3 = new LinkedList();
                    }
                    linkedList3.addFirst(c14817p.m58888n());
                }
            }
            AbstractC14807f m58872b = linkedList2 != null ? m58872b(linkedList2) : f92441f;
            AbstractC14807f m58872b2 = linkedList3 != null ? m58872b(linkedList3) : f92441f;
            if (linkedList2 == null && linkedList3 == null) {
                linkedList.addFirst(previous);
            } else {
                boolean m58878u = m58878u(previous);
                if (m58878u && m58877t(previous, m58872b, m58872b2)) {
                    z = true;
                }
                boolean z2 = z;
                if (linkedList2 != null) {
                    if (linkedList3 != null) {
                        linkedList.addFirst(new C14817p(previous, m58872b, m58872b2, m58878u, z2));
                        linkedList3 = null;
                    } else {
                        linkedList.addFirst(new C14816o(previous, m58872b, m58878u, z2));
                    }
                    linkedList2 = null;
                } else if (linkedList3 != null) {
                    linkedList.addFirst(new C14818q(previous, m58872b2, m58878u, z2));
                    linkedList3 = null;
                }
            }
        }
        if (linkedList2 != null) {
            if (linkedList3 != null) {
                linkedList.addFirst(new C14817p(m58873l(), m58872b(linkedList2), m58872b(linkedList3), false, false));
            } else {
                linkedList.addFirst(new C14816o(m58873l(), m58872b(linkedList2), false, false));
            }
        } else if (linkedList3 != null) {
            linkedList.addFirst(new C14818q(m58873l(), m58872b(linkedList3), false, false));
        }
        return new C14814m(new ArrayList(linkedList));
    }

    /* renamed from: r */
    public static void m58875r(AbstractC14807f<? extends AbstractC14807f> abstractC14807f, StringBuilder sb) {
        if (abstractC14807f instanceof C14819r) {
            sb.append(((C14819r) abstractC14807f).mo53565a());
            return;
        }
        Iterator<? extends AbstractC14807f> it2 = abstractC14807f.mo58831f().iterator();
        while (it2.hasNext()) {
            m58875r(it2.next(), sb);
        }
    }

    /* renamed from: s */
    public static void m58876s(List<? extends AbstractC14807f> list, List<AbstractC14807f> list2) {
        for (AbstractC14807f abstractC14807f : list) {
            if (abstractC14807f instanceof C14814m) {
                m58876s(abstractC14807f.mo58831f(), list2);
            } else {
                list2.add(abstractC14807f);
            }
        }
    }

    /* renamed from: t */
    public static boolean m58877t(AbstractC14807f<? extends AbstractC14807f> abstractC14807f, AbstractC14807f abstractC14807f2, AbstractC14807f abstractC14807f3) {
        if (abstractC14807f instanceof C14819r) {
            if (f92443i.contains(((C14819r) abstractC14807f).mo53565a())) {
                return false;
            }
            List<C14219p1> mo58838i = abstractC14807f.mo58838i();
            List<C14219p1> mo58838i2 = abstractC14807f2.mo58838i();
            List<C14219p1> mo58838i3 = abstractC14807f3.mo58838i();
            if (!mo58838i.isEmpty()) {
                BoundBox m56195a = C14219p1.m56195a(mo58838i);
                if (mo58838i2.isEmpty() || C14219p1.m56195a(mo58838i2).getLeft() <= m56195a.getCenterX()) {
                    return mo58838i3.isEmpty() || C14219p1.m56195a(mo58838i3).getLeft() <= m56195a.getCenterX();
                }
                return false;
            }
        } else if (!(abstractC14807f instanceof C14812k) && (abstractC14807f instanceof C14814m) && abstractC14807f.mo58831f().size() == 1) {
            return m58877t(abstractC14807f.mo58831f().get(0), abstractC14807f2, abstractC14807f3);
        }
        return true;
    }

    /* renamed from: u */
    public static boolean m58878u(AbstractC14807f<? extends AbstractC14807f> abstractC14807f) {
        if (abstractC14807f instanceof C14819r) {
            return f92442h.contains(((C14819r) abstractC14807f).mo53565a());
        }
        if (abstractC14807f instanceof C14812k) {
            StringBuilder sb = new StringBuilder();
            m58875r(abstractC14807f, sb);
            return f92442h.contains(sb.toString());
        }
        if ((abstractC14807f instanceof C14814m) && abstractC14807f.mo58831f().size() == 1) {
            return m58878u(abstractC14807f.mo58831f().get(0));
        }
        return false;
    }

    /* renamed from: v */
    public static boolean m58879v(AbstractC14807f abstractC14807f) {
        return (abstractC14807f instanceof C14814m) && ((C14814m) abstractC14807f).f92444e.isEmpty();
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: f */
    public List<AbstractC14807f> mo58831f() {
        return this.f92444e;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        return "group";
    }
}
