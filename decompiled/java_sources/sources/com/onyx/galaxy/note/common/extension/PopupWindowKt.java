package com.onyx.galaxy.note.common.extension;

import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Size;
import android.view.View;
import android.widget.PopupWindow;
import androidx.core.content.res.ResourcesCompat;
import com.onyx.android.sdk.base.data.DockPoint;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.PopupWindowKt;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000L\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0004\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\u001a8\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\n\u001a\n\u0010\u000b\u001a\u00020\f*\u00020\u0002\u001a>\u0010\r\u001a\u00020\f*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0016\u001a\u0012\u0010\u0018\u001a\u00020\f*\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u001a¨\u0006\u001b"}, m61528d2 = {"getWindowLocationSmartly", "Lcom/onyx/android/sdk/base/data/WindowLocation;", "Landroid/widget/PopupWindow;", "selectionRect", "Landroid/graphics/Rect;", "activityRect", "requiredMinWidth", "", "requiredMinHeight", "margin", "", "setDefaultAttribute", "", "showAtShapeTop", Constants.ELEMNAME_ANCHOR_STRING, "Landroid/view/View;", "rootView", "hitTestShape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "hitTestVirtualPage", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "extraOffsetX", "", "extraOffsetY", "updateOutsideTouchable", "touchable", "", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nPopupWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PopupWindow.kt\ncom/onyx/galaxy/note/common/extension/PopupWindowKt\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,119:1\n344#2,3:120\n1#3:123\n*S KotlinDebug\n*F\n+ 1 PopupWindow.kt\ncom/onyx/galaxy/note/common/extension/PopupWindowKt\n*L\n48#1:120,3\n*E\n"})
/* loaded from: classes9.dex */
public final class PopupWindowKt {
    /* renamed from: b */
    public static final void m45006b(PopupWindow this_updateOutsideTouchable, boolean z) {
        Intrinsics.checkNotNullParameter(this_updateOutsideTouchable, "$this_updateOutsideTouchable");
        this_updateOutsideTouchable.setTouchModal(z);
        this_updateOutsideTouchable.setOutsideTouchable(z);
        this_updateOutsideTouchable.update();
    }

