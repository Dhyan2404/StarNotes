package com.onyx.galaxy.note.category.view.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.data.DelegatedValueProvider;
import com.onyx.android.sdk.base.data.NewTreeKt;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.adapter.SelectMultiTagAdapter;
import com.onyx.galaxy.note.common.data.ManageTagContext;
import com.onyx.galaxy.note.databinding.ItemSelectMultiTagBinding;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 02\u001c\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004\u0012\b\u0012\u00060\u0005R\u00020\u00000\u0001:\u000201B1\u0012\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00160\u001f\u0012\u0006\u0010(\u001a\u00020%\u0012\u0012\b\u0002\u0010-\u001a\f\u0012\u0004\u0012\u00020\u00100)j\u0002`*¢\u0006\u0004\b.\u0010/J$\u0010\f\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0014J2\u0010\u0011\u001a\u00020\u00102\n\u0010\r\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\n2\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\u0004\u0018\u0001`\u0004H\u0014J\u001a\u0010\u0014\u001a\u00020\u00102\u0012\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0012J\u0006\u0010\u0015\u001a\u00020\u0010J\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0012J\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0016J\u0006\u0010\u001c\u001a\u00020\u0018J\u001a\u0010\u001e\u001a\u00020\u00102\u0010\u0010\u001d\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0002R\u001d\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00160\u001f8\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u001e\u0010-\u001a\f\u0012\u0004\u0012\u00020\u00100)j\u0002`*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,¨\u00062"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "item", "", "onBindViewHolder", "", "selectNodes", "onlyExpandSelection", "submitTreeNodes", "", "getAllTagIds", "", "isAllSelected", CouchFieldKey.KEY_UNIQUE_ID, "handleSelect", "isNothingSelected", "node", "p", "", "r", "Ljava/util/List;", "getSelectedTagIds", "()Ljava/util/List;", "selectedTagIds", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "s", "Lcom/onyx/galaxy/note/common/data/ManageTagContext;", "manageTagContext", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "t", "Lkotlin/jvm/functions/Function0;", "selectionChangedCallback", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Lcom/onyx/galaxy/note/common/data/ManageTagContext;Lkotlin/jvm/functions/Function0;)V", "Companion", "ViewHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectMultiTagAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectMultiTagAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ListAdapterExt.kt\ncom/onyx/galaxy/note/utils/ListAdapterExtKt\n+ 6 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,144:1\n256#2,2:145\n1855#3:147\n1855#3,2:148\n1856#3:150\n1549#3:151\n1620#3,3:152\n1549#3:155\n1620#3,2:156\n766#3:158\n857#3,2:159\n1622#3:161\n2634#3:162\n1549#3:164\n1620#3,3:165\n1855#3,2:171\n1#4:163\n19#5,3:168\n22#5,4:173\n97#6:177\n*S KotlinDebug\n*F\n+ 1 SelectMultiTagAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter\n*L\n61#1:145,2\n99#1:147\n100#1:148,2\n99#1:150\n105#1:151\n105#1:152,3\n106#1:155\n106#1:156,2\n106#1:158\n106#1:159,2\n106#1:161\n108#1:162\n123#1:164\n123#1:165,3\n136#1:171,2\n108#1:163\n136#1:168,3\n136#1:173,4\n35#1:177\n*E\n"})
/* loaded from: classes9.dex */
public final class SelectMultiTagAdapter extends BaseQuickAdapter<TreeNode<NoteTagBean>, ViewHolder> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: u */
    @NotNull
    public static final String f55316u = "";

    /* renamed from: v */
    @NotNull
    public static final DelegatedValueProvider<Companion, String> f55317v = new DelegatedValueProvider() { // from class: com.onyx.galaxy.note.category.view.adapter.SelectMultiTagAdapter$special$$inlined$delegate$1
        @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
        public RESULT getValue(CONTEXT context, @NotNull KProperty<?> kProperty) {
            return (RESULT) DelegatedValueProvider.DefaultImpls.getValue(this, context, kProperty);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
        public final String provideValue(CONTEXT context) {
            return ResManager.INSTANCE.getStringSafely(C10651R.string.no_tag);
        }
    };

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final List<String> selectedTagIds;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final ManageTagContext manageTagContext;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> selectionChangedCallback;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\b\u0010\u0006¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$Companion;", "", "()V", "UNCLASSIFIED_TAG_ID", "", "getUNCLASSIFIED_TAG_ID", "()Ljava/lang/String;", "UNCLASSIFIED_TAG_NAME", "getUNCLASSIFIED_TAG_NAME", "UNCLASSIFIED_TAG_NAME$delegate", "Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {

        /* renamed from: a */
        public static final /* synthetic */ KProperty<Object>[] f55321a = {Reflection.property1(new PropertyReference1Impl(Companion.class, "UNCLASSIFIED_TAG_NAME", "getUNCLASSIFIED_TAG_NAME()Ljava/lang/String;", 0))};

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getUNCLASSIFIED_TAG_ID() {
            return SelectMultiTagAdapter.f55316u;
        }

        @NotNull
        public final String getUNCLASSIFIED_TAG_NAME() {
            return (String) SelectMultiTagAdapter.f55317v.getValue(this, f55321a[0]);
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public final class ViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemSelectMultiTagBinding binding;

        /* renamed from: I */
        public final /* synthetic */ SelectMultiTagAdapter f55323I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(@NotNull SelectMultiTagAdapter selectMultiTagAdapter, ItemSelectMultiTagBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f55323I = selectMultiTagAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemSelectMultiTagBinding getBinding() {
            return this.binding;
        }
    }

    public /* synthetic */ SelectMultiTagAdapter(List list, ManageTagContext manageTagContext, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, manageTagContext, (i & 4) != 0 ? new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.view.adapter.SelectMultiTagAdapter.1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        } : function0);
    }

    /* renamed from: n */
    public static final void m44199n(SelectMultiTagAdapter this$0, TreeNode treeNode, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44201p(treeNode);
    }

    /* renamed from: o */
    public static final void m44200o(boolean z, SelectMultiTagAdapter this$0, String id, int i, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(id, "$id");
        if (z) {
            this$0.selectedTagIds.remove(id);
        } else {
            CollectionKt.addIfNotContains(this$0.selectedTagIds, id);
        }
        this$0.notifyItemChanged(i);
        this$0.selectionChangedCallback.invoke();
    }

    @NotNull
    public final List<String> getAllTagIds() {
        int collectionSizeOrDefault;
        List<TreeNode<NoteTagBean>> findChildrenNodes = this.manageTagContext.getRootNode().findChildrenNodes(NewTreeKt.STRATEGY_DEPTH_FIRST);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findChildrenNodes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = findChildrenNodes.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteTagBean) ((TreeNode) it2.next()).getData()).getUniqueId());
        }
        return arrayList;
    }

    @NotNull
    public final List<String> getSelectedTagIds() {
        return this.selectedTagIds;
    }

    public final void handleSelect(@NotNull final String uniqueId) {
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        if (!this.selectedTagIds.contains(uniqueId)) {
            this.selectedTagIds.add(uniqueId);
            try {
                Iterator<T> it2 = CollectionKt.indexesOf(getItems(), new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.adapter.SelectMultiTagAdapter$handleSelect$$inlined$notifyItemChangedSafely$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        return Boolean.valueOf(Intrinsics.areEqual(it3.getData().getUniqueId(), uniqueId));
                    }
                }).iterator();
                while (it2.hasNext()) {
                    notifyItemChanged(((Number) it2.next()).intValue());
                }
            } catch (Throwable unused) {
                Debug.INSTANCE.m32037d("BaseQuickAdapter is detached");
            }
        }
        this.selectionChangedCallback.invoke();
    }

    public final boolean isAllSelected() {
        return this.selectedTagIds.containsAll(getAllTagIds()) && this.selectedTagIds.contains(f55316u);
    }

    public final boolean isNothingSelected() {
        return this.selectedTagIds.isEmpty();
    }

    public final void onlyExpandSelection(@NotNull List<TreeNode<NoteTagBean>> selectNodes) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        List flatten;
        Intrinsics.checkNotNullParameter(selectNodes, "selectNodes");
        Iterator<T> it2 = getItems().iterator();
        while (it2.hasNext()) {
            Iterator it3 = ((TreeNode) it2.next()).getPathNoteTreeNodes().iterator();
            while (it3.hasNext()) {
                ((TreeNode) it3.next()).collapse();
            }
        }
        List<TreeNode<NoteTagBean>> list = selectNodes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it4 = list.iterator();
        while (it4.hasNext()) {
            TreeNode treeNode = (TreeNode) it4.next();
            arrayList.add(new Pair(treeNode, treeNode.getPathNoteTreeNodes()));
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator it5 = arrayList.iterator();
        while (it5.hasNext()) {
            Iterable iterable = (Iterable) ((Pair) it5.next()).getSecond();
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : iterable) {
                if (!Intrinsics.areEqual(((NoteTagBean) ((TreeNode) obj).getData()).getUniqueId(), ((NoteTagBean) ((TreeNode) r1.getFirst()).getData()).getUniqueId())) {
                    arrayList3.add(obj);
                }
            }
            arrayList2.add(arrayList3);
        }
        flatten = CollectionsKt__IterablesKt.flatten(arrayList2);
        Iterator it6 = flatten.iterator();
        while (it6.hasNext()) {
            ((TreeNode) it6.next()).expand();
        }
        submitTreeNodes();
    }

    /* renamed from: p */
    public final void m44201p(TreeNode<NoteTagBean> node) {
        node.toggleExpand();
        submitTreeNodes();
    }

    public final void submitTreeNodes() {
        submitList(TreeNode.findNodes$default(this.manageTagContext.getRootNode(), new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.adapter.SelectMultiTagAdapter$submitTreeNodes$visibleNodes$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.isParentAllExpand() && !it2.isRootNode());
            }
        }, null, NewTreeKt.STRATEGY_DEPTH_FIRST, 2, null));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull ViewHolder holder, final int position, @Nullable final TreeNode<NoteTagBean> item) {
        Drawable drawable;
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        holder.getBinding().tagNameText.setText(item.getData().getContent());
        holder.getBinding().tagIconMask.setImageTintList(item.getData().getIconColorStateList());
        boolean z = item.getChildCount() > 0;
        TintImageView expandCollapseButton = holder.getBinding().expandCollapseButton;
        Intrinsics.checkNotNullExpressionValue(expandCollapseButton, "expandCollapseButton");
        expandCollapseButton.setVisibility(z ? 0 : 8);
        if (item.getExpand()) {
            drawable = ContextCompat.getDrawable(getContext(), C10651R.drawable.ic_arrow_down);
        } else {
            drawable = ContextCompat.getDrawable(getContext(), C10651R.drawable.ic_arrow_right);
        }
        holder.getBinding().expandCollapseButton.setImageDrawable(drawable);
        final String uniqueId = item.getData().getUniqueId();
        final boolean contains = this.selectedTagIds.contains(uniqueId);
        holder.getBinding().selectButton.setSelected(contains);
        final int levelToRoot = (item.levelToRoot() - 1) * ((int) ResManager.INSTANCE.getDimension(C10651R.dimen.tree_node_item_indent));
        TintImageView tagIcon = holder.getBinding().tagIcon;
        Intrinsics.checkNotNullExpressionValue(tagIcon, "tagIcon");
        ViewKt.setLayoutMargin(tagIcon, new Function1<ViewGroup.MarginLayoutParams, Unit>() { // from class: com.onyx.galaxy.note.category.view.adapter.SelectMultiTagAdapter$onBindViewHolder$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.MarginLayoutParams marginLayoutParams) {
                invoke2(marginLayoutParams);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ViewGroup.MarginLayoutParams setLayoutMargin) {
                Intrinsics.checkNotNullParameter(setLayoutMargin, "$this$setLayoutMargin");
                setLayoutMargin.leftMargin = levelToRoot;
            }
        });
        TintImageView tagIconMask = holder.getBinding().tagIconMask;
        Intrinsics.checkNotNullExpressionValue(tagIconMask, "tagIconMask");
        ViewKt.setLayoutMargin(tagIconMask, new Function1<ViewGroup.MarginLayoutParams, Unit>() { // from class: com.onyx.galaxy.note.category.view.adapter.SelectMultiTagAdapter$onBindViewHolder$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.MarginLayoutParams marginLayoutParams) {
                invoke2(marginLayoutParams);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ViewGroup.MarginLayoutParams setLayoutMargin) {
                Intrinsics.checkNotNullParameter(setLayoutMargin, "$this$setLayoutMargin");
                setLayoutMargin.leftMargin = levelToRoot;
            }
        });
        TintImageView expandCollapseButton2 = holder.getBinding().expandCollapseButton;
        Intrinsics.checkNotNullExpressionValue(expandCollapseButton2, "expandCollapseButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(expandCollapseButton2, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.cfm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectMultiTagAdapter.m44199n(SelectMultiTagAdapter.this, item, view);
            }
        }, 1, null);
        TintImageView selectButton = holder.getBinding().selectButton;
        Intrinsics.checkNotNullExpressionValue(selectButton, "selectButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(selectButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.dfm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectMultiTagAdapter.m44200o(contains, this, uniqueId, position, view);
            }
        }, 1, null);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public ViewHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemSelectMultiTagBinding inflate = ItemSelectMultiTagBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new ViewHolder(this, inflate);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectMultiTagAdapter(@NotNull List<String> selectedTagIds, @NotNull ManageTagContext manageTagContext, @NotNull Function0<Unit> selectionChangedCallback) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(selectedTagIds, "selectedTagIds");
        Intrinsics.checkNotNullParameter(manageTagContext, "manageTagContext");
        Intrinsics.checkNotNullParameter(selectionChangedCallback, "selectionChangedCallback");
        this.selectedTagIds = selectedTagIds;
        this.manageTagContext = manageTagContext;
        this.selectionChangedCallback = selectionChangedCallback;
    }
}
