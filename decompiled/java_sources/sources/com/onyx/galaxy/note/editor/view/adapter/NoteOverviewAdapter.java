package com.onyx.galaxy.note.editor.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.SpanUtils;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.note.common.utils.ImageManager;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.NotePageBean;
import com.onyx.galaxy.note.databinding.ItemNoteOverviewBinding;
import com.onyx.galaxy.note.editor.view.adapter.NoteOverviewAdapter;
import com.onyx.galaxy.note.editor.viewmodel.NoteOverviewViewModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.util.Date;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u00039:;B\u0007¢\u0006\u0004\b7\u00108J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\"\u0010\f\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u0012\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\tH\u0014J\u0018\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u001aH\u0002J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0015H\u0002R$\u0010%\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010+\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010&\u001a\u0004\b-\u0010(\"\u0004\b.\u0010*R$\u00106\u001a\u0004\u0018\u00010/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105¨\u0006<"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;", "Lcom/onyx/galaxy/note/category/data/NotePageBean;", "Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;", "", "selectedId", "", "updateSelected", "holder", "", "position", "item", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "Landroid/widget/TextView;", "textView", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModelBean", "z", "Landroid/widget/ImageView;", "imageView", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "t", "syncNoteModel", "s", "Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;", "y", "Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;", "getListener", "()Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;", "setListener", "(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, Constants.STRING_SIG, "getKeyword", "()Ljava/lang/String;", "setKeyword", "(Ljava/lang/String;)V", "keyword", "A", "getSelectedId", "setSelectedId", "Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;", "B", "Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;", "getViewmodel", "()Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;", "setViewmodel", "(Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;)V", "viewmodel", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "a", "NoteOverviewHolder", "NoteOverviewListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteOverviewAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOverviewAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,170:1\n350#2,7:171\n350#2,7:178\n256#3,2:185\n*S KotlinDebug\n*F\n+ 1 NoteOverviewAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter\n*L\n59#1:171,7\n60#1:178,7\n76#1:185,2\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteOverviewAdapter extends BaseSwipeAbleDifferAdapter<NotePageBean, NoteOverviewHolder> {

    /* renamed from: A, reason: from kotlin metadata */
    @Nullable
    public String selectedId;

    /* renamed from: B, reason: from kotlin metadata */
    @Nullable
    public NoteOverviewViewModel viewmodel;

    /* renamed from: y, reason: from kotlin metadata */
    @Nullable
    public NoteOverviewListener listener;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public String keyword;

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;", "binding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemNoteOverviewBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class NoteOverviewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemNoteOverviewBinding binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NoteOverviewHolder(@NotNull ItemNoteOverviewBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.binding = binding;
        }

        @NotNull
        public final ItemNoteOverviewBinding getBinding() {
            return this.binding;
        }
    }

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;", "", "onItemClick", "", "item", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "onItemLongClick", "view", "Landroid/view/View;", "onItemMore", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface NoteOverviewListener {
        void onItemClick(@NotNull NoteModelBean item);

        void onItemLongClick(@NotNull View view, @NotNull NoteModelBean item);

        void onItemMore(@NotNull View view, @NotNull NoteModelBean item);
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.NoteOverviewAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C12280a extends DiffUtil.ItemCallback<NotePageBean> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        @SuppressLint({"DiffUtilEquals"})
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(@NotNull NotePageBean oldItem, @NotNull NotePageBean newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return (oldItem.getNoteModelBean() == null || newItem.getNoteModelBean() == null || !Intrinsics.areEqual(oldItem.getNoteModelBean().getUniqueId(), newItem.getNoteModelBean().getUniqueId())) ? false : true;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(@NotNull NotePageBean oldItem, @NotNull NotePageBean newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }

    public NoteOverviewAdapter() {
        super(new C12280a());
        this.keyword = "";
        this.selectedId = "";
    }

    /* renamed from: u */
    public static final void m47637u(String filePath, NoteOverviewAdapter this$0, ImageView imageView) {
        Intrinsics.checkNotNullParameter(filePath, "$filePath");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(imageView, "$imageView");
        if (!FileUtils.INSTANCE.fileExist(filePath)) {
            imageView.setImageBitmap(null);
            return;
        }
        Glide.with(this$0.getContext()).load(filePath).signature(ImageManager.INSTANCE.getDefaultFileCacheKey(new File(filePath))).override(imageView.getWidth(), imageView.getHeight()).dontAnimate().into(imageView);
    }

    /* renamed from: v */
    public static final boolean m47638v(NoteOverviewAdapter this$0, NoteModelBean note, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(note, "$note");
        NoteOverviewListener noteOverviewListener = this$0.listener;
        if (noteOverviewListener == null) {
            return true;
        }
        Intrinsics.checkNotNull(view);
        noteOverviewListener.onItemLongClick(view, note);
        return true;
    }

    /* renamed from: w */
    public static final void m47639w(NoteOverviewAdapter this$0, NoteModelBean note, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(note, "$note");
        NoteOverviewListener noteOverviewListener = this$0.listener;
        if (noteOverviewListener != null) {
            noteOverviewListener.onItemClick(note);
        }
    }

    /* renamed from: x */
    public static final void m47640x(NoteOverviewAdapter this$0, NoteModelBean note, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(note, "$note");
        NoteOverviewListener noteOverviewListener = this$0.listener;
        if (noteOverviewListener != null) {
            noteOverviewListener.onItemClick(note);
        }
    }

    /* renamed from: y */
    public static final void m47641y(NoteOverviewAdapter this$0, NoteModelBean note, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(note, "$note");
        NoteOverviewListener noteOverviewListener = this$0.listener;
        if (noteOverviewListener != null) {
            Intrinsics.checkNotNull(view);
            noteOverviewListener.onItemMore(view, note);
        }
    }

    @NotNull
    public final String getKeyword() {
        return this.keyword;
    }

    @Nullable
    public final NoteOverviewListener getListener() {
        return this.listener;
    }

    @Nullable
    public final String getSelectedId() {
        return this.selectedId;
    }

    @Nullable
    public final NoteOverviewViewModel getViewmodel() {
        return this.viewmodel;
    }

    /* renamed from: s */
    public final String m47642s(SyncNoteModel syncNoteModel) {
        String format = DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_3().format(new Date(syncNoteModel.getUpdatedAt()));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    public final void setKeyword(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.keyword = str;
    }

    public final void setListener(@Nullable NoteOverviewListener noteOverviewListener) {
        this.listener = noteOverviewListener;
    }

    public final void setSelectedId(@Nullable String str) {
        this.selectedId = str;
    }

    public final void setViewmodel(@Nullable NoteOverviewViewModel noteOverviewViewModel) {
        this.viewmodel = noteOverviewViewModel;
    }

    /* renamed from: t */
    public final void m47643t(final ImageView imageView, NoteModelBean noteModelBean) {
        final String obj = ThumbnailPaths.INSTANCE.appThumbnailPath(noteModelBean.getUniqueId()).toAbsolutePath().toString();
        if (noteModelBean.getIsPortrait()) {
            ResManager resManager = ResManager.INSTANCE;
            ViewKt.setLayoutParams(imageView, resManager.getDimens(C7384R.dimen.dp_130), resManager.getDimens(C7384R.dimen.dp_162));
        } else {
            ResManager resManager2 = ResManager.INSTANCE;
            ViewKt.setLayoutParams(imageView, resManager2.getDimens(C7384R.dimen.dp_162), resManager2.getDimens(C7384R.dimen.dp_130));
        }
        if (getIsScrollBarDragging()) {
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            imageView.setImageResource(C10651R.drawable.icon_holder_logo);
        } else {
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            imageView.post(new Runnable() { // from class: com.sunia.HTREnginev2.pzj
                @Override // java.lang.Runnable
                public final void run() {
                    NoteOverviewAdapter.m47637u(obj, this, imageView);
                }
            });
        }
    }

    public final void updateSelected(@NotNull String selectedId) {
        int i;
        Intrinsics.checkNotNullParameter(selectedId, "selectedId");
        Iterator<NotePageBean> it2 = getItems().iterator();
        int i2 = 0;
        while (true) {
            i = -1;
            if (!it2.hasNext()) {
                i2 = -1;
                break;
            }
            NotePageBean next = it2.next();
            String str = this.selectedId;
            NoteModelBean noteModelBean = next.getNoteModelBean();
            if (Intrinsics.areEqual(str, noteModelBean != null ? noteModelBean.getUniqueId() : null)) {
                break;
            } else {
                i2++;
            }
        }
        Iterator<NotePageBean> it3 = getItems().iterator();
        int i3 = 0;
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            NoteModelBean noteModelBean2 = it3.next().getNoteModelBean();
            if (Intrinsics.areEqual(selectedId, noteModelBean2 != null ? noteModelBean2.getUniqueId() : null)) {
                i = i3;
                break;
            }
            i3++;
        }
        this.selectedId = selectedId;
        notifyItemChanged(i2);
        notifyItemChanged(i);
        if (i >= 0) {
            RecyclerView.LayoutManager layoutManager = getRecyclerView().getLayoutManager();
            LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
            if (linearLayoutManager == null) {
                return;
            }
            linearLayoutManager.scrollToPositionWithOffset(i, 0);
        }
    }

    /* renamed from: z */
    public final void m47644z(TextView textView, SyncNoteModel noteModelBean) {
        textView.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_text_color_01));
        SpanUtils spanUtils = SpanUtils.INSTANCE;
        String title = noteModelBean.getTitle();
        if (title == null) {
            title = "";
        }
        textView.setText(SpanUtils.highLightKeyword$default(spanUtils, title, this.keyword, ThemeUtils.getColorById(C7996R.color.theme_text_color_highlight_01), false, 8, null));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull NoteOverviewHolder holder, int position, @Nullable NotePageBean item) {
        final NoteModelBean noteModelBean;
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null || (noteModelBean = item.getNoteModelBean()) == null) {
            return;
        }
        holder.getBinding().getRoot().setSelected(Intrinsics.areEqual(this.selectedId, noteModelBean.getUniqueId()));
        holder.getBinding().tvDate.setText(m47642s(noteModelBean));
        TintTextView tvName = holder.getBinding().tvName;
        Intrinsics.checkNotNullExpressionValue(tvName, "tvName");
        m47644z(tvName, noteModelBean);
        NoteOverviewViewModel noteOverviewViewModel = this.viewmodel;
        boolean isNoteReLocked = noteOverviewViewModel != null ? noteOverviewViewModel.isNoteReLocked(noteModelBean) : false;
        ShapeableImageView ivThumbnailLock = holder.getBinding().ivThumbnailLock;
        Intrinsics.checkNotNullExpressionValue(ivThumbnailLock, "ivThumbnailLock");
        ivThumbnailLock.setVisibility(isNoteReLocked ? 0 : 8);
        ShapeableImageView ivThumbnail = holder.getBinding().ivThumbnail;
        Intrinsics.checkNotNullExpressionValue(ivThumbnail, "ivThumbnail");
        m47643t(ivThumbnail, noteModelBean);
        holder.getBinding().ivThumbnail.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.sunia.HTREnginev2.lzj
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean m47638v;
                m47638v = NoteOverviewAdapter.m47638v(NoteOverviewAdapter.this, noteModelBean, view);
                return m47638v;
            }
        });
        ShapeableImageView ivThumbnail2 = holder.getBinding().ivThumbnail;
        Intrinsics.checkNotNullExpressionValue(ivThumbnail2, "ivThumbnail");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivThumbnail2, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.mzj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteOverviewAdapter.m47639w(NoteOverviewAdapter.this, noteModelBean, view);
            }
        }, 1, null);
        View root = holder.getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        com.onyx.android.sdk.extension.ViewKt.click$default(root, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.nzj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteOverviewAdapter.m47640x(NoteOverviewAdapter.this, noteModelBean, view);
            }
        }, 1, null);
        TintImageView ivMore = holder.getBinding().ivMore;
        Intrinsics.checkNotNullExpressionValue(ivMore, "ivMore");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivMore, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ozj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteOverviewAdapter.m47641y(NoteOverviewAdapter.this, noteModelBean, view);
            }
        }, 1, null);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public NoteOverviewHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemNoteOverviewBinding inflate = ItemNoteOverviewBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new NoteOverviewHolder(inflate);
    }
}
