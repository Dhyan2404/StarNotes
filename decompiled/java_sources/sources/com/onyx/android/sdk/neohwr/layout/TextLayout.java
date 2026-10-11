package com.onyx.android.sdk.neohwr.layout;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.core.graphics.MatrixKt;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.data.common.data.ShapeTypesetArgs;
import com.onyx.android.sdk.geometry.algorithm.MinimumBoundingRectAlgorithm;
import com.onyx.android.sdk.geometry.data.RotatedRect;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.neohwr.fontmgr.FontNative;
import com.onyx.android.sdk.neohwr.fontmgr.GlyphPath;
import com.onyx.android.sdk.neohwr.fontmgr.GlyphPoint;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J4\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\n2\u0018\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\n0\u000fJ\u001e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0004J\u0016\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0015J\u0016\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0015J\u000e\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010 \u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u001bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/layout/TextLayout;", "", "()V", "maxBlockRange", "", "minBlockRange", "minDegreeUnit", "sameLineMistakenRange", "whitespacePercentWidth", "groupBlockLines", "", "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;", "lines", "Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;", "charOriginPointsGetter", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "loadCharFontPath", "Lcom/onyx/android/sdk/neohwr/layout/FontPathLoadResult;", "font", "", "codePoint", "", "textSize", "loadFontPath", "typesetArgs", "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "text", "loadGlyphRect", "Landroid/graphics/RectF;", "measureLineHeight", "measureWhitespaceWidth", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTextLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayout.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,125:1\n1549#2:126\n1620#2,2:127\n1360#2:129\n1446#2,5:130\n1360#2:135\n1446#2,5:136\n1360#2:141\n1446#2,5:142\n1549#2:147\n1620#2,3:148\n1855#2,2:151\n1549#2:153\n1620#2,3:154\n1622#2:157\n*S KotlinDebug\n*F\n+ 1 TextLayout.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayout\n*L\n44#1:126\n44#1:127,2\n46#1:129\n46#1:130,5\n47#1:135\n47#1:136,5\n48#1:141\n48#1:142,5\n49#1:147\n49#1:148,3\n54#1:151,2\n62#1:153\n62#1:154,3\n44#1:157\n*E\n"})
/* loaded from: classes7.dex */
public final class TextLayout {

    @NotNull
    public static final TextLayout INSTANCE = new TextLayout();
    public static final float maxBlockRange = 2.0f;
    public static final float minBlockRange = -0.25f;
    public static final float minDegreeUnit = 15.0f;
    public static final float sameLineMistakenRange = 0.1f;
    public static final float whitespacePercentWidth = 0.75f;

    private TextLayout() {
    }

