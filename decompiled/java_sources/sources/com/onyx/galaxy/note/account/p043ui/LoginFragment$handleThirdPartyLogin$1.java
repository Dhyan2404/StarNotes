package com.onyx.galaxy.note.account.p043ui;

import android.content.Context;
import android.content.Intent;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.account.bean.AuthResultArgs;
import com.onyx.galaxy.note.account.interfaces.IAccountAuth;
import com.onyx.galaxy.note.account.viewmodel.LoginViewModel;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m61528d2 = {"<anonymous>", "", "context", "Landroid/content/Context;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class LoginFragment$handleThirdPartyLogin$1 extends Lambda implements Function1<Context, Unit> {
    final /* synthetic */ Intent $data;
    final /* synthetic */ int $requestCode;
    final /* synthetic */ LoginFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginFragment$handleThirdPartyLogin$1(LoginFragment loginFragment, Intent intent, int i) {
        super(1);
        this.this$0 = loginFragment;
        this.$data = intent;
        this.$requestCode = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(int i, LoginFragment this$0, AuthResultArgs it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        switch (i) {
            case 1000:
                this$0.m41896Y0(it2);
                return;
            case 1001:
                this$0.m41892U0(it2);
                return;
            case 1002:
                this$0.m41905x1(it2);
                return;
            default:
                return;
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Context context) {
        invoke2(context);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull Context context) {
        LoginViewModel m41890S0;
        RxBaseAction<AuthResultArgs> createAuthResultAction;
        Intrinsics.checkNotNullParameter(context, "context");
        m41890S0 = this.this$0.m41890S0();
        IAccountAuth accountAuth = m41890S0.getAccountAuth();
        if (accountAuth == null || (createAuthResultAction = accountAuth.createAuthResultAction(context, this.$data)) == null) {
            return;
        }
        final int i = this.$requestCode;
        final LoginFragment loginFragment = this.this$0;
        RxBaseAction.execute$default(createAuthResultAction, new Consumer() { // from class: com.onyx.galaxy.note.account.ui.a
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                LoginFragment$handleThirdPartyLogin$1.invoke$lambda$0(i, loginFragment, (AuthResultArgs) obj);
            }
        }, null, null, 6, null);
    }
}
