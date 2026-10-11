package com.onyx.android.sdk.neohwr.layout;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.util.SizeF;
import androidx.lifecycle.SavedStateHandle;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.neohwr.fontmgr.FontNative;
import com.onyx.android.sdk.neohwr.fontmgr.GlyphPath;
import com.onyx.android.sdk.neohwr.layout.TextLayoutEngine;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.function.IntConsumer;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 32\u00020\u0001:\u00013B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002J\u0016\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\fH\u0002J\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\fJ\"\u0010\u0013\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0014\u001a\u00020\u00152\u0010\u0010\u0016\u001a\f\u0012\u0004\u0012\u00020\u00170\fj\u0002`\u0018J\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u000f0\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\fJR\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00040\u001b2\u0006\u0010\u001d\u001a\u00020\r2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\f2\u0006\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020%H\u0002J,\u0010&\u001a\f\u0012\u0004\u0012\u00020\u00170\fj\u0002`\u00182\u0010\u0010\u0016\u001a\f\u0012\u0004\u0012\u00020\u00170\fj\u0002`\u00182\u0006\u0010$\u001a\u00020%H\u0002J\u0016\u0010'\u001a\u00020\u00042\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\fH\u0002J\u0016\u0010(\u001a\u00020\u00042\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\fH\u0002J.\u0010)\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\f2\u0006\u0010*\u001a\u00020+2\u0006\u0010$\u001a\u00020%2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002J<\u0010,\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001f0\f\u0018\u00010\u001b2\u0006\u0010*\u001a\u00020+2\u0006\u0010-\u001a\u00020\u00152\u0006\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u0004H\u0002J4\u00100\u001a\u0016\u0012\u0004\u0012\u00020\u001f\u0018\u000101j\n\u0012\u0004\u0012\u00020\u001f\u0018\u0001`22\u0006\u0010*\u001a\u00020+2\u0006\u0010-\u001a\u00020\u00152\u0006\u0010.\u001a\u00020\u0004H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u00064"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;", "", "()V", "minFontSize", "", "getMinFontSize", "()F", "setMinFontSize", "(F)V", "countExpansionPositions", "", "textSegments", "", "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;", "createBlock", "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;", "lines", "Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;", "createBlocks", "createLineBox", "font", "", "chars", "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;", "Lcom/onyx/android/sdk/neohwr/layout/TextCharBoxList;", "createSingleLineBlocks", "createTextRun", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;", "segment", "glyphs", "Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;", "fontPath", "textSize", "left", "baseline", "lineMatrix", "Landroid/graphics/Matrix;", "deskewCharBoxes", "glyphsWidth", "guessLineAngle", "layoutCharacters", "fontNative", "Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;", "loadBestTextGlyphs", "text", "pixelSize", "widthLimit", "loadTextGlyphs", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "Companion", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTextLayoutEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,766:1\n1789#2,3:767\n1789#2,3:770\n1789#2,3:773\n1855#2,2:782\n1864#2,3:784\n1864#2,3:787\n1477#2:795\n1502#2,3:796\n1505#2,3:806\n1360#2:809\n1446#2,2:810\n1549#2:812\n1620#2,3:813\n1549#2:816\n1620#2,3:817\n1448#2,3:820\n1549#2:823\n1620#2,2:824\n1789#2,3:826\n1622#2:829\n766#2:840\n857#2,2:841\n3464#2,10:843\n1549#2:853\n1620#2,3:854\n1864#2,3:857\n1789#2,3:865\n703#3,5:776\n703#3,5:790\n703#3,5:830\n703#3,5:835\n703#3,5:860\n1#4:781\n372#5,7:799\n*S KotlinDebug\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine\n*L\n417#1:767,3\n442#1:770,3\n455#1:773,3\n476#1:782,2\n512#1:784,3\n552#1:787,3\n619#1:795\n619#1:796,3\n619#1:806,3\n621#1:809\n621#1:810,2\n623#1:812\n623#1:813,3\n629#1:816\n629#1:817,3\n621#1:820,3\n634#1:823\n634#1:824,2\n641#1:826,3\n634#1:829\n658#1:840\n658#1:841,2\n666#1:843,10\n690#1:853\n690#1:854,3\n697#1:857,3\n757#1:865,3\n459#1:776,5\n614#1:790,5\n655#1:830,5\n656#1:835,5\n750#1:860,5\n619#1:799,7\n*E\n"})
/* loaded from: classes7.dex */
public final class TextLayoutEngine {

    @NotNull
    private static final Set<Locale> CJKLocales;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final Set<Character> baselineExceptions;
    private static final Locale defaultLocale;
    private static final float lineAngleIgnoreThreshold = 15.0f;
    public static final float lineDeskewDetectionThreshold = 10.0f;
    private static final float rectSizeToTextSizeMaxScale = 4.0f;
    private static final float rectSizeToTextSizeMinScale = 0.25f;
    private float minFontSize;

    @Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\f\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0006 !\"#$%B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0005H\u0002J\u000e\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0018\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b2\u0010\u0010\u001d\u001a\f\u0012\u0004\u0012\u00020\u00110\u001bj\u0002`\u001eJ\u001e\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b2\u0010\u0010\u001d\u001a\f\u0012\u0004\u0012\u00020\u00110\u001bj\u0002`\u001eR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n \t*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;", "", "()V", "CJKLocales", "", Constants.LOCALE_SIG, "baselineExceptions", "", "defaultLocale", "kotlin.jvm.PlatformType", "lineAngleIgnoreThreshold", "", "lineDeskewDetectionThreshold", "rectSizeToTextSizeMaxScale", "rectSizeToTextSizeMinScale", "getCharacterLocale", "ch", "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;", "isCJKCharacter", "", "codePoint", "", "isCJKLocale", "locale", "isCJKPunctuation", "isLocaleMatches", "segmentCharacters", "", "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;", "chars", "Lcom/onyx/android/sdk/neohwr/layout/TextCharBoxList;", "segmentCharactersByDistance", "BaselineCalculator", "TextDistanceSegmenter", "TextScriptSegmenter", "TextSegment", "TextSegmenter", "TextWhiteSpaceSegmenter", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nTextLayoutEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,766:1\n1789#2,3:767\n1789#2,3:770\n*S KotlinDebug\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion\n*L\n378#1:767,3\n391#1:770,3\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {

