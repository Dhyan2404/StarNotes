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
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.DialogImportBackupProcessBinding;
import com.onyx.galaxy.note.p048ui.ImportBackupProgressDialog;
import com.onyx.galaxy.note.settings.data.BackupBean;
import com.onyx.galaxy.note.settings.data.ImportResultBean;
import com.onyx.galaxy.note.settings.data.SettingsBundle;
import com.onyx.galaxy.note.settings.event.ImportBackupEvent;
import com.onyx.galaxy.note.settings.event.ImportBackupProgressEvent;
import com.onyx.galaxy.note.settings.event.ImportBackupProgressResultEvent;
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

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010)\u001a\u00020(\u0012\u0016\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\b\u0012\u0004\u0012\u00020\u0012`\u0013\u0012\u0006\u0010\u001c\u001a\u00020\u0017¢\u0006\u0004\b*\u0010+J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0014\u0010\t\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rJ\b\u0010\u0010\u001a\u00020\u0004H\u0002R$\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\b\u0012\u0004\u0012\u00020\u0012`\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0017\u0010\u001c\u001a\u00020\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001b\u0010\"\u001a\u00020\u001d8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u001b\u0010'\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u001f\u001a\u0004\b%\u0010&¨\u0006,"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/ImportBackupProgressDialog;", "Landroid/app/Dialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "", "Lcom/onyx/galaxy/note/settings/data/ImportResultBean;", "importResultBeans", "updateResult", "Lcom/onyx/galaxy/note/settings/event/ImportBackupProgressEvent;", "importBackupProgressEvent", "updateProgress", "Lcom/onyx/galaxy/note/settings/event/ImportBackupProgressResultEvent;", "importBackupResultEvent", "updateProgressResult", "c", "Ljava/util/ArrayList;", "Lcom/onyx/galaxy/note/settings/data/BackupBean;", "Lkotlin/collections/ArrayList;", "e", "Ljava/util/ArrayList;", "selectBackupList", "", C6997f.f39671c, "I", "getType", "()I", "type", "Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;", C6998g.f39679a, "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;", "binding", "Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;", C6999h.f39688c, "b", "()Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;", "errorAdapter", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/ArrayList;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nImportBackupProgressDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportBackupProgressDialog.kt\ncom/onyx/galaxy/note/ui/ImportBackupProgressDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,99:1\n766#2:100\n857#2,2:101\n256#3,2:103\n256#3,2:105\n256#3,2:107\n256#3,2:109\n256#3,2:111\n256#3,2:113\n*S KotlinDebug\n*F\n+ 1 ImportBackupProgressDialog.kt\ncom/onyx/galaxy/note/ui/ImportBackupProgressDialog\n*L\n43#1:100\n43#1:101,2\n48#1:103,2\n49#1:105,2\n51#1:107,2\n52#1:109,2\n54#1:111,2\n74#1:113,2\n*E\n"})
/* loaded from: classes17.dex */
public final class ImportBackupProgressDialog extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<BackupBean> selectBackupList;

    /* renamed from: f, reason: from kotlin metadata */
    public final int type;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy errorAdapter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImportBackupProgressDialog(@NotNull final Context context, @NotNull ArrayList<BackupBean> selectBackupList, int i) {
        super(context, C10651R.style.commonDialog);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(selectBackupList, "selectBackupList");
        this.selectBackupList = selectBackupList;
        this.type = i;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogImportBackupProcessBinding>() { // from class: com.onyx.galaxy.note.ui.ImportBackupProgressDialog$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogImportBackupProcessBinding invoke() {
                DialogImportBackupProcessBinding inflate = DialogImportBackupProcessBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ImportErrorAdapter>() { // from class: com.onyx.galaxy.note.ui.ImportBackupProgressDialog$errorAdapter$2
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
    public static final void m51239d(ImportBackupProgressDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: b */
    public final ImportErrorAdapter m51240b() {
        return (ImportErrorAdapter) this.errorAdapter.getValue();
    }

    /* renamed from: c */
    public final void m51241c() {
        Context context;
        int i;
        TextView textView = getBinding().tvTitle;
        if (this.type == 0) {
            context = getContext();
            i = C10651R.string.import_backup_local;
        } else {
            context = getContext();
            i = C10651R.string.import_backup_cloud;
        }
        textView.setText(context.getString(i));
        getBinding().rlImportErrorList.setLayoutManager(new LinearLayoutManager(getContext()));
        getBinding().rlImportErrorList.setAdapter(m51240b());
        getBinding().ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.iii
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImportBackupProgressDialog.m51239d(ImportBackupProgressDialog.this, view);
            }
        });
        m51240b().setRetryCallback(new Function1<ImportResultBean, Unit>() { // from class: com.onyx.galaxy.note.ui.ImportBackupProgressDialog$initView$2
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
                ArrayList arrayList;
                Object obj;
                List listOf;
                Intrinsics.checkNotNullParameter(it2, "it");
                arrayList = ImportBackupProgressDialog.this.selectBackupList;
                Iterator it3 = arrayList.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        obj = null;
                        break;
                    } else {
                        obj = it3.next();
                        if (Intrinsics.areEqual(it2.getBackupName(), ((BackupBean) obj).getName())) {
                            break;
                        }
                    }
                }
                BackupBean backupBean = (BackupBean) obj;
                if (backupBean != null) {
                    SettingsBundle settingsBundle = SettingsBundle.INSTANCE;
                    listOf = CollectionsKt__CollectionsJVMKt.listOf(backupBean);
                    settingsBundle.postEvent(new ImportBackupEvent(listOf));
                }
            }
        });
    }

    @NotNull
    public final DialogImportBackupProcessBinding getBinding() {
        return (DialogImportBackupProcessBinding) this.binding.getValue();
    }

    public final int getType() {
        return this.type;
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063263, this, savedInstanceState);
    }

    public final void updateProgress(@NotNull ImportBackupProgressEvent importBackupProgressEvent) {
        Intrinsics.checkNotNullParameter(importBackupProgressEvent, "importBackupProgressEvent");
        BackupBean backupBean = importBackupProgressEvent.getBackupBean();
        int indexOf = this.selectBackupList.indexOf(backupBean) + 1;
        getBinding().tvBackupName.setText(backupBean.getName());
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
        String format2 = String.format(string2, Arrays.copyOf(new Object[]{Integer.valueOf(indexOf), Integer.valueOf(this.selectBackupList.size())}, 2));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        textView2.setText(format2);
    }

    public final void updateProgressResult(@NotNull ImportBackupProgressResultEvent importBackupResultEvent) {
        Intrinsics.checkNotNullParameter(importBackupResultEvent, "importBackupResultEvent");
        if (!importBackupResultEvent.getImportResult().getIsSuccess()) {
            LinearLayout llErrorDetailInfoContainer = getBinding().llErrorDetailInfoContainer;
            Intrinsics.checkNotNullExpressionValue(llErrorDetailInfoContainer, "llErrorDetailInfoContainer");
            llErrorDetailInfoContainer.setVisibility(0);
        }
        m51240b().updateError(importBackupResultEvent.getImportResult());
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
