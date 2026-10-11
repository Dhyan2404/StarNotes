package com.onyx.galaxy.note.editor.view.popup;

import android.animation.LayoutTransition;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Point;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TimedTask;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.BooleanKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeAttr;
import com.onyx.android.sdk.p039ui.ShadowCreateArgs;
import com.onyx.android.sdk.textbox.widget.TintLinearLayout;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.common.drag.DragAndDropUtils;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.LayoutUniversalFavoriteHintBinding;
import com.onyx.galaxy.note.databinding.LayoutUniversalFavoriteItemBinding;
import com.onyx.galaxy.note.editor.data.UniversalShapeType;
import com.onyx.galaxy.note.editor.view.popup.UniversalShapeFavoriteLayout;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010B\u001a\u00020A¢\u0006\u0004\bC\u0010DB\u001b\b\u0016\u0012\u0006\u0010B\u001a\u00020A\u0012\b\u0010F\u001a\u0004\u0018\u00010E¢\u0006\u0004\bC\u0010GB#\b\u0016\u0012\u0006\u0010B\u001a\u00020A\u0012\b\u0010F\u001a\u0004\u0018\u00010E\u0012\u0006\u0010H\u001a\u00020\u0013¢\u0006\u0004\bC\u0010IJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\bJ\u000e\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002J\u0006\u0010\r\u001a\u00020\u0006J\u0006\u0010\u000e\u001a\u00020\bJ\u0010\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fJ\b\u0010\u0012\u001a\u00020\u0006H\u0002J\u001a\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\u0014\u001a\u00020\u0013H\u0002J\b\u0010\u0017\u001a\u00020\u0006H\u0002J\u0018\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u0018\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u0010\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0018\u0010!\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0002J\b\u0010\"\u001a\u00020\u0006H\u0002J\u0010\u0010#\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u001fH\u0002J\b\u0010$\u001a\u00020\u0006H\u0002J\b\u0010%\u001a\u00020\bH\u0002R\u0014\u0010(\u001a\u00020\u00138\u0002X\u0082D¢\u0006\u0006\n\u0004\b&\u0010'R$\u0010-\u001a\u0012\u0012\u0004\u0012\u00020\u00020)j\b\u0012\u0004\u0012\u00020\u0002`*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u00100\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010/R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0014\u00106\u001a\u0002038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R\u0014\u00107\u001a\u0002038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u00105R\u0014\u00109\u001a\u0002038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00105R\u0014\u0010:\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010'R\u0014\u0010>\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010@\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010'¨\u0006J"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapeFavoriteLayout;", "Lcom/onyx/android/sdk/textbox/widget/TintLinearLayout;", "", "getSelectedType", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "draw", "", "save", "updateFavoriteList", GeoConstant.KEY_Universal_Shape_Type, "addItem", "clearSelection", "isEmpty", "Lcom/onyx/galaxy/note/editor/view/popup/Callback;", "callback", "setItemCallback", "s", "", FirebaseAnalytics.Param.INDEX, "Landroid/view/View;", "l", "j", "itemView", C6998g.f39679a, C4921e.f26528e, "t", "Landroid/view/DragEvent;", NotificationCompat.CATEGORY_EVENT, "r", "Landroid/graphics/Point;", "point", "u", "x", "q", "v", "w", "e", "I", "MAX_COUNT", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", C6997f.f39671c, "Ljava/util/ArrayList;", "list", "Lcom/onyx/galaxy/note/editor/view/popup/CommonDeletePopup;", "Lcom/onyx/galaxy/note/editor/view/popup/CommonDeletePopup;", "deletePopup", C6999h.f39688c, "Lcom/onyx/galaxy/note/editor/view/popup/Callback;", "", "i", "F", "itemSpacing", "indicatorMargin", C4921e.f26537n, ApiBroadCastReceiver.ARGS_STROKE_WIDTH, ApiBroadCastReceiver.ARGS_STROKE_COLOR, "Landroid/graphics/Paint;", "m", "Landroid/graphics/Paint;", "strokePaint", GoogleApiAvailabilityLight.f29016b, "insertIndex", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUniversalShapeFavoriteLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalShapeFavoriteLayout.kt\ncom/onyx/galaxy/note/editor/view/popup/UniversalShapeFavoriteLayout\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,311:1\n1282#2,2:312\n1#3:314\n60#4,4:315\n53#4,4:322\n53#4,4:326\n1864#5,3:319\n*S KotlinDebug\n*F\n+ 1 UniversalShapeFavoriteLayout.kt\ncom/onyx/galaxy/note/editor/view/popup/UniversalShapeFavoriteLayout\n*L\n100#1:312,2\n219#1:315,4\n303#1:322,4\n106#1:326,4\n259#1:319,3\n*E\n"})
/* loaded from: classes9.dex */
public class UniversalShapeFavoriteLayout extends TintLinearLayout {

