package com.onyx.android.sdk.reader.common;

import android.graphics.PointF;
import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CharKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.reader.api.PageRange;
import com.onyx.android.sdk.reader.api.ReaderHitTestArgs;
import com.onyx.android.sdk.reader.api.ReaderHitTestOptions;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.api.ReaderWritingMode;
import com.onyx.android.sdk.reader.api.ReaderWritingModeKt;
import com.onyx.android.sdk.reader.extension.CharRectList;
import com.onyx.android.sdk.reader.impl.ReaderSelectionImpl;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt___StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 >2\u00020\u0001:\u0001>B'\u0012\u0006\u0010/\u001a\u00020)\u0012\f\u00107\u001a\b\u0012\u0004\u0012\u00020100\u0012\b\b\u0002\u0010;\u001a\u00020\u000f¢\u0006\u0004\b<\u0010=J(\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bJ4\u0010\u0012\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\rH\u0002J \u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0002J*\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\u0018\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\rH\u0002J\u0010\u0010\u001b\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0018\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u000bH\u0002J\u0018\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u000bH\u0002J\u0010\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020\tH\u0002J\u0018\u0010$\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\u000bH\u0002J\u0018\u0010%\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\u000bH\u0002J\u0010\u0010(\u001a\u00020!2\u0006\u0010'\u001a\u00020&H\u0002R\"\u0010/\u001a\u00020)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R(\u00107\u001a\b\u0012\u0004\u0012\u000201008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u0017\u0010;\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u001a\u00108\u001a\u0004\b9\u0010:¨\u0006?"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper;", "", "Landroid/graphics/RectF;", "pageOriginSize", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;", gon.f71290o0, "end", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;", "hitTestOptions", "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;", "selectOnScreen", "", "charIndex", "", "isValidCharIndex", "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;", gon.f71267T, "isSelectingWord", C4921e.f26537n, "Landroid/graphics/PointF;", "pointF", "", "paddingLeftRight", "paddingTopBottom", "d", C6998g.f39679a, "c", C6999h.f39688c, "wordStartPos", "wordEndPos", "a", "b", "selection", "", "j", "anchorIndex", C6997f.f39671c, "e", "", NotificationCompat.CATEGORY_MESSAGE, "i", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getPagePosition", "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "setPagePosition", "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V", "pagePosition", "", "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;", "Ljava/util/List;", "getCharInfoList", "()Ljava/util/List;", "setCharInfoList", "(Ljava/util/List;)V", "charInfoList", "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;", "getPageWritingMode", "()Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;", "pageWritingMode", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/util/List;Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFixedDocumentPageTextHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FixedDocumentPageTextHelper.kt\ncom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,286:1\n350#2,7:287\n350#2,7:294\n766#2:301\n857#2,2:302\n766#2:304\n857#2,2:305\n*S KotlinDebug\n*F\n+ 1 FixedDocumentPageTextHelper.kt\ncom/onyx/android/sdk/reader/common/FixedDocumentPageTextHelper\n*L\n132#1:287,7\n142#1:294,7\n234#1:301\n234#1:302,2\n256#1:304\n256#1:305,2\n*E\n"})
/* loaded from: classes8.dex */
public final class FixedDocumentPageTextHelper {
    public static final boolean DEBUG = false;
    public static final int INVALID_INDEX = -1;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public ReaderPosition pagePosition;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<ReaderCharInfo> charInfoList;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final ReaderWritingMode pageWritingMode;

    public FixedDocumentPageTextHelper(@NotNull ReaderPosition pagePosition, @NotNull List<ReaderCharInfo> charInfoList, @NotNull ReaderWritingMode pageWritingMode) {
        Intrinsics.checkNotNullParameter(pagePosition, "pagePosition");
        Intrinsics.checkNotNullParameter(charInfoList, "charInfoList");
        Intrinsics.checkNotNullParameter(pageWritingMode, "pageWritingMode");
        this.pagePosition = pagePosition;
        this.charInfoList = charInfoList;
        this.pageWritingMode = pageWritingMode;
    }

    /* renamed from: a */
    public final ReaderSelectionImpl m34690a(int wordStartPos, int wordEndPos) {
        ReaderSelectionImpl m34691b = m34691b(wordStartPos, wordEndPos);
        m34691b.setWritingMode(ReaderWritingMode.INSTANCE.analysePageWritingModeByCharRect(m34691b.getRectList()));
        m34699j(m34691b);
        return m34691b;
    }

