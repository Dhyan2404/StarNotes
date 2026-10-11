package com.onyx.android.sdk.note.common.shape.extras;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.onyx.android.sdk.note.common.shape.extras.ShapeExtrasRender;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRenderFactory;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender;", GeoConstant.KEY_Universal_Shape_Type, "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeExtrasRenderFactory {

    @NotNull
    public static final ShapeExtrasRenderFactory INSTANCE = new ShapeExtrasRenderFactory();

    /* renamed from: com.onyx.android.sdk.note.common.shape.extras.ShapeExtrasRenderFactory$a */
    /* loaded from: classes8.dex */
    public static final class C7501a implements ShapeExtrasRender {

        /* renamed from: a */
        public static final C7501a f43685a = new C7501a();

        @Override // com.onyx.android.sdk.note.common.shape.extras.ShapeExtrasRender
        public final void draw(@NotNull Canvas canvas, @NotNull UniversalShape universalShape, @NotNull Matrix renderMatrix) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            Intrinsics.checkNotNullParameter(universalShape, "universalShape");
            Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        }

        @Override // com.onyx.android.sdk.note.common.shape.extras.ShapeExtrasRender
        @NotNull
        public Paint getDefaultDashLinePaint() {
            return ShapeExtrasRender.DefaultImpls.getDefaultDashLinePaint(this);
        }

        @Override // com.onyx.android.sdk.note.common.shape.extras.ShapeExtrasRender
        @NotNull
        public Paint getDefaultSolidLinePaint() {
            return ShapeExtrasRender.DefaultImpls.getDefaultSolidLinePaint(this);
        }
    }

    @NotNull
    public final ShapeExtrasRender create(@NotNull String universalShapeType) {
        Intrinsics.checkNotNullParameter(universalShapeType, "universalShapeType");
        return Intrinsics.areEqual(universalShapeType, UniversalShapeTypeConst.OVAL) ? new OvalExtrasRender() : C7501a.f43685a;
    }
}
