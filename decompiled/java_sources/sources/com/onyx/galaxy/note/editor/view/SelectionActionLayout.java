package com.onyx.galaxy.note.editor.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.LayoutSelectionActionBinding;
import com.onyx.galaxy.note.editor.view.HorizontalTabScrollView;
import com.onyx.galaxy.note.editor.view.SelectionActionLayout;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0004¢\u0006\u0004\b\u0016\u0010\u0017J\"\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/SelectionActionLayout;", "Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;", "Landroid/view/View;", "child", "", FirebaseAnalytics.Param.INDEX, "Landroid/view/ViewGroup$LayoutParams;", "params", "", "addView", "", "isAtEnd", "c", "Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;", C6997f.f39671c, "Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;", "binding", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SelectionActionLayout extends TintRelativeLayout {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public LayoutSelectionActionBinding binding;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SelectionActionLayout(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: b */
    public static final void m47433b(SelectionActionLayout this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47434c(z);
    }

    @Override // android.view.ViewGroup
    public void addView(@NotNull View child, int index, @Nullable ViewGroup.LayoutParams params) {
        Intrinsics.checkNotNullParameter(child, "child");
        if (child.getId() != C10651R.id.layout_container) {
            this.binding.contentContainer.addView(child, index, params);
        } else {
            super.addView(child, index, params);
        }
    }

    /* renamed from: c */
    public final void m47434c(boolean isAtEnd) {
        ViewKt.setViewVisibleOrGone(this.binding.scrollContainerIndicator, !isAtEnd);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SelectionActionLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ SelectionActionLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SelectionActionLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        LayoutSelectionActionBinding inflate = LayoutSelectionActionBinding.inflate(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        inflate.scrollContainer.setOnScrollToEndListener(new HorizontalTabScrollView.OnScrollToEndListener() { // from class: com.sunia.HTREnginev2.ggm
            @Override // com.onyx.galaxy.note.editor.view.HorizontalTabScrollView.OnScrollToEndListener
            public final void onScrollToEndStateUpdate(boolean z) {
                SelectionActionLayout.m47433b(SelectionActionLayout.this, z);
            }
        });
    }
}
