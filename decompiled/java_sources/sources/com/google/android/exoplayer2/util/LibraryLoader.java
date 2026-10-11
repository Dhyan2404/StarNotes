package com.google.android.exoplayer2.util;

import java.util.Arrays;

/* loaded from: classes5.dex */
public abstract class LibraryLoader {

    /* renamed from: d */
    public static final String f28369d = "LibraryLoader";

    /* renamed from: a */
    public String[] f28370a;

    /* renamed from: b */
    public boolean f28371b;

    /* renamed from: c */
    public boolean f28372c;

    public LibraryLoader(String... strArr) {
        this.f28370a = strArr;
    }

    public synchronized boolean isAvailable() {
        if (this.f28371b) {
            return this.f28372c;
        }
        this.f28371b = true;
        try {
            for (String str : this.f28370a) {
                loadLibrary(str);
            }
            this.f28372c = true;
        } catch (UnsatisfiedLinkError unused) {
            String valueOf = String.valueOf(Arrays.toString(this.f28370a));
            Log.m21493w(f28369d, valueOf.length() != 0 ? "Failed to load ".concat(valueOf) : new String("Failed to load "));
        }
        return this.f28372c;
    }

    public abstract void loadLibrary(String str);

    public synchronized void setLibraries(String... strArr) {
        Assertions.checkState(!this.f28371b, "Cannot set libraries after loading");
        this.f28370a = strArr;
    }
}
