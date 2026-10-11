package com.onyx.android.sdk.reader.impl;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.reader.api.PageRange;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.api.ReaderWritingMode;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b@\u0018\u0000 O2\u00020\u0001:\u0001OB\u0007¢\u0006\u0004\bM\u0010NJ\b\u0010\u0002\u001a\u00020\u0000H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\n\u001a\u00020\bH\u0016J\b\u0010\u000b\u001a\u00020\bH\u0016J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0016J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016J\b\u0010\u0012\u001a\u00020\u0003H\u0016R\"\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u001a\u001a\u0004\b \u0010\u001c\"\u0004\b!\u0010\u001eR\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010\n\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010#\u001a\u0004\b)\u0010%\"\u0004\b*\u0010'R\"\u0010\u000b\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010#\u001a\u0004\b,\u0010%\"\u0004\b-\u0010'R\"\u00101\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010#\u001a\u0004\b/\u0010%\"\u0004\b0\u0010'R\"\u00105\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010#\u001a\u0004\b3\u0010%\"\u0004\b4\u0010'R\"\u00109\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u0010#\u001a\u0004\b7\u0010%\"\u0004\b8\u0010'R(\u0010@\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R(\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010;\u001a\u0004\bB\u0010=\"\u0004\bC\u0010?R\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bD\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\"\u0010\u0012\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bJ\u0010\u0014\u001a\u0004\bK\u0010\u0016\"\u0004\bL\u0010\u0018¨\u0006P"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "copy", "", "pageIndex", "Lcom/onyx/android/sdk/reader/api/PageRange;", "pageRange", "selectionRange", "", "text", "leftText", "rightText", "", "Landroid/graphics/RectF;", "rectangles", "charRectList", "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;", gon.f71267T, "linkType", "a", "I", "getPageIndex", "()I", "setPageIndex", "(I)V", "b", "Lcom/onyx/android/sdk/reader/api/PageRange;", "getPageRange", "()Lcom/onyx/android/sdk/reader/api/PageRange;", "setPageRange", "(Lcom/onyx/android/sdk/reader/api/PageRange;)V", "c", "getSelectionRange", "setSelectionRange", "d", Constants.STRING_SIG, "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "e", "getLeftText", "setLeftText", C6997f.f39671c, "getRightText", "setRightText", C6998g.f39679a, "getOriginText", "setOriginText", "originText", C6999h.f39688c, "getOriginLeftText", "setOriginLeftText", "originLeftText", "i", "getOriginRightText", "setOriginRightText", "originRightText", "j", "Ljava/util/List;", "getRectList", "()Ljava/util/List;", "setRectList", "(Ljava/util/List;)V", "rectList", C4921e.f26537n, "getCharRectList", "setCharRectList", "l", "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;", "getWritingMode", "()Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;", "setWritingMode", "(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)V", "m", "getLinkType", "setLinkType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReaderSelectionImpl implements ReaderSelection {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    public int pageIndex;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public PageRange pageRange;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public PageRange selectionRange;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String text;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String leftText;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public String rightText;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public String originText;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String originLeftText;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String originRightText;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public List<RectF> rectList;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public List<RectF> charRectList;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public ReaderWritingMode writingMode;

    /* renamed from: m, reason: from kotlin metadata */
    public int linkType;

    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl$Companion;", "", "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public ReaderSelectionImpl() {
        PageRange.Companion companion = PageRange.INSTANCE;
        this.pageRange = companion.getDummy();
        this.selectionRange = companion.getDummy();
        this.text = "";
        this.leftText = "";
        this.rightText = "";
        this.originText = "";
        this.originLeftText = "";
        this.originRightText = "";
        this.rectList = new ArrayList();
        this.charRectList = new ArrayList();
        this.writingMode = ReaderWritingMode.HORIZONTAL;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSelection
    @NotNull
    public List<RectF> charRectList() {
        return this.charRectList;
    }

    @NotNull
    public final List<RectF> getCharRectList() {
        return this.charRectList;
    }

    @NotNull
    public final String getLeftText() {
        return this.leftText;
    }

    public final int getLinkType() {
        return this.linkType;
    }

    @NotNull
    public final String getOriginLeftText() {
        return this.originLeftText;
    }

    @NotNull
    public final String getOriginRightText() {
        return this.originRightText;
    }

    @NotNull
    public final String getOriginText() {
        return this.originText;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @NotNull
    public final PageRange getPageRange() {
        return this.pageRange;
    }

    @NotNull
    public final List<RectF> getRectList() {
        return this.rectList;
    }

    @NotNull
    public final String getRightText() {
        return this.rightText;
    }

    @NotNull
    public final PageRange getSelectionRange() {
        return this.selectionRange;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    @NotNull
    public final ReaderWritingMode getWritingMode() {
        return this.writingMode;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSelection
    @NotNull
    public String leftText() {
        return this.leftText;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSelection
    public int linkType() {
        return this.linkType;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSelection
    @NotNull
    public String originText() {
        return ReaderSelection.DefaultImpls.originText(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSelection
    public int pageIndex() {
        return this.pageIndex;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSelection
    @NotNull
    public PageRange pageRange() {
        return this.pageRange;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSelection
    @NotNull
    public List<RectF> rectangles() {
        return this.rectList;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSelection
    @NotNull
    public String rightText() {
        return this.rightText;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSelection
    @NotNull
    public PageRange selectionRange() {
        return this.selectionRange;
    }

    public final void setCharRectList(@NotNull List<RectF> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.charRectList = list;
    }

    public final void setLeftText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.leftText = str;
    }

    public final void setLinkType(int i) {
        this.linkType = i;
    }

    public final void setOriginLeftText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.originLeftText = str;
    }

    public final void setOriginRightText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.originRightText = str;
    }

    public final void setOriginText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.originText = str;
    }

    public final void setPageIndex(int i) {
        this.pageIndex = i;
    }

    public final void setPageRange(@NotNull PageRange pageRange) {
        Intrinsics.checkNotNullParameter(pageRange, "<set-?>");
        this.pageRange = pageRange;
    }

    public final void setRectList(@NotNull List<RectF> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.rectList = list;
    }

    public final void setRightText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.rightText = str;
    }

    public final void setSelectionRange(@NotNull PageRange pageRange) {
        Intrinsics.checkNotNullParameter(pageRange, "<set-?>");
        this.selectionRange = pageRange;
    }

    public final void setText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.text = str;
    }

    public final void setWritingMode(@NotNull ReaderWritingMode readerWritingMode) {
        Intrinsics.checkNotNullParameter(readerWritingMode, "<set-?>");
        this.writingMode = readerWritingMode;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSelection
    @NotNull
    public String text() {
        return this.text;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSelection
    @NotNull
    public ReaderWritingMode writingMode() {
        return this.writingMode;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSelection
    @NotNull
    public ReaderSelectionImpl copy() {
        ReaderSelectionImpl readerSelectionImpl = new ReaderSelectionImpl();
        readerSelectionImpl.pageIndex = this.pageIndex;
        readerSelectionImpl.pageRange = this.pageRange.copy();
        readerSelectionImpl.selectionRange = this.selectionRange.copy();
        readerSelectionImpl.text = this.text;
        readerSelectionImpl.leftText = this.leftText;
        readerSelectionImpl.rightText = this.rightText;
        readerSelectionImpl.originText = this.originText;
        readerSelectionImpl.originLeftText = this.originLeftText;
        readerSelectionImpl.originRightText = this.originRightText;
        readerSelectionImpl.rectList = RectFKt.copyRectFList(this.rectList);
        readerSelectionImpl.charRectList = RectFKt.copyRectFList(this.charRectList);
        readerSelectionImpl.writingMode = this.writingMode;
        readerSelectionImpl.linkType = this.linkType;
        return readerSelectionImpl;
    }
}
