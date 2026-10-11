package com.onyx.android.sdk.genericshape;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010!\u001a\u00020\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001a\u0010'\u001a\u00020\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010$\"\u0004\b)\u0010&R\u001a\u0010*\u001a\u00020\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010$\"\u0004\b,\u0010&R\u001c\u0010-\u001a\u0004\u0018\u00010.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001c\u00103\u001a\u0004\u0018\u000104X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001c\u00109\u001a\u0004\u0018\u00010:X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u001c\u0010?\u001a\u0004\u0018\u00010@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u001a\u0010E\u001a\u00020FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\u001c\u0010K\u001a\u0004\u0018\u00010LX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR\u001a\u0010Q\u001a\u00020RX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR\u001c\u0010W\u001a\u0004\u0018\u00010XX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R\u001a\u0010]\u001a\u000204X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b^\u00106\"\u0004\b_\u00108R\u001c\u0010`\u001a\u0004\u0018\u00010aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR\u001a\u0010f\u001a\u00020\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bg\u0010$\"\u0004\bh\u0010&R\u001a\u0010i\u001a\u00020\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bj\u0010$\"\u0004\bk\u0010&R\u001c\u0010l\u001a\u0004\u0018\u00010mX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bn\u0010o\"\u0004\bp\u0010q¨\u0006r"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/Properties;", "", "()V", "alignmentAttr", "Lcom/onyx/android/sdk/genericshape/AlignmentAttr;", "getAlignmentAttr", "()Lcom/onyx/android/sdk/genericshape/AlignmentAttr;", "setAlignmentAttr", "(Lcom/onyx/android/sdk/genericshape/AlignmentAttr;)V", "createAttr", "Lcom/onyx/android/sdk/genericshape/CreateAttr;", "getCreateAttr", "()Lcom/onyx/android/sdk/genericshape/CreateAttr;", "setCreateAttr", "(Lcom/onyx/android/sdk/genericshape/CreateAttr;)V", "dividerAttr", "Lcom/onyx/android/sdk/genericshape/DividerAttr;", "getDividerAttr", "()Lcom/onyx/android/sdk/genericshape/DividerAttr;", "setDividerAttr", "(Lcom/onyx/android/sdk/genericshape/DividerAttr;)V", "drawOrigin", "Lcom/onyx/android/sdk/genericshape/DrawOrigin;", "getDrawOrigin", "()Lcom/onyx/android/sdk/genericshape/DrawOrigin;", "setDrawOrigin", "(Lcom/onyx/android/sdk/genericshape/DrawOrigin;)V", "fillAttr", "Lcom/onyx/android/sdk/genericshape/FillAttr;", "getFillAttr", "()Lcom/onyx/android/sdk/genericshape/FillAttr;", "setFillAttr", "(Lcom/onyx/android/sdk/genericshape/FillAttr;)V", "forceFullFit", "", "getForceFullFit", Constants.BOOLEAN_VALUE_SIG, "setForceFullFit", "(Z)V", "ignoreFirstColumn", "getIgnoreFirstColumn", "setIgnoreFirstColumn", "ignoreFirstRow", "getIgnoreFirstRow", "setIgnoreFirstRow", "imageAttr", "Lcom/onyx/android/sdk/genericshape/ImageAttr;", "getImageAttr", "()Lcom/onyx/android/sdk/genericshape/ImageAttr;", "setImageAttr", "(Lcom/onyx/android/sdk/genericshape/ImageAttr;)V", "layoutType", "", "getLayoutType", "()Ljava/lang/String;", "setLayoutType", "(Ljava/lang/String;)V", "lineStyle", "Lcom/onyx/android/sdk/genericshape/LineStyle;", "getLineStyle", "()Lcom/onyx/android/sdk/genericshape/LineStyle;", "setLineStyle", "(Lcom/onyx/android/sdk/genericshape/LineStyle;)V", "pageMargins", "Lcom/onyx/android/sdk/genericshape/PageMargins;", "getPageMargins", "()Lcom/onyx/android/sdk/genericshape/PageMargins;", "setPageMargins", "(Lcom/onyx/android/sdk/genericshape/PageMargins;)V", "radius", "", "getRadius", "()F", "setRadius", "(F)V", "resourceAttr", "Lcom/onyx/android/sdk/genericshape/ResourceAttr;", "getResourceAttr", "()Lcom/onyx/android/sdk/genericshape/ResourceAttr;", "setResourceAttr", "(Lcom/onyx/android/sdk/genericshape/ResourceAttr;)V", "selectionPointType", "Lcom/onyx/android/sdk/genericshape/SelectionPointType;", "getSelectionPointType", "()Lcom/onyx/android/sdk/genericshape/SelectionPointType;", "setSelectionPointType", "(Lcom/onyx/android/sdk/genericshape/SelectionPointType;)V", "strokeAttr", "Lcom/onyx/android/sdk/genericshape/StrokeAttr;", "getStrokeAttr", "()Lcom/onyx/android/sdk/genericshape/StrokeAttr;", "setStrokeAttr", "(Lcom/onyx/android/sdk/genericshape/StrokeAttr;)V", GeoConstant.KEY_SUB_TYPE, "getSubType", "setSubType", "textAttr", "Lcom/onyx/android/sdk/genericshape/TextAttr;", "getTextAttr", "()Lcom/onyx/android/sdk/genericshape/TextAttr;", "setTextAttr", "(Lcom/onyx/android/sdk/genericshape/TextAttr;)V", "underContent", "getUnderContent", "setUnderContent", "useFixedRatio", "getUseFixedRatio", "setUseFixedRatio", "waveAttr", "Lcom/onyx/android/sdk/genericshape/WaveAttr;", "getWaveAttr", "()Lcom/onyx/android/sdk/genericshape/WaveAttr;", "setWaveAttr", "(Lcom/onyx/android/sdk/genericshape/WaveAttr;)V", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class Properties {

    @Nullable
    private transient AlignmentAttr alignmentAttr;

    @Nullable
    private CreateAttr createAttr;

    @Nullable
    private DividerAttr dividerAttr;

    @Nullable
    private FillAttr fillAttr;
    private boolean forceFullFit;
    private boolean ignoreFirstColumn;
    private boolean ignoreFirstRow;

    @Nullable
    private ImageAttr imageAttr;

    @Nullable
    private String layoutType;

    @Nullable
    private LineStyle lineStyle;

    @Nullable
    private PageMargins pageMargins;
    private float radius;

    @Nullable
    private ResourceAttr resourceAttr;

    @Nullable
    private StrokeAttr strokeAttr;

    @Nullable
    private TextAttr textAttr;
    private boolean underContent;
    private boolean useFixedRatio;

    @Nullable
    private WaveAttr waveAttr;

    @NotNull
    private String subType = "";

    @NotNull
    private SelectionPointType selectionPointType = SelectionPointType.SCALE;

    @NotNull
    private DrawOrigin drawOrigin = DrawOrigin.LEFT_TOP;

    @Nullable
    public final AlignmentAttr getAlignmentAttr() {
        return this.alignmentAttr;
    }

    @Nullable
    public final CreateAttr getCreateAttr() {
        return this.createAttr;
    }

    @Nullable
    public final DividerAttr getDividerAttr() {
        return this.dividerAttr;
    }

    @NotNull
    public final DrawOrigin getDrawOrigin() {
        return this.drawOrigin;
    }

    @Nullable
    public final FillAttr getFillAttr() {
        return this.fillAttr;
    }

    public final boolean getForceFullFit() {
        return this.forceFullFit;
    }

    public final boolean getIgnoreFirstColumn() {
        return this.ignoreFirstColumn;
    }

    public final boolean getIgnoreFirstRow() {
        return this.ignoreFirstRow;
    }

    @Nullable
    public final ImageAttr getImageAttr() {
        return this.imageAttr;
    }

    @Nullable
    public final String getLayoutType() {
        return this.layoutType;
    }

    @Nullable
    public final LineStyle getLineStyle() {
        return this.lineStyle;
    }

    @Nullable
    public final PageMargins getPageMargins() {
        return this.pageMargins;
    }

    public final float getRadius() {
        return this.radius;
    }

    @Nullable
    public final ResourceAttr getResourceAttr() {
        return this.resourceAttr;
    }

    @NotNull
    public final SelectionPointType getSelectionPointType() {
        return this.selectionPointType;
    }

    @Nullable
    public final StrokeAttr getStrokeAttr() {
        return this.strokeAttr;
    }

    @NotNull
    public final String getSubType() {
        return this.subType;
    }

    @Nullable
    public final TextAttr getTextAttr() {
        return this.textAttr;
    }

    public final boolean getUnderContent() {
        return this.underContent;
    }

    public final boolean getUseFixedRatio() {
        return this.useFixedRatio;
    }

    @Nullable
    public final WaveAttr getWaveAttr() {
        return this.waveAttr;
    }

    public final void setAlignmentAttr(@Nullable AlignmentAttr alignmentAttr) {
        this.alignmentAttr = alignmentAttr;
    }

    public final void setCreateAttr(@Nullable CreateAttr createAttr) {
        this.createAttr = createAttr;
    }

    public final void setDividerAttr(@Nullable DividerAttr dividerAttr) {
        this.dividerAttr = dividerAttr;
    }

    public final void setDrawOrigin(@NotNull DrawOrigin drawOrigin) {
        Intrinsics.checkNotNullParameter(drawOrigin, "<set-?>");
        this.drawOrigin = drawOrigin;
    }

    public final void setFillAttr(@Nullable FillAttr fillAttr) {
        this.fillAttr = fillAttr;
    }

    public final void setForceFullFit(boolean z) {
        this.forceFullFit = z;
    }

    public final void setIgnoreFirstColumn(boolean z) {
        this.ignoreFirstColumn = z;
    }

    public final void setIgnoreFirstRow(boolean z) {
        this.ignoreFirstRow = z;
    }

    public final void setImageAttr(@Nullable ImageAttr imageAttr) {
        this.imageAttr = imageAttr;
    }

    public final void setLayoutType(@Nullable String str) {
        this.layoutType = str;
    }

    public final void setLineStyle(@Nullable LineStyle lineStyle) {
        this.lineStyle = lineStyle;
    }

    public final void setPageMargins(@Nullable PageMargins pageMargins) {
        this.pageMargins = pageMargins;
    }

    public final void setRadius(float f) {
        this.radius = f;
    }

    public final void setResourceAttr(@Nullable ResourceAttr resourceAttr) {
        this.resourceAttr = resourceAttr;
    }

    public final void setSelectionPointType(@NotNull SelectionPointType selectionPointType) {
        Intrinsics.checkNotNullParameter(selectionPointType, "<set-?>");
        this.selectionPointType = selectionPointType;
    }

    public final void setStrokeAttr(@Nullable StrokeAttr strokeAttr) {
        this.strokeAttr = strokeAttr;
    }

    public final void setSubType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.subType = str;
    }

    public final void setTextAttr(@Nullable TextAttr textAttr) {
        this.textAttr = textAttr;
    }

    public final void setUnderContent(boolean z) {
        this.underContent = z;
    }

    public final void setUseFixedRatio(boolean z) {
        this.useFixedRatio = z;
    }

    public final void setWaveAttr(@Nullable WaveAttr waveAttr) {
        this.waveAttr = waveAttr;
    }
}
