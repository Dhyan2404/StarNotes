package com.bumptech.glide;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import com.onyx.android.sdk.data.glide.SvgLibraryGlideModule;
import com.onyx.galaxy.note.common.glide.NoteAppGlideModule;
import com.sunia.HTREnginev2.xyg;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class GeneratedAppGlideModuleImpl extends GeneratedAppGlideModule {

    /* renamed from: a */
    public final NoteAppGlideModule f14243a = new NoteAppGlideModule();

    public GeneratedAppGlideModuleImpl(Context context) {
        if (Log.isLoggable("Glide", 3)) {
            Log.d("Glide", "Discovered AppGlideModule from annotation: com.onyx.galaxy.note.common.glide.NoteAppGlideModule");
            Log.d("Glide", "Discovered LibraryGlideModule from annotation: com.onyx.android.sdk.data.glide.SvgLibraryGlideModule");
        }
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    @NonNull
    /* renamed from: a */
    public Set<Class<?>> mo8551a() {
        return Collections.emptySet();
    }

    @Override // com.bumptech.glide.module.AppGlideModule, com.sunia.HTREnginev2.InterfaceC13872id
    public void applyOptions(@NonNull Context context, @NonNull GlideBuilder glideBuilder) {
        this.f14243a.applyOptions(context, glideBuilder);
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public xyg mo8552b() {
        return new xyg();
    }

    @Override // com.bumptech.glide.module.AppGlideModule
    public boolean isManifestParsingEnabled() {
        return this.f14243a.isManifestParsingEnabled();
    }

    @Override // com.bumptech.glide.module.LibraryGlideModule, com.sunia.HTREnginev2.ojl
    public void registerComponents(@NonNull Context context, @NonNull Glide glide, @NonNull Registry registry) {
        new SvgLibraryGlideModule().registerComponents(context, glide, registry);
        this.f14243a.registerComponents(context, glide, registry);
    }
}
