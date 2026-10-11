package com.onyx.galaxy.note.editor.view.toolbar;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorArgsPropertyLayout;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001.B\u001d\b\u0016\u0012\u0006\u0010)\u001a\u00020(\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b*\u0010+B'\b\u0017\u0012\u0006\u0010)\u001a\u00020(\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\b\b\u0002\u0010,\u001a\u00020\u0006¢\u0006\u0004\b*\u0010-J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006J\u0016\u0010\u000e\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0006J\u0016\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006J\u0016\u0010\u0010\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0006J\u0006\u0010\u0011\u001a\u00020\u0006J\u0006\u0010\u0012\u001a\u00020\u0006J\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00060\u0013J\u0012\u0010\u0017\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002J\b\u0010\u0018\u001a\u00020\u0004H\u0002J\u0018\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\r\u001a\u00020\u0006H\u0002R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010'\u001a\u00020$8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006/"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;", "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;", "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout$ColorSelectedListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "setListener", "", "shapeType", "setShape", "selectColor", "setSelectColor", "Lcom/onyx/android/sdk/base/extension/IntList;", "colorList", "colorIndex", "initColorLayout", "color", "updateColorView", "getSelectedColor", "getSelectedColorIndex", "", "getViewColors", "Landroid/util/AttributeSet;", "attrs", "c", "e", "Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;", "colorView", C6997f.f39671c, C6999h.f39688c, "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout$ColorSelectedListener;", "i", "I", "", "j", Constants.HASIDCALL_INDEX_SIG, "isLarge", "Landroid/widget/LinearLayout;", C4921e.f26537n, "Landroid/widget/LinearLayout;", "colorContainer", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "ColorSelectedListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeColorArgsPropertyLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeColorArgsPropertyLayout.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,160:1\n277#2,2:161\n277#2,2:163\n*S KotlinDebug\n*F\n+ 1 ShapeColorArgsPropertyLayout.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout\n*L\n84#1:161,2\n88#1:163,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ShapeColorArgsPropertyLayout extends TintFrameLayout {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public ColorSelectedListener listener;

    /* renamed from: i, reason: from kotlin metadata */
    public int shapeType;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isLarge;

    /* renamed from: k, reason: from kotlin metadata */
    public LinearLayout colorContainer;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout$ColorSelectedListener;", "", "onSelected", "", "color", "", "colorIndex", "onSelectedClick", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface ColorSelectedListener {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public static final class DefaultImpls {
            public static void onSelectedClick(@NotNull ColorSelectedListener colorSelectedListener, int i, int i2) {
            }
        }

        void onSelected(int color, int colorIndex);

        void onSelectedClick(int color, int colorIndex);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShapeColorArgsPropertyLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: d */
    public static final void m50143d(ShapeColorArgsPropertyLayout this$0, View view, int i, View view2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        this$0.m50146f((ColorView) view, i);
    }

    /* renamed from: c */
    public final void m50144c(AttributeSet attrs) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.ShapeColorPropertyLayout);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.isLarge = obtainStyledAttributes.getBoolean(C10651R.styleable.ShapeColorPropertyLayout_isLarge, false);
        obtainStyledAttributes.recycle();
        if (this.isLarge) {
            LayoutInflater.from(getContext()).inflate(C10651R.layout.layout_color_property_large, (ViewGroup) this, true);
        } else {
            LayoutInflater.from(getContext()).inflate(C10651R.layout.layout_color_property, (ViewGroup) this, true);
        }
        m50145e();
    }

    /* renamed from: e */
    public final void m50145e() {
        View findViewById = findViewById(C10651R.id.color_container);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        this.colorContainer = (LinearLayout) findViewById;
    }

    /* renamed from: f */
    public final void m50146f(ColorView colorView, int colorIndex) {
        if (getSelectedColor() == colorView.getColor() && getSelectedColorIndex() == colorIndex) {
            ColorSelectedListener colorSelectedListener = this.listener;
            if (colorSelectedListener != null) {
                colorSelectedListener.onSelectedClick(colorView.getColor(), colorIndex);
                return;
            }
            return;
        }
        LinearLayout linearLayout = this.colorContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
            linearLayout = null;
        }
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            LinearLayout linearLayout2 = this.colorContainer;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
                linearLayout2 = null;
            }
            View childAt = linearLayout2.getChildAt(i);
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type com.onyx.galaxy.note.editor.view.toolbar.ColorView");
            ((ColorView) childAt).setSelect(Intrinsics.areEqual(childAt, colorView));
        }
        ColorSelectedListener colorSelectedListener2 = this.listener;
        if (colorSelectedListener2 != null) {
            colorSelectedListener2.onSelected(colorView.getColor(), colorIndex);
        }
    }

    public final int getSelectedColor() {
        LinearLayout linearLayout = this.colorContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
            linearLayout = null;
        }
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            LinearLayout linearLayout2 = this.colorContainer;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
                linearLayout2 = null;
            }
            View childAt = linearLayout2.getChildAt(i);
            ColorView colorView = childAt instanceof ColorView ? (ColorView) childAt : null;
            if (colorView != null && colorView.getIsSelect()) {
                return colorView.getColor();
            }
        }
        return -1;
    }

    public final int getSelectedColorIndex() {
        LinearLayout linearLayout = this.colorContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
            linearLayout = null;
        }
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            LinearLayout linearLayout2 = this.colorContainer;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
                linearLayout2 = null;
            }
            View childAt = linearLayout2.getChildAt(i);
            ColorView colorView = childAt instanceof ColorView ? (ColorView) childAt : null;
            if (colorView != null && colorView.getIsSelect()) {
                return i;
            }
        }
        return -1;
    }

    @NotNull
    public final List<Integer> getViewColors() {
        ArrayList arrayList = new ArrayList();
        LinearLayout linearLayout = this.colorContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
            linearLayout = null;
        }
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            LinearLayout linearLayout2 = this.colorContainer;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
                linearLayout2 = null;
            }
            View childAt = linearLayout2.getChildAt(i);
            ColorView colorView = childAt instanceof ColorView ? (ColorView) childAt : null;
            if (colorView != null) {
                arrayList.add(Integer.valueOf(colorView.getColor()));
            }
        }
        return arrayList;
    }

    public final void initColorLayout(@NotNull IntList colorList, int colorIndex) {
        Object orNull;
        Intrinsics.checkNotNullParameter(colorList, "colorList");
        LinearLayout linearLayout = this.colorContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
            linearLayout = null;
        }
        int childCount = linearLayout.getChildCount();
        final int i = 0;
        while (i < childCount) {
            LinearLayout linearLayout2 = this.colorContainer;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
                linearLayout2 = null;
            }
            final View childAt = linearLayout2.getChildAt(i);
            if (childAt instanceof ColorView) {
                orNull = CollectionsKt___CollectionsKt.getOrNull(colorList, i);
                Integer num = (Integer) orNull;
                if (num != null) {
                    childAt.setVisibility(0);
                    ColorView colorView = (ColorView) childAt;
                    colorView.setColor(num.intValue());
                    colorView.setSelect(colorIndex == i);
                } else {
                    childAt.setVisibility(4);
                }
                childAt.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ulm
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ShapeColorArgsPropertyLayout.m50143d(ShapeColorArgsPropertyLayout.this, childAt, i, view);
                    }
                });
            }
            i++;
        }
    }

    public final void setListener(@NotNull ColorSelectedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    public final void setSelectColor(int selectColor) {
        LinearLayout linearLayout = this.colorContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
            linearLayout = null;
        }
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            LinearLayout linearLayout2 = this.colorContainer;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
                linearLayout2 = null;
            }
            View childAt = linearLayout2.getChildAt(i);
            ColorView colorView = childAt instanceof ColorView ? (ColorView) childAt : null;
            if (colorView != null) {
                colorView.setSelect(selectColor == colorView.getColor());
            }
        }
    }

    public final void setShape(int shapeType) {
        this.shapeType = shapeType;
        m50145e();
    }

    public final void updateColorView(int color, int colorIndex) {
        LinearLayout linearLayout = this.colorContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
            linearLayout = null;
        }
        int childCount = linearLayout.getChildCount();
        int i = 0;
        while (i < childCount) {
            LinearLayout linearLayout2 = this.colorContainer;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
                linearLayout2 = null;
            }
            View childAt = linearLayout2.getChildAt(i);
            ColorView colorView = childAt instanceof ColorView ? (ColorView) childAt : null;
            if (colorView != null) {
                colorView.setSelect(colorIndex == i);
                if (colorView.getIsSelect()) {
                    colorView.setColor(color);
                }
            }
            i++;
        }
    }

    public /* synthetic */ ShapeColorArgsPropertyLayout(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"SetJavaScriptEnabled"})
    public ShapeColorArgsPropertyLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.shapeType = -1;
        m50144c(attributeSet);
    }

    public /* synthetic */ ShapeColorArgsPropertyLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public final void updateColorView(@NotNull IntList colorList, int colorIndex) {
        Object orNull;
        Intrinsics.checkNotNullParameter(colorList, "colorList");
        LinearLayout linearLayout = this.colorContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
            linearLayout = null;
        }
        int childCount = linearLayout.getChildCount();
        int i = 0;
        while (i < childCount) {
            LinearLayout linearLayout2 = this.colorContainer;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
                linearLayout2 = null;
            }
            View childAt = linearLayout2.getChildAt(i);
            ColorView colorView = childAt instanceof ColorView ? (ColorView) childAt : null;
            if (colorView != null) {
                orNull = CollectionsKt___CollectionsKt.getOrNull(colorList, i);
                Integer num = (Integer) orNull;
                if (num == null) {
                    return;
                }
                colorView.setColor(num.intValue());
                colorView.setSelect(colorIndex == i);
            }
            i++;
        }
    }
}
