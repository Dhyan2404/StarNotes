package com.tencent.beacon.event;

import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.event.p074a.C14981a;
import java.util.Iterator;
import java.util.Set;

/* renamed from: com.tencent.beacon.event.f */
/* loaded from: classes10.dex */
public class RunnableC14997f implements Runnable {

    /* renamed from: a */
    final /* synthetic */ long f93096a;

    /* renamed from: b */
    final /* synthetic */ C14998g f93097b;

    public RunnableC14997f(C14998g c14998g, long j) {
        this.f93097b = c14998g;
        this.f93096a = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        Set set;
        C14981a c14981a;
        String str;
        String str2;
        RunnableC14999h runnableC14999h;
        Set<Long> set2;
        RunnableC14999h runnableC14999h2;
        StringBuilder sb = new StringBuilder();
        set = this.f93097b.f93098a;
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            sb.append((Long) it2.next());
            sb.append(",");
        }
        String substring = sb.substring(0, sb.lastIndexOf(","));
        c14981a = this.f93097b.f93104g;
        str = this.f93097b.f93103f;
        boolean m59540a = c14981a.m59540a(str, substring);
        str2 = this.f93097b.f93099b;
        C14954c.m59389a(str2, 4, "delete: %s", Boolean.valueOf(m59540a));
        runnableC14999h = this.f93097b.f93102e;
        set2 = this.f93097b.f93098a;
        runnableC14999h.m59612a(set2);
        runnableC14999h2 = this.f93097b.f93102e;
        runnableC14999h2.m59611a(this.f93096a);
    }
}
