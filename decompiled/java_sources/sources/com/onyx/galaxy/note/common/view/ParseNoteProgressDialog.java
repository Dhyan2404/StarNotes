package com.onyx.galaxy.note.common.view;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.onyx.android.sdk.universal.editor.events.note.ImportNoteProgressEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.view.ParseNoteProgressDialog;
import com.onyx.galaxy.note.databinding.DialogParseNoteProgressBinding;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\u0018\u0010\u000b\u001a\u00020\u00002\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\tJ\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0007J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fJ\b\u0010\u0012\u001a\u00020\u0004H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0002R\u001b\u0010\u0019\u001a\u00020\u00148FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;", "Landroid/app/Dialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "", "name", "setFileName", "Lkotlin/Function0;", BreakpointSQLiteHelper.f39283i, "showCloseButton", "Lcom/onyx/android/sdk/universal/editor/events/note/ImportNoteProgressEvent;", NotificationCompat.CATEGORY_EVENT, "onImportNoteProgressEvent", "", "progress", "updateProgress", "dismiss", "b", "Lcom/onyx/galaxy/note/databinding/DialogParseNoteProgressBinding;", "e", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/DialogParseNoteProgressBinding;", "binding", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nParseNoteProgressDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseNoteProgressDialog.kt\ncom/onyx/galaxy/note/common/view/ParseNoteProgressDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,69:1\n1#2:70\n*E\n"})
/* loaded from: classes17.dex */
public final class ParseNoteProgressDialog extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ParseNoteProgressDialog(@NotNull final Context context) {
        super(context, C10651R.style.commonDialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogParseNoteProgressBinding>() { // from class: com.onyx.galaxy.note.common.view.ParseNoteProgressDialog$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogParseNoteProgressBinding invoke() {
                DialogParseNoteProgressBinding inflate = DialogParseNoteProgressBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
    }

    /* renamed from: c */
    public static final void m45176c(Function0 function0, ParseNoteProgressDialog this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        if (function0 != null) {
            function0.invoke();
        }
        this_apply.dismiss();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ParseNoteProgressDialog showCloseButton$default(ParseNoteProgressDialog parseNoteProgressDialog, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = null;
        }
        return parseNoteProgressDialog.showCloseButton(function0);
    }

    /* renamed from: b */
    public final void m45177b() {
        setCanceledOnTouchOutside(false);
        setCancelable(!ViewKt.isVisible(getBinding().ivClose));
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        EditorBundleKt.unregister(DocCollectionBundle.INSTANCE.docManagerBundle(), this);
    }

    @NotNull
    public final DialogParseNoteProgressBinding getBinding() {
        return (DialogParseNoteProgressBinding) this.binding.getValue();
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063287, this, savedInstanceState);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportNoteProgressEvent(@NotNull ImportNoteProgressEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        NoteImportArgs importingNoteArgs = NoteImportArgs.INSTANCE.getImportingNoteArgs(event.getList());
        if (importingNoteArgs == null) {
            return;
        }
        updateProgress((int) importingNoteArgs.getNoteProgress());
    }

    @NotNull
    public final ParseNoteProgressDialog setFileName(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        getBinding().tvName.setText(name);
        return this;
    }

    @NotNull
    public final ParseNoteProgressDialog showCloseButton(@Nullable final Function0<Unit> block) {
        ViewKt.setViewVisibleOrInvisible(getBinding().ivClose, true);
        getBinding().ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.uwk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ParseNoteProgressDialog.m45176c(Function0.this, this, view);
            }
        });
        return this;
    }

    public final void updateProgress(int progress) {
        getBinding().progressBar.setProgress(progress);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(ResManager.INSTANCE.getStringSafely(C10651R.string.note_export_progress), Arrays.copyOf(new Object[]{Integer.valueOf(progress)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        getBinding().tvCurrentProgress.setText(format);
    }
}
