package com.onyx.galaxy.note.common.view;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.C1126e;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.SearchProgressDialog;
import com.onyx.galaxy.note.databinding.DialogSearchProgressBinding;
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

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0018\u0010\t\u001a\u00020\u00042\u0010\u0010\b\u001a\f\u0012\u0004\u0012\u00020\u00040\u0006j\u0002`\u0007J\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010J\b\u0010\u0013\u001a\u00020\u0004H\u0002R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R \u0010\b\u001a\f\u0012\u0004\u0012\u00020\u00040\u0006j\u0002`\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006 "}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/SearchProgressDialog;", "Landroidx/appcompat/app/AppCompatDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "onClose", "setOnCloseCallback", "", "text", "setTitleText", "setNameText", "setProgressText", "setCountText", "", "progress", "updateProgress", "i", "Lcom/onyx/galaxy/note/databinding/DialogSearchProgressBinding;", "j", "Lkotlin/Lazy;", C6999h.f39688c, "()Lcom/onyx/galaxy/note/databinding/DialogSearchProgressBinding;", "binding", C4921e.f26537n, "Lkotlin/jvm/functions/Function0;", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class SearchProgressDialog extends AppCompatDialog {

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public Function0<Unit> onClose;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchProgressDialog(@NotNull final Context context) {
        super(context, C10651R.style.commonDialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogSearchProgressBinding>() { // from class: com.onyx.galaxy.note.common.view.SearchProgressDialog$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogSearchProgressBinding invoke() {
                return DialogSearchProgressBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        this.onClose = new Function0<Unit>() { // from class: com.onyx.galaxy.note.common.view.SearchProgressDialog$onClose$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
    }

    /* renamed from: j */
    public static final void m45188j(SearchProgressDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onClose.invoke();
    }

    /* renamed from: h */
    public final DialogSearchProgressBinding m45189h() {
        return (DialogSearchProgressBinding) this.binding.getValue();
    }

    /* renamed from: i */
    public final void m45190i() {
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        m45189h().progressBar.setMax(ResManager.INSTANCE.getInteger(C10651R.integer.seek_bar_max_value));
        TintImageView closeButton = m45189h().closeButton;
        Intrinsics.checkNotNullExpressionValue(closeButton, "closeButton");
        ViewKt.click$default(closeButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.z7m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchProgressDialog.m45188j(SearchProgressDialog.this, view);
            }
        }, 1, null);
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063286, this, savedInstanceState);
    }

    public final void setCountText(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        m45189h().countText.setText(text);
    }

    public final void setNameText(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        m45189h().nameText.setText(text);
    }

    public final void setOnCloseCallback(@NotNull Function0<Unit> onClose) {
        Intrinsics.checkNotNullParameter(onClose, "onClose");
        this.onClose = onClose;
    }

    public final void setProgressText(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        m45189h().progressText.setText(text);
    }

    public final void setTitleText(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        m45189h().titleText.setText(text);
    }

    public final void updateProgress(int progress) {
        m45189h().progressBar.setProgress(progress, true);
    }
}
