package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.graphics.RectF;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.provider.DocumentsContractCompat;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.SpanUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.PageDataModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.common.glide.GlideApp;
import com.onyx.galaxy.note.common.view.BaseNodeAdapter;
import com.onyx.galaxy.note.common.view.TreeNodeDragListener;
import com.onyx.galaxy.note.databinding.ItemDocTocBinding;
import com.onyx.galaxy.note.editor.view.adapter.DocTocAdapter;
import com.onyx.galaxy.note.editor.view.popup.DocTocActionPopup;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0000\n\u0002\b\r\n\u0002\u0010\u001f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0014\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001ZB?\u0012\u0006\u0010<\u001a\u000209\u0012\u0012\u0010B\u001a\u000e\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020?0=\u0012\f\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00020C\u0012\f\u0010J\u001a\b\u0012\u0004\u0012\u00020>0G¢\u0006\u0004\bX\u0010YJ \u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u001e\u0010\u000e\u001a\u00020\t2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0007H\u0002J\u001e\u0010\u0010\u001a\u00020\u000f2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u001c\u0010\u0012\u001a\u00020\t2\n\u0010\u0011\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0018\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0002H\u0002J\u000e\u0010\u0016\u001a\u00020\u0007*\u0004\u0018\u00010\u0002H\u0002J,\u0010\u0019\u001a\u00020\t2\n\u0010\u0011\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u000f2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000bH\u0014J$\u0010\u001f\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u000fH\u0014J\u0016\u0010!\u001a\u00020\u00072\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00020\u000bH\u0016J\u0016\u0010\"\u001a\u00020\u00072\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00020\u000bH\u0016J\u001e\u0010$\u001a\u00020\t2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010#\u001a\u00020\u0007H\u0016J*\u0010)\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u00072\b\u0010(\u001a\u0004\u0018\u00010'H\u0016J*\u0010*\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u00072\b\u0010(\u001a\u0004\u0018\u00010'H\u0016J\u0010\u0010+\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u000fH\u0016J\u000e\u0010-\u001a\u00020\t2\u0006\u0010,\u001a\u00020\u0007J\u000e\u0010/\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u0007J\u0006\u00100\u001a\u00020\u0007J\u0014\u00101\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000bJ\u001c\u00102\u001a\u00020\t2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0007J\u000e\u00103\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0007J\u0006\u00104\u001a\u00020\u000fJ\u0012\u00106\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u000b05J\u0006\u00107\u001a\u00020\u0007J\u0006\u00108\u001a\u00020\tR\u0014\u0010<\u001a\u0002098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R \u0010B\u001a\u000e\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020?0=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010AR\u001a\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00020C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010ER\u001a\u0010J\u001a\b\u0012\u0004\u0012\u00020>0G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010IR&\u0010L\u001a\u0014\u0012\u0004\u0012\u00020>\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u000b0=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bK\u0010AR\u0016\u0010,\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0016\u0010P\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010NR\"\u0010W\u001a\u00020>8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010T\"\u0004\bU\u0010V¨\u0006["}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;", "Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$TocItemViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;", "binding", "model", "", "fullscreen", "", "H", "Lcom/onyx/android/sdk/base/data/Tree;", "node", "select", "B", "", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "holder", "I", "itemBinding", "tocModel", "E", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "position", "item", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", DocumentsContractCompat.f5557a, "isExpandTreeNode", "isTreeItemExpanded", "expanded", "setTreeItemExpand", "animate", "notify", "", "parentPayload", "collapse", "expand", "removeAt", "selectable", "setSelectable", "enable", "enableSelectionMode", "isSelectionMode", "isItemSelected", "selectItem", "selectAll", "getSelectedCount", "", "getSelectedItems", "isAllSelected", "clearSelected", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "s", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "", "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;", "t", "Ljava/util/Map;", "pageDataMap", "Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;", "u", "Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;", "onDragListener", "", "v", "Ljava/util/Set;", MessageConst.KEY_TITLE_LIST, "w", "selectionMap", "x", Constants.HASIDCALL_INDEX_SIG, "y", "selectionMode", "z", Constants.STRING_SIG, "getKeyword", "()Ljava/lang/String;", "setKeyword", "(Ljava/lang/String;)V", "keyword", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/Map;Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;Ljava/util/Set;)V", "TocItemViewHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDocTocAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocTocAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,293:1\n1#2:294\n1747#3,3:295\n372#4,7:298\n*S KotlinDebug\n*F\n+ 1 DocTocAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter\n*L\n239#1:295,3\n270#1:298,7\n*E\n"})
/* loaded from: classes9.dex */
public final class DocTocAdapter extends BaseNodeAdapter<VirtualTocModel, TocItemViewHolder> {

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Map<String, PageDataModel> pageDataMap;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final TreeNodeDragListener<VirtualTocModel> onDragListener;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final Set<String> titleList;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final Map<String, Tree<VirtualTocModel>> selectionMap;

