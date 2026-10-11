package com.tencent.qimei.p097r;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.sunia.HTREnginev2.gon;
import com.tencent.qimei.log.IObservableLog;
import com.tencent.qimei.p079aa.C16734a;
import com.tencent.qimei.p079aa.InterfaceC16740g;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p081b.C16763b;
import com.tencent.qimei.p083d.AbstractC16769a;
import com.tencent.qimei.p084e.C16773a;
import com.tencent.qimei.p084e.C16775c;
import com.tencent.qimei.p089j.InterfaceC16788c;
import com.tencent.qimei.p091l.C16799g;
import com.tencent.qimei.p093n.C16806a;
import com.tencent.qimei.p095p.C16812b;
import com.tencent.qimei.p097r.RunnableC16827f;
import com.tencent.qimei.p098s.C16836a;
import com.tencent.qimei.p105y.InterfaceC16856b;
import com.tencent.qimei.p105y.InterfaceC16857c;
import com.tencent.qimei.sdk.IAsyncQimeiListener;
import com.tencent.qimei.sdk.IQimeiSDK;
import com.tencent.qimei.sdk.Qimei;
import com.tencent.qimei.sdk.QimeiSDK;
import com.tencent.qimei.sdk.debug.IDebugger;
import com.tencent.qimei.strategy.terminal.ITerminalStrategy;
import com.tencent.qimei.upload.BuildConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* renamed from: com.tencent.qimei.r.l */
/* loaded from: classes10.dex */
public class C16833l implements IQimeiSDK, InterfaceC16856b, InterfaceC16857c, InterfaceC16788c, InterfaceC16740g, RunnableC16827f.b {

    /* renamed from: a */
    public static final Map<String, C16833l> f93635a = new ConcurrentHashMap();

    /* renamed from: b */
    public static final String f93636b;

    /* renamed from: e */
    public final IDebugger f93639e;

    /* renamed from: f */
    public final String f93640f;

    /* renamed from: k */
    public long f93645k;

    /* renamed from: c */
    public final List<IAsyncQimeiListener> f93637c = Collections.synchronizedList(new ArrayList(8));

    /* renamed from: d */
    public final ConcurrentHashMap<String, String> f93638d = new ConcurrentHashMap<>();

    /* renamed from: g */
    public Context f93641g = null;

    /* renamed from: h */
    public boolean f93642h = false;

    /* renamed from: i */
    public String f93643i = "";

    /* renamed from: j */
    public String f93644j = "";

    static {
        String m59891a = C16763b.m59891a(19);
        if (m59891a.equals("") || m59891a.length() != 30) {
            m59891a = QimeiSDK.class.getCanonicalName();
        }
        f93636b = m59891a;
    }

    public C16833l(String str) {
        this.f93640f = str;
        this.f93639e = new C16836a(str);
    }

    /* renamed from: a */
    public static synchronized IQimeiSDK m60050a(String str) {
        C16833l c16833l;
        synchronized (C16833l.class) {
            Map<String, C16833l> map = f93635a;
            c16833l = map.get(str);
            if (c16833l == null) {
                c16833l = new C16833l(str);
                map.put(str, c16833l);
            }
        }
        return c16833l;
    }

    @Override // com.tencent.qimei.sdk.IQimeiSDK
    public IQimeiSDK addUserId(String str, String str2) {
        this.f93638d.put(str, str2);
        return this;
    }

    @Override // com.tencent.qimei.p105y.InterfaceC16857c
    @Nullable
    /* renamed from: c */
    public Context mo60059c() {
        if (this.f93641g == null) {
            C16806a.m59995b("SDK_INIT", "Context has been destroyed!!", new Object[0]);
        }
        return this.f93641g;
    }

    @Override // com.tencent.qimei.p105y.InterfaceC16856b
    /* renamed from: d */
    public String mo60060d() {
        return new JSONObject((Map<?, ?>) this.f93638d).toString();
    }

