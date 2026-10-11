package com.onyx.galaxy.note.account.view.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.C1126e;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.data.PolicyType;
import com.onyx.galaxy.note.account.view.dialog.LoginPolicyDialog;
import com.onyx.galaxy.note.databinding.DialogLoginPolicyBinding;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\r\u001a\u00020\n\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e¢\u0006\u0004\b\u0016\u0010\u0017J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u000fR\u001b\u0010\u0015\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u000b\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;", "Landroid/app/Dialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", C6997f.f39671c, "Lcom/onyx/galaxy/note/account/data/PolicyType;", "policyType", C4921e.f26537n, "Landroid/content/Context;", "e", "Landroid/content/Context;", "context", "Lkotlin/Function0;", "Lkotlin/jvm/functions/Function0;", "agreeFunc", "Lcom/onyx/galaxy/note/databinding/DialogLoginPolicyBinding;", C6998g.f39679a, "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/databinding/DialogLoginPolicyBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class LoginPolicyDialog extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> agreeFunc;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginPolicyDialog(@NotNull Context context, @NotNull Function0<Unit> agreeFunc) {
        super(context, C10651R.style.Custom_NoTitle_Dialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(agreeFunc, "agreeFunc");
        this.context = context;
        this.agreeFunc = agreeFunc;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogLoginPolicyBinding>() { // from class: com.onyx.galaxy.note.account.view.dialog.LoginPolicyDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogLoginPolicyBinding invoke() {
                Context context2;
                context2 = LoginPolicyDialog.this.context;
                return DialogLoginPolicyBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
    }

    /* renamed from: g */
    public static final void m42021g(LoginPolicyDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: h */
    public static final void m42022h(LoginPolicyDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.agreeFunc.invoke();
        this$0.dismiss();
    }

    /* renamed from: i */
    public static final void m42023i(LoginPolicyDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m42027k(PolicyType.PRIVACY);
    }

    /* renamed from: j */
    public static final void m42024j(LoginPolicyDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m42027k(PolicyType.SERVICE);
    }

    /* renamed from: e */
    public final DialogLoginPolicyBinding m42025e() {
        return (DialogLoginPolicyBinding) this.binding.getValue();
    }

    /* renamed from: f */
    public final void m42026f() {
        m42025e().btnCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.q4j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginPolicyDialog.m42021g(LoginPolicyDialog.this, view);
            }
        });
        m42025e().btnOk.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.r4j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginPolicyDialog.m42022h(LoginPolicyDialog.this, view);
            }
        });
        m42025e().tvPrivacyPolicy.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.s4j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginPolicyDialog.m42023i(LoginPolicyDialog.this, view);
            }
        });
        m42025e().tvServicePolicy.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.t4j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginPolicyDialog.m42024j(LoginPolicyDialog.this, view);
            }
        });
    }

    /* renamed from: k */
    public final void m42027k(PolicyType policyType) {
        new PolicyDialog(this.context, policyType).show();
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063329, this, savedInstanceState);
    }
}