        @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0010\u0010\u0005\u001a\f\u0012\u0004\u0012\u00020\u00070\u0006j\u0002`\bJ\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0002¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator;", "", "()V", "calculateBaseline", "", "chars", "", "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;", "Lcom/onyx/android/sdk/neohwr/layout/TextCharBoxList;", "median", SavedStateHandle.f7922f, "", "percentile", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        @SourceDebugExtension({"SMAP\nTextLayoutEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,766:1\n1549#2:767\n1620#2,3:768\n1549#2:771\n1620#2,3:772\n766#2:775\n857#2,2:776\n1549#2:778\n1620#2,3:779\n3837#3:782\n4357#3,2:783\n*S KotlinDebug\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator\n*L\n88#1:767\n88#1:768,3\n89#1:771\n89#1:772,3\n98#1:775\n98#1:776,2\n98#1:778\n98#1:779,3\n114#1:782\n114#1:783,2\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class BaselineCalculator {

            @NotNull
            public static final BaselineCalculator INSTANCE = new BaselineCalculator();

            private BaselineCalculator() {
            }

            private final float median(float[] values) {
                List sorted;
                sorted = ArraysKt___ArraysKt.sorted((float[]) values.clone());
                int size = sorted.size();
                if (size % 2 != 0) {
                    return ((Number) sorted.get(size / 2)).floatValue();
                }
                int i = size / 2;
                return (((Number) sorted.get(i - 1)).floatValue() + ((Number) sorted.get(i)).floatValue()) / 2.0f;
            }

            private final float percentile(float[] values, float percentile) {
                List sorted;
                sorted = ArraysKt___ArraysKt.sorted((float[]) values.clone());
                float size = (percentile / 100.0f) * (sorted.size() - 1);
                int i = (int) size;
                int ceil = (int) Math.ceil(size);
                if (i == ceil) {
                    return ((Number) sorted.get(i)).floatValue();
                }
                float f = size - i;
                return (((Number) sorted.get(ceil)).floatValue() * f) + (((Number) sorted.get(i)).floatValue() * (1 - f));
            }

            public final float calculateBaseline(@NotNull List<TextCharBox> chars) {
                int collectionSizeOrDefault;
                float[] floatArray;
                int collectionSizeOrDefault2;
                float[] floatArray2;
                int collectionSizeOrDefault3;
                float[] floatArray3;
                float[] floatArray4;
                Intrinsics.checkNotNullParameter(chars, "chars");
                int size = chars.size();
                List<TextCharBox> list = chars;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(Float.valueOf(((TextCharBox) it2.next()).getRegion().bottom));
                }
                floatArray = CollectionsKt___CollectionsKt.toFloatArray(arrayList);
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                Iterator<T> it3 = list.iterator();
                while (it3.hasNext()) {
                    arrayList2.add(Float.valueOf(((TextCharBox) it3.next()).getRegion().height()));
                }
                floatArray2 = CollectionsKt___CollectionsKt.toFloatArray(arrayList2);
                double d = (r5 - r7) * 1.5d;
                double percentile = percentile(floatArray2, 25.0f) - d;
                double percentile2 = percentile(floatArray2, 75.0f) + d;
                ArrayList arrayList3 = new ArrayList();
                Iterator<T> it4 = list.iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        break;
                    }
                    Object next = it4.next();
                    double height = ((TextCharBox) next).getRegion().height();
                    if (percentile <= height && height <= percentile2) {
                        arrayList3.add(next);
                    }
                }
                collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10);
                ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault3);
                Iterator it5 = arrayList3.iterator();
                while (it5.hasNext()) {
                    arrayList4.add(Float.valueOf(((TextCharBox) it5.next()).getRegion().bottom));
                }
                floatArray3 = CollectionsKt___CollectionsKt.toFloatArray(arrayList4);
                double d2 = size;
                if (floatArray3.length >= Math.max(3, (int) (0.3d * d2))) {
                    floatArray = floatArray3;
                }
                double d3 = (r2 - r1) * 1.5d;
                double percentile3 = percentile(floatArray, 25.0f) - d3;
                double percentile4 = percentile(floatArray, 75.0f) + d3;
                ArrayList arrayList5 = new ArrayList();
                for (float f : floatArray) {
                    double d4 = f;
                    if (percentile3 <= d4 && d4 <= percentile4) {
                        arrayList5.add(Float.valueOf(f));
                    }
                }
                floatArray4 = CollectionsKt___CollectionsKt.toFloatArray(arrayList5);
                if (floatArray4.length >= Math.max(2, (int) (d2 * 0.2d))) {
                    floatArray = floatArray4;
                }
                return median(floatArray);
            }
        }

        @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextDistanceSegmenter;", "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegmenter;", "()V", "computeAverageCharSize", "Landroid/util/SizeF;", "segments", "", "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;", "segment", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        @SourceDebugExtension({"SMAP\nTextLayoutEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextDistanceSegmenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,766:1\n1855#2:767\n1855#2,2:768\n1856#2:770\n1855#2:771\n1864#2,3:772\n1856#2:775\n*S KotlinDebug\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextDistanceSegmenter\n*L\n328#1:767\n329#1:768,2\n328#1:770\n348#1:771\n349#1:772,3\n348#1:775\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class TextDistanceSegmenter implements TextSegmenter {
            private final SizeF computeAverageCharSize(List<TextSegment> segments) {
                Iterator<T> it2 = segments.iterator();
                float f = 0.0f;
                float f2 = 0.0f;
                int i = 0;
                while (it2.hasNext()) {
                    for (TextCharBox textCharBox : ((TextSegment) it2.next()).getChars()) {
                        if (!Character.isSpaceChar(textCharBox.getText().codePointAt(0))) {
                            f += textCharBox.getRegion().width();
                            f2 += textCharBox.getRegion().height();
                            i++;
                        }
                    }
                }
                float f3 = i;
                return new SizeF(f / f3, f2 / f3);
            }

            @Override // com.onyx.android.sdk.neohwr.layout.TextLayoutEngine.Companion.TextSegmenter
            @NotNull
            public List<TextSegment> segment(@NotNull List<TextSegment> segments) {
                int lastIndex;
                Object last;
                Intrinsics.checkNotNullParameter(segments, "segments");
                ArrayList arrayList = new ArrayList();
                SizeF computeAverageCharSize = computeAverageCharSize(segments);
                ArrayList arrayList2 = new ArrayList();
                for (TextSegment textSegment : segments) {
                    int i = 0;
                    for (Object obj : textSegment.getChars()) {
                        int i2 = i + 1;
                        if (i < 0) {
                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                        }
                        TextCharBox textCharBox = (TextCharBox) obj;
                        if (!arrayList2.isEmpty()) {
                            float f = textCharBox.getRegion().left;
                            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) arrayList2);
                            float f2 = f - ((TextCharBox) last).getRegion().right;
                            if (f2 >= computeAverageCharSize.getWidth() * 1.0f && f2 >= computeAverageCharSize.getHeight() * 1.0f) {
                                arrayList.add(TextSegment.INSTANCE.create(arrayList2, textSegment.getLocale()));
                                arrayList2 = new ArrayList();
                            }
                        }
                        arrayList2.add(textCharBox);
                        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(textSegment.getChars());
                        if (i == lastIndex) {
                            arrayList.add(TextSegment.INSTANCE.create(arrayList2, textSegment.getLocale()));
                            arrayList2 = new ArrayList();
                        }
                        i = i2;
                    }
                }
                return arrayList;
            }
        }

        @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextScriptSegmenter;", "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegmenter;", "()V", "segment", "", "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;", "segments", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        @SourceDebugExtension({"SMAP\nTextLayoutEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextScriptSegmenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,766:1\n1855#2:767\n1864#2,3:768\n1856#2:771\n*S KotlinDebug\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextScriptSegmenter\n*L\n273#1:767\n274#1:768,3\n273#1:771\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class TextScriptSegmenter implements TextSegmenter {
            @Override // com.onyx.android.sdk.neohwr.layout.TextLayoutEngine.Companion.TextSegmenter
            @NotNull
            public List<TextSegment> segment(@NotNull List<TextSegment> segments) {
                int lastIndex;
                Intrinsics.checkNotNullParameter(segments, "segments");
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                Locale element = Locale.US;
                for (TextSegment textSegment : segments) {
                    int i = 0;
                    for (Object obj : textSegment.getChars()) {
                        int i2 = i + 1;
                        if (i < 0) {
                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                        }
                        TextCharBox textCharBox = (TextCharBox) obj;
                        if (!arrayList2.isEmpty()) {
                            Companion companion = TextLayoutEngine.INSTANCE;
                            Intrinsics.checkNotNullExpressionValue(element, "element");
                            if (!companion.isLocaleMatches(element, textCharBox)) {
                                arrayList.add(TextSegment.INSTANCE.create(arrayList2, element));
                                arrayList2 = new ArrayList();
                            }
                        }
                        arrayList2.add(textCharBox);
                        element = TextLayoutEngine.INSTANCE.getCharacterLocale(textCharBox);
                        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(textSegment.getChars());
                        if (i == lastIndex) {
                            TextSegment.Companion companion2 = TextSegment.INSTANCE;
                            Intrinsics.checkNotNullExpressionValue(element, "element");
                            arrayList.add(companion2.create(arrayList2, element));
                            arrayList2 = new ArrayList();
                        }
                        i = i2;
                    }
                }
                return arrayList;
            }
        }

        @Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB/\u0012\u0010\u0010\u0002\u001a\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0016\u0010\u0015\u001a\u00020\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0003H\u0002J\u0006\u0010\u0019\u001a\u00020\u001aR\u001b\u0010\u0002\u001a\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;", "", "chars", "", "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;", "Lcom/onyx/android/sdk/neohwr/layout/TextCharBoxList;", "locale", Constants.LOCALE_SIG, "text", "", "region", "Landroid/graphics/RectF;", "(Ljava/util/List;Ljava/util/Locale;Ljava/lang/String;Landroid/graphics/RectF;)V", "getChars", "()Ljava/util/List;", "getLocale", "()Ljava/util/Locale;", "getRegion", "()Landroid/graphics/RectF;", "getText", "()Ljava/lang/String;", "guessBaseline", "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion$GuessBaselineResult;", "glyphs", "Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;", "isCJKLocale", "", "Companion", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        @SourceDebugExtension({"SMAP\nTextLayoutEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,766:1\n1864#2,3:767\n1864#2,2:770\n1855#2,2:772\n1866#2:774\n1855#2,2:775\n1864#2,3:777\n1#3:780\n*S KotlinDebug\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment\n*L\n198#1:767,3\n205#1:770,2\n210#1:772,2\n205#1:774\n228#1:775,2\n239#1:777,3\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class TextSegment {

            /* renamed from: Companion, reason: from kotlin metadata */
            @NotNull
            public static final Companion INSTANCE = new Companion(null);

            @NotNull
            private final List<TextCharBox> chars;

            @NotNull
            private final Locale locale;

            @NotNull
            private final RectF region;

            @NotNull
            private final String text;

            @Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0002\u0010\u0011B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0010\u0010\u0005\u001a\f\u0012\u0004\u0012\u00020\u00070\u0006j\u0002`\b2\u0006\u0010\t\u001a\u00020\nJ\"\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0006¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;", "chars", "", "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;", "Lcom/onyx/android/sdk/neohwr/layout/TextCharBoxList;", "locale", Constants.LOCALE_SIG, "guessBaseline", "", "segments", "glyphs", "Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;", "GuessBaselineResult", "GuessBaselineState", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
            @SourceDebugExtension({"SMAP\nTextLayoutEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,766:1\n1789#2,3:767\n1789#2,3:770\n1789#2,3:773\n766#2:776\n857#2,2:777\n1#3:779\n*S KotlinDebug\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion\n*L\n163#1:767,3\n166#1:770,3\n176#1:773,3\n185#1:776\n185#1:777,2\n*E\n"})
            /* loaded from: classes7.dex */
            public static final class Companion {