    @Override // com.tencent.qimei.p105y.InterfaceC16856b
    /* renamed from: e */
    public String mo60061e() {
        return this.f93644j;
    }

    @Override // com.tencent.qimei.p105y.InterfaceC16856b
    /* renamed from: f */
    public void mo60062f() {
        synchronized (this.f93637c) {
            Qimei qimei = getQimei();
            if (qimei != null && !qimei.isEmpty()) {
                Iterator<IAsyncQimeiListener> it2 = this.f93637c.iterator();
                while (it2.hasNext()) {
                    it2.next().onQimeiDispatch(qimei);
                }
                this.f93637c.clear();
            }
        }
    }

    @Override // com.tencent.qimei.p105y.InterfaceC16856b
    /* renamed from: g */
    public String mo60063g() {
        Qimei qimei = getQimei();
        return qimei == null ? "" : qimei.getQimei16();
    }

    @Override // com.tencent.qimei.sdk.IQimeiSDK
    public String getBeaconTicket() {
        StringBuilder sb;
        if (!m60067m()) {
            return "";
        }
        String str = this.f93640f;
        if (C16762a.m59888e(str)) {
            return null;
        }
        C16823b m60028a = C16823b.m60028a(str);
        if (m60028a.f93596e == 0) {
            m60028a.f93596e = System.currentTimeMillis();
        }
        if (TextUtils.isEmpty(m60028a.f93595d)) {
            String m59971d = C16799g.m59964b(m60028a.f93593b).m59971d(gon.f71287n);
            m60028a.f93595d = m59971d;
            if (TextUtils.isEmpty(m59971d)) {
                if (Looper.getMainLooper() == Looper.myLooper()) {
                    return "";
                }
                m60028a.f93595d = m60028a.m60031b();
                return m60028a.f93595d + m60028a.f93596e;
            }
            sb = new StringBuilder();
        } else {
            sb = new StringBuilder();
        }
        sb.append(m60028a.f93595d);
        sb.append(m60028a.f93596e);
        return sb.toString();
    }

    @Override // com.tencent.qimei.sdk.IQimeiSDK
    public IDebugger getDebugger() {
        return this.f93639e;
    }

    @Override // com.tencent.qimei.sdk.IQimeiSDK
    public Qimei getQimei() {
        if (m60067m()) {
            return C16762a.m59885d(this.f93640f);
        }
        return null;
    }

    @Override // com.tencent.qimei.sdk.IQimeiSDK, com.tencent.qimei.p105y.InterfaceC16857c
    public String getSdkVersion() {
        return BuildConfig.SDK_VERSION;
    }

    @Override // com.tencent.qimei.sdk.IQimeiSDK
    public ITerminalStrategy getStrategy() {
        return C16734a.m59797a(this.f93640f).f93331c;
    }

    @Override // com.tencent.qimei.sdk.IQimeiSDK
    public String getToken() {
        if (m60067m()) {
            return C16835n.m60070a(this.f93640f).m60073b();
        }
        C16806a.m59991a("SDK_INIT", "getToken fail, sdk not init!", new Object[0]);
        C16835n.m60070a(this.f93640f).f93653f = "1";
        return "";
    }

    @Override // com.tencent.qimei.p105y.InterfaceC16857c
    /* renamed from: h */
    public String mo60064h() {
        return C16812b.m60012a().m60014b();
    }

