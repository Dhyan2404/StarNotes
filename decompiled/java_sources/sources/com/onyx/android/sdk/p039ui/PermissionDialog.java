package com.onyx.android.sdk.p039ui;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.StringRes;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.p039ui.PermissionDialog;
import com.onyx.android.sdk.p039ui.databinding.DialogPermissionBinding;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\fB\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\u0003\u001a\u00020\u0002H\u0002R\u0016\u0010\u0007\u001a\u00020\u00048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/PermissionDialog;", "Landroid/app/Dialog;", "", "a", "Lcom/onyx/android/sdk/ui/databinding/DialogPermissionBinding;", "e", "Lcom/onyx/android/sdk/ui/databinding/DialogPermissionBinding;", "binging", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Builder", "sdk-ui_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PermissionDialog extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    public DialogPermissionBinding binging;

    @Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0011¢\u0006\u0004\b#\u0010$J\u0014\u0010\u0005\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0014\u0010\u0006\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0010\u0010\t\u001a\u00020\u00002\b\b\u0001\u0010\b\u001a\u00020\u0007J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u0010\u0010\u000e\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u0007J\u0006\u0010\u0010\u001a\u00020\u000fR\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0018R\u0016\u0010\u001e\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\r\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;", "", "Lkotlin/Function0;", "", "callback", "setCancelCallback", "setConfirmCallback", "", "message", "setMessageTextRes", "", "messageStr", "setMessageText", "confirmRes", "setConfirmTextRes", "Lcom/onyx/android/sdk/ui/PermissionDialog;", BaiduYunConstant.CREATE, "Landroid/content/Context;", "a", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "b", "Lkotlin/jvm/functions/Function0;", "cancelCallback", "c", "confirmCallback", "d", "I", "messageRes", "e", C6997f.f39671c, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "messageString", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "sdk-ui_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static class Builder {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final Context context;

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public Function0<Unit> cancelCallback;

        /* renamed from: c, reason: from kotlin metadata */
        @Nullable
        public Function0<Unit> confirmCallback;

        /* renamed from: d, reason: from kotlin metadata */
        public int messageRes;

        /* renamed from: e, reason: from kotlin metadata */
        public int confirmRes;

        /* renamed from: f, reason: from kotlin metadata */
        @Nullable
        public String messageString;

        public Builder(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            this.context = context;
            this.messageRes = -1;
            this.confirmRes = -1;
        }

        /* renamed from: c */
        public static final void m36420c(Builder this$0, PermissionDialog permissionDialog, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(permissionDialog, "$permissionDialog");
            Function0<Unit> function0 = this$0.cancelCallback;
            if (function0 != null) {
                function0.invoke();
            }
            permissionDialog.dismiss();
        }

        /* renamed from: d */
        public static final void m36421d(Builder this$0, PermissionDialog permissionDialog, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(permissionDialog, "$permissionDialog");
            Function0<Unit> function0 = this$0.confirmCallback;
            if (function0 != null) {
                function0.invoke();
            }
            permissionDialog.dismiss();
        }

        @NotNull
        public final PermissionDialog create() {
            final PermissionDialog permissionDialog = new PermissionDialog(this.context);
            DialogPermissionBinding dialogPermissionBinding = null;
            if (this.messageRes != -1) {
                DialogPermissionBinding dialogPermissionBinding2 = permissionDialog.binging;
                if (dialogPermissionBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogPermissionBinding2 = null;
                }
                dialogPermissionBinding2.tvMessage.setText(this.messageRes);
            }
            if (this.messageString != null) {
                DialogPermissionBinding dialogPermissionBinding3 = permissionDialog.binging;
                if (dialogPermissionBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogPermissionBinding3 = null;
                }
                dialogPermissionBinding3.tvMessage.setText(this.messageString);
            }
            if (this.confirmRes != -1) {
                DialogPermissionBinding dialogPermissionBinding4 = permissionDialog.binging;
                if (dialogPermissionBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binging");
                    dialogPermissionBinding4 = null;
                }
                dialogPermissionBinding4.tvConfirm.setText(this.confirmRes);
            }
            DialogPermissionBinding dialogPermissionBinding5 = permissionDialog.binging;
            if (dialogPermissionBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
                dialogPermissionBinding5 = null;
            }
            dialogPermissionBinding5.ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.j3l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PermissionDialog.Builder.m36420c(PermissionDialog.Builder.this, permissionDialog, view);
                }
            });
            DialogPermissionBinding dialogPermissionBinding6 = permissionDialog.binging;
            if (dialogPermissionBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binging");
            } else {
                dialogPermissionBinding = dialogPermissionBinding6;
            }
            dialogPermissionBinding.tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.k3l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PermissionDialog.Builder.m36421d(PermissionDialog.Builder.this, permissionDialog, view);
                }
            });
            permissionDialog.show();
            return permissionDialog;
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        @NotNull
        public final Builder setCancelCallback(@NotNull Function0<Unit> callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.cancelCallback = callback;
            return this;
        }

        @NotNull
        public final Builder setConfirmCallback(@NotNull Function0<Unit> callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.confirmCallback = callback;
            return this;
        }

        @NotNull
        public final Builder setConfirmTextRes(@StringRes int confirmRes) {
            this.confirmRes = confirmRes;
            return this;
        }

        @NotNull
        public final Builder setMessageText(@NotNull String messageStr) {
            Intrinsics.checkNotNullParameter(messageStr, "messageStr");
            this.messageString = messageStr;
            return this;
        }

        @NotNull
        public final Builder setMessageTextRes(@StringRes int message) {
            this.messageRes = message;
            return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PermissionDialog(@NotNull Context context) {
        super(context, C8037R.style.commonDialog);
        Intrinsics.checkNotNullParameter(context, "context");
        m36417a();
    }

    /* renamed from: a */
    public final void m36417a() {
        DialogPermissionBinding inflate = DialogPermissionBinding.inflate(LayoutInflater.from(getContext()));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binging = inflate;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binging");
            inflate = null;
        }
        setContentView(inflate.getRoot());
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            Intrinsics.checkNotNull(attributes, "null cannot be cast to non-null type android.view.WindowManager.LayoutParams");
            attributes.width = -2;
            attributes.height = -2;
        }
        setCanceledOnTouchOutside(false);
    }
}
