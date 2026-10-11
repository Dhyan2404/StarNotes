package com.onegravity.rteditor;

import android.annotation.SuppressLint;
import android.text.Spannable;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

@SuppressLint({"UseSparseArrays"})
/* renamed from: com.onegravity.rteditor.a */
/* loaded from: classes7.dex */
public class C7033a {

    /* renamed from: c */
    public static final int f40121c = 50;

    /* renamed from: d */
    public static final int f40122d = 300;

    /* renamed from: a */
    public Map<Integer, Stack<a>> f40123a = new HashMap();

    /* renamed from: b */
    public Map<Integer, Stack<a>> f40124b = new HashMap();

    /* renamed from: com.onegravity.rteditor.a$a */
    /* loaded from: classes7.dex */
    public static abstract class a {

        /* renamed from: a */
        public long f40125a = System.currentTimeMillis();

        /* renamed from: b */
        public int f40126b;

        /* renamed from: c */
        public int f40127c;

        /* renamed from: d */
        public Spannable f40128d;

        /* renamed from: e */
        public int f40129e;

        /* renamed from: f */
        public int f40130f;

        /* renamed from: g */
        public Spannable f40131g;

        public a(Spannable spannable, Spannable spannable2, int i, int i2, int i3, int i4) {
            this.f40126b = i;
            this.f40127c = i2;
            this.f40129e = i3;
            this.f40130f = i4;
            this.f40128d = spannable;
            this.f40131g = spannable2;
        }

        /* renamed from: a */
        public boolean m31555a(a aVar) {
            return Math.abs(this.f40125a - aVar.f40125a) < 300;
        }

        /* renamed from: b */
        public a m31556b(a aVar) {
            this.f40128d = aVar.f40128d;
            this.f40126b = aVar.f40126b;
            this.f40127c = aVar.f40127c;
            return this;
        }

        /* renamed from: c */
        public void m31557c(RTEditText rTEditText) {
            rTEditText.m31526h();
            rTEditText.setText(this.f40131g);
            rTEditText.setSelection(this.f40129e, this.f40130f);
            rTEditText.m31531m();
        }

        /* renamed from: d */
        public void m31558d(RTEditText rTEditText) {
            rTEditText.m31526h();
            rTEditText.setText(this.f40128d);
            rTEditText.setSelection(this.f40126b, this.f40127c);
            rTEditText.m31531m();
        }
    }

    /* renamed from: com.onegravity.rteditor.a$b */
    /* loaded from: classes7.dex */
    public static class b extends a {
        public b(Spannable spannable, Spannable spannable2, int i, int i2, int i3, int i4) {
            super(spannable, spannable2, i, i2, i3, i4);
        }
    }

    /* renamed from: a */
    public synchronized void m31547a(RTEditText rTEditText, a aVar) {
        Stack<a> m31551e = m31551e(rTEditText);
        Stack<a> m31549c = m31549c(rTEditText);
        while (!m31551e.empty() && aVar.m31555a(m31551e.peek())) {
            aVar.m31556b(m31551e.pop());
        }
        m31552f(aVar, m31551e);
        m31549c.clear();
    }

    /* renamed from: b */
    public synchronized void m31548b(RTEditText rTEditText) {
        Stack<a> m31551e = m31551e(rTEditText);
        Stack<a> m31549c = m31549c(rTEditText);
        m31551e.clear();
        m31549c.clear();
    }

    /* renamed from: c */
    public final Stack<a> m31549c(RTEditText rTEditText) {
        return m31550d(this.f40124b, rTEditText);
    }

    /* renamed from: d */
    public final Stack<a> m31550d(Map<Integer, Stack<a>> map, RTEditText rTEditText) {
        Stack<a> stack = map.get(Integer.valueOf(rTEditText.getId()));
        if (stack != null) {
            return stack;
        }
        Stack<a> stack2 = new Stack<>();
        map.put(Integer.valueOf(rTEditText.getId()), stack2);
        return stack2;
    }

    /* renamed from: e */
    public final Stack<a> m31551e(RTEditText rTEditText) {
        return m31550d(this.f40123a, rTEditText);
    }

    /* renamed from: f */
    public final void m31552f(a aVar, Stack<a> stack) {
        if (stack.size() >= 50) {
            stack.remove(0);
        }
        stack.push(aVar);
    }

    /* renamed from: g */
    public synchronized void m31553g(RTEditText rTEditText) {
        Stack<a> m31549c = m31549c(rTEditText);
        if (!m31549c.empty()) {
            Stack<a> m31551e = m31551e(rTEditText);
            a pop = m31549c.pop();
            m31552f(pop, m31551e);
            pop.m31557c(rTEditText);
            while (!m31549c.empty() && pop.m31555a(m31549c.peek())) {
                pop = m31549c.pop();
                m31552f(pop, m31551e);
                pop.m31557c(rTEditText);
            }
        }
    }

    /* renamed from: h */
    public synchronized void m31554h(RTEditText rTEditText) {
        Stack<a> m31551e = m31551e(rTEditText);
        if (!m31551e.empty()) {
            Stack<a> m31549c = m31549c(rTEditText);
            a pop = m31551e.pop();
            m31552f(pop, m31549c);
            pop.m31558d(rTEditText);
            while (!m31551e.empty() && pop.m31555a(m31551e.peek())) {
                pop = m31551e.pop();
                m31552f(pop, m31549c);
                pop.m31558d(rTEditText);
            }
        }
    }
}
