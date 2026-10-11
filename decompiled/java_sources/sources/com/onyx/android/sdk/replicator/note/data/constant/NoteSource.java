package com.onyx.android.sdk.replicator.note.data.constant;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/constant/NoteSource;", "", "()V", "DEFAULT_SOURCE", "", "getDEFAULT_SOURCE", "()Ljava/lang/String;", "setDEFAULT_SOURCE", "(Ljava/lang/String;)V", "LOCAL_UPDATE_SOURCE", "getLOCAL_UPDATE_SOURCE", "setLOCAL_UPDATE_SOURCE", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteSource {

    @NotNull
    public static final NoteSource INSTANCE = new NoteSource();

    @NotNull
    private static String DEFAULT_SOURCE = "Local";

    @NotNull
    private static String LOCAL_UPDATE_SOURCE = "Local_Update";

    private NoteSource() {
    }

    @NotNull
    public final String getDEFAULT_SOURCE() {
        return DEFAULT_SOURCE;
    }

    @NotNull
    public final String getLOCAL_UPDATE_SOURCE() {
        return LOCAL_UPDATE_SOURCE;
    }

    public final void setDEFAULT_SOURCE(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        DEFAULT_SOURCE = str;
    }

    public final void setLOCAL_UPDATE_SOURCE(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        LOCAL_UPDATE_SOURCE = str;
    }
}
