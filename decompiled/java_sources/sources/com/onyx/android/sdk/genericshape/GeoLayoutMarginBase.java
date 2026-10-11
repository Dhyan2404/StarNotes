package com.onyx.android.sdk.genericshape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Xfermode;
import com.onyx.android.sdk.base.extension.CanvasKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.geometry.data.MarginPercent;
import com.onyx.android.sdk.geometry.data.MarginPixel;
import com.onyx.android.sdk.geometry.data.MarginStyle;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.Duration;
import kotlin.time.TimeSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000 C2\u00020\u00012\u00020\u0002:\u0001CB\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010'\u001a\u00020(J.\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020+2\b\b\u0002\u0010,\u001a\u00020\u00052\u0014\b\u0002\u0010-\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020(0.J\u0010\u0010/\u001a\u00020(2\u0006\u0010*\u001a\u00020+H\u0002J$\u00100\u001a\u00020(2\u0006\u0010*\u001a\u00020+2\b\b\u0002\u0010,\u001a\u00020\u00052\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#J\b\u00101\u001a\u00020\u000eH\u0002J\u0006\u00102\u001a\u000203J\u0018\u00104\u001a\u00020\u00052\u0006\u00105\u001a\u00020\u000e2\u0006\u00106\u001a\u00020\u000eH\u0002J\u000e\u00107\u001a\u00020(2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u00108\u001a\u00020(2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u00109\u001a\u00020:J\u000e\u0010;\u001a\u00020(2\u0006\u0010\"\u001a\u00020#J\u000e\u0010<\u001a\u00020(2\u0006\u0010=\u001a\u00020>J\u000e\u0010?\u001a\u00020(2\u0006\u0010$\u001a\u00020\u000eJ\u000e\u0010@\u001a\u00020(2\u0006\u0010A\u001a\u00020BR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010$\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&¨\u0006D"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;", "Lcom/onyx/android/sdk/genericshape/Feature;", "Ljava/io/Serializable;", "()V", "adjustContentHorizontalPadding", "", "getAdjustContentHorizontalPadding", Constants.BOOLEAN_VALUE_SIG, "setAdjustContentHorizontalPadding", "(Z)V", "adjustContentVerticalPadding", "getAdjustContentVerticalPadding", "setAdjustContentVerticalPadding", "contentRect", "Landroid/graphics/RectF;", GeoConstant.KEY_Geometrys, "", "Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry;", "getGeometries", "()Ljava/util/List;", "setGeometries", "(Ljava/util/List;)V", "marginPaint", "Landroid/graphics/Paint;", "getMarginPaint", "()Landroid/graphics/Paint;", "marginPaint$delegate", "Lkotlin/Lazy;", "marginPercent", "Lcom/onyx/android/sdk/geometry/data/MarginPercent;", "getMarginPercent", "()Lcom/onyx/android/sdk/geometry/data/MarginPercent;", "setMarginPercent", "(Lcom/onyx/android/sdk/geometry/data/MarginPercent;)V", "matrix", "Landroid/graphics/Matrix;", "viewport", "getViewport", "()Landroid/graphics/RectF;", "clearMargin", "", "draw", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "allowUseShader", "drawContent", "Lkotlin/Function1;", "drawBackground", "drawMarginTemplate", "getAdjustedContentRect", "getMarginPixel", "Lcom/onyx/android/sdk/geometry/data/MarginPixel;", "isIntersectCanvas", "canvasBoundingRectF", "rectF", "setContentRect", "setMargin", "marginStyle", "Lcom/onyx/android/sdk/geometry/data/MarginStyle;", "setMatrix", "setSpace", "space", "", "setViewport", "setXferMode", "xfermode", "Landroid/graphics/Xfermode;", "Companion", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoLayoutMargin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLayoutMargin.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutMarginBase\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n1#1,366:1\n1855#2,2:367\n766#2:369\n857#2,2:370\n1549#2:372\n1620#2,3:373\n1855#2,2:376\n1855#2,2:388\n18#3,4:378\n50#3,6:382\n56#3:390\n*S KotlinDebug\n*F\n+ 1 GeoLayoutMargin.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutMarginBase\n*L\n91#1:367,2\n123#1:369\n123#1:370,2\n124#1:372\n124#1:373,3\n128#1:376,2\n159#1:388,2\n158#1:378,4\n158#1:382,6\n158#1:390\n*E\n"})
/* loaded from: classes7.dex */
public class GeoLayoutMarginBase extends Feature implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private boolean adjustContentHorizontalPadding;
    private boolean adjustContentVerticalPadding;

    @NotNull
    private List<GeoLayoutMarginGeometry> geometries;

    /* renamed from: marginPaint$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy marginPaint;

    @NotNull
    private final transient RectF contentRect = new RectF();

    @NotNull
    private final transient Matrix matrix = new Matrix();

    @NotNull
    private final transient RectF viewport = new RectF();

    @NotNull
    private transient MarginPercent marginPercent = new MarginPercent();

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$Companion;", "", "()V", "calculateContentRect", "Landroid/graphics/RectF;", "viewport", "marginPercent", "Lcom/onyx/android/sdk/geometry/data/MarginPercent;", "calculateViewport", "contentRect", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final RectF calculateContentRect(@NotNull RectF viewport, @NotNull MarginPercent marginPercent) {
            Intrinsics.checkNotNullParameter(viewport, "viewport");
            Intrinsics.checkNotNullParameter(marginPercent, "marginPercent");
            if (!marginPercent.hasMargin()) {
                return viewport;
            }
            MarginPixel marginPixel = marginPercent.toMarginPixel(viewport.width() / ((marginPercent.getLeft() + 1.0f) + marginPercent.getRight()), viewport.height() / ((marginPercent.getTop() + 1.0f) + marginPercent.getBottom()));
            return new RectF(viewport.left + ((RectF) marginPixel).left, viewport.top + ((RectF) marginPixel).top, viewport.right - ((RectF) marginPixel).right, viewport.bottom - ((RectF) marginPixel).bottom);
        }

        @NotNull
        public final RectF calculateViewport(@NotNull RectF contentRect, @NotNull MarginPercent marginPercent) {
            Intrinsics.checkNotNullParameter(contentRect, "contentRect");
            Intrinsics.checkNotNullParameter(marginPercent, "marginPercent");
            return !marginPercent.hasMargin() ? contentRect : marginPercent.toRectFWithMargin(contentRect);
        }

        private Companion() {
        }
    }

    public GeoLayoutMarginBase() {
        List<GeoLayoutMarginGeometry> emptyList;
        Lazy lazy;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.geometries = emptyList;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Paint>() { // from class: com.onyx.android.sdk.genericshape.GeoLayoutMarginBase$marginPaint$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Paint invoke() {
                return new Paint();
            }
        });
        this.marginPaint = lazy;
        getProperties().setSubType(GeoConstant.MultiLayout);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void draw$default(GeoLayoutMarginBase geoLayoutMarginBase, Canvas canvas, boolean z, Function1 function1, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: draw");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            function1 = new Function1<Canvas, Unit>() { // from class: com.onyx.android.sdk.genericshape.GeoLayoutMarginBase$draw$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Canvas it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Canvas canvas2) {
                    invoke2(canvas2);
                    return Unit.INSTANCE;
                }
            };
        }
        geoLayoutMarginBase.draw(canvas, z, function1);
    }

    private final void drawBackground(Canvas canvas) {
        int collectionSizeOrDefault;
        FillAttr fillAttr = getProperties().getFillAttr();
        if (fillAttr == null || this.contentRect.isEmpty() || RectKt.isNaN(this.contentRect)) {
            return;
        }
        getMarginPaint().setAntiAlias(false);
        getMarginPaint().setColor(fillAttr.getColor());
        getMarginPaint().setStyle(Paint.Style.FILL);
        RectF boundingRectF = CanvasKt.boundingRectF(canvas);
        List<RectF> createRectanglesWithHole = RectKt.createRectanglesWithHole(this.viewport, this.contentRect);
        ArrayList<RectF> arrayList = new ArrayList();
        for (Object obj : createRectanglesWithHole) {
            if (isIntersectCanvas(boundingRectF, (RectF) obj)) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (RectF rectF : arrayList) {
            this.matrix.mapRect(rectF);
            RectFKt.roundToExpand(rectF);
            arrayList2.add(rectF);
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            canvas.drawRect((RectF) it2.next(), getMarginPaint());
        }
    }

    public static /* synthetic */ void drawMarginTemplate$default(GeoLayoutMarginBase geoLayoutMarginBase, Canvas canvas, boolean z, Matrix matrix, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawMarginTemplate");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            matrix = null;
        }
        geoLayoutMarginBase.drawMarginTemplate(canvas, z, matrix);
    }

    private final RectF getAdjustedContentRect() {
        Object firstOrNull;
        List<GeoLayoutChildParams> geometries;
        Object firstOrNull2;
        GeoLayout geoLayout;
        RectF copy = RectFKt.copy(this.contentRect);
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.geometries);
        GeoLayoutMarginGeometry geoLayoutMarginGeometry = (GeoLayoutMarginGeometry) firstOrNull;
        if (geoLayoutMarginGeometry != null && (geometries = geoLayoutMarginGeometry.getGeometries()) != null) {
            firstOrNull2 = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) geometries);
            GeoLayoutChildParams geoLayoutChildParams = (GeoLayoutChildParams) firstOrNull2;
            if (geoLayoutChildParams != null && (geoLayout = geoLayoutChildParams.getGeoLayout()) != null) {
                float spacing = geoLayout.getSpacing();
                if (spacing > 0.0f) {
                    copy.inset(-(this.adjustContentHorizontalPadding ? (spacing - (copy.width() % spacing)) / 2.0f : 0.0f), -(this.adjustContentVerticalPadding ? (spacing - (copy.height() % spacing)) / 2.0f : 0.0f));
                }
            }
        }
        return copy;
    }

    private final Paint getMarginPaint() {
        return (Paint) this.marginPaint.getValue();
    }

    private final boolean isIntersectCanvas(RectF canvasBoundingRectF, RectF rectF) {
        if (canvasBoundingRectF.isEmpty()) {
            return true;
        }
        if (rectF.isEmpty()) {
            return false;
        }
        RectUtils rectUtils = RectUtils.INSTANCE;
        RectF copy = RectFKt.copy(rectF);
        this.matrix.mapRect(copy);
        Unit unit = Unit.INSTANCE;
        return rectUtils.isIntersect(canvasBoundingRectF, copy);
    }

    public final void clearMargin() {
        List<GeoLayoutMarginGeometry> emptyList;
        this.marginPercent = new MarginPercent();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.geometries = emptyList;
        this.adjustContentHorizontalPadding = false;
        this.adjustContentVerticalPadding = false;
    }

    public final void draw(@NotNull Canvas canvas, boolean allowUseShader, @NotNull Function1<? super Canvas, Unit> drawContent) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(drawContent, "drawContent");
        int save = canvas.save();
        if (this.marginPercent.hasMargin()) {
            drawBackground(canvas);
            drawMarginTemplate(canvas, allowUseShader, this.matrix);
        }
        MarginPixel marginPixel = getMarginPixel();
        canvas.concat(this.matrix);
        canvas.translate(((RectF) marginPixel).left, ((RectF) marginPixel).top);
        drawContent.invoke(canvas);
        canvas.restoreToCount(save);
    }

    public final void drawMarginTemplate(@NotNull Canvas canvas, boolean allowUseShader, @Nullable Matrix matrix) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        DrawContext drawContext = new DrawContext(canvas, matrix, null, allowUseShader, false, false, 0.0f, 116, null);
        RectF boundingRectF = CanvasKt.boundingRectF(canvas);
        canvas.save();
        canvas.clipRect(RectFKt.copyAndTransform(this.viewport, matrix));
        final RectF adjustedContentRect = getAdjustedContentRect();
        GeoLayoutParent geoLayoutParent = new GeoLayoutParent(CollectionKt.toMap(GeoLayoutMarginLocation.getEntries(), new Function1<GeoLayoutMarginLocation, String>() { // from class: com.onyx.android.sdk.genericshape.GeoLayoutMarginBase$drawMarginTemplate$layoutMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull GeoLayoutMarginLocation it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.toValueString();
            }
        }, new Function1<GeoLayoutMarginLocation, RectF>() { // from class: com.onyx.android.sdk.genericshape.GeoLayoutMarginBase$drawMarginTemplate$layoutMap$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final RectF invoke(@NotNull GeoLayoutMarginLocation it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return GeoLayoutMarginLocation.INSTANCE.buildRectForLocation(it2.toValueString(), GeoLayoutMarginBase.this.getViewport(), adjustedContentRect);
            }
        }));
        long m74114markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto();
        for (GeoLayoutMarginGeometry geoLayoutMarginGeometry : this.geometries) {
            RectF locationRect = geoLayoutMarginGeometry.getLocationRect(adjustedContentRect, this.viewport);
            if (!locationRect.isEmpty() && !RectKt.isNaN(locationRect) && isIntersectCanvas(boundingRectF, locationRect)) {
                canvas.save();
                geoLayoutMarginGeometry.draw(drawContext, geoLayoutParent, locationRect);
                canvas.restore();
            }
        }
        long m74119elapsedNowUwyO8pc = TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(m74114markNowz9LOYto);
        Debug.INSTANCE.m32035d(getClass(), "render margin template cost: " + ((Object) Duration.m74024toStringimpl(m74119elapsedNowUwyO8pc)), new Object[0]);
        canvas.restore();
    }

    public final boolean getAdjustContentHorizontalPadding() {
        return this.adjustContentHorizontalPadding;
    }

    public final boolean getAdjustContentVerticalPadding() {
        return this.adjustContentVerticalPadding;
    }

    @NotNull
    public final List<GeoLayoutMarginGeometry> getGeometries() {
        return this.geometries;
    }

    @NotNull
    public final MarginPercent getMarginPercent() {
        return this.marginPercent;
    }

    @NotNull
    public final MarginPixel getMarginPixel() {
        return this.marginPercent.toMarginPixel(this.contentRect.width(), this.contentRect.height());
    }

    @NotNull
    public final RectF getViewport() {
        return this.viewport;
    }

    public final void setAdjustContentHorizontalPadding(boolean z) {
        this.adjustContentHorizontalPadding = z;
    }

    public final void setAdjustContentVerticalPadding(boolean z) {
        this.adjustContentVerticalPadding = z;
    }

    public final void setContentRect(@NotNull RectF contentRect) {
        Intrinsics.checkNotNullParameter(contentRect, "contentRect");
        this.viewport.set(INSTANCE.calculateViewport(contentRect, this.marginPercent));
        this.contentRect.set(contentRect);
    }

    public final void setGeometries(@NotNull List<GeoLayoutMarginGeometry> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.geometries = list;
    }

    public final void setMargin(@NotNull MarginPercent marginPercent, @NotNull MarginStyle marginStyle) {
        Unit unit;
        Intrinsics.checkNotNullParameter(marginPercent, "marginPercent");
        Intrinsics.checkNotNullParameter(marginStyle, "marginStyle");
        this.marginPercent = marginPercent;
        FillAttr fillAttr = getProperties().getFillAttr();
        if (fillAttr != null) {
            fillAttr.setColor(marginStyle.getColor());
            fillAttr.setEnableColor(true);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            Properties properties = getProperties();
            FillAttr fillAttr2 = new FillAttr();
            fillAttr2.setColor(marginStyle.getColor());
            properties.setFillAttr(fillAttr2);
        }
        setSpace(marginStyle.getTemplateSpace());
    }

    public final void setMarginPercent(@NotNull MarginPercent marginPercent) {
        Intrinsics.checkNotNullParameter(marginPercent, "<set-?>");
        this.marginPercent = marginPercent;
    }

    public final void setMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        this.matrix.set(matrix);
    }

    public final void setSpace(float space) {
        Iterator<T> it2 = this.geometries.iterator();
        while (it2.hasNext()) {
            ((GeoLayoutMarginGeometry) it2.next()).setSpace(space);
        }
    }

    public final void setViewport(@NotNull RectF viewport) {
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        this.viewport.set(viewport);
        this.contentRect.set(INSTANCE.calculateContentRect(viewport, this.marginPercent));
    }

    public final void setXferMode(@NotNull Xfermode xfermode) {
        Intrinsics.checkNotNullParameter(xfermode, "xfermode");
        getMarginPaint().setXfermode(xfermode);
    }
}
