package com.onyx.galaxy.note.settings.p047ui.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.ErrorCode;
import com.onyx.android.sdk.data.utils.ThrowableUtils;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.data.ImportErrorBean;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.onyx.android.sdk.universal.editor.events.note.ImportNoteProgressEvent;
import com.onyx.android.sdk.universal.editor.events.note.LocalRestoreCompleteEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.RestoreContext;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.databinding.DialogLocalRecoveryBinding;
import com.onyx.galaxy.note.settings.p047ui.adapter.RestoreErrorAdapter;
import com.onyx.galaxy.note.settings.p047ui.dialog.LocalRestoreDialog;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0017\u001a\u00020\u0015\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00040\u0018¢\u0006\u0004\b$\u0010%J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\nH\u0007J\b\u0010\f\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0016\u0010\u0013\u001a\u00020\u00042\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0016R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00040\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreDialog;", "Landroid/app/Dialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "dismiss", "Lcom/onyx/android/sdk/universal/editor/events/note/ImportNoteProgressEvent;", NotificationCompat.CATEGORY_EVENT, "onImportNoteProgressEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreCompleteEvent;", "onLocalRestoreCompleteEvent", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;", "restoreContext", "e", "", "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;", "argsList", C6998g.f39679a, "c", "Landroid/content/Context;", "Landroid/content/Context;", "context", "Lkotlin/Function0;", "Lkotlin/jvm/functions/Function0;", "onCancel", "Lcom/onyx/galaxy/note/databinding/DialogLocalRecoveryBinding;", "Lkotlin/Lazy;", "b", "()Lcom/onyx/galaxy/note/databinding/DialogLocalRecoveryBinding;", "binding", "Lcom/onyx/galaxy/note/settings/ui/adapter/RestoreErrorAdapter;", C6999h.f39688c, "Lcom/onyx/galaxy/note/settings/ui/adapter/RestoreErrorAdapter;", "errorListAdapter", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLocalRestoreDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalRestoreDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,114:1\n1747#2,3:115\n1726#2,3:124\n256#3,2:118\n256#3,2:120\n256#3,2:122\n256#3,2:127\n256#3,2:129\n256#3,2:131\n256#3,2:133\n256#3,2:135\n256#3,2:137\n*S KotlinDebug\n*F\n+ 1 LocalRestoreDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreDialog\n*L\n74#1:115,3\n91#1:124,3\n84#1:118,2\n85#1:120,2\n86#1:122,2\n92#1:127,2\n93#1:129,2\n96#1:131,2\n97#1:133,2\n98#1:135,2\n103#1:137,2\n*E\n"})
/* loaded from: classes17.dex */
public final class LocalRestoreDialog extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> onCancel;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RestoreErrorAdapter errorListAdapter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocalRestoreDialog(@NotNull Context context, @NotNull Function0<Unit> onCancel) {
        super(context, C10651R.style.commonDialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(onCancel, "onCancel");
        this.context = context;
        this.onCancel = onCancel;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogLocalRecoveryBinding>() { // from class: com.onyx.galaxy.note.settings.ui.dialog.LocalRestoreDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogLocalRecoveryBinding invoke() {
                Context context2;
                context2 = LocalRestoreDialog.this.context;
                return DialogLocalRecoveryBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        this.errorListAdapter = new RestoreErrorAdapter();
    }

    /* renamed from: d */
    public static final void m50818d(LocalRestoreDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onCancel.invoke();
        this$0.dismiss();
    }

    /* renamed from: b */
    public final DialogLocalRecoveryBinding m50819b() {
        return (DialogLocalRecoveryBinding) this.binding.getValue();
    }

    /* renamed from: c */
    public final void m50820c() {
        m50819b().ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.t0j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LocalRestoreDialog.m50818d(LocalRestoreDialog.this, view);
            }
        });
        m50819b().itemErrorList.setAdapter(this.errorListAdapter);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.onCancel.invoke();
        EditorBundleKt.unregister(DocCollectionBundle.INSTANCE.docManagerBundle(), this);
    }

    /* renamed from: e */
    public final void m50821e(RestoreContext restoreContext) {
        ErrorCode errorCode;
        Throwable throwable = restoreContext.getThrowable();
        List<NoteImportArgs> noteImportList = restoreContext.getNoteImportList();
        boolean z = true;
        if (!(noteImportList instanceof Collection) || !noteImportList.isEmpty()) {
            Iterator<T> it2 = noteImportList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                } else if (!((NoteImportArgs) it2.next()).allErrorImported()) {
                    z = false;
                    break;
                }
            }
        }
        if (z) {
            TintTextView tvErrorTitle = m50819b().tvErrorTitle;
            Intrinsics.checkNotNullExpressionValue(tvErrorTitle, "tvErrorTitle");
            tvErrorTitle.setVisibility(0);
            TintTextView tvFinishTitle = m50819b().tvFinishTitle;
            Intrinsics.checkNotNullExpressionValue(tvFinishTitle, "tvFinishTitle");
            tvFinishTitle.setVisibility(8);
        }
        m50819b().tvErrorSubTitle.setText((throwable == null || (errorCode = ThrowableUtils.INSTANCE.getErrorCode(throwable)) == null) ? null : errorCode.getErrorMessage());
        Group groupError = m50819b().groupError;
        Intrinsics.checkNotNullExpressionValue(groupError, "groupError");
        groupError.setVisibility(0);
        Group groupProgress = m50819b().groupProgress;
        Intrinsics.checkNotNullExpressionValue(groupProgress, "groupProgress");
        groupProgress.setVisibility(8);
        Group groupFinished = m50819b().groupFinished;
        Intrinsics.checkNotNullExpressionValue(groupFinished, "groupFinished");
        groupFinished.setVisibility(8);
    }

    /* renamed from: f */
    public final void m50822f() {
        Group groupError = m50819b().groupError;
        Intrinsics.checkNotNullExpressionValue(groupError, "groupError");
        groupError.setVisibility(8);
        Group groupProgress = m50819b().groupProgress;
        Intrinsics.checkNotNullExpressionValue(groupProgress, "groupProgress");
        groupProgress.setVisibility(8);
        Group groupFinished = m50819b().groupFinished;
        Intrinsics.checkNotNullExpressionValue(groupFinished, "groupFinished");
        groupFinished.setVisibility(0);
    }

    /* renamed from: g */
    public final void m50823g(List<NoteImportArgs> argsList) {
        List<ImportErrorBean> importErrorBeanList = NoteImportArgs.INSTANCE.getImportErrorBeanList(argsList);
        TintLinearLayout itemErrorListLayout = m50819b().itemErrorListLayout;
        Intrinsics.checkNotNullExpressionValue(itemErrorListLayout, "itemErrorListLayout");
        itemErrorListLayout.setVisibility(importErrorBeanList.isEmpty() ^ true ? 0 : 8);
        this.errorListAdapter.submitList(importErrorBeanList);
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063271, this, savedInstanceState);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportNoteProgressEvent(@NotNull ImportNoteProgressEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        NoteImportArgs importingNoteArgs = NoteImportArgs.INSTANCE.getImportingNoteArgs(event.getList());
        if (importingNoteArgs == null) {
            return;
        }
        String fileName = UriKt.getFileName(importingNoteArgs.getImportFileUri(), ResManager.INSTANCE.getAppContext());
        int noteProgress = (int) importingNoteArgs.getNoteProgress();
        m50819b().progress.setProgress(noteProgress);
        String string = this.context.getString(C10651R.string.recovery_note_progress_hint);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String format = String.format(string, Arrays.copyOf(new Object[]{fileName, Integer.valueOf(noteProgress)}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        m50819b().tvProgress.setText(format);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLocalRestoreCompleteEvent(@NotNull LocalRestoreCompleteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getRestoreContext().getThrowable() != null) {
            m50821e(event.getRestoreContext());
            return;
        }
        List<NoteImportArgs> noteImportList = event.getRestoreContext().getNoteImportList();
        boolean z = false;
        if (!(noteImportList instanceof Collection) || !noteImportList.isEmpty()) {
            Iterator<T> it2 = noteImportList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                } else if (((NoteImportArgs) it2.next()).anySuccessImported()) {
                    z = true;
                    break;
                }
            }
        }
        if (z) {
            m50822f();
        } else {
            m50821e(event.getRestoreContext());
        }
        m50823g(event.getRestoreContext().getNoteImportList());
    }
}
