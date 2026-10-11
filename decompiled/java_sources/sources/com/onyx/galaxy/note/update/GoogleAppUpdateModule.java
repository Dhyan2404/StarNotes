package com.onyx.galaxy.note.update;

import dagger.Module;
import dagger.Provides;
import dagger.hilt.InstallIn;
import dagger.hilt.android.components.ActivityComponent;
import dagger.hilt.android.scopes.ActivityScoped;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/galaxy/note/update/GoogleAppUpdateModule;", "", "()V", "bindGoogleAppUpdate", "Lcom/onyx/galaxy/note/update/IAppUpdateDetect;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@Module
@InstallIn({ActivityComponent.class})
/* loaded from: classes9.dex */
public final class GoogleAppUpdateModule {

    @NotNull
    public static final GoogleAppUpdateModule INSTANCE = new GoogleAppUpdateModule();

    @Provides
    @ActivityScoped
    @NotNull
    public final IAppUpdateDetect bindGoogleAppUpdate() {
        return new GoogleAppUpdateDetection();
    }
}
