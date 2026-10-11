package com.onyx.galaxy.note.editor.view.popup;

import android.graphics.Point;
import android.graphics.Rect;
import android.util.Size;
import android.view.View;
import android.view.animation.Animation;
import androidx.core.content.res.ResourcesCompat;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.editor.view.popup.BaseShortcutPopup;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0016\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0014\u001a\u00020\f\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0002J\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0002J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u0011\u001a\u00020\u0010H\u0002R\u0014\u0010\u0014\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "visible", "", "setVisible", "Landroid/graphics/Rect;", "limitRect", "isLeftSide", "showTop", "updatePosition", "showAsDropDownCenterByLimitRect", "Landroid/view/View;", Constants.ELEMNAME_ANCHOR_STRING, "Landroid/graphics/Point;", "l", "", GoogleApiAvailabilityLight.f29016b, "q", "Landroid/view/View;", "anchorView", "r", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "transparentBackground", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;Z)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class BaseShortcutPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final View anchorView;

    /* renamed from: r, reason: from kotlin metadata */
    public final boolean transparentBackground;

    public /* synthetic */ BaseShortcutPopup(View view, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(view, (i & 2) != 0 ? false : z);
    }

    /* renamed from: m */
    public static final void m48572m(BaseShortcutPopup this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ViewKt.setViewVisibleOrInvisible(this$0.getContentView(), z);
    }

    /* renamed from: l */
    public final Point m48573l(View anchor) {
        Point point = new Point(0, 0);
        int[] drawingPosition = ViewKt.getDrawingPosition(anchor);
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        Size measureSize$default = ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null);
        anchor.getDrawingRect(new Rect());
        int i = drawingPosition[0];
        Rect rect = new Rect(i, drawingPosition[1], anchor.getMeasuredWidth() + i, drawingPosition[1] + anchor.getMeasuredHeight());
        float dimension = getContext().getResources().getDimension(C7384R.dimen.dp_20);
        point.y = rect.bottom;
        point.x = (rect.left + ((int) (anchor.getWidth() / 2.0f))) - ((int) ((measureSize$default.getWidth() + dimension) / 2.0f));
        return point;
    }

    /* renamed from: n */
    public final int m48574n() {
        ResManager resManager;
        int i;
        if (this.transparentBackground) {
            resManager = ResManager.INSTANCE;
            i = C7384R.dimen.dp_4;
        } else {
            resManager = ResManager.INSTANCE;
            i = C7384R.dimen.dp_20;
        }
        return (int) resManager.getDimension(i);
    }

    public final void setVisible(final boolean visible) {
        if (ViewKt.isVisible(getContentView()) == visible) {
            return;
        }
        setBackgroundDrawable(visible ? ResourcesCompat.getDrawable(ResManager.INSTANCE.getResources(), C10651R.drawable.popup_shadow_bg, null) : null);
        Animation animation = getContentView().getAnimation();
        if (animation != null) {
            animation.cancel();
        }
        getContentView().postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.ho
            @Override // java.lang.Runnable
            public final void run() {
                BaseShortcutPopup.m48572m(BaseShortcutPopup.this, visible);
            }
        }, visible ? 100L : 0L);
    }

    public final void showAsDropDownCenterByLimitRect(@NotNull Rect limitRect) {
        Intrinsics.checkNotNullParameter(limitRect, "limitRect");
        Point m48573l = m48573l(this.anchorView);
        int dimension = (int) getContext().getResources().getDimension(C7384R.dimen.dp_20);
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        Size measureSize$default = ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null);
        int i = m48573l.x;
        int i2 = limitRect.left;
        if (i < i2) {
            m48573l.x = i2;
        }
        int width = m48573l.x + measureSize$default.getWidth();
        int i3 = limitRect.right;
        if (width > i3) {
            m48573l.x = i3 - (measureSize$default.getWidth() + dimension);
        }
        int i4 = m48573l.y;
        int i5 = limitRect.top;
        if (i4 < i5) {
            m48573l.y = i5;
        }
        int height = m48573l.y + measureSize$default.getHeight();
        int i6 = limitRect.bottom;
        if (height > i6) {
            m48573l.y = i6 - (measureSize$default.getHeight() + dimension);
        }
        showAtLocation(this.anchorView, 0, m48573l.x, m48573l.y);
    }

    public final void showTop(@NotNull Rect limitRect, boolean isLeftSide) {
        Intrinsics.checkNotNullParameter(limitRect, "limitRect");
        int m48574n = m48574n();
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        Size measureSize$default = ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null);
        showAtLocation(this.anchorView, 0, isLeftSide ? limitRect.left : limitRect.right - (measureSize$default.getWidth() + m48574n), limitRect.top);
    }

    public final void updatePosition(@NotNull Rect limitRect, boolean isLeftSide) {
        Intrinsics.checkNotNullParameter(limitRect, "limitRect");
        int m48574n = m48574n();
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        Size measureSize$default = ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null);
        update(isLeftSide ? limitRect.left : limitRect.right - (measureSize$default.getWidth() + m48574n), limitRect.top, -1, -1);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BaseShortcutPopup(@org.jetbrains.annotations.NotNull android.view.View r4, boolean r5) {
        /*
            r3 = this;
            java.lang.String r0 = "anchorView"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            android.content.Context r0 = r4.getContext()
            java.lang.String r1 = "getContext(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 2
            r2 = 0
            r3.<init>(r0, r2, r1, r2)
            r3.anchorView = r4
            r3.transparentBackground = r5
            if (r5 == 0) goto L23
            android.graphics.drawable.ColorDrawable r4 = new android.graphics.drawable.ColorDrawable
            r5 = 0
            r4.<init>(r5)
            r3.setBackgroundDrawable(r4)
            goto L32
        L23:
            com.onyx.android.sdk.base.utils.ResManager r4 = com.onyx.android.sdk.base.utils.ResManager.INSTANCE
            android.content.res.Resources r4 = r4.getResources()
            int r5 = com.onyx.galaxy.note.C10651R.drawable.popup_shadow_bg
            android.graphics.drawable.Drawable r4 = androidx.core.content.res.ResourcesCompat.getDrawable(r4, r5, r2)
            r3.setBackgroundDrawable(r4)
        L32:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.popup.BaseShortcutPopup.<init>(android.view.View, boolean):void");
    }
}
