package com.onyx.android.sdk.reader.api;

import android.graphics.RectF;
import android.graphics.Region;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0012\u0012\u000e\b\u0002\u0010&\u001a\b\u0012\u0004\u0012\u00020\n0\u001f¢\u0006\u0004\b-\u0010.R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0015\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u001a\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u001a\u0010\u0016\"\u0004\b\u001b\u0010\u0018R\"\u0010\u001d\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0014\u001a\u0004\b\u001d\u0010\u0016\"\u0004\b\u001e\u0010\u0018R(\u0010&\u001a\b\u0012\u0004\u0012\u00020\n0\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R(\u0010,\u001a\b\u0012\u0004\u0012\u00020(0'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010!\u001a\u0004\b*\u0010#\"\u0004\b+\u0010%¨\u0006/"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;", "", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "a", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getPagePosition", "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "setPagePosition", "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V", "pagePosition", "Landroid/graphics/RectF;", "b", "Landroid/graphics/RectF;", "getShapeRect", "()Landroid/graphics/RectF;", "setShapeRect", "(Landroid/graphics/RectF;)V", "shapeRect", "", "c", Constants.HASIDCALL_INDEX_SIG, "isLine", Constants.BOOLEAN_VALUE_SIG, "setLine", "(Z)V", "d", "isCover", "setCover", "e", "isScreenPage", "setScreenPage", "", C6997f.f39671c, "Ljava/util/List;", "getAllCharRectList", "()Ljava/util/List;", "setAllCharRectList", "(Ljava/util/List;)V", "allCharRectList", "", "Landroid/graphics/Region;", C6998g.f39679a, "getShapeRegionList", "setShapeRegionList", "shapeRegionList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Landroid/graphics/RectF;ZZZLjava/util/List;)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReaderSelectTextArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public ReaderPosition pagePosition;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public RectF shapeRect;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean isLine;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean isCover;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean isScreenPage;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public List<? extends RectF> allCharRectList;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public List<Region> shapeRegionList;

    public ReaderSelectTextArgs(@NotNull ReaderPosition pagePosition, @NotNull RectF shapeRect, boolean z, boolean z2, boolean z3, @NotNull List<? extends RectF> allCharRectList) {
        Intrinsics.checkNotNullParameter(pagePosition, "pagePosition");
        Intrinsics.checkNotNullParameter(shapeRect, "shapeRect");
        Intrinsics.checkNotNullParameter(allCharRectList, "allCharRectList");
        this.pagePosition = pagePosition;
        this.shapeRect = shapeRect;
        this.isLine = z;
        this.isCover = z2;
        this.isScreenPage = z3;
        this.allCharRectList = allCharRectList;
        this.shapeRegionList = new ArrayList();
    }

    @NotNull
    public final List<RectF> getAllCharRectList() {
        return this.allCharRectList;
    }

    @NotNull
    public final ReaderPosition getPagePosition() {
        return this.pagePosition;
    }

    @NotNull
    public final RectF getShapeRect() {
        return this.shapeRect;
    }

    @NotNull
    public final List<Region> getShapeRegionList() {
        return this.shapeRegionList;
    }

    /* renamed from: isCover, reason: from getter */
    public final boolean getIsCover() {
        return this.isCover;
    }

    /* renamed from: isLine, reason: from getter */
    public final boolean getIsLine() {
        return this.isLine;
    }

    /* renamed from: isScreenPage, reason: from getter */
    public final boolean getIsScreenPage() {
        return this.isScreenPage;
    }

    public final void setAllCharRectList(@NotNull List<? extends RectF> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.allCharRectList = list;
    }

    public final void setCover(boolean z) {
        this.isCover = z;
    }

    public final void setLine(boolean z) {
        this.isLine = z;
    }

    public final void setPagePosition(@NotNull ReaderPosition readerPosition) {
        Intrinsics.checkNotNullParameter(readerPosition, "<set-?>");
        this.pagePosition = readerPosition;
    }

    public final void setScreenPage(boolean z) {
        this.isScreenPage = z;
    }

    public final void setShapeRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.shapeRect = rectF;
    }

    public final void setShapeRegionList(@NotNull List<Region> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapeRegionList = list;
    }

    public /* synthetic */ ReaderSelectTextArgs(ReaderPosition readerPosition, RectF rectF, boolean z, boolean z2, boolean z3, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(readerPosition, rectF, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2, (i & 16) != 0 ? false : z3, (i & 32) != 0 ? new ArrayList() : list);
    }
}
