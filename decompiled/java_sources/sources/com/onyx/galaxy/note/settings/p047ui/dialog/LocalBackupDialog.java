package com.onyx.galaxy.note.settings.p047ui.dialog;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.events.note.ExportNoteProgressEvent;
import com.onyx.android.sdk.universal.editor.events.note.LocalBackupCompleteEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.editor.view.dialog.NoteExportResultDialog;
import com.onyx.galaxy.note.settings.p047ui.adapter.BackupErrorAdapter;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0014J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0007J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\rH\u0007J\b\u0010\u000f\u001a\u00020\u0004H\u0014J\u0016\u0010\u0013\u001a\u00020\u00042\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0003¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/dialog/LocalBackupDialog;", "Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportResultDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "dismiss", "", "exportPath", "onExportSucceed", "Lcom/onyx/android/sdk/universal/editor/events/note/ExportNoteProgressEvent;", NotificationCompat.CATEGORY_EVENT, "onExportNoteProgressEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/LocalBackupCompleteEvent;", "onBackupCompleteEvent", "initView", "", "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "list", "d", "Landroid/content/Context;", "context", "Lkotlin/Function0;", "onCancel", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLocalBackupDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalBackupDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/LocalBackupDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,81:1\n1#2:82\n*E\n"})
/* loaded from: classes17.dex */
public final class LocalBackupDialog extends NoteExportResultDialog {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocalBackupDialog(@NotNull Context context, @NotNull Function0<Unit> onCancel) {
        super(context, onCancel);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(onCancel, "onCancel");
        setErrorListAdapter(new BackupErrorAdapter(DocCollectionBundle.INSTANCE.docManagerBundle()));
    }

    @SuppressLint({"SetTextI18n"})
    /* renamed from: d */
    public final void m50816d(List<NoteExportArgs> list) {
        Object obj;
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (!((NoteExportArgs) obj).getNoteProgressInfo().isFinished()) {
                    break;
                }
            }
        }
        NoteExportArgs noteExportArgs = (NoteExportArgs) obj;
        if (noteExportArgs == null) {
            return;
        }
        int indexOf = list.indexOf(noteExportArgs);
        int progress = (int) noteExportArgs.getNoteProgressInfo().getProgressInfo().getProgress();
        String str = noteExportArgs.getNoteModel().getTitle() + getContext().getString(C10651R.string.backup_note_progress_hint);
        getBinding().progress.setProgress(progress);
        TintTextView tintTextView = getBinding().tvCount;
        StringBuilder sb = new StringBuilder();
        sb.append(indexOf + 1);
        sb.append('/');
        sb.append(list.size());
        tintTextView.setText(sb.toString());
        TintTextView tintTextView2 = getBinding().tvProgress;
        String format = String.format(str, Arrays.copyOf(new Object[]{Integer.valueOf(progress)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        tintTextView2.setText(format);
    }

    @Override // com.onyx.galaxy.note.editor.view.dialog.NoteExportResultDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        EditorBundleKt.unregister(DocCollectionBundle.INSTANCE.docManagerBundle(), this);
    }

    @Override // com.onyx.galaxy.note.editor.view.dialog.NoteExportResultDialog
    public void initView() {
        super.initView();
        getBinding().tvTitle.setText(C10651R.string.local_backup_title);
        getBinding().tvFinishTitle.setText(C10651R.string.backup_finished_title);
        getBinding().tvErrorTitle.setText(C10651R.string.backup_error_title);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onBackupCompleteEvent(@NotNull LocalBackupCompleteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getBackupContext().getThrowable() != null) {
            onExportFail(event.getBackupContext().getThrowable());
        } else {
            onExportResult(event.getBackupContext().getBackupFilePath(), event.getBackupContext().getNoteExportList());
        }
    }

    @Override // com.onyx.galaxy.note.editor.view.dialog.NoteExportResultDialog, android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063272, this, savedInstanceState);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onExportNoteProgressEvent(@NotNull ExportNoteProgressEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m50816d(event.getList());
    }

    @Override // com.onyx.galaxy.note.editor.view.dialog.NoteExportResultDialog
    public void onExportSucceed(@NotNull String exportPath) {
        Intrinsics.checkNotNullParameter(exportPath, "exportPath");
        super.onExportSucceed(exportPath);
        String string = getContext().getString(C10651R.string.backup_finished_sub_title);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        TintTextView tintTextView = getBinding().tvFinishSubTitle;
        String format = String.format(string, Arrays.copyOf(new Object[]{exportPath}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        tintTextView.setText(format);
    }
}
