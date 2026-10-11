package com.onyx.galaxy.note.settings.p047ui.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.event.CloudStorageDownloadFileEvent;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.data.common.data.ErrorCode;
import com.onyx.android.sdk.data.common.data.ResultCode;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import com.onyx.android.sdk.data.common.exception.FileDownloadException;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.utils.ThrowableUtils;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.action.backup.CloudRestoreAction;
import com.onyx.android.sdk.universal.editor.data.ImportErrorBean;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.onyx.android.sdk.universal.editor.events.note.CloudRestoreCompleteEvent;
import com.onyx.android.sdk.universal.editor.events.note.ImportNoteProgressEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.RestoreContext;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.databinding.DialogDriveRecoveryBinding;
import com.onyx.galaxy.note.settings.data.SettingsBundle;
import com.onyx.galaxy.note.settings.event.CloudRestoreEvent;
import com.onyx.galaxy.note.settings.p047ui.adapter.RestoreErrorAdapter;
import com.onyx.galaxy.note.settings.p047ui.dialog.CloudRestoreDialog;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010 \u001a\u00020\u001d\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b.\u0010/J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0007J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\rH\u0007J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0016\u0010\u0017\u001a\u00020\u00042\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u0016\u0010\u001b\u001a\u00020\u00042\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0002J\b\u0010\u001c\u001a\u00020\u0004H\u0002R\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010!R\u001b\u0010'\u001a\u00020\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0014\u0010*\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010,¨\u00060"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;", "Landroid/app/Dialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "onAttachedToWindow", "onDetachedFromWindow", "Lcom/onyx/android/sdk/universal/editor/events/note/CloudRestoreCompleteEvent;", NotificationCompat.CATEGORY_EVENT, "onCloudRestoreCompleteEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ImportNoteProgressEvent;", "onImportNoteProgressEvent", "Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageDownloadFileEvent;", "onCloudStorageDownloadFileEvent", "d", "i", "Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;", "restoreContext", C6999h.f39688c, "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFileStatus", C4921e.f26537n, "", "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;", "argsList", "j", C6997f.f39671c, "Landroid/content/Context;", "e", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;", "Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;", C6998g.f39679a, "Lkotlin/Lazy;", "c", "()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;", "binding", "Lcom/onyx/galaxy/note/settings/ui/adapter/RestoreErrorAdapter;", "Lcom/onyx/galaxy/note/settings/ui/adapter/RestoreErrorAdapter;", "errorListAdapter", "Lio/reactivex/rxjava3/disposables/Disposable;", "Lio/reactivex/rxjava3/disposables/Disposable;", "disposable", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCloudRestoreDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudRestoreDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,172:1\n256#2,2:173\n256#2,2:175\n256#2,2:177\n256#2,2:182\n256#2,2:184\n256#2,2:186\n256#2,2:188\n256#2,2:190\n256#2,2:197\n1726#3,3:179\n1747#3,3:192\n288#3,2:195\n*S KotlinDebug\n*F\n+ 1 CloudRestoreDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog\n*L\n84#1:173,2\n85#1:175,2\n86#1:177,2\n92#1:182,2\n93#1:184,2\n96#1:186,2\n97#1:188,2\n98#1:190,2\n153#1:197,2\n91#1:179,3\n107#1:192,3\n128#1:195,2\n*E\n"})
/* loaded from: classes17.dex */
public final class CloudRestoreDialog extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final RestoreContext restoreContext;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RestoreErrorAdapter errorListAdapter;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Disposable disposable;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudRestoreDialog(@NotNull Context context, @NotNull RestoreContext restoreContext) {
        super(context, C10651R.style.commonDialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(restoreContext, "restoreContext");
        this.context = context;
        this.restoreContext = restoreContext;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogDriveRecoveryBinding>() { // from class: com.onyx.galaxy.note.settings.ui.dialog.CloudRestoreDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogDriveRecoveryBinding invoke() {
                Context context2;
                context2 = CloudRestoreDialog.this.context;
                return DialogDriveRecoveryBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        this.errorListAdapter = new RestoreErrorAdapter();
    }

    /* renamed from: e */
    public static final void m50764e() {
        SettingsBundle.INSTANCE.postEvent(new CloudRestoreEvent());
    }

    /* renamed from: g */
    public static final void m50765g(CloudRestoreDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Disposable disposable = this$0.disposable;
        if (disposable != null) {
            disposable.dispose();
        }
        this$0.dismiss();
    }

    /* renamed from: c */
    public final DialogDriveRecoveryBinding m50766c() {
        return (DialogDriveRecoveryBinding) this.binding.getValue();
    }

    /* renamed from: d */
    public final void m50767d() {
        this.disposable = new CloudRestoreAction(DocCollectionBundle.INSTANCE.docManagerBundle(), this.restoreContext).build().doFinally(new Action() { // from class: com.sunia.HTREnginev2.rvd
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                CloudRestoreDialog.m50764e();
            }
        }).subscribe();
    }

