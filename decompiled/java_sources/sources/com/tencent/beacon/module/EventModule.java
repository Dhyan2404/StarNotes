package com.tencent.beacon.module;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.beacon.base.net.C14937c;
import com.tencent.beacon.base.net.p066b.RunnableC14936e;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.base.util.C14959h;
import com.tencent.beacon.event.C14996e;
import com.tencent.beacon.event.EventBean;
import com.tencent.beacon.event.InterfaceC15000i;
import com.tencent.beacon.event.immediate.IBeaconImmediateReport;
import com.tencent.beacon.event.open.BeaconEvent;
import com.tencent.beacon.event.open.BeaconReport;
import com.tencent.beacon.event.open.EventResult;
import com.tencent.beacon.event.p074a.C14981a;
import com.tencent.beacon.event.p075b.AbstractC14986c;
import com.tencent.beacon.event.p075b.C14984a;
import com.tencent.beacon.event.p075b.C14985b;
import com.tencent.beacon.event.p076c.C14991d;
import com.tencent.beacon.event.p076c.C14994g;
import com.tencent.beacon.event.quic.IBeaconQuicReport;
import com.tencent.beacon.p059a.p060a.C14870b;
import com.tencent.beacon.p059a.p060a.C14871c;
import com.tencent.beacon.p059a.p060a.InterfaceC14872d;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;
import com.tencent.beacon.p059a.p061b.C14881i;
import com.tencent.beacon.p059a.p061b.C14882j;
import com.tencent.beacon.p059a.p062c.C14888c;
import com.tencent.beacon.p059a.p062c.C14895j;
import com.tencent.beacon.p073d.C14969b;
import com.tencent.beacon.p073d.InterfaceC14970c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes10.dex */
public class EventModule implements BeaconModule, InterfaceC14872d, RunnableC14936e.a, InterfaceC14970c {

    /* renamed from: a */
    private static final Map<String, Map<String, String>> f93218a = new ConcurrentHashMap(3);

    /* renamed from: b */
    private static final Map<String, String> f93219b = new ConcurrentHashMap(3);

    /* renamed from: c */
    private static final Map<String, String> f93220c = new ConcurrentHashMap(3);

    /* renamed from: d */
    private final List<AbstractC14986c> f93221d = new ArrayList(3);

    /* renamed from: e */
    private AtomicInteger f93222e = new AtomicInteger(0);

    /* renamed from: f */
    private AtomicBoolean f93223f = new AtomicBoolean(false);

    /* renamed from: g */
    private AtomicInteger f93224g = new AtomicInteger(0);

    /* renamed from: h */
    private AtomicBoolean f93225h = new AtomicBoolean(false);

    /* renamed from: i */
    private final ConcurrentHashMap<String, List<BeaconEvent>> f93226i = new ConcurrentHashMap<>();

    /* renamed from: j */
    private StrategyModule f93227j;

    /* renamed from: k */
    private InterfaceC15000i f93228k;

    /* renamed from: l */
    private volatile boolean f93229l;

    /* renamed from: b */
    private void m59668b(BeaconEvent beaconEvent) {
        String appKey = beaconEvent.getAppKey();
        if (this.f93224g.addAndGet(1) > 1000) {
            String format = String.format("logid empty cache count over max , appKey: %s, event: %s", appKey, beaconEvent.getCode());
            C14954c.m59392a(format, new Object[0]);
            if (this.f93225h.compareAndSet(false, true)) {
                C14882j.m58961e().m58953a("518", format);
                return;
            }
            return;
        }
        List<BeaconEvent> list = this.f93226i.get(appKey);
        if (list == null) {
            list = new ArrayList<>();
        }
        list.add(beaconEvent);
        this.f93226i.put(appKey, list);
        C14954c.m59392a("logid empty and add to cache , appKey: %s, event: %s", appKey, beaconEvent.getCode());
    }

    /* renamed from: d */
    private String m59669d(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        C14954c.m59403e("we strongly recommend you set appkey when create events.", new Object[0]);
        return C14888c.m58989c().m59002e();
    }

    /* renamed from: g */
    private void m59670g() {
        this.f93221d.add(new C14985b());
        this.f93221d.add(new C14984a());
        for (int i = 1; i < this.f93221d.size(); i++) {
            this.f93221d.get(i - 1).m59544a(this.f93221d.get(i));
        }
    }

