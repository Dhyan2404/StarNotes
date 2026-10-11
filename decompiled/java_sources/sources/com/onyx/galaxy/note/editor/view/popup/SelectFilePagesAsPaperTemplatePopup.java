package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.filepicker.FilePickerBuilder;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.DocumentFileEntry;
import com.onyx.android.sdk.universal.editor.data.ReaderPageDataModel;
import com.onyx.galaxy.note.category.action.template.ImportFilesAsCustomPaperAction;
import com.onyx.galaxy.note.category.data.TemplateFileBean;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\r\u001a\u00020\n\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsPaperTemplatePopup;", "Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;", "", Constants.ELEMNAME_IMPORT_STRING, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Q", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getDocManagerBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "docManagerBundle", "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", "fileEntry", "Landroid/content/Context;", "context", "", "maxCount", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectFilePagesAsPaperTemplatePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectFilePagesAsPaperTemplatePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsPaperTemplatePopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,36:1\n1549#2:37\n1620#2,3:38\n*S KotlinDebug\n*F\n+ 1 SelectFilePagesAsPaperTemplatePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsPaperTemplatePopup\n*L\n27#1:37\n27#1:38,3\n*E\n"})
/* loaded from: classes9.dex */
public final class SelectFilePagesAsPaperTemplatePopup extends SelectFilePagesPopup {

    /* renamed from: Q, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle docManagerBundle;

    /* renamed from: Z, reason: from kotlin metadata */
    @NotNull
    public final DocumentFileEntry fileEntry;

    public /* synthetic */ SelectFilePagesAsPaperTemplatePopup(EditorBundle editorBundle, Context context, DocumentFileEntry documentFileEntry, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, context, documentFileEntry, (i2 & 8) != 0 ? 0 : i);
    }

    @NotNull
    public final EditorBundle getDocManagerBundle() {
        return this.docManagerBundle;
    }

    @Override // com.onyx.galaxy.note.editor.view.popup.SelectFilePagesPopup
    /* renamed from: import */
    public void mo72421import() {
        int collectionSizeOrDefault;
        List<Integer> mutableList;
        List listOf;
        List<ReaderPageDataModel> selectedItems = getPageListAdapter().getSelectedItems();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(selectedItems, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = selectedItems.iterator();
        while (it2.hasNext()) {
            arrayList.add(Integer.valueOf(((ReaderPageDataModel) it2.next()).getArgs().getPageIndex()));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        if (CollectionKt.isNullOrEmpty(mutableList)) {
            return;
        }
        EditorBundle editorBundle = this.docManagerBundle;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(TemplateFileBean.INSTANCE.createTemplateFileBean(this.fileEntry.getFileUri(), mutableList, this.fileEntry.getFilePassword()));
        RxBaseAction.execute$default(new ImportFilesAsCustomPaperAction(editorBundle, listOf), null, null, null, 7, null);
        FilePickerBuilder.INSTANCE.release();
        dismiss();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectFilePagesAsPaperTemplatePopup(@NotNull EditorBundle docManagerBundle, @NotNull Context context, @NotNull DocumentFileEntry fileEntry, int i) {
        super(docManagerBundle, context, fileEntry, i);
        Intrinsics.checkNotNullParameter(docManagerBundle, "docManagerBundle");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fileEntry, "fileEntry");
        this.docManagerBundle = docManagerBundle;
        this.fileEntry = fileEntry;
    }
}
