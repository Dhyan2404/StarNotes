package com.onyx.android.sdk.genericshape;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/CreateAttr;", "", "()V", "selectionPointIndex", "", "getSelectionPointIndex", "()I", "setSelectionPointIndex", "(I)V", "selectionPointType", "Lcom/onyx/android/sdk/genericshape/SelectionPointType;", "getSelectionPointType", "()Lcom/onyx/android/sdk/genericshape/SelectionPointType;", "setSelectionPointType", "(Lcom/onyx/android/sdk/genericshape/SelectionPointType;)V", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CreateAttr {
    private int selectionPointIndex;

    @NotNull
    private SelectionPointType selectionPointType = SelectionPointType.SCALE;

    public final int getSelectionPointIndex() {
        return this.selectionPointIndex;
    }

    @NotNull
    public final SelectionPointType getSelectionPointType() {
        return this.selectionPointType;
    }

    public final void setSelectionPointIndex(int i) {
        this.selectionPointIndex = i;
    }

    public final void setSelectionPointType(@NotNull SelectionPointType selectionPointType) {
        Intrinsics.checkNotNullParameter(selectionPointType, "<set-?>");
        this.selectionPointType = selectionPointType;
    }
}
