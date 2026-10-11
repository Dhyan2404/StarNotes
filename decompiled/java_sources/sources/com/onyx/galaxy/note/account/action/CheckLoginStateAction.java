package com.onyx.galaxy.note.account.action;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.p043ui.LoginActivity;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\t\u001a\u00020\u0007H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/action/CheckLoginStateAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "inLoginState", "l", "", GoogleApiAvailabilityLight.f29016b, "m", "Landroid/content/Context;", "e", "Landroid/content/Context;", "activityContext", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CheckLoginStateAction extends RxBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: com.onyx.galaxy.note.account.action.CheckLoginStateAction$a */
    /* loaded from: classes9.dex */
    public static final class C10659a<T, R> implements Function {

        /* renamed from: e */
        public static final C10659a<T, R> f53368e = new C10659a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull CheckLoginStateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(AccountDataBundle.INSTANCE.isAlreadyLogin());
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.CheckLoginStateAction$b */
    /* loaded from: classes9.dex */
    public static final class C10660b<T, R> implements Function {
        public C10660b() {
        }

        @NotNull
        /* renamed from: a */
        public final Boolean m41741a(boolean z) {
            return Boolean.valueOf(CheckLoginStateAction.this.m41737l(z));
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m41741a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.CheckLoginStateAction$c */
    /* loaded from: classes9.dex */
    public static final class C10661c<T> implements Predicate {

        /* renamed from: e */
        public static final C10661c<T> f53370e = new C10661c<>();

        /* renamed from: a */
        public final boolean m41742a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m41742a(((Boolean) obj).booleanValue());
        }
    }

    public CheckLoginStateAction(@NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        this.activityContext = activityContext;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> filter = Observable.just(this).observeOn(AndroidSchedulers.mainThread()).map(C10659a.f53368e).map(new C10660b()).filter(C10661c.f53370e);
        Intrinsics.checkNotNullExpressionValue(filter, "filter(...)");
        return filter;
    }

    /* renamed from: l */
    public final boolean m41737l(boolean inLoginState) {
        if (inLoginState) {
            return true;
        }
        m41739n();
        return false;
    }

    /* renamed from: m */
    public final void m41738m() {
        Intent intent = new Intent(this.activityContext, (Class<?>) LoginActivity.class);
        intent.putExtra(OnyxStatisticConstant.KEY_TRIGGER_FROM, 1001);
        this.activityContext.startActivity(intent);
    }

    /* renamed from: n */
    public final void m41739n() {
        new CommonDialog.Builder(this.activityContext).setTitle(C10651R.string.title_login).setMessage(C10651R.string.user_tip_login_to_enjoy_more).setCancelText(C10651R.string.title_decide_later).setConfirmText(C10651R.string.title_goto_login).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.account.action.CheckLoginStateAction$showGuideDialog$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog commonDialog, @NotNull String str) {
                Intrinsics.checkNotNullParameter(commonDialog, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                CheckLoginStateAction.this.m41738m();
            }
        }).create().show();
    }
}
