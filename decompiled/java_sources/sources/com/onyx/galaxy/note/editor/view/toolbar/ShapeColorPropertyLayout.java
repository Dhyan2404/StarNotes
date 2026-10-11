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
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.PenPropertyBean;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u00015B\u001d\b\u0016\u0012\u0006\u00100\u001a\u00020/\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b1\u00102B'\b\u0017\u0012\u0006\u00100\u001a\u00020/\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\b\b\u0002\u00103\u001a\u00020\u0006¢\u0006\u0004\b1\u00104J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0006J\u0016\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006J\u0016\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u0006J\u0016\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006J\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u0015J\u0012\u0010\u0019\u001a\u00020\u00042\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002J\b\u0010\u001a\u001a\u00020\u0004H\u0002J\b\u0010\u001b\u001a\u00020\u0004H\u0002J\u0018\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0010\u001a\u00020\u0006H\u0002J\u0018\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u0006H\u0002R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010%\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010\u0014\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010$R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-¨\u00066"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;", "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;", "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout$ColorSelectedListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "setListener", "", "shapeType", "setShape", "selectColor", "setSelectColor", "", "save", "setSaveColorProperty", "color", "updateColorViewSelection", "colorIndex", "updateColorView", "Lcom/onyx/android/sdk/base/extension/IntList;", "colorList", "saveColorProperty", "", "getViewColors", "Landroid/util/AttributeSet;", "attrs", "c", C6997f.f39671c, "d", "Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;", "colorView", C6998g.f39679a, C6999h.f39688c, "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout$ColorSelectedListener;", "i", "I", "j", Constants.HASIDCALL_INDEX_SIG, "isLarge", C4921e.f26537n, "Landroid/widget/LinearLayout;", "l", "Landroid/widget/LinearLayout;", "colorContainer", "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "m", "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "penProperty", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "ColorSelectedListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ShapeColorPropertyLayout extends TintFrameLayout {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public ColorSelectedListener listener;

    /* renamed from: i, reason: from kotlin metadata */
    public int shapeType;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isLarge;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean saveColorProperty;

    /* renamed from: l, reason: from kotlin metadata */
    public LinearLayout colorContainer;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public PenPropertyBean penProperty;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout$ColorSelectedListener;", "", "onSelected", "", "color", "", "colorIndex", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface ColorSelectedListener {
        void onSelected(int color, int colorIndex);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShapeColorPropertyLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: e */
    public static final void m50148e(ShapeColorPropertyLayout this$0, View view, int i, View view2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        this$0.m50152g((ColorView) view, i);
    }

    /* renamed from: c */
    public final void m50149c(AttributeSet attrs) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.ShapeColorPropertyLayout);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.isLarge = obtainStyledAttributes.getBoolean(C10651R.styleable.ShapeColorPropertyLayout_isLarge, false);
        obtainStyledAttributes.recycle();
        if (this.isLarge) {
            LayoutInflater.from(getContext()).inflate(C10651R.layout.layout_color_property_large, (ViewGroup) this, true);
        } else {
            LayoutInflater.from(getContext()).inflate(C10651R.layout.layout_color_property, (ViewGroup) this, true);
        }
        m50151f();
    }

    /* renamed from: d */
    public final void m50150d() {
        int i = this.shapeType;
        IntList value = this.penProperty.getColorListOption(i).getValue();
        int i2 = this.penProperty.getColorIndexOption(i).get();
        LinearLayout linearLayout = this.colorContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
            linearLayout = null;
        }
        int childCount = linearLayout.getChildCount();
        final int i3 = 0;
        while (i3 < childCount) {
            LinearLayout linearLayout2 = this.colorContainer;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
                linearLayout2 = null;
            }
            final View childAt = linearLayout2.getChildAt(i3);
            if (childAt instanceof ColorView) {
                ColorView colorView = (ColorView) childAt;
                Integer num = value.get(i3);
                Intrinsics.checkNotNullExpressionValue(num, "get(...)");
                colorView.setColor(num.intValue());
                colorView.setSelect(i2 == i3);
                childAt.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vlm
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ShapeColorPropertyLayout.m50148e(ShapeColorPropertyLayout.this, childAt, i3, view);
                    }
                });
            }
            i3++;
        }
    }

    /* renamed from: f */
    public final void m50151f() {
        View findViewById = findViewById(C10651R.id.color_container);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        this.colorContainer = (LinearLayout) findViewById;
        m50150d();
    }

    /* renamed from: g */
    public final void m50152g(ColorView colorView, int colorIndex) {
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
        if (this.saveColorProperty) {
            saveColorProperty(colorView.getColor(), colorIndex);
        }
        ColorSelectedListener colorSelectedListener = this.listener;
        if (colorSelectedListener != null) {
            colorSelectedListener.onSelected(colorView.getColor(), colorIndex);
        }
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

    /* renamed from: h */
    public final void m50153h(IntList colorList, int colorIndex) {
        PenPropertyBean penPropertyBean = this.penProperty;
        penPropertyBean.getColorListOption(this.shapeType).set(colorList);
        penPropertyBean.getColorIndexOption(this.shapeType).put(colorIndex);
    }

    public final void saveColorProperty(final int color, final int colorIndex) {
        PenPropertyBean penPropertyBean = this.penProperty;
        penPropertyBean.getColorOption(this.shapeType).put(color);
        penPropertyBean.getColorIndexOption(this.shapeType).put(colorIndex);
        penPropertyBean.getColorListOption(this.shapeType).getAndPut(new Function1<IntList, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout$saveColorProperty$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(IntList intList) {
                invoke2(intList);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull IntList it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.set(colorIndex, Integer.valueOf(color));
            }
        });
        penPropertyBean.getPenArgsOption(this.shapeType).getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout$saveColorProperty$1$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                invoke2(penArgs);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable PenArgs penArgs) {
                if (penArgs == null) {
                    return;
                }
                penArgs.setColor(color);
            }
        });
    }

    public final void setListener(@NotNull ColorSelectedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    public final void setSaveColorProperty(boolean save) {
        this.saveColorProperty = save;
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
            if (childAt instanceof ColorView) {
                ColorView colorView = (ColorView) childAt;
                colorView.setSelect(selectColor == colorView.getColor());
            }
        }
    }

    public final void setShape(int shapeType) {
        this.shapeType = shapeType;
        m50151f();
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

    public final void updateColorViewSelection(int color) {
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
            ColorView colorView = (ColorView) childAt;
            colorView.setSelect(colorView.getColor() == color);
        }
    }

    public /* synthetic */ ShapeColorPropertyLayout(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"SetJavaScriptEnabled"})
    public ShapeColorPropertyLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.shapeType = -1;
        this.saveColorProperty = true;
        this.penProperty = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty();
        m50149c(attributeSet);
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
                m50153h(colorList, colorIndex);
            }
            i++;
        }
    }

    public /* synthetic */ ShapeColorPropertyLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }
}