    @NotNull
    public static final WindowLocation getWindowLocationSmartly(@NotNull PopupWindow popupWindow, @NotNull Rect selectionRect, @NotNull Rect activityRect, float f, float f2, @NotNull Number margin) {
        List listOf;
        List listOf2;
        Intrinsics.checkNotNullParameter(popupWindow, "<this>");
        Intrinsics.checkNotNullParameter(selectionRect, "selectionRect");
        Intrinsics.checkNotNullParameter(activityRect, "activityRect");
        Intrinsics.checkNotNullParameter(margin, "margin");
        int intValue = margin.intValue();
        int i = selectionRect.left;
        int width = activityRect.width() - selectionRect.right;
        int i2 = selectionRect.top;
        int height = activityRect.height() - selectionRect.bottom;
        DockPoint dockPoint = DockPoint.CENTER_RIGHT;
        DockPoint dockPoint2 = DockPoint.CENTER_LEFT;
        WindowLocation windowLocation = new WindowLocation(0, 0, intValue, 0, 0, dockPoint, dockPoint2, 27, null);
        WindowLocation windowLocation2 = new WindowLocation(0, 0, intValue, 0, 0, dockPoint2, dockPoint, 27, null);
        DockPoint dockPoint3 = DockPoint.BOTTOM_CENTER;
        DockPoint dockPoint4 = DockPoint.TOP_CENTER;
        WindowLocation windowLocation3 = new WindowLocation(0, 0, 0, intValue, 0, dockPoint3, dockPoint4, 23, null);
        WindowLocation windowLocation4 = new WindowLocation(0, 0, 0, intValue, 0, dockPoint4, dockPoint3, 23, null);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(i), Integer.valueOf(width), Integer.valueOf(i2), Integer.valueOf(height)});
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new WindowLocation[]{windowLocation2, windowLocation, windowLocation4, windowLocation3});
        Iterator it2 = listOf.iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        int intValue2 = ((Number) it2.next()).intValue();
        while (it2.hasNext()) {
            int intValue3 = ((Number) it2.next()).intValue();
            if (intValue2 < intValue3) {
                intValue2 = intValue3;
            }
        }
        return ((float) width) > f ? windowLocation : ((float) i) > f ? windowLocation2 : ((float) height) > f2 ? windowLocation3 : ((float) i2) > f2 ? windowLocation4 : (WindowLocation) listOf2.get(listOf.indexOf(Integer.valueOf(intValue2)));
    }

    public static /* synthetic */ WindowLocation getWindowLocationSmartly$default(PopupWindow popupWindow, Rect rect, Rect rect2, float f, float f2, Number number, int i, Object obj) {
        float f3 = (i & 4) != 0 ? 0.0f : f;
        float f4 = (i & 8) != 0 ? 0.0f : f2;
        if ((i & 16) != 0) {
            number = Float.valueOf(ResManager.INSTANCE.getDimension(C7384R.dimen.dp_20));
        }
        return getWindowLocationSmartly(popupWindow, rect, rect2, f3, f4, number);
    }

    public static final void setDefaultAttribute(@NotNull PopupWindow popupWindow) {
        Intrinsics.checkNotNullParameter(popupWindow, "<this>");
        popupWindow.setWidth(-2);
        popupWindow.setHeight(-2);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(ResourcesCompat.getDrawable(ResManager.INSTANCE.getResources(), C10651R.drawable.popup_shadow_bg, null));
        popupWindow.setAnimationStyle(C10651R.style.popupWindowAnimation);
    }

    public static final void showAtShapeTop(@NotNull PopupWindow popupWindow, @NotNull View anchor, @NotNull View rootView, @NotNull Shape hitTestShape, @NotNull BoxInfo hitTestVirtualPage, int i, int i2) {
        Intrinsics.checkNotNullParameter(popupWindow, "<this>");
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Intrinsics.checkNotNullParameter(rootView, "rootView");
        Intrinsics.checkNotNullParameter(hitTestShape, "hitTestShape");
        Intrinsics.checkNotNullParameter(hitTestVirtualPage, "hitTestVirtualPage");
        Size measureSize$default = ViewKt.getMeasureSize$default(rootView, 0, 0, 3, null);
        int width = measureSize$default.getWidth() / 2;
        RectF copy = RectFKt.copy(hitTestShape.getBoundingRect());
        ShapeOptions.INSTANCE.getTransformingMatrix(hitTestShape).mapRect(copy);
        BoxInfoUtils.INSTANCE.noteRenderMatrix(hitTestVirtualPage).mapRect(copy);
        Rect rect = new Rect();
        copy.roundOut(rect);
        int dimensionPixelSize = ResManager.INSTANCE.getDimensionPixelSize(C7384R.dimen.dp_15);
        int centerX = rect.centerX() - width;
        int height = (rect.top - measureSize$default.getHeight()) - dimensionPixelSize;
        if (centerX < 0) {
            centerX = 0;
        }
        if (height < 0) {
            height = rect.bottom + dimensionPixelSize;
        }
        Rect globalVisibleRect = ViewKt.globalVisibleRect(anchor);
        popupWindow.showAtLocation(anchor, 0, centerX + globalVisibleRect.left + i, height + globalVisibleRect.top + i2);
    }

    public static final void updateOutsideTouchable(@NotNull final PopupWindow popupWindow, final boolean z) {
        Intrinsics.checkNotNullParameter(popupWindow, "<this>");
        RxjavaKt.runInUI(new Runnable() { // from class: com.sunia.HTREnginev2.j5l
            @Override // java.lang.Runnable
            public final void run() {
                PopupWindowKt.m45006b(popupWindow, z);
            }
        });
    }
}
