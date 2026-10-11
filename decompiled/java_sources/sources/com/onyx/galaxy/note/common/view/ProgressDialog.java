package com.onyx.galaxy.note.common.view;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.common.error.BaseError;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.ProgressDialog;
import com.onyx.galaxy.note.databinding.DialogProgressBinding;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\u000e\u001a\u00020\u0000J\u0006\u0010\u000f\u001a\u00020\u0000J\u0019\u0010\u0013\u001a\u0015\u0012\f\u0012\n \u0011*\u0004\u0018\u00010\u00000\u00000\u0010¢\u0006\u0002\b\u0012J\b\u0010\u0015\u001a\u00020\u0014H\u0002R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R'\u0010\u001c\u001a\u0015\u0012\f\u0012\n \u0011*\u0004\u0018\u00010\u00000\u00000\u0010¢\u0006\u0002\b\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006!"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/ProgressDialog;", "Landroid/app/Dialog;", "", "dismiss", "", "max", "setMaxProgress", "progress", "setProgress", "", "text", "setTitleText", "setLeftText", "setRightText", "showCloseButton", "showDialog", "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "getEventPublisher", "Landroid/view/View;", "b", "Lcom/onyx/galaxy/note/databinding/DialogProgressBinding;", "e", "Lcom/onyx/galaxy/note/databinding/DialogProgressBinding;", "binding", C6997f.f39671c, "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "publisher", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nProgressDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProgressDialog.kt\ncom/onyx/galaxy/note/common/view/ProgressDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"})
/* loaded from: classes9.dex */
public final class ProgressDialog extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    public DialogProgressBinding binding;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ReplaySubject<ProgressDialog> publisher;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProgressDialog(@NotNull Context context) {
        super(context, C10651R.style.commonDialog);
        Intrinsics.checkNotNullParameter(context, "context");
        ReplaySubject<ProgressDialog> create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.publisher = create;
        Window window = getWindow();
        if (window != null) {
            window.setDimAmount(0.0f);
        }
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        setContentView(m45180b());
    }

    /* renamed from: c */
    public static final void m45179c(ProgressDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.publisher.onError(OnyxException.INSTANCE.m31891of(BaseError.ACTION_ABORT));
        this$0.dismiss();
    }

    /* renamed from: b */
    public final View m45180b() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setForegroundGravity(17);
        DialogProgressBinding inflate = DialogProgressBinding.inflate(LayoutInflater.from(getContext()), frameLayout, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.closeButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.j8l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ProgressDialog.m45179c(ProgressDialog.this, view);
            }
        });
        return frameLayout;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.publisher.onComplete();
    }

    @NotNull
    public final ReplaySubject<ProgressDialog> getEventPublisher() {
        return this.publisher;
    }

    @NotNull
    public final ProgressDialog setLeftText(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        DialogProgressBinding dialogProgressBinding = this.binding;
        if (dialogProgressBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogProgressBinding = null;
        }
        dialogProgressBinding.leftText.setText(text);
        return this;
    }

    @NotNull
    public final ProgressDialog setMaxProgress(int max) {
        DialogProgressBinding dialogProgressBinding = this.binding;
        if (dialogProgressBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogProgressBinding = null;
        }
        dialogProgressBinding.progressBar.setMax(max);
        return this;
    }

    @NotNull
    public final ProgressDialog setProgress(int progress) {
        DialogProgressBinding dialogProgressBinding = this.binding;
        if (dialogProgressBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogProgressBinding = null;
        }
        dialogProgressBinding.progressBar.setProgress(progress);
        return this;
    }

    @NotNull
    public final ProgressDialog setRightText(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        DialogProgressBinding dialogProgressBinding = this.binding;
        if (dialogProgressBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogProgressBinding = null;
        }
        dialogProgressBinding.rightText.setText(text);
        return this;
    }

    @NotNull
    public final ProgressDialog setTitleText(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        DialogProgressBinding dialogProgressBinding = this.binding;
        if (dialogProgressBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogProgressBinding = null;
        }
        dialogProgressBinding.titleText.setText(text);
        return this;
    }

    @NotNull
    public final ProgressDialog showCloseButton() {
        DialogProgressBinding dialogProgressBinding = this.binding;
        if (dialogProgressBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogProgressBinding = null;
        }
        ViewKt.setViewVisibleOrInvisible(dialogProgressBinding.closeButton, true);
        return this;
    }

    @NotNull
    public final ProgressDialog showDialog() {
        show();
        this.publisher.onNext(this);
        return this;
    }
}
