package com.sagittarius.p050v6.p052b;

import android.app.Application;
import android.content.Context;
import com.sagittarius.p050v6.p051a.C13091a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.sagittarius.v6.b.f */
/* loaded from: classes18.dex */
public final class C13097f implements InterfaceC13092a {

    /* renamed from: a */
    private static C13097f f63259a;

    /* renamed from: b */
    private static List f63260b;

    /* renamed from: c */
    private static List f63261c;

    /* renamed from: d */
    private static final String[] f63262d = null;

    static {
        m52332b();
        f63260b = new ArrayList();
        f63261c = new ArrayList();
        f63259a = null;
    }

    public C13097f() {
        f63260b.add(f63262d[0]);
    }

    /* renamed from: a */
    public static C13097f m52331a() {
        if (f63259a == null) {
            f63259a = new C13097f();
        }
        return f63259a;
    }

    /* renamed from: b */
    private static void m52332b() {
        String[] strArr = new String[1];
        f63262d = strArr;
        byte[] m52319a = C13091a.m52319a("ATo/TxkDMjsVHgMnOxQZTDYgUVtMFA==");
        StringBuilder sb = new StringBuilder();
        char[] charArray = "bURaj".toCharArray();
        int i = 0;
        for (byte b : m52319a) {
            sb.append((char) (b ^ charArray[i % charArray.length]));
            i++;
        }
        strArr[0] = sb.toString();
    }

    @Override // com.sagittarius.p050v6.p052b.InterfaceC13092a
    public final void attachBaseContext(Context context, Application application, Application application2) {
        Iterator it2 = f63261c.iterator();
        while (it2.hasNext()) {
            ((InterfaceC13092a) it2.next()).attachBaseContext(context, application, application2);
        }
    }

    @Override // com.sagittarius.p050v6.p052b.InterfaceC13092a
    public final void init() {
        Iterator it2 = f63260b.iterator();
        while (it2.hasNext()) {
            try {
                f63261c.add((InterfaceC13092a) Class.forName((String) it2.next()).newInstance());
            } catch (Throwable th) {
            }
        }
        Iterator it3 = f63261c.iterator();
        while (it3.hasNext()) {
            ((InterfaceC13092a) it3.next()).init();
        }
    }

    @Override // com.sagittarius.p050v6.p052b.InterfaceC13092a
    public final void onCreate(Application application, Application application2) {
        Iterator it2 = f63261c.iterator();
        while (it2.hasNext()) {
            ((InterfaceC13092a) it2.next()).onCreate(application, application2);
        }
    }

    @Override // com.sagittarius.p050v6.p052b.InterfaceC13092a
    public final void registerActivityLifecycleCallbacks(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks, Application application, Application application2) {
        Iterator it2 = f63261c.iterator();
        while (it2.hasNext()) {
            ((InterfaceC13092a) it2.next()).registerActivityLifecycleCallbacks(activityLifecycleCallbacks, application, application2);
        }
    }
}
