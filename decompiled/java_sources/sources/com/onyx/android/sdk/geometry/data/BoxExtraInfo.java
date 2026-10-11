package com.onyx.android.sdk.geometry.data;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0015\u001a\u00020\u0000J\u0006\u0010\u0016\u001a\u00020\u0017R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;", "", "()V", "boxCellInfo", "Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;", "getBoxCellInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;", "setBoxCellInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)V", "contentPath", "", "getContentPath", "()Ljava/lang/String;", "setContentPath", "(Ljava/lang/String;)V", "timeStamp", "", "getTimeStamp", "()J", "setTimeStamp", "(J)V", "copy", "updateVisibleTimeStamp", "", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BoxExtraInfo {

    @NotNull
    private String contentPath = "";

    @NotNull
    private BoxCellInfo boxCellInfo = new BoxCellInfo(0, 0, 3, null);
    private long timeStamp = System.currentTimeMillis();

    @NotNull
    public final BoxExtraInfo copy() {
        BoxExtraInfo boxExtraInfo = new BoxExtraInfo();
        boxExtraInfo.contentPath = this.contentPath;
        boxExtraInfo.boxCellInfo = BoxCellInfo.copy$default(this.boxCellInfo, 0, 0, 3, null);
        boxExtraInfo.timeStamp = this.timeStamp;
        return boxExtraInfo;
    }

    @NotNull
    public final BoxCellInfo getBoxCellInfo() {
        return this.boxCellInfo;
    }

    @NotNull
    public final String getContentPath() {
        return this.contentPath;
    }

    public final long getTimeStamp() {
        return this.timeStamp;
    }

    public final void setBoxCellInfo(@NotNull BoxCellInfo boxCellInfo) {
        Intrinsics.checkNotNullParameter(boxCellInfo, "<set-?>");
        this.boxCellInfo = boxCellInfo;
    }

    public final void setContentPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentPath = str;
    }

    public final void setTimeStamp(long j) {
        this.timeStamp = j;
    }

    public final void updateVisibleTimeStamp() {
        this.timeStamp = System.currentTimeMillis();
    }
}
