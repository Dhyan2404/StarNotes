package com.onyx.galaxy.note.editor.view.adapter;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback;
import com.onyx.galaxy.note.databinding.ItemCandidateShortcutBinding;
import com.onyx.galaxy.note.editor.data.ShortcutType;
import com.onyx.galaxy.note.editor.view.adapter.CandidateShortcutAdapter;
import com.onyx.galaxy.note.utils.NoteLockUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0004R\u00020\u00000\u0003:\u00015B\u000f\u0012\u0006\u0010 \u001a\u00020\u001d¢\u0006\u0004\b3\u00104J&\u0010\n\u001a\u00020\t2\n\u0010\u0005\u001a\u00060\u0004R\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0014J$\u0010\u0010\u001a\u00060\u0004R\u00020\u00002\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u0010\u0010\u0013\u001a\u00020\t2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0014\u001a\u00020\t2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002J\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u001e\u0010\u001c\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0012\u0004\u0012\u00020\u00060\u001a2\u0006\u0010\u0015\u001a\u00020\u0002H\u0002R\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u001b\u0010.\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u001b\u00102\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u0010+\u001a\u0004\b0\u00101¨\u00066"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;", "Lcom/onyx/galaxy/note/editor/data/ShortcutType;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "viewHolder", "onViewHolderStartDrag", "onViewHolderEndDrag", "shortcutType", "", "supportShortcutType", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;", "getDragItem", "Lkotlin/Pair;", "", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "r", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "s", "F", "shadowRadius", "", "t", "J", "duration", "Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;", "u", "Lkotlin/Lazy;", "p", "()Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;", "uiFeature", "v", GoogleApiAvailabilityLight.f29016b, Constants.BOOLEAN_VALUE_SIG, "hasRecords", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "CandidateShortcutViewHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCandidateShortcutAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CandidateShortcutAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,175:1\n277#2,2:176\n277#2,2:178\n91#3,14:180\n*S KotlinDebug\n*F\n+ 1 CandidateShortcutAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter\n*L\n77#1:176,2\n78#1:178,2\n137#1:180,14\n*E\n"})
/* loaded from: classes9.dex */
public final class CandidateShortcutAdapter extends BaseQuickAdapter<ShortcutType, CandidateShortcutViewHolder> implements DragTouchCallback.DragAdapter<ShortcutType> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: s, reason: from kotlin metadata */
    public final float shadowRadius;

    /* renamed from: t, reason: from kotlin metadata */
    public final long duration;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final Lazy uiFeature;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final Lazy hasRecords;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0004\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\b\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0005H\u0016J\b\u0010\u000b\u001a\u00020\u0003H\u0016R\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter$CandidateShortcutViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;", "Lcom/onyx/galaxy/note/editor/data/ShortcutType;", "holder", "", "show", "", "showMergePreview", "isCurrentlyActive", "showDragState", "getData", "Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;", "binding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/adapter/CandidateShortcutAdapter;Lcom/onyx/galaxy/note/databinding/ItemCandidateShortcutBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public final class CandidateShortcutViewHolder extends RecyclerView.ViewHolder implements DragTouchCallback.DragItem<ShortcutType> {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemCandidateShortcutBinding binding;

        /* renamed from: I */
        public final /* synthetic */ CandidateShortcutAdapter f59427I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CandidateShortcutViewHolder(@NotNull CandidateShortcutAdapter candidateShortcutAdapter, ItemCandidateShortcutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f59427I = candidateShortcutAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemCandidateShortcutBinding getBinding() {
            return this.binding;
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
        public ShortcutType getData() {
            Object tag = this.itemView.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.galaxy.note.editor.data.ShortcutType");
            return (ShortcutType) tag;
        }
    }

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
            try {
                iArr[ShortcutType.SHORTCUT_ADD_PAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ShortcutType.SHORTCUT_PAGE_WHITESPACE_ADJUSTMENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CandidateShortcutAdapter(@NotNull EditorBundle editorBundle) {
        super(null, 1, null);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.shadowRadius = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_12);
        this.duration = r3.getInteger(C10651R.integer.list_item_drag_duration);
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<UIFeature>() { // from class: com.onyx.galaxy.note.editor.view.adapter.CandidateShortcutAdapter$uiFeature$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final UIFeature invoke() {
                EditorBundle editorBundle2;
                editorBundle2 = CandidateShortcutAdapter.this.editorBundle;
                return EditorBundleKt.getUiFeature(editorBundle2);
            }
        });
        this.uiFeature = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Boolean>() { // from class: com.onyx.galaxy.note.editor.view.adapter.CandidateShortcutAdapter$hasRecords$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                EditorBundle editorBundle2;
                editorBundle2 = CandidateShortcutAdapter.this.editorBundle;
                return Boolean.valueOf(!EditorBundleKt.noteBundle(editorBundle2).getAudioShapeBeanList().isEmpty());
            }
        });
        this.hasRecords = lazy2;
    }

    /* renamed from: q */
    public static final void m47446q(CandidateShortcutViewHolder holder, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(holder, "$holder");
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        holder.getBinding().shadowLayout.setShadowRadius(Float.valueOf(floatValue));
        if (floatValue == 0.0f) {
            ViewKt.setViewVisibleOrInvisible(holder.getBinding().vLine, true);
            holder.getBinding().shadowLayout.showShadow(false);
        }
    }

    /* renamed from: r */
    public static final void m47447r(CandidateShortcutViewHolder holder, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(holder, "$holder");
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        holder.getBinding().shadowLayout.setShadowRadius(Float.valueOf(((Float) animatedValue).floatValue()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragAdapter
    @NotNull
    public DragTouchCallback.DragItem<ShortcutType> getDragItem(@NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        return (DragTouchCallback.DragItem) viewHolder;
    }

    /* renamed from: n */
    public final boolean m47448n() {
        return ((Boolean) this.hasRecords.getValue()).booleanValue();
    }

    /* renamed from: o */
    public final Pair<String, Integer> m47449o(ShortcutType shortcutType) {
        return WhenMappings.$EnumSwitchMapping$0[shortcutType.ordinal()] == 1 ? ShortcutType.INSTANCE.getEncryptionData(EditorBundleKt.noteBundle(this.editorBundle).getNoteDoc().getNoteModel().hasEncryption()) : ShortcutType.INSTANCE.getShortcutModeData(shortcutType);
    }

    public final void onViewHolderEndDrag(@Nullable RecyclerView.ViewHolder viewHolder) {
        if (viewHolder == null) {
            return;
        }
        final CandidateShortcutViewHolder candidateShortcutViewHolder = (CandidateShortcutViewHolder) viewHolder;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.shadowRadius, 0.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.fnd
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CandidateShortcutAdapter.m47446q(CandidateShortcutAdapter.CandidateShortcutViewHolder.this, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(ofFloat);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.onyx.galaxy.note.editor.view.adapter.CandidateShortcutAdapter$onViewHolderEndDrag$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
                CandidateShortcutAdapter.this.notifyDataSetChanged();
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
        final CandidateShortcutViewHolder candidateShortcutViewHolder = (CandidateShortcutViewHolder) viewHolder;
        candidateShortcutViewHolder.getBinding().shadowLayout.showShadow(true);
        ViewKt.setViewVisibleOrInvisible(candidateShortcutViewHolder.getBinding().vLine, false);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, this.shadowRadius);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.gnd
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CandidateShortcutAdapter.m47447r(CandidateShortcutAdapter.CandidateShortcutViewHolder.this, valueAnimator);
            }
        });
        ofFloat.setDuration(this.duration);
        ofFloat.start();
    }

    /* renamed from: p */
    public final UIFeature m47450p() {
        return (UIFeature) this.uiFeature.getValue();
    }

    public final boolean supportShortcutType(@Nullable ShortcutType shortcutType) {
        if (shortcutType == null) {
            return false;
        }
        if (shortcutType == ShortcutType.SHORTCUT_AUDIO_SET) {
            return m47448n();
        }
        if (shortcutType == ShortcutType.SHORTCUT_ENCRYPTION) {
            return NoteLockUtils.INSTANCE.isEncryptionEnabled();
        }
        if (m47450p().supportEditPage()) {
            return true;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[shortcutType.ordinal()];
        return (i == 2 || i == 3) ? false : true;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull CandidateShortcutViewHolder holder, int position, @Nullable ShortcutType item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        boolean supportShortcutType = supportShortcutType(item);
        int i = !supportShortcutType ? C7996R.color.theme_text_color_04 : C7996R.color.theme_icon_color_03;
        int i2 = !supportShortcutType ? C7996R.color.theme_text_color_04 : C7996R.color.theme_text_color_03;
        int i3 = !supportShortcutType ? C7996R.color.theme_text_color_04 : C7996R.color.theme_divider_color_01;
        Pair<String, Integer> m47449o = m47449o(item);
        ItemCandidateShortcutBinding binding = holder.getBinding();
        binding.menuIcon.setImageTintList(i);
        binding.tvTitle.setTextColor(ThemeUtils.getColorById(i2));
        binding.vLine.setBackgroundColor(ThemeUtils.getColorById(i3));
        TintImageView icEye = binding.icEye;
        Intrinsics.checkNotNullExpressionValue(icEye, "icEye");
        icEye.setVisibility(supportShortcutType ^ true ? 4 : 0);
        TintImageView icDragTag = binding.icDragTag;
        Intrinsics.checkNotNullExpressionValue(icDragTag, "icDragTag");
        icDragTag.setVisibility(supportShortcutType ^ true ? 4 : 0);
        binding.menuIcon.setImageResource(m47449o.getSecond().intValue());
        binding.tvTitle.setText(m47449o.getFirst());
        ViewKt.setViewVisibleOrGone(binding.vLine, position < getItemCount() - 1);
        binding.executePendingBindings();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public CandidateShortcutViewHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemCandidateShortcutBinding inflate = ItemCandidateShortcutBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new CandidateShortcutViewHolder(this, inflate);
    }
}
