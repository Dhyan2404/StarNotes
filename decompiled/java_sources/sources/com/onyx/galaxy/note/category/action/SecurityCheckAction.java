package com.onyx.galaxy.note.category.action;

import android.app.Activity;
import androidx.appcompat.widget.ActivityChooserModel;
import com.blankj.utilcode.util.AppUtils;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.SecurityUtils;
import com.onyx.galaxy.note.p048ui.dialog.SplashPolicyDialog;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/SecurityCheckAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Landroid/app/Activity;", "e", "Landroid/app/Activity;", "getActivity", "()Landroid/app/Activity;", ActivityChooserModel.f1429r, C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "getHasAgreementBeforeCheck", Constants.BOOLEAN_VALUE_SIG, "setHasAgreementBeforeCheck", "(Z)V", "hasAgreementBeforeCheck", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/app/Activity;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SecurityCheckAction extends RxBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Activity activity;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean hasAgreementBeforeCheck;

    public SecurityCheckAction(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activity = activity;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        if (!SecurityUtils.INSTANCE.isUserAgreementPassed()) {
            return m42544l();
        }
        this.hasAgreementBeforeCheck = true;
        Observable<Boolean> just = Observable.just(Boolean.TRUE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public final Activity getActivity() {
        return this.activity;
    }

    public final boolean getHasAgreementBeforeCheck() {
        return this.hasAgreementBeforeCheck;
    }

    /* renamed from: l */
    public final Observable<Boolean> m42544l() {
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        new SplashPolicyDialog(this.activity, new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.category.action.SecurityCheckAction$showUserAgreementDialog$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public final void invoke(boolean z) {
                SecurityUtils.INSTANCE.setUserAgreementPassed(z);
                if (z) {
                    RxjavaKt.done(create, Boolean.TRUE);
                } else {
                    RxjavaKt.done(create, Boolean.FALSE);
                    AppUtils.exitApp();
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }
        }).show();
        return create;
    }

    public final void setHasAgreementBeforeCheck(boolean z) {
        this.hasAgreementBeforeCheck = z;
    }
}
