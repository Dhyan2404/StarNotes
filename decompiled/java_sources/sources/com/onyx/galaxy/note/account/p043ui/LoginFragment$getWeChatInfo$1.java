package com.onyx.galaxy.note.account.p043ui;

import android.os.Handler;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.statistics.AuthResultListener;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.p043ui.LoginFragment$getWeChatInfo$1;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J$\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\bH\u0016J\u001a\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\r\u001a\u00020\u0003H\u0016¨\u0006\u000e"}, m61528d2 = {"com/onyx/galaxy/note/account/ui/LoginFragment$getWeChatInfo$1", "Lcom/onyx/android/sdk/statistics/AuthResultListener;", "onCancel", "", "p1", "", "onComplete", "data", "", "", "onError", "t", "", "onStart", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class LoginFragment$getWeChatInfo$1 implements AuthResultListener {

    /* renamed from: a */
    public final /* synthetic */ LoginFragment f53476a;

    public LoginFragment$getWeChatInfo$1(LoginFragment loginFragment) {
        this.f53476a = loginFragment;
    }

    /* renamed from: d */
    public static final void m41917d() {
        Debug.INSTANCE.m32044e(LoginFragment.class, "wechat login onCancel", new Object[0]);
    }

    /* renamed from: e */
    public static final void m41918e(Throwable th) {
        Debug.INSTANCE.m32044e(LoginFragment.class, "wechat login error:" + th, new Object[0]);
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.login_fail, false, 2, (Object) null);
    }

    /* renamed from: f */
    public static final void m41919f() {
        Debug.INSTANCE.m32044e(LoginFragment.class, "wechat login onStart", new Object[0]);
    }

    @Override // com.onyx.android.sdk.statistics.AuthResultListener
    public void onCancel(int p1) {
        Handler handler;
        handler = this.f53476a.com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.TRANSLET_OUTPUT_PNAME java.lang.String;
        handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.n4j
            @Override // java.lang.Runnable
            public final void run() {
                LoginFragment$getWeChatInfo$1.m41917d();
            }
        });
    }

    @Override // com.onyx.android.sdk.statistics.AuthResultListener
    public void onComplete(int p1, @NotNull Map<String, String> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        Debug.INSTANCE.m32044e(LoginFragment.class, "wechat login onComplete:" + JSONUtils.INSTANCE.toJson(data), new Object[0]);
        this.f53476a.m41884N1(data);
    }

    @Override // com.onyx.android.sdk.statistics.AuthResultListener
    public void onError(int p1, @Nullable final Throwable t) {
        Handler handler;
        handler = this.f53476a.com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.TRANSLET_OUTPUT_PNAME java.lang.String;
        handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.l4j
            @Override // java.lang.Runnable
            public final void run() {
                LoginFragment$getWeChatInfo$1.m41918e(t);
            }
        });
    }

    @Override // com.onyx.android.sdk.statistics.AuthResultListener
    public void onStart() {
        Handler handler;
        handler = this.f53476a.com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.TRANSLET_OUTPUT_PNAME java.lang.String;
        handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.m4j
            @Override // java.lang.Runnable
            public final void run() {
                LoginFragment$getWeChatInfo$1.m41919f();
            }
        });
    }
}
