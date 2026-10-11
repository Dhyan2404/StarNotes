package com.onyx.galaxy.note.category.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter4.BaseMultiItemAdapter;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.note.common.utils.ImageManager;
import com.onyx.android.sdk.replicator.bean.KSyncStatus;
import com.onyx.android.sdk.replicator.event.SyncNoteProgressChangedEvent;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBeanList;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.progress.bean.SyncDocProgress;
import com.onyx.android.sdk.replicator.progress.p037db.model.SyncProgressModel;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.common.drag.DragAndDropUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.TagsLinearLayout;
import com.onyx.galaxy.note.category.view.adapter.NoteListAdapter;
import com.onyx.galaxy.note.category.view.drag.NoteFolderListDragListener;
import com.onyx.galaxy.note.databinding.ItemNoteListGridFolderBinding;
import com.onyx.galaxy.note.databinding.ItemNoteListGridNoteLandBinding;
import com.onyx.galaxy.note.databinding.ItemNoteListGridNotePortraitBinding;
import com.onyx.galaxy.note.databinding.ItemNoteListLinearFolderBinding;
import com.onyx.galaxy.note.databinding.ItemNoteListLinearNoteLandBinding;
import com.onyx.galaxy.note.databinding.ItemNoteListLinearNotePortraitBinding;
import com.onyx.galaxy.note.editor.view.popup.SyncErrorPopup;
import com.onyx.galaxy.note.utils.ThumbnailColorUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0007\n\u0002\b\u0011\u0018\u0000 e2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0007efghijkB\u0011\u0012\b\b\u0002\u00108\u001a\u00020\u0016¢\u0006\u0004\bc\u0010dJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J0\u0010\r\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\"\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0002J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0018\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J\u001e\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001a2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002J\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002J\u0010\u0010#\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020!H\u0002J\u0018\u0010%\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010$\u001a\u00020!H\u0002J\u0018\u0010&\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020!H\u0002J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010(\u001a\u00020'H\u0016J\u0006\u0010*\u001a\u00020\u0003J\u000e\u0010,\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0007J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0016H\u0007J\u0016\u00100\u001a\u00020\u00032\u0006\u0010/\u001a\u00020\u00162\u0006\u0010\b\u001a\u00020\u0007J\u000e\u00102\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u0016J\u000e\u00105\u001a\u00020\u00032\u0006\u00104\u001a\u000203R\u0014\u00108\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R\"\u0010?\u001a\u0002098\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>RB\u0010I\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020A0@2\u0012\u0010B\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020A0@8\u0006@GX\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR$\u0010+\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u00078\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\r\u0010K\u001a\u0004\bL\u0010MR\"\u0010T\u001a\u00020N8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010O\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR$\u0010Z\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR\u001b\u0010_\u001a\u00020[8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\\\u0010]\u001a\u0004\b\\\u0010^R\u0018\u0010`\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010UR\u0016\u0010a\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u00107R\u0016\u0010b\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u00107¨\u0006l"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;", "Lcom/chad/library/adapter4/BaseMultiItemAdapter;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "", "q", "Landroid/view/View;", "itemView", "", "position", "item", "", "", "payloads", "w", "u", "G", "view", "F", "Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;", CouchFieldKey.KEY_SYNC_STATUS, "", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "interval", "B", "Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;", "llTags", "", "", CouchFieldKey.KEY_TAG_ID_LIST, "s", "y", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "syncNoteModel", "A", "noteModelBean", "E", "x", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "onViewRecycled", "resetDragView", "displayType", "setDisplayType", "enable", "enableMulSelect", "selected", "updateSelect", "show", "setShowUpdateAt", "Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;", NotificationCompat.CATEGORY_EVENT, "handleSyncNoteProgressChangedEvent", "t", Constants.HASIDCALL_INDEX_SIG, "enableDrag", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;", "getSelectionList", "()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;", "setSelectionList", "(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V", "selectionList", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "value", "v", "Ljava/util/Map;", "getTagByIdMap", "()Ljava/util/Map;", "setTagByIdMap", "(Ljava/util/Map;)V", "tagByIdMap", "<set-?>", "I", "getDisplayType", "()I", "Lcom/onyx/android/sdk/base/data/SortBy;", "Lcom/onyx/android/sdk/base/data/SortBy;", "getSortBy", "()Lcom/onyx/android/sdk/base/data/SortBy;", "setSortBy", "(Lcom/onyx/android/sdk/base/data/SortBy;)V", "sortBy", Constants.STRING_SIG, "getSelectedTagId", "()Ljava/lang/String;", "setSelectedTagId", "(Ljava/lang/String;)V", "selectedTagId", "", "z", "Lkotlin/Lazy;", "()F", "shadowAlpha", "dragNoteId", "isMulSelect", "isShowUpdateAt", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Z)V", "Companion", "GridFolderItemViewHolder", "GridNoteLandItemViewHolder", "GridNotePortraitItemViewHolder", "LinearFolderItemViewHolder", "LinearNoteLandItemViewHolder", "LinearNotePortraitItemViewHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NoteListAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,658:1\n256#2,2:659\n326#2,4:661\n326#2,4:665\n188#2,3:669\n1603#3,9:672\n1855#3:681\n1856#3:683\n1612#3:684\n1549#3:685\n1620#3,3:686\n350#3,7:689\n1855#3:696\n1856#3:698\n1#4:682\n1#4:697\n*S KotlinDebug\n*F\n+ 1 NoteListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NoteListAdapter\n*L\n440#1:659,2\n449#1:661,4\n454#1:665,4\n511#1:669,3\n548#1:672,9\n548#1:681\n548#1:683\n548#1:684\n550#1:685\n550#1:686,3\n615#1:689,7\n644#1:696\n644#1:698\n548#1:682\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteListAdapter extends BaseMultiItemAdapter<NoteModelBean> {

    @NotNull
    public static final String PAY_LOAD_KEY_REFRESH_VIEW = "pay_load_key_refresh_view";

    @NotNull
    public static final String PAY_LOAD_KEY_SELECTED = "pay_load_key_selected";

    @NotNull
    public static final String PAY_LOAD_KEY_SYNC_PROGRESS = "pay_load_key_sync_progress";

    @NotNull
    public static final String TAG = "NoteListAdapter";
    public static final int TYPE_GRID_DISPLAY = 1;
    public static final int TYPE_GRID_FOLDER = 3;
    public static final int TYPE_GRID_NOTE_LAND = 2;
    public static final int TYPE_GRID_NOTE_PORTRAIT = 1;
    public static final int TYPE_LINEAR_FOLDER = 6;
    public static final int TYPE_LINEAR_NOTE_LAND = 5;
    public static final int TYPE_LINEAR_NOTE_PORTRAIT = 4;
    public static final int TYPE_LIST_DISPLAY = 2;

    /* renamed from: A, reason: from kotlin metadata */
    @Nullable
    public String dragNoteId;

    /* renamed from: B, reason: from kotlin metadata */
    public boolean isMulSelect;

    /* renamed from: C, reason: from kotlin metadata */
    public boolean isShowUpdateAt;

    /* renamed from: t, reason: from kotlin metadata */
    public final boolean enableDrag;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public NoteModelBeanList selectionList;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public Map<String, SyncTagModel> tagByIdMap;

    /* renamed from: w, reason: from kotlin metadata */
    public int displayType;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public SortBy sortBy;

    /* renamed from: y, reason: from kotlin metadata */
    @Nullable
    public String selectedTagId;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public final Lazy shadowAlpha;

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$GridFolderItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteListGridFolderBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteListGridFolderBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteListGridFolderBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteListGridFolderBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class GridFolderItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteListGridFolderBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GridFolderItemViewHolder(@NotNull ItemNoteListGridFolderBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteListGridFolderBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$GridNoteLandItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteListGridNoteLandBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteListGridNoteLandBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteListGridNoteLandBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteListGridNoteLandBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class GridNoteLandItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteListGridNoteLandBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GridNoteLandItemViewHolder(@NotNull ItemNoteListGridNoteLandBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteListGridNoteLandBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$GridNotePortraitItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteListGridNotePortraitBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteListGridNotePortraitBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteListGridNotePortraitBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteListGridNotePortraitBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class GridNotePortraitItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteListGridNotePortraitBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GridNotePortraitItemViewHolder(@NotNull ItemNoteListGridNotePortraitBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteListGridNotePortraitBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearFolderItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class LinearFolderItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteListLinearFolderBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LinearFolderItemViewHolder(@NotNull ItemNoteListLinearFolderBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteListLinearFolderBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNoteLandItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNoteLandBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNoteLandBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNoteLandBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNoteLandBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class LinearNoteLandItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteListLinearNoteLandBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LinearNoteLandItemViewHolder(@NotNull ItemNoteListLinearNoteLandBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteListLinearNoteLandBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNotePortraitBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNotePortraitBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNotePortraitBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNotePortraitBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class LinearNotePortraitItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteListLinearNotePortraitBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LinearNotePortraitItemViewHolder(@NotNull ItemNoteListLinearNotePortraitBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemNoteListLinearNotePortraitBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    public NoteListAdapter() {
        this(false, 1, null);
    }

    /* renamed from: H */
    public static final void m44067H(NoteListAdapter this$0, ImageView imageView, NoteModelBean item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        Intrinsics.checkNotNull(imageView);
        this$0.m44080F(imageView, item);
    }

    /* renamed from: r */
    public static final int m44072r(NoteListAdapter this$0, int i, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "list");
        NoteModelBean noteModelBean = (NoteModelBean) list.get(i);
        if (this$0.displayType == 1) {
            if (noteModelBean.isLibrary()) {
                return 3;
            }
            return noteModelBean.getIsPortrait() ? 1 : 2;
        }
        if (noteModelBean.isLibrary()) {
            return 6;
        }
        return noteModelBean.getIsPortrait() ? 4 : 5;
    }

    /* renamed from: t */
    public static final void m44073t(TagsLinearLayout llTags, List nameColorPairList) {
        Intrinsics.checkNotNullParameter(llTags, "$llTags");
        Intrinsics.checkNotNullParameter(nameColorPairList, "$nameColorPairList");
        llTags.initTags(nameColorPairList);
    }

    /* renamed from: v */
    public static final boolean m44074v(NoteListAdapter this$0, View itemView, NoteModelBean noteModelBean, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(itemView, "$itemView");
        if (this$0.isMulSelect) {
            return true;
        }
        this$0.m44086x(itemView, noteModelBean);
        return true;
    }

    /* renamed from: A */
    public final String m44075A(SyncNoteModel syncNoteModel) {
        String format = DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_3().format(new Date(this.isShowUpdateAt ? syncNoteModel.getUpdatedAt() : syncNoteModel.getCreatedAt()));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    /* renamed from: B */
    public final boolean m44076B(long interval) {
        return 1 <= interval && interval < 3000;
    }

    /* renamed from: C */
    public final boolean m44077C(KSyncStatus syncStatus) {
        return m44076B(m44078D(syncStatus));
    }

    /* renamed from: D */
    public final long m44078D(KSyncStatus syncStatus) {
        return System.currentTimeMillis() - syncStatus.getLatestSyncTime();
    }

    /* renamed from: E */
    public final void m44079E(View itemView, SyncNoteModel noteModelBean) {
        ImageView imageView = (ImageView) itemView.findViewById(C10651R.id.iv_thumbnail);
        String obj = ThumbnailPaths.INSTANCE.appThumbnailPath(noteModelBean.getUniqueId()).toAbsolutePath().toString();
        if (!FileUtils.INSTANCE.fileExist(obj)) {
            imageView.setImageBitmap(null);
            return;
        }
        Glide.with(getContext()).load(obj).override(imageView.getWidth(), imageView.getHeight()).signature(ImageManager.INSTANCE.getDefaultFileCacheKey(new File(obj))).dontAnimate().into(imageView);
    }

    /* renamed from: F */
    public final void m44080F(View view, NoteModelBean item) {
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        SyncErrorPopup syncErrorPopup = new SyncErrorPopup(context);
        syncErrorPopup.updateErrorMsg(item.getUniqueId(), item.getDocProgress());
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        int centerX = (rect.centerX() - (view.getWidth() / 2)) - (syncErrorPopup.getContentView().getMeasuredWidth() / 2);
        ResManager resManager = ResManager.INSTANCE;
        syncErrorPopup.showAtLocation(view, 0, centerX - resManager.getDimens(C7384R.dimen.dp_2), (rect.top - syncErrorPopup.getContentView().getMeasuredHeight()) - resManager.getDimens(C7384R.dimen.dp_1));
    }

    /* renamed from: G */
    public final void m44081G(final NoteModelBean item, View itemView) {
        if (AccountDataBundle.INSTANCE.canSync()) {
            SyncDocProgress docProgress = item.getDocProgress();
            KSyncStatus loadOnyxSyncStatus = docProgress != null ? docProgress.loadOnyxSyncStatus() : null;
            if (!item.isDocument() || loadOnyxSyncStatus == null) {
                return;
            }
            CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) itemView.findViewById(C10651R.id.progress_sync);
            final ImageView imageView = (ImageView) itemView.findViewById(C10651R.id.iv_sync_status);
            imageView.setTag(loadOnyxSyncStatus);
            if (loadOnyxSyncStatus.isSyncing()) {
                ViewKt.setViewVisibleOrInvisible(circularProgressIndicator, true);
                ViewKt.setViewVisibleOrInvisible(imageView, false);
                circularProgressIndicator.setProgressCompat(loadOnyxSyncStatus.getProgress(), false);
                return;
            }
            if (loadOnyxSyncStatus.isSyncFail()) {
                ViewKt.setViewVisibleOrInvisible(circularProgressIndicator, false);
                ViewKt.setViewVisibleOrInvisible(imageView, true);
                imageView.setImageResource(C10651R.drawable.icon_sync_error);
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.mwj
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        NoteListAdapter.m44067H(NoteListAdapter.this, imageView, item, view);
                    }
                });
                return;
            }
            if (!loadOnyxSyncStatus.isSyncSuccess()) {
                ViewKt.setViewVisibleOrInvisible(circularProgressIndicator, false);
                ViewKt.setViewVisibleOrInvisible(imageView, false);
                return;
            }
            ViewKt.setViewVisibleOrInvisible(circularProgressIndicator, false);
            long m44078D = m44078D(loadOnyxSyncStatus);
            if (!m44076B(m44078D)) {
                ViewKt.setViewVisibleOrInvisible(imageView, false);
                return;
            }
            ViewKt.setViewVisibleOrInvisible(imageView, true);
            imageView.setImageResource(C10651R.drawable.icon_sync_succeed);
            final Function0<Unit> function0 = new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.view.adapter.NoteListAdapter$updateSync$action$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    boolean m44077C;
                    Object tag = imageView.getTag();
                    Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.bean.KSyncStatus");
                    m44077C = this.m44077C((KSyncStatus) tag);
                    if (m44077C) {
                        return;
                    }
                    ViewKt.setViewVisibleOrInvisible(imageView, false);
                }
            };
            Intrinsics.checkNotNull(imageView);
            imageView.postDelayed(new Runnable() { // from class: com.onyx.galaxy.note.category.view.adapter.NoteListAdapter$updateSync$$inlined$postDelayed$1
                @Override // java.lang.Runnable
                public final void run() {
                    Function0.this.invoke();
                }
            }, 3000 - m44078D);
        }
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void enableMulSelect(boolean enable) {
        this.isMulSelect = enable;
        notifyDataSetChanged();
    }

    public final int getDisplayType() {
        return this.displayType;
    }

    @Nullable
    public final String getSelectedTagId() {
        return this.selectedTagId;
    }

    @NotNull
    public final NoteModelBeanList getSelectionList() {
        return this.selectionList;
    }

    @NotNull
    public final SortBy getSortBy() {
        return this.sortBy;
    }

    @NotNull
    public final Map<String, SyncTagModel> getTagByIdMap() {
        return this.tagByIdMap;
    }

    public final void handleSyncNoteProgressChangedEvent(@NotNull SyncNoteProgressChangedEvent event) {
        Object obj;
        int indexOf;
        Map mutableMapOf;
        Intrinsics.checkNotNullParameter(event, "event");
        for (SyncProgressModel syncProgressModel : event.getList()) {
            SyncDocProgress docProgress = syncProgressModel.getDocProgress();
            if (docProgress != null) {
                Iterator<T> it2 = getItems().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        obj = it2.next();
                        if (Intrinsics.areEqual(((NoteModelBean) obj).getUniqueId(), syncProgressModel.getUniqueId())) {
                            break;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                NoteModelBean noteModelBean = (NoteModelBean) obj;
                if (noteModelBean != null && (indexOf = getItems().indexOf(noteModelBean)) >= 0) {
                    mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to("pay_load_key_sync_progress", docProgress));
                    notifyItemChanged(indexOf, mutableMapOf);
                }
            }
        }
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        ImageView imageView = (ImageView) holder.itemView.findViewById(C10651R.id.iv_thumbnail);
        if (imageView != null) {
            imageView.setImageBitmap(null);
        }
        holder.itemView.setAlpha(ResManager.INSTANCE.getResources().getFraction(C10651R.fraction.config_drag_item_alpha, 1, 1));
        super.onViewRecycled(holder);
    }

    /* renamed from: q */
    public final void m44082q() {
        addItemType(1, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NoteModelBean, GridNotePortraitItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.NoteListAdapter$addItemTypes$1
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public /* bridge */ /* synthetic */ void onBind(NoteListAdapter.GridNotePortraitItemViewHolder gridNotePortraitItemViewHolder, int i, NoteModelBean noteModelBean, List list) {
                onBind2(gridNotePortraitItemViewHolder, i, noteModelBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public NoteListAdapter.GridNotePortraitItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemNoteListGridNotePortraitBinding inflate = ItemNoteListGridNotePortraitBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new NoteListAdapter.GridNotePortraitItemViewHolder(inflate);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull NoteListAdapter.GridNotePortraitItemViewHolder holder, int position, @Nullable NoteModelBean item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                NoteListAdapter noteListAdapter = NoteListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                noteListAdapter.m44084u(itemView, position, item);
            }

            /* renamed from: onBind, reason: avoid collision after fix types in other method */
            public void onBind2(@NotNull NoteListAdapter.GridNotePortraitItemViewHolder holder, int position, @Nullable NoteModelBean item, @NotNull List<? extends Object> payloads) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Intrinsics.checkNotNullParameter(payloads, "payloads");
                NoteListAdapter noteListAdapter = NoteListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                noteListAdapter.m44085w(itemView, position, item, payloads);
            }
        });
        addItemType(2, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NoteModelBean, GridNoteLandItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.NoteListAdapter$addItemTypes$2
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public /* bridge */ /* synthetic */ void onBind(NoteListAdapter.GridNoteLandItemViewHolder gridNoteLandItemViewHolder, int i, NoteModelBean noteModelBean, List list) {
                onBind2(gridNoteLandItemViewHolder, i, noteModelBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public NoteListAdapter.GridNoteLandItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemNoteListGridNoteLandBinding inflate = ItemNoteListGridNoteLandBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new NoteListAdapter.GridNoteLandItemViewHolder(inflate);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull NoteListAdapter.GridNoteLandItemViewHolder holder, int position, @Nullable NoteModelBean item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                NoteListAdapter noteListAdapter = NoteListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                noteListAdapter.m44084u(itemView, position, item);
            }

            /* renamed from: onBind, reason: avoid collision after fix types in other method */
            public void onBind2(@NotNull NoteListAdapter.GridNoteLandItemViewHolder holder, int position, @Nullable NoteModelBean item, @NotNull List<? extends Object> payloads) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Intrinsics.checkNotNullParameter(payloads, "payloads");
                NoteListAdapter noteListAdapter = NoteListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                noteListAdapter.m44085w(itemView, position, item, payloads);
            }
        });
        addItemType(3, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NoteModelBean, GridFolderItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.NoteListAdapter$addItemTypes$3
            /* renamed from: a */
            public final void m44089a(NoteModelBean item, NoteListAdapter.GridFolderItemViewHolder holder) {
                Intrinsics.checkNotNull(item);
                ColorStateList valueOf = ColorStateList.valueOf(item.getStyle().getColor());
                Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(...)");
                ThumbnailColorUtils thumbnailColorUtils = ThumbnailColorUtils.INSTANCE;
                ColorStateList folderThumbnailAlphaColor = thumbnailColorUtils.getFolderThumbnailAlphaColor(item.getStyle().getColor());
                ColorStateList folderThumbnailWhiteAlphaColor = thumbnailColorUtils.getFolderThumbnailWhiteAlphaColor();
                holder.getViewBinding().ivFaceBottom.setImageTintList(valueOf);
                holder.getViewBinding().ivFaceFourthTop.setImageTintList(folderThumbnailAlphaColor);
                holder.getViewBinding().ivFaceThrTop.setImageTintList(folderThumbnailWhiteAlphaColor);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public /* bridge */ /* synthetic */ void onBind(NoteListAdapter.GridFolderItemViewHolder gridFolderItemViewHolder, int i, NoteModelBean noteModelBean, List list) {
                onBind2(gridFolderItemViewHolder, i, noteModelBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public NoteListAdapter.GridFolderItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemNoteListGridFolderBinding inflate = ItemNoteListGridFolderBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new NoteListAdapter.GridFolderItemViewHolder(inflate);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull NoteListAdapter.GridFolderItemViewHolder holder, int position, @Nullable NoteModelBean item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                NoteListAdapter noteListAdapter = NoteListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                noteListAdapter.m44084u(itemView, position, item);
                m44089a(item, holder);
            }

            /* renamed from: onBind, reason: avoid collision after fix types in other method */
            public void onBind2(@NotNull NoteListAdapter.GridFolderItemViewHolder holder, int position, @Nullable NoteModelBean item, @NotNull List<? extends Object> payloads) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Intrinsics.checkNotNullParameter(payloads, "payloads");
                NoteListAdapter noteListAdapter = NoteListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                noteListAdapter.m44085w(itemView, position, item, payloads);
                m44089a(item, holder);
            }
        });
        addItemType(4, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NoteModelBean, LinearNotePortraitItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.NoteListAdapter$addItemTypes$4
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public /* bridge */ /* synthetic */ void onBind(NoteListAdapter.LinearNotePortraitItemViewHolder linearNotePortraitItemViewHolder, int i, NoteModelBean noteModelBean, List list) {
                onBind2(linearNotePortraitItemViewHolder, i, noteModelBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public NoteListAdapter.LinearNotePortraitItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemNoteListLinearNotePortraitBinding inflate = ItemNoteListLinearNotePortraitBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new NoteListAdapter.LinearNotePortraitItemViewHolder(inflate);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull NoteListAdapter.LinearNotePortraitItemViewHolder holder, int position, @Nullable NoteModelBean item) {
                boolean z;
                boolean z2;
                Intrinsics.checkNotNullParameter(holder, "holder");
                NoteListAdapter noteListAdapter = NoteListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                noteListAdapter.m44084u(itemView, position, item);
                TintCheckBox cbSel = holder.getViewBinding().cbSel;
                Intrinsics.checkNotNullExpressionValue(cbSel, "cbSel");
                z = NoteListAdapter.this.isMulSelect;
                cbSel.setVisibility(z ^ true ? 4 : 0);
                TintImageView ivOption = holder.getViewBinding().ivOption;
                Intrinsics.checkNotNullExpressionValue(ivOption, "ivOption");
                z2 = NoteListAdapter.this.isMulSelect;
                ivOption.setVisibility(z2 ? 4 : 0);
            }

            /* renamed from: onBind, reason: avoid collision after fix types in other method */
            public void onBind2(@NotNull NoteListAdapter.LinearNotePortraitItemViewHolder holder, int position, @Nullable NoteModelBean item, @NotNull List<? extends Object> payloads) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Intrinsics.checkNotNullParameter(payloads, "payloads");
                NoteListAdapter noteListAdapter = NoteListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                noteListAdapter.m44085w(itemView, position, item, payloads);
            }
        });
        addItemType(5, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NoteModelBean, LinearNoteLandItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.NoteListAdapter$addItemTypes$5
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public /* bridge */ /* synthetic */ void onBind(NoteListAdapter.LinearNoteLandItemViewHolder linearNoteLandItemViewHolder, int i, NoteModelBean noteModelBean, List list) {
                onBind2(linearNoteLandItemViewHolder, i, noteModelBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public NoteListAdapter.LinearNoteLandItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemNoteListLinearNoteLandBinding inflate = ItemNoteListLinearNoteLandBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new NoteListAdapter.LinearNoteLandItemViewHolder(inflate);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull NoteListAdapter.LinearNoteLandItemViewHolder holder, int position, @Nullable NoteModelBean item) {
                boolean z;
                boolean z2;
                Intrinsics.checkNotNullParameter(holder, "holder");
                NoteListAdapter noteListAdapter = NoteListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                noteListAdapter.m44084u(itemView, position, item);
                TintCheckBox cbSel = holder.getViewBinding().cbSel;
                Intrinsics.checkNotNullExpressionValue(cbSel, "cbSel");
                z = NoteListAdapter.this.isMulSelect;
                cbSel.setVisibility(z ^ true ? 4 : 0);
                TintImageView ivOption = holder.getViewBinding().ivOption;
                Intrinsics.checkNotNullExpressionValue(ivOption, "ivOption");
                z2 = NoteListAdapter.this.isMulSelect;
                ivOption.setVisibility(z2 ? 4 : 0);
            }

            /* renamed from: onBind, reason: avoid collision after fix types in other method */
            public void onBind2(@NotNull NoteListAdapter.LinearNoteLandItemViewHolder holder, int position, @Nullable NoteModelBean item, @NotNull List<? extends Object> payloads) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Intrinsics.checkNotNullParameter(payloads, "payloads");
                NoteListAdapter noteListAdapter = NoteListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                noteListAdapter.m44085w(itemView, position, item, payloads);
            }
        });
        addItemType(6, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NoteModelBean, LinearFolderItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.NoteListAdapter$addItemTypes$6
            /* renamed from: a */
            public final void m44090a(NoteModelBean item, NoteListAdapter.LinearFolderItemViewHolder holder) {
                Intrinsics.checkNotNull(item);
                ColorStateList valueOf = ColorStateList.valueOf(item.getStyle().getColor());
                Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(...)");
                ThumbnailColorUtils thumbnailColorUtils = ThumbnailColorUtils.INSTANCE;
                ColorStateList folderThumbnailAlphaColor = thumbnailColorUtils.getFolderThumbnailAlphaColor(item.getStyle().getColor());
                ColorStateList folderThumbnailWhiteAlphaColor = thumbnailColorUtils.getFolderThumbnailWhiteAlphaColor();
                holder.getViewBinding().ivFaceBottom.setImageTintList(valueOf);
                holder.getViewBinding().ivFaceFourthTop.setImageTintList(folderThumbnailAlphaColor);
                holder.getViewBinding().ivFaceThrTop.setImageTintList(folderThumbnailAlphaColor);
                holder.getViewBinding().ivFaceThrTop.setImageTintList(folderThumbnailWhiteAlphaColor);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public /* bridge */ /* synthetic */ void onBind(NoteListAdapter.LinearFolderItemViewHolder linearFolderItemViewHolder, int i, NoteModelBean noteModelBean, List list) {
                onBind2(linearFolderItemViewHolder, i, noteModelBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public NoteListAdapter.LinearFolderItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemNoteListLinearFolderBinding inflate = ItemNoteListLinearFolderBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new NoteListAdapter.LinearFolderItemViewHolder(inflate);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull NoteListAdapter.LinearFolderItemViewHolder holder, int position, @Nullable NoteModelBean item) {
                boolean z;
                boolean z2;
                Intrinsics.checkNotNullParameter(holder, "holder");
                NoteListAdapter noteListAdapter = NoteListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                noteListAdapter.m44084u(itemView, position, item);
                TintCheckBox cbSel = holder.getViewBinding().cbSel;
                Intrinsics.checkNotNullExpressionValue(cbSel, "cbSel");
                z = NoteListAdapter.this.isMulSelect;
                cbSel.setVisibility(z ^ true ? 4 : 0);
                TintImageView ivOption = holder.getViewBinding().ivOption;
                Intrinsics.checkNotNullExpressionValue(ivOption, "ivOption");
                z2 = NoteListAdapter.this.isMulSelect;
                ivOption.setVisibility(z2 ? 4 : 0);
                m44090a(item, holder);
            }

            /* renamed from: onBind, reason: avoid collision after fix types in other method */
            public void onBind2(@NotNull NoteListAdapter.LinearFolderItemViewHolder holder, int position, @Nullable NoteModelBean item, @NotNull List<? extends Object> payloads) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Intrinsics.checkNotNullParameter(payloads, "payloads");
                NoteListAdapter noteListAdapter = NoteListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                noteListAdapter.m44085w(itemView, position, item, payloads);
                m44090a(item, holder);
            }
        });
        onItemViewType(new BaseMultiItemAdapter.OnItemViewTypeListener() { // from class: com.sunia.HTREnginev2.lwj
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnItemViewTypeListener
            public final int onItemViewType(int i, List list) {
                int m44072r;
                m44072r = NoteListAdapter.m44072r(NoteListAdapter.this, i, list);
                return m44072r;
            }
        });
    }

    public final void resetDragView() {
        Iterator<NoteModelBean> it2 = getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else if (Intrinsics.areEqual(it2.next().getUniqueId(), this.dragNoteId)) {
                break;
            } else {
                i++;
            }
        }
        this.dragNoteId = null;
        if (i != -1) {
            notifyItemChanged(i);
        }
    }

    /* renamed from: s */
    public final void m44083s(final TagsLinearLayout llTags, List<String> tagIdList) {
        int collectionSizeOrDefault;
        final List mutableList;
        List<String> m44087y = m44087y(tagIdList);
        ArrayList<SyncTagModel> arrayList = new ArrayList();
        Iterator<T> it2 = m44087y.iterator();
        while (it2.hasNext()) {
            SyncTagModel syncTagModel = this.tagByIdMap.get((String) it2.next());
            if (syncTagModel != null) {
                arrayList.add(syncTagModel);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (SyncTagModel syncTagModel2 : arrayList) {
            arrayList2.add(TuplesKt.m61535to(syncTagModel2.getContent(), Integer.valueOf(syncTagModel2.getStyle().getColor())));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        llTags.post(new Runnable() { // from class: com.sunia.HTREnginev2.owj
            @Override // java.lang.Runnable
            public final void run() {
                NoteListAdapter.m44073t(TagsLinearLayout.this, mutableList);
            }
        });
    }

    public final void setDisplayType(int displayType) {
        this.displayType = displayType;
    }

    public final void setSelectedTagId(@Nullable String str) {
        this.selectedTagId = str;
    }

    public final void setSelectionList(@NotNull NoteModelBeanList noteModelBeanList) {
        Intrinsics.checkNotNullParameter(noteModelBeanList, "<set-?>");
        this.selectionList = noteModelBeanList;
    }

    public final void setShowUpdateAt(boolean show) {
        this.isShowUpdateAt = show;
    }

    public final void setSortBy(@NotNull SortBy sortBy) {
        Intrinsics.checkNotNullParameter(sortBy, "<set-?>");
        this.sortBy = sortBy;
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void setTagByIdMap(@NotNull Map<String, SyncTagModel> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.tagByIdMap = value;
        notifyDataSetChanged();
    }

    /* renamed from: u */
    public final void m44084u(final View itemView, int position, final NoteModelBean item) {
        float m44088z = Intrinsics.areEqual(this.dragNoteId, item != null ? item.getUniqueId() : null) ? m44088z() : 1.0f;
        CheckBox checkBox = (CheckBox) itemView.findViewById(C10651R.id.cb_sel);
        TagsLinearLayout tagsLinearLayout = (TagsLinearLayout) itemView.findViewById(C10651R.id.ll_tags);
        TextView textView = (TextView) itemView.findViewById(C10651R.id.tv_time);
        TextView textView2 = (TextView) itemView.findViewById(C10651R.id.tv_name);
        View findViewById = itemView.findViewById(C10651R.id.v_click_open);
        itemView.setAlpha(m44088z);
        Intrinsics.checkNotNull(checkBox);
        checkBox.setVisibility(this.isMulSelect ? 0 : 8);
        checkBox.setChecked(CollectionKt.contains(this.selectionList, new Function1<NoteModelBean, Boolean>() { // from class: com.onyx.galaxy.note.category.view.adapter.NoteListAdapter$bindViewHolder$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull NoteModelBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                String uniqueId = it2.getUniqueId();
                NoteModelBean noteModelBean = NoteModelBean.this;
                return Boolean.valueOf(Intrinsics.areEqual(uniqueId, noteModelBean != null ? noteModelBean.getUniqueId() : null));
            }
        }));
        Intrinsics.checkNotNull(tagsLinearLayout);
        Intrinsics.checkNotNull(item);
        m44083s(tagsLinearLayout, item.getTagIdList());
        textView.setText(m44075A(item));
        if (item.getTitle() != null) {
            textView2.setCompoundDrawablePadding((int) textView2.getContext().getResources().getDimension(C7384R.dimen.dp_4));
            textView2.setText(item.getTitle());
            Intrinsics.checkNotNull(textView2);
            ViewGroup.LayoutParams layoutParams = textView2.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.setMarginEnd(0);
            textView2.setLayoutParams(marginLayoutParams);
        } else {
            textView2.setCompoundDrawablePadding(0);
            Intrinsics.checkNotNull(textView2);
            ViewGroup.LayoutParams layoutParams2 = textView2.getLayoutParams();
            if (layoutParams2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
            marginLayoutParams2.setMarginEnd((int) textView2.getContext().getResources().getDimension(C7384R.dimen.dp_8));
            textView2.setLayoutParams(marginLayoutParams2);
        }
        m44079E(itemView, item);
        m44081G(item, itemView);
        findViewById.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.sunia.HTREnginev2.nwj
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean m44074v;
                m44074v = NoteListAdapter.m44074v(NoteListAdapter.this, itemView, item, view);
                return m44074v;
            }
        });
        itemView.setTag(item);
        if (this.enableDrag) {
            itemView.setOnDragListener(new NoteFolderListDragListener(this));
        }
    }

    public final void updateSelect(boolean selected, int position) {
        Map mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to("pay_load_key_selected", Boolean.valueOf(selected)));
        notifyItemChanged(position, mutableMapOf);
    }

    /* renamed from: w */
    public final void m44085w(View itemView, int position, NoteModelBean item, List<? extends Object> payloads) {
        Object first;
        if (payloads.isEmpty()) {
            m44084u(itemView, position, item);
        }
        first = CollectionsKt___CollectionsKt.first(payloads);
        if (first instanceof Map) {
            Map map = (Map) first;
            Boolean bool = (Boolean) map.get("pay_load_key_selected");
            SyncDocProgress syncDocProgress = (SyncDocProgress) map.get("pay_load_key_sync_progress");
            if (bool != null) {
                ((CheckBox) itemView.findViewById(C10651R.id.cb_sel)).setChecked(bool.booleanValue());
            }
            if (syncDocProgress != null) {
                Intrinsics.checkNotNull(item);
                if (item.isDocument()) {
                    NoteModelBean noteModelBean = getItems().get(position);
                    noteModelBean.setDocProgress(syncDocProgress);
                    m44081G(noteModelBean, itemView);
                    KSyncStatus loadOnyxSyncStatus = syncDocProgress.loadOnyxSyncStatus();
                    boolean z = false;
                    if (loadOnyxSyncStatus != null && loadOnyxSyncStatus.isSyncSuccess()) {
                        z = true;
                    }
                    if (z) {
                        m44079E(itemView, item);
                    }
                }
            }
        }
    }

    /* renamed from: x */
    public final void m44086x(View itemView, SyncNoteModel item) {
        if (ViewCompat.startDragAndDrop(itemView, DragAndDropUtils.INSTANCE.createCustomClipData(TAG), new View.DragShadowBuilder(itemView.findViewById(C10651R.id.cl_thumbnail)), item, 512)) {
            itemView.setAlpha(m44088z());
            this.dragNoteId = item.getUniqueId();
        }
    }

    /* renamed from: y */
    public final List<String> m44087y(List<String> tagIdList) {
        if (!tagIdList.isEmpty()) {
            String str = this.selectedTagId;
            if (!(str == null || str.length() == 0)) {
                tagIdList = CollectionKt.copy(tagIdList);
                if (TypeIntrinsics.asMutableCollection(tagIdList).remove(this.selectedTagId)) {
                    String str2 = this.selectedTagId;
                    Intrinsics.checkNotNull(str2);
                    tagIdList.add(0, str2);
                }
            }
        }
        return tagIdList;
    }

    /* renamed from: z */
    public final float m44088z() {
        return ((Number) this.shadowAlpha.getValue()).floatValue();
    }

    public /* synthetic */ NoteListAdapter(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z);
    }

    public NoteListAdapter(boolean z) {
        super(null, 1, null);
        Lazy lazy;
        this.enableDrag = z;
        this.selectionList = new NoteModelBeanList();
        this.tagByIdMap = new LinkedHashMap();
        this.displayType = 1;
        this.sortBy = SortBy.UpdateAt;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.category.view.adapter.NoteListAdapter$shadowAlpha$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getResources().getFraction(C10651R.fraction.config_drag_shadow_alpha, 1, 1));
            }
        });
        this.shadowAlpha = lazy;
        this.isShowUpdateAt = true;
        m44082q();
    }
}
