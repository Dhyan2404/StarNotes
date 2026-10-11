package com.onyx.galaxy.note.common.callback;

import android.content.ComponentCallbacks;
import android.content.res.Configuration;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.category.event.OrientationChangedEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/callback/OrientationListener;", "Landroid/content/ComponentCallbacks;", "()V", "onConfigurationChanged", "", "newConfig", "Landroid/content/res/Configuration;", "onLowMemory", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class OrientationListener implements ComponentCallbacks {

    @NotNull
    public static final OrientationListener INSTANCE = new OrientationListener();

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        GlobalBundle.INSTANCE.postEvent(new OrientationChangedEvent(newConfig.orientation));
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }
}