    /* renamed from: b */
    public final ReaderSelectionImpl m34691b(int wordStartPos, int wordEndPos) {
        int pageIndex = this.pagePosition.getPageIndex();
        int min = Math.min(wordStartPos, wordEndPos);
        int max = Math.max(wordStartPos, wordEndPos);
        PageRange createFixedPageRange = PageRange.INSTANCE.createFixedPageRange(pageIndex);
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        if (min <= max) {
            int i = min;
            while (true) {
                ReaderCharInfo readerCharInfo = this.charInfoList.get(i);
                sb.append(readerCharInfo.getText());
                arrayList.add(RectFKt.copy(readerCharInfo.getRect()));
                if (i == max) {
                    break;
                }
                i++;
            }
        }
        ReaderSelectionImpl readerSelectionImpl = new ReaderSelectionImpl();
        readerSelectionImpl.setPageIndex(pageIndex);
        readerSelectionImpl.setPageRange(createFixedPageRange);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        readerSelectionImpl.setText(sb2);
        readerSelectionImpl.setSelectionRange(PageRange.INSTANCE.createSelectionRange(min, max + 1));
        readerSelectionImpl.setRectList(arrayList);
        readerSelectionImpl.setCharRectList(RectFKt.copyRectFList(arrayList));
        return readerSelectionImpl;
    }

    /* renamed from: c */
    public final int m34692c(int charIndex, boolean end) {
        if (!m34697h(charIndex)) {
            return charIndex;
        }
        while (true) {
            int i = end ? charIndex + 1 : charIndex - 1;
            boolean z = false;
            if (i >= 0 && i < this.charInfoList.size()) {
                z = true;
            }
            if (z && m34697h(i)) {
                charIndex = i;
            }
        }
        return charIndex;
    }

