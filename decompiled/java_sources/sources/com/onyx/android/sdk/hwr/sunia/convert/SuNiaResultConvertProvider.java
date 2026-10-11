package com.onyx.android.sdk.hwr.sunia.convert;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.hwr.data.bean.HWRBoundBox;
import com.onyx.android.sdk.hwr.data.bean.HWRChar;
import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.onyx.android.sdk.hwr.data.bean.HWRTextLine;
import com.onyx.android.sdk.hwr.service.convert.HWRResultConvertProvider;
import com.onyx.android.sdk.hwr.sunia.utils.SuNiaOutputUtils;
import com.onyx.android.sdk.neohwr.fontmgr.FontConfig;
import com.onyx.android.sdk.neohwr.layout.TextBlockBox;
import com.onyx.android.sdk.neohwr.layout.TextCharBox;
import com.onyx.android.sdk.neohwr.layout.TextLayout;
import com.onyx.android.sdk.neohwr.layout.TextLayoutEngine;
import com.onyx.android.sdk.neohwr.layout.TextLineBox;
import com.onyx.android.sdk.neohwr.layout.TextRunBox;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00040\u00042\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/sunia/convert/SuNiaResultConvertProvider;", "Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;", "()V", "convert", "", "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;", "rawResult", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "segmentationLevel", "", "sdk-sunia_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nSuNiaResultConvertProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaResultConvertProvider.kt\ncom/onyx/android/sdk/hwr/sunia/convert/SuNiaResultConvertProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,40:1\n1549#2:41\n1620#2,2:42\n1549#2:44\n1620#2,3:45\n1622#2:48\n*S KotlinDebug\n*F\n+ 1 SuNiaResultConvertProvider.kt\ncom/onyx/android/sdk/hwr/sunia/convert/SuNiaResultConvertProvider\n*L\n25#1:41\n25#1:42,2\n26#1:44\n26#1:45,3\n25#1:48\n*E\n"})
/* loaded from: classes7.dex */
public final class SuNiaResultConvertProvider implements HWRResultConvertProvider {
    @Override // com.onyx.android.sdk.hwr.service.convert.HWRResultConvertProvider
    @NotNull
    public List<TextBlockBox> convert(@NotNull List<? extends List<HWROutput>> rawResult, int segmentationLevel) {
        List flatten;
        Object firstOrNull;
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        List emptyList;
        RectF rectF;
        List<TextBlockBox> emptyList2;
        Intrinsics.checkNotNullParameter(rawResult, "rawResult");
        flatten = CollectionsKt__IterablesKt.flatten(rawResult);
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) flatten);
        HWROutput hWROutput = (HWROutput) firstOrNull;
        if (hWROutput == null) {
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList2;
        }
        ArrayList<HWRTextLine> extractTextLines = SuNiaOutputUtils.INSTANCE.extractTextLines(hWROutput);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(extractTextLines, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (HWRTextLine hWRTextLine : extractTextLines) {
            List<HWRChar> chars = hWRTextLine.getChars();
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(chars, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            for (HWRChar hWRChar : chars) {
                HWRBoundBox boundBox = hWRChar.getBoundBox();
                if (boundBox == null || (rectF = boundBox.toRectF()) == null) {
                    rectF = new RectF();
                }
                arrayList2.add(new TextCharBox(hWRChar.getLabel(), rectF, hWRChar.getSourcePointGroup(), null, 0, null, 56, null));
            }
            TextLineBox createLineBox = new TextLayoutEngine().createLineBox(FontConfig.INSTANCE.ensureDefaultFontPath(), arrayList2);
            if (createLineBox == null) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                createLineBox = new TextLineBox(emptyList, 0.0f, new RectF(), null, 8, null);
            }
            TextRunBox textRunBox = new TextRunBox(arrayList2, hWRTextLine.getLabel(), createLineBox.getRegion(), null, 0.0f, 24, null);
            arrayList.add(new TextLineBox(CollectionKt.asList(textRunBox), createLineBox.getLineDegrees(), createLineBox.getRegion(), textRunBox.getText()));
        }
        return TextLayout.INSTANCE.groupBlockLines(arrayList, new Function1<TextCharBox, List<? extends TouchPoint>>() { // from class: com.onyx.android.sdk.hwr.sunia.convert.SuNiaResultConvertProvider$convert$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<TouchPoint> invoke(@NotNull TextCharBox it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getSourcePointGroup().getPoints();
            }
        });
    }
}
