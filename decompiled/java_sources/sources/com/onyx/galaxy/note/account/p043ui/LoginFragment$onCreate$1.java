package com.onyx.galaxy.note.account.p043ui;

import android.app.Dialog;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.galaxy.note.account.data.VerifyCodeBundle;
import com.onyx.galaxy.note.account.view.dialog.AreaCodeDialog;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, m61528d2 = {"com/onyx/galaxy/note/account/ui/LoginFragment$onCreate$1", "Landroidx/lifecycle/DefaultLifecycleObserver;", "onCreate", "", "owner", "Landroidx/lifecycle/LifecycleOwner;", "onDestroy", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class LoginFragment$onCreate$1 implements DefaultLifecycleObserver {

    /* renamed from: e */
    public final /* synthetic */ LoginFragment f53479e;

    public LoginFragment$onCreate$1(LoginFragment loginFragment) {
        this.f53479e = loginFragment;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onCreate(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        EventBusHolderKt.ensureRegister(VerifyCodeBundle.INSTANCE.getEventBus(), this.f53479e);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner owner) {
        Dialog dialog;
        AreaCodeDialog m41885O0;
        Intrinsics.checkNotNullParameter(owner, "owner");
        dialog = this.f53479e.wechatLoginDialog;
        if (dialog != null) {
            dialog.dismiss();
        }
        m41885O0 = this.f53479e.m41885O0();
        m41885O0.dismiss();
        EventBusHolderKt.ensureUnRegister(VerifyCodeBundle.INSTANCE.getEventBus(), this.f53479e);
    }
}
