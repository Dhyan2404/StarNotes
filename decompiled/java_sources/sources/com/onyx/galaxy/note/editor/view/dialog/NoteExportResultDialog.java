package com.onyx.galaxy.note.editor.view.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.C1126e;
import com.blankj.utilcode.util.LogUtils;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.ThrowableUtils;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.databinding.DialogLocalBackupBinding;
import com.onyx.galaxy.note.editor.view.dialog.NoteExportResultDialog;
import com.onyx.galaxy.note.settings.p047ui.adapter.ExportErrorAdapter;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u0012\u0010\b\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0019¢\u0006\u0004\b+\u0010,J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0014J\u001c\u0010\u000e\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u0012\u0010\u0011\u001a\u00020\u00042\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fJ\b\u0010\u0012\u001a\u00020\u0004H\u0014J\u0016\u0010\u0014\u001a\u00020\u00042\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001c\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u001b\u0010\"\u001a\u00020\u001d8DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\"\u0010*\u001a\u00020#8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006-"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportResultDialog;", "Landroid/app/Dialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "dismiss", "", "exportPath", "onExportSucceed", "exportFilePath", "", "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "noteExportList", "onExportResult", "", "throwable", "onExportFail", "initView", "list", "c", "Landroid/content/Context;", "e", "Landroid/content/Context;", "context", "Lkotlin/Function0;", C6997f.f39671c, "Lkotlin/jvm/functions/Function0;", "onCancel", "Lcom/onyx/galaxy/note/databinding/DialogLocalBackupBinding;", C6998g.f39679a, "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/DialogLocalBackupBinding;", "binding", "Lcom/onyx/galaxy/note/settings/ui/adapter/ExportErrorAdapter;", C6999h.f39688c, "Lcom/onyx/galaxy/note/settings/ui/adapter/ExportErrorAdapter;", "getErrorListAdapter", "()Lcom/onyx/galaxy/note/settings/ui/adapter/ExportErrorAdapter;", "setErrorListAdapter", "(Lcom/onyx/galaxy/note/settings/ui/adapter/ExportErrorAdapter;)V", "errorListAdapter", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteExportResultDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteExportResultDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/NoteExportResultDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,101:1\n256#2,2:102\n256#2,2:104\n256#2,2:106\n256#2,2:108\n256#2,2:113\n256#2,2:115\n256#2,2:117\n256#2,2:119\n256#2,2:121\n256#2,2:126\n1747#3,3:110\n766#3:123\n857#3,2:124\n*S KotlinDebug\n*F\n+ 1 NoteExportResultDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/NoteExportResultDialog\n*L\n52#1:102,2\n53#1:104,2\n54#1:106,2\n55#1:108,2\n76#1:113,2\n79#1:115,2\n80#1:117,2\n81#1:119,2\n82#1:121,2\n87#1:126,2\n63#1:110,3\n86#1:123\n86#1:124,2\n*E\n"})
/* loaded from: classes17.dex */
public class NoteExportResultDialog extends Dialog {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public final Function0<Unit> onCancel;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public ExportErrorAdapter errorListAdapter;

