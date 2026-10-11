package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.graphics.Rect;
import android.text.Editable;
import android.text.InputFilter;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.signature.ObjectKey;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.SpanUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.events.EditFocusEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.excerpt.LoadExcerptBitmapAction;
import com.onyx.android.sdk.universal.editor.events.note.UpdateExcerptEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import com.onyx.galaxy.note.common.glide.GlideApp;
import com.onyx.galaxy.note.common.keyboard.WindowSoftInputManager;
import com.onyx.galaxy.note.databinding.ItemDocExcerptBinding;
import com.onyx.galaxy.note.editor.data.ExcerptDataModel;
import com.onyx.galaxy.note.editor.view.adapter.DocExcerptListAdapter;
import com.onyx.galaxy.note.editor.view.dialog.ViewImageDialog;
import com.onyx.galaxy.note.editor.view.popup.DocExcerptActionPopup;
import com.onyx.galaxy.note.editor.view.popup.ExcerptJumpModelListPopup;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0017\u0012\u0006\u0010Q\u001a\u00020M\u0012\u0006\u0010V\u001a\u00020&¢\u0006\u0004\b}\u0010~J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\f\u001a\u00020\tH\u0002J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u0018\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0002H\u0002J\u0018\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0002H\u0002J \u0010\u0018\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0002H\u0002J \u0010\u0019\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0002H\u0002J\u0018\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\u0002H\u0002J\u0010\u0010\u001d\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u0018\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\u0002H\u0002J\u0018\u0010\"\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u0007H\u0016J\u0010\u0010%\u001a\u00020\t2\u0006\u0010$\u001a\u00020#H\u0016J\u000e\u0010(\u001a\u00020\t2\u0006\u0010'\u001a\u00020&J\u0014\u0010+\u001a\u00020\t2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00020)J\u001c\u0010/\u001a\u00020\t2\u0006\u0010-\u001a\u00020,2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020.0)J\u000e\u00101\u001a\u00020\t2\u0006\u00100\u001a\u00020\u0002J\u0006\u00102\u001a\u00020\tJ\u0006\u00103\u001a\u00020&J\u0006\u00104\u001a\u00020\tJ\u0014\u00106\u001a\u00020\t2\f\u0010*\u001a\b\u0012\u0004\u0012\u0002050)J\u000e\u00108\u001a\u00020\t2\u0006\u00107\u001a\u00020\u0007J\u000e\u00109\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010:\u001a\u00020\tJ(\u0010=\u001a\u00020\t2\f\u0010;\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010<\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010?\u001a\u00020>2\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020\u0007H\u0014J\u0018\u0010E\u001a\u00020\t2\u0006\u0010D\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\u0007H\u0014J\u0018\u0010F\u001a\u00020\t2\u0006\u0010D\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\u0007H\u0014J\u0018\u0010G\u001a\u00020&2\u0006\u0010D\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\u0007H\u0014J\u0010\u0010H\u001a\u00020\t2\u0006\u0010$\u001a\u00020#H\u0016J\u000e\u0010K\u001a\u00020\t2\u0006\u0010J\u001a\u00020IJ\u0006\u0010L\u001a\u00020\tR\u0017\u0010Q\u001a\u00020M8\u0006¢\u0006\f\n\u0004\b\u001c\u0010N\u001a\u0004\bO\u0010PR\u0017\u0010V\u001a\u00020&8\u0006¢\u0006\f\n\u0004\bR\u0010S\u001a\u0004\bT\u0010UR\"\u0010[\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020X0W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010ZR(\u0010\\\u001a\u0014\u0012\u0004\u0012\u00020,\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0)0W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010ZR\"\u0010^\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u0002050W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010ZR\u0016\u0010`\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010\u0012R\u0016\u0010b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010\u0012R\u0016\u0010d\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010SR\u001b\u0010h\u001a\u00020e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010f\u001a\u0004\bY\u0010gR\u0018\u0010k\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010jR\u0018\u0010m\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010lR\u0018\u0010o\u001a\u0004\u0018\u00010I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010nR\u0014\u0010q\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\bp\u0010\u0012R\u0016\u0010s\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010SR\"\u0010y\u001a\u00020,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010t\u001a\u0004\bu\u0010v\"\u0004\bw\u0010xR\u0014\u0010|\u001a\u00020z8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010{¨\u0006\u007f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;", "Landroid/view/View;", "view", "", "pos", "", "R", "Q", "quitEditMode", "binding", "P", "Landroid/widget/TextView;", "quoteCount", "item", "I", "Landroid/widget/ImageView;", "imageView", "model", "L", "textView", "K", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Landroid/widget/EditText;", "edittext", "A", "z", "editText", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "fromPos", "toPos", "onItemMoved", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "onAttachedToRecyclerView", "", "show", "setShowQuoteCount", "", "list", "setDataList", "", "excerptId", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "setExcerptCollection", "excerptInfoBean", "updateExcerpt", "resetItemsState", "isItemsDirty", "makeItemsDirty", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "setQuoteNote", FirebaseAnalytics.Param.INDEX, "selectIndex", "enterEditMode", "quitEditAndSave", "holder", "position", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "v", "onItemClick", "onItemChildClick", "onItemChildLongClick", "onDetachedFromRecyclerView", "Landroid/graphics/Rect;", "areaRect", "setListAreaRect", "commitTitleEdit", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "B", Constants.HASIDCALL_INDEX_SIG, "getFullscreen", Constants.BOOLEAN_VALUE_SIG, "fullscreen", "", "Lcom/onyx/galaxy/note/editor/data/ExcerptDataModel;", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "Ljava/util/Map;", "excerptDataMap", "excerptCollectionMap", "E", "excerptQuoteNoteMap", "F", "currentIndex", "G", "editingIndex", "H", "showQuoteCount", "Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;", "Lkotlin/Lazy;", "()Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;", "windowInputManager", "J", "Landroid/widget/EditText;", "currentEditText", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "currentModel", "Landroid/graphics/Rect;", "listAreaRect", "M", "dragDirs", "N", "itemsDirty", Constants.STRING_SIG, "getKeyword", "()Ljava/lang/String;", "setKeyword", "(Ljava/lang/String;)V", "keyword", "Landroidx/recyclerview/widget/ItemTouchHelper;", "Landroidx/recyclerview/widget/ItemTouchHelper;", "itemTouchHelper", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDocExcerptListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocExcerptListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,501:1\n350#2,7:502\n1855#2,2:509\n256#3,2:511\n372#4,7:513\n*S KotlinDebug\n*F\n+ 1 DocExcerptListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter\n*L\n206#1:502,7\n226#1:509,2\n310#1:511,2\n374#1:513,7\n*E\n"})
/* loaded from: classes9.dex */
public class DocExcerptListAdapter extends BaseSelectableDifferAdapter<ExcerptInfoBean, DataBindingHolder<ItemDocExcerptBinding>> {

