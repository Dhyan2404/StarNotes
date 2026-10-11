package com.onyx.galaxy.note.p048ui.colorpicker.view;

import android.content.ClipData;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.GridLayout;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import androidx.annotation.ColorInt;
import com.caverock.androidsvg.SVGParser;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TimedTask;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.utils.IntListOption;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.colorset.data.ColorPickerValues;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.android.sdk.universal.common.drag.DragAndDropUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.ViewColorPickBinding;
import com.onyx.galaxy.note.p048ui.colorpicker.drawable.ColorAddDrawable;
import com.onyx.galaxy.note.p048ui.colorpicker.drawable.ColorCellDrawable;
import com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010O\u001a\u00020N¢\u0006\u0004\bP\u0010QB\u001b\b\u0016\u0012\u0006\u0010O\u001a\u00020N\u0012\b\u0010S\u001a\u0004\u0018\u00010R¢\u0006\u0004\bP\u0010TJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005H\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005H\u0002J\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0005H\u0002J\u0010\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u0010\u0015\u001a\u00020\u0002H\u0002J\b\u0010\u0016\u001a\u00020\u0002H\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0012H\u0002J \u0010\u001b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0010H\u0002J\u0010\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0005H\u0002J\b\u0010\u001d\u001a\u00020\u0002H\u0002J\b\u0010\u001e\u001a\u00020\u0012H\u0002J\u0010\u0010\u001f\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005H\u0002J\u0010\u0010 \u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005H\u0002J\u0012\u0010!\u001a\u00020\u00022\b\b\u0001\u0010\u0019\u001a\u00020\u0012H\u0002J\b\u0010\"\u001a\u00020\u0002H\u0002J\b\u0010#\u001a\u00020\u0002H\u0002J\b\u0010$\u001a\u00020\u0002H\u0002J\u000e\u0010'\u001a\u00020\u00022\u0006\u0010&\u001a\u00020%J\u0010\u0010(\u001a\u00020\u00022\b\b\u0001\u0010\u0019\u001a\u00020\u0012J\b\u0010)\u001a\u00020\u0002H\u0014J\u0006\u0010*\u001a\u00020\u0002J\u0010\u0010,\u001a\u00020\u00022\b\b\u0002\u0010+\u001a\u00020\u0010J\u0010\u0010.\u001a\u00020\u00022\b\b\u0002\u0010-\u001a\u00020\u0010J\u0006\u00100\u001a\u00020/R\u0018\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u00101R\u0014\u00102\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010!R\u0014\u00104\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u0010!R\u0014\u00106\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u0010!R\u0014\u00108\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u0010!R\u001b\u0010=\u001a\u0002098BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010:\u001a\u0004\b;\u0010<R\u001a\u0010B\u001a\u00020>8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b#\u0010?\u001a\u0004\b@\u0010AR\u0014\u0010F\u001a\u00020C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010ER\u0016\u0010G\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010!R\u0018\u0010J\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010IR\u0016\u0010K\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010!R\u0016\u0010M\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010L¨\u0006U"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;", "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;", "", "v", "u", "Landroid/view/View;", "q", "m", "F", "B", "cell", "i", "G", "Landroid/graphics/Point;", "point", "t", "", "x", "", FirebaseAnalytics.Param.INDEX, "p", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, SardineUtil.DEFAULT_NAMESPACE_PREFIX, "argb", "z", "color", "selected", "E", "y", "r", "getSelectedColor", "A", "s", "I", "J", GoogleApiAvailabilityLight.f29016b, C6999h.f39688c, "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;", "callback", "setCallback", "setSelectionColor", "onAttachedToWindow", "removeSelectedCell", "enable", "setOpaqueColorOnly", "disable", "setDisableAlphaColor", "Lcom/onyx/android/sdk/base/extension/IntList;", "getFavoritesColors", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;", "viewSize", "j", "cellViewMarginX", C4921e.f26537n, "cellViewMarginY", "l", "maxLimitSize", "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorAddDrawable;", "Lkotlin/Lazy;", "getColorAddDrawable", "()Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorAddDrawable;", "colorAddDrawable", "Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;", "Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;", "getBinding$note_overseasRelease", "()Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;", "binding", "Lcom/onyx/android/sdk/data/utils/IntListOption;", C4921e.f26528e, "Lcom/onyx/android/sdk/data/utils/IntListOption;", "favorites", "selectedIndex", "Landroid/widget/PopupWindow;", "Landroid/widget/PopupWindow;", "deleteDialog", SVGParser.f16051w, Constants.HASIDCALL_INDEX_SIG, "disableAlphaColor", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nColorPickView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorPickView.kt\ncom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,394:1\n1855#2,2:395\n1864#2,3:397\n766#2:400\n857#2,2:401\n*S KotlinDebug\n*F\n+ 1 ColorPickView.kt\ncom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView\n*L\n135#1:395,2\n141#1:397,3\n389#1:400\n389#1:401,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ColorPickView extends TintFrameLayout {

    /* renamed from: h */
    @Nullable
    public ColorPickerCallback callback;

    /* renamed from: i, reason: from kotlin metadata */
    public final int viewSize;

    /* renamed from: j, reason: from kotlin metadata */
    public final int cellViewMarginX;

    /* renamed from: k */
    public final int cellViewMarginY;

    /* renamed from: l, reason: from kotlin metadata */
    public final int maxLimitSize;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Lazy colorAddDrawable;

    /* renamed from: n */
    @NotNull
    public final ViewColorPickBinding binding;

    /* renamed from: o */
    @NotNull
    public final IntListOption favorites;

    /* renamed from: p, reason: from kotlin metadata */
    public int selectedIndex;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public PopupWindow deleteDialog;

    /* renamed from: r, reason: from kotlin metadata */
    public int com.caverock.androidsvg.SVGParser.w java.lang.String;

    /* renamed from: s */
    public boolean disableAlphaColor;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ColorPickView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: H */
    public static final boolean m51276H(ColorPickView this$0, View cell, View view, DragEvent dragEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(cell, "$cell");
        if (dragEvent.getAction() != 3) {
            return true;
        }
        this$0.m51305t(cell, new Point((int) dragEvent.getX(), (int) dragEvent.getY()));
        cell.cancelDragAndDrop();
        return true;
    }

    private final ColorAddDrawable getColorAddDrawable() {
        return (ColorAddDrawable) this.colorAddDrawable.getValue();
    }

    private final int getSelectedColor() {
        if (CollectionKt.isOutOfRange(getFavoritesColors(), this.selectedIndex)) {
            return 0;
        }
        Integer num = getFavoritesColors().get(this.selectedIndex);
        Intrinsics.checkNotNull(num);
        return num.intValue();
    }

    /* renamed from: j */
    public static final void m51283j(ColorPickView this$0, View cell, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(cell, "$cell");
        this$0.m51288A(cell);
    }

    /* renamed from: k */
    public static final void m51284k(ColorPickView this$0, View cell) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(cell, "$cell");
        ColorPickerCallback colorPickerCallback = this$0.callback;
        this$0.deleteDialog = colorPickerCallback != null ? colorPickerCallback.showDeleteDialog(this$0, cell) : null;
        this$0.m51288A(cell);
    }

    /* renamed from: l */
    public static final void m51285l(ColorPickView this$0, View cell) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(cell, "$cell");
        AnyKt.whenNotNull(this$0.deleteDialog, new Function1<PopupWindow, Unit>() { // from class: com.onyx.galaxy.note.ui.colorpicker.view.ColorPickView$addCellListener$moveTask$1$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PopupWindow popupWindow) {
                invoke2(popupWindow);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull PopupWindow it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                if (it2.isShowing()) {
                    it2.dismiss();
                }
            }
        });
        this$0.m51304s(cell);
        this$0.m51294G(cell);
        this$0.m51288A(cell);
    }

    /* renamed from: o */
    public static final void m51286o(ColorPickView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.binding.scrollView.scrollTo(0, this$0.binding.scrollView.getChildAt(0).getMeasuredHeight());
    }

    public static /* synthetic */ void setDisableAlphaColor$default(ColorPickView colorPickView, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        colorPickView.setDisableAlphaColor(z);
    }

    public static /* synthetic */ void setOpaqueColorOnly$default(ColorPickView colorPickView, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        colorPickView.setOpaqueColorOnly(z);
    }

    /* renamed from: w */
    public static final void m51287w(ColorPickView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.getFavoritesColors().size() >= this$0.maxLimitSize) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.color_reach_max_cell_limit, false, 2, (Object) null);
            return;
        }
        GridLayout cellLayout = this$0.binding.cellLayout;
        Intrinsics.checkNotNullExpressionValue(cellLayout, "cellLayout");
        View lastChild = ViewKt.lastChild(cellLayout);
        Intrinsics.checkNotNull(lastChild);
        this$0.m51300n();
        if (this$0.getFavoritesColors().size() < this$0.maxLimitSize) {
            this$0.m51297h();
            this$0.m51298i(lastChild);
        }
    }

    /* renamed from: A */
    public final void m51288A(View cell) {
        m51303r();
        int indexInParent = ViewKt.indexInParent(cell);
        this.selectedIndex = indexInParent;
        m51292E(m51301p(indexInParent), getSelectedColor(), true);
        if (m51308x(cell)) {
            return;
        }
        Integer num = getFavoritesColors().get(this.selectedIndex);
        Intrinsics.checkNotNullExpressionValue(num, "get(...)");
        int intValue = num.intValue();
        m51295I(intValue);
        this.binding.colorPanel.setSelectionColor(intValue);
        ColorPickerCallback colorPickerCallback = this.callback;
        if (colorPickerCallback != null) {
            colorPickerCallback.onColorSelected(intValue);
        }
    }

    /* renamed from: B */
    public final void m51289B() {
        int size = getFavoritesColors().size();
        for (int i = 0; i < size; i++) {
            m51298i(m51301p(i));
        }
        if (getFavoritesColors().size() < this.maxLimitSize) {
            m51297h();
        }
    }

    /* renamed from: C */
    public final void m51290C() {
        this.binding.colorPanel.setCallback(new ColorPickView$setColorPanelCallback$1(this));
    }

    /* renamed from: D */
    public final void m51291D() {
        this.binding.colorValueText.setCallback(new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.ui.colorpicker.view.ColorPickView$setColorValueCallback$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                ColorPickView.this.m51310z(Color.argb((ColorPickView.this.getBinding().colorPanel.getArgb() >> 24) & 255, (i >> 16) & 255, (i >> 8) & 255, i & 255));
            }
        });
        this.binding.alphaValueText.setCallback(new Function1<Float, Unit>() { // from class: com.onyx.galaxy.note.ui.colorpicker.view.ColorPickView$setColorValueCallback$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Float f) {
                invoke(f.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f) {
                int argb = ColorPickView.this.getBinding().colorPanel.getArgb();
                ColorPickView.this.m51310z(Color.argb((int) (f * 255), (argb >> 16) & 255, (argb >> 8) & 255, 255 & argb));
            }
        });
    }

    /* renamed from: E */
    public final void m51292E(View cell, int color, boolean selected) {
        ColorCellDrawable colorCellDrawable = new ColorCellDrawable(color, selected, ViewKt.indexInParent(cell) == getFavoritesColors().size());
        int i = this.viewSize;
        colorCellDrawable.setBounds(new RectF(0.0f, 0.0f, i, i));
        cell.setBackground(colorCellDrawable);
        cell.setTag(Integer.valueOf(color));
    }

    /* renamed from: F */
    public final void m51293F() {
        int i = 0;
        for (Integer num : getFavoritesColors()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            m51292E(m51301p(i), num.intValue(), false);
            i = i2;
        }
    }

    /* renamed from: G */
    public final void m51294G(final View cell) {
        cell.startDragAndDrop(ClipData.newIntent(DragAndDropUtils.DRAG_DROP_TYPE_COLOR_CELL, DragAndDropUtils.INSTANCE.buildCustomDragDropIntent(DragAndDropUtils.DRAG_DROP_TYPE_COLOR_CELL)), new View.DragShadowBuilder(cell), null, 0);
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        LinearLayout root = this.binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        viewLocator.getWindowDecorView(root).setOnDragListener(new View.OnDragListener() { // from class: com.sunia.HTREnginev2.x1e
            @Override // android.view.View.OnDragListener
            public final boolean onDrag(View view, DragEvent dragEvent) {
                boolean m51276H;
                m51276H = ColorPickView.m51276H(ColorPickView.this, cell, view, dragEvent);
                return m51276H;
            }
        });
    }

    /* renamed from: I */
    public final void m51295I(@ColorInt int color) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%06X", Arrays.copyOf(new Object[]{Integer.valueOf(16777215 & color)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        this.binding.colorValueText.setText(format);
        String format2 = String.format("%.0f%%", Arrays.copyOf(new Object[]{Float.valueOf(((color >>> 24) * 100) / 255.0f)}, 1));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        this.binding.alphaValueText.clearFocus();
        this.binding.alphaValueText.setText(format2);
        this.com.caverock.androidsvg.SVGParser.w java.lang.String = color;
        m51296J();
    }

    /* renamed from: J */
    public final void m51296J() {
        getColorAddDrawable().setColor(this.com.caverock.androidsvg.SVGParser.w java.lang.String);
        getColorAddDrawable().setBounds(0, 0, this.binding.ivPickedColor.getMeasuredWidth(), this.binding.ivPickedColor.getMeasuredHeight());
        this.binding.ivPickedColor.setBackground(getColorAddDrawable());
    }

    @NotNull
    /* renamed from: getBinding$note_overseasRelease, reason: from getter */
    public final ViewColorPickBinding getBinding() {
        return this.binding;
    }

    @NotNull
    public final IntList getFavoritesColors() {
        if (!this.disableAlphaColor) {
            return this.favorites.getValue();
        }
        IntList value = this.favorites.getValue();
        ArrayList arrayList = new ArrayList();
        for (Integer num : value) {
            if (!ColorKt.hasTransparent(num.intValue())) {
                arrayList.add(num);
            }
        }
        return TypeExtKt.toIntList(arrayList);
    }

    /* renamed from: h */
    public final void m51297h() {
        View m51302q = m51302q();
        m51292E(m51302q, 0, false);
        m51298i(m51302q);
    }

    /* renamed from: i */
    public final void m51298i(final View cell) {
        cell.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.y1e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ColorPickView.m51283j(ColorPickView.this, cell, view);
            }
        });
        if (m51308x(cell)) {
            return;
        }
        ResManager resManager = ResManager.INSTANCE;
        ViewKt.handleTouchEventByPressTime(cell, new TimedTask(resManager.getLong(C10651R.integer.threshold_time_delete_color), new Runnable() { // from class: com.sunia.HTREnginev2.z1e
            @Override // java.lang.Runnable
            public final void run() {
                ColorPickView.m51284k(ColorPickView.this, cell);
            }
        }), new TimedTask(resManager.getLong(C10651R.integer.threshold_time_move_color), new Runnable() { // from class: com.sunia.HTREnginev2.a2e
            @Override // java.lang.Runnable
            public final void run() {
                ColorPickView.m51285l(ColorPickView.this, cell);
            }
        }));
    }

    /* renamed from: m */
    public final void m51299m() {
        Iterator<Integer> it2 = getFavoritesColors().iterator();
        while (it2.hasNext()) {
            it2.next().intValue();
            m51302q();
        }
    }

    /* renamed from: n */
    public final void m51300n() {
        final int argb = this.binding.colorPanel.getArgb();
        this.favorites.getAndPut(new Function1<IntList, Unit>() { // from class: com.onyx.galaxy.note.ui.colorpicker.view.ColorPickView$addNewColor$1
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
                it2.add(Integer.valueOf(argb));
            }
        });
        GridLayout cellLayout = this.binding.cellLayout;
        Intrinsics.checkNotNullExpressionValue(cellLayout, "cellLayout");
        View lastChild = ViewKt.lastChild(cellLayout);
        Intrinsics.checkNotNull(lastChild);
        m51292E(lastChild, argb, true);
        m51288A(lastChild);
        this.binding.scrollView.post(new Runnable() { // from class: com.sunia.HTREnginev2.b2e
            @Override // java.lang.Runnable
            public final void run() {
                ColorPickView.m51286o(ColorPickView.this);
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m51291D();
    }

    /* renamed from: p */
    public final View m51301p(int r1) {
        View childAt = this.binding.cellLayout.getChildAt(r1);
        Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(...)");
        return childAt;
    }

    /* renamed from: q */
    public final View m51302q() {
        TintView tintView = new TintView(getContext());
        GridLayout.Spec spec = GridLayout.spec(Integer.MIN_VALUE, 1, GridLayout.CENTER, 0.0f);
        GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams();
        int i = this.viewSize;
        layoutParams.width = i;
        layoutParams.height = i;
        layoutParams.rowSpec = spec;
        layoutParams.columnSpec = spec;
        int i2 = this.cellViewMarginX;
        layoutParams.setMargins(i2, this.cellViewMarginY, i2, 0);
        this.binding.cellLayout.addView(tintView, layoutParams);
        return tintView;
    }

    /* renamed from: r */
    public final void m51303r() {
        int i = this.selectedIndex;
        if (i < 0 || i >= this.binding.cellLayout.getChildCount()) {
            return;
        }
        m51292E(m51301p(this.selectedIndex), getSelectedColor(), false);
        this.selectedIndex = -1;
    }

    public final void removeSelectedCell() {
        this.favorites.getAndPut(new Function1<IntList, Unit>() { // from class: com.onyx.galaxy.note.ui.colorpicker.view.ColorPickView$removeSelectedCell$1
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
                int i;
                Intrinsics.checkNotNullParameter(it2, "it");
                i = ColorPickView.this.selectedIndex;
                it2.remove(i);
            }
        });
        this.binding.cellLayout.removeViewAt(this.selectedIndex);
        this.selectedIndex = -1;
        if (getFavoritesColors().size() == this.maxLimitSize - 1) {
            m51297h();
        }
    }

    /* renamed from: s */
    public final void m51304s(View cell) {
        if (m51309y(cell)) {
            m51303r();
        }
    }

    public final void setCallback(@NotNull ColorPickerCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    public final void setDisableAlphaColor(boolean disable) {
        this.disableAlphaColor = disable;
        this.binding.cellLayout.removeAllViews();
        m51306u();
    }

    public final void setOpaqueColorOnly(boolean enable) {
        setDisableAlphaColor(true);
        this.binding.colorPanel.disableColorAlpha(enable);
        this.binding.alphaValueText.setEnabled(!enable);
    }

    public final void setSelectionColor(@ColorInt int color) {
        int indexOf = getFavoritesColors().indexOf((Object) Integer.valueOf(color));
        if (indexOf >= 0) {
            View childAt = this.binding.cellLayout.getChildAt(indexOf);
            Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(...)");
            m51288A(childAt);
        }
    }

    /* renamed from: t */
    public final void m51305t(View cell, Point point) {
        final int indexInParent = ViewKt.indexInParent(cell);
        GridLayout cellLayout = this.binding.cellLayout;
        Intrinsics.checkNotNullExpressionValue(cellLayout, "cellLayout");
        int findDropIndex = ViewKt.findDropIndex(point, cellLayout, 0);
        if (findDropIndex < 0 || findDropIndex == indexInParent || findDropIndex == indexInParent + 1) {
            return;
        }
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = findDropIndex;
        if (indexInParent < findDropIndex) {
            intRef.element = findDropIndex - 1;
        }
        int min = Math.min(intRef.element, this.binding.cellLayout.getChildCount() - 2);
        intRef.element = min;
        if (min != indexInParent) {
            this.favorites.getAndPut(new Function1<IntList, Unit>() { // from class: com.onyx.galaxy.note.ui.colorpicker.view.ColorPickView$handleDragResult$1
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
                    Integer remove = it2.remove(indexInParent);
                    Intrinsics.checkNotNullExpressionValue(remove, "removeAt(...)");
                    it2.add(intRef.element, Integer.valueOf(remove.intValue()));
                }
            });
            this.binding.cellLayout.removeViewAt(indexInParent);
            this.binding.cellLayout.addView(cell, intRef.element);
            m51288A(cell);
        }
    }

    /* renamed from: u */
    public final void m51306u() {
        m51299m();
        m51293F();
        m51289B();
    }

    /* renamed from: v */
    public final void m51307v() {
        this.binding.addButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.c2e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ColorPickView.m51287w(ColorPickView.this, view);
            }
        });
    }

    /* renamed from: x */
    public final boolean m51308x(View cell) {
        return ViewKt.indexInParent(cell) == getFavoritesColors().size();
    }

    /* renamed from: y */
    public final boolean m51309y(View cell) {
        return this.selectedIndex == ViewKt.indexInParent(cell);
    }

    /* renamed from: z */
    public final void m51310z(int argb) {
        this.com.caverock.androidsvg.SVGParser.w java.lang.String = argb;
        this.binding.colorPanel.setSelectionColor(argb);
        ColorPickerCallback colorPickerCallback = this.callback;
        if (colorPickerCallback != null) {
            colorPickerCallback.onColorSelected(this.com.caverock.androidsvg.SVGParser.w java.lang.String);
        }
        m51296J();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ColorPickView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        ResManager resManager = ResManager.INSTANCE;
        this.viewSize = (int) resManager.getDimension(C10651R.dimen.color_cell_size);
        this.cellViewMarginX = (int) resManager.getDimension(C10651R.dimen.color_cell_margin_x);
        this.cellViewMarginY = (int) resManager.getDimension(C10651R.dimen.color_cell_margin_y);
        this.maxLimitSize = resManager.getInteger(C10651R.integer.color_cell_max_limit);
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ColorAddDrawable>() { // from class: com.onyx.galaxy.note.ui.colorpicker.view.ColorPickView$colorAddDrawable$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ColorAddDrawable invoke() {
                int i;
                i = ColorPickView.this.com.caverock.androidsvg.SVGParser.w java.lang.String;
                ResManager resManager2 = ResManager.INSTANCE;
                return new ColorAddDrawable(i, resManager2.getDimension(C7384R.dimen.dp_8), ThemeUtils.getColorById(C7996R.color.theme_divider_color_01), resManager2.getDimension(C7384R.dimen.dp_1));
            }
        });
        this.colorAddDrawable = lazy;
        this.favorites = ColorPickerValues.INSTANCE.getFavoriteColorOption();
        this.selectedIndex = -1;
        ViewColorPickBinding inflate = ViewColorPickBinding.inflate(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        m51307v();
        m51306u();
        m51290C();
        m51291D();
    }
}
