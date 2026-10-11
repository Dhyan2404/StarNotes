package com.tencent.qimei.p092m;

import android.os.SystemClock;
import android.text.TextUtils;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.tencent.qimei.p091l.C16795c;
import com.tencent.qimei.p091l.C16799g;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.TimeUnit;

/* renamed from: com.tencent.qimei.m.d */
/* loaded from: classes10.dex */
public class C16803d {

    /* renamed from: a */
    public static C16803d f93543a;

    /* renamed from: b */
    public boolean f93544b = false;

    /* renamed from: c */
    public String f93545c;

    /* renamed from: d */
    public String f93546d;

    /* renamed from: a */
    public static C16803d m59981a() {
        if (f93543a == null) {
            synchronized (C16803d.class) {
                if (f93543a == null) {
                    f93543a = new C16803d();
                }
            }
        }
        return f93543a;
    }

    /* renamed from: b */
    public final void m59985b(String str, String str2) {
        C16795c c16795c = C16795c.a.f93522a;
        if (c16795c.m59953a() == null ? false : c16795c.f93520a.contains(str2)) {
            return;
        }
        String m59971d = C16799g.m59964b(str).m59971d(str2);
        if (TextUtils.isEmpty(m59971d)) {
            return;
        }
        C16799g.m59964b(str).m59966a(str2);
        if (m59971d.length() <= 1024 && c16795c.m59953a() != null) {
            c16795c.f93520a.edit().putString(str2, m59971d).apply();
        }
    }

    /* renamed from: a */
    public String m59982a(String str, String str2) {
        if (!this.f93544b) {
            m59983a(str);
        }
        return str2.equals("c_f_uptimes") ? this.f93545c : str2.equals("c_f_bootids") ? this.f93546d : "";
    }

    /* renamed from: a */
    public synchronized void m59983a(String str) {
        if (this.f93544b) {
            return;
        }
        C16799g m59964b = C16799g.m59964b(str);
        if (m59964b.m59965a() == null ? false : m59964b.f93536b.contains("f_uptimes")) {
            C16799g.m59964b(str).m59966a("f_uptimes");
        }
        m59985b(str, "c_f_uptimes");
        m59985b(str, "c_f_bootids");
        this.f93545c = m59984b("c_f_uptimes");
        this.f93546d = m59984b("c_f_bootids");
        this.f93544b = true;
    }

    /* renamed from: b */
    public final String m59984b(String str) {
        String str2;
        C16795c c16795c = C16795c.a.f93522a;
        String str3 = "";
        if (c16795c.m59953a() == null || (str2 = c16795c.f93520a.getString(str, "")) == null) {
            str2 = "";
        }
        LinkedList linkedList = new LinkedList();
        boolean z = false;
        for (String str4 : str2.split(AndroidTreeView.f47214k)) {
            if (!str4.isEmpty()) {
                linkedList.add(str4);
            }
        }
        if (str.equals("c_f_uptimes")) {
            str3 = String.valueOf(TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
        } else if (str.equals("c_f_bootids")) {
            str3 = C16800a.m59978c("/proc/sys/kernel/random/boot_id");
        }
        if ((linkedList.size() == 0 || !((String) linkedList.getFirst()).equals(str3)) && !TextUtils.isEmpty(str3)) {
            linkedList.addFirst(str3);
            z = true;
        }
        if (linkedList.size() > 5) {
            linkedList.remove(linkedList.size() - 1);
        }
        StringBuilder sb = new StringBuilder();
        Iterator it2 = linkedList.iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            sb.append(AndroidTreeView.f47214k);
        }
        if (!linkedList.isEmpty()) {
            sb.deleteCharAt(sb.length() - 1);
        }
        String sb2 = sb.toString();
        if (z) {
            C16795c.a.f93522a.m59954a(str, sb2);
        }
        return sb2;
    }
}
