package com.onyx.galaxy.note.editor.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualBookmarkModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.bookmark.LoadBookmarkListAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0004\u001a\u00020\u0002J\u001e\u0010\n\u001a\u00020\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\t\u001a\u00020\bH\u0002R#\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel;", "Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;", "", "loadData", "loadBookmarkData", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;", "list", "", "keyword", "d", "Landroidx/lifecycle/MutableLiveData;", "l", "Landroidx/lifecycle/MutableLiveData;", "getBookmarkData", "()Landroidx/lifecycle/MutableLiveData;", "bookmarkData", "", "m", "I", "getLastPageCount", "()I", "setLastPageCount", "(I)V", "lastPageCount", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DocBookmarkViewModel extends DocSearchViewModel {

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<List<VirtualBookmarkModel>> bookmarkData = new MutableLiveData<>();

    /* renamed from: m, reason: from kotlin metadata */
    public int lastPageCount;

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.DocBookmarkViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12555a<T> implements Consumer {
        public C12555a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<VirtualBookmarkModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocBookmarkViewModel.this.getBookmarkData().postValue(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.DocBookmarkViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12556b<T> implements Consumer {
        public C12556b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<VirtualBookmarkModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocBookmarkViewModel docBookmarkViewModel = DocBookmarkViewModel.this;
            docBookmarkViewModel.m50359d(it2, docBookmarkViewModel.m72422getSearchKey());
        }
    }

    /* renamed from: d */
    public final void m50359d(List<VirtualBookmarkModel> list, String keyword) {
        if (keyword.length() == 0) {
            return;
        }
        getMatchingData().postValue(Integer.valueOf(list.size()));
    }

    @NotNull
    public final MutableLiveData<List<VirtualBookmarkModel>> getBookmarkData() {
        return this.bookmarkData;
    }

    public final int getLastPageCount() {
        return this.lastPageCount;
    }

    public final void loadBookmarkData() {
        EditorBundle editorBundle = getEditorBundle();
        if (editorBundle == null) {
            return;
        }
        this.lastPageCount = EditorBundleKt.pageCount(editorBundle);
        String str = getSearchKey().get();
        if (str == null) {
            str = "";
        }
        new LoadBookmarkListAction(editorBundle, str).build().doOnNext(new C12555a()).observeOn(EditorBundleKt.ioSequenceScheduler(editorBundle)).doOnNext(new C12556b()).subscribe();
    }

    @Override // com.onyx.galaxy.note.editor.viewmodel.DocSearchViewModel
    public void loadData() {
        loadBookmarkData();
    }

    public final void setLastPageCount(int i) {
        this.lastPageCount = i;
    }
}
