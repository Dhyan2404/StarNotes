package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;", "", "virtualPageBoxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "sliceInfo", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "contentSliceInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V", "getContentSliceInfo", "()Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "setContentSliceInfo", "(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V", "getSliceInfo", "setSliceInfo", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualPageBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PageSliceInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private SliceInfo contentSliceInfo;

    @NotNull
    private SliceInfo sliceInfo;

    @NotNull
    private BoxInfo virtualPageBoxInfo;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\b¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo$Companion;", "", "()V", "createDisplayInfo", "Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;", "virtualPageBoxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "sliceInfo", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "contentSliceInfo", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PageSliceInfo createDisplayInfo(@NotNull BoxInfo virtualPageBoxInfo, @NotNull SliceInfo sliceInfo, @Nullable SliceInfo contentSliceInfo) {
            Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
            Intrinsics.checkNotNullParameter(sliceInfo, "sliceInfo");
            return new PageSliceInfo(virtualPageBoxInfo, sliceInfo.copy(), contentSliceInfo != null ? contentSliceInfo.copy() : null);
        }

        private Companion() {
        }
    }

    public PageSliceInfo(@NotNull BoxInfo virtualPageBoxInfo, @NotNull SliceInfo sliceInfo, @Nullable SliceInfo sliceInfo2) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(sliceInfo, "sliceInfo");
        this.virtualPageBoxInfo = virtualPageBoxInfo;
        this.sliceInfo = sliceInfo;
        this.contentSliceInfo = sliceInfo2;
    }

    @Nullable
    public final SliceInfo getContentSliceInfo() {
        return this.contentSliceInfo;
    }

    @NotNull
    public final SliceInfo getSliceInfo() {
        return this.sliceInfo;
    }

    @NotNull
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    public final void setContentSliceInfo(@Nullable SliceInfo sliceInfo) {
        this.contentSliceInfo = sliceInfo;
    }

    public final void setSliceInfo(@NotNull SliceInfo sliceInfo) {
        Intrinsics.checkNotNullParameter(sliceInfo, "<set-?>");
        this.sliceInfo = sliceInfo;
    }

    public final void setVirtualPageBoxInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.virtualPageBoxInfo = boxInfo;
    }
}
