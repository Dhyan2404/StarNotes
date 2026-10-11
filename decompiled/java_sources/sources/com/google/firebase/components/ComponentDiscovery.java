package com.google.firebase.components;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.components.ComponentDiscovery;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.inject.Provider;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes6.dex */
public final class ComponentDiscovery<T> {

    /* renamed from: c */
    public static final String f35808c = "ComponentDiscovery";

    /* renamed from: d */
    public static final String f35809d = "com.google.firebase.components.ComponentRegistrar";

    /* renamed from: e */
    public static final String f35810e = "com.google.firebase.components:";

    /* renamed from: a */
    public final T f35811a;

    /* renamed from: b */
    public final InterfaceC6451c<T> f35812b;

    /* renamed from: com.google.firebase.components.ComponentDiscovery$b */
    /* loaded from: classes6.dex */
    public static class C6450b implements InterfaceC6451c<Context> {

        /* renamed from: a */
        public final Class<? extends Service> f35813a;

        /* renamed from: b */
        public final Bundle m28029b(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w(ComponentDiscovery.f35808c, "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, this.f35813a), 128);
                if (serviceInfo != null) {
                    return serviceInfo.metaData;
                }
                Log.w(ComponentDiscovery.f35808c, this.f35813a + " has no service info.");
                return null;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w(ComponentDiscovery.f35808c, "Application info not found.");
                return null;
            }
        }

        @Override // com.google.firebase.components.ComponentDiscovery.InterfaceC6451c
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public List<String> mo28028a(Context context) {
            Bundle m28029b = m28029b(context);
            if (m28029b == null) {
                Log.w(ComponentDiscovery.f35808c, "Could not retrieve metadata, returning empty list of registrars.");
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str : m28029b.keySet()) {
                if (ComponentDiscovery.f35809d.equals(m28029b.get(str)) && str.startsWith(ComponentDiscovery.f35810e)) {
                    arrayList.add(str.substring(31));
                }
            }
            return arrayList;
        }

        public C6450b(Class<? extends Service> cls) {
            this.f35813a = cls;
        }
    }

    @VisibleForTesting
    /* renamed from: com.google.firebase.components.ComponentDiscovery$c */
    /* loaded from: classes6.dex */
    public interface InterfaceC6451c<T> {
        /* renamed from: a */
        List<String> mo28028a(T t);
    }

    @VisibleForTesting
    public ComponentDiscovery(T t, InterfaceC6451c<T> interfaceC6451c) {
        this.f35811a = t;
        this.f35812b = interfaceC6451c;
    }

    @Nullable
    /* renamed from: b */
    public static ComponentRegistrar m28026b(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (ComponentRegistrar.class.isAssignableFrom(cls)) {
                return (ComponentRegistrar) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            }
            throw new InvalidRegistrarException(String.format("Class %s is not an instance of %s", str, f35809d));
        } catch (ClassNotFoundException unused) {
            Log.w(f35808c, String.format("Class %s is not an found.", str));
            return null;
        } catch (IllegalAccessException e) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s.", str), e);
        } catch (InstantiationException e2) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s.", str), e2);
        } catch (NoSuchMethodException e3) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s", str), e3);
        } catch (InvocationTargetException e4) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s", str), e4);
        }
    }

    public static ComponentDiscovery<Context> forContext(Context context, Class<? extends Service> cls) {
        return new ComponentDiscovery<>(context, new C6450b(cls));
    }

    @Deprecated
    public List<ComponentRegistrar> discover() {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it2 = this.f35812b.mo28028a(this.f35811a).iterator();
        while (it2.hasNext()) {
            try {
                ComponentRegistrar m28026b = m28026b(it2.next());
                if (m28026b != null) {
                    arrayList.add(m28026b);
                }
            } catch (InvalidRegistrarException e) {
                Log.w(f35808c, "Invalid component registrar.", e);
            }
        }
        return arrayList;
    }

    public List<Provider<ComponentRegistrar>> discoverLazy() {
        ArrayList arrayList = new ArrayList();
        for (final String str : this.f35812b.mo28028a(this.f35811a)) {
            arrayList.add(new Provider() { // from class: com.sunia.HTREnginev2.a7e
                @Override // com.google.firebase.inject.Provider
                public final Object get() {
                    ComponentRegistrar m28026b;
                    m28026b = ComponentDiscovery.m28026b(str);
                    return m28026b;
                }
            });
        }
        return arrayList;
    }
}