    /* renamed from: x, reason: from kotlin metadata */
    public boolean selectable;

    /* renamed from: y, reason: from kotlin metadata */
    public boolean selectionMode;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public String keyword;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\b\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$TocItemViewHolder;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "I", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Landroid/content/Context;", "J", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public final class TocItemViewHolder extends DataBindingHolder<ItemDocTocBinding> {

        /* renamed from: I, reason: from kotlin metadata */
        @NotNull
        public final EditorBundle editorBundle;

        /* renamed from: J, reason: from kotlin metadata */
        @NotNull
        public final Context context;

        /* renamed from: K */
        public final /* synthetic */ DocTocAdapter f59526K;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TocItemViewHolder(@NotNull DocTocAdapter docTocAdapter, @NotNull EditorBundle editorBundle, Context context) {
            super(ItemDocTocBinding.inflate(LayoutInflater.from(context), null, false));
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(context, "context");
            this.f59526K = docTocAdapter;
            this.editorBundle = editorBundle;
            this.context = context;
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        @NotNull
        public final EditorBundle getEditorBundle() {
            return this.editorBundle;
        }
    }

    public DocTocAdapter(@NotNull EditorBundle editorBundle, @NotNull Map<String, PageDataModel> pageDataMap, @NotNull TreeNodeDragListener<VirtualTocModel> onDragListener, @NotNull Set<String> titleList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageDataMap, "pageDataMap");
        Intrinsics.checkNotNullParameter(onDragListener, "onDragListener");
        Intrinsics.checkNotNullParameter(titleList, "titleList");
        this.editorBundle = editorBundle;
        this.pageDataMap = pageDataMap;
        this.onDragListener = onDragListener;
        this.titleList = titleList;
        this.selectionMap = new LinkedHashMap();
        this.keyword = "";
    }

    /* renamed from: F */
    public static final void m47567F(DocTocAdapter this$0, Tree tree, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.isSelectionMode()) {
            return;
        }
        EditorBundle editorBundle = this$0.editorBundle;
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        DocTocActionPopup docTocActionPopup = new DocTocActionPopup(editorBundle, context, tree, this$0.titleList, this$0.selectable);
        Intrinsics.checkNotNull(view);
        PopupExtKt.showActionPopup$default(docTocActionPopup, view, ViewKt.globalVisibleRect(this$0.getRecyclerView()), 0, ResManager.INSTANCE.getDimens(C7384R.dimen.dp_16), 4, null);
    }

    /* renamed from: G */
    public static final void m47568G(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* renamed from: B */
    public final void m47570B(Tree<VirtualTocModel> node, boolean select) {
        String uniqueId;
        Tree<VirtualTocModel> parent = node.getParent();
        if (parent == null) {
            return;
        }
        List<Tree<VirtualTocModel>> children = parent.getChildren();
        boolean z = false;
        if (!(children instanceof Collection) || !children.isEmpty()) {
            Iterator<T> it2 = children.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                } else if (!isItemSelected((Tree) it2.next())) {
                    z = true;
                    break;
                }
            }
        }
        boolean z2 = !z;
        VirtualTocModel item = parent.getItem();
        if (item != null && (uniqueId = item.getUniqueId()) != null) {
            if (z2) {
                this.selectionMap.put(uniqueId, parent);
            } else {
                this.selectionMap.remove(uniqueId);
            }
            notifyItemChanged(getItems().indexOf(parent));
        }
        m47570B(parent, select);
    }

    /* renamed from: C */
    public final int m47571C(Tree<VirtualTocModel> node, boolean fullscreen) {
        int coerceAtLeast;
        ResManager resManager = ResManager.INSTANCE;
        int dimens = resManager.getDimens(C7384R.dimen.dp_12);
        int dimens2 = fullscreen ? resManager.getDimens(C7384R.dimen.dp_16) : resManager.getDimens(C7384R.dimen.dp_10);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(0, node.getLevel() - 1);
        return (coerceAtLeast * dimens2) + dimens;
    }

    /* renamed from: D */
    public final boolean m47572D(VirtualTocModel virtualTocModel) {
        return (virtualTocModel != null ? virtualTocModel.getExpandState() : null) == null || Intrinsics.areEqual(virtualTocModel.getExpandState(), Boolean.TRUE);
    }

    /* renamed from: E */
    public final void m47573E(ItemDocTocBinding itemBinding, VirtualTocModel tocModel) {
        Map<String, PageDataModel> map = this.pageDataMap;
        String pageId = tocModel.getPageId();
        PageDataModel pageDataModel = map.get(pageId);
        if (pageDataModel == null) {
            pageDataModel = new PageDataModel(this.editorBundle, tocModel.getPageIndex(), tocModel.getPageId(), null, null, 24, null);
            map.put(pageId, pageDataModel);
        }
        PageDataModel pageDataModel2 = pageDataModel;
        float dimension = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_40);
        RectF copy = RectFKt.copy(pageDataModel2.getPageDisplayRectF());
        RectFKt.scaleToPageByOrientation(copy, dimension, dimension);
        ImageView image = itemBinding.image;
        Intrinsics.checkNotNullExpressionValue(image, "image");
        ViewKt.setLayoutParams(image, (int) copy.width(), (int) copy.height());
        GlideApp.with(itemBinding.image).load((Object) pageDataModel2).diskCacheStrategy(DiskCacheStrategy.NONE).into(itemBinding.image);
    }

    /* renamed from: H */
    public final void m47574H(ItemDocTocBinding binding, VirtualTocModel model, boolean fullscreen) {
        if (fullscreen) {
            ResManager resManager = ResManager.INSTANCE;
            int dimens = resManager.getDimens(C7384R.dimen.dp_72);
            int dimens2 = resManager.getDimens(C7384R.dimen.dp_24);
            TintRelativeLayout contentLayout = binding.contentLayout;
            Intrinsics.checkNotNullExpressionValue(contentLayout, "contentLayout");
            ViewKt.setLayoutHeight(contentLayout, Integer.valueOf(dimens));
            TintImageView moreSettings = binding.moreSettings;
            Intrinsics.checkNotNullExpressionValue(moreSettings, "moreSettings");
            ViewKt.setMargins(moreSettings, dimens2, 0, dimens2, 0);
            ViewKt.setViewVisibleOrInvisible(binding.dividerView, true);
            m47573E(binding, model);
        }
    }

    /* renamed from: I */
    public final void m47575I(TocItemViewHolder holder, VirtualTocModel model) {
        boolean containsKey = this.selectionMap.containsKey(model.getUniqueId());
        ItemDocTocBinding binding = holder.getBinding();
        Intrinsics.checkNotNullExpressionValue(binding, "getBinding(...)");
        ItemDocTocBinding itemDocTocBinding = binding;
        ViewKt.setViewVisibleOrGone(itemDocTocBinding.moreSettings, !isSelectionMode());
        ViewKt.setViewVisibleOrGone(itemDocTocBinding.checkbox, isSelectionMode());
        itemDocTocBinding.checkbox.setChecked(containsKey);
    }

    public final void clearSelected() {
        this.selectionMap.clear();
    }

    @Override // com.onyx.galaxy.note.common.view.BaseNodeAdapter
    public int collapse(int position, boolean animate, boolean notify, @Nullable Object parentPayload) {
        return collapseInternal$note_overseasRelease(position, false, animate, notify, parentPayload, new Function1<Tree<VirtualTocModel>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocTocAdapter$collapse$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Tree<VirtualTocModel> tree) {
                invoke2(tree);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Tree<VirtualTocModel> it2) {
                Map map;
                Map map2;
                Intrinsics.checkNotNullParameter(it2, "it");
                VirtualTocModel item = it2.getItem();
                String uniqueId = item != null ? item.getUniqueId() : null;
                map = DocTocAdapter.this.selectionMap;
                if (map.containsKey(uniqueId)) {
                    map2 = DocTocAdapter.this.selectionMap;
                    TypeIntrinsics.asMutableMap(map2).remove(uniqueId);
                }
            }
        });
    }

    public final void enableSelectionMode(boolean enable) {
        this.selectionMode = enable;
        if (!enable) {
            this.selectionMap.clear();
        }
        notifyDataSetChanged();
    }

    @Override // com.onyx.galaxy.note.common.view.BaseNodeAdapter
    public int expand(int position, boolean animate, boolean notify, @Nullable Object parentPayload) {
        return expandInternal$note_overseasRelease(position, false, animate, notify, parentPayload, new Function1<Tree<VirtualTocModel>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocTocAdapter$expand$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Tree<VirtualTocModel> tree) {
                invoke2(tree);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Tree<VirtualTocModel> it2) {
                Map map;
                VirtualTocModel item;
                String uniqueId;
                Map map2;
                VirtualTocModel item2;
                Intrinsics.checkNotNullParameter(it2, "it");
                map = DocTocAdapter.this.selectionMap;
                Tree<VirtualTocModel> parent = it2.getParent();
                if (!map.containsKey((parent == null || (item2 = parent.getItem()) == null) ? null : item2.getUniqueId()) || (item = it2.getItem()) == null || (uniqueId = item.getUniqueId()) == null) {
                    return;
                }
                map2 = DocTocAdapter.this.selectionMap;
                map2.put(uniqueId, it2);
            }
        });
    }

    @NotNull
    public final String getKeyword() {
        return this.keyword;
    }

    public final int getSelectedCount() {
        return this.selectionMap.size();
    }

    @NotNull
    public final Collection<Tree<VirtualTocModel>> getSelectedItems() {
        return this.selectionMap.values();
    }

    public final boolean isAllSelected() {
        return this.selectionMap.size() == getItems().size();
    }

    @Override // com.onyx.galaxy.note.common.view.BaseNodeAdapter
    public boolean isExpandTreeNode(@NotNull Tree<VirtualTocModel> tree) {
        Intrinsics.checkNotNullParameter(tree, "tree");
        return true;
    }

    public final boolean isItemSelected(@NotNull Tree<VirtualTocModel> node) {
        Intrinsics.checkNotNullParameter(node, "node");
        Map<String, Tree<VirtualTocModel>> map = this.selectionMap;
        VirtualTocModel item = node.getItem();
        return map.containsKey(item != null ? item.getUniqueId() : null);
    }

    public final boolean isSelectionMode() {
        return this.selectable && this.selectionMode;
    }

    @Override // com.onyx.galaxy.note.common.view.BaseNodeAdapter
    public boolean isTreeItemExpanded(@NotNull Tree<VirtualTocModel> tree) {
        Intrinsics.checkNotNullParameter(tree, "tree");
        return m47572D(tree.getItem());
    }

    @Override // com.onyx.galaxy.note.common.view.BaseNodeAdapter, com.chad.library.adapter4.BaseQuickAdapter
    public void removeAt(int position) {
        String uniqueId;
        VirtualTocModel virtualTocModel = (VirtualTocModel) ((Tree) getItems().get(position)).getItem();
        if (virtualTocModel != null && (uniqueId = virtualTocModel.getUniqueId()) != null) {
            this.selectionMap.remove(uniqueId);
        }
        super.removeAt(position);
    }

    public final void selectAll(final boolean select) {
        Iterator it2 = getItems().iterator();
        final Function1<Tree<VirtualTocModel>, Unit> function1 = new Function1<Tree<VirtualTocModel>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocTocAdapter$selectAll$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Tree<VirtualTocModel> tree) {
                invoke2(tree);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Tree<VirtualTocModel> it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                if (it3.getLevel() == 1) {
                    DocTocAdapter.this.selectItem(it3, select);
                }
            }
        };
        it2.forEachRemaining(new Consumer() { // from class: com.sunia.HTREnginev2.f9f
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DocTocAdapter.m47568G(Function1.this, obj);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0056, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r3 != null ? r3.getParent() : null, r2.getParent()) == false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void selectItem(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.base.data.Tree<com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel> r6, boolean r7) {
        /*
            r5 = this;
            java.lang.String r0 = "node"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            kotlin.collections.ArrayDeque r0 = new kotlin.collections.ArrayDeque
            r0.<init>()
            r0.add(r6)
            r1 = 0
        Le:
            boolean r2 = r0.isEmpty()
            r3 = 1
            r2 = r2 ^ r3
            if (r2 == 0) goto L65
            java.lang.Object r2 = kotlin.collections.CollectionsKt.removeLast(r0)
            com.onyx.android.sdk.base.data.Tree r2 = (com.onyx.android.sdk.base.data.Tree) r2
            java.lang.Object r3 = r2.getItem()
            com.onyx.android.sdk.replicator.note.db.model.VirtualTocModel r3 = (com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel) r3
            if (r3 == 0) goto Le
            java.lang.String r3 = r3.getUniqueId()
            if (r3 != 0) goto L2b
            goto Le
        L2b:
            if (r7 == 0) goto L33
            java.util.Map<java.lang.String, com.onyx.android.sdk.base.data.Tree<com.onyx.android.sdk.replicator.note.db.model.VirtualTocModel>> r4 = r5.selectionMap
            r4.put(r3, r2)
            goto L38
        L33:
            java.util.Map<java.lang.String, com.onyx.android.sdk.base.data.Tree<com.onyx.android.sdk.replicator.note.db.model.VirtualTocModel>> r4 = r5.selectionMap
            r4.remove(r3)
        L38:
            int r1 = r1 + 1
            boolean r3 = r0.isEmpty()
            if (r3 != 0) goto L58
            java.lang.Object r3 = r0.lastOrNull()
            com.onyx.android.sdk.base.data.Tree r3 = (com.onyx.android.sdk.base.data.Tree) r3
            if (r3 == 0) goto L4d
            com.onyx.android.sdk.base.data.Tree r3 = r3.getParent()
            goto L4e
        L4d:
            r3 = 0
        L4e:
            com.onyx.android.sdk.base.data.Tree r4 = r2.getParent()
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
            if (r3 != 0) goto L5b
        L58:
            r5.m47570B(r2, r7)
        L5b:
            java.util.List r2 = r2.getChildren()
            java.util.Collection r2 = (java.util.Collection) r2
            r0.addAll(r2)
            goto Le
        L65:
            if (r1 <= r3) goto L6b
            r5.notifyDataSetChanged()
            goto L7a
        L6b:
            java.util.List r7 = r5.getItems()
            int r6 = r7.indexOf(r6)
            r7 = -1
            if (r6 != r7) goto L77
            return
        L77:
            r5.notifyItemChanged(r6)
        L7a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.adapter.DocTocAdapter.selectItem(com.onyx.android.sdk.base.data.Tree, boolean):void");
    }

    public final void setKeyword(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.keyword = str;
    }

    public final void setSelectable(boolean selectable) {
        this.selectable = selectable;
        notifyDataSetChanged();
    }

    @Override // com.onyx.galaxy.note.common.view.BaseNodeAdapter
    public void setTreeItemExpand(@NotNull Tree<VirtualTocModel> tree, boolean expanded) {
        Intrinsics.checkNotNullParameter(tree, "tree");
        VirtualTocModel item = tree.getItem();
        if (item == null) {
            return;
        }
        item.setExpandState(Boolean.valueOf(expanded));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull TocItemViewHolder holder, int position, @Nullable final Tree<VirtualTocModel> item) {
        VirtualTocModel item2;
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null || (item2 = item.getItem()) == null) {
            return;
        }
        ItemDocTocBinding binding = holder.getBinding();
        Intrinsics.checkNotNullExpressionValue(binding, "getBinding(...)");
        ItemDocTocBinding itemDocTocBinding = binding;
        if (this.selectable) {
            View root = itemDocTocBinding.getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
            ResManager resManager = ResManager.INSTANCE;
            ViewKt.setLayoutWidth(root, ((int) resManager.getScreenWidth()) - resManager.getDimens(C10651R.dimen.scroll_bar_padding));
        } else {
            View root2 = itemDocTocBinding.getRoot();
            Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
            ViewKt.setLayoutParams(root2, -1, ResManager.INSTANCE.getDimens(C7384R.dimen.dp_48));
        }
        itemDocTocBinding.moreSettings.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.g9f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocTocAdapter.m47567F(DocTocAdapter.this, item, view);
            }
        });
        ViewKt.setViewVisibleOrGone(itemDocTocBinding.imageContainer, this.selectable);
        itemDocTocBinding.setModel(item2);
        itemDocTocBinding.executePendingBindings();
        final int m47571C = m47571C(item, this.selectable);
        int dimens = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_86) + m47571C;
        TintImageView ivIndicator = itemDocTocBinding.ivIndicator;
        Intrinsics.checkNotNullExpressionValue(ivIndicator, "ivIndicator");
        ViewKt.setLayoutParams(ivIndicator, new Function1<ViewGroup.LayoutParams, Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.DocTocAdapter$onBindViewHolder$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.LayoutParams layoutParams) {
                invoke2(layoutParams);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ViewGroup.LayoutParams setLayoutParams) {
                Intrinsics.checkNotNullParameter(setLayoutParams, "$this$setLayoutParams");
                ViewGroup.MarginLayoutParams marginLayoutParams = setLayoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) setLayoutParams : null;
                if (marginLayoutParams == null) {
                    return;
                }
                marginLayoutParams.setMarginStart(m47571C);
            }
        });
        itemDocTocBinding.ivIndicator.setRotation(m47572D(item2) ? 90.0f : 0.0f);
        TintView dividerView = itemDocTocBinding.dividerView;
        Intrinsics.checkNotNullExpressionValue(dividerView, "dividerView");
        if (ViewExtKt.isLayoutDirectionRtl(dividerView)) {
            TintView dividerView2 = itemDocTocBinding.dividerView;
            Intrinsics.checkNotNullExpressionValue(dividerView2, "dividerView");
            ViewKt.setMargins(dividerView2, 0, 0, dimens, 0);
        } else {
            TintView dividerView3 = itemDocTocBinding.dividerView;
            Intrinsics.checkNotNullExpressionValue(dividerView3, "dividerView");
            ViewKt.setMargins(dividerView3, dimens, 0, 0, 0);
        }
        ViewKt.setViewVisibleOrInvisible(itemDocTocBinding.ivIndicator, item.hasChildren());
        ViewKt.setViewVisibleOrGone(itemDocTocBinding.imageContainer, this.selectable);
        itemDocTocBinding.title.setText(SpanUtils.highLightKeyword$default(SpanUtils.INSTANCE, item2.getTitle(), this.keyword, ThemeUtils.getColorById(C7996R.color.theme_text_color_highlight_01), false, 8, null));
        m47575I(holder, item2);
        m47574H(itemDocTocBinding, item2, this.selectable);
        holder.itemView.setTag(item);
        holder.itemView.setOnDragListener(this.onDragListener);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public TocItemViewHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new TocItemViewHolder(this, this.editorBundle, context);
    }
}
