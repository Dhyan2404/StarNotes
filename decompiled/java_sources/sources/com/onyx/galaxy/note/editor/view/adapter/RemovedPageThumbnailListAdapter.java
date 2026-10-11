package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.signature.ObjectKey;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.data.PageDataModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.glide.GlideApp;
import com.onyx.galaxy.note.databinding.ItemNoteRemovedPageThumbnailBinding;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\b\u0016\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J(\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\nH\u0014J\u0014\u0010\u0012\u001a\u00020\u00062\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u0014¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;", "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;", "Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;", "()V", "onBindViewHolder", "", "holder", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "position", "", "item", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "scalePageDisplayRectF", "list", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nPageThumbnailListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageThumbnailListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,270:1\n1855#2,2:271\n256#3,2:273\n*S KotlinDebug\n*F\n+ 1 PageThumbnailListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter\n*L\n207#1:271,2\n234#1:273,2\n*E\n"})
/* loaded from: classes9.dex */
public class RemovedPageThumbnailListAdapter extends BasePageListAdapter<PageDataModel, ItemNoteRemovedPageThumbnailBinding> {
    public final void scalePageDisplayRectF(@NotNull List<PageDataModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        for (PageDataModel pageDataModel : list) {
            ResManager resManager = ResManager.INSTANCE;
            RectFKt.scaleToPageByOrientation(pageDataModel.getPageDisplayRectF(), resManager.getDimension(C10651R.dimen.note_item_overview_width), resManager.getDimension(C10651R.dimen.note_item_overview_width));
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemNoteRemovedPageThumbnailBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemNoteRemovedPageThumbnailBinding inflate = ItemNoteRemovedPageThumbnailBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }

    @Override // com.onyx.galaxy.note.editor.view.adapter.BasePageListAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemNoteRemovedPageThumbnailBinding> holder, int position, @Nullable PageDataModel item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        View itemView = holder.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        setCheckView(itemView, item);
        TintCheckBox checkbox = holder.getBinding().checkbox;
        Intrinsics.checkNotNullExpressionValue(checkbox, "checkbox");
        checkbox.setVisibility(getSelectionMode() ? 0 : 8);
        TintTextView tintTextView = holder.getBinding().removedDate;
        ResManager resManager = ResManager.INSTANCE;
        String format = String.format(resManager.getStringSafely(C10651R.string.removed_date_colon), Arrays.copyOf(new Object[]{DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_2().format(new Date(item.getUpdatedAt()))}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        tintTextView.setText(format);
        TintTextView tintTextView2 = holder.getBinding().restorePos;
        String format2 = String.format(resManager.getStringSafely(C10651R.string.restore_pos_colon), Arrays.copyOf(new Object[]{Integer.valueOf(item.getPageIndex() + 1)}, 1));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        tintTextView2.setText(format2);
        ImageView image = holder.getBinding().image;
        Intrinsics.checkNotNullExpressionValue(image, "image");
        ViewKt.setLayoutWidth(image, (int) item.getPageDisplayRectF().width());
        ImageView image2 = holder.getBinding().image;
        Intrinsics.checkNotNullExpressionValue(image2, "image");
        ViewKt.setLayoutHeight(image2, Integer.valueOf((int) item.getPageDisplayRectF().height()));
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) holder.getBinding().card.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.gravity = 80;
        }
        View root = holder.getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        ViewKt.setLayoutWidth(root, -1);
        if (RectKt.isLandscape(item.getPageDisplayRectF())) {
            LinearLayout imageContainer = holder.getBinding().imageContainer;
            Intrinsics.checkNotNullExpressionValue(imageContainer, "imageContainer");
            ViewKt.setLayoutHeight(imageContainer, -2);
            LinearLayout imageContainer2 = holder.getBinding().imageContainer;
            Intrinsics.checkNotNullExpressionValue(imageContainer2, "imageContainer");
            ViewKt.setLayoutWidth(imageContainer2, -2);
        } else {
            LinearLayout imageContainer3 = holder.getBinding().imageContainer;
            Intrinsics.checkNotNullExpressionValue(imageContainer3, "imageContainer");
            ViewKt.setLayoutHeight(imageContainer3, Integer.valueOf(resManager.getDimens(C7384R.dimen.dp_146)));
            LinearLayout imageContainer4 = holder.getBinding().imageContainer;
            Intrinsics.checkNotNullExpressionValue(imageContainer4, "imageContainer");
            ViewKt.setLayoutWidth(imageContainer4, resManager.getDimens(C7384R.dimen.dp_146));
        }
        GlideApp.with(holder.getBinding().image).load((Object) item).diskCacheStrategy(DiskCacheStrategy.NONE).override(holder.getBinding().image.getWidth(), holder.getBinding().image.getHeight()).signature((Key) new ObjectKey(item.toObjectCacheKey())).dontAnimate().into(holder.getBinding().image);
        int dimens = resManager.getDimens(C7384R.dimen.dp_130);
        View root2 = holder.getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
        ViewKt.setLayoutParams(root2, dimens, -2);
    }
}
