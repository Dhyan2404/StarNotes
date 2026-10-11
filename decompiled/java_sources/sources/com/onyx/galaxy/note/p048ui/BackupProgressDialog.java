package com.onyx.galaxy.note.p048ui;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.C1126e;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.DialogBackupProcessBinding;
import com.onyx.galaxy.note.p048ui.BackupProgressDialog;
import com.onyx.galaxy.note.settings.data.ImportResultBean;
import com.onyx.galaxy.note.settings.data.SettingsBundle;
import com.onyx.galaxy.note.settings.event.BackupEvent;
import com.onyx.galaxy.note.settings.event.BackupProgressEvent;
import com.onyx.galaxy.note.settings.event.BackupProgressResultEvent;
import com.onyx.galaxy.note.settings.p047ui.adapter.ImportErrorAdapter;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010(\u001a\u00020'\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0006\u0010\u001b\u001a\u00020\u0016¢\u0006\u0004\b)\u0010*J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0014\u0010\t\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rJ\b\u0010\u0010\u001a\u00020\u0004H\u0002R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00120\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0017\u0010\u001b\u001a\u00020\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001b\u0010!\u001a\u00020\u001c8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001b\u0010&\u001a\u00020\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\u001e\u001a\u0004\b$\u0010%¨\u0006+"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/BackupProgressDialog;", "Landroid/app/Dialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "", "Lcom/onyx/galaxy/note/settings/data/ImportResultBean;", "importResultBeans", "updateResult", "Lcom/onyx/galaxy/note/settings/event/BackupProgressEvent;", "backupProgressEvent", "updateProgress", "Lcom/onyx/galaxy/note/settings/event/BackupProgressResultEvent;", "importBackupResultEvent", "updateProgressResult", "c", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "e", "Ljava/util/List;", "backupList", "", C6997f.f39671c, "I", "getType", "()I", "type", "Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;", C6998g.f39679a, "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;", "binding", "Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;", C6999h.f39688c, "b", "()Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;", "errorAdapter", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBackupProgressDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupProgressDialog.kt\ncom/onyx/galaxy/note/ui/BackupProgressDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,101:1\n766#2:102\n857#2,2:103\n256#3,2:105\n256#3,2:107\n256#3,2:109\n256#3,2:111\n256#3,2:113\n256#3,2:115\n*S KotlinDebug\n*F\n+ 1 BackupProgressDialog.kt\ncom/onyx/galaxy/note/ui/BackupProgressDialog\n*L\n66#1:102\n66#1:103,2\n71#1:105,2\n72#1:107,2\n74#1:109,2\n75#1:111,2\n77#1:113,2\n97#1:115,2\n*E\n"})
/* loaded from: classes17.dex */
public final class BackupProgressDialog extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> backupList;

    /* renamed from: f, reason: from kotlin metadata */
    public final int type;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy errorAdapter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackupProgressDialog(@NotNull final Context context, @NotNull List<SyncNoteModel> backupList, int i) {
        super(context, C10651R.style.commonDialog);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(backupList, "backupList");
        this.backupList = backupList;
        this.type = i;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogBackupProcessBinding>() { // from class: com.onyx.galaxy.note.ui.BackupProgressDialog$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogBackupProcessBinding invoke() {
                DialogBackupProcessBinding inflate = DialogBackupProcessBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ImportErrorAdapter>() { // from class: com.onyx.galaxy.note.ui.BackupProgressDialog$errorAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ImportErrorAdapter invoke() {
                return new ImportErrorAdapter();
            }
        });
        this.errorAdapter = lazy2;
    }

    /* renamed from: d */
    public static final void m51235d(BackupProgressDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: b */
    public final ImportErrorAdapter m51236b() {
        return (ImportErrorAdapter) this.errorAdapter.getValue();
    }

    /* renamed from: c */
    public final void m51237c() {
        Context context;
        int i;
        TextView textView = getBinding().tvTitle;
        if (this.type == 0) {
            context = getContext();
            i = C10651R.string.backup_local;
        } else {
            context = getContext();
            i = C10651R.string.backup_cloud;
        }
        textView.setText(context.getString(i));
        getBinding().rlImportErrorList.setLayoutManager(new LinearLayoutManager(getContext()));
        getBinding().rlImportErrorList.setAdapter(m51236b());
        getBinding().ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.cm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BackupProgressDialog.m51235d(BackupProgressDialog.this, view);
            }
        });
        m51236b().setRetryCallback(new Function1<ImportResultBean, Unit>() { // from class: com.onyx.galaxy.note.ui.BackupProgressDialog$initView$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ImportResultBean importResultBean) {
                invoke2(importResultBean);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ImportResultBean it2) {
                List list;
                Object obj;
                List listOf;
                Intrinsics.checkNotNullParameter(it2, "it");
                list = BackupProgressDialog.this.backupList;
                Iterator it3 = list.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        obj = null;
                        break;
                    } else {
                        obj = it3.next();
                        if (Intrinsics.areEqual(it2.getDocId(), ((SyncNoteModel) obj).getUniqueId())) {
                            break;
                        }
                    }
                }
                SyncNoteModel syncNoteModel = (SyncNoteModel) obj;
                if (syncNoteModel != null) {
                    SettingsBundle settingsBundle = SettingsBundle.INSTANCE;
                    listOf = CollectionsKt__CollectionsJVMKt.listOf(syncNoteModel);
                    settingsBundle.postEvent(new BackupEvent(listOf));
                }
            }
        });
    }

    @NotNull
    public final DialogBackupProcessBinding getBinding() {
        return (DialogBackupProcessBinding) this.binding.getValue();
    }

    public final int getType() {
        return this.type;
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063264, this, savedInstanceState);
    }

    public final void updateProgress(@NotNull BackupProgressEvent backupProgressEvent) {
        Intrinsics.checkNotNullParameter(backupProgressEvent, "backupProgressEvent");
        SyncNoteModel note = backupProgressEvent.getNote();
        int indexOf = this.backupList.indexOf(note) + 1;
        getBinding().tvBackupName.setText(note.getTitle());
        TextView textView = getBinding().tvCurrentProgressName;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String string = getContext().getString(C10651R.string.backing_up_progress_name);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        StringBuilder sb = new StringBuilder();
        sb.append(getBinding().progressImportBackup.getProgress());
        sb.append('%');
        String format = String.format(string, Arrays.copyOf(new Object[]{sb.toString()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        textView.setText(format);
        TextView textView2 = getBinding().tvCurrentProgress;
        String string2 = getContext().getString(C10651R.string.backing_up_progress);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String format2 = String.format(string2, Arrays.copyOf(new Object[]{Integer.valueOf(indexOf), Integer.valueOf(this.backupList.size())}, 2));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        textView2.setText(format2);
    }

    public final void updateProgressResult(@NotNull BackupProgressResultEvent importBackupResultEvent) {
        Intrinsics.checkNotNullParameter(importBackupResultEvent, "importBackupResultEvent");
        if (!importBackupResultEvent.getImportResult().getIsSuccess()) {
            LinearLayout llErrorDetailInfoContainer = getBinding().llErrorDetailInfoContainer;
            Intrinsics.checkNotNullExpressionValue(llErrorDetailInfoContainer, "llErrorDetailInfoContainer");
            llErrorDetailInfoContainer.setVisibility(0);
        }
        m51236b().updateError(importBackupResultEvent.getImportResult());
    }

    public final void updateResult(@NotNull List<ImportResultBean> importResultBeans) {
        Intrinsics.checkNotNullParameter(importResultBeans, "importResultBeans");
        ArrayList arrayList = new ArrayList();
        for (Object obj : importResultBeans) {
            if (((ImportResultBean) obj).getIsSuccess()) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            LinearLayout llResultCompleteContainer = getBinding().llResultCompleteContainer;
            Intrinsics.checkNotNullExpressionValue(llResultCompleteContainer, "llResultCompleteContainer");
            llResultCompleteContainer.setVisibility(8);
            LinearLayout llResultErrorContainer = getBinding().llResultErrorContainer;
            Intrinsics.checkNotNullExpressionValue(llResultErrorContainer, "llResultErrorContainer");
            llResultErrorContainer.setVisibility(0);
        } else {
            LinearLayout llResultCompleteContainer2 = getBinding().llResultCompleteContainer;
            Intrinsics.checkNotNullExpressionValue(llResultCompleteContainer2, "llResultCompleteContainer");
            llResultCompleteContainer2.setVisibility(0);
            LinearLayout llResultErrorContainer2 = getBinding().llResultErrorContainer;
            Intrinsics.checkNotNullExpressionValue(llResultErrorContainer2, "llResultErrorContainer");
            llResultErrorContainer2.setVisibility(8);
        }
        LinearLayout progressContainer = getBinding().progressContainer;
        Intrinsics.checkNotNullExpressionValue(progressContainer, "progressContainer");
        progressContainer.setVisibility(8);
    }
}
