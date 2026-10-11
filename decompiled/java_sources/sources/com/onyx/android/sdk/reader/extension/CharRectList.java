package com.onyx.android.sdk.reader.extension;

import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.LineUtils;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u000f\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b(\u0010)J\u001e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002*\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0016\u0010\u000f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003J\u0016\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003J\u0016\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003J\u0016\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0003J\u0016\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003J\u0016\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0003J\u001a\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000e\u001a\u00020\u0003H\u0002R\u0014\u0010\u001e\u001a\u00020\u00138\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010#\u001a\u00020\u00138\u0002X\u0082T¢\u0006\u0006\n\u0004\b\"\u0010\u001dR\u0014\u0010%\u001a\u00020\u00138\u0002X\u0082T¢\u0006\u0006\n\u0004\b$\u0010\u001dR\u0014\u0010'\u001a\u00020\u00138\u0002X\u0082T¢\u0006\u0006\n\u0004\b&\u0010\u001d¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/extension/CharRectList;", "", "", "Landroid/graphics/RectF;", "", "isHorizontalChar", "mergeLineRectanglesByWord", "mergeRectanglesByMostHorizontalBaseLine", "mergeRectanglesByVerticalBaseLine", "mergeRectanglesByMostVerticalBaseLine", "mergeRectanglesByBaseLine", "mergeBlockRectanglesByVerticalWord", "mergeBlockRectanglesByWord", "blockRect", "wordRect", "isWordInBlock", "isVerticalWordInBlock", "rect1", "rect2", "", "compareBaseLineInVertical", "o1", "o2", "isSameBaseLineInVertical", "compareBaseLine", "isSameBaseLine", "lastWordRect", "", "a", "I", "WORD_SPACING", "b", "F", "WORD_EXPAND", "c", "PUNCTUATION_WORD_VERTICAL_SPACING", "d", "PUNCTUATION_DIFF_RATIO", "e", "TOLERANCE", Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCharRectList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharRectList.kt\ncom/onyx/android/sdk/reader/extension/CharRectList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,240:1\n766#2:241\n857#2,2:242\n766#2:244\n857#2,2:245\n766#2:247\n857#2,2:248\n766#2:250\n857#2,2:251\n766#2:253\n857#2,2:254\n766#2:256\n857#2,2:257\n766#2:259\n857#2,2:260\n*S KotlinDebug\n*F\n+ 1 CharRectList.kt\ncom/onyx/android/sdk/reader/extension/CharRectList\n*L\n30#1:241\n30#1:242,2\n44#1:244\n44#1:245,2\n58#1:247\n58#1:248,2\n79#1:250\n79#1:251,2\n93#1:253\n93#1:254,2\n114#1:256\n114#1:257,2\n150#1:259\n150#1:260,2\n*E\n"})
/* loaded from: classes8.dex */
public final class CharRectList {

    @NotNull
    public static final CharRectList INSTANCE = new CharRectList();

    /* renamed from: a, reason: from kotlin metadata */
    public static final int WORD_SPACING = 20;

    /* renamed from: b, reason: from kotlin metadata */
    public static final float WORD_EXPAND = 1.5f;

    /* renamed from: c, reason: from kotlin metadata */
    public static final int PUNCTUATION_WORD_VERTICAL_SPACING = -3;

    /* renamed from: d, reason: from kotlin metadata */
    public static final int PUNCTUATION_DIFF_RATIO = 2;

    /* renamed from: e, reason: from kotlin metadata */
    public static final int TOLERANCE = 10;

    /* renamed from: a */
    public final float m34701a(RectF lastWordRect, RectF wordRect) {
        Intrinsics.checkNotNull(lastWordRect);
        return Float.max((Float.max(lastWordRect.width(), lastWordRect.height()) + Float.max(wordRect.width(), wordRect.height())) * 1.5f, 20.0f);
    }

