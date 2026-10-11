package com.onyx.galaxy.note.category.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseMultiItemAdapter;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.LogFileUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.galaxy.note.category.data.FilterInfo;
import com.onyx.galaxy.note.category.view.adapter.FilterAdapter;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.databinding.ItemFilterDummyBinding;
import com.onyx.galaxy.note.databinding.ItemFilterFooterBinding;
import com.onyx.galaxy.note.databinding.ItemFilterHeaderBinding;
import com.onyx.galaxy.note.databinding.ItemFilterNoteAllBinding;
import com.onyx.galaxy.note.databinding.ItemFilterNoteDustbinBinding;
import com.onyx.galaxy.note.databinding.ItemFilterNoteFolderBinding;
import com.onyx.galaxy.note.databinding.ItemFilterNoteFolderRootBinding;
import com.onyx.galaxy.note.databinding.ItemFilterNoteSetNoTagBinding;
import com.onyx.galaxy.note.databinding.ItemFilterNoteSetUnClassfiedBinding;
import com.onyx.galaxy.note.databinding.ItemFilterNoteTagBinding;
import com.onyx.galaxy.note.databinding.ItemFilterNoteTagRootBinding;
import com.onyx.galaxy.note.databinding.ItemFilterSearchBinding;
import com.onyx.galaxy.note.databinding.ItemNoteShadowViewLayoutBinding;
import com.onyx.galaxy.note.databinding.ItemTagShadowViewLayoutBinding;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.disposables.Disposable;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u0000 *2\b\u0012\u0004\u0012\u00020\u00020\u0001:\r*+,-./0123456B\u001f\u0012\u0006\u0010\u001b\u001a\u00020\u0019\u0012\u0006\u0010\u001e\u001a\u00020\u001c\u0012\u0006\u0010!\u001a\u00020\u001f¢\u0006\u0004\b(\u0010)J\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\bH\u0007J\b\u0010\u000b\u001a\u00020\u0003H\u0002J\b\u0010\f\u001a\u00020\u0003H\u0002J\b\u0010\r\u001a\u00020\u0003H\u0002J\b\u0010\u000e\u001a\u00020\u0003H\u0002J\b\u0010\u000f\u001a\u00020\u0003H\u0002J\b\u0010\u0010\u001a\u00020\u0003H\u0002J\b\u0010\u0011\u001a\u00020\u0003H\u0002J\b\u0010\u0012\u001a\u00020\u0003H\u0002J\b\u0010\u0013\u001a\u00020\u0003H\u0002J\b\u0010\u0014\u001a\u00020\u0003H\u0002J\b\u0010\u0015\u001a\u00020\u0003H\u0002J\b\u0010\u0016\u001a\u00020\u0003H\u0002J\b\u0010\u0017\u001a\u00020\u0003H\u0002J\b\u0010\u0018\u001a\u00020\u0003H\u0002R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010 R\u0018\u0010#\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\"R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010$R\u0018\u0010'\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010&¨\u00067"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;", "Lcom/chad/library/adapter4/BaseMultiItemAdapter;", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "", "cancelLoadUserAvatar", "", "unreadCount", "updateUnreadCount", "", CouchFieldKey.KEY_UNIQUE_ID, "updateSelectId", "q", "A", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "x", "y", "t", "u", "v", "s", "w", "r", "z", "p", "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;", "viewModel", "Lcom/onyx/galaxy/note/databinding/ItemNoteShadowViewLayoutBinding;", "Lcom/onyx/galaxy/note/databinding/ItemNoteShadowViewLayoutBinding;", "folderShadowView", "Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;", "Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;", "tagShadowView", Constants.STRING_SIG, "selectId", "I", "Lio/reactivex/rxjava3/disposables/Disposable;", "Lio/reactivex/rxjava3/disposables/Disposable;", "disposable", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/galaxy/note/databinding/ItemNoteShadowViewLayoutBinding;Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;)V", "Companion", "FilterDummyItemViewHolder", "FilterFooterItemViewHolder", "FilterHeaderItemViewHolder", "FilterNoteAllItemViewHolder", "FilterNoteDustBinItemViewHolder", "FilterNoteFolderItemViewHolder", "FilterNoteFolderRootItemViewHolder", "FilterNoteNoTagItemViewHolder", "FilterNoteTagItemViewHolder", "FilterNoteTagRootItemViewHolder", "FilterNoteUnClassfiedItemViewHolder", "FilterSearchItemViewHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFilterAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,792:1\n350#2,7:793\n*S KotlinDebug\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter\n*L\n780#1:793,7\n*E\n"})
/* loaded from: classes9.dex */
public final class FilterAdapter extends BaseMultiItemAdapter<FilterInfo> {

