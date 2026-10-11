package com.onyx.android.sdk.cloudstorage.provider.webdav.p023ui;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.util.Patterns;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.Toast;
import androidx.fragment.app.C1126e;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.C7153R;
import com.onyx.android.sdk.cloudstorage.databinding.CustomDialogWebdavAuthBinding;
import com.onyx.android.sdk.cloudstorage.provider.webdav.p023ui.DialogWebDavAuth;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.model.p028v2.WebDAVAuthAccount;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001@B\u000f\u0012\u0006\u0010=\u001a\u00020<¢\u0006\u0004\b>\u0010?J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J$\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\bH\u0002J\u0012\u0010\u000f\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\bH\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002R$\u0010\u0016\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R$\u0010\u001d\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR$\u0010 \u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0011\u001a\u0004\b\u001e\u0010\u0013\"\u0004\b\u001f\u0010\u0015R$\u0010(\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R$\u00100\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R$\u00108\u001a\u0004\u0018\u0001018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u0016\u0010;\u001a\u0002098\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000f\u0010:¨\u0006A"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/ui/DialogWebDavAuth;", "Landroid/app/Dialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", C6998g.f39679a, C6997f.f39671c, "", "davUrl", LoginAuthConst.ACCOUNT_AUTH, "password", "", "d", "url", C4921e.f26537n, "e", Constants.STRING_SIG, "getTitleText", "()Ljava/lang/String;", "setTitleText", "(Ljava/lang/String;)V", "titleText", "Landroid/text/Spanned;", "Landroid/text/Spanned;", "getTutorials", "()Landroid/text/Spanned;", "setTutorials", "(Landroid/text/Spanned;)V", "tutorials", "getDefaultDavUrl", "setDefaultDavUrl", "defaultDavUrl", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/ui/DialogWebDavAuth$WebDavDialogPositiveListener;", C6999h.f39688c, "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/ui/DialogWebDavAuth$WebDavDialogPositiveListener;", "getPositiveListener", "()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/ui/DialogWebDavAuth$WebDavDialogPositiveListener;", "setPositiveListener", "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/ui/DialogWebDavAuth$WebDavDialogPositiveListener;)V", "positiveListener", "Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;", "i", "Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;", "getWebDAVAuthAccount", "()Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;", "setWebDAVAuthAccount", "(Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;)V", "webDAVAuthAccount", "Landroid/content/DialogInterface$OnClickListener;", "j", "Landroid/content/DialogInterface$OnClickListener;", "getNegativeListener", "()Landroid/content/DialogInterface$OnClickListener;", "setNegativeListener", "(Landroid/content/DialogInterface$OnClickListener;)V", "negativeListener", "Lcom/onyx/android/sdk/cloudstorage/databinding/CustomDialogWebdavAuthBinding;", "Lcom/onyx/android/sdk/cloudstorage/databinding/CustomDialogWebdavAuthBinding;", "binding", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "WebDavDialogPositiveListener", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class DialogWebDavAuth extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public String titleText;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Spanned tutorials;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public String defaultDavUrl;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public WebDavDialogPositiveListener positiveListener;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public WebDAVAuthAccount webDAVAuthAccount;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public DialogInterface.OnClickListener negativeListener;

    /* renamed from: k, reason: from kotlin metadata */
    public CustomDialogWebdavAuthBinding binding;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u0007H&¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/ui/DialogWebDavAuth$WebDavDialogPositiveListener;", "", "onClick", "", "dialog", "Landroid/content/DialogInterface;", "davUrl", "", LoginAuthConst.ACCOUNT_AUTH, "password", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public interface WebDavDialogPositiveListener {
        void onClick(@Nullable DialogInterface dialog, @Nullable String davUrl, @Nullable String account, @Nullable String password);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogWebDavAuth(@NotNull Context context) {
        super(context, C7153R.style.FullScreenDialog);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: h */
    public static final void m32885h(DialogWebDavAuth this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: i */
    public static final void m32886i(DialogWebDavAuth this$0, View view) {
        CharSequence trim;
        CharSequence trim2;
        CharSequence trim3;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.positiveListener != null) {
            CustomDialogWebdavAuthBinding customDialogWebdavAuthBinding = this$0.binding;
            CustomDialogWebdavAuthBinding customDialogWebdavAuthBinding2 = null;
            if (customDialogWebdavAuthBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                customDialogWebdavAuthBinding = null;
            }
            trim = StringsKt__StringsKt.trim((CharSequence) customDialogWebdavAuthBinding.urlEdit.getEditableText().toString());
            String obj = trim.toString();
            CustomDialogWebdavAuthBinding customDialogWebdavAuthBinding3 = this$0.binding;
            if (customDialogWebdavAuthBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                customDialogWebdavAuthBinding3 = null;
            }
            trim2 = StringsKt__StringsKt.trim((CharSequence) customDialogWebdavAuthBinding3.account.getEditableText().toString());
            String obj2 = trim2.toString();
            CustomDialogWebdavAuthBinding customDialogWebdavAuthBinding4 = this$0.binding;
            if (customDialogWebdavAuthBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                customDialogWebdavAuthBinding2 = customDialogWebdavAuthBinding4;
            }
            trim3 = StringsKt__StringsKt.trim((CharSequence) customDialogWebdavAuthBinding2.password.getEditableText().toString());
            String obj3 = trim3.toString();
            if (this$0.m32888d(obj, obj2, obj3)) {
                WebDavDialogPositiveListener webDavDialogPositiveListener = this$0.positiveListener;
                Intrinsics.checkNotNull(webDavDialogPositiveListener);
                webDavDialogPositiveListener.onClick(this$0, obj, obj2, obj3);
            }
        }
    }

    /* renamed from: j */
    public static final void m32887j(DialogWebDavAuth this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DialogInterface.OnClickListener onClickListener = this$0.negativeListener;
        if (onClickListener != null) {
            Intrinsics.checkNotNull(onClickListener);
            onClickListener.onClick(this$0, C7153R.id.button_negative);
        }
    }

    /* renamed from: d */
    public final boolean m32888d(String davUrl, String account, String password) {
        if (!m32892k(davUrl)) {
            Toast.makeText(ResManager.INSTANCE.getAppContext(), C7153R.string.please_input_correct_url, 0).show();
            return false;
        }
        if (account == null || account.length() == 0) {
            Toast.makeText(ResManager.INSTANCE.getAppContext(), C7153R.string.input_empty, 0).show();
            return false;
        }
        if (!(password == null || password.length() == 0)) {
            return true;
        }
        Toast.makeText(ResManager.INSTANCE.getAppContext(), C7153R.string.input_empty, 0).show();
        return false;
    }

    /* renamed from: e */
    public final void m32889e() {
        Window window = getWindow();
        Intrinsics.checkNotNull(window);
        window.setLayout(-1, -1);
    }

    /* renamed from: f */
    public final void m32890f() {
        if (this.webDAVAuthAccount != null) {
            CustomDialogWebdavAuthBinding customDialogWebdavAuthBinding = this.binding;
            CustomDialogWebdavAuthBinding customDialogWebdavAuthBinding2 = null;
            if (customDialogWebdavAuthBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                customDialogWebdavAuthBinding = null;
            }
            EditText editText = customDialogWebdavAuthBinding.urlEdit;
            WebDAVAuthAccount webDAVAuthAccount = this.webDAVAuthAccount;
            Intrinsics.checkNotNull(webDAVAuthAccount);
            editText.setText(webDAVAuthAccount.getWebDAVUrl());
            CustomDialogWebdavAuthBinding customDialogWebdavAuthBinding3 = this.binding;
            if (customDialogWebdavAuthBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                customDialogWebdavAuthBinding2 = customDialogWebdavAuthBinding3;
            }
            EditText editText2 = customDialogWebdavAuthBinding2.account;
            WebDAVAuthAccount webDAVAuthAccount2 = this.webDAVAuthAccount;
            Intrinsics.checkNotNull(webDAVAuthAccount2);
            editText2.setText(webDAVAuthAccount2.getUsername());
        }
    }

    /* renamed from: g */
    public final void m32891g() {
        m32889e();
        CustomDialogWebdavAuthBinding customDialogWebdavAuthBinding = this.binding;
        CustomDialogWebdavAuthBinding customDialogWebdavAuthBinding2 = null;
        if (customDialogWebdavAuthBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            customDialogWebdavAuthBinding = null;
        }
        customDialogWebdavAuthBinding.titleBack.setText(this.titleText);
        CustomDialogWebdavAuthBinding customDialogWebdavAuthBinding3 = this.binding;
        if (customDialogWebdavAuthBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            customDialogWebdavAuthBinding3 = null;
        }
        customDialogWebdavAuthBinding3.tvTip.setText(this.tutorials);
        CustomDialogWebdavAuthBinding customDialogWebdavAuthBinding4 = this.binding;
        if (customDialogWebdavAuthBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            customDialogWebdavAuthBinding4 = null;
        }
        customDialogWebdavAuthBinding4.urlEdit.setText(this.defaultDavUrl);
        m32890f();
        CustomDialogWebdavAuthBinding customDialogWebdavAuthBinding5 = this.binding;
        if (customDialogWebdavAuthBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            customDialogWebdavAuthBinding5 = null;
        }
        customDialogWebdavAuthBinding5.tvTip.setMovementMethod(LinkMovementMethod.getInstance());
        CustomDialogWebdavAuthBinding customDialogWebdavAuthBinding6 = this.binding;
        if (customDialogWebdavAuthBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            customDialogWebdavAuthBinding6 = null;
        }
        customDialogWebdavAuthBinding6.titleBack.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.v4f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogWebDavAuth.m32885h(DialogWebDavAuth.this, view);
            }
        });
        CustomDialogWebdavAuthBinding customDialogWebdavAuthBinding7 = this.binding;
        if (customDialogWebdavAuthBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            customDialogWebdavAuthBinding7 = null;
        }
        customDialogWebdavAuthBinding7.buttonPositive.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.w4f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogWebDavAuth.m32886i(DialogWebDavAuth.this, view);
            }
        });
        CustomDialogWebdavAuthBinding customDialogWebdavAuthBinding8 = this.binding;
        if (customDialogWebdavAuthBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            customDialogWebdavAuthBinding2 = customDialogWebdavAuthBinding8;
        }
        customDialogWebdavAuthBinding2.buttonNegative.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.x4f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogWebDavAuth.m32887j(DialogWebDavAuth.this, view);
            }
        });
    }

    @Nullable
    public final String getDefaultDavUrl() {
        return this.defaultDavUrl;
    }

    @Nullable
    public final DialogInterface.OnClickListener getNegativeListener() {
        return this.negativeListener;
    }

    @Nullable
    public final WebDavDialogPositiveListener getPositiveListener() {
        return this.positiveListener;
    }

    @Nullable
    public final String getTitleText() {
        return this.titleText;
    }

    @Nullable
    public final Spanned getTutorials() {
        return this.tutorials;
    }

    @Nullable
    public final WebDAVAuthAccount getWebDAVAuthAccount() {
        return this.webDAVAuthAccount;
    }

    /* renamed from: k */
    public final boolean m32892k(String url) {
        return !(url == null || url.length() == 0) && Patterns.WEB_URL.matcher(url).matches();
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063350, this, savedInstanceState);
    }

    public final void setDefaultDavUrl(@Nullable String str) {
        this.defaultDavUrl = str;
    }

    public final void setNegativeListener(@Nullable DialogInterface.OnClickListener onClickListener) {
        this.negativeListener = onClickListener;
    }

    public final void setPositiveListener(@Nullable WebDavDialogPositiveListener webDavDialogPositiveListener) {
        this.positiveListener = webDavDialogPositiveListener;
    }

    public final void setTitleText(@Nullable String str) {
        this.titleText = str;
    }

    public final void setTutorials(@Nullable Spanned spanned) {
        this.tutorials = spanned;
    }

    public final void setWebDAVAuthAccount(@Nullable WebDAVAuthAccount webDAVAuthAccount) {
        this.webDAVAuthAccount = webDAVAuthAccount;
    }
}