    /* renamed from: d */
    public final int m34693d(PointF pointF, float paddingLeftRight, float paddingTopBottom) {
        Iterator<ReaderCharInfo> it2 = this.charInfoList.iterator();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (!it2.hasNext()) {
                i2 = -1;
                break;
            }
            if (it2.next().getRect().contains(pointF.x, pointF.y)) {
                break;
            }
            i2++;
        }
        if (i2 >= 0) {
            return i2;
        }
        m34698i("pointF: " + pointF + " paddingLeftRight = " + paddingLeftRight + " paddingTopBottom = " + paddingTopBottom);
        if (paddingLeftRight <= 0.0f && paddingTopBottom <= 0.0f) {
            return i2;
        }
        RectF rectF = new RectF();
        Iterator<ReaderCharInfo> it3 = this.charInfoList.iterator();
        while (it3.hasNext()) {
            rectF.set(it3.next().getRect());
            RectKt.expand(rectF, paddingLeftRight, paddingTopBottom);
            if (rectF.contains(pointF.x, pointF.y)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: e */
    public final int m34694e(PointF pointF, int anchorIndex) {
        Object orNull;
        Object first;
        Object last;
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.charInfoList, anchorIndex);
        ReaderCharInfo readerCharInfo = (ReaderCharInfo) orNull;
        if (readerCharInfo == null) {
            return -1;
        }
        List<ReaderCharInfo> list = this.charInfoList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (RectFKt.hasHorizontalOverlapWith$default(((ReaderCharInfo) obj).getRect(), pointF.x, 0.0f, 2, (Object) null)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return -1;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) arrayList);
        int indexOf = this.charInfoList.indexOf((ReaderCharInfo) first);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) arrayList);
        int indexOf2 = this.charInfoList.indexOf((ReaderCharInfo) last);
        int i = pointF.y < readerCharInfo.getRect().top ? indexOf : indexOf2;
        m34698i("pointF = " + pointF + ", horizontalHitTestList, size = " + arrayList.size() + ", indexOfFirst = " + indexOf + ", indexOfLast = " + indexOf2 + ", anchorIndex = " + anchorIndex + ", hitTestIndex = " + i);
        return i;
    }

    /* renamed from: f */
    public final int m34695f(PointF pointF, int anchorIndex) {
        Object orNull;
        Object first;
        Object last;
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.charInfoList, anchorIndex);
        ReaderCharInfo readerCharInfo = (ReaderCharInfo) orNull;
        if (readerCharInfo == null) {
            return -1;
        }
        List<ReaderCharInfo> list = this.charInfoList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (RectFKt.hasVerticalOverlapWith$default(((ReaderCharInfo) obj).getRect(), pointF.y, 0.0f, 2, (Object) null)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return -1;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) arrayList);
        int indexOf = this.charInfoList.indexOf((ReaderCharInfo) first);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) arrayList);
        int indexOf2 = this.charInfoList.indexOf((ReaderCharInfo) last);
        int i = pointF.x < readerCharInfo.getRect().left ? indexOf : indexOf2;
        m34698i("pointF = " + pointF + ", hitTestVerticalLine, size = " + arrayList.size() + ", indexOfFirst = " + indexOf + ", indexOfLast = " + indexOf2 + ", anchorIndex = " + anchorIndex + ", hitTestIndex = " + i);
        return i;
    }

    /* renamed from: g */
    public final int m34696g(PointF pointF, float paddingLeftRight, float paddingTopBottom, ReaderWritingMode writingMode) {
        return ReaderWritingModeKt.isVertical(writingMode) ? m34693d(pointF, paddingTopBottom, paddingLeftRight) : m34693d(pointF, paddingLeftRight, paddingTopBottom);
    }

    @NotNull
    public final List<ReaderCharInfo> getCharInfoList() {
        return this.charInfoList;
    }

    @NotNull
    public final ReaderPosition getPagePosition() {
        return this.pagePosition;
    }

    @NotNull
    public final ReaderWritingMode getPageWritingMode() {
        return this.pageWritingMode;
    }

    /* renamed from: h */
    public final boolean m34697h(int charIndex) {
        Character firstOrNull;
        firstOrNull = StringsKt___StringsKt.firstOrNull(this.charInfoList.get(charIndex).getText());
        if (firstOrNull != null) {
            return CharKt.isAlpha(firstOrNull.charValue());
        }
        return false;
    }

    /* renamed from: i */
    public final void m34698i(String msg) {
    }

    public final boolean isValidCharIndex(int charIndex) {
        return charIndex >= 0;
    }

    /* renamed from: j */
    public final void m34699j(ReaderSelectionImpl selection) {
        List<RectF> mergeBlockRectanglesByWord = CharRectList.INSTANCE.mergeBlockRectanglesByWord(selection.getRectList());
        selection.getRectList().clear();
        selection.getRectList().addAll(mergeBlockRectanglesByWord);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0015 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0016 A[Catch: all -> 0x00f9, TryCatch #0 {all -> 0x00f9, blocks: (B:3:0x0001, B:5:0x0009, B:12:0x0016, B:14:0x0030, B:15:0x003d, B:17:0x004b, B:18:0x0058, B:20:0x0078, B:22:0x00cb, B:24:0x00d1, B:28:0x00da, B:30:0x00df, B:35:0x00eb, B:39:0x007e, B:41:0x0084, B:43:0x008a, B:45:0x0094, B:47:0x009a, B:49:0x009f, B:50:0x00a5, B:52:0x00ab, B:54:0x00b1, B:56:0x00bb, B:58:0x00c1, B:60:0x00c6, B:61:0x0054, B:62:0x0039), top: B:2:0x0001 }] */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.onyx.android.sdk.reader.impl.ReaderSelectionImpl m34700k(android.graphics.RectF r9, com.onyx.android.sdk.reader.api.ReaderHitTestArgs r10, com.onyx.android.sdk.reader.api.ReaderHitTestArgs r11, com.onyx.android.sdk.reader.api.ReaderWritingMode r12, boolean r13) {
        /*
            r8 = this;
            r9 = 0
            java.util.List<com.onyx.android.sdk.reader.common.ReaderCharInfo> r0 = r8.charInfoList     // Catch: java.lang.Throwable -> Lf9
            java.util.Collection r0 = (java.util.Collection) r0     // Catch: java.lang.Throwable -> Lf9
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L12
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> Lf9
            if (r0 == 0) goto L10
            goto L12
        L10:
            r0 = r1
            goto L13
        L12:
            r0 = r2
        L13:
            if (r0 == 0) goto L16
            return r9
        L16:
            android.graphics.PointF r0 = r10.getPointInDocument()     // Catch: java.lang.Throwable -> Lf9
            android.graphics.PointF r3 = r11.getPointInDocument()     // Catch: java.lang.Throwable -> Lf9
            float r4 = r10.getHitTestPadding()     // Catch: java.lang.Throwable -> Lf9
            com.onyx.android.sdk.reader.api.ReaderPosition r5 = r10.getPosition()     // Catch: java.lang.Throwable -> Lf9
            int r5 = r5.getIntPosition()     // Catch: java.lang.Throwable -> Lf9
            boolean r5 = r8.isValidCharIndex(r5)     // Catch: java.lang.Throwable -> Lf9
            if (r5 == 0) goto L39
            com.onyx.android.sdk.reader.api.ReaderPosition r5 = r10.getPosition()     // Catch: java.lang.Throwable -> Lf9
            int r5 = r5.getIntPosition()     // Catch: java.lang.Throwable -> Lf9
            goto L3d
        L39:
            int r5 = r8.m34693d(r0, r4, r4)     // Catch: java.lang.Throwable -> Lf9
        L3d:
            com.onyx.android.sdk.reader.api.ReaderPosition r6 = r11.getPosition()     // Catch: java.lang.Throwable -> Lf9
            int r6 = r6.getIntPosition()     // Catch: java.lang.Throwable -> Lf9
            boolean r6 = r8.isValidCharIndex(r6)     // Catch: java.lang.Throwable -> Lf9
            if (r6 == 0) goto L54
            com.onyx.android.sdk.reader.api.ReaderPosition r11 = r11.getPosition()     // Catch: java.lang.Throwable -> Lf9
            int r11 = r11.getIntPosition()     // Catch: java.lang.Throwable -> Lf9
            goto L58
        L54:
            int r11 = r8.m34693d(r3, r4, r4)     // Catch: java.lang.Throwable -> Lf9
        L58:
            com.onyx.android.sdk.base.utils.ResManager r4 = com.onyx.android.sdk.base.utils.ResManager.INSTANCE     // Catch: java.lang.Throwable -> Lf9
            int r6 = com.onyx.android.sdk.readercore.C7592R.dimen.select_text_selecting_hit_test_horizontal_padding     // Catch: java.lang.Throwable -> Lf9
            int r6 = r4.getDimens(r6)     // Catch: java.lang.Throwable -> Lf9
            float r6 = (float) r6     // Catch: java.lang.Throwable -> Lf9
            float r7 = r10.getPageScale()     // Catch: java.lang.Throwable -> Lf9
            float r6 = r6 / r7
            int r7 = com.onyx.android.sdk.readercore.C7592R.dimen.select_text_selecting_hit_test_vertical_padding     // Catch: java.lang.Throwable -> Lf9
            int r4 = r4.getDimens(r7)     // Catch: java.lang.Throwable -> Lf9
            float r4 = (float) r4     // Catch: java.lang.Throwable -> Lf9
            float r10 = r10.getPageScale()     // Catch: java.lang.Throwable -> Lf9
            float r4 = r4 / r10
            boolean r10 = r8.isValidCharIndex(r5)     // Catch: java.lang.Throwable -> Lf9
            if (r10 != 0) goto L7e
            boolean r10 = r8.isValidCharIndex(r11)     // Catch: java.lang.Throwable -> Lf9
            if (r10 == 0) goto Lcb
        L7e:
            boolean r10 = r8.isValidCharIndex(r5)     // Catch: java.lang.Throwable -> Lf9
            if (r10 != 0) goto La5
            boolean r10 = r8.isValidCharIndex(r11)     // Catch: java.lang.Throwable -> Lf9
            if (r10 == 0) goto La5
            int r5 = r8.m34696g(r0, r6, r4, r12)     // Catch: java.lang.Throwable -> Lf9
            boolean r10 = r8.isValidCharIndex(r5)     // Catch: java.lang.Throwable -> Lf9
            if (r10 != 0) goto Lcb
            boolean r10 = com.onyx.android.sdk.reader.api.ReaderWritingModeKt.isVertical(r12)     // Catch: java.lang.Throwable -> Lf9
            if (r10 == 0) goto L9f
            int r10 = r8.m34694e(r0, r11)     // Catch: java.lang.Throwable -> Lf9
            goto La3
        L9f:
            int r10 = r8.m34695f(r0, r11)     // Catch: java.lang.Throwable -> Lf9
        La3:
            r5 = r10
            goto Lcb
        La5:
            boolean r10 = r8.isValidCharIndex(r5)     // Catch: java.lang.Throwable -> Lf9
            if (r10 == 0) goto Lcb
            boolean r10 = r8.isValidCharIndex(r11)     // Catch: java.lang.Throwable -> Lf9
            if (r10 != 0) goto Lcb
            int r11 = r8.m34696g(r3, r6, r4, r12)     // Catch: java.lang.Throwable -> Lf9
            boolean r10 = r8.isValidCharIndex(r11)     // Catch: java.lang.Throwable -> Lf9
            if (r10 != 0) goto Lcb
            boolean r10 = com.onyx.android.sdk.reader.api.ReaderWritingModeKt.isVertical(r12)     // Catch: java.lang.Throwable -> Lf9
            if (r10 == 0) goto Lc6
            int r10 = r8.m34694e(r3, r5)     // Catch: java.lang.Throwable -> Lf9
            goto Lca
        Lc6:
            int r10 = r8.m34695f(r3, r5)     // Catch: java.lang.Throwable -> Lf9
        Lca:
            r11 = r10
        Lcb:
            boolean r10 = r8.isValidCharIndex(r5)     // Catch: java.lang.Throwable -> Lf9
            if (r10 == 0) goto Lf8
            boolean r10 = r8.isValidCharIndex(r11)     // Catch: java.lang.Throwable -> Lf9
            if (r10 != 0) goto Ld8
            goto Lf8
        Ld8:
            if (r13 != 0) goto Ldf
            com.onyx.android.sdk.reader.impl.ReaderSelectionImpl r8 = r8.m34690a(r5, r11)     // Catch: java.lang.Throwable -> Lf9
            return r8
        Ldf:
            int r10 = java.lang.Math.max(r5, r11)     // Catch: java.lang.Throwable -> Lf9
            if (r10 != r11) goto Le7
            r10 = r2
            goto Le8
        Le7:
            r10 = r1
        Le8:
            if (r10 != 0) goto Leb
            r1 = r2
        Leb:
            int r12 = r8.m34692c(r5, r1)     // Catch: java.lang.Throwable -> Lf9
            int r10 = r8.m34692c(r11, r10)     // Catch: java.lang.Throwable -> Lf9
            com.onyx.android.sdk.reader.impl.ReaderSelectionImpl r8 = r8.m34690a(r12, r10)     // Catch: java.lang.Throwable -> Lf9
            return r8
        Lf8:
            return r9
        Lf9:
            r8 = move-exception
            com.onyx.android.sdk.base.utils.Debug r10 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            r10.m32048e(r8)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.common.FixedDocumentPageTextHelper.m34700k(android.graphics.RectF, com.onyx.android.sdk.reader.api.ReaderHitTestArgs, com.onyx.android.sdk.reader.api.ReaderHitTestArgs, com.onyx.android.sdk.reader.api.ReaderWritingMode, boolean):com.onyx.android.sdk.reader.impl.ReaderSelectionImpl");
    }

    @Nullable
    public final ReaderSelectionImpl selectOnScreen(@NotNull RectF pageOriginSize, @NotNull ReaderHitTestArgs start, @NotNull ReaderHitTestArgs end, @NotNull ReaderHitTestOptions hitTestOptions) {
        Intrinsics.checkNotNullParameter(pageOriginSize, "pageOriginSize");
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(end, "end");
        Intrinsics.checkNotNullParameter(hitTestOptions, "hitTestOptions");
        return m34700k(pageOriginSize, start, end, this.pageWritingMode, hitTestOptions.getIsSelectingWord());
    }

    public final void setCharInfoList(@NotNull List<ReaderCharInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.charInfoList = list;
    }

    public final void setPagePosition(@NotNull ReaderPosition readerPosition) {
        Intrinsics.checkNotNullParameter(readerPosition, "<set-?>");
        this.pagePosition = readerPosition;
    }

    public /* synthetic */ FixedDocumentPageTextHelper(ReaderPosition readerPosition, List list, ReaderWritingMode readerWritingMode, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(readerPosition, list, (i & 4) != 0 ? ReaderWritingMode.UNKNOWN : readerWritingMode);
    }
}
