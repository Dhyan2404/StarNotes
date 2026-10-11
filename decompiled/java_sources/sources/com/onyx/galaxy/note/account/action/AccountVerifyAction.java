package com.onyx.galaxy.note.account.action;

import android.content.Context;
import android.content.Intent;
import androidx.core.net.MailTo;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.BaseRxAccountAction;
import com.onyx.android.sdk.data.account.bean.AccountVerifyArgs;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.p039ui.DoubleOptionDialog;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.AccountVerifyAction;
import com.onyx.galaxy.note.common.data.AppConfigManager;
import com.onyx.galaxy.note.usercenter.p049ui.AccountVerifyFragment;
import com.onyx.galaxy.note.usercenter.p049ui.UserCenterActivity;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\f\u001a\u00020\t\u0012\b\b\u0002\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0017\u0010\u0018J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR'\u0010\u0016\u001a\u0015\u0012\f\u0012\n \u0012*\u0004\u0018\u00010\u00020\u00020\u0011¢\u0006\u0002\b\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "p", C4921e.f26528e, "m", "Landroid/content/Context;", "e", "Landroid/content/Context;", "uiContext", "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", C6997f.f39671c, "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "verifyArgs", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", C6998g.f39679a, "Lio/reactivex/rxjava3/subjects/PublishSubject;", MailTo.f5529g, Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AccountVerifyAction extends BaseRxAccountAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context uiContext;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final AccountVerifyArgs verifyArgs;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final PublishSubject<Boolean> subject;

    /* renamed from: com.onyx.galaxy.note.account.action.AccountVerifyAction$a */
    /* loaded from: classes9.dex */
    public static final class C10655a<T> implements Consumer {
        public C10655a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountVerifyAction.this.m41730p();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.AccountVerifyAction$b */
    /* loaded from: classes9.dex */
    public static final class C10656b<T, R> implements Function {
        public C10656b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AccountVerifyAction.this.subject;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AccountVerifyAction() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* renamed from: n */
    public static final void m41727n(AccountVerifyAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.subject.onComplete();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> doFinally = Observable.just(Unit.INSTANCE).doOnNext(new C10655a()).flatMap(new C10656b()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.x5
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                AccountVerifyAction.m41727n(AccountVerifyAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: m */
    public final void m41728m() {
        Intent intent = new Intent(this.uiContext, (Class<?>) UserCenterActivity.class);
        intent.putExtra(AccountVerifyPurpose.KEY_PURPOSE, AccountVerifyPurpose.PURPOSE_BIND_EMAIL_BEFORE_VERIFY);
        this.uiContext.startActivity(intent);
    }

    /* renamed from: o */
    public final void m41729o() {
        DoubleOptionDialog createWithWarningConfirmCloseStyle = DoubleOptionDialog.INSTANCE.createWithWarningConfirmCloseStyle(this.uiContext);
        createWithWarningConfirmCloseStyle.setMessageTextRes(C10651R.string.user_bind_email_to_retrieve_password);
        createWithWarningConfirmCloseStyle.setRightButtonTitleRes(C10651R.string.user_bind_email_to_retrieve_password_title);
        createWithWarningConfirmCloseStyle.setOnRightButtonClick(new Function0<Unit>() { // from class: com.onyx.galaxy.note.account.action.AccountVerifyAction$requestBindEmail$1$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                AccountVerifyAction.this.m41728m();
            }
        });
        createWithWarningConfirmCloseStyle.show();
    }

    /* renamed from: p */
    public final void m41730p() {
        OnyxAccountModel onyxAccount = AccountDataBundle.INSTANCE.getOnyxAccount();
        if (onyxAccount == null) {
            return;
        }
        if ((AppConfigManager.isSupportLoginType$default(AppConfigManager.INSTANCE, 1, null, 2, null) || StringKt.isNotEmpty(onyxAccount.getEmail())) ? false : true) {
            m41729o();
        } else {
            new AccountVerifyFragment().show(this.uiContext, this.verifyArgs, this.subject);
        }
    }

    public /* synthetic */ AccountVerifyAction(Context context, AccountVerifyArgs accountVerifyArgs, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Activity.INSTANCE.getFrontActivity() : context, (i & 2) != 0 ? new AccountVerifyArgs() : accountVerifyArgs);
    }

    public AccountVerifyAction(@NotNull Context uiContext, @NotNull AccountVerifyArgs verifyArgs) {
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(verifyArgs, "verifyArgs");
        this.uiContext = uiContext;
        this.verifyArgs = verifyArgs;
        PublishSubject<Boolean> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.subject = create;
    }
}
