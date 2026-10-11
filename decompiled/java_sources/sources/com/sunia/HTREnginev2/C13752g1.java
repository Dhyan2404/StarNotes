package com.sunia.HTREnginev2;

import com.sunia.HTREnginev2.C13700f1;
import com.sunia.calculatorv2.ink.solver.SolverContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* renamed from: com.sunia.HTREnginev2.g1 */
/* loaded from: classes10.dex */
public class C13752g1 {

    /* renamed from: a */
    public static final SolverContext f70575a = new SolverContext(false, 3);

    /* renamed from: b */
    public static final Pattern f70576b = Pattern.compile("\\\\[a-zA-Z]+");

    /* renamed from: c */
    public static final Pattern f70577c = Pattern.compile("[a-zA-Z].*");

    /* renamed from: d */
    public static final Pattern f70578d = Pattern.compile("[a-z]{2,}");

    /* renamed from: a */
    public static C13700f1 m54217a(String str, SolverContext solverContext) {
        boolean z;
        try {
            List<String> m53881a = C13648e0.m53881a(str);
            for (int size = m53881a.size() - 1; size >= 1; size--) {
                if ("}".equals(m53881a.get(size)) && "{".equals(m53881a.get(size - 1))) {
                    m53881a.add(size, "?");
                }
            }
            ArrayList arrayList = new ArrayList(m53881a);
            if (arrayList.isEmpty() || !"=".equals(arrayList.get(arrayList.size() - 1))) {
                z = false;
            } else {
                arrayList.add("?");
                z = true;
            }
            List<AbstractC14375s0> m57496a = C14481u.m57496a(C13648e0.m53883b(arrayList), solverContext);
            if (z) {
                arrayList.set(arrayList.size() - 1, "\\underline{?}");
            }
            if (m57496a.size() == 1) {
                arrayList.add("\\underline{=}");
                m57496a.add(AbstractC14375s0.m57110a(arrayList.size()));
                arrayList.add("\\underline{?}");
            }
            Map<Integer, C14735z0> m54218a = m54218a(m57496a, solverContext);
            boolean z2 = false;
            for (Map.Entry<Integer, C14735z0> entry : m54218a.entrySet()) {
                int intValue = entry.getKey().intValue();
                C14735z0 value = entry.getValue();
                if (!solverContext.isTruncated() && !solverContext.isExact(value)) {
                    z2 = true;
                }
                arrayList.set(intValue, solverContext.encodeNumber(value));
            }
            if (z2) {
                for (int i = 0; i < arrayList.size(); i++) {
                    String str2 = (String) arrayList.get(i);
                    if (str2.contains("=")) {
                        arrayList.set(i, str2.replace("=", "\\approx"));
                    }
                }
            }
            return new C13700f1((!m54218a.isEmpty() || m54220c(m57496a)) ? C13700f1.a.SOLVED : C13700f1.a.PARSED, m54219b(arrayList));
        } catch (Exception unused) {
            return new C13700f1(C13700f1.a.UNPARSED, str);
        }
    }

    /* renamed from: b */
    public static String m54219b(List<String> list) {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (String str : list) {
            if (z && f70577c.matcher(str).matches()) {
                sb.append(' ');
            }
            if (f70578d.matcher(str).matches()) {
                sb.append("\\operatorname{");
                sb.append(str);
                sb.append('}');
            } else {
                sb.append(str);
            }
            z = f70576b.matcher(str).matches();
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static boolean m54220c(List<AbstractC14375s0> list) {
        Iterator<AbstractC14375s0> it2 = list.iterator();
        if (!it2.hasNext()) {
            return false;
        }
        C14735z0 mo57113a = it2.next().mo57113a();
        if (mo57113a.m58578e()) {
            return false;
        }
        while (it2.hasNext()) {
            if (!C14735z0.m58564a(mo57113a, it2.next().mo57113a())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static Map<Integer, C14735z0> m54218a(List<AbstractC14375s0> list, SolverContext solverContext) {
        for (AbstractC14375s0 abstractC14375s0 : list) {
            C14735z0 mo57113a = abstractC14375s0.mo57113a();
            if (!mo57113a.m58578e()) {
                HashMap hashMap = new HashMap();
                for (AbstractC14375s0 abstractC14375s02 : list) {
                    if (abstractC14375s02 != abstractC14375s0) {
                        abstractC14375s02.mo57114a(mo57113a, hashMap, solverContext);
                    }
                }
                return hashMap;
            }
        }
        return Collections.emptyMap();
    }
}
