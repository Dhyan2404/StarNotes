package com.tencent.beacon.event;

import android.os.Handler;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.beacon.base.net.C14937c;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.event.open.EventResult;
import com.tencent.beacon.event.p074a.C14981a;
import com.tencent.beacon.event.p076c.C14991d;
import com.tencent.beacon.p059a.p060a.C14870b;
import com.tencent.beacon.p059a.p060a.C14871c;
import com.tencent.beacon.p059a.p060a.InterfaceC14872d;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;
import com.tencent.beacon.p073d.C14969b;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* renamed from: com.tencent.beacon.event.e */
/* loaded from: classes10.dex */
public class C14996e implements InterfaceC15000i, InterfaceC14872d {

    /* renamed from: b */
    private final C14981a f93091b;

    /* renamed from: c */
    private final RunnableC14999h f93092c;

    /* renamed from: d */
    private final RunnableC14999h f93093d;

    /* renamed from: e */
    private long f93094e = 2000;

    /* renamed from: f */
    private long f93095f = 5000;

    /* renamed from: a */
    private final Handler f93090a = AbstractC14874b.m58931a().mo58935a(3000);

    public C14996e() {
        C14981a m59533a = C14981a.m59533a();
        this.f93091b = m59533a;
        this.f93092c = new RunnableC14999h(2000, m59533a, true);
        this.f93093d = new RunnableC14999h(1000, m59533a, false);
        C14870b.m58921a().m58927a(11, this);
        C14870b.m58921a().m58927a(2, this);
    }

    @Override // com.tencent.beacon.event.InterfaceC15000i
    /* renamed from: b */
    public void mo59599b(String str, @NonNull EventBean eventBean) {
        C14954c.m59391a("[EventManager]", "eventName is %s, logID is %s", eventBean.getEventCode(), str);
        AbstractC14874b.m58931a().mo58941a(new RunnableC14983b(this, eventBean, str));
    }

    @Override // com.tencent.beacon.event.InterfaceC15000i
    /* renamed from: c */
    public EventResult mo59600c(@Nullable String str, @NonNull EventBean eventBean) {
        boolean mo59598a = mo59598a(new RunnableC14980a(this, eventBean));
        C14954c.m59389a("[EventModule]", 1, "event: %s. go in EventManager(%s). offer: %s", eventBean.getEventCode(), eventBean.getAppKey(), Boolean.valueOf(mo59598a));
        if (!mo59598a) {
            return EventResult.C15001a.m59663a(103);
        }
        if (TextUtils.isEmpty(str)) {
            str = "-1";
        }
        return EventResult.C15001a.m59664a(Long.parseLong(str));
    }

    @Override // com.tencent.beacon.event.InterfaceC15000i
    /* renamed from: a */
    public void mo59595a(String str, @NonNull EventBean eventBean) {
        C14954c.m59392a("[EventManager]", "eventName is %s, logID is %s", eventBean.getEventCode(), str);
        AbstractC14874b.m58931a().mo58941a(new RunnableC14987c(this, eventBean, str));
    }

    /* renamed from: a */
    public void m59594a(EventBean eventBean, String str) {
        Map<String, String> eventValue = eventBean.getEventValue();
        eventValue.put("A156", "N");
        eventBean.setEventValue(eventValue);
        if (C14969b.m59444b().m59488v()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(eventBean);
            C14937c.m59312d().m59322b(C14991d.m59551a((List<EventBean>) arrayList, true)).m59350a(new C14995d(this, eventBean, str), AbstractC14874b.m58934b());
            return;
        }
        mo59600c(str, eventBean);
    }

    @Override // com.tencent.beacon.event.InterfaceC15000i
    /* renamed from: a */
    public void mo59596a(boolean z) {
        if (z) {
            this.f93093d.run();
            this.f93092c.run();
        } else {
            AbstractC14874b.m58931a().mo58941a(this.f93093d);
            AbstractC14874b.m58931a().mo58941a(this.f93092c);
        }
    }

    @Override // com.tencent.beacon.event.InterfaceC15000i
    /* renamed from: a */
    public void mo59592a() {
        AbstractC14874b.m58931a().mo58937a(2000, 0L, this.f93094e, this.f93092c);
        AbstractC14874b.m58931a().mo58937a(1000, 0L, this.f93095f, this.f93093d);
    }

    @Override // com.tencent.beacon.event.InterfaceC15000i
    /* renamed from: a */
    public void mo59597a(boolean z, int i) {
        AbstractC14874b.m58931a().mo58938a(2000, z, i);
        AbstractC14874b.m58931a().mo58938a(1000, z, i);
    }

    @Override // com.tencent.beacon.event.InterfaceC15000i
    /* renamed from: a */
    public void mo59593a(int i) {
        int i2;
        int i3;
        if (C14969b.m59444b().m59481o()) {
            i2 = C14969b.m59444b().m59474h();
            i3 = C14969b.m59444b().m59471f();
        } else {
            i2 = 0;
            i3 = 0;
        }
        C14954c.m59392a(String.format("resumedPollingReport realtimeDelayTime: %s, normalDelayTime: %s", Integer.valueOf(i2), Integer.valueOf(i3)), new Object[0]);
        AbstractC14874b.m58931a().mo58936a(2000, i2, i);
        AbstractC14874b.m58931a().mo58936a(1000, i3, i);
    }

    @Override // com.tencent.beacon.event.InterfaceC15000i
    /* renamed from: a */
    public boolean mo59598a(Runnable runnable) {
        return this.f93090a.post(runnable);
    }

    @Override // com.tencent.beacon.p059a.p060a.InterfaceC14872d
    /* renamed from: a */
    public void mo58930a(C14871c c14871c) {
        int i = c14871c.f92540a;
        if (i == 2) {
            Map map = (Map) c14871c.f92541b.get("d_m");
            if (map != null) {
                if (this.f93094e == 2000) {
                    this.f93094e = C14953b.m59359a((String) map.get("realtimePollingTime"), this.f93094e, 1000L, 10000L);
                }
                if (this.f93095f == 5000) {
                    this.f93095f = C14953b.m59359a((String) map.get("normalPollingTime"), this.f93095f, 2000L, 3600000L);
                }
            }
        } else if (i == 11) {
            Object obj = c14871c.f92541b.get("u_c_r_p");
            if (obj != null) {
                long longValue = ((Long) obj).longValue();
                if (longValue >= 1000 && longValue <= 10000) {
                    this.f93094e = longValue;
                }
            }
            Object obj2 = c14871c.f92541b.get("u_c_n_p");
            if (obj2 != null) {
                long longValue2 = ((Long) obj2).longValue();
                if (longValue2 >= 2000 && longValue2 <= 3600000) {
                    this.f93095f = longValue2;
                }
            }
        }
        C14954c.m59391a("[EventManager]", "pollingTime maybe change, realtime: %s normal: %s", Long.valueOf(this.f93094e), Long.valueOf(this.f93095f));
    }
}
