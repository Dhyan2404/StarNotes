package com.onyx.galaxy.note.editor.view.adapter;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseMultiItemAdapter;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback;
import com.onyx.galaxy.note.databinding.ItemCustomShortcutBarBinding;
import com.onyx.galaxy.note.databinding.ItemCustomShortcutBarTitleBinding;
import com.onyx.galaxy.note.editor.data.CustomShortcutBarBean;
import com.onyx.galaxy.note.editor.data.ShortcutType;
import com.onyx.galaxy.note.editor.view.adapter.CustomShortcutBarAdapter;
import com.onyx.galaxy.note.utils.NoteLockUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0002()B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b&\u0010'J\u0010\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\b\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u000f\u001a\u00020\u0006H\u0002J\b\u0010\u0010\u001a\u00020\u0006H\u0002J\b\u0010\u0011\u001a\u00020\u0006H\u0002R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001b\u0010\"\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b\u0017\u0010!R\u001b\u0010%\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010 \u001a\u0004\b\u0013\u0010$¨\u0006*"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;", "Lcom/chad/library/adapter4/BaseMultiItemAdapter;", "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "viewHolder", "", "onViewHolderStartDrag", "onViewHolderEndDrag", "Lcom/onyx/galaxy/note/editor/data/ShortcutType;", "shortcutType", "", "supportShortcutType", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;", "getDragItem", "q", "s", "r", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "t", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "u", "F", "shadowRadius", "", "v", "J", "duration", "Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;", "w", "Lkotlin/Lazy;", "()Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;", "uiFeature", "x", Constants.BOOLEAN_VALUE_SIG, "hasRecords", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "SectionTitleItemViewHolder", "ShortcutItemViewHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCustomShortcutBarAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomShortcutBarAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,239:1\n91#2,14:240\n*S KotlinDebug\n*F\n+ 1 CustomShortcutBarAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter\n*L\n203#1:240,14\n*E\n"})
/* loaded from: classes9.dex */
public final class CustomShortcutBarAdapter extends BaseMultiItemAdapter<CustomShortcutBarBean> implements DragTouchCallback.DragAdapter<CustomShortcutBarBean> {

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: u, reason: from kotlin metadata */
    public final float shadowRadius;

