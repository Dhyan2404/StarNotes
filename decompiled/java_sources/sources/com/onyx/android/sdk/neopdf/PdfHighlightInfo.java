package com.onyx.android.sdk.neopdf;

import androidx.core.app.NotificationCompat;
import androidx.core.graphics.drawable.IconCompat;
import com.onyx.android.sdk.base.utils.EqualsUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\u0014\n\u0002\b\f\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 =2\u00020\u0001:\u0001=B\u0005¢\u0006\u0002\u0010\u0002J\u0013\u00109\u001a\u00020\u001d2\b\u0010:\u001a\u0004\u0018\u00010;H\u0096\u0002J\b\u0010<\u001a\u00020\u0004H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001a\u0010$\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u000f\"\u0004\b&\u0010\u0011R\u001c\u0010'\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\bR\u001c\u0010*\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR\u001c\u0010-\u001a\u0004\u0018\u00010.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001c\u00103\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0006\"\u0004\b5\u0010\bR\u001a\u00106\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u000f\"\u0004\b8\u0010\u0011¨\u0006>"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;", "Ljava/io/Serializable;", "()V", NotificationCompat.CarExtender.f4973i, "", "getAuthor", "()Ljava/lang/String;", "setAuthor", "(Ljava/lang/String;)V", "blendMode", "getBlendMode", "setBlendMode", "color", "", "getColor", "()I", "setColor", "(I)V", "customAttr", "getCustomAttr", "setCustomAttr", "endPosition", "getEndPosition", "setEndPosition", "extraAttr", "getExtraAttr", "setExtraAttr", "highlightId", "isVertical", "", Constants.BOOLEAN_VALUE_SIG, "setVertical", "(Z)V", "linkDest", "getLinkDest", "setLinkDest", "linkType", "getLinkType", "setLinkType", "note", "getNote", "setNote", "objId", "getObjId", "setObjId", "quadPoints", "", "getQuadPoints", "()[F", "setQuadPoints", "([F)V", "startPosition", "getStartPosition", "setStartPosition", "style", "getStyle", "setStyle", "equals", IconCompat.f5434l, "", "toString", "Companion", "sdk-pdfdata_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PdfHighlightInfo implements Serializable {

    @NotNull
    public static final String BLEND_MODE_DEFAULT = "";

    @NotNull
    public static final String BLEND_MODE_DIFFERENCE = "Difference";

    @NotNull
    public static final String BLEND_MODE_MULTIPLY = "Multiply";

    @NotNull
    public static final String BLEND_MODE_NORMAL = "Normal";
    public static final int HIGHLIGHT_STYLE_COVER = 4;
    public static final int HIGHLIGHT_STYLE_DASH_UNDERLINE = 2;
    public static final int HIGHLIGHT_STYLE_HIGHLIGHT = 0;
    public static final int HIGHLIGHT_STYLE_NORMAL_DARKEN = 5;
    public static final int HIGHLIGHT_STYLE_SQUIGGLY = 3;
    public static final int HIGHLIGHT_STYLE_STRIKE_OUT = 6;
    public static final int HIGHLIGHT_STYLE_UNDERLINE = 1;
    public static final int LINK_TYPE_NONE = 0;
    public static final int LINK_TYPE_PAGE = 1;
    public static final int LINK_TYPE_URI = 2;

    @Nullable
    private String author;
    private int color;

    @Nullable
    private String customAttr;

    @Nullable
    private String endPosition;

    @Nullable
    private String extraAttr;

    @JvmField
    @Nullable
    public String highlightId;

    @Nullable
    private String linkDest;
    private int linkType;

    @Nullable
    private String note;

    @Nullable
    private String objId;

    @Nullable
    private float[] quadPoints;

    @Nullable
    private String startPosition;
    private int style;
    private boolean isVertical = true;

    @NotNull
    private String blendMode = "";

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(PdfHighlightInfo.class, obj.getClass())) {
            return false;
        }
        PdfHighlightInfo pdfHighlightInfo = (PdfHighlightInfo) obj;
        EqualsUtils equalsUtils = EqualsUtils.INSTANCE;
        return equalsUtils.equals(this.highlightId, pdfHighlightInfo.highlightId) && equalsUtils.equals(this.author, pdfHighlightInfo.author) && equalsUtils.equals(this.startPosition, pdfHighlightInfo.startPosition) && equalsUtils.equals(this.endPosition, pdfHighlightInfo.endPosition) && equalsUtils.equals(this.note, pdfHighlightInfo.note) && equalsUtils.equals(this.quadPoints, pdfHighlightInfo.quadPoints) && equalsUtils.equals(this.style, pdfHighlightInfo.style) && equalsUtils.equals(this.isVertical, pdfHighlightInfo.isVertical) && equalsUtils.equals(this.color, pdfHighlightInfo.color) && equalsUtils.equals(this.linkType, pdfHighlightInfo.linkType) && equalsUtils.equals(this.linkDest, pdfHighlightInfo.linkDest) && equalsUtils.equals(this.extraAttr, pdfHighlightInfo.extraAttr) && equalsUtils.equals(this.customAttr, pdfHighlightInfo.customAttr);
    }

    @Nullable
    public final String getAuthor() {
        return this.author;
    }

    @NotNull
    public final String getBlendMode() {
        return this.blendMode;
    }

    public final int getColor() {
        return this.color;
    }

    @Nullable
    public final String getCustomAttr() {
        return this.customAttr;
    }

    @Nullable
    public final String getEndPosition() {
        return this.endPosition;
    }

    @Nullable
    public final String getExtraAttr() {
        return this.extraAttr;
    }

    @Nullable
    public final String getLinkDest() {
        return this.linkDest;
    }

    public final int getLinkType() {
        return this.linkType;
    }

    @Nullable
    public final String getNote() {
        return this.note;
    }

    @Nullable
    public final String getObjId() {
        return this.objId;
    }

    @Nullable
    public final float[] getQuadPoints() {
        return this.quadPoints;
    }

    @Nullable
    public final String getStartPosition() {
        return this.startPosition;
    }

    public final int getStyle() {
        return this.style;
    }

    /* renamed from: isVertical, reason: from getter */
    public final boolean getIsVertical() {
        return this.isVertical;
    }

    public final void setAuthor(@Nullable String str) {
        this.author = str;
    }

    public final void setBlendMode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.blendMode = str;
    }

    public final void setColor(int i) {
        this.color = i;
    }

    public final void setCustomAttr(@Nullable String str) {
        this.customAttr = str;
    }

    public final void setEndPosition(@Nullable String str) {
        this.endPosition = str;
    }

    public final void setExtraAttr(@Nullable String str) {
        this.extraAttr = str;
    }

    public final void setLinkDest(@Nullable String str) {
        this.linkDest = str;
    }

    public final void setLinkType(int i) {
        this.linkType = i;
    }

    public final void setNote(@Nullable String str) {
        this.note = str;
    }

    public final void setObjId(@Nullable String str) {
        this.objId = str;
    }

    public final void setQuadPoints(@Nullable float[] fArr) {
        this.quadPoints = fArr;
    }

    public final void setStartPosition(@Nullable String str) {
        this.startPosition = str;
    }

    public final void setStyle(int i) {
        this.style = i;
    }

    public final void setVertical(boolean z) {
        this.isVertical = z;
    }

    @NotNull
    public String toString() {
        return "PdfHighlight{highlightId='" + this.highlightId + "', objId='" + this.objId + "', author='" + this.author + "', startPosition='" + this.startPosition + "', endPosition='" + this.endPosition + "', note='" + this.note + "', style=" + this.style + ", isVertical=" + this.isVertical + ", color=" + this.color + ", linkType=" + this.linkType + ", linkDest='" + this.linkDest + "', extraAttr='" + this.extraAttr + "', customAttr='" + this.customAttr + "'}";
    }
}
