package com.onyx.galaxy.note.category.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter;
import com.onyx.galaxy.note.common.action.ScreenPixelCaptureColorAction;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.ItemColorViewBinding;
import com.onyx.galaxy.note.editor.view.popup.ColorPickPopup;
import com.onyx.galaxy.note.editor.view.toolbar.ColorView;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPanelView;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0004\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0003GHIB\u0007¢\u0006\u0004\bE\u0010FJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0018\u0010\b\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0003J\b\u0010\t\u001a\u00020\u0006H\u0002J\b\u0010\n\u001a\u00020\u0006H\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0018\u0010\u000e\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u0006H\u0002J.\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u00102\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u0013H\u0002J.\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u00102\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u0013H\u0002J-\u0010\u001a\u001a\u00020\u00062\n\u0010\u0018\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00022\b\u0010\u0019\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ$\u0010 \u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0011\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0002H\u0014J\u000e\u0010\"\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u0002R\"\u0010)\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R$\u00101\u001a\u0004\u0018\u00010*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\"\u00108\u001a\u0002028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R$\u0010?\u001a\u0004\u0018\u0001098\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u0016\u0010C\u001a\u00020@8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bA\u0010BR\u0016\u0010D\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010$¨\u0006J"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "", "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;", "color", "position", "", "p", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "t", "q", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;", "colorPanelView", "B", "u", "y", "Landroid/view/View;", "parent", Constants.ELEMNAME_ANCHOR_STRING, "", "dx", "dy", "w", "z", "holder", "item", "onBindViewHolder", "(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;ILjava/lang/Integer;)V", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "viewType", "onCreateViewHolder", "dimensionResId", "updateContainerWidthDimension", "r", "I", "getSelectedPosition", "()I", "setSelectedPosition", "(I)V", "selectedPosition", "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;", "s", "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;", "getColorViewListener", "()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;", "setColorViewListener", "(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;)V", "colorViewListener", "", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getPickOpaqueColorOnly", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setPickOpaqueColorOnly", "(Z)V", "pickOpaqueColorOnly", "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;", "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;", "getDynamicPopupData", "()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;", "setDynamicPopupData", "(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;)V", "dynamicPopupData", "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;", "v", "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;", "colorPickPopup", "containerWidthDimension", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "ColorViewListener", "DynamicPopupData", "VH", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nColorViewAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorViewAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,267:1\n310#2:268\n326#2,4:269\n311#2:273\n*S KotlinDebug\n*F\n+ 1 ColorViewAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter\n*L\n81#1:268\n81#1:269,4\n81#1:273\n*E\n"})
/* loaded from: classes9.dex */
public final class ColorViewAdapter extends BaseQuickAdapter<Integer, C11380VH> {

    /* renamed from: r, reason: from kotlin metadata */
    public int selectedPosition;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public ColorViewListener colorViewListener;

    /* renamed from: t, reason: from kotlin metadata */
    public boolean pickOpaqueColorOnly;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public DynamicPopupData dynamicPopupData;

    /* renamed from: v, reason: from kotlin metadata */
    public ColorPickPopup colorPickPopup;

    /* renamed from: w, reason: from kotlin metadata */
    public int containerWidthDimension;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\u0003H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;", "", "onDismissColorPicker", "", "onSelectColor", "color", "", "onShowColorPicker", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface ColorViewListener {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public static final class DefaultImpls {
            public static void onDismissColorPicker(@NotNull ColorViewListener colorViewListener) {
            }

