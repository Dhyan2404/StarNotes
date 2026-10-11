package com.onyx.galaxy.note.editor.view.toolbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.DockPoint;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.extension.PopupLocator;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction;
import com.onyx.galaxy.note.editor.data.PenPropertyBean;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.popup.ColorPickPopup;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001b\b\u0016\u0012\u0006\u0010L\u001a\u00020K\u0012\b\u0010+\u001a\u0004\u0018\u00010*¢\u0006\u0004\bM\u0010NB#\b\u0016\u0012\u0006\u0010L\u001a\u00020K\u0012\b\u0010+\u001a\u0004\u0018\u00010*\u0012\u0006\u0010O\u001a\u00020\u0002¢\u0006\u0004\bM\u0010PJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005J\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002J\u0016\u0010\r\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0002J\u000e\u0010\r\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0002J\u0016\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0002J\u0016\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0002J\u0016\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0002J\u007f\u0010%\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2U\u0010$\u001aQ\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b( \u0012\u0013\u0012\u00110!¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00070\u001cj\b\u0012\u0004\u0012\u00020\u0002`#J\u000e\u0010'\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u0002J]\u0010)\u001a\u00020\u00072U\u0010(\u001aQ\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b( \u0012\u0013\u0012\u00110!¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00070\u001cj\b\u0012\u0004\u0012\u00020\u0002`#J\u0012\u0010,\u001a\u00020\u00072\b\u0010+\u001a\u0004\u0018\u00010*H\u0002J\b\u0010-\u001a\u00020\u0007H\u0002J\b\u0010.\u001a\u00020\u0007H\u0002J\u0018\u00101\u001a\u00020\u00072\u0006\u00100\u001a\u00020/2\u0006\u0010\u0010\u001a\u00020\u0002H\u0002J\u0091\u0001\u00104\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0006\u00102\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00022U\u00103\u001aQ\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b( \u0012\u0013\u0012\u00110!¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00070\u001cj\b\u0012\u0004\u0012\u00020\u0002`#H\u0002Jw\u00105\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00022U\u00103\u001aQ\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b( \u0012\u0013\u0012\u00110!¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00070\u001cj\b\u0012\u0004\u0012\u00020\u0002`#2\u0006\u0010\"\u001a\u00020!H\u0002J\u0018\u00108\u001a\u00020\u00072\u0006\u00107\u001a\u0002062\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u00109\u001a\u00020!2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002Re\u0010(\u001aQ\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b( \u0012\u0013\u0012\u00110!¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00070\u001cj\b\u0012\u0004\u0012\u00020\u0002`#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010:R\u0016\u0010&\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u0010;R#\u0010A\u001a\n =*\u0004\u0018\u00010<0<8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u0010>\u001a\u0004\b?\u0010@R\u001b\u0010E\u001a\u00020B8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u0010>\u001a\u0004\bC\u0010DR\u0016\u0010H\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010J\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010G¨\u0006Q"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;", "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;", "", "getSelectedIndex", "getFillColor", "", "getFillColorList", "", "resetSelection", "selectedColor", "updateSelection", CouchFieldKey.KEY_FILL_COLOR, "fillColorIndex", "updateFillColor", "Lcom/onyx/android/sdk/base/extension/IntList;", "colorList", "colorIndex", "updateFillColorList", "saveFillColorProperty", "saveFillColorListProperty", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Landroid/view/View;", "anchorView", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "shapeToolType", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "item", FirebaseAnalytics.Param.INDEX, "", "isSameItemSelected", "Lcom/onyx/android/sdk/base/extension/ItemSelectedListener;", "itemSelectedCallback", "initFillColorLayout", "shapeType", "setShapeType", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setItemSelectedListener", "Landroid/util/AttributeSet;", "attrs", "c", C6997f.f39671c, "d", "Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;", "colorView", C6999h.f39688c, "originFillColor", "itemSelectedListener", "j", "i", "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;", "popup", C4921e.f26537n, C6998g.f39679a, "Lkotlin/jvm/functions/Function3;", "I", "Landroid/view/ViewGroup;", "kotlin.jvm.PlatformType", "Lkotlin/Lazy;", "getColorContainer", "()Landroid/view/ViewGroup;", "colorContainer", "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "getPenProperty", "()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "penProperty", "l", Constants.HASIDCALL_INDEX_SIG, "isLargeLayout", "m", "saveColor", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeFillColorPropertyLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeFillColorPropertyLayout.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,272:1\n1#2:273\n*E\n"})
/* loaded from: classes9.dex */
public final class ShapeFillColorPropertyLayout extends TintFrameLayout {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public Function3<? super Integer, ? super Integer, ? super Boolean, Unit> listener;

