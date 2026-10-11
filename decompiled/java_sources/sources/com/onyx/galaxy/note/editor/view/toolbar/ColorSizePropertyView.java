package com.onyx.galaxy.note.editor.view.toolbar;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.Observer;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.FloatList;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.data.utils.IntOption;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeAttr;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.PenUtils;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction;
import com.onyx.galaxy.note.editor.data.PenPropertyBean;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.popup.LineStyleSelectPopup;
import com.onyx.galaxy.note.editor.view.popup.PenSizePopup;
import com.onyx.galaxy.note.editor.view.toolbar.ColorSizePropertyView;
import com.onyx.galaxy.note.editor.viewmodel.PenViewModel;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010@\u001a\u00020?¢\u0006\u0004\bA\u0010BB\u001d\b\u0016\u0012\u0006\u0010@\u001a\u00020?\u0012\n\b\u0002\u0010D\u001a\u0004\u0018\u00010C¢\u0006\u0004\bA\u0010EB%\b\u0016\u0012\u0006\u0010@\u001a\u00020?\u0012\n\b\u0002\u0010D\u001a\u0004\u0018\u00010C\u0012\u0006\u0010F\u001a\u00020\u0006¢\u0006\u0004\bA\u0010GJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0002J&\u0010\u0012\u001a\u00020\u00042\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0002J\u001e\u0010\u0015\u001a\u00020\u00042\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u000e2\u0006\u0010\u0014\u001a\u00020\u0006H\u0002J\b\u0010\u0016\u001a\u00020\u0004H\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0002J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0018H\u0002J \u0010 \u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0002J\u0010\u0010!\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\b\u0010\"\u001a\u00020\u0004H\u0002J\b\u0010#\u001a\u00020\u0004H\u0002J\b\u0010$\u001a\u00020\u0004H\u0002J\b\u0010&\u001a\u00020%H\u0002J\u000e\u0010)\u001a\u00020\u00042\u0006\u0010(\u001a\u00020'J\u000e\u0010,\u001a\u00020\u00042\u0006\u0010+\u001a\u00020*J\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00060\u000eJ\b\u0010.\u001a\u00020\u0004H\u0014J\u0006\u0010/\u001a\u00020\u0004J\u0006\u00100\u001a\u00020\u0004J\u000e\u00102\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u0002R\u0016\u0010+\u001a\u00020*8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u00103R\u0016\u0010(\u001a\u00020'8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b!\u00104R\u0016\u00106\u001a\u00020\u00018\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u00105R\u0016\u00107\u001a\u00020\u00018\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b#\u00105R\u0018\u00109\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00105R\u0018\u0010:\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u00105R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=¨\u0006H"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;", "Landroid/widget/LinearLayout;", "", "size", "", "u", "", FirebaseAnalytics.Param.INDEX, "s", "color", "v", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "shapeToolType", "m", "", "sizeList", "sizeIndex", "shapeType", "r", "colorList", "colorIndex", "q", GoogleApiAvailabilityLight.f29016b, "j", "Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;", "view", "e", "sizeView", C6998g.f39679a, "Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;", "colorView", "penType", "d", C6997f.f39671c, "p", C6999h.f39688c, "t", "", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "setEditorBundle", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "penViewModel", "setPenViewModel", "getViewColors", "onFinishInflate", "colorChange", "sizeChange", "rotation", "setOrientationChanged", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Landroid/widget/LinearLayout;", "colorContainer", "sizeContainer", "i", "lineStyleGroup", "lineStyleContainer", "Landroid/widget/ImageView;", C4921e.f26537n, "Landroid/widget/ImageView;", "lineStyleImage", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nColorSizePropertyView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorSizePropertyView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,391:1\n256#2,2:392\n*S KotlinDebug\n*F\n+ 1 ColorSizePropertyView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView\n*L\n368#1:392,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ColorSizePropertyView extends LinearLayout {

    /* renamed from: e, reason: from kotlin metadata */
    public PenViewModel penViewModel;

    /* renamed from: f, reason: from kotlin metadata */
    public EditorBundle editorBundle;

    /* renamed from: g, reason: from kotlin metadata */
    public LinearLayout colorContainer;

    /* renamed from: h, reason: from kotlin metadata */
    public LinearLayout sizeContainer;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public LinearLayout lineStyleGroup;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public LinearLayout lineStyleContainer;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public ImageView lineStyleImage;

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.ColorSizePropertyView$a */
    /* loaded from: classes9.dex */
    public static final class C12502a implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f60754a;

        public C12502a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f60754a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return this.f60754a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f60754a.invoke(obj);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ColorSizePropertyView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: i */
    public static final void m49857i(ColorSizePropertyView this$0, LinearLayout lineStyleContainer, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(lineStyleContainer, "$lineStyleContainer");
        Activity activity = ViewLocator.INSTANCE.getActivity(this$0);
        PenViewModel penViewModel = this$0.penViewModel;
        PenViewModel penViewModel2 = null;
        if (penViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel = null;
        }
        PenViewModel penViewModel3 = this$0.penViewModel;
        if (penViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        } else {
            penViewModel2 = penViewModel3;
        }
        new LineStyleSelectPopup(activity, penViewModel, penViewModel2.getPopupType()).show(lineStyleContainer);
    }

    /* renamed from: k */
    public static final void m49858k(ColorSizePropertyView this$0, int i, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof ColorView) {
            ColorView colorView = (ColorView) view;
            if (!colorView.getIsSelect()) {
                this$0.m49862f(colorView);
                return;
            }
            PenViewModel penViewModel = this$0.penViewModel;
            if (penViewModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
                penViewModel = null;
            }
            ShapeToolType value = penViewModel.getPenType().getValue();
            Intrinsics.checkNotNull(value);
            this$0.m49860d(colorView, value.getShapeType(), i);
        }
    }

    /* renamed from: l */
    public static final void m49859l(ColorSizePropertyView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof SizeView) {
            SizeView sizeView = (SizeView) view;
            if (sizeView.getIsSelect()) {
                this$0.m49861e(sizeView);
            } else {
                this$0.m49863g(sizeView);
            }
        }
    }

    public final void colorChange() {
        int i;
        LinearLayout linearLayout = this.colorContainer;
        LinearLayout linearLayout2 = null;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
            linearLayout = null;
        }
        int childCount = linearLayout.getChildCount();
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                i = -1;
                break;
            }
            LinearLayout linearLayout3 = this.colorContainer;
            if (linearLayout3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
                linearLayout3 = null;
            }
            View childAt = linearLayout3.getChildAt(i2);
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type com.onyx.galaxy.note.editor.view.toolbar.ColorView");
            if (((ColorView) childAt).getIsSelect()) {
                i = i2 + 1;
                break;
            }
            i2++;
        }
        LinearLayout linearLayout4 = this.colorContainer;
        if (linearLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
            linearLayout4 = null;
        }
        int childCount2 = i % linearLayout4.getChildCount();
        MathUtils mathUtils = MathUtils.INSTANCE;
        Integer valueOf = Integer.valueOf(childCount2);
        LinearLayout linearLayout5 = this.colorContainer;
        if (linearLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
            linearLayout5 = null;
        }
        int intValue = ((Number) mathUtils.clamp(valueOf, 0, Integer.valueOf(linearLayout5.getChildCount() - 1))).intValue();
        LinearLayout linearLayout6 = this.colorContainer;
        if (linearLayout6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
        } else {
            linearLayout2 = linearLayout6;
        }
        View childAt2 = linearLayout2.getChildAt(intValue);
        Intrinsics.checkNotNull(childAt2, "null cannot be cast to non-null type com.onyx.galaxy.note.editor.view.toolbar.ColorView");
        m49862f((ColorView) childAt2);
    }

    /* renamed from: d */
    public final void m49860d(final ColorView colorView, final int penType, final int colorIndex) {
        final EditorBundle editorBundle;
        EditorBundle editorBundle2 = this.editorBundle;
        PenViewModel penViewModel = null;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        } else {
            editorBundle = editorBundle2;
        }
        PenViewModel penViewModel2 = this.penViewModel;
        if (penViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel2 = null;
        }
        ShapeToolType value = penViewModel2.getPenType().getValue();
        Intrinsics.checkNotNull(value);
        final ShapeToolType shapeToolType = value;
        final int color = colorView.getColor();
        PenViewModel penViewModel3 = this.penViewModel;
        if (penViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        } else {
            penViewModel = penViewModel3;
        }
        final DockType popupType = penViewModel.getPopupType();
        final List<Integer> viewColors = getViewColors();
        RxBaseAction.execute$default(new ShowColorPickerAction(colorView, penType, colorIndex, this, editorBundle, shapeToolType, color, popupType, viewColors) { // from class: com.onyx.galaxy.note.editor.view.toolbar.ColorSizePropertyView$handleDoubleClick$1

            /* renamed from: q */
            public final /* synthetic */ int f60755q;

            /* renamed from: r */
            public final /* synthetic */ int f60756r;

            /* renamed from: s */
            public final /* synthetic */ ColorSizePropertyView f60757s;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(editorBundle, shapeToolType, colorView, colorView, color, popupType, viewColors);
                this.f60755q = penType;
                this.f60756r = colorIndex;
                this.f60757s = this;
            }

            @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction, com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
            public void onColorSelected(int color2) {
                IntList value2 = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty().getColorListOption(this.f60755q).getValue();
                value2.set(this.f60756r, Integer.valueOf(color2));
                this.f60757s.m49870q(value2, this.f60756r);
            }

            @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction, com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
            public void onColorSetSelected(@NotNull ColorSetModel colorSet) {
                PenViewModel penViewModel4;
                Intrinsics.checkNotNullParameter(colorSet, "colorSet");
                List<Integer> colors = colorSet.getColors();
                penViewModel4 = this.f60757s.penViewModel;
                if (penViewModel4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
                    penViewModel4 = null;
                }
                penViewModel4.getColorSet().postValue(TypeExtKt.toIntList(colors));
                this.f60757s.m49870q(colors, this.f60756r);
            }
        }, null, null, null, 7, null);
    }

    /* renamed from: e */
    public final void m49861e(SizeView view) {
        EditorBundle editorBundle;
        PenViewModel penViewModel;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        PenViewModel penViewModel2 = this.penViewModel;
        PenViewModel penViewModel3 = null;
        if (penViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel2 = null;
        }
        ShapeToolType value = penViewModel2.getPenType().getValue();
        Intrinsics.checkNotNull(value);
        ShapeToolType shapeToolType = value;
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
            editorBundle = null;
        } else {
            editorBundle = editorBundle2;
        }
        PenViewModel penViewModel4 = this.penViewModel;
        if (penViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel = null;
        } else {
            penViewModel = penViewModel4;
        }
        PenViewModel penViewModel5 = this.penViewModel;
        if (penViewModel5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        } else {
            penViewModel3 = penViewModel5;
        }
        new PenSizePopup(context, shapeToolType, editorBundle, penViewModel, penViewModel3.getPopupType()).show(view);
    }

    /* renamed from: f */
    public final void m49862f(ColorView colorView) {
        List<Integer> listOf;
        LinearLayout linearLayout = this.colorContainer;
        PenViewModel penViewModel = null;
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
        PenViewModel penViewModel2 = this.penViewModel;
        if (penViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel2 = null;
        }
        ShapeToolType value = penViewModel2.getPenType().getValue();
        if (value != null) {
            NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
            PenPropertyBean penProperty = noteConfigManager.getNoteEditConfigInfo().getPenProperty();
            int shapeType = value.getShapeType();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(colorView.getColor()));
            penProperty.addHistoryColorList(shapeType, listOf);
            noteConfigManager.getNoteEditConfigInfo().getPenProperty().getColorIndexOption(value.getShapeType()).put(colorView.getCom.google.firebase.analytics.FirebaseAnalytics.Param.INDEX java.lang.String());
            noteConfigManager.getNoteEditConfigInfo().getPenProperty().saveSelectPenColor(value.getShapeType(), colorView.getColor());
        }
        PenViewModel penViewModel3 = this.penViewModel;
        if (penViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        } else {
            penViewModel = penViewModel3;
        }
        penViewModel.getColor().postValue(Integer.valueOf(colorView.getColor()));
        m49869p();
    }

    /* renamed from: g */
    public final void m49863g(SizeView sizeView) {
        LinearLayout linearLayout = this.sizeContainer;
        PenViewModel penViewModel = null;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sizeContainer");
            linearLayout = null;
        }
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            LinearLayout linearLayout2 = this.sizeContainer;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sizeContainer");
                linearLayout2 = null;
            }
            View childAt = linearLayout2.getChildAt(i);
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type com.onyx.galaxy.note.editor.view.toolbar.SizeView");
            ((SizeView) childAt).setSelect(Intrinsics.areEqual(childAt, sizeView));
        }
        PenViewModel penViewModel2 = this.penViewModel;
        if (penViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel2 = null;
        }
        ShapeToolType value = penViewModel2.getPenType().getValue();
        if (value != null) {
            NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
            noteConfigManager.getNoteEditConfigInfo().getPenProperty().getSizeIndexOption(value.getShapeType()).put(sizeView.getCom.google.firebase.analytics.FirebaseAnalytics.Param.INDEX java.lang.String());
            noteConfigManager.getNoteEditConfigInfo().getPenProperty().getStrokeWidthOption(value.getShapeType()).put(sizeView.getSize());
            noteConfigManager.getNoteEditConfigInfo().getPenProperty().saveSelectPenStrokeWidth(value.getShapeType(), sizeView.getSize());
        }
        PenViewModel penViewModel3 = this.penViewModel;
        if (penViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        } else {
            penViewModel = penViewModel3;
        }
        penViewModel.getSize().postValue(Float.valueOf(sizeView.getSize()));
        m49869p();
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
            if (childAt instanceof ColorView) {
                arrayList.add(Integer.valueOf(((ColorView) childAt).getColor()));
            }
        }
        return arrayList;
    }

    /* renamed from: h */
    public final void m49864h() {
        final LinearLayout linearLayout;
        Context context = getContext();
        PenViewModel penViewModel = null;
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || (linearLayout = this.lineStyleContainer) == null) {
            return;
        }
        ViewKt.click$default(linearLayout, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.y2e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ColorSizePropertyView.m49857i(ColorSizePropertyView.this, linearLayout, view);
            }
        }, 1, null);
        PenViewModel penViewModel2 = this.penViewModel;
        if (penViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel2 = null;
        }
        penViewModel2.getPenType().observe(appCompatActivity, new C12502a(new Function1<ShapeToolType, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ColorSizePropertyView$initLineStyle$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ShapeToolType shapeToolType) {
                invoke2(shapeToolType);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ShapeToolType shapeToolType) {
                PenViewModel penViewModel3;
                penViewModel3 = ColorSizePropertyView.this.penViewModel;
                if (penViewModel3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
                    penViewModel3 = null;
                }
                penViewModel3.getLineStyleType().setValue(Integer.valueOf(NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty().getLineStyleTypeOption(shapeToolType.getShapeType()).get()));
            }
        }));
        PenViewModel penViewModel3 = this.penViewModel;
        if (penViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        } else {
            penViewModel = penViewModel3;
        }
        penViewModel.getLineStyleType().observe(appCompatActivity, new C12502a(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ColorSizePropertyView$initLineStyle$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke2(num);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(final Integer num) {
                PenViewModel penViewModel4;
                PenViewModel penViewModel5;
                EditorBundle editorBundle;
                penViewModel4 = ColorSizePropertyView.this.penViewModel;
                EditorBundle editorBundle2 = null;
                if (penViewModel4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
                    penViewModel4 = null;
                }
                ShapeToolType value = penViewModel4.getPenType().getValue();
                if (value != null) {
                    int shapeType = value.getShapeType();
                    ColorSizePropertyView.this.m49873t();
                    IntOption lineStyleTypeOption = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty().getLineStyleTypeOption(shapeType);
                    Intrinsics.checkNotNull(num);
                    lineStyleTypeOption.put(num.intValue());
                    penViewModel5 = ColorSizePropertyView.this.penViewModel;
                    if (penViewModel5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
                        penViewModel5 = null;
                    }
                    ShapeToolType value2 = penViewModel5.getPenType().getValue();
                    boolean z = false;
                    if (value2 != null && value2.getShapeType() == 40) {
                        z = true;
                    }
                    if (z) {
                        MMKVNote.INSTANCE.getGraphShapeOption().getAndPut(new Function1<UniversalShapeAttr, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ColorSizePropertyView$initLineStyle$3.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(UniversalShapeAttr universalShapeAttr) {
                                invoke2(universalShapeAttr);
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(@Nullable UniversalShapeAttr universalShapeAttr) {
                                if (universalShapeAttr == null) {
                                    return;
                                }
                                Integer lineStyleType = num;
                                Intrinsics.checkNotNullExpressionValue(lineStyleType, "$lineStyleType");
                                universalShapeAttr.setLineStyleType(lineStyleType.intValue());
                            }
                        });
                    }
                    editorBundle = ColorSizePropertyView.this.editorBundle;
                    if (editorBundle == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
                    } else {
                        editorBundle2 = editorBundle;
                    }
                    EditorBundleKt.uiDrawingArgs(editorBundle2).setLineStyleType(num.intValue());
                }
            }
        }));
    }

    /* renamed from: j */
    public final void m49865j() {
        LinearLayout linearLayout = this.colorContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
            linearLayout = null;
        }
        int childCount = linearLayout.getChildCount();
        for (final int i = 0; i < childCount; i++) {
            LinearLayout linearLayout2 = this.colorContainer;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
                linearLayout2 = null;
            }
            linearLayout2.getChildAt(i).setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.w2e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ColorSizePropertyView.m49858k(ColorSizePropertyView.this, i, view);
                }
            });
        }
        LinearLayout linearLayout3 = this.sizeContainer;
        if (linearLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sizeContainer");
            linearLayout3 = null;
        }
        int childCount2 = linearLayout3.getChildCount();
        for (int i2 = 0; i2 < childCount2; i2++) {
            LinearLayout linearLayout4 = this.sizeContainer;
            if (linearLayout4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sizeContainer");
                linearLayout4 = null;
            }
            linearLayout4.getChildAt(i2).setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.x2e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ColorSizePropertyView.m49859l(ColorSizePropertyView.this, view);
                }
            });
        }
    }

    /* renamed from: m */
    public final void m49866m(ShapeToolType shapeToolType) {
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        IntList value = noteConfigManager.getNoteEditConfigInfo().getPenProperty().getColorListOption(shapeToolType.getShapeType()).getValue();
        FloatList list = noteConfigManager.getNoteEditConfigInfo().getPenProperty().getSizeListOption(shapeToolType.getShapeType()).getList();
        int i = noteConfigManager.getNoteEditConfigInfo().getPenProperty().getColorIndexOption(shapeToolType.getShapeType()).get();
        int i2 = noteConfigManager.getNoteEditConfigInfo().getPenProperty().getSizeIndexOption(shapeToolType.getShapeType()).get();
        m49870q(value, i);
        m49871r(list, i2, shapeToolType.getShapeType());
    }

    /* renamed from: n */
    public final void m49867n() {
        View findViewById = findViewById(C10651R.id.color_container);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        this.colorContainer = (LinearLayout) findViewById;
        View findViewById2 = findViewById(C10651R.id.shape_size_container);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        this.sizeContainer = (LinearLayout) findViewById2;
        this.lineStyleGroup = (LinearLayout) findViewById(C10651R.id.lineStyleGroup);
        this.lineStyleContainer = (LinearLayout) findViewById(C10651R.id.lineStyleContainer);
        this.lineStyleImage = (ImageView) findViewById(C10651R.id.lineStyleImage);
    }

    /* renamed from: o */
    public final boolean m49868o() {
        PenViewModel penViewModel = this.penViewModel;
        if (penViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel = null;
        }
        ShapeToolType value = penViewModel.getPenType().getValue();
        if (value == null) {
            return false;
        }
        int shapeType = value.getShapeType();
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        if (!shapeTypes.isSupportLineStyle(shapeType)) {
            return false;
        }
        if (shapeType != 40) {
            return true;
        }
        String type = MMKVNote.INSTANCE.getGraphShapeOption().get().getType();
        if (type == null) {
            type = "";
        }
        return shapeTypes.isUniversalShapeLineStyleEditable(type);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        m49867n();
        m49865j();
    }

    /* renamed from: p */
    public final void m49869p() {
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        PenViewModel penViewModel = this.penViewModel;
        EditorBundle editorBundle = null;
        if (penViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel = null;
        }
        EditorBundle editorBundle2 = this.editorBundle;
        if (editorBundle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        } else {
            editorBundle = editorBundle2;
        }
        statisticsBundle.reportItemClickEvent(penViewModel, editorBundle);
    }

    /* renamed from: q */
    public final void m49870q(List<Integer> colorList, int colorIndex) {
        LinearLayout linearLayout = this.colorContainer;
        PenViewModel penViewModel = null;
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
                colorView.setColor(colorList.get(i).intValue());
                colorView.setSelect(false);
                if (i == colorIndex) {
                    colorView.setSelect(true);
                    PenViewModel penViewModel2 = this.penViewModel;
                    if (penViewModel2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
                        penViewModel2 = null;
                    }
                    penViewModel2.updateIndexAndColor(colorIndex, colorView.getColor());
                }
            }
        }
        PenViewModel penViewModel3 = this.penViewModel;
        if (penViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel3 = null;
        }
        ShapeToolType value = penViewModel3.getPenType().getValue();
        Intrinsics.checkNotNull(value);
        int shapeType = value.getShapeType();
        final int intValue = colorList.get(colorIndex).intValue();
        PenPropertyBean penProperty = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty();
        penProperty.saveColorList(shapeType, colorList);
        penProperty.getPenArgsOption(shapeType).getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ColorSizePropertyView$setViewColor$1$1
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
                penArgs.setColor(intValue);
            }
        });
        PenViewModel penViewModel4 = this.penViewModel;
        if (penViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
        } else {
            penViewModel = penViewModel4;
        }
        penViewModel.getColor().postValue(Integer.valueOf(intValue));
    }

    /* renamed from: r */
    public final void m49871r(List<Float> sizeList, int sizeIndex, int shapeType) {
        PenUtils penUtils = PenUtils.INSTANCE;
        float maxStrokeWidth = penUtils.getMaxStrokeWidth(shapeType);
        float minStrokeWidth = penUtils.getMinStrokeWidth(shapeType);
        LinearLayout linearLayout = this.sizeContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sizeContainer");
            linearLayout = null;
        }
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            LinearLayout linearLayout2 = this.sizeContainer;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sizeContainer");
                linearLayout2 = null;
            }
            View childAt = linearLayout2.getChildAt(i);
            if (childAt instanceof SizeView) {
                SizeView sizeView = (SizeView) childAt;
                sizeView.setSize(sizeList.get(i).floatValue());
                sizeView.setSelect(false);
                sizeView.setMaxMinSize(maxStrokeWidth, minStrokeWidth);
                if (i == sizeIndex) {
                    sizeView.setSelect(true);
                    PenViewModel penViewModel = this.penViewModel;
                    if (penViewModel == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
                        penViewModel = null;
                    }
                    penViewModel.getSize().postValue(Float.valueOf(sizeView.getSize()));
                }
            }
        }
    }

    /* renamed from: s */
    public final void m49872s(int index) {
        LinearLayout linearLayout = this.colorContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
            linearLayout = null;
        }
        if (linearLayout.isShown()) {
            LinearLayout linearLayout2 = this.colorContainer;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
                linearLayout2 = null;
            }
            int childCount = linearLayout2.getChildCount();
            int i = 0;
            while (i < childCount) {
                LinearLayout linearLayout3 = this.colorContainer;
                if (linearLayout3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
                    linearLayout3 = null;
                }
                View childAt = linearLayout3.getChildAt(i);
                ColorView colorView = childAt instanceof ColorView ? (ColorView) childAt : null;
                if (colorView != null) {
                    colorView.setSelect(i == index);
                }
                i++;
            }
        }
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public final void setOrientationChanged(float rotation) {
        LinearLayout linearLayout = this.colorContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
            linearLayout = null;
        }
        com.onyx.android.sdk.base.extension.ViewKt.rotationAllChildView(linearLayout, rotation);
        TintImageView tintImageView = (TintImageView) findViewById(C10651R.id.lineStyleArrow);
        if (tintImageView == null) {
            return;
        }
        tintImageView.setRotation(rotation);
    }

    public final void setPenViewModel(@NotNull final PenViewModel penViewModel) {
        Intrinsics.checkNotNullParameter(penViewModel, "penViewModel");
        this.penViewModel = penViewModel;
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null) {
            return;
        }
        penViewModel.getPenType().observe(appCompatActivity, new C12502a(new Function1<ShapeToolType, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ColorSizePropertyView$setPenViewModel$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ShapeToolType shapeToolType) {
                invoke2(shapeToolType);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ShapeToolType shapeToolType) {
                ColorSizePropertyView colorSizePropertyView = ColorSizePropertyView.this;
                Intrinsics.checkNotNull(shapeToolType);
                colorSizePropertyView.m49866m(shapeToolType);
            }
        }));
        penViewModel.getColor().observe(appCompatActivity, new C12502a(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ColorSizePropertyView$setPenViewModel$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke2(num);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Integer num) {
                if (num != null) {
                    ColorSizePropertyView.this.m49875v(num.intValue());
                }
            }
        }));
        penViewModel.getColorIndex().observe(appCompatActivity, new C12502a(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ColorSizePropertyView$setPenViewModel$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke2(num);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Integer num) {
                if (num != null) {
                    ColorSizePropertyView.this.m49872s(num.intValue());
                }
            }
        }));
        penViewModel.getColorSet().observe(appCompatActivity, new C12502a(new Function1<IntList, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ColorSizePropertyView$setPenViewModel$4
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
            public final void invoke2(IntList intList) {
                if (intList != null) {
                    ColorSizePropertyView colorSizePropertyView = ColorSizePropertyView.this;
                    Integer value = penViewModel.getColorIndex().getValue();
                    if (value == null) {
                        value = 0;
                    }
                    Intrinsics.checkNotNull(value);
                    colorSizePropertyView.m49870q(intList, value.intValue());
                }
            }
        }));
        penViewModel.getSize().observe(appCompatActivity, new C12502a(new Function1<Float, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ColorSizePropertyView$setPenViewModel$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Float f) {
                invoke2(f);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Float f) {
                if (f != null) {
                    ColorSizePropertyView.this.m49874u(f.floatValue());
                }
            }
        }));
        m49864h();
    }

    public final void sizeChange() {
        int i;
        LinearLayout linearLayout = this.sizeContainer;
        LinearLayout linearLayout2 = null;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sizeContainer");
            linearLayout = null;
        }
        int childCount = linearLayout.getChildCount();
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                i = -1;
                break;
            }
            LinearLayout linearLayout3 = this.sizeContainer;
            if (linearLayout3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sizeContainer");
                linearLayout3 = null;
            }
            View childAt = linearLayout3.getChildAt(i2);
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type com.onyx.galaxy.note.editor.view.toolbar.SizeView");
            if (((SizeView) childAt).getIsSelect()) {
                i = i2 + 1;
                break;
            }
            i2++;
        }
        LinearLayout linearLayout4 = this.colorContainer;
        if (linearLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
            linearLayout4 = null;
        }
        int childCount2 = i % linearLayout4.getChildCount();
        MathUtils mathUtils = MathUtils.INSTANCE;
        Integer valueOf = Integer.valueOf(childCount2);
        LinearLayout linearLayout5 = this.sizeContainer;
        if (linearLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sizeContainer");
            linearLayout5 = null;
        }
        int intValue = ((Number) mathUtils.clamp(valueOf, 0, Integer.valueOf(linearLayout5.getChildCount() - 1))).intValue();
        LinearLayout linearLayout6 = this.sizeContainer;
        if (linearLayout6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sizeContainer");
        } else {
            linearLayout2 = linearLayout6;
        }
        View childAt2 = linearLayout2.getChildAt(intValue);
        Intrinsics.checkNotNull(childAt2, "null cannot be cast to non-null type com.onyx.galaxy.note.editor.view.toolbar.SizeView");
        m49863g((SizeView) childAt2);
    }

    /* renamed from: t */
    public final void m49873t() {
        LinearLayout linearLayout = this.lineStyleGroup;
        if (linearLayout != null) {
            linearLayout.setVisibility(m49868o() ? 0 : 8);
        }
        PenViewModel penViewModel = this.penViewModel;
        if (penViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penViewModel");
            penViewModel = null;
        }
        Integer value = penViewModel.getLineStyleType().getValue();
        if (value == null) {
            value = 0;
        }
        int intValue = value.intValue();
        int i = intValue != 0 ? intValue != 1 ? intValue != 2 ? C10651R.drawable.graph_line_solid : C10651R.drawable.graph_line_dot : C10651R.drawable.graph_line_dash : C10651R.drawable.graph_line_solid;
        ImageView imageView = this.lineStyleImage;
        if (imageView != null) {
            imageView.setImageResource(i);
        }
    }

    /* renamed from: u */
    public final void m49874u(float size) {
        LinearLayout linearLayout = this.sizeContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sizeContainer");
            linearLayout = null;
        }
        if (linearLayout.isShown()) {
            LinearLayout linearLayout2 = this.sizeContainer;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sizeContainer");
                linearLayout2 = null;
            }
            int childCount = linearLayout2.getChildCount();
            for (int i = 0; i < childCount; i++) {
                LinearLayout linearLayout3 = this.sizeContainer;
                if (linearLayout3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("sizeContainer");
                    linearLayout3 = null;
                }
                View childAt = linearLayout3.getChildAt(i);
                if (childAt instanceof SizeView) {
                    SizeView sizeView = (SizeView) childAt;
                    if (sizeView.getIsSelect()) {
                        sizeView.setSize(size);
                    }
                }
            }
        }
    }

    /* renamed from: v */
    public final void m49875v(int color) {
        LinearLayout linearLayout = this.colorContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
            linearLayout = null;
        }
        if (linearLayout.isShown()) {
            LinearLayout linearLayout2 = this.colorContainer;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
                linearLayout2 = null;
            }
            int childCount = linearLayout2.getChildCount();
            for (int i = 0; i < childCount; i++) {
                LinearLayout linearLayout3 = this.colorContainer;
                if (linearLayout3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("colorContainer");
                    linearLayout3 = null;
                }
                View childAt = linearLayout3.getChildAt(i);
                ColorView colorView = childAt instanceof ColorView ? (ColorView) childAt : null;
                if (colorView != null && colorView.getIsSelect()) {
                    colorView.setColor(color);
                }
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ColorSizePropertyView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ColorSizePropertyView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ColorSizePropertyView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ColorSizePropertyView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
