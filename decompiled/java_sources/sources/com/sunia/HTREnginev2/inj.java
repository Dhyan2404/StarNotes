package com.sunia.HTREnginev2;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.backends.BackendFactory;
import com.google.android.datatransport.runtime.backends.BackendRegistry;
import com.google.android.datatransport.runtime.backends.TransportBackend;
import com.google.android.datatransport.runtime.backends.TransportBackendDiscovery;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
/* loaded from: classes4.dex */
public class inj implements BackendRegistry {

    /* renamed from: d */
    public static final String f73415d = "BackendRegistry";

    /* renamed from: e */
    public static final String f73416e = "backend:";

    /* renamed from: a */
    public final C13885a f73417a;

    /* renamed from: b */
    public final ahe f73418b;

    /* renamed from: c */
    public final Map<String, TransportBackend> f73419c;

    /* renamed from: com.sunia.HTREnginev2.inj$a */
    /* loaded from: classes4.dex */
    public static class C13885a {

        /* renamed from: a */
        public final Context f73420a;

        /* renamed from: b */
        public Map<String, String> f73421b = null;

        public C13885a(Context context) {
            this.f73420a = context;
        }

        /* renamed from: d */
        public static Bundle m54730d(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w(inj.f73415d, "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) TransportBackendDiscovery.class), 128);
                if (serviceInfo != null) {
                    return serviceInfo.metaData;
                }
                Log.w(inj.f73415d, "TransportBackendDiscovery has no service info.");
                return null;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w(inj.f73415d, "Application info not found.");
                return null;
            }
        }

        /* renamed from: a */
        public final Map<String, String> m54731a(Context context) {
            Bundle m54730d = m54730d(context);
            if (m54730d == null) {
                Log.w(inj.f73415d, "Could not retrieve metadata, returning empty list of transport backends.");
                return Collections.emptyMap();
            }
            HashMap hashMap = new HashMap();
            for (String str : m54730d.keySet()) {
                Object obj = m54730d.get(str);
                if ((obj instanceof String) && str.startsWith(inj.f73416e)) {
                    for (String str2 : ((String) obj).split(",", -1)) {
                        String trim = str2.trim();
                        if (!trim.isEmpty()) {
                            hashMap.put(trim, str.substring(8));
                        }
                    }
                }
            }
            return hashMap;
        }

        @Nullable
        /* renamed from: b */
        public BackendFactory m54732b(String str) {
            String str2 = m54733c().get(str);
            if (str2 == null) {
                return null;
            }
            try {
                return (BackendFactory) Class.forName(str2).asSubclass(BackendFactory.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e) {
                Log.w(inj.f73415d, String.format("Class %s is not found.", str2), e);
                return null;
            } catch (IllegalAccessException e2) {
                Log.w(inj.f73415d, String.format("Could not instantiate %s.", str2), e2);
                return null;
            } catch (InstantiationException e3) {
                Log.w(inj.f73415d, String.format("Could not instantiate %s.", str2), e3);
                return null;
            } catch (NoSuchMethodException e4) {
                Log.w(inj.f73415d, String.format("Could not instantiate %s", str2), e4);
                return null;
            } catch (InvocationTargetException e5) {
                Log.w(inj.f73415d, String.format("Could not instantiate %s", str2), e5);
                return null;
            }
        }

        /* renamed from: c */
        public final Map<String, String> m54733c() {
            if (this.f73421b == null) {
                this.f73421b = m54731a(this.f73420a);
            }
            return this.f73421b;
        }
    }

    @Inject
    public inj(Context context, ahe aheVar) {
        this(new C13885a(context), aheVar);
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRegistry
    @Nullable
    public synchronized TransportBackend get(String str) {
        if (this.f73419c.containsKey(str)) {
            return this.f73419c.get(str);
        }
        BackendFactory m54732b = this.f73417a.m54732b(str);
        if (m54732b == null) {
            return null;
        }
        TransportBackend create = m54732b.create(this.f73418b.m53016a(str));
        this.f73419c.put(str, create);
        return create;
    }

    public inj(C13885a c13885a, ahe aheVar) {
        this.f73419c = new HashMap();
        this.f73417a = c13885a;
        this.f73418b = aheVar;
    }
}
