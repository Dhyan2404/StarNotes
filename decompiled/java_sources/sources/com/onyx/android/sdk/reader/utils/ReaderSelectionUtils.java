package com.onyx.android.sdk.reader.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Region;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.LineUtils;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.UriUtils;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.reader.api.ReaderSelectTextArgs;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.api.ReaderWritingMode;
import com.onyx.android.sdk.reader.api.ReaderWritingModeKt;
import com.onyx.android.sdk.reader.extension.CharRectList;
import com.onyx.android.sdk.readercore.C7592R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0010\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b:\u0010;J\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u001e\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0003J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0003J\u0014\u0010\u0011\u001a\u00020\u00102\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002J\u0014\u0010\u0012\u001a\u00020\u00102\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002J4\u0010\u001a\u001a\u00020\u00192\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0007J\u0014\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00050\u00022\u0006\u0010\u001c\u001a\u00020\u001bJ\u0010\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0003H\u0002J\u0016\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00050\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0016\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00050\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00050\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0018\u0010$\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0005H\u0002J\u001e\u0010'\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u00052\f\u0010&\u001a\b\u0012\u0004\u0012\u00020%0\u0002H\u0002J\u0010\u0010(\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J&\u0010+\u001a\u00020\u00072\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00050\u00022\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010*\u001a\u00020\u0007H\u0002J\u0010\u0010.\u001a\u00020\u00192\u0006\u0010-\u001a\u00020,H\u0002R\u0014\u00100\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b(\u0010/R\u0014\u00102\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\b+\u00101R\u0014\u00103\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\b$\u00101R\u0014\u00104\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\b.\u00101R\u0014\u00105\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001e\u00101R\u0014\u00106\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\b'\u00101R\u0014\u00107\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\b!\u00101R\u0014\u00108\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\b \u00101R\u0014\u00109\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001f\u00101¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;", "", "", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "list", "Landroid/graphics/RectF;", "getAllCharRectList", "", "x", "y", "lastText", "", "canExtendSelectionToLastText", "link", "", "ensureParseLinkType", "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;", "analysePageWritingModeByCharRect", "analysePageWritingModeByBlockRect", "rectList", "Landroid/graphics/Bitmap;", "bitmap", "scale", "offsetX", "offsetY", "", "testDrawLineRect", "Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;", "args", "selectCharRectList", "e", "i", C6999h.f39688c, C6998g.f39679a, "selectedRect", "charRect", "c", "Landroid/graphics/Region;", "regions", C6997f.f39671c, "a", "allCharRectList", "maxUnderlineDistanceThreshold", "b", "", NotificationCompat.CATEGORY_MESSAGE, "d", Constants.HASIDCALL_INDEX_SIG, "DEBUG", "F", "LINE_CHAR_EXPAND_PERCENT_SMALL", "LINE_CHAR_EXPAND_PERCENT_NORMAL", "LINE_CHAR_INTERSECT_PERCENT", "UNDERLINE_COVER_CHAR_LINE_PERCENT", "COVER_CHAR_INTERSECT_PERCENT", "UNDERLINE_DISTANCE_THRESHOLD_MIN", "UNDERLINE_DISTANCE_THRESHOLD_MAX", "VERTICAL_MIN_PROPORTION", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nReaderSelectionUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderSelectionUtils.kt\ncom/onyx/android/sdk/reader/utils/ReaderSelectionUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,330:1\n1360#2:331\n1446#2,5:332\n1864#2,3:337\n766#2:340\n857#2,2:341\n1855#2:343\n1855#2,2:344\n1856#2:346\n1747#2,3:347\n*S KotlinDebug\n*F\n+ 1 ReaderSelectionUtils.kt\ncom/onyx/android/sdk/reader/utils/ReaderSelectionUtils\n*L\n51#1:331\n51#1:332,5\n145#1:337,3\n164#1:340\n164#1:341,2\n172#1:343\n175#1:344,2\n172#1:346\n260#1:347,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ReaderSelectionUtils {

    /* renamed from: a, reason: from kotlin metadata */
    public static final boolean DEBUG = false;

    /* renamed from: g, reason: from kotlin metadata */
    public static final float UNDERLINE_DISTANCE_THRESHOLD_MIN = 0.0f;

    @NotNull
    public static final ReaderSelectionUtils INSTANCE = new ReaderSelectionUtils();

    /* renamed from: b, reason: from kotlin metadata */
    public static final float LINE_CHAR_EXPAND_PERCENT_SMALL = 0.4f;

    /* renamed from: c, reason: from kotlin metadata */
    public static final float LINE_CHAR_EXPAND_PERCENT_NORMAL = 0.7f;

    /* renamed from: d, reason: from kotlin metadata */
    public static final float LINE_CHAR_INTERSECT_PERCENT = 0.33f;

    /* renamed from: e, reason: from kotlin metadata */
    public static final float UNDERLINE_COVER_CHAR_LINE_PERCENT = 0.8f;

    /* renamed from: f, reason: from kotlin metadata */
    public static final float COVER_CHAR_INTERSECT_PERCENT = 0.25f;

    /* renamed from: h, reason: from kotlin metadata */
    public static final float UNDERLINE_DISTANCE_THRESHOLD_MAX = 10.0f;

    /* renamed from: i, reason: from kotlin metadata */
    public static final float VERTICAL_MIN_PROPORTION = 0.7f;

    /* renamed from: a */
    public final RectF m34847a(ReaderSelectTextArgs args) {
        RectF shapeRect = args.getShapeRect();
        List<RectF> allCharRectList = args.getAllCharRectList();
        boolean isHorizontalLine = LineUtils.INSTANCE.isHorizontalLine(shapeRect.width(), shapeRect.height());
        float m34848b = m34848b(allCharRectList, shapeRect, args.getIsScreenPage() ? UNDERLINE_DISTANCE_THRESHOLD_MAX : DimenUtils.INSTANCE.dip2px(ResManager.INSTANCE.getAppContext(), UNDERLINE_DISTANCE_THRESHOLD_MAX));
        RectF rectF = new RectF(shapeRect);
        if (isHorizontalLine) {
            rectF.top -= m34848b;
        } else {
            rectF.right += m34848b;
        }
        return rectF;
    }

    @NotNull
    public final ReaderWritingMode analysePageWritingModeByBlockRect(@NotNull List<? extends RectF> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        if (list.isEmpty()) {
            return ReaderWritingMode.HORIZONTAL;
        }
        int i = 0;
        int i2 = 0;
        for (RectF rectF : list) {
            i2 += (int) rectF.width();
            i += (int) rectF.height();
        }
        return i > i2 * 2 ? ReaderWritingMode.VERTICAL_RL : ReaderWritingMode.HORIZONTAL;
    }

    @NotNull
    public final ReaderWritingMode analysePageWritingModeByCharRect(@NotNull List<? extends RectF> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        if (list.isEmpty()) {
            return ReaderWritingMode.HORIZONTAL;
        }
        m34850d("analysePageWritingMode char size = " + list.size());
        int size = list.size();
        int i = 0;
        for (int i2 = 1; i2 < size; i2++) {
            RectF rectF = list.get(i2 - 1);
            RectF rectF2 = list.get(i2);
            if (Math.abs(rectF2.centerY() - rectF.centerY()) > Math.abs(rectF2.centerX() - rectF.centerX())) {
                i++;
                if (i2 == list.size() - 1) {
                    i++;
                }
            }
        }
        float f = i;
        boolean z = f > ((float) list.size()) * VERTICAL_MIN_PROPORTION;
        m34850d("analysePageWritingMode proportion = " + ((f * 1.0f) / list.size()));
        return z ? ReaderWritingMode.VERTICAL_RL : ReaderWritingMode.HORIZONTAL;
    }

    /* renamed from: b */
    public final float m34848b(List<? extends RectF> allCharRectList, RectF selectedRect, float maxUnderlineDistanceThreshold) {
        RectF rectF = new RectF(selectedRect);
        LineUtils lineUtils = LineUtils.INSTANCE;
        boolean isHorizontalLine = lineUtils.isHorizontalLine(selectedRect.width(), selectedRect.height());
        boolean isVerticalLine = lineUtils.isVerticalLine(selectedRect.width(), selectedRect.height());
        if (!isHorizontalLine && !isVerticalLine) {
            return maxUnderlineDistanceThreshold;
        }
        float f = LINE_CHAR_EXPAND_PERCENT_NORMAL;
        float f2 = -1.0f;
        for (RectF rectF2 : allCharRectList) {
            rectF.set(selectedRect);
            if (rectF.intersect(rectF2)) {
                f = LINE_CHAR_EXPAND_PERCENT_SMALL;
            }
            rectF.set(selectedRect);
            if (isHorizontalLine) {
                rectF.top -= maxUnderlineDistanceThreshold;
                if (rectF.intersect(rectF2)) {
                    f2 = Math.max(f2, rectF2.height());
                }
            } else {
                rectF.right += maxUnderlineDistanceThreshold;
                if (rectF.intersect(rectF2)) {
                    f2 = Math.max(f2, rectF2.width());
                }
            }
        }
        return MathUtils.INSTANCE.clampFloat(f2 * f, UNDERLINE_DISTANCE_THRESHOLD_MIN, maxUnderlineDistanceThreshold);
    }

    /* renamed from: c */
    public final boolean m34849c(RectF selectedRect, RectF charRect) {
        RectF rectF = new RectF(selectedRect);
        return rectF.intersect(charRect) && rectF.height() * rectF.width() >= (charRect.width() * charRect.height()) * COVER_CHAR_INTERSECT_PERCENT;
    }

    public final boolean canExtendSelectionToLastText(float x, float y, @NotNull ReaderSelection lastText) {
        Object lastOrNull;
        Intrinsics.checkNotNullParameter(lastText, "lastText");
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) lastText.rectangles());
        RectF rectF = (RectF) lastOrNull;
        if (rectF == null) {
            return false;
        }
        float dimens = ResManager.INSTANCE.getDimens(C7592R.dimen.extend_selection_to_last_text_threshold);
        if (lastText.writingMode() == ReaderWritingMode.HORIZONTAL) {
            if (y <= rectF.bottom + dimens) {
                return false;
            }
        } else if (x >= rectF.left - dimens) {
            return false;
        }
        return true;
    }

    /* renamed from: d */
    public final void m34850d(String msg) {
    }

    /* renamed from: e */
    public final int m34851e(ReaderSelection link) {
        if (UriUtils.INSTANCE.isWebsiteUri(link.text())) {
            return 1;
        }
        return StringUtils.isNotBlank(link.text()) ? 2 : 3;
    }

    public final int ensureParseLinkType(@NotNull ReaderSelection link) {
        Intrinsics.checkNotNullParameter(link, "link");
        int linkType = link.linkType();
        return linkType != 0 ? linkType != 2 ? link.linkType() : StringUtils.isNotBlank(link.text()) ? 2 : 3 : m34851e(link);
    }

    /* renamed from: f */
    public final boolean m34852f(RectF charRect, List<? extends Region> regions) {
        boolean z;
        List<? extends Region> list = regions;
        if (list == null || list.isEmpty()) {
            return false;
        }
        int i = 0;
        for (float f = 0.25f; f < 1.0f; f += 0.25f) {
            for (float f2 = 0.25f; f2 < 1.0f; f2 += 0.25f) {
                int width = (int) (charRect.left + (charRect.width() * f));
                int height = (int) (charRect.top + (charRect.height() * f2));
                List<? extends Region> list2 = regions;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    Iterator<T> it2 = list2.iterator();
                    while (it2.hasNext()) {
                        if (((Region) it2.next()).contains(width, height)) {
                            z = true;
                            break;
                        }
                    }
                }
                z = false;
                if (z) {
                    i++;
                }
            }
        }
        return i >= 7;
    }

    /* renamed from: g */
    public final List<RectF> m34853g(ReaderSelectTextArgs args) {
        List<RectF> emptyList;
        List<RectF> emptyList2;
        List<RectF> allCharRectList = args.getAllCharRectList();
        boolean isHorizontalLine = LineUtils.INSTANCE.isHorizontalLine(args.getShapeRect().width(), args.getShapeRect().height());
        boolean z = !ReaderWritingModeKt.isVertical(analysePageWritingModeByCharRect(allCharRectList));
        if (isHorizontalLine ^ z) {
            m34850d("the shape orientation is different for text.");
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList2;
        }
        RectF m34847a = m34847a(args);
        List<RectF> mergeLineRectanglesByWord = CharRectList.INSTANCE.mergeLineRectanglesByWord(allCharRectList, z);
        ArrayList arrayList = new ArrayList();
        for (RectF rectF : mergeLineRectanglesByWord) {
            if (RectUtils.INSTANCE.isIntersect(rectF, m34847a)) {
                RectF rectF2 = isHorizontalLine ? new RectF(args.getShapeRect().left, rectF.top, args.getShapeRect().right, rectF.bottom) : new RectF(rectF.left, args.getShapeRect().top, rectF.right, args.getShapeRect().bottom);
                ArrayList arrayList2 = new ArrayList();
                arrayList.add(arrayList2);
                for (RectF rectF3 : allCharRectList) {
                    RectUtils rectUtils = RectUtils.INSTANCE;
                    if (rectUtils.contains(rectF, rectF3) && rectUtils.isIntersect(rectF2, rectF3)) {
                        arrayList2.add(rectF3);
                    }
                }
            }
        }
        if (arrayList.isEmpty() || arrayList.size() > 2) {
            m34850d("selected line > 2 line or null, size = " + arrayList.size());
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        if (arrayList.size() == 2) {
            RectF boundingRect = RectUtils.INSTANCE.boundingRect((List) arrayList.get(1));
            RectF copy = RectFKt.copy(args.getShapeRect());
            if (copy.intersect(boundingRect) && copy.width() * copy.height() > boundingRect.width() * boundingRect.height() * UNDERLINE_COVER_CHAR_LINE_PERCENT) {
                m34850d("the shape most intersects second line");
                return (List) arrayList.get(1);
            }
        }
        return (List) arrayList.get(0);
    }

    @NotNull
    public final List<RectF> getAllCharRectList(@NotNull List<? extends ReaderSelection> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, ((ReaderSelection) it2.next()).charRectList());
        }
        return arrayList;
    }

    /* renamed from: h */
    public final List<RectF> m34854h(ReaderSelectTextArgs args) {
        List<RectF> allCharRectList = args.getAllCharRectList();
        List<RectF> mergeLineRectanglesByWord = CharRectList.INSTANCE.mergeLineRectanglesByWord(allCharRectList, !ReaderWritingModeKt.isVertical(analysePageWritingModeByCharRect(allCharRectList)));
        ArrayList arrayList = new ArrayList();
        for (RectF rectF : mergeLineRectanglesByWord) {
            if (RectUtils.INSTANCE.isIntersect(rectF, args.getShapeRect())) {
                RectF rectF2 = new RectF();
                for (RectF rectF3 : allCharRectList) {
                    if (INSTANCE.m34849c(args.getShapeRect(), rectF3) && RectUtils.INSTANCE.isIntersect(rectF, rectF3)) {
                        rectF2.union(rectF3);
                    }
                }
                if (RectUtils.INSTANCE.isNotBlank(rectF2)) {
                    arrayList.add(rectF2);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: i */
    public final List<RectF> m34855i(ReaderSelectTextArgs args) {
        List<RectF> allCharRectList = args.getAllCharRectList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : allCharRectList) {
            if (INSTANCE.m34852f((RectF) obj, args.getShapeRegionList())) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<RectF> selectCharRectList(@NotNull ReaderSelectTextArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return args.getIsLine() ? m34853g(args) : args.getIsCover() ? m34854h(args) : m34855i(args);
    }

    public final void testDrawLineRect(@NotNull List<? extends RectF> rectList, @NotNull Bitmap bitmap, float scale, float offsetX, float offsetY) {
        Intrinsics.checkNotNullParameter(rectList, "rectList");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        List<RectF> mergeLineRectanglesByWord = CharRectList.INSTANCE.mergeLineRectanglesByWord(rectList, true);
        Matrix matrix = new Matrix();
        matrix.postScale(scale, scale);
        matrix.postTranslate(offsetX, offsetY);
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint();
        int[] iArr = {-65536, -16711936};
        paint.setColor(-65536);
        paint.setStyle(Paint.Style.STROKE);
        int i = 0;
        for (Object obj : mergeLineRectanglesByWord) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            RectF copy = RectFKt.copy((RectF) obj);
            matrix.mapRect(copy);
            paint.setColor(iArr[i % 2]);
            canvas.drawRect(copy, paint);
            i = i2;
        }
    }
}
