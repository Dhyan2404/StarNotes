package com.onyx.galaxy.note.category.view.adapter;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseDifferAdapter;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.replicator.note.data.constant.NoteScene;
import com.onyx.android.sdk.universal.editor.EditorBundleCache;
import com.onyx.android.sdk.universal.editor.EditorBundleWrapper;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.LoadPageSearchThumbnailAction;
import com.onyx.galaxy.note.databinding.ItemSearchNoteSectionPageBinding;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u001a2\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002\u001a\u001bB\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b\u0018\u0010\u0019J&\u0010\t\u001a\u00020\b2\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J$\u0010\u000f\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0005H\u0014J\u001c\u0010\u0011\u001a\u00020\b2\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0002H\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0002H\u0002R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteTextAdapter;", "Lcom/chad/library/adapter4/BaseDifferAdapter;", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteTextAdapter$VH;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "entity", C4921e.f26528e, "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;", "t", "Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;", "editorBundleCache", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;)V", "Companion", "VH", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSearchNoteTextAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteTextAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteTextAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,72:1\n277#2,2:73\n277#2,2:75\n*S KotlinDebug\n*F\n+ 1 SearchNoteTextAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteTextAdapter\n*L\n45#1:73,2\n46#1:75,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SearchNoteTextAdapter extends BaseDifferAdapter<NoteSearchBean, C11405VH> {

    @NotNull
    public static final String PAY_LOAD_KEY_UPDATE_TEXT_LIST = "pay_load_key_update_text_list";

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final EditorBundleCache editorBundleCache;

    @SourceDebugExtension({"SMAP\nSearchNoteTextAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteTextAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteTextAdapter$loadNotePageThumb$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,72:1\n277#2,2:73\n277#2,2:75\n*S KotlinDebug\n*F\n+ 1 SearchNoteTextAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteTextAdapter$loadNotePageThumb$1\n*L\n59#1:73,2\n60#1:75,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.view.adapter.SearchNoteTextAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C11406a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ C11405VH f55299e;

        public C11406a(C11405VH c11405vh) {
            this.f55299e = c11405vh;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Group groupNoteThumbnail = this.f55299e.getViewBinding().groupNoteThumbnail;
            Intrinsics.checkNotNullExpressionValue(groupNoteThumbnail, "groupNoteThumbnail");
            groupNoteThumbnail.setVisibility(0);
            Group groupNoteThumbnailLand = this.f55299e.getViewBinding().groupNoteThumbnailLand;
            Intrinsics.checkNotNullExpressionValue(groupNoteThumbnailLand, "groupNoteThumbnailLand");
            groupNoteThumbnailLand.setVisibility(4);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchNoteTextAdapter(@NotNull EditorBundleCache editorBundleCache) {
        super(new NoteSearchBeanDiffCallback());
        Intrinsics.checkNotNullParameter(editorBundleCache, "editorBundleCache");
        this.editorBundleCache = editorBundleCache;
    }

    /* renamed from: n */
    public final String m44185n(NoteSearchBean item) {
        if (NoteScene.INSTANCE.isDraft(item.getNoteModel().getActiveScene())) {
            String string = getContext().getString(C10651R.string.no_bound_page);
            Intrinsics.checkNotNull(string);
            return string;
        }
        StringBuilder sb = new StringBuilder();
        sb.append('P');
        sb.append(item.getPageIndex() + 1);
        return sb.toString();
    }

    /* renamed from: o */
    public final void m44186o(C11405VH holder, NoteSearchBean entity) {
        EditorBundleWrapper computeIfAbsent$default = EditorBundleCache.computeIfAbsent$default(this.editorBundleCache, entity.getNoteModel().getUniqueId(), null, 2, null);
        FrameLayout root = holder.getViewBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        RxBaseAction.execute$default(new LoadPageSearchThumbnailAction(computeIfAbsent$default, entity, root, 0, 8, null), null, new C11406a(holder), null, 5, null);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull C11405VH holder, int position, @Nullable NoteSearchBean item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        ItemSearchNoteSectionPageBinding viewBinding = holder.getViewBinding();
        Group groupNoteThumbnail = viewBinding.groupNoteThumbnail;
        Intrinsics.checkNotNullExpressionValue(groupNoteThumbnail, "groupNoteThumbnail");
        groupNoteThumbnail.setVisibility(4);
        Group groupNoteThumbnailLand = viewBinding.groupNoteThumbnailLand;
        Intrinsics.checkNotNullExpressionValue(groupNoteThumbnailLand, "groupNoteThumbnailLand");
        groupNoteThumbnailLand.setVisibility(4);
        m44186o(holder, item);
        viewBinding.tvName.setText(m44185n(item));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public C11405VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new C11405VH(this, parent, null, 2, null);
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteTextAdapter$VH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionPageBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionPageBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionPageBinding;", "viewBinding", "Landroid/view/ViewGroup;", "parent", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteTextAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionPageBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* renamed from: com.onyx.galaxy.note.category.view.adapter.SearchNoteTextAdapter$VH */
    /* loaded from: classes9.dex */
    public final class C11405VH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemSearchNoteSectionPageBinding viewBinding;

        /* renamed from: I */
        public final /* synthetic */ SearchNoteTextAdapter f55298I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11405VH(@NotNull SearchNoteTextAdapter searchNoteTextAdapter, @NotNull ViewGroup parent, ItemSearchNoteSectionPageBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.f55298I = searchNoteTextAdapter;
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemSearchNoteSectionPageBinding getViewBinding() {
            return this.viewBinding;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ C11405VH(com.onyx.galaxy.note.category.view.adapter.SearchNoteTextAdapter r1, android.view.ViewGroup r2, com.onyx.galaxy.note.databinding.ItemSearchNoteSectionPageBinding r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
            /*
                r0 = this;
                r4 = r4 & 2
                if (r4 == 0) goto L16
                android.content.Context r3 = r2.getContext()
                android.view.LayoutInflater r3 = android.view.LayoutInflater.from(r3)
                r4 = 0
                com.onyx.galaxy.note.databinding.ItemSearchNoteSectionPageBinding r3 = com.onyx.galaxy.note.databinding.ItemSearchNoteSectionPageBinding.inflate(r3, r2, r4)
                java.lang.String r4 = "inflate(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            L16:
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteTextAdapter.C11405VH.<init>(com.onyx.galaxy.note.category.view.adapter.SearchNoteTextAdapter, android.view.ViewGroup, com.onyx.galaxy.note.databinding.ItemSearchNoteSectionPageBinding, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }
}
