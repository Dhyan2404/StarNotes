package com.oplus.ocs.base.utils;

import java.util.ArrayList;
import java.util.List;

/* renamed from: com.oplus.ocs.base.utils.e */
/* loaded from: classes9.dex */
public final class C13075e {

    /* renamed from: com.oplus.ocs.base.utils.e$a */
    /* loaded from: classes9.dex */
    public static class a {

        /* renamed from: a */
        private Object f63148a;

        /* renamed from: b */
        private List<String> f63149b = new ArrayList();

        public a(Object obj) {
            this.f63148a = C13074d.m52234a(obj);
        }

        /* renamed from: a */
        public final a m52241a(String str, Object obj) {
            this.f63149b.add(C13074d.m52236a(str + "=" + obj));
            return this;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.f63148a.getClass().getSimpleName());
            sb.append('{');
            int size = this.f63149b.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.f63149b.get(i));
                if (i < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    /* renamed from: a */
    public static a m52239a(Object obj) {
        return new a(obj);
    }

    /* renamed from: a */
    public static boolean m52240a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
