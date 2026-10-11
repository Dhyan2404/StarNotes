package com.onyx.galaxy.note.settings.p047ui.dialog;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.event.CloudStorageUploadFileEvent;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.data.common.data.ErrorCode;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.utils.ThrowableUtils;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.events.note.CloudBackupCompleteEvent;
import com.onyx.android.sdk.universal.editor.events.note.ExportNoteProgressEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.BackupConstant;
import com.onyx.android.sdk.universal.p042ui.data.BackupContext;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.databinding.DialogNetworkBackupBinding;
import com.onyx.galaxy.note.settings.p047ui.adapter.BackupErrorAdapter;
import com.onyx.galaxy.note.settings.p047ui.dialog.CloudBackupDialog;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\u0006\u0010$\u001a\u00020\"\u0012\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00040%¢\u0006\u0004\b1\u00102J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\fH\u0007J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u000fH\u0002J\u0016\u0010\u0014\u001a\u00020\u00042\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J\u0016\u0010\u0018\u001a\u00020\u00042\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0002J\u0016\u0010\u0019\u001a\u00020\u00042\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0003J\u0014\u0010\u001c\u001a\u00020\u00042\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002J\b\u0010\u001d\u001a\u00020\u0004H\u0002R\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010$\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010#R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00040%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u001b\u0010-\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010*\u001a\u0004\b+\u0010,R\u0014\u00100\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010/¨\u00063"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;", "Landroid/app/Dialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "dismiss", "Lcom/onyx/android/sdk/universal/editor/events/note/CloudBackupCompleteEvent;", NotificationCompat.CATEGORY_EVENT, "onCloudBackupCompleteEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ExportNoteProgressEvent;", "onExportNoteProgressEvent", "Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageUploadFileEvent;", "onCloudStorageUploadFileEvent", C6999h.f39688c, "", "b", "", "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "list", "i", "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFileStatus", C4921e.f26537n, "j", "", "throwable", C6997f.f39671c, "d", "Landroid/content/Context;", "e", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;", "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;", "backupContext", "Lkotlin/Function0;", C6998g.f39679a, "Lkotlin/jvm/functions/Function0;", "onCancel", "Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;", "Lkotlin/Lazy;", "c", "()Lcom/onyx/galaxy/note/databinding/DialogNetworkBackupBinding;", "binding", "Lcom/onyx/galaxy/note/settings/ui/adapter/BackupErrorAdapter;", "Lcom/onyx/galaxy/note/settings/ui/adapter/BackupErrorAdapter;", "errorListAdapter", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/ui/data/BackupContext;Lkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCloudBackupDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudBackupDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,183:1\n1747#2,3:184\n766#2:195\n857#2,2:196\n1549#2:198\n1620#2,3:199\n1549#2:202\n1620#2,3:203\n766#2:206\n857#2,2:207\n256#3,2:187\n256#3,2:189\n256#3,2:191\n256#3,2:193\n256#3,2:209\n256#3,2:212\n256#3,2:214\n256#3,2:216\n256#3,2:218\n256#3,2:220\n1#4:211\n*S KotlinDebug\n*F\n+ 1 CloudBackupDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog\n*L\n74#1:184,3\n95#1:195\n95#1:196,2\n104#1:198\n104#1:199,3\n114#1:202\n114#1:203,3\n138#1:206\n138#1:207,2\n84#1:187,2\n85#1:189,2\n86#1:191,2\n87#1:193,2\n139#1:209,2\n167#1:212,2\n170#1:214,2\n171#1:216,2\n172#1:218,2\n173#1:220,2\n*E\n"})
/* loaded from: classes17.dex */
public final class CloudBackupDialog extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final BackupContext backupContext;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> onCancel;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final BackupErrorAdapter errorListAdapter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudBackupDialog(@NotNull Context context, @NotNull BackupContext backupContext, @NotNull Function0<Unit> onCancel) {
        super(context, C10651R.style.commonDialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(backupContext, "backupContext");
        Intrinsics.checkNotNullParameter(onCancel, "onCancel");
        this.context = context;
        this.backupContext = backupContext;
        this.onCancel = onCancel;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogNetworkBackupBinding>() { // from class: com.onyx.galaxy.note.settings.ui.dialog.CloudBackupDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogNetworkBackupBinding invoke() {
                Context context2;
                context2 = CloudBackupDialog.this.context;
                return DialogNetworkBackupBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        this.errorListAdapter = new BackupErrorAdapter(DocCollectionBundle.INSTANCE.docManagerBundle());
    }

    /* renamed from: e */
    public static final void m50752e(CloudBackupDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
        this$0.onCancel.invoke();
    }

    /* renamed from: g */
    public static /* synthetic */ void m50753g(CloudBackupDialog cloudBackupDialog, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            th = null;
        }
        cloudBackupDialog.m50757f(th);
    }