    /* renamed from: e, reason: from kotlin metadata */
    public final int MAX_COUNT;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<String> list;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public CommonDeletePopup deletePopup;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Callback callback;

    /* renamed from: i, reason: from kotlin metadata */
    public final float itemSpacing;

    /* renamed from: j, reason: from kotlin metadata */
    public final float indicatorMargin;

    /* renamed from: k, reason: from kotlin metadata */
    public final float strokeWidth;

    /* renamed from: l, reason: from kotlin metadata */
    public final int strokeColor;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Paint strokePaint;

    /* renamed from: n, reason: from kotlin metadata */
    public int insertIndex;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UniversalShapeFavoriteLayout(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final String getSelectedType() {
        UniversalShapeAttr universalShapeAttr = MMKVNote.INSTANCE.getGraphShapeOption().get();
        String type = universalShapeAttr.getType();
        if (!universalShapeAttr.getFavorited()) {
            type = null;
        }
        return type == null ? "" : type;
    }

    /* renamed from: h */
    public static final void m49736h(UniversalShapeFavoriteLayout this$0, View itemView, String universalShapeType) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(itemView, "$itemView");
        Intrinsics.checkNotNullParameter(universalShapeType, "$universalShapeType");
        this$0.m49745o(itemView, universalShapeType);
    }

