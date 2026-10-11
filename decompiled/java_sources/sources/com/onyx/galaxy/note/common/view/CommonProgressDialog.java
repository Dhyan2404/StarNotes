package com.onyx.galaxy.note.common.view;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.C1126e;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.theme.widgets.TintProgressBar;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.CommonProgressDialog;
import com.onyx.galaxy.note.databinding.DialogCommonProgressBinding;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\u0018\u0010\f\u001a\u00020\u00002\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\nJ\u0006\u0010\r\u001a\u00020\u0000J\u0006\u0010\u000e\u001a\u00020\u0000J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fJ\b\u0010\u0012\u001a\u00020\u0004H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002R\u001b\u0010\u001a\u001a\u00020\u00158FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006'"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;", "Landroid/app/Dialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "", "text", "setTitleText", "setSubText", "Lkotlin/Function0;", BreakpointSQLiteHelper.f39283i, "showCloseButton", "hideProgressText", "startCycleProgress", "", "progress", "updateProgress", "dismiss", "b", "d", "Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;", "e", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;", "binding", "", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "startCycle", "Landroid/os/CountDownTimer;", C6998g.f39679a, "Landroid/os/CountDownTimer;", "timer", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCommonProgressDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonProgressDialog.kt\ncom/onyx/galaxy/note/common/view/CommonProgressDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n1#2:89\n*E\n"})
/* loaded from: classes17.dex */
public final class CommonProgressDialog extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean startCycle;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public CountDownTimer timer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonProgressDialog(@NotNull final Context context) {
        super(context, C10651R.style.commonDialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogCommonProgressBinding>() { // from class: com.onyx.galaxy.note.common.view.CommonProgressDialog$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogCommonProgressBinding invoke() {
                DialogCommonProgressBinding inflate = DialogCommonProgressBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
    }

    /* renamed from: c */
    public static final void m45146c(Function0 function0, CommonProgressDialog this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        if (function0 != null) {
            function0.invoke();
        }
        this_apply.dismiss();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CommonProgressDialog showCloseButton$default(CommonProgressDialog commonProgressDialog, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = null;
        }
        return commonProgressDialog.showCloseButton(function0);
    }

    /* renamed from: b */
    public final void m45147b() {
        setCanceledOnTouchOutside(false);
        setCancelable(!ViewKt.isVisible(getBinding().ivClose));
    }

    /* renamed from: d */
    public final void m45148d() {
        if (this.startCycle) {
            getBinding().progressBar.setProgress(0);
            ResManager resManager = ResManager.INSTANCE;
            final long j = resManager.getLong(C10651R.integer.progress_cycle_times);
            final long j2 = resManager.getLong(C10651R.integer.progress_interval_times);
            this.timer = new CountDownTimer(j, j2) { // from class: com.onyx.galaxy.note.common.view.CommonProgressDialog$startCycle$1
                @Override // android.os.CountDownTimer
                public void onFinish() {
                    CommonProgressDialog.this.m45148d();
                }

                @Override // android.os.CountDownTimer
                public void onTick(long millisUntilFinished) {
                    TintProgressBar tintProgressBar = CommonProgressDialog.this.getBinding().progressBar;
                    tintProgressBar.setProgress(tintProgressBar.getProgress() + ResManager.INSTANCE.getInteger(C10651R.integer.progress_cycle_increment));
                }
            }.start();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        CountDownTimer countDownTimer = this.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.timer = null;
    }

    @NotNull
    public final DialogCommonProgressBinding getBinding() {
        return (DialogCommonProgressBinding) this.binding.getValue();
    }

    @NotNull
    public final CommonProgressDialog hideProgressText() {
        ViewKt.setViewVisibleOrInvisible(getBinding().llProgress, true);
        return this;
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063292, this, savedInstanceState);
    }

    @NotNull
    public final CommonProgressDialog setSubText(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        getBinding().tvSubTitle.setText(text);
        return this;
    }

    @NotNull
    public final CommonProgressDialog setTitleText(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        getBinding().tvTitle.setText(text);
        return this;
    }

    @NotNull
    public final CommonProgressDialog showCloseButton(@Nullable final Function0<Unit> block) {
        ViewKt.setViewVisibleOrInvisible(getBinding().ivClose, true);
        getBinding().ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.o5e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CommonProgressDialog.m45146c(Function0.this, this, view);
            }
        });
        return this;
    }

    @NotNull
    public final CommonProgressDialog startCycleProgress() {
        this.startCycle = true;
        return this;
    }

    public final void updateProgress(int progress) {
        if (this.startCycle) {
            return;
        }
        getBinding().progressBar.setProgress(progress);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(ResManager.INSTANCE.getStringSafely(C10651R.string.note_export_progress), Arrays.copyOf(new Object[]{Integer.valueOf(progress)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        getBinding().tvProgress.setText(format);
    }
}
