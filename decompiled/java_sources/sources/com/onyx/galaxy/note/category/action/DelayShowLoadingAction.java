package com.onyx.galaxy.note.category.action;

import android.app.Dialog;
import android.content.Context;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u00162\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0016B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0006\u0010\u0005\u001a\u00020\u0004R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/DelayShowLoadingAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "dismiss", "Landroid/content/Context;", "e", "Landroid/content/Context;", "getActivityContext", "()Landroid/content/Context;", "activityContext", "", C6997f.f39671c, "J", "delayMs", "Landroid/app/Dialog;", C6998g.f39679a, "Landroid/app/Dialog;", "dialog", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;J)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DelayShowLoadingAction extends RxBaseAction<DelayShowLoadingAction> {
    public static final long DELAY_SHOW_LOADING_MS = 1500;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: f, reason: from kotlin metadata */
    public final long delayMs;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Dialog dialog;

    /* renamed from: com.onyx.galaxy.note.category.action.DelayShowLoadingAction$a */
    /* loaded from: classes9.dex */
    public static final class C10792a<T> implements Consumer {
        public C10792a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DelayShowLoadingAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadingDialog createLoadingDialog = ContextExtKt.createLoadingDialog(DelayShowLoadingAction.this.getActivityContext());
            DelayShowLoadingAction.this.dialog = createLoadingDialog;
            createLoadingDialog.show();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DelayShowLoadingAction$b */
    /* loaded from: classes9.dex */
    public static final class C10793b<T, R> implements Function {
        public C10793b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DelayShowLoadingAction apply(@NotNull DelayShowLoadingAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DelayShowLoadingAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DelayShowLoadingAction$c */
    /* loaded from: classes9.dex */
    public static final class C10794c<T> implements Consumer {
        public C10794c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DelayShowLoadingAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Dialog dialog = DelayShowLoadingAction.this.dialog;
            if (dialog != null) {
                dialog.dismiss();
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DelayShowLoadingAction$d */
    /* loaded from: classes9.dex */
    public static final class C10795d<T> implements Consumer {
        public C10795d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DelayShowLoadingAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DelayShowLoadingAction.this.dispose();
        }
    }

    public DelayShowLoadingAction(@NotNull Context activityContext, long j) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        this.activityContext = activityContext;
        this.delayMs = j;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<DelayShowLoadingAction> create() {
        Observable<DelayShowLoadingAction> map = Observable.just(this).delay(this.delayMs, TimeUnit.MILLISECONDS).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C10792a()).map(new C10793b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void dismiss() {
        Observable.just(this).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C10794c()).doOnNext(new C10795d()).subscribe();
    }

    @NotNull
    public final Context getActivityContext() {
        return this.activityContext;
    }
}