    public final int compareBaseLine(@NotNull RectF rect1, @NotNull RectF rect2) {
        Intrinsics.checkNotNullParameter(rect1, "rect1");
        Intrinsics.checkNotNullParameter(rect2, "rect2");
        int i = (int) (rect1.bottom - rect2.bottom);
        if (Math.abs(i) < 10 && rect1.top < rect2.bottom && rect2.top < rect1.bottom) {
            return 0;
        }
        float f = rect1.top;
        float f2 = rect2.top;
        if ((f <= f2 && rect1.bottom >= rect2.bottom) || (f2 <= f && rect2.bottom >= rect1.bottom)) {
            return 0;
        }
        float min = Math.min(rect1.bottom, rect2.bottom) - Float.max(rect1.top, rect2.top);
        float f3 = 2;
        if (min > rect1.height() / f3 || min > rect2.height() / f3) {
            return 0;
        }
        return i;
    }

    public final int compareBaseLineInVertical(@NotNull RectF rect1, @NotNull RectF rect2) {
        Intrinsics.checkNotNullParameter(rect1, "rect1");
        Intrinsics.checkNotNullParameter(rect2, "rect2");
        int i = (int) (rect1.left - rect2.left);
        if (Math.abs(i) < 10 && rect1.left < rect2.right && rect2.left < rect1.right) {
            return 0;
        }
        float f = rect1.right;
        float f2 = rect2.right;
        if ((f <= f2 && rect1.left >= rect2.left) || (f2 <= f && rect2.left >= rect1.left)) {
            return 0;
        }
        float min = Math.min(f, f2) - Float.max(rect1.left, rect2.left);
        float f3 = 2;
        if (min > rect1.width() / f3 || min > rect2.width() / f3) {
            return 0;
        }
        return i;
    }

    public final boolean isSameBaseLine(@NotNull RectF o1, @NotNull RectF o2) {
        Intrinsics.checkNotNullParameter(o1, "o1");
        Intrinsics.checkNotNullParameter(o2, "o2");
        return compareBaseLine(o1, o2) == 0;
    }

    public final boolean isSameBaseLineInVertical(@NotNull RectF o1, @NotNull RectF o2) {
        Intrinsics.checkNotNullParameter(o1, "o1");
        Intrinsics.checkNotNullParameter(o2, "o2");
        return compareBaseLineInVertical(o1, o2) == 0;
    }

    public final boolean isVerticalWordInBlock(@NotNull RectF blockRect, @NotNull RectF wordRect) {
        Intrinsics.checkNotNullParameter(blockRect, "blockRect");
        Intrinsics.checkNotNullParameter(wordRect, "wordRect");
        return compareBaseLineInVertical(blockRect, wordRect) == 0;
    }

    public final boolean isWordInBlock(@NotNull RectF blockRect, @NotNull RectF wordRect) {
        Intrinsics.checkNotNullParameter(blockRect, "blockRect");
        Intrinsics.checkNotNullParameter(wordRect, "wordRect");
        boolean z = wordRect.height() * ((float) 2) < blockRect.height();
        if (compareBaseLine(blockRect, wordRect) != 0) {
            return z && blockRect.bottom - wordRect.top > -3.0f;
        }
        return true;
    }