    /* renamed from: i, reason: from kotlin metadata */
    public int shapeType;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy colorContainer;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Lazy penProperty;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean isLargeLayout;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean saveColor;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DockType.values().length];
            try {
                iArr[DockType.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DockType.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DockType.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DockType.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShapeFillColorPropertyLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: e */
    public static final void m50155e(ShapeFillColorPropertyLayout this$0, View view, int i, View view2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        this$0.m50160h((ColorView) view, i);
    }

    private final ViewGroup getColorContainer() {
        return (ViewGroup) this.colorContainer.getValue();
    }

    private final PenPropertyBean getPenProperty() {
        return (PenPropertyBean) this.penProperty.getValue();
    }

    /* renamed from: c */
    public final void m50156c(AttributeSet attrs) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.ShapeFillColorPropertyLayout);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.isLargeLayout = obtainStyledAttributes.getBoolean(C10651R.styleable.ShapeFillColorPropertyLayout_isLarge, true);
        this.saveColor = obtainStyledAttributes.getBoolean(C10651R.styleable.ShapeFillColorPropertyLayout_saveColor, true);
        obtainStyledAttributes.recycle();
        if (this.isLargeLayout) {
            LayoutInflater.from(getContext()).inflate(C10651R.layout.layout_color_property_large, (ViewGroup) this, true);
        } else {
            LayoutInflater.from(getContext()).inflate(C10651R.layout.layout_color_property, (ViewGroup) this, true);
        }
        m50158f();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0055  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m50157d() {
        /*
            r8 = this;
            com.onyx.galaxy.note.editor.data.PenPropertyBean r0 = r8.getPenProperty()
            int r1 = r8.shapeType
            com.onyx.android.sdk.data.utils.IntListOption r0 = r0.getFillColorListOption(r1)
            com.onyx.android.sdk.base.extension.IntList r0 = r0.getValue()
            com.onyx.galaxy.note.editor.data.PenPropertyBean r1 = r8.getPenProperty()
            int r2 = r8.shapeType
            com.onyx.android.sdk.data.utils.IntOption r1 = r1.getFillColorIndexOption(r2)
            int r1 = r1.get()
            android.view.ViewGroup r2 = r8.getColorContainer()
            int r2 = r2.getChildCount()
            r3 = 0
            r4 = r3
        L26:
            if (r4 >= r2) goto L64
            android.view.ViewGroup r5 = r8.getColorContainer()
            android.view.View r5 = r5.getChildAt(r4)
            boolean r6 = r5 instanceof com.onyx.galaxy.note.editor.view.toolbar.ColorView
            if (r6 == 0) goto L61
            r6 = r5
            com.onyx.galaxy.note.editor.view.toolbar.ColorView r6 = (com.onyx.galaxy.note.editor.view.toolbar.ColorView) r6
            if (r4 < 0) goto L44
            int r7 = kotlin.collections.CollectionsKt.getLastIndex(r0)
            if (r4 > r7) goto L44
            java.lang.Object r7 = r0.get(r4)
            goto L48
        L44:
            java.lang.Integer r7 = java.lang.Integer.valueOf(r3)
        L48:
            java.lang.Number r7 = (java.lang.Number) r7
            int r7 = r7.intValue()
            r6.setColor(r7)
            if (r1 != r4) goto L55
            r7 = 1
            goto L56
        L55:
            r7 = r3
        L56:
            r6.setSelect(r7)
            com.sunia.HTREnginev2.cmm r6 = new com.sunia.HTREnginev2.cmm
            r6.<init>()
            r5.setOnClickListener(r6)
        L61:
            int r4 = r4 + 1
            goto L26
        L64:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.toolbar.ShapeFillColorPropertyLayout.m50157d():void");
    }

    /* renamed from: f */
    public final void m50158f() {
        m50157d();
    }

    /* renamed from: g */
    public final boolean m50159g(View anchorView) {
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        Rect rectInActivity = viewLocator.rectInActivity(anchorView);
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        Rect rectInWindow = viewLocator.rectInWindow(viewLocator.getActivityDecorView(context));
        return rectInWindow.right - rectInActivity.right > rectInActivity.left - rectInWindow.left;
    }

    public final int getFillColor() {
        int childCount = getColorContainer().getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getColorContainer().getChildAt(i);
            ColorView colorView = childAt instanceof ColorView ? (ColorView) childAt : null;
            if (colorView != null && colorView.getIsSelect()) {
                return colorView.getColor();
            }
        }
        return 0;
    }

    @NotNull
    public final List<Integer> getFillColorList() {
        ArrayList arrayList = new ArrayList();
        int childCount = getColorContainer().getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getColorContainer().getChildAt(i);
            ColorView colorView = childAt instanceof ColorView ? (ColorView) childAt : null;
            if (colorView != null) {
                arrayList.add(Integer.valueOf(colorView.getColor()));
            }
        }
        return arrayList;
    }

    public final int getSelectedIndex() {
        int childCount = getColorContainer().getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getColorContainer().getChildAt(i);
            ColorView colorView = childAt instanceof ColorView ? (ColorView) childAt : null;
            if (colorView != null) {
                if ((colorView.getIsSelect() ? colorView : null) != null) {
                    return i;
                }
            }
        }
        return -1;
    }

    /* renamed from: h */
    public final void m50160h(ColorView colorView, int colorIndex) {
        boolean z = colorIndex == getSelectedIndex();
        int childCount = getColorContainer().getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getColorContainer().getChildAt(i);
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type com.onyx.galaxy.note.editor.view.toolbar.ColorView");
            ((ColorView) childAt).setSelect(Intrinsics.areEqual(childAt, colorView));
        }
        this.listener.invoke(Integer.valueOf(colorView.getColor()), Integer.valueOf(colorIndex), Boolean.valueOf(z));
    }

    /* renamed from: i */
    public final void m50161i(int fillColor, int fillColorIndex, Function3<? super Integer, ? super Integer, ? super Boolean, Unit> itemSelectedListener, boolean isSameItemSelected) {
        saveFillColorProperty(fillColor, fillColorIndex);
        itemSelectedListener.invoke(Integer.valueOf(fillColor), Integer.valueOf(fillColorIndex), Boolean.valueOf(isSameItemSelected));
    }

    public final void initFillColorLayout(@NotNull final EditorBundle editorBundle, @NotNull final View anchorView, @NotNull final DockType dockType, @Nullable final ShapeToolType shapeToolType, @NotNull final Function3<? super Integer, ? super Integer, ? super Boolean, Unit> itemSelectedCallback) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(anchorView, "anchorView");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        Intrinsics.checkNotNullParameter(itemSelectedCallback, "itemSelectedCallback");
        setShapeType(this.shapeType);
        setItemSelectedListener(new Function3<Integer, Integer, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeFillColorPropertyLayout$initFillColorLayout$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, Integer num2, Boolean bool) {
                invoke(num.intValue(), num2.intValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i, int i2, boolean z) {
                if (z) {
                    ShapeFillColorPropertyLayout.this.m50162j(editorBundle, anchorView, dockType, shapeToolType, i, i2, itemSelectedCallback);
                } else {
                    ShapeFillColorPropertyLayout.this.m50161i(i, i2, itemSelectedCallback, z);
                }
            }
        });
    }

    /* renamed from: j */
    public final void m50162j(final EditorBundle editorBundle, final View anchorView, final DockType dockType, final ShapeToolType shapeToolType, final int originFillColor, final int fillColorIndex, final Function3<? super Integer, ? super Integer, ? super Boolean, Unit> itemSelectedListener) {
        if (anchorView == null) {
            return;
        }
        final List<Integer> fillColorList = getFillColorList();
        RxBaseAction.execute$default(new ShowColorPickerAction(editorBundle, shapeToolType, anchorView, this, originFillColor, dockType, fillColorIndex, itemSelectedListener, fillColorList) { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1

            /* renamed from: q */
            public final /* synthetic */ ShapeFillColorPropertyLayout f60915q;

            /* renamed from: r */
            public final /* synthetic */ DockType f60916r;

            /* renamed from: s */
            public final /* synthetic */ int f60917s;

            /* renamed from: t */
            public final /* synthetic */ Function3<Integer, Integer, Boolean, Unit> f60918t;

            /* JADX WARN: Multi-variable type inference failed */
            {
                this.f60915q = this;
                this.f60916r = dockType;
                this.f60917s = fillColorIndex;
                this.f60918t = itemSelectedListener;
            }

            @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction, com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
            public void onColorSelected(int fillColor) {
                this.f60915q.updateFillColor(fillColor, this.f60917s);
                this.f60915q.m50161i(fillColor, this.f60917s, this.f60918t, false);
            }

            @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction, com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
            public void onColorSetSelected(@NotNull ColorSetModel colorSet) {
                int i;
                Intrinsics.checkNotNullParameter(colorSet, "colorSet");
                IntList intList = TypeExtKt.toIntList(colorSet.getColors());
                Integer num = intList.get(this.f60917s);
                Intrinsics.checkNotNullExpressionValue(num, "get(...)");
                int intValue = num.intValue();
                PenPropertyBean penProperty = getPenProperty();
                i = this.f60915q.shapeType;
                penProperty.getFillColorListOption(i).set(intList);
                this.f60915q.updateFillColorList(intList, this.f60917s);
                this.f60915q.m50161i(intValue, this.f60917s, this.f60918t, false);
            }

            @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction
            public void showPopupWindow(@NotNull ColorPickPopup popup) {
                Intrinsics.checkNotNullParameter(popup, "popup");
                this.f60915q.m50163k(popup, this.f60916r);
            }
        }, null, null, null, 7, null);
    }

    /* renamed from: k */
    public final void m50163k(ColorPickPopup popup, DockType dockType) {
        WindowLocation windowLocation;
        View windowDecorView = ViewLocator.INSTANCE.getWindowDecorView(this);
        Intrinsics.checkNotNull(windowDecorView);
        boolean m50159g = m50159g(windowDecorView);
        int i = WhenMappings.$EnumSwitchMapping$0[dockType.ordinal()];
        if (i == 1) {
            windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) popup, windowDecorView, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.TOP_LEFT, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.TOP_RIGHT, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : null);
        } else if (i == 2) {
            windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) popup, windowDecorView, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.TOP_RIGHT, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.TOP_LEFT, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : null);
        } else if (i == 3) {
            windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) popup, windowDecorView, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.reverse$default(DockPoint.BOTTOM_RIGHT, !m50159g, false, 2, null), (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.reverse$default(DockPoint.BOTTOM_LEFT, !m50159g, false, 2, null), (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : null);
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) popup, windowDecorView, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.reverse$default(DockPoint.TOP_RIGHT, !m50159g, false, 2, null), (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.reverse$default(DockPoint.TOP_LEFT, !m50159g, false, 2, null), (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : null);
        }
        PopupLocator.show$default(PopupLocator.INSTANCE, popup, windowLocation, null, 2, null);
    }

    public final void resetSelection() {
        int childCount = getColorContainer().getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getColorContainer().getChildAt(i);
            ColorView colorView = childAt instanceof ColorView ? (ColorView) childAt : null;
            if (colorView != null) {
                colorView.setSelect(false);
            }
        }
    }

    public final void saveFillColorListProperty(@NotNull IntList colorList, int colorIndex) {
        Intrinsics.checkNotNullParameter(colorList, "colorList");
        if (this.saveColor) {
            PenPropertyBean penProperty = getPenProperty();
            penProperty.getFillColorListOption(this.shapeType).set(colorList);
            penProperty.getFillColorIndexOption(this.shapeType).put(colorIndex);
        }
    }

    public final void saveFillColorProperty(final int fillColor, final int fillColorIndex) {
        if (this.saveColor) {
            PenPropertyBean penProperty = getPenProperty();
            penProperty.getFillColorOption(this.shapeType).put(fillColor);
            penProperty.getFillColorListOption(this.shapeType).getAndPut(new Function1<IntList, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeFillColorPropertyLayout$saveFillColorProperty$1$1
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
                    it2.set(fillColorIndex, Integer.valueOf(fillColor));
                }
            });
            penProperty.getFillColorIndexOption(this.shapeType).put(fillColorIndex);
        }
    }

    public final void setItemSelectedListener(@NotNull Function3<? super Integer, ? super Integer, ? super Boolean, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    public final void setShapeType(int shapeType) {
        this.shapeType = shapeType;
        m50157d();
    }

    public final void updateFillColor(int fillColor, int fillColorIndex) {
        int childCount = getColorContainer().getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getColorContainer().getChildAt(i);
            ColorView colorView = childAt instanceof ColorView ? (ColorView) childAt : null;
            if (colorView != null) {
                colorView.setSelect(fillColorIndex == i);
                if (colorView.getIsSelect()) {
                    colorView.setColor(fillColor);
                }
            }
            i++;
        }
    }

    public final void updateFillColorList(@NotNull IntList colorList, int colorIndex) {
        Object orNull;
        Intrinsics.checkNotNullParameter(colorList, "colorList");
        int childCount = getColorContainer().getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getColorContainer().getChildAt(i);
            ColorView colorView = childAt instanceof ColorView ? (ColorView) childAt : null;
            if (colorView != null) {
                orNull = CollectionsKt___CollectionsKt.getOrNull(colorList, i);
                Integer num = (Integer) orNull;
                if (num == null) {
                    return;
                }
                colorView.setColor(num.intValue());
                colorView.setSelect(colorIndex == i);
                saveFillColorListProperty(colorList, colorIndex);
            }
            i++;
        }
    }

    public final void updateSelection(int selectedColor) {
        int childCount = getColorContainer().getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getColorContainer().getChildAt(i);
            ColorView colorView = childAt instanceof ColorView ? (ColorView) childAt : null;
            if (colorView != null) {
                colorView.setSelect(colorView.getColor() == selectedColor);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShapeFillColorPropertyLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        this.listener = TypeExtKt.getEmptyIntItemSelectedListener();
        this.shapeType = -1;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ViewGroup>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeFillColorPropertyLayout$colorContainer$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewGroup invoke() {
                return (ViewGroup) ShapeFillColorPropertyLayout.this.findViewById(C10651R.id.color_container);
            }
        });
        this.colorContainer = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<PenPropertyBean>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeFillColorPropertyLayout$penProperty$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PenPropertyBean invoke() {
                return NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty();
            }
        });
        this.penProperty = lazy2;
        this.saveColor = true;
        m50156c(attributeSet);
    }

    public final void updateFillColor(int fillColor) {
        resetSelection();
        updateSelection(fillColor);
    }
}