                @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion$GuessBaselineResult;", "", "baseline", "", "state", "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion$GuessBaselineState;", "(FLcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion$GuessBaselineState;)V", "getBaseline", "()F", "getState", "()Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion$GuessBaselineState;", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
                /* loaded from: classes7.dex */
                public static final class GuessBaselineResult {
                    private final float baseline;

                    @NotNull
                    private final GuessBaselineState state;

                    public GuessBaselineResult(float f, @NotNull GuessBaselineState state) {
                        Intrinsics.checkNotNullParameter(state, "state");
                        this.baseline = f;
                        this.state = state;
                    }

                    public final float getBaseline() {
                        return this.baseline;
                    }

                    @NotNull
                    public final GuessBaselineState getState() {
                        return this.state;
                    }
                }

                /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
                /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
                @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment$Companion$GuessBaselineState;", "", "(Ljava/lang/String;I)V", "WITH_EXCEPTION", "WITHOUT_EXCEPTION", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
                /* loaded from: classes7.dex */
                public static final class GuessBaselineState {
                    private static final /* synthetic */ EnumEntries $ENTRIES;
                    private static final /* synthetic */ GuessBaselineState[] $VALUES;
                    public static final GuessBaselineState WITH_EXCEPTION = new GuessBaselineState("WITH_EXCEPTION", 0);
                    public static final GuessBaselineState WITHOUT_EXCEPTION = new GuessBaselineState("WITHOUT_EXCEPTION", 1);