    /* renamed from: A, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: B, reason: from kotlin metadata */
    public final boolean fullscreen;

    /* renamed from: C, reason: from kotlin metadata */
    @NotNull
    public Map<String, ExcerptDataModel> excerptDataMap;

    /* renamed from: D, reason: from kotlin metadata */
    @NotNull
    public Map<String, List<ExcerptCollectionModel>> excerptCollectionMap;

    /* renamed from: E, reason: from kotlin metadata */
    @NotNull
    public Map<String, SyncNoteModel> excerptQuoteNoteMap;

    /* renamed from: F, reason: from kotlin metadata */
    public int currentIndex;

    /* renamed from: G, reason: from kotlin metadata */
    public int editingIndex;

    /* renamed from: H, reason: from kotlin metadata */
    public boolean showQuoteCount;

    /* renamed from: I, reason: from kotlin metadata */
    @NotNull
    public final Lazy windowInputManager;

    /* renamed from: J, reason: from kotlin metadata */
    @Nullable
    public EditText currentEditText;

    /* renamed from: K, reason: from kotlin metadata */
    @Nullable
    public ExcerptInfoBean currentModel;

    /* renamed from: L, reason: from kotlin metadata */
    @Nullable
    public Rect listAreaRect;

    /* renamed from: M, reason: from kotlin metadata */
    public final int dragDirs;

    /* renamed from: N, reason: from kotlin metadata */
    public boolean itemsDirty;

    /* renamed from: O, reason: from kotlin metadata */
    @NotNull
    public String keyword;

