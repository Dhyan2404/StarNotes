package com.google.firebase.emulators;

import androidx.annotation.NonNull;

/* loaded from: classes6.dex */
public final class EmulatedServiceSettings {

    /* renamed from: a */
    public final String f35849a;

    /* renamed from: b */
    public final int f35850b;

    public EmulatedServiceSettings(@NonNull String str, int i) {
        this.f35849a = str;
        this.f35850b = i;
    }

    public String getHost() {
        return this.f35849a;
    }

    public int getPort() {
        return this.f35850b;
    }
}
