package com.onyx.galaxy.note.editor.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.excerpt.LoadExcerptListAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0004\u001a\u00020\u0002J\u001e\u0010\n\u001a\u00020\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\t\u001a\u00020\bH\u0002R#\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/viewmodel/DocExcerptViewModel;", "Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;", "", "loadData", "loadExcerptData", "", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "list", "", "keyword", "d", "Landroidx/lifecycle/MutableLiveData;", "l", "Landroidx/lifecycle/MutableLiveData;", "getExcerptData", "()Landroidx/lifecycle/MutableLiveData;", "excerptData", "", "m", "I", "getLastPageCount", "()I", "setLastPageCount", "(I)V", "lastPageCount", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DocExcerptViewModel extends DocSearchViewModel {

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<List<ExcerptInfoBean>> excerptData = new MutableLiveData<>();

    /* renamed from: m, reason: from kotlin metadata */
    public int lastPageCount;

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.DocExcerptViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12557a<T> implements Consumer {
        public C12557a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<ExcerptInfoBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocExcerptViewModel.this.getExcerptData().postValue(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.DocExcerptViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12558b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ String f61090f;

        public C12558b(String str) {
            this.f61090f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<ExcerptInfoBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocExcerptViewModel.this.m50362d(it2, this.f61090f);
        }
    }

    /* renamed from: d */
    public final void m50362d(List<ExcerptInfoBean> list, String keyword) {
        if (keyword.length() == 0) {
            return;
        }
        getMatchingData().postValue(Integer.valueOf(list.size()));
    }

    @NotNull
    public final MutableLiveData<List<ExcerptInfoBean>> getExcerptData() {
        return this.excerptData;
    }

    public final int getLastPageCount() {
        return this.lastPageCount;
    }

    @Override // com.onyx.galaxy.note.editor.viewmodel.DocSearchViewModel
    public void loadData() {
        loadExcerptData();
    }

    public final void loadExcerptData() {
        EditorBundle editorBundle = getEditorBundle();
        if (editorBundle == null) {
            return;
        }
        String str = getSearchKey().get();
        if (str == null) {
            str = "";
        }
        this.lastPageCount = EditorBundleKt.pageCount(editorBundle);
        new LoadExcerptListAction(editorBundle, str).build().doOnNext(new C12557a()).observeOn(EditorBundleKt.ioSequenceScheduler(editorBundle)).doOnNext(new C12558b(str)).subscribe();
    }

    public final void setLastPageCount(int i) {
        this.lastPageCount = i;
    }
}
