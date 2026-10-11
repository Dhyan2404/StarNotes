package com.onyx.galaxy.note.common.extension;

import android.R;
import android.app.Activity;
import android.view.View;
import android.view.WindowManager;
import androidx.appcompat.widget.ActivityChooserModel;
import com.hjq.window.EasyWindow;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\"\u0010\u0000\u001a\u0006\u0012\u0002\b\u00030\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u000e\u0010\b\u001a\u00020\t*\u0006\u0012\u0002\b\u00030\u0001\u001a\u0010\u0010\n\u001a\u0004\u0018\u00010\u0005*\u0006\u0012\u0002\b\u00030\u0001\u001a\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0005*\u0006\u0012\u0002\b\u00030\u0001\u001a\u000e\u0010\f\u001a\u00020\r*\u0006\u0012\u0002\b\u00030\u0001\u001a\"\u0010\u000e\u001a\u00020\t*\u0006\u0012\u0002\b\u00030\u00012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0010\u001a.\u0010\u0011\u001a\u00020\u0007*\u0006\u0012\u0002\b\u00030\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007¨\u0006\u0015"}, m61528d2 = {"createIndicatorWindow", "Lcom/hjq/window/EasyWindow;", ActivityChooserModel.f1429r, "Landroid/app/Activity;", "contentView", "Landroid/view/View;", "duration", "", "addFullScreenFlag", "", "getSafeContentView", "getSafeDecorView", "getSafeWindowParams", "Landroid/view/WindowManager$LayoutParams;", "requireSafeContentView", BreakpointSQLiteHelper.f39283i, "Lkotlin/Function1;", "setXYOffset", "viewWidth", "xOffset", "yOffset", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class EasyWindowKt {
    public static final void addFullScreenFlag(@NotNull EasyWindow<?> easyWindow) {
        Intrinsics.checkNotNullParameter(easyWindow, "<this>");
        easyWindow.addWindowFlags(1792);
    }

    @NotNull
    public static final EasyWindow<?> createIndicatorWindow(@NotNull Activity activity, @NotNull View contentView, int i) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(contentView, "contentView");
        EasyWindow<?> with = EasyWindow.with(activity);
        Intrinsics.checkNotNull(with);
        addFullScreenFlag(with);
        with.setContentView(contentView);
        with.setDuration(i);
        with.setGravity(8388659);
        with.setAnimStyle(R.style.Animation.Toast);
        with.setOutsideTouchable(true);
        Intrinsics.checkNotNullExpressionValue(with, "apply(...)");
        return with;
    }

    @Nullable
    public static final View getSafeContentView(@NotNull EasyWindow<?> easyWindow) {
        Intrinsics.checkNotNullParameter(easyWindow, "<this>");
        if (getSafeDecorView(easyWindow) == null) {
            return null;
        }
        return easyWindow.getContentView();
    }

    @Nullable
    public static final View getSafeDecorView(@NotNull EasyWindow<?> easyWindow) {
        Intrinsics.checkNotNullParameter(easyWindow, "<this>");
        View decorView = easyWindow.getDecorView();
        if (decorView == null) {
            return null;
        }
        return decorView;
    }

    @NotNull
    public static final WindowManager.LayoutParams getSafeWindowParams(@NotNull EasyWindow<?> easyWindow) {
        Intrinsics.checkNotNullParameter(easyWindow, "<this>");
        WindowManager.LayoutParams windowParams = easyWindow.getWindowParams();
        return windowParams == null ? new WindowManager.LayoutParams() : windowParams;
    }

    public static final void requireSafeContentView(@NotNull EasyWindow<?> easyWindow, @NotNull Function1<? super View, Unit> block) {
        Intrinsics.checkNotNullParameter(easyWindow, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        View safeContentView = getSafeContentView(easyWindow);
        if (safeContentView == null) {
            return;
        }
        block.invoke(safeContentView);
    }

    public static final int setXYOffset(@NotNull EasyWindow<?> easyWindow, @NotNull View contentView, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(easyWindow, "<this>");
        Intrinsics.checkNotNullParameter(contentView, "contentView");
        if (i <= 0) {
            contentView.measure(View.MeasureSpec.makeMeasureSpec(1, 0), View.MeasureSpec.makeMeasureSpec(1, 0));
            i = contentView.getMeasuredWidth();
        } else if (getSafeWindowParams(easyWindow).x == i2 - (i / 2) && getSafeWindowParams(easyWindow).y == i3) {
            return i;
        }
        if (easyWindow.getWindowParams() != null) {
            easyWindow.setXOffset(i2 - (i / 2));
            easyWindow.setYOffset(i3);
        }
        return i;
    }
}