            public static void onShowColorPicker(@NotNull ColorViewListener colorViewListener) {
            }
        }

        void onDismissColorPicker();

        void onSelectColor(int color);

        void onShowColorPicker();
    }

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J1\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u0002HÆ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0013\u001a\u0004\b\u0017\u0010\u0015R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0019\u0010\u0015R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u0013\u001a\u0004\b\u001b\u0010\u0015¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;", "", "", "component1", "component2", "component3", "component4", "leftDx", "leftDy", "rightDx", "rightDy", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "I", "getLeftDx", "()I", "b", "getLeftDy", "c", "getRightDx", "d", "getRightDy", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(IIII)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final /* data */ class DynamicPopupData {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        public final int leftDx;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        public final int leftDy;

        /* renamed from: c, reason: from kotlin metadata and from toString */
        public final int rightDx;

        /* renamed from: d, reason: from kotlin metadata and from toString */
        public final int rightDy;

        public DynamicPopupData() {
            this(0, 0, 0, 0, 15, null);
        }

        public static /* synthetic */ DynamicPopupData copy$default(DynamicPopupData dynamicPopupData, int i, int i2, int i3, int i4, int i5, Object obj) {
            if ((i5 & 1) != 0) {
                i = dynamicPopupData.leftDx;
            }
            if ((i5 & 2) != 0) {
                i2 = dynamicPopupData.leftDy;
            }
            if ((i5 & 4) != 0) {
                i3 = dynamicPopupData.rightDx;
            }
            if ((i5 & 8) != 0) {
                i4 = dynamicPopupData.rightDy;
            }
            return dynamicPopupData.copy(i, i2, i3, i4);
        }

        /* renamed from: component1, reason: from getter */
        public final int getLeftDx() {
            return this.leftDx;
        }

        /* renamed from: component2, reason: from getter */
        public final int getLeftDy() {
            return this.leftDy;
        }

        /* renamed from: component3, reason: from getter */
        public final int getRightDx() {
            return this.rightDx;
        }

        /* renamed from: component4, reason: from getter */
        public final int getRightDy() {
            return this.rightDy;
        }

        @NotNull
        public final DynamicPopupData copy(int leftDx, int leftDy, int rightDx, int rightDy) {
            return new DynamicPopupData(leftDx, leftDy, rightDx, rightDy);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DynamicPopupData)) {
                return false;
            }
            DynamicPopupData dynamicPopupData = (DynamicPopupData) other;
            return this.leftDx == dynamicPopupData.leftDx && this.leftDy == dynamicPopupData.leftDy && this.rightDx == dynamicPopupData.rightDx && this.rightDy == dynamicPopupData.rightDy;
        }

        public final int getLeftDx() {
            return this.leftDx;
        }

        public final int getLeftDy() {
            return this.leftDy;
        }

        public final int getRightDx() {
            return this.rightDx;
        }

        public final int getRightDy() {
            return this.rightDy;
        }

        public int hashCode() {
            return (((((Integer.hashCode(this.leftDx) * 31) + Integer.hashCode(this.leftDy)) * 31) + Integer.hashCode(this.rightDx)) * 31) + Integer.hashCode(this.rightDy);
        }

        @NotNull
        public String toString() {
            return "DynamicPopupData(leftDx=" + this.leftDx + ", leftDy=" + this.leftDy + ", rightDx=" + this.rightDx + ", rightDy=" + this.rightDy + ')';
        }

        public DynamicPopupData(int i, int i2, int i3, int i4) {
            this.leftDx = i;
            this.leftDy = i2;
            this.rightDx = i3;
            this.rightDy = i4;
        }

        public /* synthetic */ DynamicPopupData(int i, int i2, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
            this((i5 & 1) != 0 ? 0 : i, (i5 & 2) != 0 ? 0 : i2, (i5 & 4) != 0 ? 0 : i3, (i5 & 8) != 0 ? 0 : i4);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C11381a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ColorPanelView f55121e;

        /* renamed from: f */
        public final /* synthetic */ ColorViewAdapter f55122f;

        /* renamed from: g */
        public final /* synthetic */ int f55123g;

        public C11381a(ColorPanelView colorPanelView, ColorViewAdapter colorViewAdapter, int i) {
            this.f55121e = colorPanelView;
            this.f55122f = colorViewAdapter;
            this.f55123g = i;
        }

        /* renamed from: a */
        public final void m43979a(int i) {
            this.f55121e.setSelectionColor(i);
            this.f55122f.m43971D(i, this.f55123g);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43979a(((Number) obj).intValue());
        }
    }

    public ColorViewAdapter() {
        super(null, 1, null);
        this.selectedPosition = -1;
        this.pickOpaqueColorOnly = true;
        this.containerWidthDimension = C7384R.dimen.dp_36;
    }

    /* renamed from: A */
    public static /* synthetic */ void m43960A(ColorViewAdapter colorViewAdapter, View view, View view2, Number number, Number number2, int i, Object obj) {
        if ((i & 2) != 0) {
            view2 = view;
        }
        if ((i & 4) != 0) {
            number = 0;
        }
        if ((i & 8) != 0) {
            number2 = 0;
        }
        colorViewAdapter.m43978z(view, view2, number, number2);
    }

    /* renamed from: C */
    public static final void m43961C(ColorViewAdapter this$0, ColorPanelView colorPanelView, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(colorPanelView, "$colorPanelView");
        this$0.m43975u(colorPanelView, this$0.selectedPosition);
    }

    /* renamed from: r */
    public static final void m43966r(ColorViewAdapter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ColorViewListener colorViewListener = this$0.colorViewListener;
        if (colorViewListener != null) {
            colorViewListener.onDismissColorPicker();
        }
    }

    /* renamed from: s */
    public static final void m43967s(ColorViewAdapter this$0, Integer num, int i, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43972p(num.intValue(), i);
    }

    /* renamed from: v */
    public static final void m43968v(ColorViewAdapter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43974t();
    }

    /* renamed from: x */
    public static /* synthetic */ void m43969x(ColorViewAdapter colorViewAdapter, View view, View view2, Number number, Number number2, int i, Object obj) {
        if ((i & 2) != 0) {
            view2 = view;
        }
        if ((i & 4) != 0) {
            number = 0;
        }
        if ((i & 8) != 0) {
            number2 = 0;
        }
        colorViewAdapter.m43976w(view, view2, number, number2);
    }

    /* renamed from: B */
    public final void m43970B(final ColorPanelView colorPanelView) {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = colorPanelView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestFloatingWindowPermission(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_FLOATING_COLOR_PICKER_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_FLOATING_COLOR_PICKER_INTENT_NAME())).build(), new Consumer() { // from class: com.sunia.HTREnginev2.c3e
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ColorViewAdapter.m43961C(ColorViewAdapter.this, colorPanelView, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    @SuppressLint({"NotifyDataSetChanged"})
    /* renamed from: D */
    public final void m43971D(int color, int position) {
        this.selectedPosition = position;
        set(position, Integer.valueOf(color));
        notifyDataSetChanged();
        if (this.pickOpaqueColorOnly) {
            color = ColorKt.removeAlpha(color);
        }
        ColorViewListener colorViewListener = this.colorViewListener;
        if (colorViewListener != null) {
            colorViewListener.onSelectColor(color);
        }
    }

    @Nullable
    public final ColorViewListener getColorViewListener() {
        return this.colorViewListener;
    }

    @Nullable
    public final DynamicPopupData getDynamicPopupData() {
        return this.dynamicPopupData;
    }

    public final boolean getPickOpaqueColorOnly() {
        return this.pickOpaqueColorOnly;
    }

    public final int getSelectedPosition() {
        return this.selectedPosition;
    }

    /* renamed from: p */
    public final void m43972p(int color, int position) {
        if (this.selectedPosition == position) {
            m43974t();
        } else {
            m43971D(color, position);
        }
    }

    /* renamed from: q */
    public final void m43973q() {
        List mutableList;
        ColorViewAdapter$initColorPickPopup$callback$1 colorViewAdapter$initColorPickPopup$callback$1 = new ColorViewAdapter$initColorPickPopup$callback$1(this);
        Context context = getContext();
        DockType dockType = DockType.RIGHT;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
        ColorPickPopup colorPickPopup = new ColorPickPopup(context, colorViewAdapter$initColorPickPopup$callback$1, dockType, mutableList, this.selectedPosition);
        this.colorPickPopup = colorPickPopup;
        colorPickPopup.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.sunia.HTREnginev2.d3e
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                ColorViewAdapter.m43966r(ColorViewAdapter.this);
            }
        });
        ColorPickPopup colorPickPopup2 = this.colorPickPopup;
        ColorPickPopup colorPickPopup3 = null;
        if (colorPickPopup2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorPickPopup");
            colorPickPopup2 = null;
        }
        colorPickPopup2.setDisableAlphaColor(this.pickOpaqueColorOnly);
        if (this.pickOpaqueColorOnly) {
            ColorPickPopup colorPickPopup4 = this.colorPickPopup;
            if (colorPickPopup4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("colorPickPopup");
            } else {
                colorPickPopup3 = colorPickPopup4;
            }
            colorPickPopup3.setOpaqueColorOnly();
        }
    }

    public final void setColorViewListener(@Nullable ColorViewListener colorViewListener) {
        this.colorViewListener = colorViewListener;
    }

    public final void setDynamicPopupData(@Nullable DynamicPopupData dynamicPopupData) {
        this.dynamicPopupData = dynamicPopupData;
    }

    public final void setPickOpaqueColorOnly(boolean z) {
        this.pickOpaqueColorOnly = z;
    }

    public final void setSelectedPosition(int i) {
        this.selectedPosition = i;
    }

    /* renamed from: t */
    public final void m43974t() {
        ColorPickPopup colorPickPopup;
        ColorViewListener colorViewListener = this.colorViewListener;
        if (colorViewListener != null) {
            colorViewListener.onShowColorPicker();
        }
        m43973q();
        ColorPickPopup colorPickPopup2 = this.colorPickPopup;
        if (colorPickPopup2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorPickPopup");
            colorPickPopup2 = null;
        }
        colorPickPopup2.setOriginColor(getItems().get(this.selectedPosition).intValue());
        if (this.dynamicPopupData != null) {
            m43977y();
            return;
        }
        ColorPickPopup colorPickPopup3 = this.colorPickPopup;
        if (colorPickPopup3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorPickPopup");
            colorPickPopup = null;
        } else {
            colorPickPopup = colorPickPopup3;
        }
        BasePopupWindow.showByDockType$default(colorPickPopup, getRecyclerView(), 0, 0, ViewKt.getParentView(getRecyclerView()), 6, null);
    }

    /* renamed from: u */
    public final void m43975u(ColorPanelView colorPanelView, int position) {
        long j = ResManager.INSTANCE.getLong(C7373R.integer.delay_time_dialog_close);
        ColorPickPopup colorPickPopup = this.colorPickPopup;
        if (colorPickPopup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorPickPopup");
            colorPickPopup = null;
        }
        colorPickPopup.dismiss();
        new ScreenPixelCaptureColorAction(getContext()).build().delay(j, TimeUnit.MILLISECONDS).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C11381a(colorPanelView, this, position)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.a3e
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ColorViewAdapter.m43968v(ColorViewAdapter.this);
            }
        }).subscribe();
    }

    public final void updateContainerWidthDimension(int dimensionResId) {
        this.containerWidthDimension = dimensionResId;
        notifyDataSetChanged();
    }

    /* renamed from: w */
    public final void m43976w(View parent, View anchor, Number dx, Number dy) {
        ColorPickPopup colorPickPopup = this.colorPickPopup;
        ColorPickPopup colorPickPopup2 = null;
        if (colorPickPopup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorPickPopup");
            colorPickPopup = null;
        }
        colorPickPopup.getContentView().measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        int[] iArr = new int[2];
        anchor.getLocationInWindow(iArr);
        int[] iArr2 = new int[2];
        parent.getLocationInWindow(iArr2);
        int i = iArr[0] - iArr2[0];
        int i2 = iArr[1] - iArr2[1];
        ColorPickPopup colorPickPopup3 = this.colorPickPopup;
        if (colorPickPopup3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorPickPopup");
            colorPickPopup3 = null;
        }
        int measuredWidth = (i - colorPickPopup3.getContentView().getMeasuredWidth()) + dx.intValue();
        int intValue = i2 + dy.intValue();
        ColorPickPopup colorPickPopup4 = this.colorPickPopup;
        if (colorPickPopup4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorPickPopup");
            colorPickPopup4 = null;
        }
        int measuredHeight = intValue - (colorPickPopup4.getContentView().getMeasuredHeight() / 2);
        ColorPickPopup colorPickPopup5 = this.colorPickPopup;
        if (colorPickPopup5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorPickPopup");
        } else {
            colorPickPopup2 = colorPickPopup5;
        }
        PopupExtKt.showInParent(colorPickPopup2, parent, 8388659, Integer.valueOf(measuredWidth), Integer.valueOf(measuredHeight));
    }

    /* renamed from: y */
    public final void m43977y() {
        View topContentView = Activity.INSTANCE.getTopContentView();
        ViewGroup parentView = ViewKt.getParentView(getRecyclerView());
        int[] iArr = new int[2];
        topContentView.getLocationInWindow(iArr);
        int[] iArr2 = new int[2];
        parentView.getLocationInWindow(iArr2);
        int i = iArr2[0] - iArr[0];
        if (i > topContentView.getMeasuredWidth() - (parentView.getMeasuredWidth() + i)) {
            DynamicPopupData dynamicPopupData = this.dynamicPopupData;
            Intrinsics.checkNotNull(dynamicPopupData);
            Integer valueOf = Integer.valueOf(dynamicPopupData.getLeftDx());
            DynamicPopupData dynamicPopupData2 = this.dynamicPopupData;
            Intrinsics.checkNotNull(dynamicPopupData2);
            m43976w(topContentView, parentView, valueOf, Integer.valueOf(dynamicPopupData2.getLeftDy()));
            return;
        }
        DynamicPopupData dynamicPopupData3 = this.dynamicPopupData;
        Intrinsics.checkNotNull(dynamicPopupData3);
        Integer valueOf2 = Integer.valueOf(dynamicPopupData3.getRightDx());
        DynamicPopupData dynamicPopupData4 = this.dynamicPopupData;
        Intrinsics.checkNotNull(dynamicPopupData4);
        m43978z(topContentView, parentView, valueOf2, Integer.valueOf(dynamicPopupData4.getRightDy()));
    }

    /* renamed from: z */
    public final void m43978z(View parent, View anchor, Number dx, Number dy) {
        ColorPickPopup colorPickPopup = this.colorPickPopup;
        ColorPickPopup colorPickPopup2 = null;
        if (colorPickPopup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorPickPopup");
            colorPickPopup = null;
        }
        colorPickPopup.getContentView().measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        int[] iArr = new int[2];
        anchor.getLocationInWindow(iArr);
        int[] iArr2 = new int[2];
        parent.getLocationInWindow(iArr2);
        int i = iArr[0] - iArr2[0];
        int i2 = iArr[1] - iArr2[1];
        int measuredWidth = i + anchor.getMeasuredWidth() + dx.intValue();
        int intValue = i2 + dy.intValue();
        ColorPickPopup colorPickPopup3 = this.colorPickPopup;
        if (colorPickPopup3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorPickPopup");
            colorPickPopup3 = null;
        }
        int measuredHeight = intValue - (colorPickPopup3.getContentView().getMeasuredHeight() / 2);
        ColorPickPopup colorPickPopup4 = this.colorPickPopup;
        if (colorPickPopup4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorPickPopup");
        } else {
            colorPickPopup2 = colorPickPopup4;
        }
        PopupExtKt.showInParent(colorPickPopup2, parent, 8388659, Integer.valueOf(measuredWidth), Integer.valueOf(measuredHeight));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull C11380VH holder, final int position, @Nullable final Integer item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        FrameLayout clsContainer = holder.getBinding().clsContainer;
        Intrinsics.checkNotNullExpressionValue(clsContainer, "clsContainer");
        ViewGroup.LayoutParams layoutParams = clsContainer.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = ResManager.INSTANCE.getDimens(this.containerWidthDimension);
            clsContainer.setLayoutParams(layoutParams);
            ColorView colorView = holder.getBinding().colorView;
            Intrinsics.checkNotNull(item);
            colorView.setColor(item.intValue());
            holder.getBinding().colorView.setSelect(position == this.selectedPosition);
            ColorView colorView2 = holder.getBinding().colorView;
            Intrinsics.checkNotNullExpressionValue(colorView2, "colorView");
            com.onyx.android.sdk.extension.ViewKt.click$default(colorView2, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.b3e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ColorViewAdapter.m43967s(ColorViewAdapter.this, item, position, view);
                }
            }, 1, null);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public C11380VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new C11380VH(this, parent, null, 2, null);
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$VH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemColorViewBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemColorViewBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemColorViewBinding;", "binding", "Landroid/view/ViewGroup;", "parent", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemColorViewBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* renamed from: com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter$VH */
    /* loaded from: classes9.dex */
    public final class C11380VH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemColorViewBinding binding;

        /* renamed from: I */
        public final /* synthetic */ ColorViewAdapter f55120I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11380VH(@NotNull ColorViewAdapter colorViewAdapter, @NotNull ViewGroup parent, ItemColorViewBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f55120I = colorViewAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemColorViewBinding getBinding() {
            return this.binding;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ C11380VH(com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter r1, android.view.ViewGroup r2, com.onyx.galaxy.note.databinding.ItemColorViewBinding r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
            /*
                r0 = this;
                r4 = r4 & 2
                if (r4 == 0) goto L16
                android.content.Context r3 = r2.getContext()
                android.view.LayoutInflater r3 = android.view.LayoutInflater.from(r3)
                r4 = 0
                com.onyx.galaxy.note.databinding.ItemColorViewBinding r3 = com.onyx.galaxy.note.databinding.ItemColorViewBinding.inflate(r3, r2, r4)
                java.lang.String r4 = "inflate(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            L16:
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter.C11380VH.<init>(com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter, android.view.ViewGroup, com.onyx.galaxy.note.databinding.ItemColorViewBinding, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }
}
