package com.tencent.beacon.event;

import com.tencent.beacon.base.net.C14937c;
import com.tencent.beacon.base.net.C14950d;
import com.tencent.beacon.base.net.call.Callback;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.event.p074a.C14981a;
import com.tencent.beacon.module.EventModule;
import com.tencent.beacon.module.ModuleName;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;
import com.tencent.beacon.p059a.p062c.C14888c;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.tencent.beacon.event.g */
/* loaded from: classes10.dex */
public final class C14998g implements Callback<byte[]> {

    /* renamed from: a */
    private final Set<Long> f93098a;

    /* renamed from: b */
    private final String f93099b;

    /* renamed from: c */
    private final String f93100c;

    /* renamed from: d */
    private long f93101d = C14953b.m59381c();

    /* renamed from: e */
    private RunnableC14999h f93102e;

    /* renamed from: f */
    private String f93103f;

    /* renamed from: g */
    private C14981a f93104g;

    public C14998g(RunnableC14999h runnableC14999h, String str, C14981a c14981a, Set<Long> set, String str2) {
        this.f93102e = runnableC14999h;
        this.f93103f = str;
        this.f93104g = c14981a;
        this.f93098a = new HashSet(set);
        this.f93099b = "[EventReport(" + str + ")]";
        this.f93100c = str2;
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    public void onFailure(C14950d c14950d) {
        C14954c.m59389a(this.f93099b, 3, "send failure reason: %s. LogID: %s.", c14950d.toString(), this.f93100c);
        this.f93102e.m59612a(this.f93098a);
        if (c14950d.f92903b.equals("406")) {
            this.f93102e.m59610a();
            AbstractC14874b.m58931a().mo58941a(this.f93102e);
        }
        C14937c.m59312d().m59324e();
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onResponse(byte[] bArr) {
        C14954c.m59389a(this.f93099b, 3, "report success! offer task: %s! ", Boolean.valueOf(((EventModule) C14888c.m58989c().m58990a(ModuleName.EVENT)).m59683d().mo59598a(new RunnableC14997f(this, C14953b.m59381c() - this.f93101d))));
        if (this.f93098a.size() >= this.f93102e.m59613b()) {
            AbstractC14874b.m58931a().mo58941a(this.f93102e);
        }
        this.f93102e.m59614c();
        C14937c.m59312d().m59317a(0);
    }
}
