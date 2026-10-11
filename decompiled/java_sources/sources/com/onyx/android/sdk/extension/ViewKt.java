package com.onyx.android.sdk.extension;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.jakewharton.rxbinding4.view.RxView;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.extension.ViewKt;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0012\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\b\u001a\u00020\t\u001a\u0012\u0010\n\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f\u001a\u001c\u0010\r\u001a\u00020\u0006*\u00020\u00072\b\b\u0002\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0010\u001a\u0014\u0010\u0011\u001a\u00020\u0012*\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u001a\u0014\u0010\u0015\u001a\u00020\u0012*\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u001a\u0010\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0017*\u00020\u0007\u001a\u0012\u0010\u0018\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010\u001a\u0012\u0010\u0019\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001a"}, m61528d2 = {"DEFAULT_CLICK_DURATION", "", "DEFAULT_LONG_CLICK_DURATION", "DEFAULT_QUICK_CLICK_DURATION", "DEFAULT_SHORT_CLICK_DURATION", "adjustStatusBarMargin", "", "Landroid/view/View;", "defaultTopMargin", "", "applyPaddingOnStatusBarChanges", ActivityChooserModel.f1429r, "Landroid/app/Activity;", OnyxStatisticConstant.EVENT_TYPE_CLICK, "duration", "clickListener", "Landroid/view/View$OnClickListener;", "isCoveredByNavigationBar", "", "insets", "Landroidx/core/view/WindowInsetsCompat;", "isCoveredByStatusBar", "post", "Lio/reactivex/rxjava3/core/Observable;", "quickClick", "shortClick", "sdk-uicommon_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\ncom/onyx/android/sdk/extension/ViewKt\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,89:1\n162#2,8:90\n*S KotlinDebug\n*F\n+ 1 View.kt\ncom/onyx/android/sdk/extension/ViewKt\n*L\n86#1:90,8\n*E\n"})
/* loaded from: classes7.dex */
public final class ViewKt {
    public static final long DEFAULT_CLICK_DURATION = 500;
    public static final long DEFAULT_LONG_CLICK_DURATION = 1000;
    public static final long DEFAULT_QUICK_CLICK_DURATION = 100;
    public static final long DEFAULT_SHORT_CLICK_DURATION = 200;

    /* renamed from: com.onyx.android.sdk.extension.ViewKt$a */
    /* loaded from: classes7.dex */
    public static final class C7388a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ View.OnClickListener f42099e;

        /* renamed from: f */
        public final /* synthetic */ View f42100f;

        public C7388a(View.OnClickListener onClickListener, View view) {
            this.f42099e = onClickListener;
            this.f42100f = view;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f42099e.onClick(this.f42100f);
        }
    }

    public static final void adjustStatusBarMargin(@NotNull final View view, final int i) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewCompat.setOnApplyWindowInsetsListener(view, new OnApplyWindowInsetsListener() { // from class: com.sunia.HTREnginev2.w3o
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                WindowInsetsCompat m33034d;
                m33034d = ViewKt.m33034d(view, i, view2, windowInsetsCompat);
                return m33034d;
            }
        });
    }

    public static final void applyPaddingOnStatusBarChanges(@NotNull View view, @NotNull final Activity activity) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(activity, "activity");
        ViewCompat.setOnApplyWindowInsetsListener(view, new OnApplyWindowInsetsListener() { // from class: com.sunia.HTREnginev2.y3o
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                WindowInsetsCompat m33035e;
                m33035e = ViewKt.m33035e(activity, view2, windowInsetsCompat);
                return m33035e;
            }
        });
    }

    public static final void click(@NotNull View view, long j, @NotNull View.OnClickListener clickListener) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(clickListener, "clickListener");
        RxView.clicks(view).throttleFirst(j, TimeUnit.MILLISECONDS).doOnNext(new C7388a(clickListener, view)).subscribe();
    }

    public static /* synthetic */ void click$default(View view, long j, View.OnClickListener onClickListener, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 500;
        }
        click(view, j, onClickListener);
    }

    /* renamed from: d */
    public static final WindowInsetsCompat m33034d(View this_adjustStatusBarMargin, int i, View view, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(this_adjustStatusBarMargin, "$this_adjustStatusBarMargin");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(insets, "insets");
        if (!isCoveredByStatusBar(view, insets)) {
            return insets;
        }
        int i2 = insets.getInsets(WindowInsetsCompat.Type.statusBars()).top;
        ViewGroup.LayoutParams layoutParams = this_adjustStatusBarMargin.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = i + i2;
            this_adjustStatusBarMargin.setLayoutParams(layoutParams);
        }
        return insets;
    }

    /* renamed from: e */
    public static final WindowInsetsCompat m33035e(Activity activity, View view, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(activity, "$activity");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(insets, "insets");
        view.setPadding(view.getPaddingLeft(), Math.max(insets.getInsets(WindowInsetsCompat.Type.statusBars()).top, DeviceFactory.INSTANCE.getCurrentDevice().getDeviceTopPaddingHeight(activity)), view.getPaddingRight(), view.getPaddingBottom());
        return insets;
    }

    /* renamed from: f */
    public static final void m33036f(View this_post, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this_post, "$this_post");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        com.onyx.android.sdk.base.extension.ViewKt.postSelf(this_post, new Function1<View, Unit>() { // from class: com.onyx.android.sdk.extension.ViewKt$post$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull View it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                RxjavaKt.done(emitter, it2);
            }
        });
    }

    public static final boolean isCoveredByNavigationBar(@NotNull View view, @Nullable WindowInsetsCompat windowInsetsCompat) {
        int i;
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (windowInsetsCompat == null || (i = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).bottom) <= 0) {
            return false;
        }
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return iArr[1] + view.getHeight() > view.getRootView().getHeight() - i;
    }

    public static final boolean isCoveredByStatusBar(@NotNull View view, @Nullable WindowInsetsCompat windowInsetsCompat) {
        int i;
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (windowInsetsCompat == null || (i = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.statusBars()).top) == 0) {
            return false;
        }
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return iArr[1] < i;
    }

    @NotNull
    public static final Observable<View> post(@NotNull final View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Observable<View> create = Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.u3o
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                ViewKt.m33036f(view, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return create;
    }

    public static final void quickClick(@NotNull View view, @NotNull View.OnClickListener clickListener) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(clickListener, "clickListener");
        click(view, 100L, clickListener);
    }

    public static final void shortClick(@NotNull View view, @NotNull View.OnClickListener clickListener) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(clickListener, "clickListener");
        click(view, 200L, clickListener);
    }
}
