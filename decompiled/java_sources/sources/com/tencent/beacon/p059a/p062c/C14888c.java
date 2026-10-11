package com.tencent.beacon.p059a.p062c;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.beacon.module.BeaconModule;
import com.tencent.beacon.module.ModuleName;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.tencent.beacon.a.c.c */
/* loaded from: classes10.dex */
public class C14888c {

    /* renamed from: a */
    private static volatile C14888c f92600a;

    /* renamed from: b */
    private Context f92601b;

    /* renamed from: c */
    private byte f92602c;

    /* renamed from: d */
    private String f92603d;

    /* renamed from: f */
    private String f92605f;

    /* renamed from: g */
    private long f92606g;

    /* renamed from: e */
    private String f92604e = "";

    /* renamed from: h */
    private String f92607h = "";

    /* renamed from: i */
    private final Map<String, String> f92608i = new HashMap();

    /* renamed from: j */
    private String f92609j = "";

    /* renamed from: k */
    private String f92610k = "";

    /* renamed from: l */
    private String f92611l = "";

    /* renamed from: m */
    private boolean f92612m = true;

    public C14888c() {
        this.f92602c = (byte) -1;
        this.f92603d = "";
        this.f92605f = "";
        this.f92602c = (byte) 1;
        this.f92603d = "beacon";
        this.f92605f = "unknown";
    }

    /* renamed from: c */
    public static C14888c m58989c() {
        if (f92600a == null) {
            synchronized (C14888c.class) {
                if (f92600a == null) {
                    f92600a = new C14888c();
                }
            }
        }
        return f92600a;
    }

    /* renamed from: a */
    public synchronized String m58991a() {
        return this.f92605f;
    }

    /* renamed from: b */
    public void m58998b(String str) {
        this.f92605f = str;
    }

    /* renamed from: d */
    public String m59000d() {
        return this.f92611l;
    }

    @NonNull
    /* renamed from: e */
    public String m59002e() {
        return this.f92607h;
    }

    /* renamed from: f */
    public String m59003f() {
        return this.f92610k;
    }

    /* renamed from: g */
    public synchronized byte m59004g() {
        return this.f92602c;
    }

    /* renamed from: h */
    public synchronized String m59005h() {
        return this.f92603d;
    }

    /* renamed from: i */
    public String m59006i() {
        return "4.2.86.7-hf1";
    }

    /* renamed from: j */
    public synchronized long m59007j() {
        return this.f92606g;
    }

    /* renamed from: k */
    public String m59008k() {
        return this.f92609j;
    }

    /* renamed from: a */
    public synchronized void m58993a(long j) {
        this.f92606g = j;
    }

    /* renamed from: b */
    public synchronized Context m58997b() {
        return this.f92601b;
    }

    /* renamed from: d */
    public void m59001d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f92610k = str;
    }

    /* renamed from: a */
    public synchronized void m58994a(Context context) {
        if (this.f92601b == null) {
            Context applicationContext = context.getApplicationContext();
            this.f92601b = applicationContext;
            if (applicationContext == null) {
                this.f92601b = context;
            }
        }
    }

    /* renamed from: a */
    public String m58992a(String str) {
        String str2 = this.f92608i.get(str);
        return str2 == null ? "" : str2;
    }

    /* renamed from: a */
    public void m58995a(String str, String str2) {
        this.f92608i.put(str, str2);
    }

    /* renamed from: c */
    public void m58999c(String str) {
        this.f92607h = str;
    }

    /* renamed from: a */
    public BeaconModule m58990a(ModuleName moduleName) {
        return BeaconModule.f93217a.get(moduleName);
    }

    /* renamed from: a */
    public void m58996a(boolean z) {
        this.f92612m = z;
    }
}
