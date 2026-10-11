package com.onyx.galaxy.note.category.p044ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u0013\b\u0016\u0012\b\u0010/\u001a\u0004\u0018\u00010.¢\u0006\u0004\b0\u00101B\u001d\b\u0016\u0012\b\u0010/\u001a\u0004\u0018\u00010.\u0012\b\u00103\u001a\u0004\u0018\u000102¢\u0006\u0004\b0\u00104B%\b\u0016\u0012\b\u0010/\u001a\u0004\u0018\u00010.\u0012\b\u00103\u001a\u0004\u0018\u000102\u0012\u0006\u00105\u001a\u00020\u0003¢\u0006\u0004\b0\u00106J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0018\u0010\t\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0003H\u0014J\b\u0010\n\u001a\u00020\u0005H\u0014J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u001a\u0010\u000e\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002R\u001b\u0010\u0013\u001a\u00020\u00038BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010#\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010%\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010\"R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010-\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010*¨\u00067"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/TemplateParamsContainer;", "Landroid/widget/LinearLayout;", "Lcom/onyx/galaxy/note/category/ui/IOrientationChange;", "", "viewOrientation", "", "setChildrenView", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "onFinishInflate", "onOrientationChange", "Landroid/view/ViewGroup;", "paramsContainer", "a", "e", "Lkotlin/Lazy;", "getMaxWidth", "()I", "maxWidth", "", C6997f.f39671c, "getWidthPercent", "()F", "widthPercent", "Landroid/widget/EditText;", C6998g.f39679a, "Landroid/widget/EditText;", "noteTitleEditText", "Landroidx/recyclerview/widget/RecyclerView;", C6999h.f39688c, "Landroidx/recyclerview/widget/RecyclerView;", "tagRecycleView", "i", "Landroid/view/ViewGroup;", "tagParamsContainer", "j", "coverParamsContainer", C4921e.f26537n, "formatParamsContainer", "Landroid/view/View;", "l", "Landroid/view/View;", "paramsTagDivider", "m", "paramsCoverDivider", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTemplateParamsContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateParamsContainer.kt\ncom/onyx/galaxy/note/category/ui/TemplateParamsContainer\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,85:1\n256#2,2:86\n256#2,2:88\n256#2,2:90\n256#2,2:92\n*S KotlinDebug\n*F\n+ 1 TemplateParamsContainer.kt\ncom/onyx/galaxy/note/category/ui/TemplateParamsContainer\n*L\n65#1:86,2\n66#1:88,2\n67#1:90,2\n68#1:92,2\n*E\n"})
/* loaded from: classes9.dex */
public final class TemplateParamsContainer extends LinearLayout implements IOrientationChange {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy maxWidth;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy widthPercent;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public EditText noteTitleEditText;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public RecyclerView tagRecycleView;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public ViewGroup tagParamsContainer;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public ViewGroup coverParamsContainer;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public ViewGroup formatParamsContainer;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public View paramsTagDivider;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public View paramsCoverDivider;

    public TemplateParamsContainer(@Nullable Context context) {
        this(context, null);
    }

    private final int getMaxWidth() {
        return ((Number) this.maxWidth.getValue()).intValue();
    }

    private final float getWidthPercent() {
        return ((Number) this.widthPercent.getValue()).floatValue();
    }

    private final void setChildrenView(int viewOrientation) {
        EditText editText = this.noteTitleEditText;
        if (editText != null) {
            editText.setVisibility(viewOrientation == 1 ? 0 : 8);
        }
        RecyclerView recyclerView = this.tagRecycleView;
        if (recyclerView != null) {
            recyclerView.setVisibility(viewOrientation == 1 ? 0 : 8);
        }
        View view = this.paramsTagDivider;
        if (view != null) {
            view.setVisibility(viewOrientation == 0 ? 0 : 8);
        }
        View view2 = this.paramsCoverDivider;
        if (view2 != null) {
            view2.setVisibility(viewOrientation == 0 ? 0 : 8);
        }
        m43887a(this.tagParamsContainer, viewOrientation);
        m43887a(this.coverParamsContainer, viewOrientation);
        m43887a(this.formatParamsContainer, viewOrientation);
    }

    /* renamed from: a */
    public final void m43887a(ViewGroup paramsContainer, int viewOrientation) {
        if (paramsContainer != null) {
            ViewGroup.LayoutParams layoutParams = paramsContainer.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            if (viewOrientation == 1) {
                layoutParams2.width = -1;
            } else {
                layoutParams2.width = -2;
            }
            paramsContainer.setLayoutParams(layoutParams2);
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.noteTitleEditText = (EditText) findViewById(C10651R.id.et_note_name);
        this.tagRecycleView = (RecyclerView) findViewById(C10651R.id.cl_tag_container);
        this.tagParamsContainer = (ViewGroup) findViewById(C10651R.id.ll_params_tag_container);
        this.coverParamsContainer = (ViewGroup) findViewById(C10651R.id.ll_params_cover_container);
        this.formatParamsContainer = (ViewGroup) findViewById(C10651R.id.ll_params_format_container);
        this.paramsTagDivider = findViewById(C10651R.id.view_params_tag_divider);
        this.paramsCoverDivider = findViewById(C10651R.id.view_params_cover_divider);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        float size = View.MeasureSpec.getSize(widthMeasureSpec) * getWidthPercent();
        super.onMeasure(size > ((float) getMaxWidth()) ? View.MeasureSpec.makeMeasureSpec(getMaxWidth(), 1073741824) : View.MeasureSpec.makeMeasureSpec((int) size, 1073741824), heightMeasureSpec);
    }

    @Override // com.onyx.galaxy.note.category.p044ui.IOrientationChange
    public void onOrientationChange(int viewOrientation) {
        if (viewOrientation == getOrientation()) {
            return;
        }
        setOrientation(viewOrientation);
        setChildrenView(viewOrientation);
    }

    public TemplateParamsContainer(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public TemplateParamsContainer(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.onyx.galaxy.note.category.ui.TemplateParamsContainer$maxWidth$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf((int) ResManager.INSTANCE.getDimension(C7384R.dimen.dp_420));
            }
        });
        this.maxWidth = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.category.ui.TemplateParamsContainer$widthPercent$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getFloat(C10651R.dimen.template_params_container_percent));
            }
        });
        this.widthPercent = lazy2;
        setOrientation(1);
    }
}
