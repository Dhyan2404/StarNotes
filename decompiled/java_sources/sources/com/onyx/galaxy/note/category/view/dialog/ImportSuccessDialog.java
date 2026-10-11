package com.onyx.galaxy.note.category.view.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.C1126e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.data.ImportSelectedContext;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.LabelLayout;
import com.onyx.galaxy.note.category.view.dialog.ImportSuccessDialog;
import com.onyx.galaxy.note.databinding.DialogImportSuccessBinding;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001b\u0010\u0010\u001a\u00020\u000b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "d", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "importSelectedContext", "Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;", "i", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;", "binding", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class ImportSuccessDialog extends AutoSizeDialog {
    public static final long DELAY_SHOW_SUCCESS_WHEN_OPEN_DOCUMENT = 500;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ImportSelectedContext importSelectedContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImportSuccessDialog(@NotNull final Context context, @NotNull ImportSelectedContext importSelectedContext) {
        super(context);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(importSelectedContext, "importSelectedContext");
        this.importSelectedContext = importSelectedContext;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogImportSuccessBinding>() { // from class: com.onyx.galaxy.note.category.view.dialog.ImportSuccessDialog$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogImportSuccessBinding invoke() {
                return DialogImportSuccessBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
    }

    /* renamed from: e */
    public static final void m44403e(ImportSuccessDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: d */
    public final void m44404d() {
        List<String> listOf;
        List<String> listOf2;
        setCancelable(false);
        TintTextView btnFinish = getBinding().btnFinish;
        Intrinsics.checkNotNullExpressionValue(btnFinish, "btnFinish");
        ViewKt.click$default(btnFinish, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fji
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImportSuccessDialog.m44403e(ImportSuccessDialog.this, view);
            }
        }, 1, null);
        TintTextView tintTextView = getBinding().tvTotalCount;
        ResManager resManager = ResManager.INSTANCE;
        tintTextView.setText(resManager.getString(C10651R.string.import_success_file_count, Integer.valueOf(this.importSelectedContext.getCompleteTaskCount())));
        LabelLayout labelLayout = getBinding().llAllNote;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(String.valueOf(resManager.getString(C10651R.string.all_note)));
        labelLayout.setLabels(listOf);
        LabelLayout labelLayout2 = getBinding().llFolders;
        listOf2 = CollectionsKt__CollectionsJVMKt.listOf(String.valueOf(this.importSelectedContext.getSelectedFolderName()));
        labelLayout2.setLabels(listOf2);
        getBinding().llTags.setLabels(CollectionKt.ensureList(this.importSelectedContext.getSelectedTagNameList()));
        LabelLayout labelLayout3 = getBinding().llTags;
        List<String> selectedTagNameList = this.importSelectedContext.getSelectedTagNameList();
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(labelLayout3, !(selectedTagNameList == null || selectedTagNameList.isEmpty()));
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().llFolders, StringKt.isNotEmpty(this.importSelectedContext.getSelectedFolderName()));
    }

    @NotNull
    public final DialogImportSuccessBinding getBinding() {
        return (DialogImportSuccessBinding) this.binding.getValue();
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063304, this, savedInstanceState);
    }
}
