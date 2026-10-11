package com.onyx.galaxy.note.common.view;

import android.content.Context;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.GuideInfo;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.galaxy.note.common.view.GuideTipsView;
import com.onyx.galaxy.note.databinding.ViewGuideBinding;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b&\u0010'B\u001b\b\u0016\u0012\u0006\u0010%\u001a\u00020$\u0012\b\u0010)\u001a\u0004\u0018\u00010(¢\u0006\u0004\b&\u0010*B#\b\u0016\u0012\u0006\u0010%\u001a\u00020$\u0012\b\u0010)\u001a\u0004\u0018\u00010(\u0012\u0006\u0010+\u001a\u00020\u0010¢\u0006\u0004\b&\u0010,J)\u0010\t\u001a\u00020\u00072!\u0010\b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0002J\u0016\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fJ\b\u0010\u000f\u001a\u00020\u0007H\u0002J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u0013\u001a\u00020\u0007H\u0002J\u0010\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u0016\u001a\u00020\u0007H\u0002R\"\u0010\u0018\u001a\u00020\u00178\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u001eR\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0014\u0010\u001fR\u0016\u0010\u0006\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010 R3\u0010#\u001a\u001f\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006-"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/GuideTipsView;", "Landroid/widget/FrameLayout;", "Lkotlin/Function1;", "Landroid/graphics/PointF;", "Lkotlin/ParameterName;", "name", "indicatorOffset", "", "callback", "setIndicatorOffsetCallback", "Lcom/onyx/android/sdk/data/common/data/GuideInfo;", "guideInfo", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", "setViewData", "d", "", "contentStyle", "e", "b", C6997f.f39671c, C6998g.f39679a, "c", "Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;", "binding", "Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;", "setBinding", "(Lcom/onyx/galaxy/note/databinding/ViewGuideBinding;)V", "Lcom/onyx/android/sdk/data/common/data/GuideInfo;", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "Landroid/graphics/PointF;", C6999h.f39688c, "Lkotlin/jvm/functions/Function1;", "indicatorOffsetCallback", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nGuideTipsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GuideTipsView.kt\ncom/onyx/galaxy/note/common/view/GuideTipsView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,130:1\n256#2,2:131\n277#2,2:133\n256#2,2:135\n256#2,2:137\n256#2,2:139\n256#2,2:141\n256#2,2:143\n256#2,2:145\n256#2,2:147\n256#2,2:149\n256#2,2:151\n256#2,2:153\n256#2,2:155\n256#2,2:157\n256#2,2:159\n*S KotlinDebug\n*F\n+ 1 GuideTipsView.kt\ncom/onyx/galaxy/note/common/view/GuideTipsView\n*L\n85#1:131,2\n89#1:133,2\n90#1:135,2\n94#1:137,2\n104#1:139,2\n108#1:141,2\n112#1:143,2\n116#1:145,2\n122#1:147,2\n123#1:149,2\n124#1:151,2\n125#1:153,2\n126#1:155,2\n127#1:157,2\n128#1:159,2\n*E\n"})
/* loaded from: classes9.dex */
public final class GuideTipsView extends FrameLayout {
    public ViewGuideBinding binding;

    /* renamed from: e, reason: from kotlin metadata */
    public GuideInfo guideInfo;

