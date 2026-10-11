package com.onyx.android.sdk.replicator.font;

import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/font/FontResourceList;", "", "Lcom/onyx/android/sdk/replicator/font/FontList;", "a", "Lcom/onyx/android/sdk/replicator/font/FontList;", "getResources", "()Lcom/onyx/android/sdk/replicator/font/FontList;", "setResources", "(Lcom/onyx/android/sdk/replicator/font/FontList;)V", "resources", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class FontResourceList {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public FontList resources = new FontList();

    @NotNull
    public final FontList getResources() {
        return this.resources;
    }

    public final void setResources(@NotNull FontList fontList) {
        Intrinsics.checkNotNullParameter(fontList, "<set-?>");
        this.resources = fontList;
    }
}