    @NotNull
    public final List<TextBlockBox> groupBlockLines(@NotNull List<TextLineBox> lines, @NotNull Function1<? super TextCharBox, ? extends List<TouchPoint>> charOriginPointsGetter) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        double averageOfFloat;
        int collectionSizeOrDefault3;
        Intrinsics.checkNotNullParameter(lines, "lines");
        Intrinsics.checkNotNullParameter(charOriginPointsGetter, "charOriginPointsGetter");
        List<List> group = CollectionKt.group(lines, new Function2<TextLineBox, TextLineBox, Boolean>() { // from class: com.onyx.android.sdk.neohwr.layout.TextLayout$groupBlockLines$blockLinesGroup$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Boolean invoke(@NotNull TextLineBox prev, @NotNull TextLineBox next) {
                Intrinsics.checkNotNullParameter(prev, "prev");
                Intrinsics.checkNotNullParameter(next, "next");
                MathUtils mathUtils = MathUtils.INSTANCE;
                Float valueOf = Float.valueOf(prev.getLineDegrees());
                Float valueOf2 = Float.valueOf(15.0f);
                float roundByStep = mathUtils.roundByStep(valueOf, valueOf2);
                boolean z = true;
                if (!(roundByStep == mathUtils.roundByStep(Float.valueOf(next.getLineDegrees()), valueOf2))) {
                    return Boolean.FALSE;
                }
                float min = Math.min(prev.getRegion().height(), next.getRegion().height());
                boolean atSameLine$default = GeometryUtils.atSameLine$default(GeometryUtils.INSTANCE, prev.getRegion(), next.getRegion(), 0.0f, 2, null);
                float f = (-0.25f) * min;
                float f2 = min * 2.0f;
                float f3 = next.getRegion().top - prev.getRegion().bottom;
                boolean z2 = f <= f3 && f3 <= f2;
                if (!atSameLine$default && !z2) {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        });
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(group, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (List list : group) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                CollectionsKt__MutableCollectionsKt.addAll(arrayList2, ((TextLineBox) it2.next()).getRuns());
            }
            ArrayList<TextCharBox> arrayList3 = new ArrayList();
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                CollectionsKt__MutableCollectionsKt.addAll(arrayList3, ((TextRunBox) it3.next()).getChars());
            }
            ArrayList arrayList4 = new ArrayList();
            Iterator it4 = arrayList3.iterator();
            while (it4.hasNext()) {
                CollectionsKt__MutableCollectionsKt.addAll(arrayList4, charOriginPointsGetter.invoke((TextCharBox) it4.next()));
            }
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList5 = new ArrayList(collectionSizeOrDefault2);
            Iterator it5 = list.iterator();
            while (it5.hasNext()) {
                arrayList5.add(Float.valueOf(((TextLineBox) it5.next()).getLineDegrees()));
            }
            averageOfFloat = CollectionsKt___CollectionsKt.averageOfFloat(arrayList5);
            float f = (float) averageOfFloat;
            RotatedRect findMinimumBoundingRect = MinimumBoundingRectAlgorithm.INSTANCE.findMinimumBoundingRect(arrayList4);
            TouchPoint center = findMinimumBoundingRect.getCenter();
            Matrix rotationMatrix = MatrixKt.rotationMatrix(-f, center.getX(), center.getY());
            GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
            RectF boundRect = geometryUtils.boundRect(geometryUtils.transform(findMinimumBoundingRect.getRealPoints(), rotationMatrix));
            for (TextCharBox textCharBox : arrayList3) {
                List<TouchPoint> realPoints = MinimumBoundingRectAlgorithm.INSTANCE.findMinimumBoundingRect(charOriginPointsGetter.invoke(textCharBox)).getRealPoints();
                GeometryUtils geometryUtils2 = GeometryUtils.INSTANCE;
                textCharBox.setRegion(geometryUtils2.boundRect(geometryUtils2.transform(realPoints, rotationMatrix)));
                textCharBox.setMatrix(new Matrix());
            }
            collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10);
            ArrayList arrayList6 = new ArrayList(collectionSizeOrDefault3);
            Iterator it6 = arrayList3.iterator();
            while (it6.hasNext()) {
                arrayList6.add(((TextCharBox) it6.next()).getText());
            }
            String join$default = StringKt.join$default(arrayList6, null, 1, null);
            arrayList.add(new TextBlockBox(CollectionKt.asList(new TextLineBox(CollectionKt.asList(new TextRunBox(arrayList3, join$default, boundRect, null, 0.0f, 24, null)), f, boundRect, join$default)), f, boundRect, join$default));
        }
        return arrayList;
    }

    @NotNull
    public final FontPathLoadResult loadCharFontPath(@NotNull String font, int codePoint, float textSize) {
        Object orNull;
        Object orNull2;
        Intrinsics.checkNotNullParameter(font, "font");
        FontPathLoadResult fontPathLoadResult = new FontPathLoadResult();
        GlyphPath loadGlyphPathOnce = FontNative.INSTANCE.loadGlyphPathOnce(font, codePoint, textSize);
        if (loadGlyphPathOnce == null) {
            return fontPathLoadResult;
        }
        Path path = new Path();
        int i = 0;
        while (i < loadGlyphPathOnce.getPoints().size()) {
            GlyphPoint glyphPoint = loadGlyphPathOnce.getPoints().get(i);
            int type = glyphPoint.getType();
            if (type == 0) {
                path.moveTo(glyphPoint.getX(), glyphPoint.getY());
            } else if (type == 1) {
                path.lineTo(glyphPoint.getX(), glyphPoint.getY());
            } else if (type == 2) {
                orNull = CollectionsKt___CollectionsKt.getOrNull(loadGlyphPathOnce.getPoints(), i + 1);
                GlyphPoint glyphPoint2 = (GlyphPoint) orNull;
                if (glyphPoint2 != null) {
                    int i2 = i + 2;
                    orNull2 = CollectionsKt___CollectionsKt.getOrNull(loadGlyphPathOnce.getPoints(), i2);
                    GlyphPoint glyphPoint3 = (GlyphPoint) orNull2;
                    if (glyphPoint3 != null) {
                        if (i < loadGlyphPathOnce.getPoints().size() - 2 && glyphPoint2.getType() == 2 && glyphPoint3.getType() == 2) {
                            path.cubicTo(glyphPoint.getX(), glyphPoint.getY(), glyphPoint2.getX(), glyphPoint2.getY(), glyphPoint3.getX(), glyphPoint3.getY());
                            i = i2;
                        }
                    }
                }
            }
            if (glyphPoint.getClose()) {
                path.close();
            }
            i++;
        }
        fontPathLoadResult.setPath(path);
        fontPathLoadResult.setGlyphRect(loadGlyphPathOnce.getRect());
        return fontPathLoadResult;
    }

    @NotNull
    public final FontPathLoadResult loadFontPath(@NotNull ShapeTypesetArgs typesetArgs, @NotNull String text) {
        Intrinsics.checkNotNullParameter(typesetArgs, "typesetArgs");
        Intrinsics.checkNotNullParameter(text, "text");
        FontPathLoadResult fontPathLoadResult = new FontPathLoadResult();
        if (text.length() == 0) {
            return fontPathLoadResult;
        }
        int codePointAt = text.codePointAt(0);
        Float fontSize = typesetArgs.getFontSize();
        if (fontSize == null) {
            return fontPathLoadResult;
        }
        float floatValue = fontSize.floatValue();
        String typeface = typesetArgs.getTypeface();
        return typeface == null ? fontPathLoadResult : loadCharFontPath(typeface, codePointAt, floatValue);
    }

    @NotNull
    public final RectF loadGlyphRect(@NotNull ShapeTypesetArgs typesetArgs, @NotNull String text) {
        Intrinsics.checkNotNullParameter(typesetArgs, "typesetArgs");
        Intrinsics.checkNotNullParameter(text, "text");
        return loadFontPath(typesetArgs, text).getGlyphRect();
    }

    public final float measureLineHeight(@NotNull ShapeTypesetArgs typesetArgs) {
        Intrinsics.checkNotNullParameter(typesetArgs, "typesetArgs");
        return typesetArgs.getMinLineSpacingInPx();
    }

    public final float measureWhitespaceWidth(@NotNull ShapeTypesetArgs typesetArgs) {
        Intrinsics.checkNotNullParameter(typesetArgs, "typesetArgs");
        return measureLineHeight(typesetArgs) * 0.75f;
    }
}
