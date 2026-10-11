package com.onyx.android.sdk.reader.api;

import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\bV\b\u0086\b\u0018\u00002\u00020\u0001B\u009f\u0001\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001a\u001a\u00020\b\u0012\b\b\u0002\u0010\u001b\u001a\u00020\b\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0002\u0012\b\b\u0002\u0010 \u001a\u00020\u0002\u0012\b\b\u0002\u0010!\u001a\u00020\u0011\u0012\b\b\u0002\u0010\"\u001a\u00020\u0004\u0012\b\b\u0002\u0010#\u001a\u00020\u0004\u0012\b\b\u0002\u0010$\u001a\u00020\u0004¢\u0006\u0004\be\u0010fJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0004HÆ\u0003J\t\u0010\t\u001a\u00020\bHÆ\u0003J\t\u0010\n\u001a\u00020\bHÆ\u0003J\t\u0010\u000b\u001a\u00020\u0004HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\fHÆ\u0003J\t\u0010\u000e\u001a\u00020\u0002HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0011HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0004HÆ\u0003J¡\u0001\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0016\u001a\u00020\u00022\b\b\u0002\u0010\u0017\u001a\u00020\u00042\b\b\u0002\u0010\u0018\u001a\u00020\u00042\b\b\u0002\u0010\u0019\u001a\u00020\u00042\b\b\u0002\u0010\u001a\u001a\u00020\b2\b\b\u0002\u0010\u001b\u001a\u00020\b2\b\b\u0002\u0010\u001c\u001a\u00020\u00042\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\u001e\u001a\u00020\u00022\b\b\u0002\u0010\u001f\u001a\u00020\u00022\b\b\u0002\u0010 \u001a\u00020\u00022\b\b\u0002\u0010!\u001a\u00020\u00112\b\b\u0002\u0010\"\u001a\u00020\u00042\b\b\u0002\u0010#\u001a\u00020\u00042\b\b\u0002\u0010$\u001a\u00020\u0004HÆ\u0001J\t\u0010&\u001a\u00020\u0004HÖ\u0001J\t\u0010'\u001a\u00020\u0002HÖ\u0001J\u0013\u0010)\u001a\u00020\u00112\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u0010\u0017\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u0010\u0018\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u00101\u001a\u0004\b7\u00103\"\u0004\b8\u00105R\"\u0010\u0019\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u00101\u001a\u0004\b:\u00103\"\u0004\b;\u00105R\"\u0010\u001a\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\"\u0010\u001b\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010=\u001a\u0004\bC\u0010?\"\u0004\bD\u0010AR\"\u0010\u001c\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bE\u00101\u001a\u0004\bF\u00103\"\u0004\bG\u00105R$\u0010\u001d\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\"\u0010\u001e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bN\u0010+\u001a\u0004\bO\u0010-\"\u0004\bP\u0010/R\"\u0010\u001f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bQ\u0010+\u001a\u0004\bR\u0010-\"\u0004\bS\u0010/R\"\u0010 \u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010+\u001a\u0004\bU\u0010-\"\u0004\bV\u0010/R\"\u0010!\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bW\u0010X\u001a\u0004\b!\u0010Y\"\u0004\bZ\u0010[R\"\u0010\"\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\\\u00101\u001a\u0004\b]\u00103\"\u0004\b^\u00105R\"\u0010#\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b_\u00101\u001a\u0004\b`\u00103\"\u0004\ba\u00105R\"\u0010$\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bb\u00101\u001a\u0004\bc\u00103\"\u0004\bd\u00105¨\u0006g"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderHighlightData;", "", "", "component1", "", "component2", "component3", "component4", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "component5", "component6", "component7", "", "component8", "component9", "component10", "component11", "", "component12", "component13", "component14", "component15", "page", "highlightId", "objId", NotificationCompat.CarExtender.f4973i, "startPosition", "endPosition", "note", "quadPoints", "style", "color", "linkType", "isVertical", "linkDest", "extraAttr", "customAttr", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "I", "getPage", "()I", "setPage", "(I)V", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getHighlightId", "()Ljava/lang/String;", "setHighlightId", "(Ljava/lang/String;)V", "c", "getObjId", "setObjId", "d", "getAuthor", "setAuthor", "e", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getStartPosition", "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "setStartPosition", "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V", C6997f.f39671c, "getEndPosition", "setEndPosition", C6998g.f39679a, "getNote", "setNote", C6999h.f39688c, "[F", "getQuadPoints", "()[F", "setQuadPoints", "([F)V", "i", "getStyle", "setStyle", "j", "getColor", "setColor", C4921e.f26537n, "getLinkType", "setLinkType", "l", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setVertical", "(Z)V", "m", "getLinkDest", "setLinkDest", GoogleApiAvailabilityLight.f29016b, "getExtraAttr", "setExtraAttr", C4921e.f26528e, "getCustomAttr", "setCustomAttr", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;[FIIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ReaderHighlightData {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public int page;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public String highlightId;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public String objId;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public String author;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @NotNull
    public ReaderPosition startPosition;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    @NotNull
    public ReaderPosition endPosition;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    @NotNull
    public String note;

    /* renamed from: h, reason: from kotlin metadata and from toString */
    @Nullable
    public float[] quadPoints;

    /* renamed from: i, reason: from kotlin metadata and from toString */
    public int style;

    /* renamed from: j, reason: from kotlin metadata and from toString */
    public int color;

    /* renamed from: k, reason: from kotlin metadata and from toString */
    public int linkType;

    /* renamed from: l, reason: from kotlin metadata and from toString */
    public boolean isVertical;

    /* renamed from: m, reason: from kotlin metadata and from toString */
    @NotNull
    public String linkDest;

    /* renamed from: n, reason: from kotlin metadata and from toString */
    @NotNull
    public String extraAttr;

    /* renamed from: o, reason: from kotlin metadata and from toString */
    @NotNull
    public String customAttr;

    public ReaderHighlightData() {
        this(0, null, null, null, null, null, null, null, 0, 0, 0, false, null, null, null, 32767, null);
    }

    /* renamed from: component1, reason: from getter */
    public final int getPage() {
        return this.page;
    }

    /* renamed from: component10, reason: from getter */
    public final int getColor() {
        return this.color;
    }

    /* renamed from: component11, reason: from getter */
    public final int getLinkType() {
        return this.linkType;
    }

    /* renamed from: component12, reason: from getter */
    public final boolean getIsVertical() {
        return this.isVertical;
    }

    @NotNull
    /* renamed from: component13, reason: from getter */
    public final String getLinkDest() {
        return this.linkDest;
    }

    @NotNull
    /* renamed from: component14, reason: from getter */
    public final String getExtraAttr() {
        return this.extraAttr;
    }

    @NotNull
    /* renamed from: component15, reason: from getter */
    public final String getCustomAttr() {
        return this.customAttr;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getHighlightId() {
        return this.highlightId;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getObjId() {
        return this.objId;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getAuthor() {
        return this.author;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final ReaderPosition getStartPosition() {
        return this.startPosition;
    }

    @NotNull
    /* renamed from: component6, reason: from getter */
    public final ReaderPosition getEndPosition() {
        return this.endPosition;
    }

    @NotNull
    /* renamed from: component7, reason: from getter */
    public final String getNote() {
        return this.note;
    }

    @Nullable
    /* renamed from: component8, reason: from getter */
    public final float[] getQuadPoints() {
        return this.quadPoints;
    }

    /* renamed from: component9, reason: from getter */
    public final int getStyle() {
        return this.style;
    }

    @NotNull
    public final ReaderHighlightData copy(int page, @NotNull String highlightId, @NotNull String objId, @NotNull String author, @NotNull ReaderPosition startPosition, @NotNull ReaderPosition endPosition, @NotNull String note, @Nullable float[] quadPoints, int style, int color, int linkType, boolean isVertical, @NotNull String linkDest, @NotNull String extraAttr, @NotNull String customAttr) {
        Intrinsics.checkNotNullParameter(highlightId, "highlightId");
        Intrinsics.checkNotNullParameter(objId, "objId");
        Intrinsics.checkNotNullParameter(author, "author");
        Intrinsics.checkNotNullParameter(startPosition, "startPosition");
        Intrinsics.checkNotNullParameter(endPosition, "endPosition");
        Intrinsics.checkNotNullParameter(note, "note");
        Intrinsics.checkNotNullParameter(linkDest, "linkDest");
        Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
        Intrinsics.checkNotNullParameter(customAttr, "customAttr");
        return new ReaderHighlightData(page, highlightId, objId, author, startPosition, endPosition, note, quadPoints, style, color, linkType, isVertical, linkDest, extraAttr, customAttr);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReaderHighlightData)) {
            return false;
        }
        ReaderHighlightData readerHighlightData = (ReaderHighlightData) other;
        return this.page == readerHighlightData.page && Intrinsics.areEqual(this.highlightId, readerHighlightData.highlightId) && Intrinsics.areEqual(this.objId, readerHighlightData.objId) && Intrinsics.areEqual(this.author, readerHighlightData.author) && Intrinsics.areEqual(this.startPosition, readerHighlightData.startPosition) && Intrinsics.areEqual(this.endPosition, readerHighlightData.endPosition) && Intrinsics.areEqual(this.note, readerHighlightData.note) && Intrinsics.areEqual(this.quadPoints, readerHighlightData.quadPoints) && this.style == readerHighlightData.style && this.color == readerHighlightData.color && this.linkType == readerHighlightData.linkType && this.isVertical == readerHighlightData.isVertical && Intrinsics.areEqual(this.linkDest, readerHighlightData.linkDest) && Intrinsics.areEqual(this.extraAttr, readerHighlightData.extraAttr) && Intrinsics.areEqual(this.customAttr, readerHighlightData.customAttr);
    }

    @NotNull
    public final String getAuthor() {
        return this.author;
    }

    public final int getColor() {
        return this.color;
    }

    @NotNull
    public final String getCustomAttr() {
        return this.customAttr;
    }

    @NotNull
    public final ReaderPosition getEndPosition() {
        return this.endPosition;
    }

    @NotNull
    public final String getExtraAttr() {
        return this.extraAttr;
    }

    @NotNull
    public final String getHighlightId() {
        return this.highlightId;
    }

    @NotNull
    public final String getLinkDest() {
        return this.linkDest;
    }

    public final int getLinkType() {
        return this.linkType;
    }

    @NotNull
    public final String getNote() {
        return this.note;
    }

    @NotNull
    public final String getObjId() {
        return this.objId;
    }

    public final int getPage() {
        return this.page;
    }

    @Nullable
    public final float[] getQuadPoints() {
        return this.quadPoints;
    }

    @NotNull
    public final ReaderPosition getStartPosition() {
        return this.startPosition;
    }

    public final int getStyle() {
        return this.style;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((((((Integer.hashCode(this.page) * 31) + this.highlightId.hashCode()) * 31) + this.objId.hashCode()) * 31) + this.author.hashCode()) * 31) + this.startPosition.hashCode()) * 31) + this.endPosition.hashCode()) * 31) + this.note.hashCode()) * 31;
        float[] fArr = this.quadPoints;
        int hashCode2 = (((((((hashCode + (fArr == null ? 0 : Arrays.hashCode(fArr))) * 31) + Integer.hashCode(this.style)) * 31) + Integer.hashCode(this.color)) * 31) + Integer.hashCode(this.linkType)) * 31;
        boolean z = this.isVertical;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((((((hashCode2 + i) * 31) + this.linkDest.hashCode()) * 31) + this.extraAttr.hashCode()) * 31) + this.customAttr.hashCode();
    }

    public final boolean isVertical() {
        return this.isVertical;
    }

    public final void setAuthor(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.author = str;
    }

    public final void setColor(int i) {
        this.color = i;
    }

    public final void setCustomAttr(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.customAttr = str;
    }

    public final void setEndPosition(@NotNull ReaderPosition readerPosition) {
        Intrinsics.checkNotNullParameter(readerPosition, "<set-?>");
        this.endPosition = readerPosition;
    }

    public final void setExtraAttr(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.extraAttr = str;
    }

    public final void setHighlightId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.highlightId = str;
    }

    public final void setLinkDest(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.linkDest = str;
    }

    public final void setLinkType(int i) {
        this.linkType = i;
    }

    public final void setNote(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.note = str;
    }

    public final void setObjId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.objId = str;
    }

    public final void setPage(int i) {
        this.page = i;
    }

    public final void setQuadPoints(@Nullable float[] fArr) {
        this.quadPoints = fArr;
    }

    public final void setStartPosition(@NotNull ReaderPosition readerPosition) {
        Intrinsics.checkNotNullParameter(readerPosition, "<set-?>");
        this.startPosition = readerPosition;
    }

    public final void setStyle(int i) {
        this.style = i;
    }

    public final void setVertical(boolean z) {
        this.isVertical = z;
    }

    @NotNull
    public String toString() {
        return "ReaderHighlightData(page=" + this.page + ", highlightId=" + this.highlightId + ", objId=" + this.objId + ", author=" + this.author + ", startPosition=" + this.startPosition + ", endPosition=" + this.endPosition + ", note=" + this.note + ", quadPoints=" + Arrays.toString(this.quadPoints) + ", style=" + this.style + ", color=" + this.color + ", linkType=" + this.linkType + ", isVertical=" + this.isVertical + ", linkDest=" + this.linkDest + ", extraAttr=" + this.extraAttr + ", customAttr=" + this.customAttr + ')';
    }

    public ReaderHighlightData(int i, @NotNull String highlightId, @NotNull String objId, @NotNull String author, @NotNull ReaderPosition startPosition, @NotNull ReaderPosition endPosition, @NotNull String note, @Nullable float[] fArr, int i2, int i3, int i4, boolean z, @NotNull String linkDest, @NotNull String extraAttr, @NotNull String customAttr) {
        Intrinsics.checkNotNullParameter(highlightId, "highlightId");
        Intrinsics.checkNotNullParameter(objId, "objId");
        Intrinsics.checkNotNullParameter(author, "author");
        Intrinsics.checkNotNullParameter(startPosition, "startPosition");
        Intrinsics.checkNotNullParameter(endPosition, "endPosition");
        Intrinsics.checkNotNullParameter(note, "note");
        Intrinsics.checkNotNullParameter(linkDest, "linkDest");
        Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
        Intrinsics.checkNotNullParameter(customAttr, "customAttr");
        this.page = i;
        this.highlightId = highlightId;
        this.objId = objId;
        this.author = author;
        this.startPosition = startPosition;
        this.endPosition = endPosition;
        this.note = note;
        this.quadPoints = fArr;
        this.style = i2;
        this.color = i3;
        this.linkType = i4;
        this.isVertical = z;
        this.linkDest = linkDest;
        this.extraAttr = extraAttr;
        this.customAttr = customAttr;
    }

    public /* synthetic */ ReaderHighlightData(int i, String str, String str2, String str3, ReaderPosition readerPosition, ReaderPosition readerPosition2, String str4, float[] fArr, int i2, int i3, int i4, boolean z, String str5, String str6, String str7, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this((i5 & 1) != 0 ? 0 : i, (i5 & 2) != 0 ? "" : str, (i5 & 4) != 0 ? "" : str2, (i5 & 8) != 0 ? "" : str3, (i5 & 16) != 0 ? ReaderPositionImpl.INSTANCE.getDummy() : readerPosition, (i5 & 32) != 0 ? ReaderPositionImpl.INSTANCE.getDummy() : readerPosition2, (i5 & 64) != 0 ? "" : str4, (i5 & 128) != 0 ? null : fArr, (i5 & 256) != 0 ? 0 : i2, (i5 & 512) != 0 ? 0 : i3, (i5 & 1024) != 0 ? 0 : i4, (i5 & 2048) == 0 ? z : false, (i5 & 4096) != 0 ? "" : str5, (i5 & 8192) != 0 ? "" : str6, (i5 & 16384) == 0 ? str7 : "");
    }
}
