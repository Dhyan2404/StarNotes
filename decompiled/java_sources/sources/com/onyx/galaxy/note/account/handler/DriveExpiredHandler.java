package com.onyx.galaxy.note.account.handler;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.common.action.CloudAuthAction;
import com.onyx.android.sdk.cloudstorage.model.AuthResult;
import com.onyx.android.sdk.cloudstorage.model.UserInfo;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.sync.MMKVBackup;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.handler.DriveExpiredHandler;
import com.onyx.galaxy.note.settings.p047ui.SettingsActivity;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\tH\u0002J\u0018\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0002R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;", "", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", CouchFieldKey.KEY_PROVIDER, "", "onDriveTokenExpired", "Landroid/content/Context;", "activityContext", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "buildBindDriveAction", C6999h.f39688c, C6998g.f39679a, "e", "b", "authResult", "c", "", "handling", "d", "", "a", "Ljava/util/Set;", "providerHandlingSet", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DriveExpiredHandler {

    @NotNull
    public static final DriveExpiredHandler INSTANCE = new DriveExpiredHandler();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Set<Provider> providerHandlingSet = new LinkedHashSet();

    /* renamed from: com.onyx.galaxy.note.account.handler.DriveExpiredHandler$a */
    /* loaded from: classes9.dex */
    public static final class C10707a<T> implements Predicate {

        /* renamed from: e */
        public static final C10707a<T> f53443e = new C10707a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull DriveExpiredHandler it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AccountDataBundle.INSTANCE.isAlreadyLogin();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.handler.DriveExpiredHandler$b */
    /* loaded from: classes9.dex */
    public static final class C10708b<T, R> implements Function {

        /* renamed from: e */
        public static final C10708b<T, R> f53444e = new C10708b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AccountDataBundle> apply(@NotNull DriveExpiredHandler it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AccountDataBundle.INSTANCE.loadOnyxAccountObservable();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.handler.DriveExpiredHandler$c */
    /* loaded from: classes9.dex */
    public static final class C10709c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Context f53445e;

        /* renamed from: f */
        public final /* synthetic */ Provider f53446f;

        public C10709c(Context context, Provider provider) {
            this.f53445e = context;
            this.f53446f = provider;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AuthResult> apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CloudAuthAction(this.f53445e, this.f53446f, new UserInfo(it2.getAccountId(), it2.getAccountName()), null, 8, null).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.handler.DriveExpiredHandler$d */
    /* loaded from: classes9.dex */
    public static final class C10710d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Context f53447e;

        public C10710d(Context context) {
            this.f53447e = context;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DriveExpiredHandler.INSTANCE.m41813b(this.f53447e);
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.handler.DriveExpiredHandler$e */
    /* loaded from: classes9.dex */
    public static final class C10711e<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Context f53448e;

        public C10711e(Context context) {
            this.f53448e = context;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AuthResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DriveExpiredHandler.INSTANCE.m41814c(this.f53448e, it2);
        }
    }

    /* renamed from: f */
    public static final void m41812f(Provider provider) {
        Intrinsics.checkNotNullParameter(provider, "$provider");
        INSTANCE.m41815d(provider, false);
    }

    /* renamed from: b */
    public final void m41813b(Context activityContext) {
        Intent intent = new Intent(activityContext, (Class<?>) SettingsActivity.class);
        intent.putExtra(SettingsActivity.SETTING_MENU_NAME, 2);
        intent.addFlags(536870912);
        activityContext.startActivity(intent);
        ToastUtils.INSTANCE.show(C10651R.string.cloud_backup_bind_fail_hint, true);
    }

    @NotNull
    public final Observable<AuthResult> buildBindDriveAction(@NotNull Context activityContext, @NotNull Provider provider) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(provider, "provider");
        Observable<AuthResult> doOnNext = Observable.just(this).filter(C10707a.f53443e).flatMap(C10708b.f53444e).observeOn(AndroidSchedulers.mainThread()).flatMap(new C10709c(activityContext, provider)).doOnError(new C10710d(activityContext)).doOnNext(new C10711e(activityContext));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: c */
    public final void m41814c(Context activityContext, AuthResult authResult) {
        if (!authResult.getIsSuccess()) {
            m41817g(activityContext);
            return;
        }
        ToastUtils.INSTANCE.show(C10651R.string.cloud_backup_bind_success_hint, true);
        if (ContextKt.hasStoragePermissionByConfig(activityContext)) {
            MMKVBackup.INSTANCE.getCloudBackupAutoOption().put(true);
        }
    }

    /* renamed from: d */
    public final void m41815d(Provider provider, boolean handling) {
        if (handling) {
            providerHandlingSet.add(provider);
        } else {
            providerHandlingSet.remove(provider);
        }
    }

    /* renamed from: e */
    public final void m41816e(Context activityContext, final Provider provider) {
        buildBindDriveAction(activityContext, provider).doFinally(new Action() { // from class: com.sunia.HTREnginev2.vif
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DriveExpiredHandler.m41812f(Provider.this);
            }
        }).subscribe();
    }

    /* renamed from: g */
    public final void m41817g(Context activityContext) {
        String string = activityContext.getString(C10651R.string.user_drive_token_expired_cancel_bind_tip_prefix);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = activityContext.getString(C10651R.string.user_drive_token_expired_cancel_bind_tip_suffix);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String str = string + string2;
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new UnderlineSpan(), string.length(), str.length(), 17);
        ToastUtils.INSTANCE.show((CharSequence) spannableString, true);
    }

    /* renamed from: h */
    public final void m41818h(final Context activityContext, final Provider provider) {
        String nameByProvider = Provider.INSTANCE.getNameByProvider(ResManager.INSTANCE.getAppContext(), provider);
        String string = activityContext.getString(C10651R.string.user_drive_token_expired_tip);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String format = String.format(string, Arrays.copyOf(new Object[]{nameByProvider}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        new CommonDialog.Builder(activityContext).setTitle(C7106R.string.tip).setMessage(format).setCancelText(C10651R.string.user_drive_token_expired_not_bound_temporarily).setConfirmText(C10651R.string.user_drive_token_expired_bind_now).setCancelable(false).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.account.handler.DriveExpiredHandler$showDialog$1
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
            public final void invoke2(@NotNull CommonDialog dialog, @NotNull String str) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                DriveExpiredHandler.INSTANCE.m41816e(activityContext, provider);
                dialog.dismiss();
            }
        }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.account.handler.DriveExpiredHandler$showDialog$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Dialog dialog) {
                invoke2(dialog);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Dialog dialog) {
                if (dialog != null) {
                    dialog.dismiss();
                }
            }
        }).setDismissCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.account.handler.DriveExpiredHandler$showDialog$3
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
                DriveExpiredHandler.INSTANCE.m41815d(Provider.this, false);
            }
        }).create().show();
    }

    public final void onDriveTokenExpired(@NotNull Provider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        if (providerHandlingSet.contains(provider)) {
            return;
        }
        m41815d(provider, true);
        m41818h(Activity.INSTANCE.getFrontActivity(), provider);
    }
}
