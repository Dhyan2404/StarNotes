package com.onyx.android.sdk.reader.data;

import android.graphics.PointF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\u0006\u0010\u0018\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0019\u0012\b\b\u0002\u0010 \u001a\u00020\u0019\u0012\b\b\u0002\u0010(\u001a\u00020!\u0012\b\b\u0002\u0010,\u001a\u00020!¢\u0006\u0004\b-\u0010.R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0015\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0018\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0012\u001a\u0004\b\u0017\u0010\u0014R\u0017\u0010\u001e\u001a\u00020\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010 \u001a\u00020\u00198\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u001b\u001a\u0004\b \u0010\u001dR\"\u0010(\u001a\u00020!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010,\u001a\u00020!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010#\u001a\u0004\b*\u0010%\"\u0004\b+\u0010'¨\u0006/"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;", "", "", "a", Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "path", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "b", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageInfo", "Landroid/graphics/PointF;", "c", "Landroid/graphics/PointF;", "getStartPointFInDocument", "()Landroid/graphics/PointF;", "startPointFInDocument", "d", "getEndPointFInDocument", "endPointFInDocument", "", "e", Constants.HASIDCALL_INDEX_SIG, "getEnabledHitTestPadding", Constants.BOOLEAN_VALUE_SIG, "enabledHitTestPadding", C6997f.f39671c, "isSelectingWord", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", C6998g.f39679a, "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getStartPosition", "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "setStartPosition", "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V", "startPosition", C6999h.f39688c, "getEndPosition", "setEndPosition", "endPosition", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/PointF;Landroid/graphics/PointF;ZZLcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SelectOnScreenArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String path;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualPageInfo;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final PointF startPointFInDocument;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final PointF endPointFInDocument;

    /* renamed from: e, reason: from kotlin metadata */
    public final boolean enabledHitTestPadding;

    /* renamed from: f, reason: from kotlin metadata */
    public final boolean isSelectingWord;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public ReaderPosition startPosition;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public ReaderPosition endPosition;

    public SelectOnScreenArgs(@NotNull String path, @NotNull BoxInfo virtualPageInfo, @NotNull PointF startPointFInDocument, @NotNull PointF endPointFInDocument, boolean z, boolean z2, @NotNull ReaderPosition startPosition, @NotNull ReaderPosition endPosition) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(virtualPageInfo, "virtualPageInfo");
        Intrinsics.checkNotNullParameter(startPointFInDocument, "startPointFInDocument");
        Intrinsics.checkNotNullParameter(endPointFInDocument, "endPointFInDocument");
        Intrinsics.checkNotNullParameter(startPosition, "startPosition");
        Intrinsics.checkNotNullParameter(endPosition, "endPosition");
        this.path = path;
        this.virtualPageInfo = virtualPageInfo;
        this.startPointFInDocument = startPointFInDocument;
        this.endPointFInDocument = endPointFInDocument;
        this.enabledHitTestPadding = z;
        this.isSelectingWord = z2;
        this.startPosition = startPosition;
        this.endPosition = endPosition;
    }

    public final boolean getEnabledHitTestPadding() {
        return this.enabledHitTestPadding;
    }

    @NotNull
    public final PointF getEndPointFInDocument() {
        return this.endPointFInDocument;
    }

    @NotNull
    public final ReaderPosition getEndPosition() {
        return this.endPosition;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    @NotNull
    public final PointF getStartPointFInDocument() {
        return this.startPointFInDocument;
    }

    @NotNull
    public final ReaderPosition getStartPosition() {
        return this.startPosition;
    }

    @NotNull
    public final BoxInfo getVirtualPageInfo() {
        return this.virtualPageInfo;
    }

    /* renamed from: isSelectingWord, reason: from getter */
    public final boolean getIsSelectingWord() {
        return this.isSelectingWord;
    }

    public final void setEndPosition(@NotNull ReaderPosition readerPosition) {
        Intrinsics.checkNotNullParameter(readerPosition, "<set-?>");
        this.endPosition = readerPosition;
    }

    public final void setPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.path = str;
    }

    public final void setStartPosition(@NotNull ReaderPosition readerPosition) {
        Intrinsics.checkNotNullParameter(readerPosition, "<set-?>");
        this.startPosition = readerPosition;
    }

    public /* synthetic */ SelectOnScreenArgs(String str, BoxInfo boxInfo, PointF pointF, PointF pointF2, boolean z, boolean z2, ReaderPosition readerPosition, ReaderPosition readerPosition2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, boxInfo, pointF, pointF2, (i & 16) != 0 ? true : z, (i & 32) != 0 ? false : z2, (i & 64) != 0 ? ReaderPositionImpl.INSTANCE.getDummy() : readerPosition, (i & 128) != 0 ? ReaderPositionImpl.INSTANCE.getDummy() : readerPosition2);
    }
}
