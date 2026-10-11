package com.onyx.android.sdk.universal.editor.handler.drag;

import com.onyx.android.sdk.base.data.DelegatedValueProvider;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ&\u0010\b\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0016R%\u0010\r\u001a\u00020\t*\b\u0012\u0004\u0012\u00020\u00030\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\n\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/drag/IrregularTrapezoidDragHandler;", "Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandler;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "selectionPoints", "startPoint", "stopPoint", "", "onDrag", "", "a", "Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;", "(Ljava/util/List;)Z", "isHypotSidesCrossed", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class IrregularTrapezoidDragHandler implements ShapeDragHandler {

    /* renamed from: b */
    public static final /* synthetic */ KProperty<Object>[] f52217b = {Reflection.property2(new PropertyReference2Impl(IrregularTrapezoidDragHandler.class, "isHypotSidesCrossed", "isHypotSidesCrossed(Ljava/util/List;)Z", 0))};

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final DelegatedValueProvider isHypotSidesCrossed = C10431a.f52219a;

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.drag.IrregularTrapezoidDragHandler$a */
    /* loaded from: classes8.dex */
    public static final class C10431a<CONTEXT, RESULT> implements DelegatedValueProvider {

        /* renamed from: a */
        public static final C10431a<CONTEXT, RESULT> f52219a = new C10431a<>();

        @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean provideValue(@NotNull List<TouchPoint> DelegatedValueProvider) {
            Intrinsics.checkNotNullParameter(DelegatedValueProvider, "$this$DelegatedValueProvider");
            float x = DelegatedValueProvider.get(0).getX() - DelegatedValueProvider.get(4).getX();
            float x2 = DelegatedValueProvider.get(3).getX() - DelegatedValueProvider.get(4).getX();
            MathUtils mathUtils = MathUtils.INSTANCE;
            return Boolean.valueOf((mathUtils.sameSignWith(Float.valueOf(x), Float.valueOf(x2)) ^ true) || (mathUtils.sameSignWith(Float.valueOf(DelegatedValueProvider.get(1).getX() - DelegatedValueProvider.get(4).getX()), Float.valueOf(DelegatedValueProvider.get(2).getX() - DelegatedValueProvider.get(4).getX())) ^ true) || ((DelegatedValueProvider.get(1).getX() > DelegatedValueProvider.get(0).getX() ? 1 : (DelegatedValueProvider.get(1).getX() == DelegatedValueProvider.get(0).getX() ? 0 : -1)) < 0 || (DelegatedValueProvider.get(2).getX() > DelegatedValueProvider.get(3).getX() ? 1 : (DelegatedValueProvider.get(2).getX() == DelegatedValueProvider.get(3).getX() ? 0 : -1)) < 0));
        }

        @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
        public RESULT getValue(CONTEXT context, @NotNull KProperty<?> kProperty) {
            return (RESULT) DelegatedValueProvider.DefaultImpls.getValue(this, context, kProperty);
        }
    }

    /* renamed from: a */
    public final boolean m40983a(List<TouchPoint> list) {
        return ((Boolean) this.isHypotSidesCrossed.getValue(list, f52217b[0])).booleanValue();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.drag.ShapeDragHandler
    public void onDrag(@NotNull List<TouchPoint> selectionPoints, @NotNull TouchPoint startPoint, @NotNull TouchPoint stopPoint) {
        Intrinsics.checkNotNullParameter(selectionPoints, "selectionPoints");
        Intrinsics.checkNotNullParameter(startPoint, "startPoint");
        Intrinsics.checkNotNullParameter(stopPoint, "stopPoint");
        int indexOf = selectionPoints.indexOf(startPoint);
        float x = stopPoint.getX() - startPoint.getX();
        float y = stopPoint.getY() - startPoint.getY();
        switch (indexOf) {
            case 0:
                if (GeometryUtils.INSTANCE.willXSideChangeAfterOffset(selectionPoints.get(1), selectionPoints.get(0), Float.valueOf(x))) {
                    return;
                }
                selectionPoints.get(0).offset(x, y);
                selectionPoints.get(1).offset(0.0f, y);
                return;
            case 1:
                if (GeometryUtils.INSTANCE.willXSideChangeAfterOffset(selectionPoints.get(0), selectionPoints.get(1), Float.valueOf(x))) {
                    return;
                }
                selectionPoints.get(1).offset(x, y);
                selectionPoints.get(0).offset(0.0f, y);
                return;
            case 2:
                if (GeometryUtils.INSTANCE.willXSideChangeAfterOffset(selectionPoints.get(3), selectionPoints.get(2), Float.valueOf(x))) {
                    return;
                }
                selectionPoints.get(2).offset(x, y);
                selectionPoints.get(3).offset(0.0f, y);
                return;
            case 3:
                if (GeometryUtils.INSTANCE.willXSideChangeAfterOffset(selectionPoints.get(2), selectionPoints.get(3), Float.valueOf(x))) {
                    return;
                }
                selectionPoints.get(3).offset(x, y);
                selectionPoints.get(2).offset(0.0f, y);
                return;
            case 4:
                selectionPoints.get(0).offset(0.0f, y);
                selectionPoints.get(1).offset(0.0f, y);
                return;
            case 5:
                selectionPoints.get(1).offset(x, 0.0f);
                selectionPoints.get(2).offset(x, 0.0f);
                if (m40983a(selectionPoints)) {
                    float f = -x;
                    selectionPoints.get(1).offset(f, 0.0f);
                    selectionPoints.get(2).offset(f, 0.0f);
                    return;
                }
                return;
            case 6:
                selectionPoints.get(2).offset(0.0f, y);
                selectionPoints.get(3).offset(0.0f, y);
                return;
            case 7:
                selectionPoints.get(0).offset(x, 0.0f);
                selectionPoints.get(3).offset(x, 0.0f);
                if (m40983a(selectionPoints)) {
                    float f2 = -x;
                    selectionPoints.get(0).offset(f2, 0.0f);
                    selectionPoints.get(3).offset(f2, 0.0f);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
