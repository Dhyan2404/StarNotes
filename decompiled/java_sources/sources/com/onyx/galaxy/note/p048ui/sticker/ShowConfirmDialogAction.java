package com.onyx.galaxy.note.p048ui.sticker;

import android.app.Dialog;
import android.content.Context;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u000f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/sticker/ShowConfirmDialogAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Landroid/content/Context;", "e", "Landroid/content/Context;", "activityContext", "", C6997f.f39671c, "I", "titleResId", C6998g.f39679a, "messageResId", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;II)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ShowConfirmDialogAction extends RxBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: f, reason: from kotlin metadata */
    public final int titleResId;

    /* renamed from: g, reason: from kotlin metadata */
    public final int messageResId;

    /* renamed from: com.onyx.galaxy.note.ui.sticker.ShowConfirmDialogAction$a */
    /* loaded from: classes9.dex */
    public static final class C12823a<T, R> implements Function {
        public C12823a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull ShowConfirmDialogAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ShowConfirmDialogAction.this.m51411l();
        }
    }

    public ShowConfirmDialogAction(@NotNull Context activityContext, int i, int i2) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        this.activityContext = activityContext;
        this.titleResId = i;
        this.messageResId = i2;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> flatMap = Observable.just(this).flatMap(new C12823a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<Boolean> m51411l() {
        final ReplaySubject create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        new CommonDialog.Builder(this.activityContext).setTitle(this.titleResId).setMessage(this.messageResId).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.ui.sticker.ShowConfirmDialogAction$showConfirmDialog$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog dialog, @NotNull String editTextStr) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(editTextStr, "editTextStr");
                RxjavaKt.done(create, Boolean.TRUE);
            }
        }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.ui.sticker.ShowConfirmDialogAction$showConfirmDialog$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Dialog dialog) {
                invoke2(dialog);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Dialog dialog) {
                RxjavaKt.done(create, Boolean.FALSE);
            }
        }).create().show();
        return create;
    }
}