    public /* synthetic */ NoteExportResultDialog(Context context, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : function0);
    }

    /* renamed from: b */
    public static final void m48113b(NoteExportResultDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function0<Unit> function0 = this$0.onCancel;
        if (function0 != null) {
            function0.invoke();
        }
        this$0.dismiss();
    }

    public static /* synthetic */ void onExportFail$default(NoteExportResultDialog noteExportResultDialog, Throwable th, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onExportFail");
        }
        if ((i & 1) != 0) {
            th = null;
        }
        noteExportResultDialog.onExportFail(th);
    }

    /* renamed from: c */
    public final void m48114c(List<NoteExportArgs> list) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((NoteExportArgs) obj).getNoteProgressInfo().isError()) {
                arrayList.add(obj);
            }
        }
        TintLinearLayout itemErrorListLayout = getBinding().itemErrorListLayout;
        Intrinsics.checkNotNullExpressionValue(itemErrorListLayout, "itemErrorListLayout");
        itemErrorListLayout.setVisibility(arrayList.isEmpty() ^ true ? 0 : 8);
        this.errorListAdapter.submitList(arrayList);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        Function0<Unit> function0 = this.onCancel;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @NotNull
    public final DialogLocalBackupBinding getBinding() {
        return (DialogLocalBackupBinding) this.binding.getValue();
    }

    @NotNull
    public final ExportErrorAdapter getErrorListAdapter() {
        return this.errorListAdapter;
    }

    public void initView() {
        getBinding().tvTitle.setText(C10651R.string.export_note);
        getBinding().tvFinishTitle.setText(C10651R.string.export_succeed);
        getBinding().tvErrorTitle.setText(C10651R.string.export_fail);
        getBinding().ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yvj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteExportResultDialog.m48113b(NoteExportResultDialog.this, view);
            }
        });
        getBinding().itemErrorList.setAdapter(this.errorListAdapter);
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063276, this, savedInstanceState);
    }

    public final void onExportFail(@Nullable Throwable throwable) {
        String simpleName = getClass().getSimpleName();
        StringBuilder sb = new StringBuilder();
        sb.append("onExportFail e:");
        sb.append(throwable != null ? ExceptionsKt__ExceptionsKt.stackTraceToString(throwable) : null);
        LogUtils.file(simpleName, sb.toString());
        if (throwable != null) {
            getBinding().tvSubErrorTitle.setText(ThrowableUtils.INSTANCE.getErrorCode(throwable).getErrorMessage());
            TintTextView tvSubErrorTitle = getBinding().tvSubErrorTitle;
            Intrinsics.checkNotNullExpressionValue(tvSubErrorTitle, "tvSubErrorTitle");
            CharSequence text = getBinding().tvSubErrorTitle.getText();
            Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
            tvSubErrorTitle.setVisibility(text.length() > 0 ? 0 : 8);
        }
        Group groupError = getBinding().groupError;
        Intrinsics.checkNotNullExpressionValue(groupError, "groupError");
        groupError.setVisibility(0);
        Group groupProgress = getBinding().groupProgress;
        Intrinsics.checkNotNullExpressionValue(groupProgress, "groupProgress");
        groupProgress.setVisibility(8);
        Group groupFinished = getBinding().groupFinished;
        Intrinsics.checkNotNullExpressionValue(groupFinished, "groupFinished");
        groupFinished.setVisibility(8);
        TintTextView tvCount = getBinding().tvCount;
        Intrinsics.checkNotNullExpressionValue(tvCount, "tvCount");
        tvCount.setVisibility(8);
    }

    public final void onExportResult(@NotNull String exportFilePath, @NotNull List<NoteExportArgs> noteExportList) {
        Intrinsics.checkNotNullParameter(exportFilePath, "exportFilePath");
        Intrinsics.checkNotNullParameter(noteExportList, "noteExportList");
        List<NoteExportArgs> list = noteExportList;
        boolean z = false;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it2 = list.iterator();
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
            onExportSucceed(exportFilePath);
        } else {
            onExportFail$default(this, null, 1, null);
        }
        m48114c(noteExportList);
    }

    public void onExportSucceed(@NotNull String exportPath) {
        Intrinsics.checkNotNullParameter(exportPath, "exportPath");
        Group groupError = getBinding().groupError;
        Intrinsics.checkNotNullExpressionValue(groupError, "groupError");
        groupError.setVisibility(8);
        Group groupProgress = getBinding().groupProgress;
        Intrinsics.checkNotNullExpressionValue(groupProgress, "groupProgress");
        groupProgress.setVisibility(8);
        Group groupFinished = getBinding().groupFinished;
        Intrinsics.checkNotNullExpressionValue(groupFinished, "groupFinished");
        groupFinished.setVisibility(0);
        TintTextView tvCount = getBinding().tvCount;
        Intrinsics.checkNotNullExpressionValue(tvCount, "tvCount");
        tvCount.setVisibility(8);
        String substring = exportPath.substring(Environment.getExternalStorageDirectory().toString().length());
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(ResManager.INSTANCE.getStringSafely(C10651R.string.export_path), Arrays.copyOf(new Object[]{substring}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        TintTextView tintTextView = getBinding().tvFinishSubTitle;
        String format2 = String.format(format, Arrays.copyOf(new Object[]{format}, 1));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        tintTextView.setText(format2);
    }

    public final void setErrorListAdapter(@NotNull ExportErrorAdapter exportErrorAdapter) {
        Intrinsics.checkNotNullParameter(exportErrorAdapter, "<set-?>");
        this.errorListAdapter = exportErrorAdapter;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteExportResultDialog(@NotNull Context context, @Nullable Function0<Unit> function0) {
        super(context, C10651R.style.commonDialog);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.onCancel = function0;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogLocalBackupBinding>() { // from class: com.onyx.galaxy.note.editor.view.dialog.NoteExportResultDialog$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogLocalBackupBinding invoke() {
                Context context2;
                context2 = NoteExportResultDialog.this.context;
                return DialogLocalBackupBinding.inflate(LayoutInflater.from(context2));
            }
        });
        this.binding = lazy;
        this.errorListAdapter = new ExportErrorAdapter(DocCollectionBundle.INSTANCE.docManagerBundle(), 0, 2, null);
    }
}
