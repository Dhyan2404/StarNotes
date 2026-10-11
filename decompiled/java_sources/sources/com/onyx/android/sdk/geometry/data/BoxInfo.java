package com.onyx.android.sdk.geometry.data;

import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.geometry.data.BoxCellInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 \u0084\u00012\u00020\u0001:\u0002\u0084\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u000f\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0000¢\u0006\u0002\u0010\tB/\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0002\u0010\u000fJ\u0006\u0010\u000e\u001a\u00020\u000bJ\u0006\u0010E\u001a\u00020\u000bJ\u0006\u0010F\u001a\u00020\u000bJ\u0006\u0010G\u001a\u00020\u0016J\u0006\u0010H\u001a\u00020\u0000J\u000e\u0010I\u001a\u00020\u000b2\u0006\u0010J\u001a\u00020\u0006J\u000e\u0010K\u001a\u00020\u000b2\u0006\u0010J\u001a\u00020\u0006J\u0006\u0010L\u001a\u00020MJ\u0006\u0010N\u001a\u00020\u0004J\u0006\u0010O\u001a\u00020\u0006J\u0006\u0010P\u001a\u00020\u0004J\u000e\u0010Q\u001a\u00020\u00062\u0006\u0010R\u001a\u00020\u0000J\u0006\u0010S\u001a\u00020TJ\u0006\u0010U\u001a\u00020VJ\u0006\u0010W\u001a\u00020TJ\u0006\u0010X\u001a\u00020\u0006J\u0006\u0010Y\u001a\u00020\u0004J\u0006\u0010Z\u001a\u00020[J\u000e\u0010\\\u001a\u00020[2\u0006\u0010]\u001a\u00020\u0000J\u0006\u0010^\u001a\u00020\u000bJ\u0018\u0010_\u001a\u00020\u00162\u0006\u0010R\u001a\u00020\u00002\b\b\u0002\u0010`\u001a\u00020\u000bJ\u000e\u0010a\u001a\u00020[2\u0006\u0010R\u001a\u00020\u0000J\u0006\u0010b\u001a\u00020[J\u000e\u0010c\u001a\u00020[2\u0006\u0010R\u001a\u00020\u0000J\u000e\u0010d\u001a\u00020[2\u0006\u0010R\u001a\u00020\u0000J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010e\u001a\u00020fJ\u0016\u0010g\u001a\u00020f2\u0006\u0010h\u001a\u00020\u000b2\u0006\u0010i\u001a\u00020\u000bJ\u000e\u0010j\u001a\u00020f2\u0006\u0010\u000e\u001a\u00020\u000bJ\u000e\u0010k\u001a\u00020f2\u0006\u0010\r\u001a\u00020\u000bJ\u0016\u0010l\u001a\u00020f2\u0006\u0010m\u001a\u00020\u000b2\u0006\u0010n\u001a\u00020\u000bJ\u0016\u0010o\u001a\u00020f2\u0006\u0010m\u001a\u00020\u000b2\u0006\u0010n\u001a\u00020\u000bJ\u0006\u0010p\u001a\u00020fJ\u0006\u0010\r\u001a\u00020\u000bJ\u0006\u0010q\u001a\u00020\u0016J\u0018\u0010r\u001a\u00020f2\u0006\u0010J\u001a\u00020\u00062\b\b\u0002\u0010s\u001a\u00020[J\u000e\u0010t\u001a\u00020f2\u0006\u0010J\u001a\u00020\u0006J\u0018\u0010u\u001a\u00020f2\u0006\u0010J\u001a\u00020\u00062\b\b\u0002\u0010s\u001a\u00020[J\u000e\u0010v\u001a\u00020f2\u0006\u0010w\u001a\u00020\u000bJ\u0006\u0010x\u001a\u00020yJ\u0006\u0010z\u001a\u00020\u0006J\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010{\u001a\u00020\u00002\u0006\u0010|\u001a\u00020\u0000J\u0010\u0010}\u001a\u00020f2\u0006\u0010~\u001a\u00020\u0000H\u0002J\u0010\u0010\u007f\u001a\u00020f2\u0006\u0010~\u001a\u00020\u0000H\u0002J\u0007\u0010\u0080\u0001\u001a\u00020fJ\u000f\u0010\u0081\u0001\u001a\u00020f2\u0006\u0010J\u001a\u00020\u0006J\u0019\u0010\u0082\u0001\u001a\u00020\u00162\u0006\u0010R\u001a\u00020\u00002\b\b\u0002\u0010`\u001a\u00020\u000bJ\u0007\u0010\u0083\u0001\u001a\u00020\u000bR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0000X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010\tR\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001a\u0010-\u001a\u00020.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001c\u00103\u001a\u0004\u0018\u00010\u0000X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010!\"\u0004\b5\u0010\tR\u001a\u00106\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u001c\"\u0004\b8\u0010\u001eR\u001a\u00109\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u001c\"\u0004\b;\u0010\u001eR\u001a\u0010<\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010\u0012\"\u0004\b>\u0010\u0014R\u001a\u0010?\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010\u0018\"\u0004\bA\u0010\u001aR\u001a\u0010B\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010\u001c\"\u0004\bD\u0010\u001e¨\u0006\u0085\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "", "()V", "id", "", "box", "Landroid/graphics/RectF;", "(Ljava/lang/String;Landroid/graphics/RectF;)V", "srcBox", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "left", "", OneDriverConstants.TOP, gon.f71288n0, "bottom", "(Ljava/lang/String;FFFF)V", "actualScale", "getActualScale", "()F", "setActualScale", "(F)V", "align", "", "getAlign", "()I", "setAlign", "(I)V", "getBox", "()Landroid/graphics/RectF;", "setBox", "(Landroid/graphics/RectF;)V", "contentInfo", "getContentInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setContentInfo", "extraInfo", "Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;", "getExtraInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;", "setExtraInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "marginStyle", "Lcom/onyx/android/sdk/geometry/data/MarginStyle;", "getMarginStyle", "()Lcom/onyx/android/sdk/geometry/data/MarginStyle;", "setMarginStyle", "(Lcom/onyx/android/sdk/geometry/data/MarginStyle;)V", "noteInfo", "getNoteInfo", "setNoteInfo", "originRectF", "getOriginRectF", "setOriginRectF", "originRectFWithMargin", "getOriginRectFWithMargin", "setOriginRectFWithMargin", "rotation", "getRotation", "setRotation", "scaleMode", "getScaleMode", "setScaleMode", "visibleRect", "getVisibleRect", "setVisibleRect", "centerX", "centerY", "columnIndex", "copy", "displayScale", "viewport", "getActualScaleOfScaleToPageWithAspectScaleCheck", "getCellInfoCopy", "Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;", "getCellKey", "getCellOriginRectFCopy", "getDebugString", "getIntersectRectF", "anotherBox", "getMarginDisplayPixel", "Lcom/onyx/android/sdk/geometry/data/MarginPixel;", "getMarginPercent", "Lcom/onyx/android/sdk/geometry/data/MarginPercent;", "getMarginPixel", "getScaledRectWithMargin", "getVisibleDebugString", "hasMargin", "", "hasSameVisibility", "boxInfo", "height", "horCheck", "gap", "intersect", "isNaNBox", "isVisibleIntersectHeight", "isVisibleIntersectWidth", "logNaNTrace", "", "moveTo", "x", "y", "moveToBottom", "moveToRight", TypedValues.CycleType.S_WAVE_OFFSET, "dx", "dy", "offsetTo", "offsetToOrigin", "rowIndex", "scaleToViewport", "alignOrigin", "scaleToViewportWidth", "scaleToViewportWithAspectScaleCheck", "setScale", "scale", "size", "Lcom/onyx/android/sdk/base/data/Size;", "toZeroOriginRoundRectF", "translate", "origin", "updateChildDisplayRectF", "child", "updateChildInfoVisibleRect", "updateChildrenDisplayRectF", "updateVisibleRect", "verCheck", "width", "Companion", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nBoxInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BoxInfo.kt\ncom/onyx/android/sdk/geometry/data/BoxInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"})
/* loaded from: classes7.dex */
public final class BoxInfo {
    public static final int ALIGN_CENTER = 2;
    public static final int ALIGN_LEFT = 1;
    public static final int ALIGN_RIGHT = 3;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int SCALE_MODE_SCALE_TO_HEIGHT = 3;
    public static final int SCALE_MODE_SCALE_TO_PAGE = 1;
    public static final int SCALE_MODE_SCALE_TO_WIDTH = 2;
    private float actualScale;
    private int align;

    @NotNull
    private RectF box;

    @Nullable
    private BoxInfo contentInfo;

    @Nullable
    private BoxExtraInfo extraInfo;

    @NotNull
    private String id;

    @NotNull
    private MarginStyle marginStyle;

    @Nullable
    private BoxInfo noteInfo;

    @NotNull
    private RectF originRectF;

    @NotNull
    private RectF originRectFWithMargin;
    private float rotation;
    private int scaleMode;

    @NotNull
    private RectF visibleRect;

    @Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\n\u001a\u00020\u000b*\u00020\f2\u0006\u0010\r\u001a\u00020\fJ\n\u0010\u000e\u001a\u00020\u000b*\u00020\fJ\u0012\u0010\u000f\u001a\u00020\u0010*\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010J\n\u0010\u0012\u001a\u00020\u000b*\u00020\fJ\u0012\u0010\u0013\u001a\u00020\u000b*\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0010J\u0012\u0010\u0015\u001a\u00020\u0016*\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;", "", "()V", "ALIGN_CENTER", "", "ALIGN_LEFT", "ALIGN_RIGHT", "SCALE_MODE_SCALE_TO_HEIGHT", "SCALE_MODE_SCALE_TO_PAGE", "SCALE_MODE_SCALE_TO_WIDTH", "getCrossPageMatrix", "Landroid/graphics/Matrix;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "crossBoxInfo", "getRotatedMatrix", "getTargetRotation", "", "deltaDegrees", "getUnRotatedMatrix", "rotate", "degrees", "updateVirtualPageSize", "", "virtualPageSize", "Landroid/graphics/RectF;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nBoxInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BoxInfo.kt\ncom/onyx/android/sdk/geometry/data/BoxInfo$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Matrix getCrossPageMatrix(@NotNull BoxInfo boxInfo, @NotNull BoxInfo crossBoxInfo) {
            Intrinsics.checkNotNullParameter(boxInfo, "<this>");
            Intrinsics.checkNotNullParameter(crossBoxInfo, "crossBoxInfo");
            RectF copy = RectFKt.copy(boxInfo.getBox());
            RectKt.inset(copy, boxInfo.getMarginDisplayPixel());
            RectF copy2 = RectFKt.copy(crossBoxInfo.getBox());
            RectKt.inset(copy2, crossBoxInfo.getMarginDisplayPixel());
            float actualScale = (copy.top - copy2.top) / crossBoxInfo.getActualScale();
            float actualScale2 = (copy.left - copy2.left) / crossBoxInfo.getActualScale();
            Matrix matrix = new Matrix();
            matrix.postTranslate(actualScale2, actualScale);
            return matrix;
        }

        @NotNull
        public final Matrix getRotatedMatrix(@NotNull BoxInfo boxInfo) {
            Intrinsics.checkNotNullParameter(boxInfo, "<this>");
            BoxInfo copy = boxInfo.copy();
            rotate(copy, -boxInfo.getRotation());
            return rotate(copy, boxInfo.getRotation());
        }

        public final float getTargetRotation(@NotNull BoxInfo boxInfo, float f) {
            Intrinsics.checkNotNullParameter(boxInfo, "<this>");
            float f2 = 360;
            return ((boxInfo.getRotation() + f2) + f) % f2;
        }

        @NotNull
        public final Matrix getUnRotatedMatrix(@NotNull BoxInfo boxInfo) {
            Intrinsics.checkNotNullParameter(boxInfo, "<this>");
            return rotate(boxInfo.copy(), -boxInfo.getRotation());
        }

        @NotNull
        public final Matrix rotate(@NotNull BoxInfo boxInfo, float f) {
            Intrinsics.checkNotNullParameter(boxInfo, "<this>");
            float targetRotation = getTargetRotation(boxInfo, f);
            RectF copy = RectFKt.copy(boxInfo.getOriginRectF());
            com.onyx.android.sdk.base.lite.extension.RectFKt.rotate$default(copy, f, 0.0f, 0.0f, 6, null);
            float f2 = copy.left;
            float f3 = copy.top;
            Matrix matrix = new Matrix();
            matrix.postRotate(f, copy.centerX(), copy.centerY());
            matrix.postTranslate(-f2, -f3);
            boxInfo.setOriginRectF(RectFKt.offsetToOrigin(RectFKt.copy(copy)));
            RectF copy2 = RectFKt.copy(boxInfo.getOriginRectFWithMargin());
            matrix.mapRect(copy2);
            boxInfo.setOriginRectFWithMargin(copy2);
            RectF copy3 = RectFKt.copy(boxInfo.getOriginRectFWithMargin());
            RectFKt.scaleRect(copy3, boxInfo.getActualScale());
            boxInfo.setBox(copy3);
            boxInfo.setRotation(targetRotation);
            BoxInfo noteInfo = boxInfo.getNoteInfo();
            if (noteInfo != null) {
                noteInfo.setRotation(targetRotation);
                noteInfo.setOriginRectF(RectFKt.copy(boxInfo.getOriginRectF()));
                noteInfo.setBox(RectFKt.copy(boxInfo.getBox()));
            }
            BoxInfo contentInfo = boxInfo.getContentInfo();
            if (contentInfo != null) {
                contentInfo.setRotation(targetRotation);
                contentInfo.setOriginRectF(com.onyx.android.sdk.base.lite.extension.RectFKt.rotatedSize$default(contentInfo.getOriginRectF(), f, 0.0f, 0.0f, 6, null));
                RectF copy4 = RectFKt.copy(contentInfo.getOriginRectF());
                RectFKt.scaleRect(copy4, contentInfo.getActualScale());
                contentInfo.setBox(copy4);
            }
            return matrix;
        }

        public final void updateVirtualPageSize(@NotNull BoxInfo boxInfo, @NotNull RectF virtualPageSize) {
            Intrinsics.checkNotNullParameter(boxInfo, "<this>");
            Intrinsics.checkNotNullParameter(virtualPageSize, "virtualPageSize");
            RectF rectFWithMargin = boxInfo.getMarginPixel().hasMargin() ? boxInfo.getMarginPercent().toRectFWithMargin(virtualPageSize) : virtualPageSize;
            boxInfo.setOriginRectF(RectFKt.copy(virtualPageSize));
            boxInfo.setOriginRectFWithMargin(RectFKt.copy(rectFWithMargin));
            boxInfo.setBox(RectFKt.copy(rectFWithMargin));
        }

        private Companion() {
        }
    }

    public BoxInfo() {
        this.id = "0";
        this.box = new RectF();
        this.originRectF = new RectF();
        this.originRectFWithMargin = new RectF();
        this.visibleRect = new RectF();
        this.actualScale = 1.0f;
        this.scaleMode = 1;
        this.align = 2;
        this.marginStyle = new MarginStyle();
    }

    public static /* synthetic */ int horCheck$default(BoxInfo boxInfo, BoxInfo boxInfo2, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        return boxInfo.horCheck(boxInfo2, f);
    }

    public static /* synthetic */ void scaleToViewport$default(BoxInfo boxInfo, RectF rectF, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        boxInfo.scaleToViewport(rectF, z);
    }

    public static /* synthetic */ void scaleToViewportWithAspectScaleCheck$default(BoxInfo boxInfo, RectF rectF, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        boxInfo.scaleToViewportWithAspectScaleCheck(rectF, z);
    }

    private final void updateChildDisplayRectF(BoxInfo child) {
        MarginPixel marginPixel = getMarginPixel();
        if (Intrinsics.areEqual(this.originRectF, child.originRectF)) {
            child.actualScale = this.actualScale;
            RectF copy = RectFKt.copy(child.originRectF);
            copy.offset(((RectF) marginPixel).left, ((RectF) marginPixel).top);
            RectFKt.scaleRect(copy, this.actualScale);
            RectF rectF = this.box;
            copy.offset(rectF.left, rectF.top);
            child.box = copy;
            return;
        }
        RectF rectF2 = new RectF();
        float f = ((RectF) marginPixel).left;
        float f2 = this.actualScale;
        float f3 = f * f2;
        rectF2.left = f3;
        rectF2.top = ((RectF) marginPixel).top * f2;
        rectF2.right = f3 + (this.originRectF.width() * this.actualScale);
        rectF2.bottom = rectF2.top + (this.originRectF.height() * this.actualScale);
        RectF copy2 = RectFKt.copy(child.originRectF);
        float scaleToPage = RectFKt.scaleToPage(copy2, rectF2);
        RectF rectF3 = this.box;
        copy2.offset(rectF3.left, rectF3.top);
        child.actualScale = scaleToPage;
        child.box = copy2;
    }

    private final void updateChildInfoVisibleRect(BoxInfo child) {
        MarginPixel marginPixel = getMarginPixel();
        RectF rectF = new RectF();
        RectF rectF2 = this.visibleRect;
        float f = rectF2.left;
        float f2 = ((RectF) marginPixel).left;
        float f3 = this.actualScale;
        float f4 = f + (f2 * f3);
        rectF.left = f4;
        rectF.top = rectF2.top + (((RectF) marginPixel).top * f3);
        rectF.right = f4 + (this.originRectF.width() * this.actualScale);
        rectF.bottom = rectF.top + (this.originRectF.height() * this.actualScale);
        RectF copy = RectFKt.copy(child.box);
        RectFKt.centerAlign(copy, rectF);
        child.visibleRect = copy;
    }

    public static /* synthetic */ int verCheck$default(BoxInfo boxInfo, BoxInfo boxInfo2, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        return boxInfo.verCheck(boxInfo2, f);
    }

    public final float bottom() {
        return this.box.bottom;
    }

    public final float centerX() {
        return this.box.centerX();
    }

    public final float centerY() {
        return this.box.centerY();
    }

    public final int columnIndex() {
        BoxCellInfo boxCellInfo;
        BoxExtraInfo boxExtraInfo = this.extraInfo;
        if (boxExtraInfo == null || (boxCellInfo = boxExtraInfo.getBoxCellInfo()) == null) {
            return 0;
        }
        return boxCellInfo.getColumnIndex();
    }

    @NotNull
    public final BoxInfo copy() {
        BoxInfo boxInfo = new BoxInfo();
        boxInfo.id = this.id;
        boxInfo.box = new RectF(this.box);
        BoxInfo boxInfo2 = this.noteInfo;
        boxInfo.noteInfo = boxInfo2 != null ? boxInfo2.copy() : null;
        BoxInfo boxInfo3 = this.contentInfo;
        boxInfo.contentInfo = boxInfo3 != null ? boxInfo3.copy() : null;
        boxInfo.originRectF = new RectF(this.originRectF);
        boxInfo.originRectFWithMargin = new RectF(this.originRectFWithMargin);
        boxInfo.visibleRect = new RectF(this.visibleRect);
        boxInfo.actualScale = this.actualScale;
        boxInfo.scaleMode = this.scaleMode;
        boxInfo.align = this.align;
        boxInfo.marginStyle = this.marginStyle.copy();
        boxInfo.extraInfo = BoxExtraInfoKt.copyOrNull(this.extraInfo);
        boxInfo.rotation = this.rotation;
        return boxInfo;
    }

    public final float displayScale(@NotNull RectF viewport) {
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        return this.actualScale / getActualScaleOfScaleToPageWithAspectScaleCheck(viewport);
    }

    public final float getActualScale() {
        return this.actualScale;
    }

    public final float getActualScaleOfScaleToPageWithAspectScaleCheck(@NotNull RectF viewport) {
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        RectF copy = RectFKt.copy(viewport);
        copy.offsetTo(0.0f, 0.0f);
        return RectFKt.scaleToPageWithAspectScaleCheck$default(new RectF(this.originRectFWithMargin), copy, 0.0f, 2, null);
    }

    public final int getAlign() {
        return this.align;
    }

    @NotNull
    public final RectF getBox() {
        return this.box;
    }

    @NotNull
    public final BoxCellInfo getCellInfoCopy() {
        BoxCellInfo boxCellInfo;
        BoxCellInfo copy$default;
        BoxExtraInfo boxExtraInfo = this.extraInfo;
        return (boxExtraInfo == null || (boxCellInfo = boxExtraInfo.getBoxCellInfo()) == null || (copy$default = BoxCellInfo.copy$default(boxCellInfo, 0, 0, 3, null)) == null) ? new BoxCellInfo(0, 0, 3, null) : copy$default;
    }

    @NotNull
    public final String getCellKey() {
        BoxCellInfo.Companion companion = BoxCellInfo.INSTANCE;
        BoxExtraInfo boxExtraInfo = this.extraInfo;
        return companion.key(boxExtraInfo != null ? boxExtraInfo.getBoxCellInfo() : null);
    }

    @NotNull
    public final RectF getCellOriginRectFCopy() {
        float width = this.originRectF.width() * columnIndex();
        float height = this.originRectF.height() * rowIndex();
        RectF copy = RectFKt.copy(this.originRectF);
        copy.offsetTo(width, height);
        return copy;
    }

    @Nullable
    public final BoxInfo getContentInfo() {
        return this.contentInfo;
    }

    @NotNull
    public final String getDebugString() {
        return "id = " + this.id + ", scale = " + this.actualScale + ", originRectWithMargin = " + this.originRectFWithMargin + ", box = " + this.box;
    }

    @Nullable
    public final BoxExtraInfo getExtraInfo() {
        return this.extraInfo;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final RectF getIntersectRectF(@NotNull BoxInfo anotherBox) {
        Intrinsics.checkNotNullParameter(anotherBox, "anotherBox");
        RectF copy = RectFKt.copy(this.box);
        copy.intersect(anotherBox.box);
        return copy;
    }

    @NotNull
    public final MarginPixel getMarginDisplayPixel() {
        MarginPixel marginPixel = getMarginPixel();
        marginPixel.scale(this.actualScale);
        return marginPixel;
    }

    @NotNull
    public final MarginPercent getMarginPercent() {
        return getMarginPixel().toMarginPercent(this.originRectF);
    }

    @NotNull
    public final MarginPixel getMarginPixel() {
        MarginPixel marginPixel = new MarginPixel();
        RectF rectF = this.originRectF;
        float f = rectF.left;
        RectF rectF2 = this.originRectFWithMargin;
        ((RectF) marginPixel).left = f - rectF2.left;
        ((RectF) marginPixel).top = rectF.top - rectF2.top;
        ((RectF) marginPixel).right = rectF2.right - rectF.right;
        ((RectF) marginPixel).bottom = rectF2.bottom - rectF.bottom;
        return marginPixel;
    }

    @NotNull
    public final MarginStyle getMarginStyle() {
        return this.marginStyle;
    }

    @Nullable
    public final BoxInfo getNoteInfo() {
        return this.noteInfo;
    }

    @NotNull
    public final RectF getOriginRectF() {
        return this.originRectF;
    }

    @NotNull
    public final RectF getOriginRectFWithMargin() {
        return this.originRectFWithMargin;
    }

    public final float getRotation() {
        return this.rotation;
    }

    public final int getScaleMode() {
        return this.scaleMode;
    }

    @NotNull
    public final RectF getScaledRectWithMargin() {
        if (this.originRectFWithMargin.isEmpty()) {
            return new RectF();
        }
        RectF copy = RectFKt.copy(this.originRectFWithMargin);
        RectFKt.scaleRect(copy, this.actualScale);
        return copy;
    }

    @NotNull
    public final String getVisibleDebugString() {
        return "id = " + this.id + ", visibleRect = " + this.visibleRect + ", scale = " + this.actualScale;
    }

    @NotNull
    public final RectF getVisibleRect() {
        return this.visibleRect;
    }

    public final boolean hasMargin() {
        return !Intrinsics.areEqual(this.originRectF, this.originRectFWithMargin);
    }

    public final boolean hasSameVisibility(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        if (Intrinsics.areEqual(this.id, boxInfo.id)) {
            return ((this.actualScale > boxInfo.actualScale ? 1 : (this.actualScale == boxInfo.actualScale ? 0 : -1)) == 0) && Intrinsics.areEqual(this.visibleRect, boxInfo.visibleRect);
        }
        return false;
    }

    public final float height() {
        return this.box.height();
    }

    public final int horCheck(@NotNull BoxInfo anotherBox, float gap) {
        Intrinsics.checkNotNullParameter(anotherBox, "anotherBox");
        if (RectFKt.hasHorizontalOverlapWith(this.box, anotherBox.box, gap)) {
            return 0;
        }
        return left() > anotherBox.right() ? 1 : -1;
    }

    public final boolean intersect(@NotNull BoxInfo anotherBox) {
        Intrinsics.checkNotNullParameter(anotherBox, "anotherBox");
        return RectF.intersects(this.box, anotherBox.box);
    }

    public final boolean isNaNBox() {
        return Float.isNaN(this.actualScale) || RectKt.isNaN(this.box);
    }

    public final boolean isVisibleIntersectHeight(@NotNull BoxInfo anotherBox) {
        Intrinsics.checkNotNullParameter(anotherBox, "anotherBox");
        RectF copy = RectFKt.copy(this.box);
        copy.intersect(anotherBox.box);
        return copy.height() >= 1.0f;
    }

    public final boolean isVisibleIntersectWidth(@NotNull BoxInfo anotherBox) {
        Intrinsics.checkNotNullParameter(anotherBox, "anotherBox");
        RectF copy = RectFKt.copy(this.box);
        copy.intersect(anotherBox.box);
        return copy.width() >= 1.0f;
    }

    public final float left() {
        return this.box.left;
    }

    public final void logNaNTrace() {
        LogUtils.wTag(AnyKt.toSimpleNameString(this), new Throwable("boxInfo, logNaNTrace"));
    }

    public final void moveTo(float x, float y) {
        this.box.offsetTo(x, y);
    }

    public final void moveToBottom(float bottom) {
        this.box.set(left(), bottom - height(), right(), bottom);
    }

    public final void moveToRight(float right) {
        this.box.set(right - width(), top(), right, bottom());
    }

    public final void offset(float dx, float dy) {
        if (Float.isNaN(dx) || Float.isNaN(dy)) {
            logNaNTrace();
        } else {
            this.box.offset(dx, dy);
        }
    }

    public final void offsetTo(float dx, float dy) {
        if (Float.isNaN(dx) || Float.isNaN(dy)) {
            logNaNTrace();
        } else {
            this.box.offsetTo(dx, dy);
        }
    }

    public final void offsetToOrigin() {
        offsetTo(0.0f, 0.0f);
        updateChildrenDisplayRectF();
    }

    public final float right() {
        return this.box.right;
    }

    public final int rowIndex() {
        BoxCellInfo boxCellInfo;
        BoxExtraInfo boxExtraInfo = this.extraInfo;
        if (boxExtraInfo == null || (boxCellInfo = boxExtraInfo.getBoxCellInfo()) == null) {
            return 0;
        }
        return boxCellInfo.getRowIndex();
    }

    public final void scaleToViewport(@NotNull RectF viewport, boolean alignOrigin) {
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        if (this.originRectFWithMargin.isEmpty()) {
            return;
        }
        RectF rectF = new RectF(this.originRectFWithMargin);
        this.actualScale = RectFKt.scaleToPage(rectF, viewport);
        if (alignOrigin) {
            RectFKt.alignOrigin(rectF, viewport);
        }
        this.box = rectF;
        updateChildrenDisplayRectF();
    }

    public final void scaleToViewportWidth(@NotNull RectF viewport) {
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        if (this.originRectFWithMargin.isEmpty()) {
            return;
        }
        RectF rectF = new RectF(this.originRectFWithMargin);
        this.actualScale = RectFKt.scaleToWidth(rectF, viewport);
        RectFKt.alignOrigin(rectF, viewport);
        this.box = rectF;
        updateChildrenDisplayRectF();
    }

    public final void scaleToViewportWithAspectScaleCheck(@NotNull RectF viewport, boolean alignOrigin) {
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        if (this.originRectFWithMargin.isEmpty()) {
            return;
        }
        RectF rectF = new RectF(this.originRectFWithMargin);
        this.actualScale = RectFKt.scaleToPageWithAspectScaleCheck$default(rectF, viewport, 0.0f, 2, null);
        if (alignOrigin) {
            RectFKt.alignOrigin(rectF, viewport);
        }
        this.box = rectF;
        updateChildrenDisplayRectF();
    }

    public final void setActualScale(float f) {
        this.actualScale = f;
    }

    public final void setAlign(int i) {
        this.align = i;
    }

    public final void setBox(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.box = rectF;
    }

    public final void setContentInfo(@Nullable BoxInfo boxInfo) {
        this.contentInfo = boxInfo;
    }

    public final void setExtraInfo(@Nullable BoxExtraInfo boxExtraInfo) {
        this.extraInfo = boxExtraInfo;
    }

    public final void setId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final void setMarginStyle(@NotNull MarginStyle marginStyle) {
        Intrinsics.checkNotNullParameter(marginStyle, "<set-?>");
        this.marginStyle = marginStyle;
    }

    public final void setNoteInfo(@Nullable BoxInfo boxInfo) {
        this.noteInfo = boxInfo;
    }

    public final void setOriginRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.originRectF = rectF;
    }

    public final void setOriginRectFWithMargin(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.originRectFWithMargin = rectF;
    }

    public final void setRotation(float f) {
        this.rotation = f;
    }

    public final void setScale(float scale) {
        if (!((Float.isInfinite(scale) || Float.isNaN(scale)) ? false : true)) {
            Debug.INSTANCE.m32062w(AnyKt.toSimpleNameString(this), "scale exception, " + scale, new Object[0]);
            return;
        }
        if (this.originRectFWithMargin.isEmpty()) {
            return;
        }
        this.actualScale = scale;
        RectF rectF = new RectF(this.originRectFWithMargin);
        RectFKt.scaleRect(rectF, scale);
        rectF.offsetTo(0.0f, 0.0f);
        this.box = rectF;
        updateChildrenDisplayRectF();
    }

    public final void setScaleMode(int i) {
        this.scaleMode = i;
    }

    public final void setVisibleRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.visibleRect = rectF;
    }

    @NotNull
    public final Size size() {
        return new Size((int) width(), (int) height());
    }

    @NotNull
    public final RectF toZeroOriginRoundRectF() {
        return RectKt.toZeroOriginRoundRectF(this.box);
    }

    public final float top() {
        return this.box.top;
    }

    @NotNull
    public final BoxInfo translate(@NotNull BoxInfo origin) {
        Intrinsics.checkNotNullParameter(origin, "origin");
        float left = left() - origin.left();
        float pVar = top() - origin.top();
        this.box.set(left, pVar, width() + left, height() + pVar);
        return this;
    }

    public final void updateChildrenDisplayRectF() {
        BoxInfo boxInfo = this.contentInfo;
        if (boxInfo != null) {
            updateChildDisplayRectF(boxInfo);
        }
        BoxInfo boxInfo2 = this.noteInfo;
        if (boxInfo2 != null) {
            updateChildDisplayRectF(boxInfo2);
        }
    }

    public final void updateVisibleRect(@NotNull RectF viewport) {
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        this.visibleRect.set(this.box);
        RectFKt.translateCoordinates(this.visibleRect, viewport);
        BoxInfo boxInfo = this.contentInfo;
        if (boxInfo != null) {
            updateChildInfoVisibleRect(boxInfo);
        }
        BoxInfo boxInfo2 = this.noteInfo;
        if (boxInfo2 != null) {
            updateChildInfoVisibleRect(boxInfo2);
        }
        BoxExtraInfo boxExtraInfo = this.extraInfo;
        if (boxExtraInfo != null) {
            boxExtraInfo.updateVisibleTimeStamp();
        }
    }

    public final int verCheck(@NotNull BoxInfo anotherBox, float gap) {
        Intrinsics.checkNotNullParameter(anotherBox, "anotherBox");
        return RectFKt.verCheck(this.box, anotherBox.box, gap);
    }

    public final float width() {
        return this.box.width();
    }

    public BoxInfo(@NotNull String id, @NotNull RectF box) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(box, "box");
        this.id = "0";
        this.box = new RectF();
        this.originRectF = new RectF();
        this.originRectFWithMargin = new RectF();
        this.visibleRect = new RectF();
        this.actualScale = 1.0f;
        this.scaleMode = 1;
        this.align = 2;
        this.marginStyle = new MarginStyle();
        this.id = id;
        this.box.set(box);
    }

    public BoxInfo(@NotNull BoxInfo srcBox) {
        Intrinsics.checkNotNullParameter(srcBox, "srcBox");
        this.id = "0";
        this.box = new RectF();
        this.originRectF = new RectF();
        this.originRectFWithMargin = new RectF();
        this.visibleRect = new RectF();
        this.actualScale = 1.0f;
        this.scaleMode = 1;
        this.align = 2;
        this.marginStyle = new MarginStyle();
        this.id = srcBox.id;
        this.box.set(srcBox.box);
    }

    public BoxInfo(@NotNull String id, float f, float f2, float f3, float f4) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.id = "0";
        this.box = new RectF();
        this.originRectF = new RectF();
        this.originRectFWithMargin = new RectF();
        this.visibleRect = new RectF();
        this.actualScale = 1.0f;
        this.scaleMode = 1;
        this.align = 2;
        this.marginStyle = new MarginStyle();
        this.id = id;
        this.box.set(f, f2, f3, f4);
    }
}
