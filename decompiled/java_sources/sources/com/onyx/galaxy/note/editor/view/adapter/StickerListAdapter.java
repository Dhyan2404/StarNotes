package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.event.StatisticsNoteToolbarStickerEvent;
import com.onyx.android.sdk.replicator.sticker.data.StickerValues;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModelKt;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.ItemStickerBinding;
import com.onyx.galaxy.note.editor.view.adapter.StickerListAdapter;
import com.onyx.galaxy.note.p048ui.sticker.InsertStickersToNoteAction;
import com.onyx.galaxy.note.p048ui.sticker.StickerUiBundle;
import com.onyx.galaxy.note.utils.Navigator;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B#\b\u0016\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u0010\u0010\u001b\u001a\f\u0012\u0004\u0012\u00020\u000f0\u0017j\u0002`\u0018¢\u0006\u0004\b#\u0010$J&\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014J(\u0010\u0010\u001a\u00020\u000f2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\r\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0014J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\tH\u0002J\b\u0010\u0012\u001a\u00020\u000fH\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001e\u0010\u001b\u001a\f\u0012\u0004\u0012\u00020\u000f0\u0017j\u0002`\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\"\u0010\u001d\u001a\u00020\u001c8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006%"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "item", "", "onBindViewHolder", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "r", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "bundle", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "s", "Lkotlin/jvm/functions/Function0;", "onItemSelectedStateChange", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "mainCategory", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "getMainCategory$note_overseasRelease", "()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "setMainCategory$note_overseasRelease", "(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nStickerListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,90:1\n256#2,2:91\n256#2,2:93\n*S KotlinDebug\n*F\n+ 1 StickerListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter\n*L\n57#1:91,2\n58#1:93,2\n*E\n"})
/* loaded from: classes9.dex */
public final class StickerListAdapter extends BaseQuickAdapter<StickerModel, DataBindingHolder<ItemStickerBinding>> {
    public StickerCategoryModel mainCategory;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final StickerUiBundle bundle;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> onItemSelectedStateChange;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StickerListAdapter(@NotNull StickerUiBundle bundle, @NotNull Function0<Unit> onItemSelectedStateChange) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(onItemSelectedStateChange, "onItemSelectedStateChange");
        this.bundle = bundle;
        this.onItemSelectedStateChange = onItemSelectedStateChange;
        ItemClickUtilsKt.setOnDebouncedItemClick$default(this, 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.xym
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                StickerListAdapter.m47666m(StickerListAdapter.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
    }

    /* renamed from: m */
    public static final void m47666m(StickerListAdapter this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        this$0.m47667n(i);
    }

    @NotNull
    public final StickerCategoryModel getMainCategory$note_overseasRelease() {
        StickerCategoryModel stickerCategoryModel = this.mainCategory;
        if (stickerCategoryModel != null) {
            return stickerCategoryModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mainCategory");
        return null;
    }

    /* renamed from: n */
    public final void m47667n(int position) {
        List listOf;
        StickerModel item = getItem(position);
        if (item == null) {
            return;
        }
        if (this.bundle.isInSelectionMode(getMainCategory$note_overseasRelease())) {
            this.bundle.toggleSelection(getMainCategory$note_overseasRelease(), item);
            notifyItemChanged(position);
            this.onItemSelectedStateChange.invoke();
        } else {
            if (Intrinsics.areEqual(item.getUniqueId(), StickerValues.STICKER_MATERIAL_ADD_ID)) {
                Navigator.INSTANCE.navigateToStickerMaterialCenter();
                return;
            }
            m47668o();
            StickerUiBundle stickerUiBundle = this.bundle;
            StickerCategoryModel mainCategory$note_overseasRelease = getMainCategory$note_overseasRelease();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(item);
            RxBaseAction.execute$default(new InsertStickersToNoteAction(stickerUiBundle, mainCategory$note_overseasRelease, listOf), null, null, null, 7, null);
        }
    }

    /* renamed from: o */
    public final void m47668o() {
        StickerCategoryModel selectedSubCategory = this.bundle.getSelectedSubCategory(getMainCategory$note_overseasRelease());
        if (selectedSubCategory == null) {
            return;
        }
        StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteToolbarStickerEvent(getMainCategory$note_overseasRelease().getName() + '-' + selectedSubCategory.getName()));
    }

    public final void setMainCategory$note_overseasRelease(@NotNull StickerCategoryModel stickerCategoryModel) {
        Intrinsics.checkNotNullParameter(stickerCategoryModel, "<set-?>");
        this.mainCategory = stickerCategoryModel;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemStickerBinding> holder, int position, @Nullable final StickerModel item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        boolean isInSelectionMode = this.bundle.isInSelectionMode(getMainCategory$note_overseasRelease());
        boolean areEqual = Intrinsics.areEqual(item.getUniqueId(), StickerValues.STICKER_MATERIAL_ADD_ID);
        TintRelativeLayout rlySticker = holder.getBinding().rlySticker;
        Intrinsics.checkNotNullExpressionValue(rlySticker, "rlySticker");
        rlySticker.setVisibility(areEqual ^ true ? 0 : 8);
        TintFrameLayout flyAdd = holder.getBinding().flyAdd;
        Intrinsics.checkNotNullExpressionValue(flyAdd, "flyAdd");
        flyAdd.setVisibility(areEqual ? 0 : 8);
        holder.getBinding().flyAdd.setEnabled(!isInSelectionMode);
        holder.getBinding().ivAdd.setEnabled(!isInSelectionMode);
        if (areEqual) {
            return;
        }
        AppCompatImageView image = holder.getBinding().image;
        Intrinsics.checkNotNullExpressionValue(image, "image");
        StickerModelKt.loadInto(item, image, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.adapter.StickerListAdapter$onBindViewHolder$1
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
                StickerListAdapter stickerListAdapter = StickerListAdapter.this;
                try {
                    int indexOf = stickerListAdapter.getItems().indexOf(item);
                    if (indexOf >= 0) {
                        stickerListAdapter.notifyItemChanged(indexOf);
                    }
                } catch (Throwable unused) {
                    Debug.INSTANCE.m32037d("BaseQuickAdapter is detached");
                }
            }
        });
        boolean isStickerSelected = this.bundle.isStickerSelected(getMainCategory$note_overseasRelease(), item);
        ViewKt.setViewVisibleOrInvisible(holder.getBinding().checkbox, isInSelectionMode);
        holder.getBinding().checkbox.setSelected(isStickerSelected);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemStickerBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemStickerBinding inflate = ItemStickerBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate.getRoot());
    }
}
