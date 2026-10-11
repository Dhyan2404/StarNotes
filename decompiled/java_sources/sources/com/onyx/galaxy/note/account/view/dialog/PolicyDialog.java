package com.onyx.galaxy.note.account.view.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.C1126e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.data.PolicyType;
import com.onyx.galaxy.note.account.view.dialog.PolicyDialog;
import com.onyx.galaxy.note.databinding.DialogPolicyBinding;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0015\u0010\u0016J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001b\u0010\u0014\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;", "Landroid/app/Dialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "c", "Landroid/content/Context;", "e", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/account/data/PolicyType;", C6997f.f39671c, "Lcom/onyx/galaxy/note/account/data/PolicyType;", "policyType", "Lcom/onyx/galaxy/note/databinding/DialogPolicyBinding;", C6998g.f39679a, "Lkotlin/Lazy;", "b", "()Lcom/onyx/galaxy/note/databinding/DialogPolicyBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/account/data/PolicyType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class PolicyDialog extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final PolicyType policyType;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: com.onyx.galaxy.note.account.view.dialog.PolicyDialog$a */
    /* loaded from: classes9.dex */
    public static final class C10731a<T, R> implements Function {
        public C10731a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull ClusterManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getCurClusterInfo().getClusterHost().getGalaxyHostBaseUrl() + '/' + PolicyDialog.this.policyType.getUrl();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.view.dialog.PolicyDialog$b */
    /* loaded from: classes9.dex */
    public static final class C10732b<T, R> implements Function {
        public C10732b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OnyxWebView apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PolicyDialog.this.m42030b().webView.openWebpage(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PolicyDialog(@NotNull Context context, @NotNull PolicyType policyType) {
        super(context, C10651R.style.Custom_NoTitle_Dialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(policyType, "policyType");
        this.context = context;
        this.policyType = policyType;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogPolicyBinding>() { // from class: com.onyx.galaxy.note.account.view.dialog.PolicyDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogPolicyBinding invoke() {
                Context context2;
                context2 = PolicyDialog.this.context;
                return DialogPolicyBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
    }

    /* renamed from: d */
    public static final void m42029d(PolicyDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: b */
    public final DialogPolicyBinding m42030b() {
        return (DialogPolicyBinding) this.binding.getValue();
    }

    /* renamed from: c */
    public final void m42031c() {
        m42030b().btnBack.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.y4l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PolicyDialog.m42029d(PolicyDialog.this, view);
            }
        });
        m42030b().tvDialogTitle.setText(this.context.getString(this.policyType.getTitleRes()));
        m42030b().webView.getSettings().setCacheMode(2);
        ClusterManager.INSTANCE.ensureLoadObservable().map(new C10731a()).observeOn(AndroidSchedulers.mainThread()).map(new C10732b()).subscribe();
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063328, this, savedInstanceState);
    }
}
