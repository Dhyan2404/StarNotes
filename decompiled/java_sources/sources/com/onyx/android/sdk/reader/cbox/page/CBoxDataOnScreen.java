package com.onyx.android.sdk.reader.cbox.page;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.cbox.page.CBoxDataOnScreen;
import com.onyx.android.sdk.reader.cbox.utils.CBoxUtils;
import com.onyx.engine.sdk.CellOfScreen;
import com.onyx.engine.sdk.ImageInfo;
import com.onyx.engine.sdk.LinkInfo;
import com.onyx.engine.sdk.LinkType;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010!\n\u0002\b\"\u0018\u00002\u00020\u0001:\u0003<=>B\u0007¢\u0006\u0004\b:\u0010;J\u0006\u0010\u0003\u001a\u00020\u0002J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004J\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0004J\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004J\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\rJ\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0004J\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\rJ\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000f0\rJ\b\u0010\u0014\u001a\u00020\u0002H\u0002J\u0014\u0010\u0018\u001a\u00020\u00022\n\u0010\u0017\u001a\u00060\u0015j\u0002`\u0016H\u0002J\b\u0010\u0019\u001a\u00020\u0002H\u0002J\b\u0010\u001a\u001a\u00020\u0002H\u0002J\b\u0010\u001b\u001a\u00020\u0002H\u0002R)\u0010\"\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u001d0\u001c8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R)\u0010$\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u001d0\u001c8\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u001f\u001a\u0004\b#\u0010!R)\u0010&\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u001d0\u001c8\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001f\u001a\u0004\b%\u0010!R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00050\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010'R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00070\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010'R\u001a\u0010+\u001a\b\u0012\u0004\u0012\u00020\t0\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010'R\u001a\u0010,\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010'R\u001a\u0010.\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010'R \u00100\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010\u001fR\u001a\u00102\u001a\b\u0012\u0004\u0012\u00020\u00050\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u0010'R)\u00105\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u001d0\u001c8\u0006¢\u0006\f\n\u0004\b3\u0010\u001f\u001a\u0004\b4\u0010!R \u00107\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u0010\u001fR \u00109\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000f0\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u0010\u001f¨\u0006?"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;", "", "", "flatMapToList", "", "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;", "getTextList", "", "getParagraphList", "", "getNewParagraphScreenLineNumberList", "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;", "getImageList", "", "getPositionImageMap", "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;", "getLinkList", "getHalfWordTextList", "getPositionTextMap", "getRectHashLinkMap", "e", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "paragraphTextSb", "b", C6998g.f39679a, "c", "d", "", "", "a", "Ljava/util/Map;", "getPageTextMap", "()Ljava/util/Map;", "pageTextMap", "getPageImageMap", "pageImageMap", "getPageLinkMap", "pageLinkMap", "Ljava/util/List;", "textList", "paragraphList", C6997f.f39671c, "newParagraphScreenLineNumberList", "imageList", C6999h.f39688c, "linkList", "i", "positionTextMap", "j", "halfWordTextList", C4921e.f26537n, "getScreenLineNumberTextMap", "screenLineNumberTextMap", "l", "positionImageMap", "m", "rectHashLinkMap", Constants.CONSTRUCTOR_NAME, "()V", "PieceOfImage", "PieceOfLink", "PieceOfText", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CBoxDataOnScreen {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Map<Integer, List<PieceOfText>> pageTextMap = new TreeMap();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Map<Integer, List<PieceOfImage>> pageImageMap = new TreeMap();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Map<Integer, List<PieceOfLink>> pageLinkMap = new TreeMap();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final List<PieceOfText> textList = new ArrayList();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<String> paragraphList = new ArrayList();

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> newParagraphScreenLineNumberList = new ArrayList();

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<PieceOfImage> imageList = new ArrayList();

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<PieceOfLink> linkList = new ArrayList();

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Map<Integer, PieceOfText> positionTextMap = new TreeMap();

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<PieceOfText> halfWordTextList = new ArrayList();

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Map<Integer, List<PieceOfText>> screenLineNumberTextMap = new TreeMap();

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Map<Integer, PieceOfImage> positionImageMap = new TreeMap();

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Map<Integer, PieceOfLink> rectHashLinkMap = new HashMap();

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0004\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;", "", "", CouchFieldKey.KEY_PAGE_NUMBER, "setPageNumber", "", "toString", "Lcom/onyx/engine/sdk/ImageInfo;", "a", "Lcom/onyx/engine/sdk/ImageInfo;", "getImageInfo", "()Lcom/onyx/engine/sdk/ImageInfo;", "imageInfo", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "b", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getPosition", "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "position", "c", "I", "getPageNumber", "()I", "(I)V", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/engine/sdk/ImageInfo;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class PieceOfImage {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final ImageInfo imageInfo;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final ReaderPosition position;

        /* renamed from: c, reason: from kotlin metadata and from toString */
        public int pageNumber;

        public PieceOfImage(@NotNull ImageInfo imageInfo, @NotNull ReaderPosition position) {
            Intrinsics.checkNotNullParameter(imageInfo, "imageInfo");
            Intrinsics.checkNotNullParameter(position, "position");
            this.imageInfo = imageInfo;
            this.position = position;
        }

        @NotNull
        public final ImageInfo getImageInfo() {
            return this.imageInfo;
        }

        public final int getPageNumber() {
            return this.pageNumber;
        }

        @NotNull
        public final ReaderPosition getPosition() {
            return this.position;
        }

        /* renamed from: setPageNumber, reason: collision with other method in class */
        public final void m72333setPageNumber(int i) {
            this.pageNumber = i;
        }

        @NotNull
        public String toString() {
            return "PieceOfImage(pageNumber=" + this.pageNumber + ", imageInfo=" + this.imageInfo;
        }

        @NotNull
        public final PieceOfImage setPageNumber(int pageNumber) {
            this.pageNumber = pageNumber;
            return this;
        }

        public /* synthetic */ PieceOfImage(ImageInfo imageInfo, ReaderPosition readerPosition, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(imageInfo, (i & 2) != 0 ? CBoxUtils.INSTANCE.convert(imageInfo.getPosition()) : readerPosition);
        }
    }

    @Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b'\u0010(J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\b\u0010\b\u001a\u00020\u0005H\u0016R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0014\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0004\u0010\u0019R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u0007\u0010\u001eR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;", "", "Lcom/onyx/engine/sdk/LinkType;", "linkType", "setLinkType", "", "targetText", "setTargetText", "toString", "Lcom/onyx/engine/sdk/LinkInfo;", "a", "Lcom/onyx/engine/sdk/LinkInfo;", "getLinkInfo", "()Lcom/onyx/engine/sdk/LinkInfo;", "linkInfo", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "b", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getPosition", "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "position", "c", "Lcom/onyx/engine/sdk/LinkType;", "getLinkType", "()Lcom/onyx/engine/sdk/LinkType;", "(Lcom/onyx/engine/sdk/LinkType;)V", "d", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getTargetText", "()Ljava/lang/String;", "(Ljava/lang/String;)V", "", "e", "I", "getPageNumber", "()I", "setPageNumber", "(I)V", CouchFieldKey.KEY_PAGE_NUMBER, Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/engine/sdk/LinkInfo;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class PieceOfLink {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final LinkInfo linkInfo;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final ReaderPosition position;

        /* renamed from: c, reason: from kotlin metadata and from toString */
        @NotNull
        public LinkType linkType;

        /* renamed from: d, reason: from kotlin metadata */
        @Nullable
        public String targetText;

        /* renamed from: e, reason: from kotlin metadata and from toString */
        public int pageNumber;

        public PieceOfLink(@NotNull LinkInfo linkInfo, @NotNull ReaderPosition position) {
            Intrinsics.checkNotNullParameter(linkInfo, "linkInfo");
            Intrinsics.checkNotNullParameter(position, "position");
            this.linkInfo = linkInfo;
            this.position = position;
            this.linkType = LinkType.NOT_LOADED;
            this.targetText = linkInfo.getText();
        }

        @NotNull
        public final LinkInfo getLinkInfo() {
            return this.linkInfo;
        }

        @NotNull
        public final LinkType getLinkType() {
            return this.linkType;
        }

        public final int getPageNumber() {
            return this.pageNumber;
        }

        @NotNull
        public final ReaderPosition getPosition() {
            return this.position;
        }

        @Nullable
        public final String getTargetText() {
            return this.targetText;
        }

        /* renamed from: setLinkType, reason: collision with other method in class */
        public final void m72334setLinkType(@NotNull LinkType linkType) {
            Intrinsics.checkNotNullParameter(linkType, "<set-?>");
            this.linkType = linkType;
        }

        public final void setPageNumber(int i) {
            this.pageNumber = i;
        }

        /* renamed from: setTargetText, reason: collision with other method in class */
        public final void m72335setTargetText(@Nullable String str) {
            this.targetText = str;
        }

        @NotNull
        public String toString() {
            return "PieceOfLink(pageNumber=" + this.pageNumber + ", linkType=" + this.linkType + ", linkInfo=" + this.linkInfo;
        }

        @NotNull
        public final PieceOfLink setLinkType(@NotNull LinkType linkType) {
            Intrinsics.checkNotNullParameter(linkType, "linkType");
            this.linkType = linkType;
            return this;
        }

        @NotNull
        public final PieceOfLink setTargetText(@Nullable String targetText) {
            this.targetText = targetText;
            return this;
        }

        public /* synthetic */ PieceOfLink(LinkInfo linkInfo, ReaderPosition readerPosition, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(linkInfo, (i & 2) != 0 ? CBoxUtils.INSTANCE.convert(linkInfo.getPosition()) : readerPosition);
        }
    }

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\u0018\u0000  2\u00020\u0001:\u0001 B\u0019\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0011\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0086\u0002J\b\u0010\n\u001a\u00020\tH\u0016R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0004\u0010\u0019R\u0011\u0010\u001b\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0018R\u0011\u0010\u001d\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0018¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;", "", "", CouchFieldKey.KEY_PAGE_NUMBER, "setPageNumber", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "position", "", Keywords.FUNC_CONTAINS_STRING, "", "toString", "Lcom/onyx/engine/sdk/CellOfScreen;", "a", "Lcom/onyx/engine/sdk/CellOfScreen;", "getCellOfScreen", "()Lcom/onyx/engine/sdk/CellOfScreen;", "cellOfScreen", "b", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getPosition", "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "c", "I", "getPageNumber", "()I", "(I)V", "getScreenLineNumber", "screenLineNumber", "getScreenParagraphNumber", "screenParagraphNumber", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/engine/sdk/CellOfScreen;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class PieceOfText {

        /* renamed from: d */
        public static final int f44686d = 100000;

        /* renamed from: e */
        public static final int f44687e = 1000;

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final CellOfScreen cellOfScreen;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final ReaderPosition position;

        /* renamed from: c, reason: from kotlin metadata and from toString */
        public int pageNumber;

        public PieceOfText(@NotNull CellOfScreen cellOfScreen, @NotNull ReaderPosition position) {
            Intrinsics.checkNotNullParameter(cellOfScreen, "cellOfScreen");
            Intrinsics.checkNotNullParameter(position, "position");
            this.cellOfScreen = cellOfScreen;
            this.position = position;
        }

        public final boolean contains(@NotNull ReaderPosition position) {
            Intrinsics.checkNotNullParameter(position, "position");
            int intPosition = this.position.getIntPosition();
            int intPosition2 = this.position.getIntPosition() + this.cellOfScreen.getTextLength();
            int intPosition3 = position.getIntPosition();
            return intPosition <= intPosition3 && intPosition3 < intPosition2;
        }

        @NotNull
        public final CellOfScreen getCellOfScreen() {
            return this.cellOfScreen;
        }

        public final int getPageNumber() {
            return this.pageNumber;
        }

        @NotNull
        public final ReaderPosition getPosition() {
            return this.position;
        }

        public final int getScreenLineNumber() {
            return (this.pageNumber * 100000) + (this.cellOfScreen.getParaNumber() * 1000) + this.cellOfScreen.getLineNumber();
        }

        public final int getScreenParagraphNumber() {
            return (this.pageNumber * 100000) + (this.cellOfScreen.getParaNumber() * 1000);
        }

        /* renamed from: setPageNumber, reason: collision with other method in class */
        public final void m72336setPageNumber(int i) {
            this.pageNumber = i;
        }

        @NotNull
        public String toString() {
            return "PieceOfText(pageNumber=" + this.pageNumber + ", cellOfScreen=" + this.cellOfScreen;
        }

        @NotNull
        public final PieceOfText setPageNumber(int pageNumber) {
            this.pageNumber = pageNumber;
            return this;
        }

        public /* synthetic */ PieceOfText(CellOfScreen cellOfScreen, ReaderPosition readerPosition, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(cellOfScreen, (i & 2) != 0 ? CBoxUtils.INSTANCE.convert(cellOfScreen.getPosition()) : readerPosition);
        }
    }

    /* renamed from: f */
    public static final List m34568f(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* renamed from: b */
    public final void m34569b(StringBuilder paragraphTextSb) {
        boolean isBlank;
        String sb = paragraphTextSb.toString();
        Intrinsics.checkNotNullExpressionValue(sb, "toString(...)");
        isBlank = StringsKt__StringsJVMKt.isBlank(sb);
        if (!isBlank) {
            this.paragraphList.add(sb);
        }
    }

    /* renamed from: c */
    public final void m34570c() {
        if (!this.imageList.isEmpty()) {
            return;
        }
        Iterator<Map.Entry<Integer, List<PieceOfImage>>> it2 = this.pageImageMap.entrySet().iterator();
        while (it2.hasNext()) {
            List<PieceOfImage> value = it2.next().getValue();
            this.imageList.addAll(value);
            for (PieceOfImage pieceOfImage : value) {
                this.positionImageMap.put(Integer.valueOf(pieceOfImage.getPosition().getIntPosition()), pieceOfImage);
            }
        }
    }

    /* renamed from: d */
    public final void m34571d() {
        if (!this.linkList.isEmpty()) {
            return;
        }
        Iterator<Map.Entry<Integer, List<PieceOfLink>>> it2 = this.pageLinkMap.entrySet().iterator();
        while (it2.hasNext()) {
            List<PieceOfLink> value = it2.next().getValue();
            for (PieceOfLink pieceOfLink : value) {
                this.rectHashLinkMap.put(Integer.valueOf(pieceOfLink.getLinkInfo().getRect().hashCode()), pieceOfLink);
            }
            this.linkList.addAll(value);
        }
    }

    /* renamed from: e */
    public final void m34572e() {
        if (!this.textList.isEmpty()) {
            return;
        }
        Iterator<Map.Entry<Integer, List<PieceOfText>>> it2 = this.pageTextMap.entrySet().iterator();
        boolean z = false;
        while (it2.hasNext()) {
            List<PieceOfText> value = it2.next().getValue();
            this.textList.addAll(value);
            for (PieceOfText pieceOfText : value) {
                this.positionTextMap.put(Integer.valueOf(pieceOfText.getPosition().getIntPosition()), pieceOfText);
                Map<Integer, List<PieceOfText>> map = this.screenLineNumberTextMap;
                Integer valueOf = Integer.valueOf(pieceOfText.getScreenLineNumber());
                final CBoxDataOnScreen$flatPageTextMap$1 cBoxDataOnScreen$flatPageTextMap$1 = new Function1<Integer, List<PieceOfText>>() { // from class: com.onyx.android.sdk.reader.cbox.page.CBoxDataOnScreen$flatPageTextMap$1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final List<CBoxDataOnScreen.PieceOfText> invoke(@NotNull Integer it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        return new ArrayList();
                    }
                };
                map.computeIfAbsent(valueOf, new Function() { // from class: com.sunia.HTREnginev2.p00
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        List m34568f;
                        m34568f = CBoxDataOnScreen.m34568f(Function1.this, obj);
                        return m34568f;
                    }
                }).add(pieceOfText);
                if (!pieceOfText.getCellOfScreen().isWhiteSpace()) {
                    if (pieceOfText.getCellOfScreen().isHalfWord()) {
                        if (!z) {
                            z = true;
                        }
                        this.halfWordTextList.add(pieceOfText);
                    } else if (z) {
                        this.halfWordTextList.add(pieceOfText);
                    }
                }
                z = false;
            }
        }
    }

    public final void flatMapToList() {
        m34572e();
        m34573g();
        m34570c();
        m34571d();
    }

    /* renamed from: g */
    public final void m34573g() {
        if (!this.paragraphList.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        int i = -1;
        for (Map.Entry<Integer, List<PieceOfText>> entry : this.screenLineNumberTextMap.entrySet()) {
            int intValue = entry.getKey().intValue();
            for (PieceOfText pieceOfText : entry.getValue()) {
                if (i > -1 && i != pieceOfText.getScreenParagraphNumber()) {
                    m34569b(sb);
                    this.newParagraphScreenLineNumberList.add(Integer.valueOf(intValue));
                    sb.delete(0, sb.length());
                }
                sb.append(pieceOfText.getCellOfScreen().getWord());
                i = pieceOfText.getScreenParagraphNumber();
            }
        }
        if (sb.length() > 0) {
            m34569b(sb);
            sb.delete(0, sb.length());
        }
    }

    @NotNull
    public final List<PieceOfText> getHalfWordTextList() {
        return this.halfWordTextList;
    }

    @NotNull
    public final List<PieceOfImage> getImageList() {
        return this.imageList;
    }

    @NotNull
    public final List<PieceOfLink> getLinkList() {
        return this.linkList;
    }

    @NotNull
    public final List<Integer> getNewParagraphScreenLineNumberList() {
        return this.newParagraphScreenLineNumberList;
    }

    @NotNull
    public final Map<Integer, List<PieceOfImage>> getPageImageMap() {
        return this.pageImageMap;
    }

    @NotNull
    public final Map<Integer, List<PieceOfLink>> getPageLinkMap() {
        return this.pageLinkMap;
    }

    @NotNull
    public final Map<Integer, List<PieceOfText>> getPageTextMap() {
        return this.pageTextMap;
    }

    @NotNull
    public final List<String> getParagraphList() {
        return this.paragraphList;
    }

    @NotNull
    public final Map<Integer, PieceOfImage> getPositionImageMap() {
        return this.positionImageMap;
    }

    @NotNull
    public final Map<Integer, PieceOfText> getPositionTextMap() {
        return this.positionTextMap;
    }

    @NotNull
    public final Map<Integer, PieceOfLink> getRectHashLinkMap() {
        return this.rectHashLinkMap;
    }

    @NotNull
    public final Map<Integer, List<PieceOfText>> getScreenLineNumberTextMap() {
        return this.screenLineNumberTextMap;
    }

    @NotNull
    public final List<PieceOfText> getTextList() {
        return this.textList;
    }
}
