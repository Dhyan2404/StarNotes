package com.onyx.galaxy.note.editor.view.custom;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import androidx.core.app.NotificationCompat;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.couchbase.lite.internal.core.C4Constants;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.universal.editor.config.SplitScreenPosition;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.SplitScreenLayoutBinding;
import com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout;
import com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout$componentCallbacks$2;
import com.onyx.galaxy.note.editor.view.drag.EditorViewDragLayout;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0093\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001a\u0018\u0000 y2\u00020\u0001:\u0002yzB\u0011\b\u0016\u0012\u0006\u0010q\u001a\u00020p¢\u0006\u0004\br\u0010sB\u001d\b\u0016\u0012\u0006\u0010q\u001a\u00020p\u0012\n\b\u0002\u0010u\u001a\u0004\u0018\u00010t¢\u0006\u0004\br\u0010vB%\b\u0016\u0012\u0006\u0010q\u001a\u00020p\u0012\n\b\u0002\u0010u\u001a\u0004\u0018\u00010t\u0012\u0006\u0010w\u001a\u00020\u001a¢\u0006\u0004\br\u0010xJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010\u0014\u001a\u00020\bH\u0002J\b\u0010\u0016\u001a\u00020\u0015H\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0004H\u0002J\b\u0010\u0019\u001a\u00020\u0002H\u0002J\b\u0010\u001b\u001a\u00020\u001aH\u0002J \u0010\u001e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0002J\b\u0010\u001f\u001a\u00020\u0002H\u0002J\u0018\u0010 \u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0002J\u0018\u0010!\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0002J\u0018\u0010\"\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0002J&\u0010)\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u00042\u0006\u0010%\u001a\u00020$2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020'0&H\u0002J\u0014\u0010+\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020$0*H\u0002J\u0014\u0010,\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020$0*H\u0002J\b\u0010-\u001a\u00020\u0002H\u0002J&\u00102\u001a\u00020\u00022\u0006\u0010.\u001a\u00020$2\u0006\u0010/\u001a\u00020$2\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u000200H\u0002J\b\u00103\u001a\u00020\u0015H\u0002J\b\u00104\u001a\u00020\u0015H\u0002J\b\u00105\u001a\u00020\u0002H\u0002J\b\u00106\u001a\u00020\u0002H\u0002J\b\u00107\u001a\u00020\u0002H\u0002J\b\u00108\u001a\u00020\u0002H\u0002J\b\u00109\u001a\u00020\u0002H\u0002J\b\u0010:\u001a\u00020\u0002H\u0002J\b\u0010;\u001a\u00020\u0002H\u0014J\u0016\u0010>\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010=\u001a\u00020<J\u000e\u0010?\u001a\u00020$2\u0006\u0010=\u001a\u00020<J\u000e\u0010@\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0004J\u0006\u0010A\u001a\u00020\bJ(\u0010E\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u001a2\u0006\u0010B\u001a\u00020\u001a2\u0006\u0010C\u001a\u00020\u001a2\u0006\u0010D\u001a\u00020\u001aH\u0014J\u0006\u0010F\u001a\u00020\u0002R\"\u0010H\u001a\u00020G8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\"\u0010R\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010\u000f\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\"\u0010Y\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bS\u0010T\u001a\u0004\bU\u0010V\"\u0004\bW\u0010XR$\u0010`\u001a\u0004\u0018\u00010Z8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010[\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010_R\u001b\u0010f\u001a\u00020a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bb\u0010c\u001a\u0004\bd\u0010eR\u0016\u0010j\u001a\u00020g8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u0016\u0010m\u001a\u00020k8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010lR\u0016\u0010n\u001a\u00020k8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010lR\u0016\u0010o\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010T¨\u0006{"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;", "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;", "", "w", "Landroid/view/View;", "v", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "y", "z", "A", "Q", "view", "H", "I", "J", "F", "x", "G", C4921e.f26528e, "Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;", "p", "goneView", GoogleApiAvailabilityLight.f29016b, SardineUtil.DEFAULT_NAMESPACE_PREFIX, "", "getDividerSize", "width", "height", "N", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "T", "U", "R", "targetView", "Landroid/graphics/RectF;", "targetRect", "", "Landroid/animation/Animator;", "animatorList", "j", "Lkotlin/Pair;", "getHorizontalInitialLayoutRect", "getVerticalInitialLayoutRect", "M", "firstTargetRect", "secondTargetRect", "Lkotlin/Function0;", "afterAnim", "L", "q", "E", "P", "r", "K", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "m", "S", "onDetachedFromWindow", "Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;", "position", "splitScreen", "getSplitScreenAnimTargetViewSize", "exitSplitScreen", "isEnabledSplitScreen", C6999h.f39688c, "oldw", "oldh", "onSizeChanged", "switchSplitScreenType", "Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;", "binding", "Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;", "setBinding", "(Lcom/onyx/galaxy/note/databinding/SplitScreenLayoutBinding;)V", "getSplitScreenType", "()I", "setSplitScreenType", "(I)V", "splitScreenType", "i", Constants.HASIDCALL_INDEX_SIG, "getSwitchLayout", Constants.BOOLEAN_VALUE_SIG, "setSwitchLayout", "(Z)V", "switchLayout", "Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;", "Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;", "getListener", "()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;", "setListener", "(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "com/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$componentCallbacks$2$1", C4921e.f26537n, "Lkotlin/Lazy;", "getComponentCallbacks", "()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$componentCallbacks$2$1;", "componentCallbacks", "Landroid/graphics/PointF;", "l", "Landroid/graphics/PointF;", "downPoint", "Landroid/graphics/Point;", "Landroid/graphics/Point;", "dividerOffsetPoint", "dividerLastOffsetPoint", "animating", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", C4Constants.LogDomain.LISTENER, "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSplitScreenLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplitScreenLayout.kt\ncom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,566:1\n91#2,14:567\n1855#3:581\n1856#3:586\n326#4,4:582\n*S KotlinDebug\n*F\n+ 1 SplitScreenLayout.kt\ncom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout\n*L\n447#1:567,14\n543#1:581\n543#1:586\n544#1:582,4\n*E\n"})
/* loaded from: classes9.dex */
public final class SplitScreenLayout extends TintFrameLayout {
    public static final boolean DEBUG_LOG = false;
    public static final int SPLIT_SCREEN_TYPE_FULL_SCREEN = 0;
    public static final int SPLIT_SCREEN_TYPE_LEFT_RIGHT = 1;
    public static final int SPLIT_SCREEN_TYPE_TOP_BOTTOM = 2;
    public SplitScreenLayoutBinding binding;

    /* renamed from: h, reason: from kotlin metadata */
    public int splitScreenType;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean switchLayout;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public Listener listener;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Lazy componentCallbacks;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public PointF downPoint;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public Point dividerOffsetPoint;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public Point dividerLastOffsetPoint;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean animating;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0003H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u0003H&¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout$Listener;", "", "onAnimatorEnd", "", "onAnimatorStart", "onDividerDown", "onDividerRelease", "onExitSpitScreen", "goneView", "Landroid/view/View;", "onLayoutSwitched", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface Listener {
        void onAnimatorEnd();

        void onAnimatorStart();

        void onDividerDown();

        void onDividerRelease();

        void onExitSpitScreen(@NotNull View goneView);

        void onLayoutSwitched();
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SplitScreenPosition.values().length];
            try {
                iArr[SplitScreenPosition.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SplitScreenPosition.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SplitScreenPosition.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SplitScreenPosition.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[SplitScreenPosition.AUTO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout$a */
    /* loaded from: classes9.dex */
    public static final class RunnableC12293a implements Runnable {
        public RunnableC12293a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Listener listener = SplitScreenLayout.this.getListener();
            if (listener != null) {
                listener.onAnimatorEnd();
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SplitScreenLayout(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: B */
    public static final void m47755B(SplitScreenLayout this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47783O();
    }

    private final SplitScreenLayout$componentCallbacks$2.ComponentCallbacksC122941 getComponentCallbacks() {
        return (SplitScreenLayout$componentCallbacks$2.ComponentCallbacksC122941) this.componentCallbacks.getValue();
    }

    private final int getDividerSize() {
        return ResManager.INSTANCE.getDimens(C7384R.dimen.dp_16);
    }

    private final Pair<RectF, RectF> getHorizontalInitialLayoutRect() {
        float measuredWidth = (getMeasuredWidth() - r0) / 2.0f;
        return new Pair<>(new RectF(0.0f, 0.0f, measuredWidth, getMeasuredHeight()), new RectF(measuredWidth + getDividerSize(), 0.0f, getMeasuredWidth(), getMeasuredHeight()));
    }

    private final Pair<RectF, RectF> getVerticalInitialLayoutRect() {
        float measuredHeight = (getMeasuredHeight() - r0) / 2.0f;
        return new Pair<>(new RectF(0.0f, 0.0f, getMeasuredWidth(), measuredHeight), new RectF(0.0f, measuredHeight + getDividerSize(), getMeasuredWidth(), getMeasuredHeight()));
    }

    /* renamed from: k */
    public static final void m47764k(View targetView, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(targetView, "$targetView");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        ViewKt.setLayoutWidth(targetView, ((Integer) animatedValue).intValue());
    }

    /* renamed from: l */
    public static final void m47765l(View targetView, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(targetView, "$targetView");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        ViewKt.setLayoutHeight(targetView, (Integer) animatedValue);
    }

    /* renamed from: s */
    public static final void m47766s(SplitScreenLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.switchSplitScreenType();
    }

    /* renamed from: t */
    public static final void m47767t(SplitScreenLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47779K();
    }

    /* renamed from: u */
    public static final void m47768u(SplitScreenLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.switchSplitScreenType();
    }

    /* renamed from: v */
    public static final void m47769v(SplitScreenLayout this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47779K();
    }

    /* renamed from: A */
    public final void m47770A(MotionEvent event) {
        if (m47793o()) {
            return;
        }
        m47785Q(event);
        Listener listener = this.listener;
        if (listener != null) {
            listener.onDividerRelease();
        }
    }

    /* renamed from: C */
    public final void m47771C() {
        this.splitScreenType = this.splitScreenType == 2 ? 1 : 2;
        m47783O();
        m47784P();
        Listener listener = this.listener;
        if (listener != null) {
            listener.onLayoutSwitched();
        }
    }

    /* renamed from: D */
    public final void m47772D() {
        this.downPoint.set(0.0f, 0.0f);
        this.dividerOffsetPoint.set(0, 0);
        this.dividerLastOffsetPoint.set(0, 0);
    }

    /* renamed from: E */
    public final EditorViewDragLayout m47773E() {
        boolean z = this.switchLayout;
        SplitScreenLayoutBinding binding = getBinding();
        EditorViewDragLayout editorViewDragLayout = z ? binding.editorViewDragLayout : binding.editorViewDragLayout2;
        Intrinsics.checkNotNull(editorViewDragLayout);
        return editorViewDragLayout;
    }

    /* renamed from: F */
    public final void m47774F(View view) {
        this.switchLayout = m47798x(view);
        this.splitScreenType = 2;
        m47781M();
    }

    /* renamed from: G */
    public final void m47775G(View view) {
        if (ResManager.INSTANCE.isLandscapeWindows()) {
            m47777I(view);
        } else {
            m47774F(view);
        }
    }

    /* renamed from: H */
    public final void m47776H(View view) {
        this.switchLayout = !m47798x(view);
        this.splitScreenType = 1;
        m47781M();
    }

    /* renamed from: I */
    public final void m47777I(View view) {
        this.switchLayout = m47798x(view);
        this.splitScreenType = 1;
        m47781M();
    }

    /* renamed from: J */
    public final void m47778J(View view) {
        this.switchLayout = !m47798x(view);
        this.splitScreenType = 2;
        m47781M();
    }

    /* renamed from: K */
    public final void m47779K() {
        this.switchLayout = !this.switchLayout;
        m47783O();
        Listener listener = this.listener;
        if (listener != null) {
            listener.onLayoutSwitched();
        }
    }

    /* renamed from: L */
    public final void m47780L(RectF firstTargetRect, RectF secondTargetRect, final Function0<Unit> afterAnim) {
        if (this.animating) {
            return;
        }
        long j = ResManager.INSTANCE.getLong(C10651R.integer.split_screen_exchange_animation_duration);
        EditorViewDragLayout m47795q = m47795q();
        EditorViewDragLayout m47773E = m47773E();
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        m47790j(m47795q, firstTargetRect, arrayList);
        m47790j(m47773E, secondTargetRect, arrayList);
        animatorSet.playTogether(arrayList);
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.setDuration(j);
        animatorSet.addListener(new Animator.AnimatorListener(afterAnim, this) { // from class: com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout$toggleAnimateLayoutToTarget$$inlined$addListener$default$1

            /* renamed from: f */
            public final /* synthetic */ Function0 f59735f;

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
                SplitScreenLayout.this.animating = false;
                this.f59735f.invoke();
                SplitScreenLayout.this.m47791m();
                SplitScreenLayout splitScreenLayout = SplitScreenLayout.this;
                splitScreenLayout.post(new SplitScreenLayout.RunnableC12293a());
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
                SplitScreenLayout.this.animating = true;
                SplitScreenLayout.this.getBinding().splitScreenDivider.setVisibility(4);
                SplitScreenLayout.Listener listener = SplitScreenLayout.this.getListener();
                if (listener != null) {
                    listener.onAnimatorStart();
                }
            }
        });
        animatorSet.start();
    }

    /* renamed from: M */
    public final void m47781M() {
        Debug.INSTANCE.m32035d(SplitScreenLayout.class, "toggleStartSplitScreenLayout: " + this.splitScreenType, new Object[0]);
        m47784P();
        m47783O();
        int i = this.splitScreenType;
        if (i == 1) {
            Pair<RectF, RectF> horizontalInitialLayoutRect = getHorizontalInitialLayoutRect();
            m47780L(horizontalInitialLayoutRect.getFirst(), horizontalInitialLayoutRect.getSecond(), new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout$toggleStartSplitScreenLayout$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    SplitScreenLayout.this.m47783O();
                }
            });
        } else {
            if (i != 2) {
                return;
            }
            Pair<RectF, RectF> verticalInitialLayoutRect = getVerticalInitialLayoutRect();
            m47780L(verticalInitialLayoutRect.getFirst(), verticalInitialLayoutRect.getSecond(), new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout$toggleStartSplitScreenLayout$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    SplitScreenLayout.this.m47783O();
                }
            });
        }
    }

    /* renamed from: N */
    public final void m47782N(View view, int width, int height) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = width;
        layoutParams.height = height;
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: O */
    public final void m47783O() {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int i = this.splitScreenType;
        if (i == 0) {
            m47786R(measuredWidth, measuredHeight);
        } else if (i == 1) {
            m47788T(measuredWidth, measuredHeight);
        } else {
            if (i != 2) {
                return;
            }
            m47789U(measuredWidth, measuredHeight);
        }
    }

    /* renamed from: P */
    public final void m47784P() {
        int i = this.splitScreenType;
        if (i == 1) {
            ViewKt.setViewVisibleOrGone(getBinding().layoutHorizontalSwitchLayout, true);
            ViewKt.setViewVisibleOrGone(getBinding().layoutHorizontalSwitchScreenType, true);
            ViewKt.setViewVisibleOrGone(getBinding().layoutHorizontalDragIndicator, true);
            ViewKt.setViewVisibleOrGone(getBinding().layoutVerticalSwitchLayout, false);
            ViewKt.setViewVisibleOrGone(getBinding().layoutVerticalSwitchScreenType, false);
            ViewKt.setViewVisibleOrGone(getBinding().layoutVerticalDragIndicator, false);
            return;
        }
        if (i != 2) {
            return;
        }
        ViewKt.setViewVisibleOrGone(getBinding().layoutHorizontalSwitchLayout, false);
        ViewKt.setViewVisibleOrGone(getBinding().layoutHorizontalSwitchScreenType, false);
        ViewKt.setViewVisibleOrGone(getBinding().layoutHorizontalDragIndicator, false);
        ViewKt.setViewVisibleOrGone(getBinding().layoutVerticalSwitchLayout, true);
        ViewKt.setViewVisibleOrGone(getBinding().layoutVerticalSwitchScreenType, true);
        ViewKt.setViewVisibleOrGone(getBinding().layoutVerticalDragIndicator, true);
    }

    /* renamed from: Q */
    public final void m47785Q(MotionEvent event) {
        int i = this.splitScreenType;
        if (i == 1) {
            this.dividerLastOffsetPoint.offset((int) (event.getRawX() - this.downPoint.x), 0);
        } else {
            if (i != 2) {
                return;
            }
            this.dividerLastOffsetPoint.offset(0, (int) (event.getRawY() - this.downPoint.y));
        }
    }

    /* renamed from: R */
    public final void m47786R(int width, int height) {
        m47782N(m47795q(), width, height);
        m47795q().setX(0.0f);
        m47795q().setY(0.0f);
        float longerRealScreenSize = ResManager.INSTANCE.getLongerRealScreenSize() * 2;
        getBinding().splitScreenDivider.setX(longerRealScreenSize);
        getBinding().splitScreenDivider.setY(0.0f);
        EditorViewDragLayout m47773E = m47773E();
        m47773E.setX(longerRealScreenSize);
        m47773E.setY(0.0f);
    }

    /* renamed from: S */
    public final void m47787S() {
        int dimens = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_16);
        ArrayList<View> arrayList = new ArrayList();
        TintImageView ivVerticalSwitchLayout = getBinding().ivVerticalSwitchLayout;
        Intrinsics.checkNotNullExpressionValue(ivVerticalSwitchLayout, "ivVerticalSwitchLayout");
        arrayList.add(ivVerticalSwitchLayout);
        TintImageView ivVerticalSwitchScreenType = getBinding().ivVerticalSwitchScreenType;
        Intrinsics.checkNotNullExpressionValue(ivVerticalSwitchScreenType, "ivVerticalSwitchScreenType");
        arrayList.add(ivVerticalSwitchScreenType);
        TintImageView ivHorizontalSwitchLayout = getBinding().ivHorizontalSwitchLayout;
        Intrinsics.checkNotNullExpressionValue(ivHorizontalSwitchLayout, "ivHorizontalSwitchLayout");
        arrayList.add(ivHorizontalSwitchLayout);
        TintImageView ivHorizontalSwitchScreenType = getBinding().ivHorizontalSwitchScreenType;
        Intrinsics.checkNotNullExpressionValue(ivHorizontalSwitchScreenType, "ivHorizontalSwitchScreenType");
        arrayList.add(ivHorizontalSwitchScreenType);
        for (View view : arrayList) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            }
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            layoutParams2.width = dimens;
            layoutParams2.height = dimens;
            view.setLayoutParams(layoutParams2);
        }
    }

    /* renamed from: T */
    public final void m47788T(int width, int height) {
        int coerceIn;
        int coerceIn2;
        int dividerSize = getDividerSize();
        int i = width - dividerSize;
        int i2 = i / 2;
        coerceIn = RangesKt___RangesKt.coerceIn(this.dividerOffsetPoint.x + i2, 0, i);
        coerceIn2 = RangesKt___RangesKt.coerceIn(i2 - this.dividerOffsetPoint.x, 0, i);
        m47782N(m47795q(), coerceIn, height);
        TintRelativeLayout splitScreenDivider = getBinding().splitScreenDivider;
        Intrinsics.checkNotNullExpressionValue(splitScreenDivider, "splitScreenDivider");
        m47782N(splitScreenDivider, dividerSize, height);
        m47782N(m47773E(), coerceIn2, height);
        m47795q().setX(0.0f);
        m47795q().setY(0.0f);
        float f = coerceIn;
        getBinding().splitScreenDivider.setX(f);
        getBinding().splitScreenDivider.setY(0.0f);
        EditorViewDragLayout m47773E = m47773E();
        m47773E.setX(f + getDividerSize());
        m47773E.setY(0.0f);
    }

    /* renamed from: U */
    public final void m47789U(int width, int height) {
        int coerceIn;
        int coerceIn2;
        int dividerSize = getDividerSize();
        int i = height - dividerSize;
        int i2 = i / 2;
        coerceIn = RangesKt___RangesKt.coerceIn(this.dividerOffsetPoint.y + i2, 0, i);
        coerceIn2 = RangesKt___RangesKt.coerceIn(i2 - this.dividerOffsetPoint.y, 0, i);
        m47782N(m47795q(), width, coerceIn);
        TintRelativeLayout splitScreenDivider = getBinding().splitScreenDivider;
        Intrinsics.checkNotNullExpressionValue(splitScreenDivider, "splitScreenDivider");
        m47782N(splitScreenDivider, width, dividerSize);
        m47782N(m47773E(), width, coerceIn2);
        EditorViewDragLayout m47795q = m47795q();
        m47795q.setX(0.0f);
        m47795q.setY(0.0f);
        getBinding().splitScreenDivider.setX(0.0f);
        float f = coerceIn;
        getBinding().splitScreenDivider.setY(f);
        EditorViewDragLayout m47773E = m47773E();
        m47773E.setX(0.0f);
        m47773E.setY(f + getDividerSize());
    }

    public final void exitSplitScreen(@NotNull View goneView) {
        Intrinsics.checkNotNullParameter(goneView, "goneView");
        m47792n(goneView);
    }

    @NotNull
    public final SplitScreenLayoutBinding getBinding() {
        SplitScreenLayoutBinding splitScreenLayoutBinding = this.binding;
        if (splitScreenLayoutBinding != null) {
            return splitScreenLayoutBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Nullable
    public final Listener getListener() {
        return this.listener;
    }

    @NotNull
    public final RectF getSplitScreenAnimTargetViewSize(@NotNull SplitScreenPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        if (!this.animating) {
            return new RectF();
        }
        int i = WhenMappings.$EnumSwitchMapping$0[position.ordinal()];
        if (i == 1) {
            return getHorizontalInitialLayoutRect().getFirst();
        }
        if (i == 2) {
            return getHorizontalInitialLayoutRect().getSecond();
        }
        if (i == 3) {
            return getVerticalInitialLayoutRect().getFirst();
        }
        if (i == 4) {
            return getVerticalInitialLayoutRect().getSecond();
        }
        if (i == 5) {
            return ResManager.INSTANCE.isLandscapeWindows() ? getHorizontalInitialLayoutRect().getSecond() : getVerticalInitialLayoutRect().getSecond();
        }
        throw new NoWhenBranchMatchedException();
    }

    public final int getSplitScreenType() {
        return this.splitScreenType;
    }

    public final boolean getSwitchLayout() {
        return this.switchLayout;
    }

    public final boolean isEnabledSplitScreen() {
        int i = this.splitScreenType;
        if (i != 0) {
            return i == 1 || i == 2;
        }
        return false;
    }

    /* renamed from: j */
    public final void m47790j(final View targetView, RectF targetRect, List<Animator> animatorList) {
        List listOf;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(targetView, "x", targetView.getX(), targetRect.left);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(targetView, "y", targetView.getY(), targetRect.top);
        ValueAnimator ofInt = ValueAnimator.ofInt(targetView.getMeasuredWidth(), (int) targetRect.width());
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.nwm
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SplitScreenLayout.m47764k(targetView, valueAnimator);
            }
        });
        ValueAnimator ofInt2 = ValueAnimator.ofInt(targetView.getMeasuredHeight(), (int) targetRect.height());
        ofInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.owm
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SplitScreenLayout.m47765l(targetView, valueAnimator);
            }
        });
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ValueAnimator[]{ofFloat, ofFloat2, ofInt, ofInt2});
        animatorList.addAll(listOf);
    }

    /* renamed from: m */
    public final void m47791m() {
        getBinding().splitScreenDivider.setAlpha(0.0f);
        getBinding().splitScreenDivider.setVisibility(0);
        getBinding().splitScreenDivider.animate().alpha(1.0f);
    }

    /* renamed from: n */
    public final void m47792n(View goneView) {
        this.switchLayout = m47798x(goneView);
        this.splitScreenType = 0;
        m47772D();
        m47783O();
        Listener listener = this.listener;
        if (listener != null) {
            listener.onExitSpitScreen(goneView);
        }
    }

    /* renamed from: o */
    public final boolean m47793o() {
        EditorViewDragLayout m47794p = m47794p();
        if (((m47794p.getWidth() * 1.0f) * m47794p.getHeight()) / (getWidth() * getHeight()) > ResManager.INSTANCE.getFloat(C10651R.dimen.split_screen_auto_exit_distance_threshold)) {
            return false;
        }
        m47792n(m47794p.getEditorView());
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getContext().unregisterComponentCallbacks(getComponentCallbacks());
    }

    @Override // android.view.View
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        post(new Runnable() { // from class: com.sunia.HTREnginev2.uwm
            @Override // java.lang.Runnable
            public final void run() {
                SplitScreenLayout.m47755B(SplitScreenLayout.this);
            }
        });
    }

    /* renamed from: p */
    public final EditorViewDragLayout m47794p() {
        EditorViewDragLayout m47795q = m47795q();
        EditorViewDragLayout m47773E = m47773E();
        return m47795q.getWidth() * m47795q.getHeight() > m47773E.getWidth() * m47773E.getHeight() ? m47773E : m47795q;
    }

    /* renamed from: q */
    public final EditorViewDragLayout m47795q() {
        boolean z = this.switchLayout;
        SplitScreenLayoutBinding binding = getBinding();
        EditorViewDragLayout editorViewDragLayout = z ? binding.editorViewDragLayout2 : binding.editorViewDragLayout;
        Intrinsics.checkNotNull(editorViewDragLayout);
        return editorViewDragLayout;
    }

    /* renamed from: r */
    public final void m47796r() {
        getBinding().layoutHorizontalSwitchLayout.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.pwm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SplitScreenLayout.m47767t(SplitScreenLayout.this, view);
            }
        });
        getBinding().layoutHorizontalSwitchScreenType.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.qwm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SplitScreenLayout.m47768u(SplitScreenLayout.this, view);
            }
        });
        getBinding().layoutVerticalSwitchLayout.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.rwm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SplitScreenLayout.m47769v(SplitScreenLayout.this, view);
            }
        });
        getBinding().layoutVerticalSwitchScreenType.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.swm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SplitScreenLayout.m47766s(SplitScreenLayout.this, view);
            }
        });
    }

    public final void setBinding(@NotNull SplitScreenLayoutBinding splitScreenLayoutBinding) {
        Intrinsics.checkNotNullParameter(splitScreenLayoutBinding, "<set-?>");
        this.binding = splitScreenLayoutBinding;
    }

    public final void setListener(@Nullable Listener listener) {
        this.listener = listener;
    }

    public final void setSplitScreenType(int i) {
        this.splitScreenType = i;
    }

    public final void setSwitchLayout(boolean z) {
        this.switchLayout = z;
    }

    public final void splitScreen(@NotNull View view, @NotNull SplitScreenPosition position) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(position, "position");
        int i = WhenMappings.$EnumSwitchMapping$0[position.ordinal()];
        if (i == 1) {
            m47776H(view);
            return;
        }
        if (i == 2) {
            m47777I(view);
            return;
        }
        if (i == 3) {
            m47778J(view);
        } else if (i == 4) {
            m47774F(view);
        } else {
            if (i != 5) {
                return;
            }
            m47775G(view);
        }
    }

    public final void switchSplitScreenType() {
        m47772D();
        int i = this.splitScreenType;
        if (i == 1) {
            Pair<RectF, RectF> verticalInitialLayoutRect = getVerticalInitialLayoutRect();
            m47780L(verticalInitialLayoutRect.getFirst(), verticalInitialLayoutRect.getSecond(), new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout$switchSplitScreenType$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    SplitScreenLayout.this.m47771C();
                }
            });
        } else {
            if (i != 2) {
                return;
            }
            Pair<RectF, RectF> horizontalInitialLayoutRect = getHorizontalInitialLayoutRect();
            m47780L(horizontalInitialLayoutRect.getFirst(), horizontalInitialLayoutRect.getSecond(), new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout$switchSplitScreenType$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    SplitScreenLayout.this.m47771C();
                }
            });
        }
    }

    /* renamed from: w */
    public final void m47797w() {
        getContext().registerComponentCallbacks(getComponentCallbacks());
        SplitScreenLayoutBinding inflate = SplitScreenLayoutBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        setBinding(inflate);
        getBinding().layoutVerticalDragIndicator.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.twm
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m47799y;
                m47799y = SplitScreenLayout.this.m47799y(view, motionEvent);
                return m47799y;
            }
        });
        getBinding().layoutHorizontalDragIndicator.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.twm
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m47799y;
                m47799y = SplitScreenLayout.this.m47799y(view, motionEvent);
                return m47799y;
            }
        });
        m47796r();
    }

    /* renamed from: x */
    public final boolean m47798x(View view) {
        return Intrinsics.areEqual(view, getBinding().editorViewDragLayout.getEditorView());
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000d, code lost:
    
        if (r3 != 3) goto L15;
     */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m47799y(android.view.View r3, android.view.MotionEvent r4) {
        /*
            r2 = this;
            int r3 = r4.getActionMasked()
            r0 = 1
            if (r3 == 0) goto L18
            if (r3 == r0) goto L14
            r1 = 2
            if (r3 == r1) goto L10
            r1 = 3
            if (r3 == r1) goto L14
            goto L2c
        L10:
            r2.m47800z(r4)
            goto L2c
        L14:
            r2.m47770A(r4)
            goto L2c
        L18:
            android.graphics.PointF r3 = r2.downPoint
            float r1 = r4.getRawX()
            float r4 = r4.getRawY()
            r3.set(r1, r4)
            com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout$Listener r2 = r2.listener
            if (r2 == 0) goto L2c
            r2.onDividerDown()
        L2c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout.m47799y(android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: z */
    public final void m47800z(MotionEvent event) {
        Point point = new Point(0, 0);
        int i = this.splitScreenType;
        if (i == 1) {
            point.set(((int) (event.getRawX() - this.downPoint.x)) + this.dividerLastOffsetPoint.x, 0);
        } else if (i == 2) {
            point.set(0, ((int) (event.getRawY() - this.downPoint.y)) + this.dividerLastOffsetPoint.y);
        }
        if (Intrinsics.areEqual(this.dividerOffsetPoint, point)) {
            return;
        }
        this.dividerOffsetPoint.set(point.x, point.y);
        m47783O();
        ViewKt.setViewVisibleOrInvisible(m47795q().getPageScroller(), false);
        ViewKt.setViewVisibleOrInvisible(m47773E().getPageScroller(), false);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SplitScreenLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ SplitScreenLayout(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplitScreenLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<SplitScreenLayout$componentCallbacks$2.ComponentCallbacksC122941>() { // from class: com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout$componentCallbacks$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout$componentCallbacks$2$1] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ComponentCallbacksC122941 invoke() {
                final SplitScreenLayout splitScreenLayout = SplitScreenLayout.this;
                return new ComponentCallbacks() { // from class: com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout$componentCallbacks$2.1
                    @Override // android.content.ComponentCallbacks
                    public void onConfigurationChanged(@NotNull Configuration newConfig) {
                        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
                        SplitScreenLayout.this.m47787S();
                    }

                    @Override // android.content.ComponentCallbacks
                    public void onLowMemory() {
                    }
                };
            }
        });
        this.componentCallbacks = lazy;
        this.downPoint = new PointF(0.0f, 0.0f);
        this.dividerOffsetPoint = new Point(0, 0);
        this.dividerLastOffsetPoint = new Point(0, 0);
        m47797w();
    }

    public /* synthetic */ SplitScreenLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