    /* renamed from: P, reason: from kotlin metadata */
    @NotNull
    public final ItemTouchHelper itemTouchHelper;

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.DocExcerptListAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C12262a<T> implements Consumer {
        public C12262a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LoadExcerptBitmapAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            new ViewImageDialog(DocExcerptListAdapter.this.getContext(), it2.getBitmap()).show();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DocExcerptListAdapter(@NotNull EditorBundle editorBundle, boolean z) {
        super(null, 1, 0 == true ? 1 : 0);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.fullscreen = z;
        this.excerptDataMap = new LinkedHashMap();
        this.excerptCollectionMap = new LinkedHashMap();
        this.excerptQuoteNoteMap = new LinkedHashMap();
        this.currentIndex = -1;
        this.editingIndex = -1;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<WindowSoftInputManager>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocExcerptListAdapter$windowInputManager$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final WindowSoftInputManager invoke() {
                return new WindowSoftInputManager(DocExcerptListAdapter.this.getContext());
            }
        });
        this.windowInputManager = lazy;
        final int i = 15;
        this.dragDirs = 15;
        this.keyword = "";
        this.itemTouchHelper = new ItemTouchHelper(new ItemTouchHelper.SimpleCallback(i) { // from class: com.onyx.galaxy.note.editor.view.adapter.DocExcerptListAdapter$itemTouchHelper$1

            /* renamed from: i, reason: from kotlin metadata */
            public int moveFromPos = -1;

            /* renamed from: j, reason: from kotlin metadata */
            public int moveToPos = -1;

            /* renamed from: k, reason: from kotlin metadata */
            public long lastMoveTime;

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            @Nullable
            public RecyclerView.ViewHolder chooseDropTarget(@NotNull RecyclerView.ViewHolder selected, @NotNull List<RecyclerView.ViewHolder> dropTargets, int curX, int curY) {
                Intrinsics.checkNotNullParameter(selected, "selected");
                Intrinsics.checkNotNullParameter(dropTargets, "dropTargets");
                return super.chooseDropTarget(selected, dropTargets, curX, curY);
            }

            public final int getMoveFromPos() {
                return this.moveFromPos;
            }

            public final int getMoveToPos() {
                return this.moveToPos;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public int interpolateOutOfBoundsScroll(@NotNull RecyclerView recyclerView, int viewSize, int viewSizeOutOfBounds, int totalSize, long msSinceStartScroll) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                int interpolateOutOfBoundsScroll = super.interpolateOutOfBoundsScroll(recyclerView, viewSize, viewSizeOutOfBounds, totalSize, msSinceStartScroll);
                if (interpolateOutOfBoundsScroll != 0) {
                    this.lastMoveTime = -1L;
                }
                return interpolateOutOfBoundsScroll;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public boolean onMove(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder, @NotNull RecyclerView.ViewHolder target) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
                Intrinsics.checkNotNullParameter(target, "target");
                int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
                int bindingAdapterPosition2 = target.getBindingAdapterPosition();
                ExcerptInfoBean item = DocExcerptListAdapter.this.getItem(bindingAdapterPosition);
                ExcerptInfoBean item2 = DocExcerptListAdapter.this.getItem(bindingAdapterPosition2);
                if (item == null || item2 == null || System.currentTimeMillis() - this.lastMoveTime <= ResManager.INSTANCE.getLong(C10651R.integer.drag_and_drop_move_interval_limit)) {
                    return false;
                }
                DocExcerptListAdapter.this.move(bindingAdapterPosition, bindingAdapterPosition2);
                this.lastMoveTime = System.currentTimeMillis();
                return true;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onMoved(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder, int fromPos, @NotNull RecyclerView.ViewHolder target, int toPos, int x, int y) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
                Intrinsics.checkNotNullParameter(target, "target");
                super.onMoved(recyclerView, viewHolder, fromPos, target, toPos, x, y);
                if (this.moveFromPos == -1) {
                    this.moveFromPos = fromPos;
                }
                this.moveToPos = toPos;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSelectedChanged(@Nullable RecyclerView.ViewHolder viewHolder, int actionState) {
                int i2;
                int i3;
                super.onSelectedChanged(viewHolder, actionState);
                if (actionState != 0 || (i2 = this.moveFromPos) < 0 || (i3 = this.moveToPos) < 0) {
                    return;
                }
                DocExcerptListAdapter.this.onItemMoved(i2, i3);
                this.moveFromPos = -1;
                this.moveToPos = -1;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSwiped(@NotNull RecyclerView.ViewHolder viewHolder, int direction) {
                Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
            }

            public final void setMoveFromPos(int i2) {
                this.moveFromPos = i2;
            }

            public final void setMoveToPos(int i2) {
                this.moveToPos = i2;
            }
        });
        ItemClickUtilsKt.addOnDebouncedChildClick$default(this, C10651R.id.more_settings, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.i7f
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                DocExcerptListAdapter.m47541x(DocExcerptListAdapter.this, baseQuickAdapter, view, i2);
            }
        }, 2, null);
        ItemClickUtilsKt.addOnDebouncedChildClick$default(this, C10651R.id.zoom_view, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.j7f
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                DocExcerptListAdapter.m47542y(DocExcerptListAdapter.this, baseQuickAdapter, view, i2);
            }
        }, 2, null);
    }

    /* renamed from: B */
    public static final void m47523B(DocExcerptListAdapter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.notifyDataSetChanged();
    }

    /* renamed from: E */
    public static final void m47524E(DocExcerptListAdapter this$0, MaxLengthInputTextEdit editText, ExcerptInfoBean model, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(editText, "$editText");
        Intrinsics.checkNotNullParameter(model, "$model");
        if (z) {
            Editable text = editText.getText();
            editText.setSelection(text != null ? text.length() : 0);
            this$0.m47549O(editText, model);
        } else {
            this$0.m47543A(editText, model);
            if (!this$0.getRecyclerView().hasFocus()) {
                this$0.quitEditMode();
            }
            GlobalBundle.INSTANCE.postEvent(new EditFocusEvent(null));
        }
    }

    /* renamed from: F */
    public static final void m47525F(MaxLengthInputTextEdit editText, View view) {
        Intrinsics.checkNotNullParameter(editText, "$editText");
        editText.setText((CharSequence) null);
    }

    /* renamed from: G */
    public static final boolean m47526G(final DocExcerptListAdapter this$0, MaxLengthInputTextEdit editText, ExcerptInfoBean model, TextView textView, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(editText, "$editText");
        Intrinsics.checkNotNullParameter(model, "$model");
        if (i != 6) {
            return true;
        }
        this$0.m47543A(editText, model);
        this$0.quitEditMode();
        this$0.getRecyclerView().post(new Runnable() { // from class: com.sunia.HTREnginev2.g7f
            @Override // java.lang.Runnable
            public final void run() {
                DocExcerptListAdapter.m47527H(DocExcerptListAdapter.this);
            }
        });
        return true;
    }

    /* renamed from: H */
    public static final void m47527H(DocExcerptListAdapter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.notifyDataSetChanged();
    }

    /* renamed from: J */
    public static final void m47528J(List collectionList, final DocExcerptListAdapter this$0, View view) {
        Sequence asSequence;
        Sequence mapNotNull;
        List list;
        Intrinsics.checkNotNullParameter(collectionList, "$collectionList");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        asSequence = CollectionsKt___CollectionsKt.asSequence(collectionList);
        mapNotNull = SequencesKt___SequencesKt.mapNotNull(asSequence, new Function1<ExcerptCollectionModel, SyncNoteModel>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocExcerptListAdapter$initQuoteCountView$1$noteModelList$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final SyncNoteModel invoke(@NotNull ExcerptCollectionModel it2) {
                Map map;
                Intrinsics.checkNotNullParameter(it2, "it");
                map = DocExcerptListAdapter.this.excerptQuoteNoteMap;
                return (SyncNoteModel) map.get(it2.getQuoteDocId());
            }
        });
        list = SequencesKt___SequencesKt.toList(mapNotNull);
        ExcerptJumpModelListPopup excerptJumpModelListPopup = new ExcerptJumpModelListPopup(this$0.getContext(), this$0.editorBundle, collectionList, list);
        Intrinsics.checkNotNull(view);
        excerptJumpModelListPopup.showDynamicPositionPopView(view);
    }

    /* renamed from: M */
    public static final boolean m47529M(RecyclerView recyclerView, DocExcerptListAdapter this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(recyclerView, "$recyclerView");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(i);
        if (findViewHolderForAdapterPosition == null) {
            return true;
        }
        this$0.itemTouchHelper.startDrag(findViewHolderForAdapterPosition);
        return true;
    }

    /* renamed from: N */
    public static final void m47530N(DataBindingHolder holder, View view) {
        Intrinsics.checkNotNullParameter(holder, "$holder");
        ((ItemDocExcerptBinding) holder.getBinding()).moreSettings.performClick();
    }

    /* renamed from: x */
    public static final void m47541x(DocExcerptListAdapter this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = adapter.getRecyclerView().findViewHolderForAdapterPosition(i);
        Intrinsics.checkNotNull(findViewHolderForAdapterPosition);
        View findViewById = findViewHolderForAdapterPosition.itemView.findViewById(C10651R.id.centerSettingButton);
        if (this$0.fullscreen) {
            view = findViewById;
        }
        Intrinsics.checkNotNull(view);
        this$0.m47551Q(view, i);
    }

    /* renamed from: y */
    public static final void m47542y(DocExcerptListAdapter this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        this$0.m47552R(view, i);
    }

    /* renamed from: A */
    public final void m47543A(EditText edittext, ExcerptInfoBean model) {
        if (this.editingIndex < 0) {
            return;
        }
        String obj = edittext.getText().toString();
        if (!Intrinsics.areEqual(obj, model.getNote())) {
            model.setNote(obj);
            model.setCommentUpdateByUser(true);
            EditorBundleKt.postEvent(this.editorBundle, new UpdateExcerptEvent(model));
        }
        quitEditMode();
        edittext.clearFocus();
        ViewKt.hideInputKeyboard(edittext);
        edittext.setEnabled(false);
        getRecyclerView().post(new Runnable() { // from class: com.sunia.HTREnginev2.h7f
            @Override // java.lang.Runnable
            public final void run() {
                DocExcerptListAdapter.m47523B(DocExcerptListAdapter.this);
            }
        });
    }

    /* renamed from: C */
    public final WindowSoftInputManager m47544C() {
        return (WindowSoftInputManager) this.windowInputManager.getValue();
    }

    /* renamed from: D */
    public final void m47545D(ItemDocExcerptBinding binding, int pos, final ExcerptInfoBean model) {
        ViewKt.setViewVisibleOrInvisible(binding.titleEditContainer, this.editingIndex == pos);
        ViewKt.setViewVisibleOrInvisible(binding.ivClear, this.editingIndex == pos);
        ViewKt.setViewVisibleOrInvisible(binding.countText, this.editingIndex == pos);
        m47553z(binding);
        final MaxLengthInputTextEdit titleEdit = binding.titleEdit;
        Intrinsics.checkNotNullExpressionValue(titleEdit, "titleEdit");
        titleEdit.setImeOptions(6);
        titleEdit.setRawInputType(1);
        titleEdit.setText(model.getNote());
        titleEdit.setFilters(new InputFilter[]{new InputFilter.LengthFilter(ResManager.INSTANCE.getInteger(C10651R.integer.excerpt_desc_input_limit_count))});
        titleEdit.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.k7f
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                DocExcerptListAdapter.m47524E(DocExcerptListAdapter.this, titleEdit, model, view, z);
            }
        });
        binding.ivClear.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.l7f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocExcerptListAdapter.m47525F(MaxLengthInputTextEdit.this, view);
            }
        });
        titleEdit.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.sunia.HTREnginev2.m7f
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean m47526G;
                m47526G = DocExcerptListAdapter.m47526G(DocExcerptListAdapter.this, titleEdit, model, textView, i, keyEvent);
                return m47526G;
            }
        });
        if (ViewKt.isVisible(binding.titleEditContainer)) {
            ViewKt.postToShowInputKeyboardWithDelay(titleEdit);
        }
    }

    /* renamed from: I */
    public final void m47546I(TextView quoteCount, ExcerptInfoBean item) {
        final List ensureList = CollectionKt.ensureList(this.excerptCollectionMap.get(item.getUniqueId()));
        int size = CollectionKt.getSize(ensureList);
        ViewKt.setViewVisibleOrGone(quoteCount, this.showQuoteCount && size > 0);
        quoteCount.setText(getContext().getString(C10651R.string.quoted_count_format, Integer.valueOf(size)));
        quoteCount.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.n7f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocExcerptListAdapter.m47528J(ensureList, this, view);
            }
        });
    }

    /* renamed from: K */
    public final void m47547K(TextView textView, int pos, ExcerptInfoBean model) {
        String note = model.getNote();
        if (note == null || note.length() == 0) {
            textView.setText(C10651R.string.no_comments);
            textView.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_text_color_03));
        } else {
            textView.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_text_color_01));
            textView.setText(SpanUtils.highLightKeyword$default(SpanUtils.INSTANCE, model.getNote(), this.keyword, ThemeUtils.getColorById(C7996R.color.theme_text_color_highlight_01), false, 8, null));
        }
        ViewKt.setViewVisibleOrInvisible(textView, this.editingIndex != pos);
    }

    /* renamed from: L */
    public final void m47548L(ImageView imageView, ExcerptInfoBean model) {
        if (getIsScrollBarDragging()) {
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            imageView.setImageResource(C10651R.drawable.icon_holder_logo);
            return;
        }
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        Map<String, ExcerptDataModel> map = this.excerptDataMap;
        String uniqueId = model.getUniqueId();
        ExcerptDataModel excerptDataModel = map.get(uniqueId);
        if (excerptDataModel == null) {
            excerptDataModel = new ExcerptDataModel(this.editorBundle, model.getUniqueId(), model.getImgId());
            map.put(uniqueId, excerptDataModel);
        }
        GlideApp.with(imageView).load((Object) excerptDataModel).signature((Key) new ObjectKey(model.getImgId())).into(imageView);
    }

    /* renamed from: O */
    public final void m47549O(EditText editText, ExcerptInfoBean model) {
        this.currentEditText = editText;
        this.currentModel = model;
        GlobalBundle.INSTANCE.postEvent(new EditFocusEvent(this.listAreaRect));
    }

    /* renamed from: P */
    public final void m47550P(ItemDocExcerptBinding binding) {
        ViewGroup.LayoutParams layoutParams = binding.exceptContainer.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (this.fullscreen) {
            ResManager resManager = ResManager.INSTANCE;
            marginLayoutParams.rightMargin = resManager.getDimens(C7384R.dimen.dp_12);
            marginLayoutParams.topMargin = resManager.getDimens(C7384R.dimen.dp_12);
        } else {
            marginLayoutParams.rightMargin = 0;
            marginLayoutParams.topMargin = 0;
        }
        if (this.fullscreen) {
            TintTextView title = binding.title;
            Intrinsics.checkNotNullExpressionValue(title, "title");
            ViewKt.setLayoutMargin(title, new Function1<ViewGroup.MarginLayoutParams, Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocExcerptListAdapter$setFullscreenLayout$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.MarginLayoutParams marginLayoutParams2) {
                    invoke2(marginLayoutParams2);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull ViewGroup.MarginLayoutParams setLayoutMargin) {
                    Intrinsics.checkNotNullParameter(setLayoutMargin, "$this$setLayoutMargin");
                    setLayoutMargin.rightMargin = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_32);
                }
            });
            ShadowLayout imageContainer = binding.imageContainer;
            Intrinsics.checkNotNullExpressionValue(imageContainer, "imageContainer");
            ViewKt.setLayoutMargin(imageContainer, new Function1<ViewGroup.MarginLayoutParams, Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocExcerptListAdapter$setFullscreenLayout$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.MarginLayoutParams marginLayoutParams2) {
                    invoke2(marginLayoutParams2);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull ViewGroup.MarginLayoutParams setLayoutMargin) {
                    Intrinsics.checkNotNullParameter(setLayoutMargin, "$this$setLayoutMargin");
                    setLayoutMargin.bottomMargin = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_12);
                }
            });
            binding.exceptContainer.setBackgroundResource(C10651R.drawable.selector_doc_overview_fullscreen);
        }
    }

    /* renamed from: Q */
    public final void m47551Q(View view, final int pos) {
        ExcerptInfoBean item = getItem(pos);
        if (item == null) {
            return;
        }
        DocExcerptActionPopup docExcerptActionPopup = new DocExcerptActionPopup(this.editorBundle, getContext(), item, this.fullscreen);
        docExcerptActionPopup.setListener(new DocExcerptActionPopup.ActionListener() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocExcerptListAdapter$showActionPopup$1$1
            @Override // com.onyx.galaxy.note.editor.view.popup.DocExcerptActionPopup.ActionListener
            public void onDeleted() {
                DocExcerptListAdapter.this.removeAt(pos);
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.DocExcerptActionPopup.ActionListener
            public void onEdited() {
                DocExcerptListAdapter.this.enterEditMode(pos);
            }
        });
        PopupExtKt.showActionPopup$default(docExcerptActionPopup, view, ViewKt.globalVisibleRect(getRecyclerView()), 0, ResManager.INSTANCE.getDimens(C7384R.dimen.dp_16), 4, null);
    }

    /* renamed from: R */
    public final void m47552R(View view, int pos) {
        ExcerptInfoBean item = getItem(pos);
        if (item == null) {
            return;
        }
        LoadExcerptBitmapAction loadExcerptBitmapAction = new LoadExcerptBitmapAction(this.editorBundle);
        loadExcerptBitmapAction.setExcerptId(item.getUniqueId());
        loadExcerptBitmapAction.build().doOnNext(new C12262a()).subscribe();
    }

    public final void commitTitleEdit() {
        EditText editText = this.currentEditText;
        if (editText == null || this.currentModel == null) {
            return;
        }
        Intrinsics.checkNotNull(editText);
        ExcerptInfoBean excerptInfoBean = this.currentModel;
        Intrinsics.checkNotNull(excerptInfoBean);
        m47543A(editText, excerptInfoBean);
    }

    public final void enterEditMode(int pos) {
        this.editingIndex = pos;
        m47544C().enterAdjustResizeSoftInput();
        notifyItemChanged(pos);
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    public final boolean getFullscreen() {
        return this.fullscreen;
    }

    @NotNull
    public final String getKeyword() {
        return this.keyword;
    }

    /* renamed from: isItemsDirty, reason: from getter */
    public final boolean getItemsDirty() {
        return this.itemsDirty;
    }

    public final void makeItemsDirty() {
        this.itemsDirty = true;
    }

    @Override // com.onyx.galaxy.note.editor.view.adapter.BaseSwipeAbleDifferAdapter, com.chad.library.adapter4.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NotNull final RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        super.onAttachedToRecyclerView(recyclerView);
        this.itemTouchHelper.attachToRecyclerView(recyclerView);
        setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() { // from class: com.sunia.HTREnginev2.e7f
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemLongClickListener
            public final boolean onLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                boolean m47529M;
                m47529M = DocExcerptListAdapter.m47529M(RecyclerView.this, this, baseQuickAdapter, view, i);
                return m47529M;
            }
        });
    }

    @Override // com.onyx.galaxy.note.editor.view.adapter.BaseSwipeAbleDifferAdapter, com.chad.library.adapter4.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        quitEditAndSave();
        this.itemTouchHelper.attachToRecyclerView(null);
        super.onDetachedFromRecyclerView(recyclerView);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onItemChildClick(@NotNull View v, int position) {
        Intrinsics.checkNotNullParameter(v, "v");
        super.onItemChildClick(v, position);
        quitEditAndSave();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public boolean onItemChildLongClick(@NotNull View v, int position) {
        Intrinsics.checkNotNullParameter(v, "v");
        quitEditAndSave();
        return super.onItemChildLongClick(v, position);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onItemClick(@NotNull View v, int position) {
        Intrinsics.checkNotNullParameter(v, "v");
        super.onItemClick(v, position);
        quitEditAndSave();
    }

    public void onItemMoved(int fromPos, int toPos) {
        this.itemsDirty = true;
    }

    public final void quitEditAndSave() {
        View findViewByPosition;
        if (this.editingIndex < 0) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = getRecyclerView().getLayoutManager();
        if (layoutManager != null && (findViewByPosition = layoutManager.findViewByPosition(this.editingIndex)) != null) {
            View findViewById = findViewByPosition.findViewById(C10651R.id.title_edit);
            Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
            m47543A((EditText) findViewById, getItems().get(this.editingIndex));
        }
        quitEditMode();
    }

    public final void quitEditMode() {
        int i = this.editingIndex;
        if (i < 0) {
            return;
        }
        this.editingIndex = -1;
        BaseQuickAdapterKt.notifyItemChangedSafety(this, i);
        m47544C().backToPreviousSoftInput();
        ViewKt.hideInputKeyboard(getRecyclerView());
    }

    public final void resetItemsState() {
        this.itemsDirty = false;
    }

    public final void selectIndex(int index) {
        int i = this.currentIndex;
        if (i >= 0) {
            notifyItemChanged(i);
        }
        this.currentIndex = index;
        notifyItemChanged(index);
    }

    public final void setDataList(@NotNull List<ExcerptInfoBean> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        submitList(list);
    }

    public final void setExcerptCollection(@NotNull String excerptId, @NotNull List<ExcerptCollectionModel> list) {
        Intrinsics.checkNotNullParameter(excerptId, "excerptId");
        Intrinsics.checkNotNullParameter(list, "list");
        this.excerptCollectionMap.put(excerptId, list);
    }

    public final void setKeyword(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.keyword = str;
    }

    public final void setListAreaRect(@NotNull Rect areaRect) {
        Intrinsics.checkNotNullParameter(areaRect, "areaRect");
        this.listAreaRect = areaRect;
    }

    public final void setQuoteNote(@NotNull List<? extends SyncNoteModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        for (SyncNoteModel syncNoteModel : list) {
            this.excerptQuoteNoteMap.put(syncNoteModel.getUniqueId(), syncNoteModel);
        }
    }

    public final void setShowQuoteCount(boolean show) {
        this.showQuoteCount = show;
    }

    public final void updateExcerpt(@NotNull ExcerptInfoBean excerptInfoBean) {
        Intrinsics.checkNotNullParameter(excerptInfoBean, "excerptInfoBean");
        Iterator<ExcerptInfoBean> it2 = getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else if (Intrinsics.areEqual(it2.next().getUniqueId(), excerptInfoBean.getUniqueId())) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            set(i, excerptInfoBean);
            BaseQuickAdapterKt.notifyItemChangedSafety(this, i);
        }
    }

    /* renamed from: z */
    public final void m47553z(final ItemDocExcerptBinding binding) {
        binding.titleEdit.setTextChangeCallback(new Function2<Integer, Integer, Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocExcerptListAdapter$bindCharLengthListener$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, Integer num2) {
                invoke(num.intValue(), num2.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i, int i2) {
                TintTextView tintTextView = ItemDocExcerptBinding.this.countText;
                StringBuilder sb = new StringBuilder();
                sb.append(i);
                sb.append('/');
                sb.append(i2);
                tintTextView.setText(sb.toString());
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull final DataBindingHolder<ItemDocExcerptBinding> holder, int position, @Nullable ExcerptInfoBean item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        boolean z = this.editingIndex == position;
        holder.getBinding().setModel(item);
        holder.getBinding().executePendingBindings();
        holder.getBinding().getRoot().setBackgroundResource(z ? C10651R.drawable.bg_stroke_primary : C10651R.drawable.selector_doc_overview_item_bg);
        holder.getBinding().getRoot().setSelected(!getSelectionMode() && this.currentIndex == position);
        ViewKt.setViewVisibleOrInvisible(holder.getBinding().moreSettings, (this.fullscreen || getSelectionMode() || z) ? false : true);
        ViewKt.setViewVisibleOrGone(holder.getBinding().centerSettingButtonWrapper, (!this.fullscreen || getSelectionMode() || z) ? false : true);
        ViewKt.setViewVisibleOrGone(holder.getBinding().checkbox, getSelectionMode());
        holder.getBinding().checkbox.setChecked(isItemSelected(item));
        holder.getBinding().centerSettingButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.f7f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocExcerptListAdapter.m47530N(DataBindingHolder.this, view);
            }
        });
        holder.getBinding().titleEdit.setEnabled(true);
        holder.getBinding().titleEdit.setPadding(0, holder.getBinding().titleEdit.getPaddingTop(), 0, holder.getBinding().titleEdit.getPaddingBottom());
        holder.getBinding().tvNotePageIndex.setText(String.valueOf(item.getPageIndex() + 1));
        TintTextView tvNotePageIndex = holder.getBinding().tvNotePageIndex;
        Intrinsics.checkNotNullExpressionValue(tvNotePageIndex, "tvNotePageIndex");
        tvNotePageIndex.setVisibility(EditorBundleKt.getUiFeature(this.editorBundle).supportMultiPage() ? 0 : 8);
        TintTextView quoteCount = holder.getBinding().quoteCount;
        Intrinsics.checkNotNullExpressionValue(quoteCount, "quoteCount");
        m47546I(quoteCount, item);
        TintTextView title = holder.getBinding().title;
        Intrinsics.checkNotNullExpressionValue(title, "title");
        m47547K(title, position, item);
        ItemDocExcerptBinding binding = holder.getBinding();
        Intrinsics.checkNotNullExpressionValue(binding, "getBinding(...)");
        m47545D(binding, position, item);
        ItemDocExcerptBinding binding2 = holder.getBinding();
        Intrinsics.checkNotNullExpressionValue(binding2, "getBinding(...)");
        m47550P(binding2);
        TintImageView image = holder.getBinding().image;
        Intrinsics.checkNotNullExpressionValue(image, "image");
        m47548L(image, item);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemDocExcerptBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemDocExcerptBinding inflate = ItemDocExcerptBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}
