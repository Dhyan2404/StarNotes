package com.tencent.beacon.event;

import com.tencent.beacon.base.net.C14937c;
import com.tencent.beacon.base.net.call.JceRequestEntity;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.event.p074a.C14981a;
import com.tencent.beacon.event.p076c.C14991d;
import com.tencent.beacon.p059a.p060a.C14870b;
import com.tencent.beacon.p059a.p060a.C14871c;
import com.tencent.beacon.p059a.p060a.InterfaceC14872d;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;
import com.tencent.beacon.p059a.p061b.C14881i;
import com.tencent.beacon.p073d.C14969b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* renamed from: com.tencent.beacon.event.h */
/* loaded from: classes10.dex */
public class RunnableC14999h implements Runnable, InterfaceC14872d {

    /* renamed from: a */
    private final String f93105a;

    /* renamed from: b */
    private final int f93106b;

    /* renamed from: c */
    private final C14981a f93107c;

    /* renamed from: g */
    private final String f93111g;

    /* renamed from: h */
    private boolean f93112h;

    /* renamed from: i */
    private int f93113i;

    /* renamed from: j */
    private boolean f93114j;

    /* renamed from: l */
    private String f93116l;

    /* renamed from: d */
    private final Set<Long> f93108d = new HashSet();

    /* renamed from: e */
    private final Set<Long> f93109e = new HashSet();

    /* renamed from: f */
    private final List<Long> f93110f = new ArrayList();

    /* renamed from: k */
    private boolean f93115k = false;

    public RunnableC14999h(int i, C14981a c14981a, boolean z) {
        this.f93106b = i;
        this.f93107c = c14981a;
        this.f93112h = z;
        String str = z ? "t_r_e" : "t_n_e";
        this.f93105a = str;
        this.f93113i = z ? C14969b.m59444b().m59475i() : C14969b.m59444b().m59473g();
        this.f93111g = "[EventReport (" + str + ")]";
    }

    /* renamed from: a */
    private void m59607a(List<EventBean> list, Set<Long> set) {
        JceRequestEntity m59551a = C14991d.m59551a(list, this.f93112h);
        C14954c.m59389a(this.f93111g, 2, "event request entity: %s", m59551a.toString());
        C14937c.m59312d().m59322b(m59551a).m59349a(new C14998g(this, this.f93105a, this.f93107c, set, this.f93116l));
    }

    /* renamed from: d */
    private List<EventBean> m59608d() {
        StringBuilder sb = new StringBuilder();
        Iterator<Long> it2 = this.f93108d.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            sb.append(",");
        }
        return this.f93107c.m59537a(this.f93105a, sb.length() > 0 ? sb.substring(0, sb.lastIndexOf(",")) : "", this.f93113i);
    }

    /* renamed from: e */
    private void m59609e() {
        C14870b.m58921a().m58927a(2, this);
    }

    /* renamed from: b */
    public int m59613b() {
        return this.f93113i;
    }

    /* renamed from: c */
    public synchronized void m59614c() {
        if (this.f93115k) {
            this.f93113i = this.f93112h ? C14969b.m59444b().m59475i() : C14969b.m59444b().m59473g();
            this.f93115k = false;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.f93114j) {
            m59609e();
            this.f93114j = true;
        }
        if (C14937c.m59312d().m59325f()) {
            AbstractC14874b.m58931a().mo58938a(this.f93106b, false, 0);
            return;
        }
        if (C14937c.m59312d().m59323c() >= C14969b.m59444b().m59468e()) {
            AbstractC14874b.m58931a().m58943b(C14969b.m59444b().m59478l());
            return;
        }
        synchronized (this.f93108d) {
            C14954c.m59389a(this.f93111g, 0, "start read EventBean from DB.", new Object[0]);
            List<EventBean> m59608d = m59608d();
            if (m59608d != null && !m59608d.isEmpty()) {
                HashMap hashMap = new HashMap();
                for (EventBean eventBean : m59608d) {
                    long cid = eventBean.getCid();
                    this.f93108d.add(Long.valueOf(cid));
                    this.f93109e.add(Long.valueOf(cid));
                    Map<String, String> eventValue = eventBean.getEventValue();
                    if (eventValue != null) {
                        String appKey = eventBean.getAppKey();
                        String str = (String) hashMap.get(appKey);
                        if (str == null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(appKey);
                            sb.append(": ");
                            str = sb.toString();
                        }
                        String str2 = eventValue.get("A100");
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(str);
                        sb2.append(str2);
                        sb2.append(", ");
                        hashMap.put(appKey, sb2.toString());
                    }
                }
                StringBuilder sb3 = new StringBuilder("--logID: \n");
                Iterator it2 = hashMap.entrySet().iterator();
                while (it2.hasNext()) {
                    sb3.append((String) ((Map.Entry) it2.next()).getValue());
                    sb3.append("\n");
                }
                String sb4 = sb3.toString();
                this.f93116l = sb4;
                C14954c.m59389a(this.f93111g, 1, "send LogID: %s", sb4);
                m59607a(m59608d, this.f93109e);
                m59608d.clear();
                this.f93109e.clear();
                return;
            }
            C14954c.m59389a(this.f93111g, 1, "EventBean List == null. Task end!", new Object[0]);
            AbstractC14874b.m58931a().mo58938a(this.f93106b, false, 0);
        }
    }

    @Override // com.tencent.beacon.p059a.p060a.InterfaceC14872d
    /* renamed from: a */
    public void mo58930a(C14871c c14871c) {
        Map map;
        if (c14871c.f92540a != 2 || (map = (Map) c14871c.f92541b.get("d_m")) == null) {
            return;
        }
        if (this.f93112h) {
            this.f93113i = C14953b.m59358a((String) map.get("realtimeUploadNum"), this.f93113i, 24, 100);
        } else {
            this.f93113i = C14953b.m59358a((String) map.get("normalUploadNum"), this.f93113i, 24, 100);
        }
    }

    /* renamed from: a */
    public void m59612a(Set<Long> set) {
        synchronized (this.f93108d) {
            this.f93108d.removeAll(set);
            set.clear();
        }
    }

    /* renamed from: a */
    public void m59611a(long j) {
        synchronized (this.f93110f) {
            this.f93110f.add(Long.valueOf(j));
            if (this.f93110f.size() >= 10) {
                Iterator<Long> it2 = this.f93110f.iterator();
                long j2 = 0;
                while (it2.hasNext()) {
                    j2 += it2.next().longValue();
                }
                StringBuilder sb = new StringBuilder();
                sb.append(j2 / this.f93110f.size());
                sb.append("");
                C14881i.m58960e().m58953a("703", sb.toString());
                this.f93110f.clear();
            }
        }
    }

    /* renamed from: a */
    public synchronized void m59610a() {
        int i = this.f93113i;
        if (i >= 2) {
            this.f93113i = i >> 1;
            this.f93115k = true;
        }
    }
}