    /* renamed from: v, reason: from kotlin metadata */
    public final long duration;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final Lazy uiFeature;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public final Lazy hasRecords;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0004\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\b\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0005H\u0016J\b\u0010\u000b\u001a\u00020\u0003H\u0016R\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$SectionTitleItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;", "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;", "holder", "", "show", "", "showMergePreview", "isCurrentlyActive", "showDragState", "getData", "Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarTitleBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarTitleBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarTitleBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarTitleBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public final class SectionTitleItemViewHolder extends RecyclerView.ViewHolder implements DragTouchCallback.DragItem<CustomShortcutBarBean> {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemCustomShortcutBarTitleBinding viewBinding;

        /* renamed from: I */
        public final /* synthetic */ CustomShortcutBarAdapter f59451I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SectionTitleItemViewHolder(@NotNull CustomShortcutBarAdapter customShortcutBarAdapter, ItemCustomShortcutBarTitleBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.f59451I = customShortcutBarAdapter;
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemCustomShortcutBarTitleBinding getViewBinding() {
            return this.viewBinding;
        }

        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragItem
        public void showDragState(@NotNull RecyclerView.ViewHolder holder, boolean isCurrentlyActive) {
            Intrinsics.checkNotNullParameter(holder, "holder");
        }

        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragItem
        public void showMergePreview(@Nullable RecyclerView.ViewHolder holder, boolean show) {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragItem
        @NotNull
        public CustomShortcutBarBean getData() {
            Object tag = this.itemView.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.galaxy.note.editor.data.CustomShortcutBarBean");
            return (CustomShortcutBarBean) tag;
        }
    }

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0004\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\b\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0005H\u0016J\b\u0010\u000b\u001a\u00020\u0003H\u0016R\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;", "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;", "holder", "", "show", "", "showMergePreview", "isCurrentlyActive", "showDragState", "getData", "Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public final class ShortcutItemViewHolder extends RecyclerView.ViewHolder implements DragTouchCallback.DragItem<CustomShortcutBarBean> {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemCustomShortcutBarBinding viewBinding;

        /* renamed from: I */
        public final /* synthetic */ CustomShortcutBarAdapter f59453I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ShortcutItemViewHolder(@NotNull CustomShortcutBarAdapter customShortcutBarAdapter, ItemCustomShortcutBarBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.f59453I = customShortcutBarAdapter;
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemCustomShortcutBarBinding getViewBinding() {
            return this.viewBinding;
        }

        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragItem
        public void showDragState(@NotNull RecyclerView.ViewHolder holder, boolean isCurrentlyActive) {
            Intrinsics.checkNotNullParameter(holder, "holder");
        }

        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragItem
        public void showMergePreview(@Nullable RecyclerView.ViewHolder holder, boolean show) {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragItem
        @NotNull
        public CustomShortcutBarBean getData() {
            Object tag = this.itemView.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.galaxy.note.editor.data.CustomShortcutBarBean");
            return (CustomShortcutBarBean) tag;
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ShortcutType.values().length];
            try {
                iArr[ShortcutType.SHORTCUT_ADD_PAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_PAGE_WHITESPACE_ADJUSTMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomShortcutBarAdapter(@NotNull EditorBundle editorBundle) {
        super(null, 1, null);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.shadowRadius = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_12);
        this.duration = r3.getInteger(C10651R.integer.list_item_drag_duration);
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<UIFeature>() { // from class: com.onyx.galaxy.note.editor.view.adapter.CustomShortcutBarAdapter$uiFeature$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final UIFeature invoke() {
                EditorBundle editorBundle2;
                editorBundle2 = CustomShortcutBarAdapter.this.editorBundle;
                return EditorBundleKt.getUiFeature(editorBundle2);
            }
        });
        this.uiFeature = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Boolean>() { // from class: com.onyx.galaxy.note.editor.view.adapter.CustomShortcutBarAdapter$hasRecords$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                EditorBundle editorBundle2;
                editorBundle2 = CustomShortcutBarAdapter.this.editorBundle;
                return Boolean.valueOf(!EditorBundleKt.noteBundle(editorBundle2).getAudioShapeBeanList().isEmpty());
            }
        });
        this.hasRecords = lazy2;
        m47492q();
        onItemViewType(new BaseMultiItemAdapter.OnItemViewTypeListener() { // from class: com.sunia.HTREnginev2.poe
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnItemViewTypeListener
            public final int onItemViewType(int i, List list) {
                int m47489p;
                m47489p = CustomShortcutBarAdapter.m47489p(i, list);
                return m47489p;
            }
        });
    }

    /* renamed from: p */
    public static final int m47489p(int i, List list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return ((CustomShortcutBarBean) list.get(i)).getItemType();
    }

    /* renamed from: v */
    public static final void m47490v(ShortcutItemViewHolder holder, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(holder, "$holder");
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        holder.getViewBinding().shadowLayout.setShadowRadius(Float.valueOf(floatValue));
        if (floatValue == 0.0f) {
            ViewKt.setViewVisibleOrInvisible(holder.getViewBinding().vLine, true);
            holder.getViewBinding().shadowLayout.showShadow(false);
        }
    }

    /* renamed from: w */
    public static final void m47491w(ShortcutItemViewHolder holder, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(holder, "$holder");
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        holder.getViewBinding().shadowLayout.setShadowRadius(Float.valueOf(((Float) animatedValue).floatValue()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragAdapter
    @NotNull
    public DragTouchCallback.DragItem<CustomShortcutBarBean> getDragItem(@NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        return (DragTouchCallback.DragItem) viewHolder;
    }

    public final void onViewHolderEndDrag(@Nullable RecyclerView.ViewHolder viewHolder) {
        if (viewHolder == null) {
            return;
        }
        final ShortcutItemViewHolder shortcutItemViewHolder = (ShortcutItemViewHolder) viewHolder;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.shadowRadius, 0.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.qoe
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CustomShortcutBarAdapter.m47490v(CustomShortcutBarAdapter.ShortcutItemViewHolder.this, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(ofFloat);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.onyx.galaxy.note.editor.view.adapter.CustomShortcutBarAdapter$onViewHolderEndDrag$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
                CustomShortcutBarAdapter.this.notifyDataSetChanged();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
            }
        });
        ofFloat.setDuration(this.duration);
        ofFloat.start();
    }

    public final void onViewHolderStartDrag(@Nullable RecyclerView.ViewHolder viewHolder) {
        if (viewHolder == null) {
            return;
        }
        final ShortcutItemViewHolder shortcutItemViewHolder = (ShortcutItemViewHolder) viewHolder;
        shortcutItemViewHolder.getViewBinding().shadowLayout.showShadow(true);
        ViewKt.setViewVisibleOrInvisible(shortcutItemViewHolder.getViewBinding().vLine, false);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, this.shadowRadius);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.ooe
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CustomShortcutBarAdapter.m47491w(CustomShortcutBarAdapter.ShortcutItemViewHolder.this, valueAnimator);
            }
        });
        ofFloat.setDuration(this.duration);
        ofFloat.start();
    }

    /* renamed from: q */
    public final void m47492q() {
        m47493r();
        m47494s();
    }

    /* renamed from: r */
    public final void m47493r() {
        addItemType(1, new BaseMultiItemAdapter.OnMultiItemAdapterListener<CustomShortcutBarBean, SectionTitleItemViewHolder>() { // from class: com.onyx.galaxy.note.editor.view.adapter.CustomShortcutBarAdapter$addSectionTitleItem$1
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull CustomShortcutBarAdapter.SectionTitleItemViewHolder holder, int position, @Nullable CustomShortcutBarBean item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                TintTextView tintTextView = holder.getViewBinding().tvTitle;
                ResManager resManager = ResManager.INSTANCE;
                Intrinsics.checkNotNull(item);
                Integer titleRes = item.getTitleRes();
                Intrinsics.checkNotNull(titleRes);
                tintTextView.setText(resManager.getString(titleRes.intValue()));
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public CustomShortcutBarAdapter.SectionTitleItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                CustomShortcutBarAdapter customShortcutBarAdapter = CustomShortcutBarAdapter.this;
                ItemCustomShortcutBarTitleBinding inflate = ItemCustomShortcutBarTitleBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new CustomShortcutBarAdapter.SectionTitleItemViewHolder(customShortcutBarAdapter, inflate);
            }
        });
    }

    /* renamed from: s */
    public final void m47494s() {
        addItemType(2, new BaseMultiItemAdapter.OnMultiItemAdapterListener<CustomShortcutBarBean, ShortcutItemViewHolder>() { // from class: com.onyx.galaxy.note.editor.view.adapter.CustomShortcutBarAdapter$addShortcutItem$1

            @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
            /* loaded from: classes9.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[ShortcutType.values().length];
                    try {
                        iArr[ShortcutType.SHORTCUT_ENCRYPTION.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* renamed from: a */
            public final Pair<String, Integer> m47497a(ShortcutType shortcutType) {
                EditorBundle editorBundle;
                if (WhenMappings.$EnumSwitchMapping$0[shortcutType.ordinal()] != 1) {
                    return ShortcutType.INSTANCE.getShortcutModeData(shortcutType);
                }
                ShortcutType.Companion companion = ShortcutType.INSTANCE;
                editorBundle = CustomShortcutBarAdapter.this.editorBundle;
                return companion.getEncryptionData(EditorBundleKt.noteBundle(editorBundle).getNoteDoc().getNoteModel().hasEncryption());
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull CustomShortcutBarAdapter.ShortcutItemViewHolder holder, int position, @Nullable CustomShortcutBarBean item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                if (item == null || item.getShortcutType() == null) {
                    return;
                }
                boolean supportShortcutType = CustomShortcutBarAdapter.this.supportShortcutType(item.getShortcutType());
                int i = !supportShortcutType ? C7996R.color.theme_text_color_04 : C7996R.color.theme_icon_color_01;
                int i2 = !supportShortcutType ? C7996R.color.theme_text_color_04 : C7996R.color.theme_text_color_01;
                int i3 = !supportShortcutType ? C7996R.color.theme_text_color_04 : C7996R.color.theme_divider_color_01;
                ItemCustomShortcutBarBinding viewBinding = holder.getViewBinding();
                CustomShortcutBarAdapter customShortcutBarAdapter = CustomShortcutBarAdapter.this;
                ShortcutType shortcutType = item.getShortcutType();
                Pair<String, Integer> m47497a = m47497a(shortcutType);
                viewBinding.menuIcon.setImageTintList(i);
                viewBinding.tvTitle.setTextColor(ThemeUtils.getColorById(i2));
                viewBinding.vLine.setBackgroundColor(ThemeUtils.getColorById(i3));
                TintImageView icDragTag = viewBinding.icDragTag;
                Intrinsics.checkNotNullExpressionValue(icDragTag, "icDragTag");
                icDragTag.setVisibility(supportShortcutType ^ true ? 4 : 0);
                viewBinding.menuIcon.setImageResource(m47497a.getSecond().intValue());
                viewBinding.tvTitle.setText(m47497a.getFirst());
                boolean z = true;
                ViewKt.setViewVisibleOrGone(viewBinding.vLine, position < customShortcutBarAdapter.getItemCount() - 1);
                viewBinding.tvTitle.setSelected(true);
                TintImageView icEye = viewBinding.icEye;
                Intrinsics.checkNotNullExpressionValue(icEye, "icEye");
                if (supportShortcutType && shortcutType.getRemovable()) {
                    z = false;
                }
                icEye.setVisibility(z ? 4 : 0);
                viewBinding.executePendingBindings();
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public CustomShortcutBarAdapter.ShortcutItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                CustomShortcutBarAdapter customShortcutBarAdapter = CustomShortcutBarAdapter.this;
                ItemCustomShortcutBarBinding inflate = ItemCustomShortcutBarBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new CustomShortcutBarAdapter.ShortcutItemViewHolder(customShortcutBarAdapter, inflate);
            }
        });
    }

    public final boolean supportShortcutType(@Nullable ShortcutType shortcutType) {
        if (shortcutType == null) {
            return false;
        }
        if (shortcutType == ShortcutType.SHORTCUT_AUDIO_SET) {
            return m47495t();
        }
        if (shortcutType == ShortcutType.SHORTCUT_ENCRYPTION) {
            return NoteLockUtils.INSTANCE.isEncryptionEnabled();
        }
        if (m47496u().supportEditPage()) {
            return true;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[shortcutType.ordinal()];
        return (i == 1 || i == 2) ? false : true;
    }

    /* renamed from: t */
    public final boolean m47495t() {
        return ((Boolean) this.hasRecords.getValue()).booleanValue();
    }

    /* renamed from: u */
    public final UIFeature m47496u() {
        return (UIFeature) this.uiFeature.getValue();
    }
}