                    private static final /* synthetic */ GuessBaselineState[] $values() {
                        return new GuessBaselineState[]{WITH_EXCEPTION, WITHOUT_EXCEPTION};
                    }

                    static {
                        GuessBaselineState[] $values = $values();
                        $VALUES = $values;
                        $ENTRIES = EnumEntriesKt.enumEntries($values);
                    }

                    private GuessBaselineState(String str, int i) {
                    }

                    @NotNull
                    public static EnumEntries<GuessBaselineState> getEntries() {
                        return $ENTRIES;
                    }

                    public static GuessBaselineState valueOf(String str) {
                        return (GuessBaselineState) Enum.valueOf(GuessBaselineState.class, str);
                    }

                    public static GuessBaselineState[] values() {
                        return (GuessBaselineState[]) $VALUES.clone();
                    }
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                @NotNull
                public final TextSegment create(@NotNull List<TextCharBox> chars, @NotNull Locale locale) {
                    Object first;
                    Intrinsics.checkNotNullParameter(chars, "chars");
                    Intrinsics.checkNotNullParameter(locale, "locale");
                    List<TextCharBox> list = chars;
                    StringBuilder sb = new StringBuilder();
                    Iterator<T> it2 = list.iterator();
                    while (it2.hasNext()) {
                        sb.append(((TextCharBox) it2.next()).getText());
                        Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
                    }
                    String sb2 = sb.toString();
                    Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
                    first = CollectionsKt___CollectionsKt.first((List<? extends Object>) chars);
                    RectF rectF = new RectF(RectKt.orEmpty(((TextCharBox) first).getRegion()));
                    for (TextCharBox textCharBox : list) {
                        rectF.union(textCharBox.getRegion().left, textCharBox.getRegion().top);
                        rectF.union(textCharBox.getRegion().right, textCharBox.getRegion().bottom);
                    }
                    return new TextSegment(chars, locale, sb2, rectF);
                }

                public final float guessBaseline(@NotNull List<TextSegment> segments, @NotNull List<GlyphPath> glyphs) {
                    Intrinsics.checkNotNullParameter(segments, "segments");
                    Intrinsics.checkNotNullParameter(glyphs, "glyphs");
                    Pair pair = new Pair(new ArrayList(), glyphs);
                    for (TextSegment textSegment : segments) {
                        int size = textSegment.getChars().size();
                        ((List) pair.getFirst()).add(textSegment.guessBaseline(glyphs.subList(0, size)));
                        pair = new Pair(pair.getFirst(), glyphs.subList(size, glyphs.size()));
                    }
                    List list = (List) pair.getFirst();
                    ArrayList arrayList = new ArrayList();
                    Iterator it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        Object next = it2.next();
                        if (((GuessBaselineResult) next).getState() == GuessBaselineState.WITHOUT_EXCEPTION) {
                            arrayList.add(next);
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        Iterator it3 = arrayList.iterator();
                        if (!it3.hasNext()) {
                            throw new NoSuchElementException();
                        }
                        float baseline = ((GuessBaselineResult) it3.next()).getBaseline();
                        while (it3.hasNext()) {
                            baseline = Math.max(baseline, ((GuessBaselineResult) it3.next()).getBaseline());
                        }
                        return baseline;
                    }
                    Iterator it4 = list.iterator();
                    if (!it4.hasNext()) {
                        throw new NoSuchElementException();
                    }
                    float baseline2 = ((GuessBaselineResult) it4.next()).getBaseline();
                    while (it4.hasNext()) {
                        baseline2 = Math.max(baseline2, ((GuessBaselineResult) it4.next()).getBaseline());
                    }
                    return baseline2;
                }

                private Companion() {
                }
            }