    @NotNull
    public static final String TAG = "FilterAdapter";

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final NoteListViewModel viewModel;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final ItemNoteShadowViewLayoutBinding folderShadowView;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final ItemTagShadowViewLayoutBinding tagShadowView;

    /* renamed from: w, reason: from kotlin metadata */
    @Nullable
    public String selectId;

    /* renamed from: x, reason: from kotlin metadata */
    public int unreadCount;

    /* renamed from: y, reason: from kotlin metadata */
    @Nullable
    public Disposable disposable;

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterDummyItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemFilterDummyBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemFilterDummyBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemFilterDummyBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemFilterDummyBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class FilterDummyItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemFilterDummyBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FilterDummyItemViewHolder(@NotNull ItemFilterDummyBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemFilterDummyBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterFooterItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemFilterFooterBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemFilterFooterBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemFilterFooterBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemFilterFooterBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class FilterFooterItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemFilterFooterBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FilterFooterItemViewHolder(@NotNull ItemFilterFooterBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemFilterFooterBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterHeaderItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemFilterHeaderBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemFilterHeaderBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemFilterHeaderBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemFilterHeaderBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class FilterHeaderItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemFilterHeaderBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FilterHeaderItemViewHolder(@NotNull ItemFilterHeaderBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemFilterHeaderBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteAllItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemFilterNoteAllBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemFilterNoteAllBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemFilterNoteAllBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemFilterNoteAllBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class FilterNoteAllItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemFilterNoteAllBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FilterNoteAllItemViewHolder(@NotNull ItemFilterNoteAllBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemFilterNoteAllBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteDustBinItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemFilterNoteDustbinBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemFilterNoteDustbinBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemFilterNoteDustbinBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemFilterNoteDustbinBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class FilterNoteDustBinItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemFilterNoteDustbinBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FilterNoteDustBinItemViewHolder(@NotNull ItemFilterNoteDustbinBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemFilterNoteDustbinBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteFolderItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class FilterNoteFolderItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemFilterNoteFolderBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FilterNoteFolderItemViewHolder(@NotNull ItemFilterNoteFolderBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemFilterNoteFolderBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteFolderRootItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderRootBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderRootBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderRootBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderRootBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class FilterNoteFolderRootItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemFilterNoteFolderRootBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FilterNoteFolderRootItemViewHolder(@NotNull ItemFilterNoteFolderRootBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemFilterNoteFolderRootBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteNoTagItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemFilterNoteSetNoTagBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemFilterNoteSetNoTagBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemFilterNoteSetNoTagBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemFilterNoteSetNoTagBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class FilterNoteNoTagItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemFilterNoteSetNoTagBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FilterNoteNoTagItemViewHolder(@NotNull ItemFilterNoteSetNoTagBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemFilterNoteSetNoTagBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class FilterNoteTagItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemFilterNoteTagBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FilterNoteTagItemViewHolder(@NotNull ItemFilterNoteTagBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemFilterNoteTagBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagRootItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagRootBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagRootBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagRootBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagRootBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class FilterNoteTagRootItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemFilterNoteTagRootBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FilterNoteTagRootItemViewHolder(@NotNull ItemFilterNoteTagRootBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemFilterNoteTagRootBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteUnClassfiedItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemFilterNoteSetUnClassfiedBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemFilterNoteSetUnClassfiedBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemFilterNoteSetUnClassfiedBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemFilterNoteSetUnClassfiedBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class FilterNoteUnClassfiedItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemFilterNoteSetUnClassfiedBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FilterNoteUnClassfiedItemViewHolder(@NotNull ItemFilterNoteSetUnClassfiedBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemFilterNoteSetUnClassfiedBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterSearchItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class FilterSearchItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemFilterSearchBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FilterSearchItemViewHolder(@NotNull ItemFilterSearchBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemFilterSearchBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilterAdapter(@NotNull NoteListViewModel viewModel, @NotNull ItemNoteShadowViewLayoutBinding folderShadowView, @NotNull ItemTagShadowViewLayoutBinding tagShadowView) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        Intrinsics.checkNotNullParameter(folderShadowView, "folderShadowView");
        Intrinsics.checkNotNullParameter(tagShadowView, "tagShadowView");
        this.viewModel = viewModel;
        this.folderShadowView = folderShadowView;
        this.tagShadowView = tagShadowView;
        this.unreadCount = -1;
        m43996q();
    }

    /* renamed from: B */
    public static final int m43990B(final FilterAdapter this$0, final int i, final List list) {
        Object orNull;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "list");
        orNull = CollectionsKt___CollectionsKt.getOrNull(list, i);
        FilterInfo filterInfo = (FilterInfo) orNull;
        return ((Number) AnyKt.getOrElse(filterInfo != null ? Integer.valueOf(filterInfo.getType()) : null, new Function0<Integer>() { // from class: com.onyx.galaxy.note.category.view.adapter.FilterAdapter$mapItemType$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                LogFileUtils.INSTANCE.m32102e(FilterAdapter.this.getClass(), "onItemViewType get a error type from list:" + list.size() + " pos:" + i);
                return 100;
            }
        })).intValue();
    }

    /* renamed from: A */
    public final void m43992A() {
        onItemViewType(new BaseMultiItemAdapter.OnItemViewTypeListener() { // from class: com.sunia.HTREnginev2.alg
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnItemViewTypeListener
            public final int onItemViewType(int i, List list) {
                int m43990B;
                m43990B = FilterAdapter.m43990B(FilterAdapter.this, i, list);
                return m43990B;
            }
        });
    }

    public final void cancelLoadUserAvatar() {
        Disposable disposable = this.disposable;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    /* renamed from: n */
    public final void m43993n() {
        addItemType(100, new BaseMultiItemAdapter.OnMultiItemAdapterListener<FilterInfo, FilterDummyItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.FilterAdapter$addDummyItem$1
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull FilterAdapter.FilterDummyItemViewHolder holder, int position, @Nullable FilterInfo item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public FilterAdapter.FilterDummyItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemFilterDummyBinding inflate = ItemFilterDummyBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new FilterAdapter.FilterDummyItemViewHolder(inflate);
            }
        });
    }

    /* renamed from: o */
    public final void m43994o() {
        addItemType(97, new BaseMultiItemAdapter.OnMultiItemAdapterListener<FilterInfo, FilterFooterItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.FilterAdapter$addFooterItem$1
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull FilterAdapter.FilterFooterItemViewHolder holder, int position, @Nullable FilterInfo item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public FilterAdapter.FilterFooterItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemFilterFooterBinding inflate = ItemFilterFooterBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new FilterAdapter.FilterFooterItemViewHolder(inflate);
            }
        });
    }

    /* renamed from: p */
    public final void m43995p() {
        addItemType(98, new FilterAdapter$addHeaderItem$1(this));
    }

    /* renamed from: q */
    public final void m43996q() {
        m43995p();
        m44005z();
        m43997r();
        m44002w();
        m44001v();
        m43998s();
        m44000u();
        m43999t();
        m44004y();
        m44003x();
        m43993n();
        m43994o();
        m43992A();
    }

    /* renamed from: r */
    public final void m43997r() {
        addItemType(1, new FilterAdapter$addNoteAllItem$1(this));
    }

    /* renamed from: s */
    public final void m43998s() {
        addItemType(8, new FilterAdapter$addNoteDustBin$1(this));
    }

    /* renamed from: t */
    public final void m43999t() {
        addItemType(5, new FilterAdapter$addNoteFolder$1(this));
    }

    /* renamed from: u */
    public final void m44000u() {
        addItemType(4, new FilterAdapter$addNoteFolderRoot$1(this));
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void updateSelectId(@NotNull String uniqueId) {
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        this.selectId = uniqueId;
        notifyDataSetChanged();
        Debug.INSTANCE.m32035d(FilterAdapter.class, "selId:" + uniqueId, new Object[0]);
    }

    public final void updateUnreadCount(int unreadCount) {
        this.unreadCount = unreadCount;
        Iterator<FilterInfo> it2 = getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else {
                if (it2.next().getType() == 98) {
                    break;
                } else {
                    i++;
                }
            }
        }
        if (i >= 0) {
            notifyItemChanged(i);
        }
    }

    /* renamed from: v */
    public final void m44001v() {
        addItemType(3, new FilterAdapter$addNoteSetNoTag$1(this));
    }

    /* renamed from: w */
    public final void m44002w() {
        addItemType(2, new FilterAdapter$addNoteSetUnClassfied$1(this));
    }

    /* renamed from: x */
    public final void m44003x() {
        addItemType(7, new FilterAdapter$addNoteTagItem$1(this));
    }

    /* renamed from: y */
    public final void m44004y() {
        addItemType(6, new FilterAdapter$addNoteTagRootItem$1(this));
    }

    /* renamed from: z */
    public final void m44005z() {
        addItemType(0, new FilterAdapter$addSearchItem$1(this));
    }
}
