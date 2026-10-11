package com.onyx.android.sdk.genericshape;

import android.graphics.Path;
import com.onyx.android.sdk.base.data.TouchPoint;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u000e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0016J\u0016\u0010\u0015\u001a\u00020\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0016R\"\u0010\u0003\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/Point;", "Lcom/onyx/android/sdk/genericshape/Geometry;", "()V", "coordinates", "", "Lcom/onyx/android/sdk/genericshape/Position;", "getCoordinates", "()[F", "setCoordinates", "([F)V", "type", "", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "loadRenderPath", "Landroid/graphics/Path;", "loadSelectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "updateBySelectionPoints", "", "list", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class Point extends Geometry {

    @Nullable
    private float[] coordinates;

    @NotNull
    private String type = "Point";

    @Nullable
    public final float[] getCoordinates() {
        return this.coordinates;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry
    @NotNull
    public String getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public Path loadRenderPath() {
        Path path = new Path();
        float[] fArr = this.coordinates;
        if (fArr == null) {
            return path;
        }
        path.moveTo(fArr[0], fArr[1]);
        return path;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public List<TouchPoint> loadSelectionPoints() {
        ArrayList arrayList = new ArrayList();
        float[] fArr = this.coordinates;
        if (fArr == null) {
            return arrayList;
        }
        arrayList.add(new TouchPoint(fArr[0], fArr[1]));
        return arrayList;
    }

    public final void setCoordinates(@Nullable float[] fArr) {
        this.coordinates = fArr;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry
    public void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    public void updateBySelectionPoints(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.coordinates = new float[]{list.get(0).getX(), list.get(1).getY()};
    }
}
