package com.onyx.galaxy.note.common.view;

import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.GuideInfo;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.galaxy.note.common.view.GuideTipsPopup;
import com.onyx.galaxy.note.databinding.PopupTipsGuideBinding;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.lang.ref.WeakReference;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001BB\u0012\u0006\u0010\u0016\u001a\u00020\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\u0006\u0010\r\u001a\u00020\f\u0012!\u0010$\u001a\u001d\u0012\u0013\u0012\u00110\u001f¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00060\u001e¢\u0006\u0004\b0\u00101J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\b\u0010\b\u001a\u00020\u0006H\u0002J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0004H\u0002J \u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0017\u0010\r\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR/\u0010$\u001a\u001d\u0012\u0013\u0012\u00110\u001f¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00060\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010#R\u001e\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010)R\u001b\u0010/\u001a\u00020*8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.¨\u00062"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;", "Landroid/widget/PopupWindow;", "Landroid/view/View;", "anchorView", "Landroid/graphics/Point;", "viewOffset", "", "show", "d", "positionOffset", C6997f.f39671c, Constants.ELEMNAME_ANCHOR_STRING, "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", "c", "Landroid/content/Context;", "a", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "context", "Lcom/onyx/android/sdk/data/common/data/GuideInfo;", "b", "Lcom/onyx/android/sdk/data/common/data/GuideInfo;", "guideInfo", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "getDockType", "()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "isShowing", "Lkotlin/jvm/functions/Function1;", "onShowStateChangeCallback", "Ljava/lang/ref/WeakReference;", "e", "Ljava/lang/ref/WeakReference;", "weakReferenceAnchorView", "Landroid/graphics/Point;", "Lcom/onyx/galaxy/note/databinding/PopupTipsGuideBinding;", C6998g.f39679a, "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupTipsGuideBinding;", "binding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/data/common/data/GuideInfo;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lkotlin/jvm/functions/Function1;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class GuideTipsPopup extends PopupWindow {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Context context;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final GuideInfo guideInfo;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final DockType dockType;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Function1<Boolean, Unit> onShowStateChangeCallback;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public WeakReference<View> weakReferenceAnchorView;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Point viewOffset;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DockType.values().length];
            try {
                iArr[DockType.RIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DockType.LEFT.ordinal()] = 2;
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public GuideTipsPopup(@NotNull Context context, @NotNull GuideInfo guideInfo, @NotNull DockType dockType, @NotNull Function1<? super Boolean, Unit> onShowStateChangeCallback) {
        super(context);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(guideInfo, "guideInfo");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        Intrinsics.checkNotNullParameter(onShowStateChangeCallback, "onShowStateChangeCallback");
        this.context = context;
        this.guideInfo = guideInfo;
        this.dockType = dockType;
        this.onShowStateChangeCallback = onShowStateChangeCallback;
        this.viewOffset = new Point();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupTipsGuideBinding>() { // from class: com.onyx.galaxy.note.common.view.GuideTipsPopup$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupTipsGuideBinding invoke() {
                PopupTipsGuideBinding inflate = PopupTipsGuideBinding.inflate(LayoutInflater.from(GuideTipsPopup.this.getContext()));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        setOutsideTouchable(true);
        setBackgroundDrawable(new ColorDrawable(0));
        m45160d();
        setContentView(getBinding().getRoot());
    }

    /* renamed from: e */
    public static final void m45157e(GuideTipsPopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onShowStateChangeCallback.invoke(Boolean.FALSE);
    }

    /* renamed from: g */
    public static final void m45158g(GuideTipsPopup this$0, View anchorView, Point positionOffset) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(anchorView, "$anchorView");
        Intrinsics.checkNotNullParameter(positionOffset, "$positionOffset");
        if (ContextKt.isActivityAlive(this$0.context)) {
            this$0.showAtLocation(anchorView, 0, positionOffset.x, positionOffset.y);
            MMKVUtils.INSTANCE.booleanOption(this$0.guideInfo.getFunctionId(), false).put(true);
            this$0.onShowStateChangeCallback.invoke(Boolean.TRUE);
        }
    }

    public static /* synthetic */ void show$default(GuideTipsPopup guideTipsPopup, View view, Point point, int i, Object obj) {
        if ((i & 2) != 0) {
            ResManager resManager = ResManager.INSTANCE;
            point = new Point(resManager.getDimens(C7384R.dimen.dp_18), resManager.getDimens(C7384R.dimen.dp_18));
        }
        guideTipsPopup.show(view, point);
    }

    /* renamed from: c */
    public final Point m45159c(View anchor, DockType dockType, Point viewOffset) {
        Point point = new Point(0, 0);
        int[] drawingPosition = ViewKt.getDrawingPosition(anchor);
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        Size measureSize$default = ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null);
        int i = drawingPosition[0];
        Rect rect = new Rect(i, drawingPosition[1], anchor.getMeasuredWidth() + i, drawingPosition[1] + anchor.getMeasuredHeight());
        int i2 = WhenMappings.$EnumSwitchMapping$0[dockType.ordinal()];
        if (i2 == 1) {
            point.x = (rect.left - measureSize$default.getWidth()) + viewOffset.x;
            point.y = rect.top - ((measureSize$default.getHeight() - rect.height()) / 2);
        } else if (i2 == 2) {
            point.x = rect.right - viewOffset.x;
            point.y = rect.top - ((measureSize$default.getHeight() - rect.height()) / 2);
        } else if (i2 == 3) {
            point.x = rect.left - ((measureSize$default.getWidth() - rect.width()) / 2);
            point.y = rect.bottom - viewOffset.y;
        } else if (i2 == 4) {
            point.x = rect.left - ((measureSize$default.getWidth() - rect.width()) / 2);
            point.y = (rect.top - measureSize$default.getHeight()) + viewOffset.y;
        }
        return point;
    }

    /* renamed from: d */
    public final void m45160d() {
        getBinding().guideView.setViewData(this.guideInfo, this.dockType);
        getBinding().guideView.setIndicatorOffsetCallback(new Function1<PointF, Unit>() { // from class: com.onyx.galaxy.note.common.view.GuideTipsPopup$initView$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PointF pointF) {
                invoke2(pointF);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull PointF indicatorOffset) {
                WeakReference weakReference;
                Point point;
                Point m45159c;
                Intrinsics.checkNotNullParameter(indicatorOffset, "indicatorOffset");
                if (indicatorOffset.x == 0.0f) {
                    if (indicatorOffset.y == 0.0f) {
                        return;
                    }
                }
                weakReference = GuideTipsPopup.this.weakReferenceAnchorView;
                View view = weakReference != null ? (View) weakReference.get() : null;
                if (view != null) {
                    GuideTipsPopup guideTipsPopup = GuideTipsPopup.this;
                    DockType dockType = guideTipsPopup.getDockType();
                    point = GuideTipsPopup.this.viewOffset;
                    m45159c = guideTipsPopup.m45159c(view, dockType, point);
                    GuideTipsPopup.this.update((int) (m45159c.x + indicatorOffset.x), (int) (m45159c.y + indicatorOffset.y), -1, -1);
                }
            }
        });
        setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.sunia.HTREnginev2.k6h
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                GuideTipsPopup.m45157e(GuideTipsPopup.this);
            }
        });
    }

    /* renamed from: f */
    public final void m45161f(final View anchorView, final Point positionOffset) {
        anchorView.post(new Runnable() { // from class: com.sunia.HTREnginev2.j6h
            @Override // java.lang.Runnable
            public final void run() {
                GuideTipsPopup.m45158g(GuideTipsPopup.this, anchorView, positionOffset);
            }
        });
    }

    @NotNull
    public final PopupTipsGuideBinding getBinding() {
        return (PopupTipsGuideBinding) this.binding.getValue();
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final DockType getDockType() {
        return this.dockType;
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    public final void show(@NotNull View anchorView, @NotNull Point viewOffset) {
        Intrinsics.checkNotNullParameter(anchorView, "anchorView");
        Intrinsics.checkNotNullParameter(viewOffset, "viewOffset");
        this.viewOffset = viewOffset;
        this.weakReferenceAnchorView = new WeakReference<>(anchorView);
        m45161f(anchorView, m45159c(anchorView, this.dockType, viewOffset));
    }
}
