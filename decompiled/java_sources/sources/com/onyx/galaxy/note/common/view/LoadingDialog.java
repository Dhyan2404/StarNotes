package com.onyx.galaxy.note.common.view;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.C1126e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.DialogLoadingBinding;
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

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0013¢\u0006\u0004\b \u0010!J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0018\u0010\t\u001a\u00020\u00002\u0010\u0010\b\u001a\f\u0012\u0004\u0012\u00020\u00040\u0006j\u0002`\u0007J\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u000f\u001a\u00020\u0004J\u0006\u0010\u0010\u001a\u00020\u0004J\b\u0010\u0011\u001a\u00020\u0004H\u0014J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001b\u0010\u001c\u001a\u00020\u00178DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR$\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006j\u0004\u0018\u0001`\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/LoadingDialog;", "Landroid/app/Dialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "callback", "setBackPressCallback", "", "text", "updateTitle", "", "strId", "setTransparentAlpha", "setOpaqueAlpha", "initView", "onBackPressed", "Landroid/content/Context;", "e", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/databinding/DialogLoadingBinding;", C6997f.f39671c, "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/DialogLoadingBinding;", "binding", C6998g.f39679a, "Lkotlin/jvm/functions/Function0;", "backPressCallback", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public class LoadingDialog extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Function0<Unit> backPressCallback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadingDialog(@NotNull Context context) {
        super(context, C10651R.style.Custom_NoTitle_Dialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogLoadingBinding>() { // from class: com.onyx.galaxy.note.common.view.LoadingDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogLoadingBinding invoke() {
                Context context2;
                context2 = LoadingDialog.this.context;
                return DialogLoadingBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
    }

    @NotNull
    public final DialogLoadingBinding getBinding() {
        return (DialogLoadingBinding) this.binding.getValue();
    }

    public void initView() {
        Drawable background = getBinding().f56419iv.getBackground();
        Intrinsics.checkNotNull(background, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable");
        ((AnimationDrawable) background).start();
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        Function0<Unit> function0 = this.backPressCallback;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063289, this, savedInstanceState);
    }

    @NotNull
    public final LoadingDialog setBackPressCallback(@NotNull Function0<Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.backPressCallback = callback;
        return this;
    }

    public final void setOpaqueAlpha() {
        getBinding().getRoot().setAlpha(1.0f);
    }

    public final void setTransparentAlpha() {
        getBinding().getRoot().setAlpha(0.0f);
    }

    public final void updateTitle(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        getBinding().f56420tv.setText(text);
    }

    public final void updateTitle(int strId) {
        getBinding().f56420tv.setText(this.context.getString(strId));
    }
}
