package com.onyx.galaxy.note.p048ui.sticker;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import androidx.core.provider.DocumentsContractCompat;
import com.onyx.android.sdk.base.data.NewTree;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModelKt;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModelKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bP\u0010QJ\u0012\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003*\u00020\u0002H\u0002J\u0014\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005J\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007J\u0010\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bJ\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0010\u001a\u00020\u0002J\u000e\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0002J\u000e\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013J\b\u0010\u0017\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0018\u001a\u00020\u0013J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0012\u001a\u00020\u0002J\u000e\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0002J\u000e\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0002J\u000e\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0010\u001a\u00020\u0002J\u000e\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0002J\u000e\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0002J\u000e\u0010 \u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0002J\u000e\u0010!\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0002J\u000e\u0010\"\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0002J\u0006\u0010#\u001a\u00020\u0007J\u0014\u0010&\u001a\b\u0012\u0004\u0012\u00020%0$2\u0006\u0010\u0012\u001a\u00020\u0002J\u000e\u0010'\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0002J\u0016\u0010)\u001a\u00020\u001c2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010(\u001a\u00020%J\u0014\u0010*\u001a\b\u0012\u0004\u0012\u00020%0$2\u0006\u0010\u0012\u001a\u00020\u0002J\u000e\u0010+\u001a\u00020\u001c2\u0006\u0010\u0012\u001a\u00020\u0002J\u000e\u0010,\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0002J\u000e\u0010-\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0002J\u0016\u0010.\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010(\u001a\u00020%J\u000e\u0010/\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0002J\u0006\u00100\u001a\u00020\u000bJ\u0019\u00104\u001a\u0015\u0012\f\u0012\n 2*\u0004\u0018\u00010\u00010\u000101¢\u0006\u0002\b3J\u000e\u00106\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u0001R\"\u00108\u001a\u0002078\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\"\u0010?\u001a\u00020>8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR'\u0010F\u001a\u0015\u0012\f\u0012\n 2*\u0004\u0018\u00010\u00010\u000101¢\u0006\u0002\b38\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010ER\u001a\u0010J\u001a\b\u0012\u0004\u0012\u00020\u00020G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010IR0\u0010O\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\r0Kj\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\r`L8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010N¨\u0006R"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "Lcom/onyx/android/sdk/base/data/TreeNode;", "a", "", "mainCategoryList", "", "buildTree", Constants.CLEAR_ATTRIBUTES, "release", "", CouchFieldKey.KEY_CATEGORY_ID, "Lcom/onyx/galaxy/note/ui/sticker/StickerUiStatus;", "getStatus", "getMainCategories", "subCategory", "getMainCategory", "mainCategory", "", "getMainCategoryIndex", "type", "getMainCategoryIndexByType", "getSelectedMainCategory", "getSelectedMainCategoryIndex", "getSelectedSubCategory", "getSelectedSubCategoryIndex", "getSelectedSubCategoryId", "", "isSubCategorySelected", "selectMainCategory", "selectSubCategory", "addSubCategory", "deleteSubCategory", "deleteSelectedStickers", "updateRecentCategory", "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "getSelectedItems", "clearSelectedItems", "sticker", "isStickerSelected", "getSelectedStickers", "isInSelectionMode", "enterSelectionMode", "exitSelectionMode", "toggleSelection", "toggleSelectAll", "getTargetCategoryForStickerImport", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "getEventPublisher", NotificationCompat.CATEGORY_EVENT, "postEvent", "Landroid/content/Context;", "activityContext", "Landroid/content/Context;", "getActivityContext", "()Landroid/content/Context;", "setActivityContext", "(Landroid/content/Context;)V", "Lorg/greenrobot/eventbus/EventBus;", "eventBus", "Lorg/greenrobot/eventbus/EventBus;", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "setEventBus", "(Lorg/greenrobot/eventbus/EventBus;)V", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "eventPublisher", "Lcom/onyx/android/sdk/base/data/NewTree;", "b", "Lcom/onyx/android/sdk/base/data/NewTree;", DocumentsContractCompat.f5557a, "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "c", "Ljava/util/LinkedHashMap;", "statusMap", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nStickerUiBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerUiBundle.kt\ncom/onyx/galaxy/note/ui/sticker/StickerUiBundle\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,222:1\n1855#2:223\n1855#2,2:224\n1856#2:226\n1549#2:227\n1620#2,3:228\n350#2,7:231\n766#2:238\n857#2,2:239\n*S KotlinDebug\n*F\n+ 1 StickerUiBundle.kt\ncom/onyx/galaxy/note/ui/sticker/StickerUiBundle\n*L\n31#1:223\n37#1:224,2\n31#1:226\n62#1:227\n62#1:228,3\n74#1:231,7\n198#1:238\n198#1:239,2\n*E\n"})
/* loaded from: classes9.dex */
public final class StickerUiBundle {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final PublishSubject<Object> eventPublisher;
    public Context activityContext;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final NewTree<StickerCategoryModel> tree;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final LinkedHashMap<String, StickerUiStatus> statusMap;
    public EventBus eventBus;

