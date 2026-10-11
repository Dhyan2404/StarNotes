package com.google.firebase.platforminfo;

import com.sunia.HTREnginev2.zxi;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes6.dex */
public class GlobalLibraryVersionRegistrar {

    /* renamed from: b */
    public static volatile GlobalLibraryVersionRegistrar f36036b;

    /* renamed from: a */
    public final Set<zxi> f36037a = new HashSet();

    public static GlobalLibraryVersionRegistrar getInstance() {
        GlobalLibraryVersionRegistrar globalLibraryVersionRegistrar = f36036b;
        if (globalLibraryVersionRegistrar == null) {
            synchronized (GlobalLibraryVersionRegistrar.class) {
                globalLibraryVersionRegistrar = f36036b;
                if (globalLibraryVersionRegistrar == null) {
                    globalLibraryVersionRegistrar = new GlobalLibraryVersionRegistrar();
                    f36036b = globalLibraryVersionRegistrar;
                }
            }
        }
        return globalLibraryVersionRegistrar;
    }

    /* renamed from: a */
    public Set<zxi> m28197a() {
        Set<zxi> unmodifiableSet;
        synchronized (this.f36037a) {
            unmodifiableSet = Collections.unmodifiableSet(this.f36037a);
        }
        return unmodifiableSet;
    }

    public void registerVersion(String str, String str2) {
        synchronized (this.f36037a) {
            this.f36037a.add(zxi.m58767a(str, str2));
        }
    }
}