    /* renamed from: b */
    public final String m50754b() {
        int collectionSizeOrDefault;
        String joinToString$default;
        String str;
        int collectionSizeOrDefault2;
        String joinToString$default2;
        String stringSafely = ResManager.INSTANCE.getStringSafely(C10651R.string.cloud_backup_done);
        List<Provider> providers = this.backupContext.getProviders();
        ArrayList arrayList = new ArrayList();
        for (Object obj : providers) {
            if (true ^ this.backupContext.getFailedProviderMap().keySet().contains((Provider) obj)) {
                arrayList.add(obj);
            }
        }
        Set<Provider> keySet = this.backupContext.getFailedProviderMap().keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
        String format = String.format(stringSafely, Arrays.copyOf(new Object[]{BackupConstant.BACKUP_FOLDER_NAME}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        if ((!arrayList.isEmpty()) || (!keySet.isEmpty())) {
            format = format + "\n\r";
        }
        if (!arrayList.isEmpty()) {
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList2.add(Provider.INSTANCE.getNameByProvider(this.context, (Provider) it2.next()));
            }
            joinToString$default2 = CollectionsKt___CollectionsKt.joinToString$default(arrayList2, ",", null, null, 0, null, null, 62, null);
            String format2 = String.format(ResManager.INSTANCE.getStringSafely(C10651R.string.cloud_backup_completed_cloud), Arrays.copyOf(new Object[]{joinToString$default2}, 1));
            Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
            format = format + format2;
        }
        if ((!arrayList.isEmpty()) && (!keySet.isEmpty())) {
            format = format + "; ";
        }
        if (!(!keySet.isEmpty())) {
            return format;
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(keySet, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
        for (Provider provider : keySet) {
            StringBuilder sb = new StringBuilder();
            Provider.Companion companion = Provider.INSTANCE;
            Context context = this.context;
            Intrinsics.checkNotNull(provider);
            sb.append(companion.getNameByProvider(context, provider));
            sb.append('(');
            sb.append(ResManager.INSTANCE.getString(C10651R.string.error_code));
            sb.append(':');
            Throwable th = this.backupContext.getFailedProviderMap().get(provider);
            if (th != null) {
                ThrowableUtils throwableUtils = ThrowableUtils.INSTANCE;
                Intrinsics.checkNotNull(th);
                ErrorCode errorCode = throwableUtils.getErrorCode(th);
                if (errorCode != null) {
                    str = errorCode.getCode();
                    sb.append(str);
                    sb.append(')');
                    arrayList3.add(sb.toString());
                }
            }
            str = null;
            sb.append(str);
            sb.append(')');
            arrayList3.add(sb.toString());
        }
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList3, ",", null, null, 0, null, null, 62, null);
        String format3 = String.format(ResManager.INSTANCE.getStringSafely(C10651R.string.cloud_backup_fail_cloud), Arrays.copyOf(new Object[]{joinToString$default}, 1));
        Intrinsics.checkNotNullExpressionValue(format3, "format(...)");
        return format + format3;
    }

    /* renamed from: c */
    public final DialogNetworkBackupBinding m50755c() {
        return (DialogNetworkBackupBinding) this.binding.getValue();
    }

    /* renamed from: d */
    public final void m50756d() {
        m50755c().ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ovd
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CloudBackupDialog.m50752e(CloudBackupDialog.this, view);
            }
        });
        m50755c().itemErrorList.setAdapter(this.errorListAdapter);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        EditorBundleKt.unregister(DocCollectionBundle.INSTANCE.docManagerBundle(), this);
        CloudStorageManager.INSTANCE.getOurInstance().unregister(this);
    }

    /* renamed from: f */
    public final void m50757f(Throwable throwable) {
        if (throwable != null) {
            ExceptionsKt__ExceptionsKt.stackTraceToString(throwable);
        }
        String simpleName = CloudBackupDialog.class.getSimpleName();
        StringBuilder sb = new StringBuilder();
        sb.append("onExportFail e:");
        sb.append(throwable != null ? ExceptionsKt__ExceptionsKt.stackTraceToString(throwable) : null);
        LogUtils.file(simpleName, sb.toString());
        if (throwable != null) {
            TintTextView tvSubErrorTitle = m50755c().tvSubErrorTitle;
            Intrinsics.checkNotNullExpressionValue(tvSubErrorTitle, "tvSubErrorTitle");
            tvSubErrorTitle.setVisibility(0);
            m50755c().tvSubErrorTitle.setText(ThrowableUtils.INSTANCE.getErrorCode(throwable).getErrorMessage());
        }
        Group groupError = m50755c().groupError;
        Intrinsics.checkNotNullExpressionValue(groupError, "groupError");
        groupError.setVisibility(0);
        Group groupProgress = m50755c().groupProgress;
        Intrinsics.checkNotNullExpressionValue(groupProgress, "groupProgress");
        groupProgress.setVisibility(8);
        Group groupFinished = m50755c().groupFinished;
        Intrinsics.checkNotNullExpressionValue(groupFinished, "groupFinished");
        groupFinished.setVisibility(8);
        TintTextView tvCount = m50755c().tvCount;
        Intrinsics.checkNotNullExpressionValue(tvCount, "tvCount");
        tvCount.setVisibility(8);
    }

    /* renamed from: h */
    public final void m50758h() {
        Group groupError = m50755c().groupError;
        Intrinsics.checkNotNullExpressionValue(groupError, "groupError");
        groupError.setVisibility(8);
        Group groupProgress = m50755c().groupProgress;
        Intrinsics.checkNotNullExpressionValue(groupProgress, "groupProgress");
        groupProgress.setVisibility(8);
        Group groupFinished = m50755c().groupFinished;
        Intrinsics.checkNotNullExpressionValue(groupFinished, "groupFinished");
        groupFinished.setVisibility(0);
        TintTextView tvCount = m50755c().tvCount;
        Intrinsics.checkNotNullExpressionValue(tvCount, "tvCount");
        tvCount.setVisibility(8);
        m50755c().tvTitle.setText(this.context.getString(C10651R.string.cloud_backup_title));
        m50755c().tvFinishSubTitle.setText(m50754b());
    }

    /* renamed from: i */
    public final void m50759i(List<NoteExportArgs> list) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((NoteExportArgs) obj).getNoteProgressInfo().isError()) {
                arrayList.add(obj);
            }
        }
        TintLinearLayout itemErrorListLayout = m50755c().itemErrorListLayout;
        Intrinsics.checkNotNullExpressionValue(itemErrorListLayout, "itemErrorListLayout");
        itemErrorListLayout.setVisibility(arrayList.isEmpty() ^ true ? 0 : 8);
        this.errorListAdapter.submitList(arrayList);
    }

    @SuppressLint({"SetTextI18n"})
    /* renamed from: j */
    public final void m50760j(List<NoteExportArgs> list) {
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
        String str = noteExportArgs.getNoteModel().getTitle() + ' ' + this.context.getString(C10651R.string.backup_note_progress_hint);
        m50755c().progress.setProgress(progress);
        TintTextView tintTextView = m50755c().tvCount;
        StringBuilder sb = new StringBuilder();
        sb.append(indexOf + 1);
        sb.append('/');
        sb.append(list.size());
        tintTextView.setText(sb.toString());
        TintTextView tintTextView2 = m50755c().tvProgress;
        String format = String.format(str, Arrays.copyOf(new Object[]{Integer.valueOf(progress)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        tintTextView2.setText(format);
    }

    /* renamed from: k */
    public final void m50761k(OnyxFileTransferStatus<CloudFileBean> cloudFileStatus) {
        Provider defaultProvider;
        Provider.Companion companion = Provider.INSTANCE;
        Context applicationContext = this.context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        CloudFileBean entry = cloudFileStatus.getEntry();
        if (entry == null || (defaultProvider = entry.getProvider()) == null) {
            defaultProvider = companion.getDefaultProvider();
        }
        String str = companion.getNameByProvider(applicationContext, defaultProvider) + ' ' + this.context.getString(C10651R.string.upload_note_progress_hint);
        int progress = (int) cloudFileStatus.getProgress();
        m50755c().progress.setProgress(progress);
        TintTextView tintTextView = m50755c().tvProgress;
        String format = String.format(str, Arrays.copyOf(new Object[]{Integer.valueOf(progress)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        tintTextView.setText(format);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCloudBackupCompleteEvent(@NotNull CloudBackupCompleteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getBackupContext().getThrowable() != null) {
            m50757f(event.getBackupContext().getThrowable());
            return;
        }
        List<NoteExportArgs> noteExportList = event.getBackupContext().getNoteExportList();
        boolean z = false;
        if (!(noteExportList instanceof Collection) || !noteExportList.isEmpty()) {
            Iterator<T> it2 = noteExportList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                } else if (((NoteExportArgs) it2.next()).getNoteProgressInfo().isSuccess()) {
                    z = true;
                    break;
                }
            }
        }
        if (z) {
            m50758h();
        } else {
            m50753g(this, null, 1, null);
        }
        m50759i(event.getBackupContext().getNoteExportList());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCloudStorageUploadFileEvent(@NotNull CloudStorageUploadFileEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        FileUtils fileUtils = FileUtils.INSTANCE;
        String fileName = fileUtils.getFileName(this.backupContext.getBackupFilePath());
        CloudFileBean entry = event.getCloudFileStatus().getEntry();
        if (Intrinsics.areEqual(fileName, fileUtils.getFileName(entry != null ? entry.getLocalFilePath() : null))) {
            m50761k(event.getCloudFileStatus());
        }
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063275, this, savedInstanceState);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onExportNoteProgressEvent(@NotNull ExportNoteProgressEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m50760j(event.getList());
    }
}