    public StickerUiBundle() {
        PublishSubject<Object> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.eventPublisher = create;
        this.tree = new NewTree<>();
        this.statusMap = new LinkedHashMap<>();
    }

    /* renamed from: a */
    public final TreeNode<StickerCategoryModel> m51415a(StickerCategoryModel stickerCategoryModel) {
        return this.tree.createNode(stickerCategoryModel, stickerCategoryModel.getUniqueId());
    }

    public final void addSubCategory(@NotNull StickerCategoryModel subCategory) {
        Intrinsics.checkNotNullParameter(subCategory, "subCategory");
        TreeNode treeNode = (TreeNode) AnyKt.requireNonNull$default(this.tree.findNode(subCategory.getParentUniqueId()), null, 1, null);
        TreeNode.addChild$default(treeNode, m51415a(subCategory), 0, 2, null);
        StickerCategoryModel stickerCategoryModel = (StickerCategoryModel) treeNode.getData();
        stickerCategoryModel.getSubCategory().add(subCategory);
        getStatus(stickerCategoryModel.getUniqueId()).setSelectedSubCategoryId(subCategory.getUniqueId());
    }

    public final void buildTree(@NotNull List<StickerCategoryModel> mainCategoryList) {
        Object first;
        Object first2;
        Intrinsics.checkNotNullParameter(mainCategoryList, "mainCategoryList");
        TreeNode<StickerCategoryModel> m51415a = m51415a(StickerCategoryModelKt.createCategoryAll(UUIDUtils.INSTANCE.shortUUID()));
        this.tree.setRoot(m51415a);
        for (StickerCategoryModel stickerCategoryModel : mainCategoryList) {
            TreeNode<StickerCategoryModel> m51415a2 = m51415a(stickerCategoryModel);
            TreeNode.addChild$default(m51415a, m51415a2, 0, 2, null);
            StickerUiStatus stickerUiStatus = new StickerUiStatus();
            first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) stickerCategoryModel.getSubCategory());
            stickerUiStatus.setSelectedSubCategoryId(((StickerCategoryModel) first2).getUniqueId());
            this.statusMap.put(stickerCategoryModel.getUniqueId(), stickerUiStatus);
            Iterator<T> it2 = stickerCategoryModel.getSubCategory().iterator();
            while (it2.hasNext()) {
                TreeNode.addChild$default(m51415a2, m51415a((StickerCategoryModel) it2.next()), 0, 2, null);
            }
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) mainCategoryList);
        getStatus(((StickerCategoryModel) first).getUniqueId()).setTabSelected(true);
    }

    public final void clear() {
        this.tree.clear();
        this.statusMap.clear();
    }

    public final void clearSelectedItems(@NotNull StickerCategoryModel mainCategory) {
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        getSelectedItems(mainCategory).clear();
    }

    public final void deleteSelectedStickers(@NotNull StickerCategoryModel mainCategory) {
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        clearSelectedItems(mainCategory);
        postEvent(new StickerTabUpdatedEvent(getMainCategoryIndex(mainCategory)));
    }

    public final void deleteSubCategory(@NotNull StickerCategoryModel subCategory) {
        Object first;
        Intrinsics.checkNotNullParameter(subCategory, "subCategory");
        StickerCategoryModel mainCategory = getMainCategory(subCategory);
        if (mainCategory == null) {
            return;
        }
        mainCategory.getSubCategory().remove(subCategory);
        if (Intrinsics.areEqual(getSelectedSubCategoryId(mainCategory), subCategory.getUniqueId())) {
            StickerUiStatus status = getStatus(mainCategory.getUniqueId());
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) mainCategory.getSubCategory());
            status.setSelectedSubCategoryId(((StickerCategoryModel) first).getUniqueId());
        }
    }

    public final void enterSelectionMode(@NotNull StickerCategoryModel mainCategory) {
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        getStatus(mainCategory.getUniqueId()).setInSelectionMode(true);
        clearSelectedItems(mainCategory);
    }

    public final void exitSelectionMode(@NotNull StickerCategoryModel mainCategory) {
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        getStatus(mainCategory.getUniqueId()).setInSelectionMode(false);
        clearSelectedItems(mainCategory);
    }

    @NotNull
    public final Context getActivityContext() {
        Context context = this.activityContext;
        if (context != null) {
            return context;
        }
        Intrinsics.throwUninitializedPropertyAccessException("activityContext");
        return null;
    }

    @NotNull
    public final EventBus getEventBus() {
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            return eventBus;
        }
        Intrinsics.throwUninitializedPropertyAccessException("eventBus");
        return null;
    }

    @NotNull
    public final PublishSubject<Object> getEventPublisher() {
        return this.eventPublisher;
    }

    @NotNull
    public final List<StickerCategoryModel> getMainCategories() {
        int collectionSizeOrDefault;
        List<TreeNode<StickerCategoryModel>> findNodes = this.tree.findNodes(new Function1<TreeNode<StickerCategoryModel>, Boolean>() { // from class: com.onyx.galaxy.note.ui.sticker.StickerUiBundle$getMainCategories$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<StickerCategoryModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.levelToRoot() == 2);
            }
        });
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findNodes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = findNodes.iterator();
        while (it2.hasNext()) {
            arrayList.add((StickerCategoryModel) ((TreeNode) it2.next()).getData());
        }
        return arrayList;
    }

    @Nullable
    public final StickerCategoryModel getMainCategory(@NotNull StickerCategoryModel subCategory) {
        Intrinsics.checkNotNullParameter(subCategory, "subCategory");
        TreeNode<StickerCategoryModel> findNode = this.tree.findNode(subCategory.getParentUniqueId());
        if (findNode != null) {
            return findNode.getData();
        }
        return null;
    }

    public final int getMainCategoryIndex(@NotNull StickerCategoryModel mainCategory) {
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        return getMainCategories().indexOf(mainCategory);
    }

    public final int getMainCategoryIndexByType(int type) {
        Iterator<StickerCategoryModel> it2 = getMainCategories().iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next().getType() == type) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @NotNull
    public final List<StickerModel> getSelectedItems(@NotNull StickerCategoryModel mainCategory) {
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        return getStatus(mainCategory.getUniqueId()).getSelectedItems();
    }

    @Nullable
    public final StickerCategoryModel getSelectedMainCategory() {
        TreeNode<StickerCategoryModel> findNode = this.tree.findNode(new Function1<TreeNode<StickerCategoryModel>, Boolean>() { // from class: com.onyx.galaxy.note.ui.sticker.StickerUiBundle$getSelectedMainCategory$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<StickerCategoryModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.levelToRoot() == 2 && StickerUiBundle.this.getStatus(it2.getId()).getIsTabSelected());
            }
        });
        if (findNode != null) {
            return findNode.getData();
        }
        return null;
    }

    public final int getSelectedMainCategoryIndex() {
        int indexOf;
        indexOf = CollectionsKt___CollectionsKt.indexOf((List<? extends StickerCategoryModel>) ((List<? extends Object>) getMainCategories()), getSelectedMainCategory());
        return indexOf;
    }

    @NotNull
    public final List<StickerModel> getSelectedStickers(@NotNull StickerCategoryModel mainCategory) {
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        return getStatus(mainCategory.getUniqueId()).getSelectedItems();
    }

    @Nullable
    public final StickerCategoryModel getSelectedSubCategory(@NotNull final StickerCategoryModel mainCategory) {
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        TreeNode<StickerCategoryModel> findNode = this.tree.findNode(new Function1<TreeNode<StickerCategoryModel>, Boolean>() { // from class: com.onyx.galaxy.note.ui.sticker.StickerUiBundle$getSelectedSubCategory$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<StickerCategoryModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getId(), StickerUiBundle.this.getStatus(mainCategory.getUniqueId()).getSelectedSubCategoryId()));
            }
        });
        if (findNode != null) {
            return findNode.getData();
        }
        return null;
    }

    @NotNull
    public final String getSelectedSubCategoryId(@NotNull StickerCategoryModel mainCategory) {
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        return getStatus(mainCategory.getUniqueId()).getSelectedSubCategoryId();
    }

    public final int getSelectedSubCategoryIndex(@NotNull StickerCategoryModel mainCategory) {
        int indexOf;
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        indexOf = CollectionsKt___CollectionsKt.indexOf((List<? extends StickerCategoryModel>) ((List<? extends Object>) mainCategory.getSubCategory()), getSelectedSubCategory(mainCategory));
        return indexOf;
    }

    @NotNull
    public final StickerUiStatus getStatus(@Nullable String categoryId) {
        StickerUiStatus stickerUiStatus = this.statusMap.get(categoryId);
        return stickerUiStatus == null ? new StickerUiStatus() : stickerUiStatus;
    }

    @NotNull
    public final String getTargetCategoryForStickerImport() {
        StickerCategoryModel selectedSubCategory;
        StickerCategoryModel selectedMainCategory = getSelectedMainCategory();
        return (selectedMainCategory == null || (selectedSubCategory = getSelectedSubCategory(selectedMainCategory)) == null) ? "" : selectedSubCategory.getType() == -1 ? selectedSubCategory.getParentUniqueId() : selectedSubCategory.getUniqueId();
    }

    public final boolean isInSelectionMode(@NotNull StickerCategoryModel mainCategory) {
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        return getStatus(mainCategory.getUniqueId()).getInSelectionMode();
    }

    public final boolean isStickerSelected(@NotNull StickerCategoryModel mainCategory, @NotNull StickerModel sticker) {
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        Intrinsics.checkNotNullParameter(sticker, "sticker");
        return getSelectedItems(mainCategory).contains(sticker);
    }

    public final boolean isSubCategorySelected(@NotNull StickerCategoryModel subCategory) {
        Intrinsics.checkNotNullParameter(subCategory, "subCategory");
        StickerCategoryModel mainCategory = getMainCategory(subCategory);
        if (mainCategory == null) {
            return false;
        }
        return Intrinsics.areEqual(subCategory.getUniqueId(), getStatus(mainCategory.getUniqueId()).getSelectedSubCategoryId());
    }

    public final void postEvent(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.eventPublisher.onNext(event);
    }

    public final void release() {
        clear();
        this.eventPublisher.onComplete();
    }

    public final void selectMainCategory(@NotNull StickerCategoryModel mainCategory) {
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        StickerCategoryModel selectedMainCategory = getSelectedMainCategory();
        if (selectedMainCategory == null) {
            return;
        }
        getStatus(selectedMainCategory.getUniqueId()).setTabSelected(false);
        getStatus(mainCategory.getUniqueId()).setTabSelected(true);
    }

    public final void selectSubCategory(@NotNull StickerCategoryModel subCategory) {
        Intrinsics.checkNotNullParameter(subCategory, "subCategory");
        StickerCategoryModel mainCategory = getMainCategory(subCategory);
        if (mainCategory == null) {
            return;
        }
        getStatus(mainCategory.getUniqueId()).setSelectedSubCategoryId(subCategory.getUniqueId());
    }

    public final void setActivityContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.activityContext = context;
    }

    public final void setEventBus(@NotNull EventBus eventBus) {
        Intrinsics.checkNotNullParameter(eventBus, "<set-?>");
        this.eventBus = eventBus;
    }

    public final void toggleSelectAll(@NotNull StickerCategoryModel mainCategory) {
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        StickerCategoryModel selectedSubCategory = getSelectedSubCategory(mainCategory);
        if (selectedSubCategory == null) {
            return;
        }
        List<StickerModel> selectedItems = getSelectedItems(mainCategory);
        List<StickerModel> stickers = selectedSubCategory.getStickers();
        ArrayList arrayList = new ArrayList();
        for (Object obj : stickers) {
            if (StickerModelKt.isNormalSticker((StickerModel) obj)) {
                arrayList.add(obj);
            }
        }
        if (selectedItems.size() >= arrayList.size()) {
            selectedItems.clear();
        } else {
            selectedItems.clear();
            selectedItems.addAll(arrayList);
        }
    }

    public final void toggleSelection(@NotNull StickerCategoryModel mainCategory, @NotNull StickerModel sticker) {
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        Intrinsics.checkNotNullParameter(sticker, "sticker");
        List<StickerModel> selectedItems = getSelectedItems(mainCategory);
        if (selectedItems.contains(sticker)) {
            selectedItems.remove(sticker);
        } else {
            selectedItems.add(sticker);
        }
    }

    public final void updateRecentCategory() {
        postEvent(new StickerTabUpdatedEvent(getMainCategoryIndexByType(-2)));
    }
}
