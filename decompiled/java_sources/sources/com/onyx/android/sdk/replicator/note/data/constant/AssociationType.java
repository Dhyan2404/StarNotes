package com.onyx.android.sdk.replicator.note.data.constant;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/constant/AssociationType;", "", "()V", "DISABLE_FAVORITE_TYPE", "", "getDISABLE_FAVORITE_TYPE", "()[I", "FAVORITE", "", "GROUP", "INVALID", "MEMO", "NONE", "READING", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class AssociationType {
    public static final int FAVORITE = 4;
    public static final int GROUP = 3;
    public static final int INVALID = -1;
    public static final int MEMO = 2;
    public static final int NONE = 0;
    public static final int READING = 1;

    @NotNull
    public static final AssociationType INSTANCE = new AssociationType();

    @NotNull
    private static final int[] DISABLE_FAVORITE_TYPE = {-1, 2};

    private AssociationType() {
    }

    @NotNull
    public final int[] getDISABLE_FAVORITE_TYPE() {
        return DISABLE_FAVORITE_TYPE;
    }
}