            public TextSegment(@NotNull List<TextCharBox> chars, @NotNull Locale locale, @NotNull String text, @NotNull RectF region) {
                Intrinsics.checkNotNullParameter(chars, "chars");
                Intrinsics.checkNotNullParameter(locale, "locale");
                Intrinsics.checkNotNullParameter(text, "text");
                Intrinsics.checkNotNullParameter(region, "region");
                this.chars = chars;
                this.locale = locale;
                this.text = text;
                this.region = region;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final Companion.GuessBaselineResult guessBaseline(List<GlyphPath> glyphs) {
                List list;
                List list2;
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                int i = 0;
                int i2 = 0;
                for (Object obj : this.chars) {
                    int i3 = i2 + 1;
                    if (i2 < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    if (TextLayoutEngine.baselineExceptions.contains(Character.valueOf(((TextCharBox) obj).getText().charAt(0)))) {
                        linkedHashSet.add(Integer.valueOf(i2));
                    }
                    i2 = i3;
                }
                int i4 = 0;
                for (Object obj2 : this.chars) {
                    int i5 = i4 + 1;
                    if (i4 < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    TextCharBox textCharBox = (TextCharBox) obj2;
                    if (!linkedHashSet.contains(Integer.valueOf(i4))) {
                        list2 = CollectionsKt___CollectionsKt.toList(linkedHashSet);
                        Iterator it2 = list2.iterator();
                        while (it2.hasNext()) {
                            TextCharBox textCharBox2 = this.chars.get(((Number) it2.next()).intValue());
                            if (Intrinsics.areEqual(textCharBox2.getSourcePointGroup(), textCharBox.getSourcePointGroup())) {
                                linkedHashSet.add(Integer.valueOf(i4));
                            } else {
                                RectF intersectRectF = RectKt.intersectRectF(textCharBox2.getRegion(), textCharBox.getRegion());
                                if (intersectRectF != null && (intersectRectF.width() / textCharBox2.getRegion().width() > 0.6f || intersectRectF.width() / textCharBox.getRegion().width() > 0.6f)) {
                                    linkedHashSet.add(Integer.valueOf(i4));
                                }
                            }
                        }
                    }
                    i4 = i5;
                }
                list = CollectionsKt___CollectionsKt.toList(linkedHashSet);
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    int intValue = ((Number) it3.next()).intValue();
                    linkedHashSet.add(Integer.valueOf(Math.max(0, intValue - 2)));
                    linkedHashSet.add(Integer.valueOf(Math.max(0, intValue - 1)));
                    linkedHashSet.add(Integer.valueOf(Math.min(this.chars.size() - 1, intValue + 1)));
                    linkedHashSet.add(Integer.valueOf(Math.min(this.chars.size() - 1, intValue + 2)));
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (Object obj3 : this.chars) {
                    int i6 = i + 1;
                    if (i < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    TextCharBox textCharBox3 = (TextCharBox) obj3;
                    if (!linkedHashSet.contains(Integer.valueOf(i))) {
                        arrayList.add(textCharBox3);
                        arrayList2.add(glyphs.get(i));
                    }
                    i = i6;
                }
                if (arrayList.isEmpty()) {
                    float f = this.region.bottom;
                    Iterator<T> it4 = glyphs.iterator();
                    if (!it4.hasNext()) {
                        throw new NoSuchElementException();
                    }
                    float f2 = ((GlyphPath) it4.next()).getRect().bottom;
                    while (it4.hasNext()) {
                        f2 = Math.min(f2, ((GlyphPath) it4.next()).getRect().bottom);
                    }
                    return new Companion.GuessBaselineResult(f + f2, Companion.GuessBaselineState.WITH_EXCEPTION);
                }
                float calculateBaseline = BaselineCalculator.INSTANCE.calculateBaseline(arrayList);
                Iterator it5 = arrayList2.iterator();
                if (!it5.hasNext()) {
                    throw new NoSuchElementException();
                }
                float f3 = ((GlyphPath) it5.next()).getRect().bottom;
                while (it5.hasNext()) {
                    f3 = Math.min(f3, ((GlyphPath) it5.next()).getRect().bottom);
                }
                return new Companion.GuessBaselineResult(calculateBaseline + f3, Companion.GuessBaselineState.WITHOUT_EXCEPTION);
            }

            @NotNull
            public final List<TextCharBox> getChars() {
                return this.chars;
            }

            @NotNull
            public final Locale getLocale() {
                return this.locale;
            }

            @NotNull
            public final RectF getRegion() {
                return this.region;
            }

            @NotNull
            public final String getText() {
                return this.text;
            }

            public final boolean isCJKLocale() {
                return TextLayoutEngine.INSTANCE.isCJKLocale(this.locale);
            }
        }

        @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegmenter;", "", "segment", "", "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;", "segments", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes7.dex */
        public interface TextSegmenter {
            @NotNull
            List<TextSegment> segment(@NotNull List<TextSegment> segments);
        }

        @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextWhiteSpaceSegmenter;", "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegmenter;", "()V", "segment", "", "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextSegment;", "segments", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        @SourceDebugExtension({"SMAP\nTextLayoutEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextWhiteSpaceSegmenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,766:1\n1855#2:767\n1864#2,3:768\n1856#2:771\n*S KotlinDebug\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$TextWhiteSpaceSegmenter\n*L\n300#1:767\n301#1:768,3\n300#1:771\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class TextWhiteSpaceSegmenter implements TextSegmenter {
            @Override // com.onyx.android.sdk.neohwr.layout.TextLayoutEngine.Companion.TextSegmenter
            @NotNull
            public List<TextSegment> segment(@NotNull List<TextSegment> segments) {
                int lastIndex;
                Intrinsics.checkNotNullParameter(segments, "segments");
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (TextSegment textSegment : segments) {
                    int i = 0;
                    for (Object obj : textSegment.getChars()) {
                        int i2 = i + 1;
                        if (i < 0) {
                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                        }
                        TextCharBox textCharBox = (TextCharBox) obj;
                        if (!Character.isSpaceChar(textCharBox.getText().charAt(0))) {
                            arrayList2.add(textCharBox);
                            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(textSegment.getChars());
                            if (i == lastIndex) {
                                arrayList.add(TextSegment.INSTANCE.create(arrayList2, textSegment.getLocale()));
                                arrayList2 = new ArrayList();
                            }
                        } else if (!arrayList2.isEmpty()) {
                            arrayList.add(TextSegment.INSTANCE.create(arrayList2, textSegment.getLocale()));
                            arrayList2 = new ArrayList();
                        }
                        i = i2;
                    }
                }
                return arrayList;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Locale getCharacterLocale(TextCharBox ch) {
            Locale locale;
            String str;
            if (isCJKCharacter(ch)) {
                locale = Locale.CHINESE;
                str = "CHINESE";
            } else {
                locale = Locale.US;
                str = "US";
            }
            Intrinsics.checkNotNullExpressionValue(locale, str);
            return locale;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isCJKLocale(Locale locale) {
            return TextLayoutEngine.CJKLocales.contains(locale);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isLocaleMatches(Locale locale, TextCharBox ch) {
            return (Intrinsics.areEqual(locale, Locale.US) && !isCJKCharacter(ch)) || (isCJKLocale(locale) && isCJKCharacter(ch));
        }

        public final boolean isCJKCharacter(int codePoint) {
            return Character.isIdeographic(codePoint) || isCJKPunctuation(codePoint);
        }

        public final boolean isCJKPunctuation(int codePoint) {
            if (12288 <= codePoint && codePoint < 12352) {
                return true;
            }
            if (94176 <= codePoint && codePoint < 94208) {
                return true;
            }
            if (65072 <= codePoint && codePoint < 65104) {
                return true;
            }
            if (65280 <= codePoint && codePoint < 65520) {
                return true;
            }
            if (65104 <= codePoint && codePoint < 65136) {
                return true;
            }
            return 65040 <= codePoint && codePoint < 65056;
        }

        @NotNull
        public final List<TextSegment> segmentCharacters(@NotNull List<TextCharBox> chars) {
            List listOf;
            List<TextSegment> listOf2;
            Intrinsics.checkNotNullParameter(chars, "chars");
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TextSegmenter[]{new TextScriptSegmenter(), new TextWhiteSpaceSegmenter(), new TextDistanceSegmenter()});
            TextSegment.Companion companion = TextSegment.INSTANCE;
            Locale locale = TextLayoutEngine.defaultLocale;
            Intrinsics.checkNotNullExpressionValue(locale, "access$getDefaultLocale$cp(...)");
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(companion.create(chars, locale));
            Iterator it2 = listOf.iterator();
            while (it2.hasNext()) {
                listOf2 = ((TextSegmenter) it2.next()).segment(listOf2);
            }
            return listOf2;
        }

        @NotNull
        public final List<TextSegment> segmentCharactersByDistance(@NotNull List<TextCharBox> chars) {
            List listOf;
            List<TextSegment> listOf2;
            Intrinsics.checkNotNullParameter(chars, "chars");
            listOf = CollectionsKt__CollectionsJVMKt.listOf(new TextDistanceSegmenter());
            TextSegment.Companion companion = TextSegment.INSTANCE;
            Locale locale = TextLayoutEngine.defaultLocale;
            Intrinsics.checkNotNullExpressionValue(locale, "access$getDefaultLocale$cp(...)");
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(companion.create(chars, locale));
            Iterator it2 = listOf.iterator();
            while (it2.hasNext()) {
                listOf2 = ((TextDistanceSegmenter) it2.next()).segment(listOf2);
            }
            return listOf2;
        }

        private Companion() {
        }

        private final boolean isCJKCharacter(TextCharBox ch) {
            return isCJKCharacter(ch.getText().codePointAt(0));
        }
    }

    static {
        Set<Locale> of;
        Set<Character> of2;
        Locale CHINESE = Locale.CHINESE;
        Intrinsics.checkNotNullExpressionValue(CHINESE, "CHINESE");
        Locale SIMPLIFIED_CHINESE = Locale.SIMPLIFIED_CHINESE;
        Intrinsics.checkNotNullExpressionValue(SIMPLIFIED_CHINESE, "SIMPLIFIED_CHINESE");
        Locale TRADITIONAL_CHINESE = Locale.TRADITIONAL_CHINESE;
        Intrinsics.checkNotNullExpressionValue(TRADITIONAL_CHINESE, "TRADITIONAL_CHINESE");
        Locale JAPAN = Locale.JAPAN;
        Intrinsics.checkNotNullExpressionValue(JAPAN, "JAPAN");
        Locale JAPANESE = Locale.JAPANESE;
        Intrinsics.checkNotNullExpressionValue(JAPANESE, "JAPANESE");
        Locale KOREA = Locale.KOREA;
        Intrinsics.checkNotNullExpressionValue(KOREA, "KOREA");
        Locale KOREAN = Locale.KOREAN;
        Intrinsics.checkNotNullExpressionValue(KOREAN, "KOREAN");
        of = SetsKt__SetsKt.setOf((Object[]) new Locale[]{CHINESE, SIMPLIFIED_CHINESE, TRADITIONAL_CHINESE, JAPAN, JAPANESE, KOREA, KOREAN});
        CJKLocales = of;
        defaultLocale = Locale.US;
        of2 = SetsKt__SetsKt.setOf((Object[]) new Character[]{'f', 'g', 'j', 'p', 'q', 'y'});
        baselineExceptions = of2;
    }

    private final int countExpansionPositions(List<Companion.TextSegment> textSegments) {
        int i = 0;
        int i2 = 0;
        for (Object obj : textSegments) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            Companion.TextSegment textSegment = (Companion.TextSegment) obj;
            if (i2 != 0) {
                i++;
            }
            if (INSTANCE.isCJKLocale(textSegment.getLocale())) {
                i += textSegment.getChars().size() - 1;
            }
            i2 = i3;
        }
        return i;
    }

    private final TextBlockBox createBlock(List<TextLineBox> lines) {
        Object first;
        Iterator<T> it2 = lines.iterator();
        float f = 0.0f;
        while (it2.hasNext()) {
            f += ((TextLineBox) it2.next()).getLineDegrees();
        }
        float size = f / lines.size();
        float f2 = Math.abs(size) > 15.0f ? size : 0.0f;
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) lines);
        RectF rectF = new RectF(RectKt.orEmpty(((TextLineBox) first).getRegion()));
        Iterator<T> it3 = lines.iterator();
        while (it3.hasNext()) {
            RectFKt.unionRectByCorner(rectF, ((TextLineBox) it3.next()).getRegion());
        }
        return new TextBlockBox(lines, f2, rectF, null, 8, null);
    }

    private final Pair<TextRunBox, Float> createTextRun(Companion.TextSegment segment, List<GlyphPath> glyphs, String fontPath, float textSize, float left, float baseline, Matrix lineMatrix) {
        int lastIndex;
        float f = -MatrixKt.getMatrixRotateAngel(lineMatrix);
        String text = segment.getText();
        float max = segment.isCJKLocale() ? Math.max(0.0f, (segment.getRegion().width() - glyphsWidth(glyphs)) / glyphs.size()) : 0.0f;
        ArrayList arrayList = new ArrayList();
        float f2 = left;
        int i = 0;
        int i2 = 0;
        for (Object obj : glyphs) {
            int i3 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            GlyphPath glyphPath = (GlyphPath) obj;
            int charCount = Character.charCount(text.codePointAt(i2)) + i2;
            String substring = text.substring(i2, charCount);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            float f3 = baseline - glyphPath.getRect().top;
            float f4 = glyphPath.getRect().right;
            float f5 = glyphPath.getRect().top - glyphPath.getRect().bottom;
            String str = text;
            RectF rectF = new RectF(f2, f3, f2 + f4, f3 + f5);
            lineMatrix.mapRect(rectF);
            Matrix matrix = new Matrix();
            matrix.setRotate(f, rectF.centerX(), rectF.centerY());
            float f6 = 2;
            float f7 = f4 / f6;
            float f8 = f5 / f6;
            rectF.set(rectF.centerX() - f7, rectF.centerY() - f8, rectF.centerX() + f7, rectF.centerY() + f8);
            if (!Character.isSpaceChar(substring.codePointAt(0))) {
                SourcePointGroup sourcePointGroup = segment.getChars().get(i).getSourcePointGroup();
                arrayList.add(new TextCharBox(substring, rectF, sourcePointGroup, matrix, sourcePointGroup.getStrokeColor(), null, 32, null));
            }
            f2 += glyphPath.getAdvance().x;
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(glyphs);
            if (i != lastIndex && INSTANCE.isCJKLocale(segment.getLocale())) {
                f2 += max;
            }
            i = i3;
            i2 = charCount;
            text = str;
        }
        return new Pair<>(new TextRunBox(arrayList, segment.getText(), segment.getRegion(), fontPath, textSize), Float.valueOf(f2));
    }

    private final List<TextCharBox> deskewCharBoxes(List<TextCharBox> chars, Matrix lineMatrix) {
        int collectionSizeOrDefault;
        Object first;
        TextCharBox textCharBox;
        int collectionSizeOrDefault2;
        int collectionSizeOrDefault3;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : chars) {
            RectF region = ((TextCharBox) obj).getRegion();
            Object obj2 = linkedHashMap.get(region);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(region, obj2);
            }
            ((List) obj2).add(obj);
        }
        Collection values = linkedHashMap.values();
        ArrayList<TextCharBox> arrayList = new ArrayList();
        Iterator it2 = values.iterator();
        while (it2.hasNext()) {
            List<TextCharBox> list = (List) it2.next();
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                arrayList2.add(((TextCharBox) it3.next()).getSourcePointGroup());
            }
            SourcePointGroup merge = SourcePointGroup.INSTANCE.merge(arrayList2);
            if (merge.getPoints().isEmpty()) {
                Debug.INSTANCE.m32059w(TextLayoutEngine.class, "deskewCharBoxes() -> shapes should not be empty!", new Object[0]);
            }
            int strokeColor = merge.getStrokeColor();
            collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault3);
            for (TextCharBox textCharBox2 : list) {
                arrayList3.add(new TextCharBox(textCharBox2.getText(), textCharBox2.getRegion(), merge, null, strokeColor, null, 40, null));
                it2 = it2;
            }
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, arrayList3);
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault);
        for (TextCharBox textCharBox3 : arrayList) {
            if (textCharBox3.getSourcePointGroup().getPoints().isEmpty()) {
                textCharBox = new TextCharBox(textCharBox3.getText(), new RectF(), textCharBox3.getSourcePointGroup(), null, 0, null, 56, null);
            } else {
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) textCharBox3.getSourcePointGroup().getPoints());
                TouchPoint touchPoint = (TouchPoint) first;
                RectF rectF = new RectF(touchPoint.getX(), touchPoint.getY(), touchPoint.getX(), touchPoint.getY());
                for (TouchPoint touchPoint2 : textCharBox3.getSourcePointGroup().getPoints()) {
                    rectF.union(touchPoint2.getX(), touchPoint2.getY());
                }
                textCharBox = new TextCharBox(textCharBox3.getText(), rectF, textCharBox3.getSourcePointGroup(), null, 0, null, 56, null);
            }
            arrayList4.add(textCharBox);
        }
        return arrayList4;
    }

    private final float glyphsWidth(List<GlyphPath> glyphs) {
        Object last;
        Iterator<T> it2 = glyphs.subList(0, glyphs.size() - 1).iterator();
        float f = 0.0f;
        while (it2.hasNext()) {
            f += ((GlyphPath) it2.next()).getAdvance().x;
        }
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) glyphs);
        return f + ((GlyphPath) last).getRect().width();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0095, code lost:
    
        if (r6.getRegion().height() > (r3 / r5)) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final float guessLineAngle(java.util.List<com.onyx.android.sdk.neohwr.layout.TextCharBox> r11) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.neohwr.layout.TextLayoutEngine.guessLineAngle(java.util.List):float");
    }

    private final List<TextRunBox> layoutCharacters(FontNative fontNative, Matrix lineMatrix, List<Companion.TextSegment> textSegments) {
        Object first;
        List<Companion.TextSegment> list = textSegments;
        StringBuilder sb = new StringBuilder();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            sb.append(((Companion.TextSegment) it2.next()).getText());
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        Iterator<T> it3 = list.iterator();
        float f = 0.0f;
        while (it3.hasNext()) {
            f += ((Companion.TextSegment) it3.next()).getRegion().width();
        }
        Iterator<T> it4 = list.iterator();
        if (!it4.hasNext()) {
            throw new NoSuchElementException();
        }
        float height = ((Companion.TextSegment) it4.next()).getRegion().height();
        while (it4.hasNext()) {
            height = Math.max(height, ((Companion.TextSegment) it4.next()).getRegion().height());
        }
        Iterator<T> it5 = list.iterator();
        if (!it5.hasNext()) {
            throw new NoSuchElementException();
        }
        float f2 = ((Companion.TextSegment) it5.next()).getRegion().bottom;
        while (it5.hasNext()) {
            f2 = Math.max(f2, ((Companion.TextSegment) it5.next()).getRegion().bottom);
        }
        Pair<Float, List<GlyphPath>> loadBestTextGlyphs = loadBestTextGlyphs(fontNative, sb2, height, f);
        if (loadBestTextGlyphs == null) {
            return null;
        }
        float floatValue = loadBestTextGlyphs.component1().floatValue();
        List<GlyphPath> component2 = loadBestTextGlyphs.component2();
        float guessBaseline = Companion.TextSegment.INSTANCE.guessBaseline(textSegments, component2);
        ArrayList arrayList = new ArrayList();
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) textSegments);
        float f3 = ((Companion.TextSegment) first).getRegion().left;
        int i = 0;
        int i2 = 0;
        for (Companion.TextSegment textSegment : list) {
            int codePointCount = textSegment.getText().codePointCount(i, textSegment.getText().length());
            float max = Math.max(f3, textSegment.getRegion().left);
            int i3 = i2 + codePointCount;
            Pair<TextRunBox, Float> createTextRun = createTextRun(textSegment, CollectionKt.safelySubList(component2, i2, i3), fontNative.getPath(), floatValue, max, guessBaseline, lineMatrix);
            TextRunBox component1 = createTextRun.component1();
            float floatValue2 = createTextRun.component2().floatValue();
            arrayList.add(component1);
            i = i;
            i2 = i3;
            f3 = floatValue2;
        }
        return arrayList;
    }

    private final Pair<Float, List<GlyphPath>> loadBestTextGlyphs(FontNative fontNative, String text, float pixelSize, float widthLimit) {
        float f;
        ArrayList<GlyphPath> loadTextGlyphs;
        MathUtils mathUtils = MathUtils.INSTANCE;
        float floatValue = ((Number) mathUtils.atLeast(Float.valueOf(0.25f * pixelSize), Float.valueOf(this.minFontSize))).floatValue();
        float floatValue2 = ((Number) mathUtils.atLeast(Float.valueOf(4.0f * pixelSize), Float.valueOf(floatValue))).floatValue();
        do {
            f = (floatValue + floatValue2) / 2;
            loadTextGlyphs = loadTextGlyphs(fontNative, text, f);
            if (loadTextGlyphs == null) {
                return null;
            }
            float glyphsWidth = glyphsWidth(loadTextGlyphs);
            Iterator<T> it2 = loadTextGlyphs.iterator();
            if (!it2.hasNext()) {
                throw new NoSuchElementException();
            }
            float f2 = ((GlyphPath) it2.next()).getRect().top;
            while (it2.hasNext()) {
                f2 = Math.max(f2, ((GlyphPath) it2.next()).getRect().top);
            }
            Iterator<T> it3 = loadTextGlyphs.iterator();
            if (!it3.hasNext()) {
                throw new NoSuchElementException();
            }
            float f3 = ((GlyphPath) it3.next()).getRect().bottom;
            while (it3.hasNext()) {
                f3 = Math.min(f3, ((GlyphPath) it3.next()).getRect().bottom);
            }
            float f4 = f2 - f3;
            if (Math.abs(f4 - pixelSize) <= 3.0f && Math.abs(glyphsWidth - widthLimit) <= 3.0f) {
                return new Pair<>(Float.valueOf(f), loadTextGlyphs);
            }
            if (f4 >= pixelSize || glyphsWidth >= widthLimit) {
                floatValue2 = f;
            } else {
                floatValue = f;
            }
        } while (floatValue2 - floatValue > 3.0f);
        return new Pair<>(Float.valueOf(f), loadTextGlyphs);
    }

    private final ArrayList<GlyphPath> loadTextGlyphs(final FontNative fontNative, String text, final float pixelSize) {
        String replace$default;
        final ArrayList<GlyphPath> arrayList = new ArrayList<>();
        replace$default = StringsKt__StringsJVMKt.replace$default(text, ' ', 'E', false, 4, (Object) null);
        replace$default.codePoints().forEach(new IntConsumer() { // from class: com.sunia.HTREnginev2.kdn
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                TextLayoutEngine.loadTextGlyphs$lambda$14(FontNative.this, pixelSize, arrayList, i);
            }
        });
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadTextGlyphs$lambda$14(FontNative fontNative, float f, ArrayList list, int i) {
        Intrinsics.checkNotNullParameter(fontNative, "$fontNative");
        Intrinsics.checkNotNullParameter(list, "$list");
        GlyphPath loadGlyphPath = fontNative.loadGlyphPath(i, f);
        if (loadGlyphPath == null) {
            return;
        }
        list.add(loadGlyphPath);
    }

    @NotNull
    public final List<TextBlockBox> createBlocks(@NotNull List<TextLineBox> lines) {
        Object last;
        Intrinsics.checkNotNullParameter(lines, "lines");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        for (Object obj : lines) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            TextLineBox textLineBox = (TextLineBox) obj;
            if (arrayList2.isEmpty()) {
                arrayList2.add(textLineBox);
            } else {
                last = CollectionsKt___CollectionsKt.last((List<? extends Object>) arrayList2);
                TextLineBox textLineBox2 = (TextLineBox) last;
                boolean z = true;
                if (Math.abs(textLineBox2.getLineDegrees() - textLineBox.getLineDegrees()) <= 10.0f) {
                    float height = textLineBox2.getRegion().height();
                    float height2 = textLineBox.getRegion().height();
                    if (height / height2 <= 1.5f && height2 / height <= 1.5f) {
                        RectF rectF = new RectF(textLineBox2.getRegion());
                        rectF.union(textLineBox.getRegion());
                        float width = (textLineBox2.getRegion().width() + textLineBox.getRegion().width()) - rectF.width();
                        if ((width / textLineBox2.getRegion().width() >= 0.6f || width / textLineBox.getRegion().width() >= 0.6f) && rectF.height() - (textLineBox2.getRegion().height() + textLineBox.getRegion().height()) <= (textLineBox2.getRegion().height() + textLineBox.getRegion().height()) * 0.3f) {
                            z = false;
                        }
                    }
                }
                if (z) {
                    arrayList.add(createBlock(arrayList2));
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(textLineBox);
            }
            i = i2;
        }
        arrayList.add(createBlock(arrayList2));
        return arrayList;
    }

    @Nullable
    public final TextLineBox createLineBox(@NotNull String font, @NotNull List<TextCharBox> chars) {
        Object first;
        Object first2;
        Intrinsics.checkNotNullParameter(font, "font");
        Intrinsics.checkNotNullParameter(chars, "chars");
        float guessLineAngle = guessLineAngle(chars);
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) chars);
        RectF rectF = new RectF(RectKt.orEmpty(((TextCharBox) first).getRegion()));
        Iterator<T> it2 = chars.iterator();
        while (it2.hasNext()) {
            RectFKt.unionRectByCorner(rectF, ((TextCharBox) it2.next()).getRegion());
        }
        Matrix matrix = new Matrix();
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        TouchPoint center = geometryUtils.center(rectF);
        matrix.setRotate(-guessLineAngle, center.getX(), center.getY());
        List<Companion.TextSegment> segmentCharacters = INSTANCE.segmentCharacters(deskewCharBoxes(chars, matrix));
        FontNative create = FontNative.INSTANCE.create(font);
        if (create == null) {
            return null;
        }
        try {
            Matrix matrix2 = new Matrix();
            if (Math.abs(guessLineAngle) > 15.0f) {
                TouchPoint center2 = geometryUtils.center(rectF);
                matrix2.setRotate(guessLineAngle, center2.getX(), center2.getY());
            }
            List<TextRunBox> layoutCharacters = layoutCharacters(create, matrix2, segmentCharacters);
            if (layoutCharacters == null) {
                CloseableKt.closeFinally(create, null);
                return null;
            }
            first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) layoutCharacters);
            RectF rectF2 = new RectF(RectKt.orEmpty(((TextRunBox) first2).getRegion()));
            Iterator<T> it3 = layoutCharacters.iterator();
            while (it3.hasNext()) {
                RectFKt.unionRectByCorner(rectF2, ((TextRunBox) it3.next()).getRegion());
            }
            TextLineBox textLineBox = new TextLineBox(layoutCharacters, guessLineAngle, rectF2, null, 8, null);
            CloseableKt.closeFinally(create, null);
            return textLineBox;
        } finally {
        }
    }

    @NotNull
    public final List<TextBlockBox> createSingleLineBlocks(@NotNull List<TextLineBox> lines) {
        int collectionSizeOrDefault;
        List<TextLineBox> listOf;
        Intrinsics.checkNotNullParameter(lines, "lines");
        List<TextLineBox> list = lines;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf((TextLineBox) it2.next());
            arrayList.add(createBlock(listOf));
        }
        return arrayList;
    }

    public final float getMinFontSize() {
        return this.minFontSize;
    }

    public final void setMinFontSize(float f) {
        this.minFontSize = f;
    }
}
