package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.data.DocumentFileEntry;
import com.onyx.android.sdk.universal.editor.data.InsertPageArgs;
import com.onyx.android.sdk.universal.editor.data.ReaderPageDataModel;
import com.onyx.android.sdk.universal.editor.events.app.ImportPagesEvent;
import com.onyx.android.sdk.universal.editor.events.app.InsertPdfPagesEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001BE\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0014\u001a\u00020\u0004\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0010¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup;", "Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;", "", Constants.ELEMNAME_IMPORT_STRING, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Q", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", "fileEntry", "", "k0", "I", "insertPageIndex", "Lkotlin/Function0;", "q0", "Lkotlin/jvm/functions/Function0;", "importCallback", "docManagerBundle", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;ILkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectFilePagesToInsertPagePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectFilePagesToInsertPagePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n1549#2:53\n1620#2,3:54\n*S KotlinDebug\n*F\n+ 1 SelectFilePagesToInsertPagePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup\n*L\n31#1:53\n31#1:54,3\n*E\n"})
/* loaded from: classes9.dex */
public final class SelectFilePagesToInsertPagePopup extends SelectFilePagesPopup {

    /* renamed from: Q, reason: from kotlin metadata */
    @Nullable
    public final EditorBundle editorBundle;

    /* renamed from: Z, reason: from kotlin metadata */
    @NotNull
    public final DocumentFileEntry fileEntry;

    /* renamed from: k0, reason: from kotlin metadata */
    public final int insertPageIndex;

    /* renamed from: q0, reason: from kotlin metadata */
    @Nullable
    public Function0<Unit> importCallback;

    public /* synthetic */ SelectFilePagesToInsertPagePopup(EditorBundle editorBundle, EditorBundle editorBundle2, Context context, DocumentFileEntry documentFileEntry, int i, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : editorBundle, editorBundle2, context, documentFileEntry, i, (i2 & 32) != 0 ? null : function0);
    }

    @Override // com.onyx.galaxy.note.editor.view.popup.SelectFilePagesPopup
    /* renamed from: import */
    public void mo72421import() {
        int collectionSizeOrDefault;
        List<Integer> mutableList;
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
        int i = this.insertPageIndex;
        InsertPageArgs insertPageArgs = new InsertPageArgs();
        insertPageArgs.setTemplateUri(this.fileEntry.getFileUri());
        insertPageArgs.setTemplatePageIndexList(mutableList);
        insertPageArgs.setInsertAt(i);
        insertPageArgs.setPassword(this.fileEntry.getFilePassword());
        insertPageArgs.setSelectAllPage(mutableList.size() >= getPageListAdapter().getItemCount());
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            EditorBundleKt.postEvent(editorBundle, new InsertPdfPagesEvent(insertPageArgs));
        } else {
            GlobalBundle.INSTANCE.postEvent(new ImportPagesEvent(insertPageArgs));
            Function0<Unit> function0 = this.importCallback;
            if (function0 != null) {
                function0.invoke();
            }
        }
        dismiss();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectFilePagesToInsertPagePopup(@Nullable EditorBundle editorBundle, @NotNull EditorBundle docManagerBundle, @NotNull Context context, @NotNull DocumentFileEntry fileEntry, int i, @Nullable Function0<Unit> function0) {
        super(docManagerBundle, context, fileEntry, 0, 8, null);
        Intrinsics.checkNotNullParameter(docManagerBundle, "docManagerBundle");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fileEntry, "fileEntry");
        this.editorBundle = editorBundle;
        this.fileEntry = fileEntry;
        this.insertPageIndex = i;
        this.importCallback = function0;
    }
}