    /* renamed from: i */
    public static final void m49737i(UniversalShapeFavoriteLayout this$0, View itemView, String universalShapeType) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(itemView, "$itemView");
        Intrinsics.checkNotNullParameter(universalShapeType, "$universalShapeType");
        this$0.m49749t(itemView, universalShapeType);
    }

    /* renamed from: k */
    public static final void m49738k(View view) {
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.graph_drag_to_favorites, false, 2, (Object) null);
    }

    /* renamed from: m */
    public static /* synthetic */ View m49739m(UniversalShapeFavoriteLayout universalShapeFavoriteLayout, String str, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addUniversalItem");
        }
        if ((i2 & 2) != 0) {
            i = ((Number) MathUtils.INSTANCE.atMost(Integer.valueOf(universalShapeFavoriteLayout.getChildCount()), Integer.valueOf(universalShapeFavoriteLayout.list.size() - 1))).intValue();
        }
        return universalShapeFavoriteLayout.m49744l(str, i);
    }

    /* renamed from: n */
    public static final void m49740n(UniversalShapeFavoriteLayout this$0, String universalShapeType, LayoutUniversalFavoriteItemBinding binding, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(universalShapeType, "$universalShapeType");
        Intrinsics.checkNotNullParameter(binding, "$binding");
        int childCount = this$0.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this$0.getChildAt(i);
            childAt.setSelected(Intrinsics.areEqual(childAt, binding.getRoot()));
        }
        Callback callback = this$0.callback;
        if (callback != null) {
            callback.onItemSelected(universalShapeType);
        }
    }

    /* renamed from: p */
    public static final void m49741p(UniversalShapeFavoriteLayout this$0, String universalShapeType) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(universalShapeType, "$universalShapeType");
        boolean m49752w = this$0.m49752w();
        int indexOf = this$0.list.indexOf(universalShapeType);
        this$0.list.remove(universalShapeType);
        boolean m49752w2 = this$0.m49752w();
        ViewKt.safeRemoveChild(this$0, indexOf);
        if (m49752w && !m49752w2) {
            ViewKt.removeLastChild(this$0);
        }
        if (!m49752w && m49752w2) {
            this$0.m49743j();
        }
        this$0.m49751v();
        Callback callback = this$0.callback;
        if (callback != null) {
            callback.onItemDeleted(universalShapeType);
        }
    }

    public static /* synthetic */ void updateFavoriteList$default(UniversalShapeFavoriteLayout universalShapeFavoriteLayout, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateFavoriteList");
        }
        if ((i & 1) != 0) {
            z = true;
        }
        universalShapeFavoriteLayout.updateFavoriteList(z);
    }

    public final void addItem(@NotNull String universalShapeType) {
        Intrinsics.checkNotNullParameter(universalShapeType, "universalShapeType");
        System.out.println((Object) "addItem");
        if (this.list.contains(universalShapeType)) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.graph_already_favorited, false, 2, (Object) null);
            return;
        }
        if (this.list.size() >= this.MAX_COUNT) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.graph_reach_max_favorites, false, 2, (Object) null);
            return;
        }
        boolean m49752w = m49752w();
        this.list.add(universalShapeType);
        boolean m49752w2 = m49752w();
        if (!m49752w && m49752w2) {
            m49743j();
        }
        if (m49752w && !m49752w2) {
            ViewKt.removeLastChild(this);
        }
        m49739m(this, universalShapeType, 0, 2, null);
        m49753x();
        m49751v();
    }

    public final void clearSelection() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setSelected(false);
        }
    }

    @Override // android.view.View
    public void draw(@NotNull Canvas canvas) {
        float x;
        float f;
        float f2;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.draw(canvas);
        Boolean valueOf = Boolean.valueOf(getChildCount() > 0 && this.insertIndex >= 0);
        if (!valueOf.booleanValue()) {
            valueOf = null;
        }
        if (valueOf != null) {
            valueOf.booleanValue();
            if (this.insertIndex >= this.list.size()) {
                View childAt = getChildAt(this.list.size() - 1);
                ViewLocator viewLocator = ViewLocator.INSTANCE;
                Intrinsics.checkNotNull(childAt);
                f2 = viewLocator.locationInParent(childAt).getX() + childAt.getMeasuredWidth() + (this.itemSpacing / 2);
            } else {
                int i = this.insertIndex;
                if (i == 0) {
                    View childAt2 = getChildAt(0);
                    ViewLocator viewLocator2 = ViewLocator.INSTANCE;
                    Intrinsics.checkNotNull(childAt2);
                    x = viewLocator2.locationInParent(childAt2).getX();
                    f = this.itemSpacing;
                } else {
                    View childAt3 = getChildAt(i);
                    ViewLocator viewLocator3 = ViewLocator.INSTANCE;
                    Intrinsics.checkNotNull(childAt3);
                    x = viewLocator3.locationInParent(childAt3).getX();
                    f = this.itemSpacing;
                }
                f2 = x - (f / 2);
            }
            float f3 = f2;
            canvas.drawLine(f3, this.indicatorMargin, f3, getMeasuredHeight() - this.indicatorMargin, this.strokePaint);
        }
    }

    /* renamed from: g */
    public final void m49742g(final View itemView, final String universalShapeType) {
        ViewKt.handleTouchEventByPressTime(itemView, new TimedTask(500L, new Runnable() { // from class: com.sunia.HTREnginev2.ftn
            @Override // java.lang.Runnable
            public final void run() {
                UniversalShapeFavoriteLayout.m49736h(UniversalShapeFavoriteLayout.this, itemView, universalShapeType);
            }
        }), new TimedTask(1000L, new Runnable() { // from class: com.sunia.HTREnginev2.gtn
            @Override // java.lang.Runnable
            public final void run() {
                UniversalShapeFavoriteLayout.m49737i(UniversalShapeFavoriteLayout.this, itemView, universalShapeType);
            }
        }));
    }

    public final boolean isEmpty() {
        return this.list.isEmpty();
    }

    /* renamed from: j */
    public final void m49743j() {
        LayoutUniversalFavoriteHintBinding inflate = LayoutUniversalFavoriteHintBinding.inflate(LayoutInflater.from(getContext()), this, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        addView(inflate.getRoot());
        TintImageView root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        com.onyx.android.sdk.extension.ViewKt.click$default(root, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.htn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UniversalShapeFavoriteLayout.m49738k(view);
            }
        }, 1, null);
    }

    /* renamed from: l */
    public final View m49744l(final String universalShapeType, int index) {
        UniversalShapeType universalShapeType2;
        UniversalShapeType[] values = UniversalShapeType.values();
        int length = values.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                universalShapeType2 = null;
                break;
            }
            universalShapeType2 = values[i];
            if (Intrinsics.areEqual(universalShapeType2.getType(), universalShapeType)) {
                break;
            }
            i++;
        }
        int iconResId = universalShapeType2 != null ? universalShapeType2.getIconResId() : 0;
        final LayoutUniversalFavoriteItemBinding inflate = LayoutUniversalFavoriteItemBinding.inflate(LayoutInflater.from(getContext()), this, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        inflate.image.setImageResource(iconResId);
        inflate.image.setSelected(Intrinsics.areEqual(universalShapeType, getSelectedType()));
        addView(inflate.getRoot(), index);
        TintImageView root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        com.onyx.android.sdk.extension.ViewKt.click$default(root, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.itn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UniversalShapeFavoriteLayout.m49740n(UniversalShapeFavoriteLayout.this, universalShapeType, inflate, view);
            }
        }, 1, null);
        TintImageView root2 = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
        m49742g(root2, universalShapeType);
        TintImageView root3 = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root3, "getRoot(...)");
        return root3;
    }

    /* renamed from: o */
    public final void m49745o(View itemView, final String universalShapeType) {
        Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.etn
            @Override // java.lang.Runnable
            public final void run() {
                UniversalShapeFavoriteLayout.m49741p(UniversalShapeFavoriteLayout.this, universalShapeType);
            }
        };
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        CommonDeletePopup commonDeletePopup = new CommonDeletePopup(context, runnable);
        this.deletePopup = commonDeletePopup;
        BasePopupWindow.INSTANCE.showByDockType(commonDeletePopup, itemView, DockType.TOP, (r16 & 4) != 0 ? 0 : 0, (r16 & 8) != 0 ? 0 : 0, (r16 & 16) != 0 ? Activity.INSTANCE.getTopContentView() : null);
    }

    /* renamed from: q */
    public final int m49746q(Point point) {
        View childAt;
        View childAt2 = getChildAt(0);
        if (childAt2 == null || (childAt = getChildAt(this.list.size() - 1)) == null) {
            return -1;
        }
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        int x = viewLocator.locationInParent(childAt2).getX() + (childAt.getMeasuredWidth() / 2);
        int x2 = viewLocator.locationInParent(childAt).getX() + (childAt.getMeasuredWidth() / 2);
        int i = point.x;
        if (i < x) {
            return 0;
        }
        if (i > x2) {
            return this.list.size();
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt3 = getChildAt(i2);
            WindowLocation locationInParent = ViewLocator.INSTANCE.locationInParent(childAt3);
            float x3 = locationInParent.getX() - this.itemSpacing;
            float x4 = locationInParent.getX() + childAt3.getMeasuredWidth() + this.itemSpacing;
            int x5 = locationInParent.getX() + (childAt3.getMeasuredWidth() / 2);
            int i3 = point.x;
            float f = i3;
            if (x3 <= f && f <= x4) {
                return ((Number) BooleanKt.mapByTrueFalse(i3 < x5, Integer.valueOf(i2), Integer.valueOf(i2 + 1))).intValue();
            }
        }
        return -1;
    }

    /* renamed from: r */
    public final boolean m49747r(DragEvent event) {
        DragAndDropUtils dragAndDropUtils = DragAndDropUtils.INSTANCE;
        String dataType = dragAndDropUtils.getDataType(event);
        if (!Intrinsics.areEqual(dataType, DragAndDropUtils.DRAG_DROP_TYPE_UNIVERSAL_FAVORITE_ITEM)) {
            dataType = null;
        }
        if (dataType == null) {
            return true;
        }
        Point point = new Point((int) event.getX(), (int) event.getY());
        this.insertIndex = -1;
        int action = event.getAction();
        if (action == 2) {
            this.insertIndex = m49746q(point);
        } else if (action == 3) {
            Bundle dataBundle = dragAndDropUtils.getDataBundle(event);
            if (dataBundle == null) {
                return true;
            }
            String string = dataBundle.getString(DragAndDropUtils.KEY_DRAG_DROP_DATA);
            if (string == null) {
                string = "";
            }
            m49750u(string, point);
        }
        invalidate();
        return true;
    }

    /* renamed from: s */
    public final void m49748s() {
        setOrientation(0);
        setGravity(8388627);
        setLayoutTransition(new LayoutTransition());
        setWillNotDraw(false);
        updateFavoriteList$default(this, false, 1, null);
    }

    public final void setItemCallback(@Nullable Callback callback) {
        this.callback = callback;
    }

    /* renamed from: t */
    public final void m49749t(View itemView, String universalShapeType) {
        CommonDeletePopup commonDeletePopup = this.deletePopup;
        if (commonDeletePopup != null) {
            commonDeletePopup.dismiss();
        }
        DragAndDropUtils.INSTANCE.dragAndDropOnce(itemView, DragAndDropUtils.DRAG_DROP_TYPE_UNIVERSAL_FAVORITE_ITEM, universalShapeType, (r25 & 4) != 0 ? new ShadowCreateArgs(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0, 0.0f, 127, null) : null, (r25 & 8) != 0 ? null : this, (r25 & 16) != 0 ? new Function1<DragEvent, Unit>() { // from class: com.onyx.android.sdk.universal.common.drag.DragAndDropUtils$dragAndDropOnce$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull DragEvent it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DragEvent dragEvent) {
                invoke2(dragEvent);
                return Unit.INSTANCE;
            }
        } : new UniversalShapeFavoriteLayout$moveItem$1(this));
    }

    /* renamed from: u */
    public final boolean m49750u(String universalShapeType, Point point) {
        int indexOf = this.list.indexOf(universalShapeType);
        MathUtils mathUtils = MathUtils.INSTANCE;
        int intValue = ((Number) mathUtils.atLeast(Integer.valueOf(m49746q(point)), 0)).intValue();
        if (indexOf == intValue) {
            return true;
        }
        if (indexOf < intValue) {
            intValue--;
        }
        int intValue2 = ((Number) mathUtils.atMost(Integer.valueOf(intValue), Integer.valueOf(this.list.size() - 1))).intValue();
        View childAt = getChildAt(indexOf);
        removeView(childAt);
        ViewKt.addViewSafely(this, childAt, Integer.valueOf(intValue2));
        m49753x();
        CollectionKt.moveTo(this.list, indexOf, intValue2);
        m49751v();
        return true;
    }

    public final void updateFavoriteList(boolean save) {
        removeAllViews();
        Iterator<T> it2 = this.list.iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            m49739m(this, (String) next, 0, 2, null);
            i = i2;
        }
        if (m49752w()) {
            m49743j();
        }
        m49753x();
        Boolean valueOf = Boolean.valueOf(save);
        Boolean bool = valueOf.booleanValue() ? valueOf : null;
        if (bool != null) {
            bool.booleanValue();
            m49751v();
        }
    }

    /* renamed from: v */
    public final void m49751v() {
        CollectionKt.trimToMaxSize(this.list, this.MAX_COUNT);
        MMKVNote.INSTANCE.getUniversalFavoriteListOption().put(this.list);
    }

    /* renamed from: w */
    public final boolean m49752w() {
        int i = this.MAX_COUNT - 1;
        int size = this.list.size();
        return 1 <= size && size <= i;
    }

    /* renamed from: x */
    public final void m49753x() {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            final int i2 = i == 0 ? 0 : (int) this.itemSpacing;
            View childAt = getChildAt(i);
            if (childAt != null) {
                ViewKt.setLayoutMargin(childAt, new Function1<ViewGroup.MarginLayoutParams, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.UniversalShapeFavoriteLayout$updateItemMargin$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.MarginLayoutParams marginLayoutParams) {
                        invoke2(marginLayoutParams);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull ViewGroup.MarginLayoutParams setLayoutMargin) {
                        Intrinsics.checkNotNullParameter(setLayoutMargin, "$this$setLayoutMargin");
                        setLayoutMargin.setMarginStart(i2);
                    }
                });
            }
            i++;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UniversalShapeFavoriteLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UniversalShapeFavoriteLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.MAX_COUNT = 6;
        this.list = (ArrayList) MMKVNote.INSTANCE.getUniversalFavoriteListOption().get();
        ResManager resManager = ResManager.INSTANCE;
        this.itemSpacing = resManager.getDimension(C7384R.dimen.dp_12);
        this.indicatorMargin = resManager.getDimension(C7384R.dimen.dp_4);
        float dimension = resManager.getDimension(C7384R.dimen.dp_1_5);
        this.strokeWidth = dimension;
        int themePrimaryColor = ThemeUtils.getThemePrimaryColor();
        this.strokeColor = themePrimaryColor;
        Paint paint = new Paint();
        this.strokePaint = paint;
        this.insertIndex = -1;
        paint.setColor(themePrimaryColor);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(dimension);
        paint.setPathEffect(new DashPathEffect(new float[]{dimension, dimension * 2}, 0.0f));
        paint.setStrokeCap(Paint.Cap.ROUND);
        m49748s();
    }
}
