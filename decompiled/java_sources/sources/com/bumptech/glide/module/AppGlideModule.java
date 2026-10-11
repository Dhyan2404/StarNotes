package com.bumptech.glide.module;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.GlideBuilder;
import com.sunia.HTREnginev2.InterfaceC13872id;

/* loaded from: classes3.dex */
public abstract class AppGlideModule extends LibraryGlideModule implements InterfaceC13872id {
    public void applyOptions(@NonNull Context context, @NonNull GlideBuilder glideBuilder) {
    }

    public boolean isManifestParsingEnabled() {
        return true;
    }
}
