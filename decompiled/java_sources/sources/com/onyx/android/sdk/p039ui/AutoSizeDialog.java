package com.onyx.android.sdk.p039ui;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import com.blankj.utilcode.util.ScreenUtils;
import com.blankj.utilcode.util.SizeUtils;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.uicommon.C8044R;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\u0012\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/app/Dialog;", "Landroid/view/View;", "view", "", "setContentView", "dismiss", "cancel", "autoSizeView", "a", "Landroid/view/ViewGroup;", "viewGroup", "b", "e", "Landroid/view/View;", "", C6997f.f39671c, "I", "viewOriginWidth", C6998g.f39679a, "autoFitTimerKey", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Companion", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class AutoSizeDialog extends Dialog {
    public static final long AUTO_FIT_TIMER_DELAY = 200;

    @NotNull
    public static final String AUTO_SIZE_VIEW_TAG = "autoSize";
    public static final float SCREEN_WIDTH_PERCENT = 0.9f;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public View autoSizeView;

    /* renamed from: f, reason: from kotlin metadata */
    public int viewOriginWidth;

    /* renamed from: g, reason: from kotlin metadata */
    public int autoFitTimerKey;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AutoSizeDialog(@NotNull Context context) {
        super(context, C8044R.style.commonDialog);
        Intrinsics.checkNotNullParameter(context, "context");
        this.autoFitTimerKey = -1;
    }

    /* renamed from: a */
    public final void m36354a(View autoSizeView) {
        if (autoSizeView == null || this.viewOriginWidth == 0) {
            return;
        }
        int appScreenWidth = ScreenUtils.getAppScreenWidth();
        ViewGroup.LayoutParams layoutParams = autoSizeView.getLayoutParams();
        int i = this.viewOriginWidth;
        if (i > appScreenWidth) {
            layoutParams.width = (int) (appScreenWidth * 0.9f);
        } else {
            layoutParams.width = i;
        }
        autoSizeView.setLayoutParams(layoutParams);
    }

    /* renamed from: b */
    public final View m36355b(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View view = ViewGroupKt.get(viewGroup, i);
            if (Intrinsics.areEqual(view.getTag(), AUTO_SIZE_VIEW_TAG)) {
                return view;
            }
            if (view instanceof ViewGroup) {
                m36355b((ViewGroup) view);
            }
        }
        return null;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        super.cancel();
        RxTimerUtil.INSTANCE.cancel(this.autoFitTimerKey);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        RxTimerUtil.INSTANCE.cancel(this.autoFitTimerKey);
    }

    @Override // android.app.Dialog
    public void setContentView(@NotNull View view) {
        View m36355b;
        Intrinsics.checkNotNullParameter(view, "view");
        super.setContentView(view);
        if (!(view instanceof ViewGroup) || (m36355b = m36355b((ViewGroup) view)) == null) {
            return;
        }
        this.autoSizeView = m36355b;
        this.viewOriginWidth = SizeUtils.getMeasuredWidth(m36355b);
        ViewKt.addOnLayoutChangeListener(view, new Function2<Rect, Rect, Unit>() { // from class: com.onyx.android.sdk.ui.AutoSizeDialog$setContentView$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Rect rect, Rect rect2) {
                invoke2(rect, rect2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Rect newRect, @NotNull Rect oldRect) {
                int i;
                Intrinsics.checkNotNullParameter(newRect, "newRect");
                Intrinsics.checkNotNullParameter(oldRect, "oldRect");
                if (Intrinsics.areEqual(newRect, oldRect)) {
                    return;
                }
                RxTimerUtil rxTimerUtil = RxTimerUtil.INSTANCE;
                i = AutoSizeDialog.this.autoFitTimerKey;
                rxTimerUtil.cancel(i);
                final AutoSizeDialog autoSizeDialog = AutoSizeDialog.this;
                autoSizeDialog.autoFitTimerKey = rxTimerUtil.timer(200L, TimeUnit.MILLISECONDS, new Function1<Long, Unit>() { // from class: com.onyx.android.sdk.ui.AutoSizeDialog$setContentView$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                        invoke(l.longValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(long j) {
                        View view2;
                        AutoSizeDialog autoSizeDialog2 = AutoSizeDialog.this;
                        view2 = autoSizeDialog2.autoSizeView;
                        autoSizeDialog2.m36354a(view2);
                    }
                });
            }
        });
        m36354a(this.autoSizeView);
    }
}
