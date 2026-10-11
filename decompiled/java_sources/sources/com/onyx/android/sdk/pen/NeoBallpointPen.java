package com.onyx.android.sdk.pen;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoBallpointPen;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/pen/NeoPen;", "segment", "", "defaultPenConfig", "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NeoBallpointPen {

    @NotNull
    public static final NeoBallpointPen INSTANCE = new NeoBallpointPen();

    public static /* synthetic */ NeoPen create$default(NeoBallpointPen neoBallpointPen, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return neoBallpointPen.create(z);
    }

    @NotNull
    public final NeoPen create(boolean segment) {
        return segment ? new NeoSegmentPathResultPen(0L, 1, null) : new NeoSinglePathResultPen(0L, 1, null);
    }

    @NotNull
    public final NeoPenConfig defaultPenConfig() {
        NeoPenConfig neoPenConfig = new NeoPenConfig();
        neoPenConfig.m72320setType(8);
        neoPenConfig.setSmoothLevel(0.2f);
        return neoPenConfig;
    }
}