    @NotNull
    public final List<RectF> mergeBlockRectanglesByVerticalWord(@NotNull List<? extends RectF> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList<RectF> arrayList = new ArrayList();
        for (Object obj : list) {
            if (!((RectF) obj).isEmpty()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        RectF rectF = null;
        RectF rectF2 = null;
        for (RectF rectF3 : arrayList) {
            if (rectF == null) {
                rectF = new RectF(rectF3);
                arrayList2.add(rectF);
            } else {
                if (RectUtils.INSTANCE.getDistance(rectF2, rectF3) >= m34701a(rectF2, rectF3) || !isVerticalWordInBlock(rectF, rectF3)) {
                    rectF = new RectF(rectF3);
                    arrayList2.add(rectF);
                } else {
                    rectF.union(rectF3);
                }
            }
            rectF2 = rectF3;
        }
        return arrayList2;
    }

    @NotNull
    public final List<RectF> mergeBlockRectanglesByWord(@NotNull List<? extends RectF> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList<RectF> arrayList = new ArrayList();
        for (Object obj : list) {
            if (!((RectF) obj).isEmpty()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        RectF rectF = null;
        RectF rectF2 = null;
        for (RectF rectF3 : arrayList) {
            if (rectF == null) {
                rectF = new RectF(rectF3);
                arrayList2.add(rectF);
            } else {
                if (RectUtils.INSTANCE.getDistance(rectF2, rectF3) >= m34701a(rectF2, rectF3) || !isWordInBlock(rectF, rectF3)) {
                    rectF = new RectF(rectF3);
                    arrayList2.add(rectF);
                } else {
                    rectF.union(rectF3);
                }
            }
            rectF2 = rectF3;
        }
        return arrayList2;
    }

    @NotNull
    public final List<RectF> mergeLineRectanglesByWord(@NotNull List<? extends RectF> list, boolean z) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!((RectF) obj).isEmpty()) {
                arrayList.add(obj);
            }
        }
        List<RectF> mergeBlockRectanglesByWord = z ? mergeBlockRectanglesByWord(arrayList) : mergeBlockRectanglesByVerticalWord(arrayList);
        return z ? mergeRectanglesByMostHorizontalBaseLine(mergeBlockRectanglesByWord) : mergeRectanglesByMostVerticalBaseLine(mergeBlockRectanglesByWord);
    }

    @NotNull
    public final List<RectF> mergeRectanglesByBaseLine(@NotNull List<? extends RectF> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList<RectF> arrayList = new ArrayList();
        for (Object obj : list) {
            if (!((RectF) obj).isEmpty()) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        for (RectF rectF : arrayList) {
            if (arrayList2.isEmpty()) {
                arrayList2.add(new RectF(rectF));
            } else {
                RectF rectF2 = (RectF) arrayList2.get(arrayList2.size() - 1);
                if (compareBaseLine(rectF, rectF2) == 0) {
                    rectF2.union(rectF);
                } else {
                    arrayList2.add(new RectF(rectF));
                }
            }
        }
        return arrayList2;
    }

    @NotNull
    public final List<RectF> mergeRectanglesByMostHorizontalBaseLine(@NotNull List<? extends RectF> list) {
        List<? extends RectF> mutableList;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<? extends RectF> arrayList = new ArrayList<>();
        Iterator<T> it2 = list.iterator();
        while (true) {
            boolean z = false;
            if (!it2.hasNext()) {
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
                mutableList.removeAll(arrayList);
                Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(list), "horizontal count = " + mutableList.size() + ", vertical count = " + arrayList.size(), new Object[0]);
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(mergeRectanglesByBaseLine(mutableList));
                arrayList2.addAll(mergeRectanglesByVerticalBaseLine(arrayList));
                return arrayList2;
            }
            Object next = it2.next();
            RectF rectF = (RectF) next;
            if (!rectF.isEmpty() && LineUtils.INSTANCE.isVerticalLine(rectF.width(), rectF.height())) {
                z = true;
            }
            if (z) {
                arrayList.add(next);
            }
        }
    }

    @NotNull
    public final List<RectF> mergeRectanglesByMostVerticalBaseLine(@NotNull List<? extends RectF> list) {
        List<? extends RectF> mutableList;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<? extends RectF> arrayList = new ArrayList<>();
        Iterator<T> it2 = list.iterator();
        while (true) {
            boolean z = false;
            if (!it2.hasNext()) {
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
                mutableList.removeAll(arrayList);
                Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(list), "vertical count = " + mutableList.size() + ", horizontal count = " + arrayList.size(), new Object[0]);
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(mergeRectanglesByVerticalBaseLine(mutableList));
                arrayList2.addAll(mergeRectanglesByBaseLine(arrayList));
                return arrayList2;
            }
            Object next = it2.next();
            RectF rectF = (RectF) next;
            if (!rectF.isEmpty() && LineUtils.INSTANCE.isHorizontalLine(rectF.width(), rectF.height())) {
                z = true;
            }
            if (z) {
                arrayList.add(next);
            }
        }
    }

    @NotNull
    public final List<RectF> mergeRectanglesByVerticalBaseLine(@NotNull List<? extends RectF> list) {
        List<RectF> emptyList;
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList<RectF> arrayList = new ArrayList();
        for (Object obj : list) {
            if (!((RectF) obj).isEmpty()) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList2 = new ArrayList();
        for (RectF rectF : arrayList) {
            if (arrayList2.isEmpty()) {
                arrayList2.add(new RectF(rectF));
            } else {
                RectF rectF2 = (RectF) arrayList2.get(arrayList2.size() - 1);
                if (compareBaseLineInVertical(rectF, rectF2) == 0) {
                    rectF2.union(rectF);
                } else {
                    arrayList2.add(new RectF(rectF));
                }
            }
        }
        return arrayList2;
    }
}
