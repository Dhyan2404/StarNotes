package com.onyx.galaxy.note.account.handler;

import android.app.Activity;
import android.content.Intent;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.FinishBeforeLogin;
import com.onyx.android.sdk.data.account.event.LocalAccountExpired;
import com.onyx.android.sdk.replicator.account.action.LogoutOnyxAccountAction;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.p043ui.RecentLoginActivity;
import com.onyx.galaxy.note.p048ui.dialog.MessageDialogAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler;", "", "Lcom/onyx/android/sdk/data/account/event/LocalAccountExpired;", NotificationCompat.CATEGORY_EVENT, "", "onAccountExpired", "", "a", Constants.HASIDCALL_INDEX_SIG, "isHandlingTokenExpireEvent", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AccountExpiredHandler {

    @NotNull
    public static final AccountExpiredHandler INSTANCE = new AccountExpiredHandler();

    /* renamed from: a, reason: from kotlin metadata */
    public static boolean isHandlingTokenExpireEvent;

    @SourceDebugExtension({"SMAP\nAccountExpiredHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountExpiredHandler.kt\ncom/onyx/galaxy/note/account/handler/AccountExpiredHandler$onAccountExpired$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,44:1\n1#2:45\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.account.handler.AccountExpiredHandler$a */
    /* loaded from: classes9.dex */
    public static final class C10705a<T, R> implements Function {

        /* renamed from: e */
        public static final C10705a<T, R> f53440e = new C10705a<>();

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends LogoutOnyxAccountAction> m41809a(boolean z) {
            LogoutOnyxAccountAction logoutOnyxAccountAction = new LogoutOnyxAccountAction();
            logoutOnyxAccountAction.setSkipCloudLogout(true);
            return logoutOnyxAccountAction.build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m41809a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.handler.AccountExpiredHandler$b */
    /* loaded from: classes9.dex */
    public static final class C10706b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Activity f53441e;

        public C10706b(Activity activity) {
            this.f53441e = activity;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LogoutOnyxAccountAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f53441e.startActivity(new Intent(this.f53441e, (Class<?>) RecentLoginActivity.class));
            AccountDataBundle.INSTANCE.getEventBusHolder().post(FinishBeforeLogin.INSTANCE);
            AccountExpiredHandler accountExpiredHandler = AccountExpiredHandler.INSTANCE;
            AccountExpiredHandler.isHandlingTokenExpireEvent = false;
        }
    }

    public final void onAccountExpired(@NotNull LocalAccountExpired event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Activity frontActivity = com.onyx.android.sdk.base.extension.Activity.INSTANCE.getFrontActivity();
        if (frontActivity == null || isHandlingTokenExpireEvent) {
            return;
        }
        LogUtils.wTag(AnyKt.toSimpleNameString(this), "onAccountExpired:" + event);
        isHandlingTokenExpireEvent = true;
        new MessageDialogAction(frontActivity, C7106R.string.tip, C10651R.string.user_tip_login_expired).build().flatMap(C10705a.f53440e).doOnNext(new C10706b(frontActivity)).subscribe();
    }
}