    /* renamed from: f */
    public final void m50768f() {
        Provider defaultProvider;
        String string = this.context.getString(C10651R.string.dialog_drive_restore_title);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        Provider.Companion companion = Provider.INSTANCE;
        Context applicationContext = this.context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        BaseCloudStorageProvider cloudProvider = this.restoreContext.getCloudProvider();
        if (cloudProvider == null || (defaultProvider = cloudProvider.getProviderType()) == null) {
            defaultProvider = companion.getDefaultProvider();
        }
        String nameByProvider = companion.getNameByProvider(applicationContext, defaultProvider);
        MediumTextView mediumTextView = m50766c().tvTitle;
        String format = String.format(string, Arrays.copyOf(new Object[]{nameByProvider}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        mediumTextView.setText(format);
        m50766c().ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.svd
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CloudRestoreDialog.m50765g(CloudRestoreDialog.this, view);
            }
        });
        m50766c().itemErrorList.setAdapter(this.errorListAdapter);
    }

    /* renamed from: h */
    public final void m50769h(RestoreContext restoreContext) {
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
            TintTextView tvErrorTitle = m50766c().tvErrorTitle;
            Intrinsics.checkNotNullExpressionValue(tvErrorTitle, "tvErrorTitle");
            tvErrorTitle.setVisibility(0);
            TintTextView tvFinishTitle = m50766c().tvFinishTitle;
            Intrinsics.checkNotNullExpressionValue(tvFinishTitle, "tvFinishTitle");
            tvFinishTitle.setVisibility(8);
        }
        m50766c().tvErrorSubTitle.setText((throwable == null || (errorCode = ThrowableUtils.INSTANCE.getErrorCode(throwable)) == null) ? null : errorCode.getErrorMessage());
        Group groupError = m50766c().groupError;
        Intrinsics.checkNotNullExpressionValue(groupError, "groupError");
        groupError.setVisibility(0);
        Group groupProgress = m50766c().groupProgress;
        Intrinsics.checkNotNullExpressionValue(groupProgress, "groupProgress");
        groupProgress.setVisibility(8);
        Group groupFinished = m50766c().groupFinished;
        Intrinsics.checkNotNullExpressionValue(groupFinished, "groupFinished");
        groupFinished.setVisibility(8);
    }

    /* renamed from: i */
    public final void m50770i() {
        Group groupError = m50766c().groupError;
        Intrinsics.checkNotNullExpressionValue(groupError, "groupError");
        groupError.setVisibility(8);
        Group groupProgress = m50766c().groupProgress;
        Intrinsics.checkNotNullExpressionValue(groupProgress, "groupProgress");
        groupProgress.setVisibility(8);
        Group groupFinished = m50766c().groupFinished;
        Intrinsics.checkNotNullExpressionValue(groupFinished, "groupFinished");
        groupFinished.setVisibility(0);
    }

    /* renamed from: j */
    public final void m50771j(List<NoteImportArgs> argsList) {
        List<ImportErrorBean> importErrorBeanList = NoteImportArgs.INSTANCE.getImportErrorBeanList(argsList);
        TintLinearLayout itemErrorListLayout = m50766c().itemErrorListLayout;
        Intrinsics.checkNotNullExpressionValue(itemErrorListLayout, "itemErrorListLayout");
        itemErrorListLayout.setVisibility(importErrorBeanList.isEmpty() ^ true ? 0 : 8);
        this.errorListAdapter.submitList(importErrorBeanList);
    }

    /* renamed from: k */
    public final void m50772k(OnyxFileTransferStatus<CloudFileBean> cloudFileStatus) {
        StringBuilder sb = new StringBuilder();
        CloudFileBean entry = cloudFileStatus.getEntry();
        sb.append(entry != null ? entry.getName() : null);
        sb.append(' ');
        sb.append(this.context.getString(C10651R.string.download_note_progress_hint));
        String sb2 = sb.toString();
        int progress = (int) cloudFileStatus.getProgress();
        m50766c().progress.setProgress(progress);
        TintTextView tintTextView = m50766c().tvProgress;
        String format = String.format(sb2, Arrays.copyOf(new Object[]{Integer.valueOf(progress)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        tintTextView.setText(format);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        CloudStorageManager.INSTANCE.getOurInstance().register(this);
        EditorBundleKt.register(DocCollectionBundle.INSTANCE.docManagerBundle(), this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCloudRestoreCompleteEvent(@NotNull CloudRestoreCompleteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getRestoreContext().getThrowable() != null) {
            m50769h(event.getRestoreContext());
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
            m50770i();
        } else {
            m50769h(event.getRestoreContext());
        }
        m50771j(event.getRestoreContext().getNoteImportList());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCloudStorageDownloadFileEvent(@NotNull CloudStorageDownloadFileEvent event) {
        Object obj;
        Intrinsics.checkNotNullParameter(event, "event");
        Iterator<T> it2 = this.restoreContext.getNoteImportList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            CloudFileBean cloudFileBean = ((NoteImportArgs) next).getCloudFileBean();
            String localFilePath = cloudFileBean != null ? cloudFileBean.getLocalFilePath() : null;
            CloudFileBean entry = event.getCloudFileStatus().getEntry();
            if (Intrinsics.areEqual(localFilePath, entry != null ? entry.getLocalFilePath() : null)) {
                obj = next;
                break;
            }
        }
        NoteImportArgs noteImportArgs = (NoteImportArgs) obj;
        if (noteImportArgs == null) {
            return;
        }
        if (event.getCloudFileStatus().isError()) {
            FileDownloadException fileDownloadException = new FileDownloadException();
            ResultCode errorResultCode = event.getCloudFileStatus().getErrorResultCode();
            if (errorResultCode != null) {
                ErrorCode errorCode = fileDownloadException.getErrorCode();
                errorCode.setCode(String.valueOf(errorResultCode.getCode()));
                errorCode.setMessage(errorResultCode.getMessage());
            }
            noteImportArgs.setThrowable(fileDownloadException);
        }
        m50772k(event.getCloudFileStatus());
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063274, this, savedInstanceState);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        CloudStorageManager.INSTANCE.getOurInstance().unregister(this);
        EditorBundleKt.unregister(DocCollectionBundle.INSTANCE.docManagerBundle(), this);
        Disposable disposable = this.disposable;
        if (disposable != null) {
            disposable.dispose();
        }
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
        m50766c().progress.setProgress(noteProgress);
        String string = this.context.getString(C10651R.string.recovery_note_progress_hint);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String format = String.format(string, Arrays.copyOf(new Object[]{fileName, Integer.valueOf(noteProgress)}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        m50766c().tvProgress.setText(format);
    }
}
