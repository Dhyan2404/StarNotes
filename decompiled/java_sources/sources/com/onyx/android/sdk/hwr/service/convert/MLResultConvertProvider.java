package com.onyx.android.sdk.hwr.service.convert;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.hwr.data.bean.HWRCandidate;
import com.onyx.android.sdk.hwr.data.bean.HWRChar;
import com.onyx.android.sdk.hwr.data.bean.HWRConvertBean;
import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.onyx.android.sdk.neohwr.layout.TextBlockBox;
import com.onyx.android.sdk.neohwr.layout.TextCharBox;
import com.onyx.android.sdk.neohwr.layout.TextLayout;
import com.onyx.android.sdk.neohwr.layout.TextLineBox;
import com.onyx.android.sdk.neohwr.layout.TextRunBox;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\f\u0010\rJ*\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00022\u0012\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00022\u0006\u0010\t\u001a\u00020\u0003H\u0002¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/convert/MLResultConvertProvider;", "Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;", "", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "rawResult", "", "segmentationLevel", "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;", "convert", Constants.ELEMNAME_OUTPUT_STRING, "Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;", "a", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMLResultConvertProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MLResultConvertProvider.kt\ncom/onyx/android/sdk/hwr/service/convert/MLResultConvertProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,51:1\n1855#2:52\n1855#2,2:53\n1856#2:55\n1549#2:56\n1620#2,3:57\n1549#2:60\n1620#2,3:61\n*S KotlinDebug\n*F\n+ 1 MLResultConvertProvider.kt\ncom/onyx/android/sdk/hwr/service/convert/MLResultConvertProvider\n*L\n23#1:52\n24#1:53,2\n23#1:55\n38#1:56\n38#1:57,3\n47#1:60\n47#1:61,3\n*E\n"})
/* loaded from: classes7.dex */
public final class MLResultConvertProvider implements HWRResultConvertProvider {
    @Inject
    public MLResultConvertProvider() {
    }

    /* renamed from: a */
    public final List<TextRunBox> m33368a(HWROutput output) {
        List<TextRunBox> emptyList;
        List<HWRChar> chars;
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        HWRConvertBean hWRConvertBean = output.getCom.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING java.lang.String();
        if (hWRConvertBean == null || (chars = hWRConvertBean.getChars()) == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        TextRunBox textRunBox = new TextRunBox(null, null, null, null, 0.0f, 31, null);
        List<HWRChar> list = chars;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (HWRChar hWRChar : list) {
            TextCharBox textCharBox = new TextCharBox(null, null, null, null, 0, null, 63, null);
            textCharBox.setText(hWRChar.getLabel());
            textCharBox.setRegion(GeometryUtils.INSTANCE.boundRect(hWRChar.getSourcePointGroup().getPoints()));
            textCharBox.setSourcePointGroup(hWRChar.getSourcePointGroup().copy());
            textCharBox.setTextColor(hWRChar.getSourcePointGroup().getStrokeColor());
            arrayList.add(textCharBox);
        }
        textRunBox.setChars(arrayList);
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((TextCharBox) it2.next()).getText());
        }
        textRunBox.setText(StringKt.join$default(arrayList2, null, 1, null));
        textRunBox.setRegion(output.getRegion());
        return CollectionKt.asList(textRunBox);
    }

    @Override // com.onyx.android.sdk.hwr.service.convert.HWRResultConvertProvider
    @NotNull
    public List<TextBlockBox> convert(@NotNull List<? extends List<HWROutput>> rawResult, int segmentationLevel) {
        List<HWRCandidate> candidates;
        Object firstOrNull;
        String text;
        Intrinsics.checkNotNullParameter(rawResult, "rawResult");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = rawResult.iterator();
        while (it2.hasNext()) {
            for (HWROutput hWROutput : (List) it2.next()) {
                HWRConvertBean hWRConvertBean = hWROutput.getCom.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING java.lang.String();
                if (hWRConvertBean != null && (candidates = hWRConvertBean.getCandidates()) != null) {
                    firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) candidates);
                    HWRCandidate hWRCandidate = (HWRCandidate) firstOrNull;
                    if (hWRCandidate != null && (text = hWRCandidate.getText()) != null) {
                        arrayList.add(new TextLineBox(m33368a(hWROutput), MatrixKt.getMatrixRotateAngel(hWROutput.getPointMatrix()), hWROutput.getRegion(), text));
                    }
                }
            }
        }
        return TextLayout.INSTANCE.groupBlockLines(arrayList, new Function1<TextCharBox, List<? extends TouchPoint>>() { // from class: com.onyx.android.sdk.hwr.service.convert.MLResultConvertProvider$convert$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<TouchPoint> invoke(@NotNull TextCharBox it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return it3.getSourcePointGroup().getPoints();
            }
        });
    }
}
