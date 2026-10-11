package com.sunia.HTREnginev2;

import android.content.Intent;
import androidx.fragment.app.Fragment;

/* loaded from: classes5.dex */
public final class bbp extends com.google.android.gms.common.internal.zag {

    /* renamed from: e */
    public final /* synthetic */ Intent f65611e;

    /* renamed from: f */
    public final /* synthetic */ Fragment f65612f;

    /* renamed from: g */
    public final /* synthetic */ int f65613g;

    public bbp(Intent intent, Fragment fragment, int i) {
        this.f65611e = intent;
        this.f65612f = fragment;
        this.f65613g = i;
    }

    @Override // com.google.android.gms.common.internal.zag
    public final void zaa() {
        Intent intent = this.f65611e;
        if (intent != null) {
            this.f65612f.startActivityForResult(intent, this.f65613g);
        }
    }
}