    /* renamed from: h */
    private void m59671h() {
        if (C14969b.m59444b().m59480n()) {
            C14996e c14996e = new C14996e();
            this.f93228k = c14996e;
            c14996e.mo59592a();
        }
    }

    /* renamed from: i */
    private void m59672i() {
        C14870b.m58921a().m58927a(3, this);
        C14870b.m58921a().m58927a(4, this);
        C14870b.m58921a().m58927a(5, this);
        C14870b.m58921a().m58927a(6, this);
        C14870b.m58921a().m58927a(1, this);
        C14870b.m58921a().m58927a(7, this);
        C14870b.m58921a().m58927a(14, this);
    }

    /* renamed from: j */
    private void m59673j() {
        AbstractC14874b.m58931a().mo58935a(3000).postAtFrontOfQueue(new Runnable() { // from class: com.tencent.beacon.module.EventModule.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    C14981a m59533a = C14981a.m59533a();
                    Map<String, Integer> m59541b = m59533a.m59541b("t_r_e");
                    EventModule.this.m59667a(m59541b, m59533a.m59541b("t_n_e"));
                } catch (Throwable th) {
                    C14954c.m59393a(th);
                    C14882j.m58961e().m58954a("204", "error while storageReport", th);
                }
            }
        });
    }

    @NonNull
    /* renamed from: c */
    public String m59682c(String str) {
        String str2;
        String m59669d = m59669d(str);
        return (TextUtils.isEmpty(m59669d) || (str2 = f93219b.get(m59669d)) == null) ? "10000" : str2;
    }

    /* renamed from: e */
    public boolean m59684e() {
        return this.f93229l;
    }

    /* renamed from: f */
    public void m59685f() {
        C14954c.m59391a("[EventModule]", "resume report by user.", new Object[0]);
        this.f93228k.mo59593a(2);
        C14937c.m59312d().m59326g();
    }

    @Override // com.tencent.beacon.module.BeaconModule
    /* renamed from: a */
    public void mo59665a(Context context) {
        m59673j();
        this.f93227j = (StrategyModule) BeaconModule.f93217a.get(ModuleName.STRATEGY);
        m59670g();
        m59671h();
        m59672i();
        RunnableC14936e.m59309a(context, this);
        C14969b.m59444b().m59450a(this);
        this.f93229l = true;
    }

    @Override // com.tencent.beacon.p073d.InterfaceC14970c
    /* renamed from: c */
    public void mo59491c() {
        if (C14969b.m59444b().m59480n()) {
            if (this.f93228k == null) {
                m59671h();
                return;
            } else {
                m59685f();
                return;
            }
        }
        m59681b(true);
    }

    /* renamed from: d */
    public InterfaceC15000i m59683d() {
        return this.f93228k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m59667a(Map<String, Integer> map, Map<String, Integer> map2) {
        HashSet<String> hashSet = new HashSet();
        hashSet.addAll(map.keySet());
        hashSet.addAll(map2.keySet());
        if (hashSet.isEmpty()) {
            C14881i.m58960e().m58953a("702", String.format("real_logid_count=%s&normal_logid_count=%s&appkey=%s", 0, 0, C14888c.m58989c().m59002e()));
            return;
        }
        for (String str : hashSet) {
            C14881i.m58960e().m58953a("702", String.format("real_logid_count=%s&normal_logid_count=%s&appkey=%s", Integer.valueOf(map.containsKey(str) ? map.get(str).intValue() : 0), Integer.valueOf(map2.containsKey(str) ? map2.get(str).intValue() : 0), str));
        }
    }

    /* renamed from: b */
    public void m59680b(String str, String str2) {
        f93219b.put(m59669d(str), C14991d.m59562e(str2));
    }

    @NonNull
    /* renamed from: b */
    public String m59679b(String str) {
        String str2;
        String m59669d = m59669d(str);
        return (TextUtils.isEmpty(m59669d) || (str2 = f93220c.get(m59669d)) == null) ? "" : str2;
    }

    @Override // com.tencent.beacon.base.net.p066b.RunnableC14936e.a
    /* renamed from: b */
    public void mo59021b() {
        m59681b(false);
    }

    /* renamed from: b */
    public void m59681b(boolean z) {
        C14954c.m59391a("[EventModule]", "pause report by user.", new Object[0]);
        this.f93228k.mo59597a(z, 2);
        C14937c.m59312d().close();
    }

    @Override // com.tencent.beacon.p059a.p060a.InterfaceC14872d
    /* renamed from: a */
    public void mo58930a(C14871c c14871c) {
        List<BeaconEvent> list;
        int i = c14871c.f92540a;
        if (i == 1) {
            C14870b.m58921a().m58927a(12, this);
            return;
        }
        if (i == 12) {
            Object obj = c14871c.f92541b.get("e_q_e_k");
            if (obj instanceof BeaconEvent) {
                BeaconEvent beaconEvent = (BeaconEvent) obj;
                beaconEvent.getParams().put("A93", "Y");
                C14954c.m59392a("qimei empty cache report , appKey: %s, event: %s", beaconEvent.getAppKey(), beaconEvent.getCode());
                m59674a(beaconEvent);
                return;
            }
            return;
        }
        if (i == 14) {
            Object obj2 = c14871c.f92541b.get("e_l_e_k");
            if (!(obj2 instanceof String) || (list = this.f93226i.get(obj2)) == null || list.isEmpty()) {
                return;
            }
            for (BeaconEvent beaconEvent2 : list) {
                C14954c.m59392a("logid empty cache report , appKey: %s, event: %s", obj2, beaconEvent2.getCode());
                m59674a(beaconEvent2);
            }
            return;
        }
        if (i == 3) {
            m59677a((String) c14871c.f92541b.get("i_c_ak"), (HashMap) c14871c.f92541b.get("i_c_ad"));
            return;
        }
        if (i == 4) {
            m59680b((String) c14871c.f92541b.get("i_c_ak"), (String) c14871c.f92541b.get("i_c_u_i"));
            return;
        }
        if (i == 5) {
            m59676a((String) c14871c.f92541b.get("i_c_ak"), (String) c14871c.f92541b.get("i_c_o_i"));
            return;
        }
        if (i != 6) {
            if (i != 7) {
                return;
            }
            C14969b.m59444b().m59455a(((Boolean) c14871c.f92541b.get("s_e_e")).booleanValue(), false);
        } else {
            Object obj3 = c14871c.f92541b.get("b_e");
            if (obj3 instanceof BeaconEvent) {
                m59674a((BeaconEvent) obj3);
            }
        }
    }

    /* renamed from: a */
    public void m59678a(boolean z) {
        InterfaceC15000i interfaceC15000i = this.f93228k;
        if (interfaceC15000i != null) {
            interfaceC15000i.mo59596a(z);
        }
    }

    /* renamed from: a */
    public EventResult m59674a(@NonNull BeaconEvent beaconEvent) {
        StrategyModule strategyModule;
        C14954c.m59389a("[EventModule]", 0, "event: %s. go in EventModule", beaconEvent.getCode());
        if (!C14969b.m59444b().m59480n()) {
            C14954c.m59389a("[EventModule]", 1, "event: %s. EventModule is not enable", beaconEvent.getCode());
            return EventResult.C15001a.m59663a(102);
        }
        beaconEvent.setAppKey(m59669d(beaconEvent.getAppKey()));
        final C14994g m59568a = C14994g.m59568a(C14888c.m58989c().m58997b(), beaconEvent.getAppKey());
        if (!m59568a.m59589b()) {
            m59668b(beaconEvent);
            AbstractC14874b.m58931a().mo58941a(new Runnable() { // from class: com.tencent.beacon.module.EventModule.2
                @Override // java.lang.Runnable
                public void run() {
                    m59568a.m59588a();
                }
            });
            return EventResult.C15001a.m59663a(107);
        }
        C14959h.m59414a(beaconEvent.getParams());
        StrategyModule strategyModule2 = this.f93227j;
        if (strategyModule2 != null && strategyModule2.m59703b().m59456a(beaconEvent.getCode())) {
            C14954c.m59389a("[EventModule]", 1, "event: %s.  is not allowed in strategy (false)", beaconEvent.getCode());
            return EventResult.C15001a.m59663a(100);
        }
        if (beaconEvent.isSucceed() && (strategyModule = this.f93227j) != null && !strategyModule.m59703b().m59461b(beaconEvent.getCode())) {
            C14954c.m59389a("[EventModule]", 1, "event: %s. is sampled by svr rate (false)", beaconEvent.getCode());
            return EventResult.C15001a.m59663a(101);
        }
        StrategyModule strategyModule3 = this.f93227j;
        if (strategyModule3 != null && strategyModule3.m59703b().m59457a(beaconEvent.getAppKey(), beaconEvent.getCode())) {
            C14954c.m59389a("[EventModule]", 1, "appkey: %s, event: %s. is sampled by user", beaconEvent.getAppKey(), beaconEvent.getCode());
            return EventResult.C15001a.m59663a(108);
        }
        EventBean m59545b = this.f93221d.get(0).m59545b(beaconEvent);
        if (m59545b == null) {
            return EventResult.C15001a.m59663a(105);
        }
        if (TextUtils.isEmpty(C14895j.m59074b()) && TextUtils.isEmpty(C14895j.m59075c())) {
            if (this.f93222e.addAndGet(1) > 64) {
                String format = String.format("qimei empty cache count over max , appKey: %s, event: %s", beaconEvent.getAppKey(), beaconEvent.getCode());
                C14954c.m59392a(format, new Object[0]);
                if (this.f93223f.compareAndSet(false, true)) {
                    C14882j.m58961e().m58953a("510", format);
                }
            } else {
                C14954c.m59392a("qimei empty and add to cache , appKey: %s, event: %s", beaconEvent.getAppKey(), beaconEvent.getCode());
                BeaconEvent build = BeaconEvent.newBuilder(beaconEvent).build();
                HashMap hashMap = new HashMap();
                hashMap.put("e_q_e_k", build);
                C14870b.m58921a().m58928a(new C14871c(12, hashMap));
            }
        }
        int eventType = m59545b.getEventType();
        if (eventType == 3) {
            IBeaconImmediateReport immediateReport = BeaconReport.getInstance().getImmediateReport();
            C14959h.m59416a("immediateReport", immediateReport);
            if (immediateReport != null) {
                String str = beaconEvent.getParams().get("A100");
                this.f93228k.mo59599b(str, m59545b);
                return EventResult.C15001a.m59664a(Long.parseLong(str));
            }
            C14954c.m59392a("immediateReport is null!", new Object[0]);
            C14882j.m58961e().m58953a("515", "immediateReport is null!");
        }
        if (eventType == 2) {
            IBeaconQuicReport beaconQuicReport = BeaconReport.getInstance().getBeaconQuicReport();
            C14959h.m59416a("beaconQuicReport", beaconQuicReport);
            if (beaconQuicReport != null) {
                String str2 = beaconEvent.getParams().get("A100");
                this.f93228k.mo59595a(str2, m59545b);
                return EventResult.C15001a.m59664a(Long.parseLong(str2));
            }
            C14954c.m59392a("beaconQuicReport is null!", new Object[0]);
            C14882j.m58961e().m58953a("471", "beaconQuicReport is null!");
        }
        return this.f93228k.mo59600c(beaconEvent.getParams().get("A100"), m59545b);
    }

    /* renamed from: a */
    public void m59676a(String str, String str2) {
        f93220c.put(m59669d(str), C14991d.m59560c(str2));
    }

    /* renamed from: a */
    public void m59677a(String str, Map<String, String> map) {
        if (map == null || map.isEmpty() || map.size() >= 50) {
            Object[] objArr = new Object[1];
            objArr[0] = Integer.valueOf(map == null ? 0 : map.size());
            C14954c.m59392a("setAdditionalParams error , params.size: %s", objArr);
            return;
        }
        String m59669d = m59669d(str);
        Map<String, Map<String, String>> map2 = f93218a;
        Map<String, String> map3 = map2.get(m59669d);
        if (map3 != null) {
            if (map3.size() + map.size() >= 50) {
                C14954c.m59392a("setAdditionalParams error , params.size: can not more than 50", new Object[0]);
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.putAll(map3);
            hashMap.putAll(map);
            map2.put(m59669d, hashMap);
            return;
        }
        map2.put(m59669d, new HashMap(map));
    }

    /* renamed from: a */
    public Map<String, String> m59675a(String str) {
        return f93218a.get(m59669d(str));
    }

    @Override // com.tencent.beacon.base.net.p066b.RunnableC14936e.a
    /* renamed from: a */
    public void mo59020a() {
        m59685f();
    }
}
