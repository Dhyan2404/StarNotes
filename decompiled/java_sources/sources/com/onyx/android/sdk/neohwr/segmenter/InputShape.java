package com.onyx.android.sdk.neohwr.segmenter;

import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;", "", "()V", PointConstant.POINT_FILE_END, "", "getPoints", "()[F", "setPoints", "([F)V", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class InputShape {

    @NotNull
    private float[] points = new float[0];

    @NotNull
    public final float[] getPoints() {
        return this.points;
    }

    public final void setPoints(@NotNull float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<set-?>");
        this.points = fArr;
    }
}
