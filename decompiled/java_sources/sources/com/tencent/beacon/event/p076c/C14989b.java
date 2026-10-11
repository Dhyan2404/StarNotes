package com.tencent.beacon.event.p076c;

import com.tencent.beacon.base.net.p065a.InterfaceC14908c;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.event.EventBean;
import com.tencent.beacon.event.p074a.C14982b;

/* renamed from: com.tencent.beacon.event.c.b */
/* loaded from: classes10.dex */
public final class C14989b extends InterfaceC14908c.a<EventBean, C14982b> {

    /* renamed from: a */
    private final b f93048a = new b();

    /* renamed from: b */
    private final a f93049b = new a();

    /* renamed from: com.tencent.beacon.event.c.b$a */
    /* loaded from: classes10.dex */
    public static final class a implements InterfaceC14908c<EventBean, C14982b> {
        @Override // com.tencent.beacon.base.net.p065a.InterfaceC14908c
        /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public C14982b mo59122a(EventBean eventBean) {
            C14982b c14982b = new C14982b();
            c14982b.f93035b = eventBean.getEventTime();
            c14982b.f93037d = eventBean.getAppKey();
            byte[] m59371a = C14953b.m59371a(eventBean);
            c14982b.f93038e = m59371a;
            if (m59371a != null) {
                c14982b.f93036c = m59371a.length;
            }
            return c14982b;
        }
    }

    /* renamed from: com.tencent.beacon.event.c.b$b */
    /* loaded from: classes10.dex */
    public static final class b implements InterfaceC14908c<C14982b, EventBean> {
        @Override // com.tencent.beacon.base.net.p065a.InterfaceC14908c
        /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public EventBean mo59122a(C14982b c14982b) {
            Object m59360a = C14953b.m59360a(c14982b.f93038e);
            if (m59360a == null || !(m59360a instanceof EventBean)) {
                return null;
            }
            EventBean eventBean = (EventBean) m59360a;
            eventBean.setCid(c14982b.f93034a);
            return eventBean;
        }
    }

    private C14989b() {
    }

    /* renamed from: a */
    public static C14989b m59547a() {
        return new C14989b();
    }

    /* renamed from: b */
    public InterfaceC14908c<EventBean, C14982b> m59548b() {
        return this.f93049b;
    }

    /* renamed from: c */
    public InterfaceC14908c<C14982b, EventBean> m59549c() {
        return this.f93048a;
    }
}
