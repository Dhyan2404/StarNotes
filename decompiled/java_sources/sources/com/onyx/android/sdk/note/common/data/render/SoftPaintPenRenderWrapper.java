package com.onyx.android.sdk.note.common.data.render;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.pen.NeoBrushSignPen;
import com.onyx.android.sdk.pen.NeoPen;
import com.onyx.android.sdk.pen.NeoPenConfig;
import com.onyx.android.sdk.pen.PenResult;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0019\b\u0002\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001c\u001a\u00020\u0004¢\u0006\u0004\b\u001d\u0010\u001eJ(\u0010\b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J8\u0010\f\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J(\u0010\r\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\u0012\u0010\u0011\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0007H\u0002R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "realPoint", "", "repaint", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/pen/PenResult;", "onTouchDown", "", "realPointList", "predictPoint", "onTouchMove", "onTouchDone", "", Constants.RESET, "penResult", "a", "", C6997f.f39671c, "I", "getBrushPointCount", "()I", "setBrushPointCount", "(I)V", "brushPointCount", "Lcom/onyx/android/sdk/pen/NeoPen;", "neoPen", "segment", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/pen/NeoPen;Z)V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SoftPaintPenRenderWrapper extends NeoPenRenderWrapper {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: f, reason: from kotlin metadata */
    public int brushPointCount;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;", "neoPenConfig", "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "segment", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ SoftPaintPenRenderWrapper create$default(Companion companion, NeoPenConfig neoPenConfig, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = ColorKt.isColorOpaque(neoPenConfig.getColor());
            }
            return companion.create(neoPenConfig, z);
        }

        @Nullable
        public final SoftPaintPenRenderWrapper create(@NotNull NeoPenConfig neoPenConfig, boolean segment) {
            Intrinsics.checkNotNullParameter(neoPenConfig, "neoPenConfig");
            NeoPen create = NeoBrushSignPen.INSTANCE.create(neoPenConfig);
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (create == null) {
                return null;
            }
            return new SoftPaintPenRenderWrapper(create, segment, defaultConstructorMarker);
        }

        public Companion() {
        }
    }

    public /* synthetic */ SoftPaintPenRenderWrapper(NeoPen neoPen, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(neoPen, z);
    }

    /* renamed from: a */
    public final void m33661a(PenResult penResult) {
        this.brushPointCount += penResult != null ? penResult.getF44295j() : 0;
    }

    public final int getBrushPointCount() {
        return this.brushPointCount;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.NeoPenRender
    @NotNull
    public Pair<PenResult, PenResult> onTouchDone(@NotNull TouchPoint realPoint, boolean repaint) {
        Intrinsics.checkNotNullParameter(realPoint, "realPoint");
        Pair<PenResult, PenResult> onTouchDone = super.onTouchDone(realPoint, repaint);
        m33661a(onTouchDone.getFirst());
        return onTouchDone;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.NeoPenRender
    @NotNull
    public Pair<PenResult, PenResult> onTouchDown(@NotNull TouchPoint realPoint, boolean repaint) {
        Intrinsics.checkNotNullParameter(realPoint, "realPoint");
        this.brushPointCount = 0;
        return super.onTouchDown(realPoint, repaint);
    }

    @Override // com.onyx.android.sdk.note.common.data.render.NeoPenRender
    @NotNull
    public Pair<PenResult, PenResult> onTouchMove(@NotNull List<TouchPoint> realPointList, @Nullable TouchPoint predictPoint, boolean repaint) {
        Intrinsics.checkNotNullParameter(realPointList, "realPointList");
        Pair<PenResult, PenResult> onTouchMove = super.onTouchMove(realPointList, predictPoint, repaint);
        m33661a(onTouchMove.getFirst());
        return onTouchMove;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.NeoPenRender
    public void reset() {
        super.reset();
        this.brushPointCount = 0;
    }

    public final void setBrushPointCount(int i) {
        this.brushPointCount = i;
    }

    public SoftPaintPenRenderWrapper(NeoPen neoPen, boolean z) {
        super(neoPen, z);
    }
}
