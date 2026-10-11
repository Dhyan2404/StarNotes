package com.onyx.android.sdk.note.common.data.erase;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/erase/EraseType;", "", "()V", "DEFAULT_ERASER", "", "ERASER_AREA", "ERASER_AREA_NAME", "", "ERASER_MOVE", "ERASER_MOVE_NAME", "ERASER_NONE", "ERASER_STROKE", "ERASER_STROKE_NAME", "getEraseNmeByType", "type", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class EraseType {
    public static final int DEFAULT_ERASER = 1;
    public static final int ERASER_AREA = 2;

    @NotNull
    public static final String ERASER_AREA_NAME = "select_erasure";
    public static final int ERASER_MOVE = 1;

    @NotNull
    public static final String ERASER_MOVE_NAME = "pixel_eraser";
    public static final int ERASER_NONE = -1;
    public static final int ERASER_STROKE = 0;

    @NotNull
    public static final String ERASER_STROKE_NAME = "stroke_erasure";

    @NotNull
    public static final EraseType INSTANCE = new EraseType();

    @NotNull
    public final String getEraseNmeByType(int type) {
        return type != 0 ? type != 1 ? ERASER_AREA_NAME : ERASER_MOVE_NAME : ERASER_STROKE_NAME;
    }
}
