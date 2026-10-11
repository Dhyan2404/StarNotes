package com.onyx.android.sdk.universal.editor.request.hwr;

import android.graphics.RectF;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.data.common.error.ErrorType;
import com.onyx.android.sdk.hwr.data.bean.HWRBoundBox;
import com.onyx.android.sdk.hwr.data.bean.HWRChar;
import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.onyx.android.sdk.hwr.data.bean.HWRTextLine;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.request.HWRBaseRequest;
import com.onyx.android.sdk.hwr.utils.HWROutputUtils;
import com.onyx.android.sdk.neohwr.fontmgr.FontConfig;
import com.onyx.android.sdk.neohwr.layout.SourcePointGroup;
import com.onyx.android.sdk.neohwr.layout.TextBlockBox;
import com.onyx.android.sdk.neohwr.layout.TextCharBox;
import com.onyx.android.sdk.neohwr.layout.TextLayoutEngine;
import com.onyx.android.sdk.neohwr.layout.TextLineBox;
import com.onyx.android.sdk.note.common.data.shape.HWRTextBlockBean;
import com.onyx.android.sdk.note.common.data.shape.HWRTextLineBean;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B+\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0012\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R \u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/hwr/HWRConvertOutputToBlockRequest;", "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;", "", "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;", "execute", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "b", "Ljava/util/List;", "outputBlocks", "", "c", "F", "minFontSize", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "hwrBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Ljava/util/List;F)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWRConvertOutputToBlockRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRConvertOutputToBlockRequest.kt\ncom/onyx/android/sdk/universal/editor/request/hwr/HWRConvertOutputToBlockRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,56:1\n1360#2:57\n1446#2,2:58\n1360#2:60\n1446#2,5:61\n1549#2:66\n1620#2,2:67\n1549#2:69\n1620#2,3:70\n1622#2:78\n1448#2,3:79\n1549#2:82\n1620#2,2:83\n1549#2:85\n1620#2,3:86\n1622#2:89\n32#3,5:73\n*S KotlinDebug\n*F\n+ 1 HWRConvertOutputToBlockRequest.kt\ncom/onyx/android/sdk/universal/editor/request/hwr/HWRConvertOutputToBlockRequest\n*L\n27#1:57\n27#1:58,2\n28#1:60\n28#1:61,5\n31#1:66\n31#1:67,2\n34#1:69\n34#1:70,3\n31#1:78\n27#1:79,3\n49#1:82\n49#1:83,2\n50#1:85\n50#1:86,3\n49#1:89\n42#1:73,5\n*E\n"})
/* loaded from: classes8.dex */
public final class HWRConvertOutputToBlockRequest extends HWRBaseRequest<List<? extends HWRTextBlockBean>> {

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<List<HWROutput>> outputBlocks;

    /* renamed from: c, reason: from kotlin metadata */
    public final float minFontSize;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public HWRConvertOutputToBlockRequest(@NotNull HWRBundle hwrBundle, @NotNull List<? extends List<HWROutput>> outputBlocks, float f) {
        super(hwrBundle);
        Intrinsics.checkNotNullParameter(hwrBundle, "hwrBundle");
        Intrinsics.checkNotNullParameter(outputBlocks, "outputBlocks");
        this.outputBlocks = outputBlocks;
        this.minFontSize = f;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public List<HWRTextBlockBean> execute() {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        int collectionSizeOrDefault3;
        int collectionSizeOrDefault4;
        RectF rectF;
        TextLayoutEngine textLayoutEngine = new TextLayoutEngine();
        textLayoutEngine.setMinFontSize(this.minFontSize);
        List<List<HWROutput>> list = this.outputBlocks;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (true) {
            int i = 10;
            if (it2.hasNext()) {
                List list2 = (List) it2.next();
                ArrayList<HWRTextLine> arrayList2 = new ArrayList();
                Iterator it3 = list2.iterator();
                while (it3.hasNext()) {
                    CollectionsKt__MutableCollectionsKt.addAll(arrayList2, HWROutputUtils.INSTANCE.extractTextLines((HWROutput) it3.next()));
                }
                collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault3);
                for (HWRTextLine hWRTextLine : arrayList2) {
                    String fontPath = FontConfig.INSTANCE.getFontPath();
                    List<HWRChar> chars = hWRTextLine.getChars();
                    collectionSizeOrDefault4 = CollectionsKt__IterablesKt.collectionSizeOrDefault(chars, i);
                    ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault4);
                    for (HWRChar hWRChar : chars) {
                        String label = hWRChar.getLabel();
                        HWRBoundBox boundBox = hWRChar.getBoundBox();
                        if (boundBox == null || (rectF = boundBox.toRectF()) == null) {
                            rectF = new RectF();
                        }
                        arrayList4.add(new TextCharBox(label, rectF, hWRChar.getSourcePointGroup(), null, 0, null, 56, null));
                    }
                    TextLineBox createLineBox = textLayoutEngine.createLineBox(fontPath, arrayList4);
                    if (!(createLineBox == null)) {
                        arrayList3.add(createLineBox);
                        i = 10;
                    } else {
                        throw OnyxException.INSTANCE.m31891of(ErrorType.FONT_FORMAT_ERROR);
                    }
                }
                CollectionsKt__MutableCollectionsKt.addAll(arrayList, arrayList3);
            } else {
                List<TextBlockBox> createSingleLineBlocks = textLayoutEngine.createSingleLineBlocks(arrayList);
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(createSingleLineBlocks, 10);
                ArrayList arrayList5 = new ArrayList(collectionSizeOrDefault);
                for (TextBlockBox textBlockBox : createSingleLineBlocks) {
                    List<TextLineBox> lines = textBlockBox.getLines();
                    collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(lines, 10);
                    ArrayList arrayList6 = new ArrayList(collectionSizeOrDefault2);
                    Iterator<T> it4 = lines.iterator();
                    while (it4.hasNext()) {
                        arrayList6.add(new HWRTextLineBean((TextLineBox) it4.next(), new SourcePointGroup("", new ArrayList(), 0, 0, 12, null)));
                    }
                    arrayList5.add(new HWRTextBlockBean(arrayList6, textBlockBox));
                }
                return arrayList5;
            }
        }
    }
}
