package com.onyx.galaxy.note.p048ui.dialog;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.C1126e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.data.PolicyType;
import com.onyx.galaxy.note.account.view.dialog.PolicyDialog;
import com.onyx.galaxy.note.databinding.DialogSplashPolicyBinding;
import com.onyx.galaxy.note.p048ui.dialog.SplashPolicyDialog;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0007*\u0002\u0018\u001c\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00040\u000e¢\u0006\u0004\b \u0010!J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0003J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR \u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00040\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0017\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;", "Landroid/app/Dialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "d", "Lcom/onyx/galaxy/note/account/data/PolicyType;", "policyType", C6998g.f39679a, "Landroid/content/Context;", "e", "Landroid/content/Context;", "context", "Lkotlin/Function1;", "", C6997f.f39671c, "Lkotlin/jvm/functions/Function1;", "agreeFunc", "Lcom/onyx/galaxy/note/databinding/DialogSplashPolicyBinding;", "Lkotlin/Lazy;", "c", "()Lcom/onyx/galaxy/note/databinding/DialogSplashPolicyBinding;", "binding", "com/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$privacyClick$1", C6999h.f39688c, "Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$privacyClick$1;", "privacyClick", "com/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$serviceClick$1", "i", "Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$serviceClick$1;", "serviceClick", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class SplashPolicyDialog extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Function1<Boolean, Unit> agreeFunc;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final SplashPolicyDialog$privacyClick$1 privacyClick;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final SplashPolicyDialog$serviceClick$1 serviceClick;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SplashPolicyDialog(@NotNull Context context, @NotNull Function1<? super Boolean, Unit> agreeFunc) {
        super(context, C10651R.style.commonDialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(agreeFunc, "agreeFunc");
        this.context = context;
        this.agreeFunc = agreeFunc;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogSplashPolicyBinding>() { // from class: com.onyx.galaxy.note.ui.dialog.SplashPolicyDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogSplashPolicyBinding invoke() {
                Context context2;
                context2 = SplashPolicyDialog.this.context;
                return DialogSplashPolicyBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        this.privacyClick = new SplashPolicyDialog$privacyClick$1(this);
        this.serviceClick = new SplashPolicyDialog$serviceClick$1(this);
    }

    /* renamed from: e */
    public static final void m51338e(SplashPolicyDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.agreeFunc.invoke(Boolean.FALSE);
        this$0.dismiss();
    }

    /* renamed from: f */
    public static final void m51339f(SplashPolicyDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.agreeFunc.invoke(Boolean.TRUE);
        this$0.dismiss();
    }

    /* renamed from: c */
    public final DialogSplashPolicyBinding m51340c() {
        return (DialogSplashPolicyBinding) this.binding.getValue();
    }

    @SuppressLint({"ResourceAsColor"})
    /* renamed from: d */
    public final void m51341d() {
        int indexOf$default;
        int indexOf$default2;
        String string = this.context.getResources().getString(C10651R.string.splash_policy_title_prefix);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = this.context.getResources().getString(C10651R.string.splash_policy_title_connection);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = this.context.getResources().getString(C10651R.string.splash_policy_title_suffix);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        String string4 = this.context.getResources().getString(C10651R.string.login_privacy_policy);
        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
        String string5 = this.context.getResources().getString(C10651R.string.login_service_policy);
        Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
        String str = string + string5 + string2 + string4 + string3;
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, string4, 0, false, 6, (Object) null);
        int length = string4.length() + indexOf$default;
        indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) str, string5, 0, false, 6, (Object) null);
        int length2 = string5.length() + indexOf$default2;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.setSpan(this.privacyClick, indexOf$default, length, 34);
        spannableStringBuilder.setSpan(this.serviceClick, indexOf$default2, length2, 34);
        m51340c().tvDialogTitle.setMovementMethod(LinkMovementMethod.getInstance());
        m51340c().tvDialogTitle.setText(spannableStringBuilder);
        m51340c().btnCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jwm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SplashPolicyDialog.m51338e(SplashPolicyDialog.this, view);
            }
        });
        m51340c().btnOk.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.kwm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SplashPolicyDialog.m51339f(SplashPolicyDialog.this, view);
            }
        });
    }

    /* renamed from: g */
    public final void m51342g(PolicyType policyType) {
        new PolicyDialog(this.context, policyType).show();
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063260, this, savedInstanceState);
    }
}