    /* renamed from: f, reason: from kotlin metadata */
    public DockType dockType;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public PointF indicatorOffset;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Function1<? super PointF, Unit> indicatorOffsetCallback;

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
                iArr[DockType.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DockType.RIGHT.ordinal()] = 3;
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
    public GuideTipsView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setViewStyle$lambda$0(GuideTipsView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m45163b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
    
        if (r0 == com.onyx.galaxy.note.editor.view.toolbar.DockType.BOTTOM) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005c, code lost:
    
        if (r1 == com.onyx.galaxy.note.editor.view.toolbar.DockType.LEFT) goto L24;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m45163b() {
        /*
            r7 = this;
            com.onyx.galaxy.note.editor.view.toolbar.DockType r0 = r7.dockType
            r1 = 0
            java.lang.String r2 = "dockType"
            if (r0 != 0) goto Lb
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            r0 = r1
        Lb:
            com.onyx.galaxy.note.editor.view.toolbar.DockType r3 = com.onyx.galaxy.note.editor.view.toolbar.DockType.TOP
            r4 = 1073741824(0x40000000, float:2.0)
            r5 = 0
            if (r0 == r3) goto L1e
            com.onyx.galaxy.note.editor.view.toolbar.DockType r0 = r7.dockType
            if (r0 != 0) goto L1a
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            r0 = r1
        L1a:
            com.onyx.galaxy.note.editor.view.toolbar.DockType r3 = com.onyx.galaxy.note.editor.view.toolbar.DockType.BOTTOM
            if (r0 != r3) goto L45
        L1e:
            android.graphics.PointF r0 = r7.indicatorOffset
            r0.y = r5
            int r0 = r7.getMeasuredWidth()
            float r0 = (float) r0
            float r0 = r0 / r4
            com.onyx.galaxy.note.databinding.ViewGuideBinding r3 = r7.getBinding()
            androidx.constraintlayout.widget.ConstraintLayout r3 = r3.tipsContent
            int r3 = r3.getLeft()
            com.onyx.galaxy.note.databinding.ViewGuideBinding r6 = r7.getBinding()
            androidx.constraintlayout.widget.ConstraintLayout r6 = r6.tipsContent
            int r6 = r6.getWidth()
            int r6 = r6 / 2
            int r3 = r3 + r6
            android.graphics.PointF r6 = r7.indicatorOffset
            float r3 = (float) r3
            float r0 = r0 - r3
            r6.x = r0
        L45:
            com.onyx.galaxy.note.editor.view.toolbar.DockType r0 = r7.dockType
            if (r0 != 0) goto L4d
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            r0 = r1
        L4d:
            com.onyx.galaxy.note.editor.view.toolbar.DockType r3 = com.onyx.galaxy.note.editor.view.toolbar.DockType.RIGHT
            if (r0 == r3) goto L5e
            com.onyx.galaxy.note.editor.view.toolbar.DockType r0 = r7.dockType
            if (r0 != 0) goto L59
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            goto L5a
        L59:
            r1 = r0
        L5a:
            com.onyx.galaxy.note.editor.view.toolbar.DockType r0 = com.onyx.galaxy.note.editor.view.toolbar.DockType.LEFT
            if (r1 != r0) goto L85
        L5e:
            android.graphics.PointF r0 = r7.indicatorOffset
            r0.x = r5
            int r0 = r7.getMeasuredHeight()
            float r0 = (float) r0
            float r0 = r0 / r4
            com.onyx.galaxy.note.databinding.ViewGuideBinding r1 = r7.getBinding()
            androidx.constraintlayout.widget.ConstraintLayout r1 = r1.tipsContent
            int r1 = r1.getTop()
            com.onyx.galaxy.note.databinding.ViewGuideBinding r2 = r7.getBinding()
            androidx.constraintlayout.widget.ConstraintLayout r2 = r2.tipsContent
            int r2 = r2.getHeight()
            int r2 = r2 / 2
            int r1 = r1 + r2
            android.graphics.PointF r2 = r7.indicatorOffset
            float r1 = (float) r1
            float r0 = r0 - r1
            r2.y = r0
        L85:
            kotlin.jvm.functions.Function1<? super android.graphics.PointF, kotlin.Unit> r0 = r7.indicatorOffsetCallback
            if (r0 == 0) goto L8e
            android.graphics.PointF r7 = r7.indicatorOffset
            r0.invoke(r7)
        L8e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.common.view.GuideTipsView.m45163b():void");
    }

    /* renamed from: c */
    public final void m45164c() {
        ConstraintLayout indicatorLeft = getBinding().indicatorLeft;
        Intrinsics.checkNotNullExpressionValue(indicatorLeft, "indicatorLeft");
        indicatorLeft.setVisibility(8);
        ConstraintLayout indicatorTop = getBinding().indicatorTop;
        Intrinsics.checkNotNullExpressionValue(indicatorTop, "indicatorTop");
        indicatorTop.setVisibility(8);
        ConstraintLayout indicatorRight = getBinding().indicatorRight;
        Intrinsics.checkNotNullExpressionValue(indicatorRight, "indicatorRight");
        indicatorRight.setVisibility(8);
        ConstraintLayout indicatorBottom = getBinding().indicatorBottom;
        Intrinsics.checkNotNullExpressionValue(indicatorBottom, "indicatorBottom");
        indicatorBottom.setVisibility(8);
        ImageView ivStyle01 = getBinding().ivStyle01;
        Intrinsics.checkNotNullExpressionValue(ivStyle01, "ivStyle01");
        ivStyle01.setVisibility(8);
        ImageView ivStyle02 = getBinding().ivStyle02;
        Intrinsics.checkNotNullExpressionValue(ivStyle02, "ivStyle02");
        ivStyle02.setVisibility(8);
        ImageView ivStyle03 = getBinding().ivStyle03;
        Intrinsics.checkNotNullExpressionValue(ivStyle03, "ivStyle03");
        ivStyle03.setVisibility(8);
    }

    /* renamed from: d */
    public final void m45165d() {
        ViewGuideBinding inflate = ViewGuideBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        setBinding(inflate);
    }

    /* renamed from: e */
    public final void m45166e(int contentStyle, DockType dockType) {
        m45164c();
        m45168g(dockType);
        m45167f(contentStyle);
        getBinding().tipsContent.post(new Runnable() { // from class: com.sunia.HTREnginev2.l6h
            @Override // java.lang.Runnable
            public final void run() {
                GuideTipsView.setViewStyle$lambda$0(GuideTipsView.this);
            }
        });
    }

    /* renamed from: f */
    public final void m45167f(int contentStyle) {
        ResManager resManager = ResManager.INSTANCE;
        int dimension = (int) resManager.getDimension(C7384R.dimen.dp_12);
        int i = 0;
        if (contentStyle == 1) {
            ImageView ivStyle01 = getBinding().ivStyle01;
            Intrinsics.checkNotNullExpressionValue(ivStyle01, "ivStyle01");
            ivStyle01.setVisibility(0);
        } else if (contentStyle == 2) {
            ImageView ivStyle012 = getBinding().ivStyle01;
            Intrinsics.checkNotNullExpressionValue(ivStyle012, "ivStyle01");
            ivStyle012.setVisibility(4);
            ImageView ivStyle02 = getBinding().ivStyle02;
            Intrinsics.checkNotNullExpressionValue(ivStyle02, "ivStyle02");
            ivStyle02.setVisibility(0);
        } else if (contentStyle == 3) {
            ImageView ivStyle03 = getBinding().ivStyle03;
            Intrinsics.checkNotNullExpressionValue(ivStyle03, "ivStyle03");
            ivStyle03.setVisibility(0);
            i = (int) resManager.getDimension(C7384R.dimen.dp_12);
        }
        getBinding().tvContent.setPadding(dimension, dimension, i, dimension);
    }

    /* renamed from: g */
    public final void m45168g(DockType dockType) {
        int i = WhenMappings.$EnumSwitchMapping$0[dockType.ordinal()];
        if (i == 1) {
            ConstraintLayout indicatorLeft = getBinding().indicatorLeft;
            Intrinsics.checkNotNullExpressionValue(indicatorLeft, "indicatorLeft");
            indicatorLeft.setVisibility(0);
            return;
        }
        if (i == 2) {
            ConstraintLayout indicatorTop = getBinding().indicatorTop;
            Intrinsics.checkNotNullExpressionValue(indicatorTop, "indicatorTop");
            indicatorTop.setVisibility(0);
        } else if (i == 3) {
            ConstraintLayout indicatorRight = getBinding().indicatorRight;
            Intrinsics.checkNotNullExpressionValue(indicatorRight, "indicatorRight");
            indicatorRight.setVisibility(0);
        } else {
            if (i != 4) {
                return;
            }
            ConstraintLayout indicatorBottom = getBinding().indicatorBottom;
            Intrinsics.checkNotNullExpressionValue(indicatorBottom, "indicatorBottom");
            indicatorBottom.setVisibility(0);
        }
    }

    @NotNull
    public final ViewGuideBinding getBinding() {
        ViewGuideBinding viewGuideBinding = this.binding;
        if (viewGuideBinding != null) {
            return viewGuideBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final void setBinding(@NotNull ViewGuideBinding viewGuideBinding) {
        Intrinsics.checkNotNullParameter(viewGuideBinding, "<set-?>");
        this.binding = viewGuideBinding;
    }

    public final void setIndicatorOffsetCallback(@NotNull Function1<? super PointF, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.indicatorOffsetCallback = callback;
    }

    public final void setViewData(@NotNull GuideInfo guideInfo, @NotNull DockType dockType) {
        Intrinsics.checkNotNullParameter(guideInfo, "guideInfo");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        this.guideInfo = guideInfo;
        this.dockType = dockType;
        getBinding().tvContent.setText(guideInfo.getContent());
        m45166e(guideInfo.getContentStyle(), dockType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GuideTipsView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GuideTipsView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.indicatorOffset = new PointF();
        m45165d();
    }
}
