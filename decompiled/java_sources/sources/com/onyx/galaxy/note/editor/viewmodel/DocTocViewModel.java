package com.onyx.galaxy.note.editor.viewmodel;

import androidx.core.provider.DocumentsContractCompat;
import androidx.lifecycle.MutableLiveData;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.toc.LoadDocTableOfContentAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.editor.viewmodel.DocTocViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b!\u0010\"J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0004\u001a\u00020\u0002J4\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u0012\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u0005J\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J*\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u000f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u001e\u0010\u0012\u001a\u00020\u00022\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0002R#\u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;", "Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;", "", "loadData", "loadTocData", "", "Lcom/onyx/android/sdk/base/data/Tree;", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", FirebaseAnalytics.Param.ITEMS, "deleteData", "deleteTocEntries", DocumentsContractCompat.f5557a, C6997f.f39671c, "", "keyword", "Lkotlin/Pair;", "", C6998g.f39679a, C6999h.f39688c, "Landroidx/lifecycle/MutableLiveData;", "l", "Landroidx/lifecycle/MutableLiveData;", "getTocData", "()Landroidx/lifecycle/MutableLiveData;", "tocData", "", "m", "I", "getLastPageCount", "()I", "setLastPageCount", "(I)V", "lastPageCount", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDocTocViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocTocViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n766#2:104\n857#2,2:105\n1855#2:107\n1856#2:109\n1855#2,2:110\n1#3:108\n*S KotlinDebug\n*F\n+ 1 DocTocViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel\n*L\n41#1:104\n41#1:105,2\n42#1:107\n42#1:109\n92#1:110,2\n*E\n"})
/* loaded from: classes9.dex */
public final class DocTocViewModel extends DocSearchViewModel {

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Tree<VirtualTocModel>> tocData = new MutableLiveData<>();

    /* renamed from: m, reason: from kotlin metadata */
    public int lastPageCount;

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.DocTocViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12560b<T> implements Consumer {
        public C12560b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Tree<VirtualTocModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocTocViewModel.this.getTocData().postValue(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.DocTocViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C12561c<T> implements Consumer {
        public C12561c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Tree<VirtualTocModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocTocViewModel docTocViewModel = DocTocViewModel.this;
            docTocViewModel.m50369h(it2, docTocViewModel.m72422getSearchKey());
        }
    }

    /* renamed from: e */
    public static final String m50366e(Tree it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        Object item = it2.getItem();
        Intrinsics.checkNotNull(item);
        return ((VirtualTocModel) item).getUniqueId();
    }

    @NotNull
    public final List<Tree<VirtualTocModel>> deleteTocEntries(@NotNull List<Tree<VirtualTocModel>> items, @NotNull List<VirtualTocModel> deleteData) {
        List<Tree<VirtualTocModel>> list;
        List children;
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(deleteData, "deleteData");
        ArrayList arrayList = new ArrayList();
        for (Object obj : items) {
            if (((Tree) obj).getItem() != null) {
                arrayList.add(obj);
            }
        }
        Map mutableMap = CollectionKt.toMutableMap(arrayList, new Function() { // from class: com.sunia.HTREnginev2.u9f
            @Override // io.reactivex.rxjava3.functions.Function
            public final Object apply(Object obj2) {
                String m50366e;
                m50366e = DocTocViewModel.m50366e((Tree) obj2);
                return m50366e;
            }
        });
        Iterator<T> it2 = deleteData.iterator();
        while (it2.hasNext()) {
            Tree tree = (Tree) mutableMap.get(((VirtualTocModel) it2.next()).getUniqueId());
            if (tree != null) {
                Tree parent = tree.getParent();
                if (parent != null && (children = parent.getChildren()) != null) {
                    children.remove(tree);
                }
                VirtualTocModel virtualTocModel = (VirtualTocModel) tree.getItem();
                if (virtualTocModel != null) {
                    mutableMap.remove(virtualTocModel.getUniqueId());
                }
            }
        }
        list = CollectionsKt___CollectionsKt.toList(mutableMap.values());
        return list;
    }

    /* renamed from: f */
    public final Tree<VirtualTocModel> m50367f(Tree<VirtualTocModel> tree) {
        String m72422getSearchKey = m72422getSearchKey();
        if (StringKt.isNotBlank(m72422getSearchKey)) {
            m50368g(tree, m72422getSearchKey);
        }
        return tree;
    }

    /* renamed from: g */
    public final Pair<Boolean, Boolean> m50368g(Tree<VirtualTocModel> tree, String keyword) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        boolean z2 = false;
        boolean z3 = false;
        for (Tree<VirtualTocModel> tree2 : tree.getChildren()) {
            Pair<Boolean, Boolean> m50368g = m50368g(tree2, keyword);
            z2 = z2 || m50368g.getSecond().booleanValue();
            z3 = z3 || m50368g.getFirst().booleanValue();
            if (m50368g.getSecond().booleanValue()) {
                arrayList.add(tree2);
            }
        }
        VirtualTocModel item = tree.getItem();
        if (item != null) {
            z = StringsKt__StringsKt.contains((CharSequence) item.getTitle(), (CharSequence) keyword, true);
            item.setExpandState(Boolean.valueOf(z2));
        } else {
            z = false;
        }
        if (tree.getItem() == null) {
            tree.setChildren(arrayList);
        }
        return new Pair<>(Boolean.valueOf(z), Boolean.valueOf(z || z2));
    }

    public final int getLastPageCount() {
        return this.lastPageCount;
    }

    @NotNull
    public final MutableLiveData<Tree<VirtualTocModel>> getTocData() {
        return this.tocData;
    }

    /* renamed from: h */
    public final void m50369h(Tree<VirtualTocModel> tree, String keyword) {
        boolean contains;
        int i = 0;
        if (keyword.length() == 0) {
            return;
        }
        Stack stack = new Stack();
        stack.push(tree);
        while (!stack.isEmpty()) {
            Tree tree2 = (Tree) stack.pop();
            Iterator it2 = tree2.getChildren().iterator();
            while (it2.hasNext()) {
                stack.push((Tree) it2.next());
            }
            VirtualTocModel virtualTocModel = (VirtualTocModel) tree2.getItem();
            if (virtualTocModel != null) {
                contains = StringsKt__StringsKt.contains((CharSequence) virtualTocModel.getTitle(), (CharSequence) keyword, true);
                if (contains) {
                    i++;
                }
            }
        }
        getMatchingData().postValue(Integer.valueOf(i));
    }

    @Override // com.onyx.galaxy.note.editor.viewmodel.DocSearchViewModel
    public void loadData() {
        loadTocData();
    }

    public final void loadTocData() {
        EditorBundle editorBundle = getEditorBundle();
        if (editorBundle == null) {
            return;
        }
        this.lastPageCount = EditorBundleKt.pageCount(editorBundle);
        new LoadDocTableOfContentAction(editorBundle).build().observeOn(EditorBundleKt.ioSequenceScheduler(editorBundle)).map(new Function() { // from class: com.onyx.galaxy.note.editor.viewmodel.DocTocViewModel.a
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Tree<VirtualTocModel> apply(@NotNull Tree<VirtualTocModel> p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return DocTocViewModel.this.m50367f(p0);
            }
        }).doOnNext(new C12560b()).doOnNext(new C12561c()).subscribe();
    }

    public final void setLastPageCount(int i) {
        this.lastPageCount = i;
    }
}