    @Override // com.tencent.qimei.p089j.InterfaceC16788c
    /* renamed from: i */
    public void mo59799i() {
        C16775c.m59907j().m59928v();
        m60069o();
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00d0 A[Catch: all -> 0x01d4, TryCatch #1 {, blocks: (B:4:0x0003, B:10:0x000e, B:12:0x002b, B:15:0x003a, B:18:0x0184, B:23:0x0082, B:25:0x008c, B:26:0x008f, B:32:0x00ab, B:36:0x00bd, B:52:0x00c1, B:39:0x00cc, B:41:0x00d0, B:44:0x010e, B:47:0x0132, B:48:0x0120, B:49:0x00fb, B:50:0x016f, B:57:0x00c8, B:62:0x00a8, B:67:0x00ba, B:31:0x00a1, B:64:0x00b3), top: B:3:0x0003, inners: #0, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.tencent.qimei.sdk.IQimeiSDK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean init(android.content.Context r18) {
        /*
            Method dump skipped, instructions count: 471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p097r.C16833l.init(android.content.Context):boolean");
    }

    @Override // com.tencent.qimei.sdk.IQimeiSDK
    public boolean isQimeiValid(String str, String str2) {
        return true;
    }

    @Override // com.tencent.qimei.p089j.InterfaceC16788c
    /* renamed from: j */
    public void mo59800j() {
        C16775c.m59907j().m59928v();
    }

    /* renamed from: k */
    public final void m60065k() {
        getQimei(new C16831j(this));
    }

    /* renamed from: l */
    public final synchronized boolean m60066l() {
        TextUtils.isEmpty(this.f93640f);
        return this.f93641g != null;
    }

    /* renamed from: m */
    public final synchronized boolean m60067m() {
        boolean z;
        z = m60066l() && this.f93642h;
        if (!z) {
            C16806a.m59991a("SDK_INIT", "appkey:%s uninitialized", this.f93640f);
        }
        return z;
    }

    /* renamed from: n */
    public void m60068n() {
        getQimei(new C16832k(this));
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01aa  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m60069o() {
        /*
            Method dump skipped, instructions count: 479
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p097r.C16833l.m60069o():void");
    }

    @Override // com.tencent.qimei.sdk.IQimeiSDK
    public IQimeiSDK setAppVersion(String str) {
        if (!TextUtils.isEmpty(str)) {
            C16773a.f93460a = str;
        }
        return this;
    }

    @Override // com.tencent.qimei.sdk.IQimeiSDK
    public IQimeiSDK setChannelID(String str) {
        this.f93643i = str;
        return this;
    }

    @Override // com.tencent.qimei.sdk.IQimeiSDK
    public synchronized IQimeiSDK setLogAble(boolean z) {
        C16806a.m59993a(z);
        C16806a.m59996b(z);
        return this;
    }

    @Override // com.tencent.qimei.sdk.IQimeiSDK
    public synchronized IQimeiSDK setLogObserver(IObservableLog iObservableLog) {
        C16806a.f93552c = iObservableLog;
        return this;
    }

    @Override // com.tencent.qimei.sdk.IQimeiSDK
    public IQimeiSDK setSdkName(String str) {
        if (!this.f93642h) {
            this.f93644j = str;
        }
        return this;
    }

    @Override // com.tencent.qimei.p105y.InterfaceC16856b
    /* renamed from: a */
    public String mo60056a() {
        Qimei qimei = getQimei();
        return qimei == null ? "" : qimei.getQimei36();
    }

    @Override // com.tencent.qimei.p105y.InterfaceC16856b
    /* renamed from: b */
    public String mo60058b() {
        return this.f93643i;
    }

    @Override // com.tencent.qimei.sdk.IQimeiSDK
    public synchronized void getQimei(IAsyncQimeiListener iAsyncQimeiListener) {
        if (m60067m()) {
            AbstractC16769a.m59895a().mo59897a(new RunnableC16828g(this, iAsyncQimeiListener));
        } else {
            m60057a(iAsyncQimeiListener);
        }
    }

    /* renamed from: a */
    public final void m60057a(IAsyncQimeiListener iAsyncQimeiListener) {
        synchronized (this.f93637c) {
            if (!this.f93637c.contains(iAsyncQimeiListener)) {
                this.f93637c.add(iAsyncQimeiListener);
            }
        }
    }
}
