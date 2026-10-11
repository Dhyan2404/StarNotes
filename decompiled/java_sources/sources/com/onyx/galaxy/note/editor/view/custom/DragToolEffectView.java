package com.onyx.galaxy.note.editor.view.custom;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.PathKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 Y2\u00020\u0001:\u0002YZB\u0013\b\u0016\u0012\b\u0010Q\u001a\u0004\u0018\u00010P¢\u0006\u0004\bR\u0010SB\u001d\b\u0016\u0012\b\u0010Q\u001a\u0004\u0018\u00010P\u0012\b\u0010U\u001a\u0004\u0018\u00010T¢\u0006\u0004\bR\u0010VB%\b\u0016\u0012\b\u0010Q\u001a\u0004\u0018\u00010P\u0012\b\u0010U\u001a\u0004\u0018\u00010T\u0012\u0006\u0010W\u001a\u00020\u000b¢\u0006\u0004\bR\u0010XJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J0\u0010\u0010\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0014J\u0016\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0014R\u0016\u0010\u001c\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001bR\u0016\u0010!\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010\u001bR\"\u0010(\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u0010.\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010+R\u0014\u00100\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010+R\u0016\u00102\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010+R\u0016\u00104\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010+R\u0016\u00107\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u00109\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00106R\u0016\u0010;\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00106R\u0016\u0010=\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u00106R\u0016\u0010?\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u00106R\u0017\u0010C\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b@\u0010\u001b\u001a\u0004\bA\u0010BR\u0014\u0010G\u001a\u00020D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010I\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u00106R.\u0010O\u001a\u001a\u0012\b\u0012\u00060KR\u00020\u00000Jj\f\u0012\b\u0012\u00060KR\u00020\u0000`L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010N¨\u0006["}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;", "Landroid/view/View;", "", "e", "d", "a", "c", "b", C6997f.f39671c, "", "changed", "", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "onLayout", "isDragging", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", "updateEffect", "", "widthOffset", "updateTranslateXOffset", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "F", "dragWidthRatio", "dragHeightRatio", C6998g.f39679a, "contentViewWidthOffset", C6999h.f39688c, "dragWidth", "i", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "getSelectDockType", "()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "setSelectDockType", "(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "selectDockType", "Landroid/graphics/Paint;", "j", "Landroid/graphics/Paint;", "fillPaint", C4921e.f26537n, "strokePaint", "l", "selectLinePaint", "m", "selectFillPaint", GoogleApiAvailabilityLight.f29016b, "lastFillPaint", C4921e.f26528e, "I", "originFillAlpha", "p", "originStrokeAlpha", "q", "originSelectLineAlpha", "r", "originSelectFillAlpha", "s", "originLastFillAlpha", "t", "getCornerRadius", "()F", "cornerRadius", "Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;", "u", "Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;", "animHelper", "v", "showHideAnimKey", "Ljava/util/ArrayList;", "Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;", "Lkotlin/collections/ArrayList;", "w", "Ljava/util/ArrayList;", "pathBeanList", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "PathBean", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDragToolEffectView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragToolEffectView.kt\ncom/onyx/galaxy/note/editor/view/custom/DragToolEffectView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,331:1\n1#2:332\n256#3,2:333\n1855#4,2:335\n1855#4,2:337\n*S KotlinDebug\n*F\n+ 1 DragToolEffectView.kt\ncom/onyx/galaxy/note/editor/view/custom/DragToolEffectView\n*L\n163#1:333,2\n208#1:335,2\n220#1:337,2\n*E\n"})
/* loaded from: classes9.dex */
public final class DragToolEffectView extends View {
    public static final float DRAG_HEIGHT_RATIO = 0.7f;
    public static final float DRAG_WIDTH_RATIO = 0.7f;

    /* renamed from: e, reason: from kotlin metadata */
    public float dragWidthRatio;

    /* renamed from: f, reason: from kotlin metadata */
    public float dragHeightRatio;

    /* renamed from: g, reason: from kotlin metadata */
    public float contentViewWidthOffset;

    /* renamed from: h, reason: from kotlin metadata */
    public float dragWidth;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public DockType selectDockType;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Paint fillPaint;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Paint strokePaint;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Paint selectLinePaint;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public Paint selectFillPaint;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public Paint lastFillPaint;

    /* renamed from: o, reason: from kotlin metadata */
    public int originFillAlpha;

    /* renamed from: p, reason: from kotlin metadata */
    public int originStrokeAlpha;

    /* renamed from: q, reason: from kotlin metadata */
    public int originSelectLineAlpha;

    /* renamed from: r, reason: from kotlin metadata */
    public int originSelectFillAlpha;

    /* renamed from: s, reason: from kotlin metadata */
    public int originLastFillAlpha;

    /* renamed from: t, reason: from kotlin metadata */
    public final float cornerRadius;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final DragToolEffectAnimHelper animHelper;

    /* renamed from: v, reason: from kotlin metadata */
    public int showHideAnimKey;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public ArrayList<PathBean> pathBeanList;

    @Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b&\u0010'J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0004R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u001d\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018R\"\u0010!\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0014\u001a\u0004\b\u001f\u0010\u0016\"\u0004\b \u0010\u0018R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006("}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;", "", "", "isSelectDockType", "", "applySelectLinePath", "", "radius", "applyRoundRect", "setRectF", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "a", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "getDockType", "()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "setDockType", "(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "dockType", "Landroid/graphics/Path;", "b", "Landroid/graphics/Path;", "getSelectLinePath", "()Landroid/graphics/Path;", "setSelectLinePath", "(Landroid/graphics/Path;)V", "selectLinePath", "c", "getPath", "setPath", "path", "d", "getLastPath", "setLastPath", "lastPath", "Landroid/graphics/RectF;", "e", "Landroid/graphics/RectF;", "rectF", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public final class PathBean {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public DockType dockType = DockType.TOP;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public Path selectLinePath = new Path();

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public Path path = new Path();

        /* renamed from: d, reason: from kotlin metadata */
        @NotNull
        public Path lastPath = new Path();

        /* renamed from: e, reason: from kotlin metadata */
        @NotNull
        public RectF rectF = new RectF();

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

        public PathBean() {
        }

        public final void applyRoundRect(float radius) {
            if (isSelectDockType()) {
                radius = 0.0f;
            }
            this.lastPath = PathKt.copy(this.path);
            this.path.reset();
            int i = WhenMappings.$EnumSwitchMapping$0[this.dockType.ordinal()];
            if (i == 1) {
                this.path.addRoundRect(this.rectF, new float[]{0.0f, 0.0f, radius, radius, radius, radius, 0.0f, 0.0f}, Path.Direction.CW);
                return;
            }
            if (i == 2) {
                this.path.addRoundRect(this.rectF, new float[]{0.0f, 0.0f, 0.0f, 0.0f, radius, radius, radius, radius}, Path.Direction.CW);
            } else if (i == 3) {
                this.path.addRoundRect(this.rectF, new float[]{radius, radius, 0.0f, 0.0f, 0.0f, 0.0f, radius, radius}, Path.Direction.CW);
            } else {
                if (i != 4) {
                    return;
                }
                this.path.addRoundRect(this.rectF, new float[]{radius, radius, radius, radius, 0.0f, 0.0f, 0.0f, 0.0f}, Path.Direction.CW);
            }
        }

        public final void applySelectLinePath() {
            this.selectLinePath.reset();
            int i = WhenMappings.$EnumSwitchMapping$0[this.dockType.ordinal()];
            if (i == 1) {
                Path path = this.selectLinePath;
                RectF rectF = this.rectF;
                path.moveTo(rectF.left, rectF.top);
                Path path2 = this.selectLinePath;
                RectF rectF2 = this.rectF;
                path2.lineTo(rectF2.left, rectF2.bottom);
            } else if (i == 2) {
                Path path3 = this.selectLinePath;
                RectF rectF3 = this.rectF;
                path3.moveTo(rectF3.left, rectF3.top);
                Path path4 = this.selectLinePath;
                RectF rectF4 = this.rectF;
                path4.lineTo(rectF4.right, rectF4.top);
            } else if (i == 3) {
                Path path5 = this.selectLinePath;
                RectF rectF5 = this.rectF;
                path5.moveTo(rectF5.right, rectF5.top);
                Path path6 = this.selectLinePath;
                RectF rectF6 = this.rectF;
                path6.lineTo(rectF6.right, rectF6.bottom);
            } else if (i == 4) {
                Path path7 = this.selectLinePath;
                RectF rectF7 = this.rectF;
                path7.moveTo(rectF7.left, rectF7.bottom);
                Path path8 = this.selectLinePath;
                RectF rectF8 = this.rectF;
                path8.lineTo(rectF8.right, rectF8.bottom);
            }
            this.selectLinePath.close();
        }

        @NotNull
        public final DockType getDockType() {
            return this.dockType;
        }

        @NotNull
        public final Path getLastPath() {
            return this.lastPath;
        }

        @NotNull
        public final Path getPath() {
            return this.path;
        }

        @NotNull
        public final Path getSelectLinePath() {
            return this.selectLinePath;
        }

        public final boolean isSelectDockType() {
            return this.dockType == DragToolEffectView.this.getSelectDockType();
        }

        public final void setDockType(@NotNull DockType dockType) {
            Intrinsics.checkNotNullParameter(dockType, "<set-?>");
            this.dockType = dockType;
        }

        public final void setLastPath(@NotNull Path path) {
            Intrinsics.checkNotNullParameter(path, "<set-?>");
            this.lastPath = path;
        }

        public final void setPath(@NotNull Path path) {
            Intrinsics.checkNotNullParameter(path, "<set-?>");
            this.path = path;
        }

        public final void setRectF() {
            float measuredWidth = isSelectDockType() ? DragToolEffectView.this.getMeasuredWidth() - Math.abs(DragToolEffectView.this.contentViewWidthOffset) : ((DragToolEffectView.this.getMeasuredWidth() - Math.abs(DragToolEffectView.this.contentViewWidthOffset)) - (DragToolEffectView.this.dragWidth * 2)) * DragToolEffectView.this.dragWidthRatio;
            Number valueOf = isSelectDockType() ? Integer.valueOf(DragToolEffectView.this.getMeasuredHeight()) : Float.valueOf((DragToolEffectView.this.getMeasuredHeight() - (DragToolEffectView.this.dragWidth * 2)) * DragToolEffectView.this.dragHeightRatio);
            float f = DragToolEffectView.this.contentViewWidthOffset > 0.0f ? DragToolEffectView.this.contentViewWidthOffset : 0.0f;
            float abs = DragToolEffectView.this.contentViewWidthOffset < 0.0f ? Math.abs(DragToolEffectView.this.contentViewWidthOffset) : 0.0f;
            float measuredWidth2 = (DragToolEffectView.this.getMeasuredWidth() - f) - abs;
            int i = WhenMappings.$EnumSwitchMapping$0[this.dockType.ordinal()];
            if (i == 1) {
                this.rectF.set(f, 0 + ((DragToolEffectView.this.getMeasuredHeight() / 2.0f) - (valueOf.floatValue() / 2.0f)), DragToolEffectView.this.dragWidth + f, DragToolEffectView.this.getMeasuredHeight() - ((DragToolEffectView.this.getMeasuredHeight() / 2.0f) - (valueOf.floatValue() / 2.0f)));
                return;
            }
            if (i == 2) {
                float f2 = (measuredWidth2 / 2.0f) - (measuredWidth / 2.0f);
                this.rectF.set(f + f2, 0.0f, (DragToolEffectView.this.getMeasuredWidth() - abs) - f2, DragToolEffectView.this.dragWidth);
            } else if (i == 3) {
                this.rectF.set((DragToolEffectView.this.getMeasuredWidth() - DragToolEffectView.this.dragWidth) - abs, 0 + ((DragToolEffectView.this.getMeasuredHeight() / 2.0f) - (valueOf.floatValue() / 2.0f)), DragToolEffectView.this.getMeasuredWidth() - abs, DragToolEffectView.this.getMeasuredHeight() - ((DragToolEffectView.this.getMeasuredHeight() / 2.0f) - (valueOf.floatValue() / 2.0f)));
            } else {
                if (i != 4) {
                    return;
                }
                float f3 = (measuredWidth2 / 2.0f) - (measuredWidth / 2.0f);
                this.rectF.set(f + f3, DragToolEffectView.this.getMeasuredHeight() - DragToolEffectView.this.dragWidth, (DragToolEffectView.this.getMeasuredWidth() - abs) - f3, DragToolEffectView.this.getMeasuredHeight());
            }
        }

        public final void setSelectLinePath(@NotNull Path path) {
            Intrinsics.checkNotNullParameter(path, "<set-?>");
            this.selectLinePath = path;
        }
    }

    public DragToolEffectView(@Nullable Context context) {
        this(context, null);
    }

    /* renamed from: a */
    public final void m47726a() {
        this.selectLinePaint.setAlpha(0);
        this.lastFillPaint.setAlpha(this.originLastFillAlpha);
        this.animHelper.startSelectAnim(new Function2<Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.custom.DragToolEffectView$showSelectedAnim$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Boolean bool) {
                invoke(f.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, boolean z) {
                Paint paint;
                int i;
                Paint paint2;
                int i2;
                Paint paint3;
                Paint paint4;
                int i3;
                Paint paint5;
                int i4;
                Paint paint6;
                int i5;
                if (z) {
                    paint4 = DragToolEffectView.this.selectLinePaint;
                    i3 = DragToolEffectView.this.originSelectLineAlpha;
                    paint4.setAlpha((int) (i3 * f));
                    paint5 = DragToolEffectView.this.selectFillPaint;
                    i4 = DragToolEffectView.this.originSelectFillAlpha;
                    paint5.setAlpha((int) (i4 * f));
                    paint6 = DragToolEffectView.this.lastFillPaint;
                    i5 = DragToolEffectView.this.originLastFillAlpha;
                    paint6.setAlpha((int) (i5 * (1.0f - f)));
                    DragToolEffectView.this.invalidate();
                    return;
                }
                paint = DragToolEffectView.this.selectLinePaint;
                i = DragToolEffectView.this.originSelectLineAlpha;
                paint.setAlpha(i);
                paint2 = DragToolEffectView.this.selectFillPaint;
                i2 = DragToolEffectView.this.originSelectFillAlpha;
                paint2.setAlpha(i2);
                paint3 = DragToolEffectView.this.lastFillPaint;
                paint3.setAlpha(0);
                DragToolEffectView.this.invalidate();
            }
        });
    }

    /* renamed from: b */
    public final void m47727b() {
        this.animHelper.startHidden(new Function2<Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.custom.DragToolEffectView$startHideAnim$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Boolean bool) {
                invoke(f.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, boolean z) {
                Paint paint;
                int i;
                Paint paint2;
                int i2;
                Paint paint3;
                int i3;
                Paint paint4;
                int i4;
                Paint paint5;
                Paint paint6;
                int i5;
                Paint paint7;
                int i6;
                Paint paint8;
                int i7;
                Paint paint9;
                int i8;
                if (z) {
                    paint6 = DragToolEffectView.this.fillPaint;
                    i5 = DragToolEffectView.this.originFillAlpha;
                    paint6.setAlpha((int) (i5 * f));
                    paint7 = DragToolEffectView.this.strokePaint;
                    i6 = DragToolEffectView.this.originStrokeAlpha;
                    paint7.setAlpha((int) (i6 * f));
                    paint8 = DragToolEffectView.this.selectLinePaint;
                    i7 = DragToolEffectView.this.originSelectLineAlpha;
                    paint8.setAlpha((int) (i7 * f));
                    paint9 = DragToolEffectView.this.selectFillPaint;
                    i8 = DragToolEffectView.this.originSelectFillAlpha;
                    paint9.setAlpha((int) (i8 * f));
                    DragToolEffectView.this.invalidate();
                    return;
                }
                DragToolEffectView.this.setVisibility(8);
                paint = DragToolEffectView.this.fillPaint;
                i = DragToolEffectView.this.originFillAlpha;
                paint.setAlpha(i);
                paint2 = DragToolEffectView.this.strokePaint;
                i2 = DragToolEffectView.this.originStrokeAlpha;
                paint2.setAlpha(i2);
                paint3 = DragToolEffectView.this.selectLinePaint;
                i3 = DragToolEffectView.this.originSelectLineAlpha;
                paint3.setAlpha(i3);
                paint4 = DragToolEffectView.this.selectFillPaint;
                i4 = DragToolEffectView.this.originSelectFillAlpha;
                paint4.setAlpha(i4);
                paint5 = DragToolEffectView.this.lastFillPaint;
                paint5.setAlpha(0);
            }
        });
    }

    /* renamed from: c */
    public final void m47728c() {
        setVisibility(0);
        this.fillPaint.setAlpha(0);
        this.strokePaint.setAlpha(0);
        this.selectLinePaint.setAlpha(0);
        this.lastFillPaint.setAlpha(0);
        this.animHelper.startShow(new Function2<Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.custom.DragToolEffectView$startShowAnim$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Boolean bool) {
                invoke(f.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, boolean z) {
                Paint paint;
                int i;
                Paint paint2;
                int i2;
                Paint paint3;
                int i3;
                Paint paint4;
                int i4;
                Paint paint5;
                int i5;
                Paint paint6;
                int i6;
                Paint paint7;
                int i7;
                Paint paint8;
                int i8;
                if (!z) {
                    paint5 = DragToolEffectView.this.fillPaint;
                    i5 = DragToolEffectView.this.originFillAlpha;
                    paint5.setAlpha(i5);
                    paint6 = DragToolEffectView.this.strokePaint;
                    i6 = DragToolEffectView.this.originStrokeAlpha;
                    paint6.setAlpha(i6);
                    paint7 = DragToolEffectView.this.selectLinePaint;
                    i7 = DragToolEffectView.this.originSelectLineAlpha;
                    paint7.setAlpha(i7);
                    paint8 = DragToolEffectView.this.selectFillPaint;
                    i8 = DragToolEffectView.this.originSelectFillAlpha;
                    paint8.setAlpha(i8);
                    DragToolEffectView.this.invalidate();
                    return;
                }
                paint = DragToolEffectView.this.fillPaint;
                i = DragToolEffectView.this.originFillAlpha;
                paint.setAlpha((int) (i * f));
                paint2 = DragToolEffectView.this.strokePaint;
                i2 = DragToolEffectView.this.originStrokeAlpha;
                paint2.setAlpha((int) (i2 * f));
                paint3 = DragToolEffectView.this.selectLinePaint;
                i3 = DragToolEffectView.this.originSelectLineAlpha;
                paint3.setAlpha((int) (i3 * f));
                paint4 = DragToolEffectView.this.selectFillPaint;
                i4 = DragToolEffectView.this.originSelectFillAlpha;
                paint4.setAlpha((int) (i4 * f));
                DragToolEffectView.this.invalidate();
            }
        });
    }

    /* renamed from: d */
    public final void m47729d() {
        this.originFillAlpha = this.fillPaint.getAlpha();
        this.originStrokeAlpha = this.strokePaint.getAlpha();
        this.originSelectLineAlpha = this.selectLinePaint.getAlpha();
        this.originSelectFillAlpha = this.selectFillPaint.getAlpha();
        this.originLastFillAlpha = this.lastFillPaint.getAlpha();
    }

    /* renamed from: e */
    public final void m47730e() {
        Paint paint = this.fillPaint;
        ResManager resManager = ResManager.INSTANCE;
        paint.setColor(resManager.getColor(C10651R.color.drag_tool_effect_fill_color));
        this.selectFillPaint.setColor(ThemeUtils.getColorById(C7996R.color.theme_shape_icon_bg_color));
        this.lastFillPaint.setColor(resManager.getColor(C10651R.color.drag_tool_effect_fill_color));
        this.strokePaint.setColor(resManager.getColor(C7996R.color.theme_divider_color_01));
        this.selectLinePaint.setColor(ThemeUtils.getColorById(C7996R.color.theme_primary_color_01));
        m47729d();
    }

    /* renamed from: f */
    public final void m47731f() {
        for (PathBean pathBean : this.pathBeanList) {
            pathBean.setRectF();
            pathBean.applyRoundRect(this.cornerRadius);
            if (pathBean.isSelectDockType()) {
                pathBean.applySelectLinePath();
            }
        }
        invalidate();
    }

    public final float getCornerRadius() {
        return this.cornerRadius;
    }

    @NotNull
    public final DockType getSelectDockType() {
        return this.selectDockType;
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        for (PathBean pathBean : this.pathBeanList) {
            if (pathBean.isSelectDockType()) {
                canvas.drawPath(pathBean.getPath(), this.selectFillPaint);
                canvas.drawPath(pathBean.getSelectLinePath(), this.selectLinePaint);
                if (this.lastFillPaint.getAlpha() != 0) {
                    canvas.drawPath(pathBean.getLastPath(), this.lastFillPaint);
                }
            } else {
                canvas.drawPath(pathBean.getPath(), this.fillPaint);
                canvas.drawPath(pathBean.getPath(), this.strokePaint);
            }
        }
    }

    @Override // android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (changed) {
            m47731f();
        }
    }

    public final void setSelectDockType(@NotNull DockType dockType) {
        Intrinsics.checkNotNullParameter(dockType, "<set-?>");
        this.selectDockType = dockType;
    }

    public final void updateEffect(final boolean isDragging, @NotNull final DockType dockType) {
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        RxTimerUtil rxTimerUtil = RxTimerUtil.INSTANCE;
        rxTimerUtil.cancel(this.showHideAnimKey);
        this.showHideAnimKey = rxTimerUtil.timer(10L, TimeUnit.MILLISECONDS, new Function1<Long, Unit>() { // from class: com.onyx.galaxy.note.editor.view.custom.DragToolEffectView$updateEffect$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                invoke(l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j) {
                if (!isDragging) {
                    this.m47727b();
                    return;
                }
                if (!(this.getVisibility() == 0)) {
                    this.m47730e();
                    this.setSelectDockType(dockType);
                    this.m47731f();
                    this.m47728c();
                    return;
                }
                DockType selectDockType = this.getSelectDockType();
                DockType dockType2 = dockType;
                if (selectDockType != dockType2) {
                    this.setSelectDockType(dockType2);
                    this.m47731f();
                    this.m47726a();
                }
            }
        });
    }

    public final void updateTranslateXOffset(float widthOffset) {
        this.contentViewWidthOffset = widthOffset;
        m47731f();
    }

    public DragToolEffectView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public DragToolEffectView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ArrayList<PathBean> arrayListOf;
        this.dragWidthRatio = 0.7f;
        this.dragHeightRatio = 0.7f;
        DockType dockType = DockType.BOTTOM;
        this.selectDockType = dockType;
        Paint paint = new Paint();
        this.fillPaint = paint;
        Paint paint2 = new Paint();
        this.strokePaint = paint2;
        Paint paint3 = new Paint();
        this.selectLinePaint = paint3;
        this.selectFillPaint = new Paint();
        this.lastFillPaint = new Paint();
        ResManager resManager = ResManager.INSTANCE;
        this.cornerRadius = resManager.getDimension(C7384R.dimen.dp_8);
        this.animHelper = new DragToolEffectAnimHelper();
        this.showHideAnimKey = -1;
        PathBean pathBean = new PathBean();
        pathBean.setDockType(DockType.LEFT);
        Unit unit = Unit.INSTANCE;
        PathBean pathBean2 = new PathBean();
        pathBean2.setDockType(DockType.TOP);
        PathBean pathBean3 = new PathBean();
        pathBean3.setDockType(DockType.RIGHT);
        PathBean pathBean4 = new PathBean();
        pathBean4.setDockType(dockType);
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(pathBean, pathBean2, pathBean3, pathBean4);
        this.pathBeanList = arrayListOf;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        this.selectFillPaint.setAntiAlias(true);
        this.selectFillPaint.setStyle(Paint.Style.FILL);
        this.lastFillPaint.setAntiAlias(true);
        this.lastFillPaint.setStyle(Paint.Style.FILL);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(resManager.getDimension(C7384R.dimen.dp_1));
        paint3.setStyle(Paint.Style.STROKE);
        paint3.setStrokeWidth(resManager.getDimension(C7384R.dimen.dp_5));
        if (context != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C10651R.styleable.DragToolEffectView);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
            this.dragWidth = obtainStyledAttributes.getDimension(C10651R.styleable.DragToolEffectView_drag_view_height, resManager.getDimension(C10651R.dimen.drag_tool_height));
            obtainStyledAttributes.recycle();
        }
    }
}
