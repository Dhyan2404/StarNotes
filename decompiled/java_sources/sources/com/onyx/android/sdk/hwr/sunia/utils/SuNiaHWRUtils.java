package com.onyx.android.sdk.hwr.sunia.utils;

import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.data.common.data.DataScope;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.common.data.StorageLocation;
import com.onyx.android.sdk.data.common.path.PathManager;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.hwr.data.bean.HWRBoundBox;
import com.onyx.android.sdk.hwr.data.bean.HWRChar;
import com.onyx.android.sdk.hwr.data.bean.HWRConvertBean;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWRPointerEvent;
import com.onyx.android.sdk.hwr.data.bean.HWRWord;
import com.onyx.android.sdk.hwr.data.constant.HWRPointerEventType;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerTypeKt;
import com.onyx.android.sdk.neohwr.layout.SourcePointGroup;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.sdk.RecognizePoint;
import com.sunia.commonv2.bean.BoundingBox;
import com.sunia.commonv2.bean.PartiBean;
import com.sunia.commonv2.bean.PartieWords;
import com.sunia.nbiv2.sdk.NBIAxisPath;
import com.sunia.nbiv2.sdk.NBIAxisPoint;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\tJ\f\u0010\u000e\u001a\u00020\u000f*\u0004\u0018\u00010\u0010J8\u0010\u0011\u001a\u00020\u0012*\u0004\u0018\u00010\u00132\"\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00160\u0015j\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0016`\u00172\u0006\u0010\u0018\u001a\u00020\u000bJ0\u0010\u0019\u001a\u00020\u001a*\u0004\u0018\u00010\u001b2\"\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00160\u0015j\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0016`\u0017J\u0012\u0010\u001c\u001a\u00020\u001d*\u00020\u001e2\u0006\u0010\r\u001a\u00020\tJ\u0010\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001d0 *\u00020!J\u0016\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001d0 *\b\u0012\u0004\u0012\u00020!0 J\f\u0010\"\u001a\u00020#*\u0004\u0018\u00010\u0013J\u0016\u0010$\u001a\b\u0012\u0004\u0012\u00020%0 *\b\u0012\u0004\u0012\u00020\u001d0 J\n\u0010&\u001a\u00020'*\u00020\u001dJ\u0016\u0010(\u001a\b\u0012\u0004\u0012\u00020'0 *\b\u0012\u0004\u0012\u00020\u001d0 ¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;", "", "()V", "getConfigDataDir", "", "input", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "getConfigName", "toHWRPointerEventType", "Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;", "type", "", "toRecognizePointAction", "eventType", "toHWRBoundBox", "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", "Lcom/sunia/commonv2/bean/BoundingBox;", "toHWRChar", "Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;", "Lcom/sunia/commonv2/bean/PartieWords;", "strokePointsMap", "Ljava/util/HashMap;", "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;", "Lkotlin/collections/HashMap;", "fallbackStrokeColor", "toHWRConvertBean", "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;", "Lcom/sunia/commonv2/bean/PartiBean;", "toHWRPointerEvent", "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;", "Lcom/sunia/nbiv2/sdk/NBIAxisPoint;", "toHWRPointerEventList", "", "Lcom/sunia/nbiv2/sdk/NBIAxisPath;", "toHWRWord", "Lcom/onyx/android/sdk/hwr/data/bean/HWRWord;", "toRecognizePaths", "Lcom/sunia/HTREnginev2/sdk/RecognizePath;", "toRecognizePoint", "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;", "toRecognizePoints", "sdk-sunia_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nSuNiaHWRUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaHWRUtils.kt\ncom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,191:1\n1855#2,2:192\n1549#2:194\n1620#2,3:195\n1855#2,2:198\n1855#2,2:200\n1855#2,2:202\n1855#2,2:204\n1549#2:206\n1620#2,3:207\n*S KotlinDebug\n*F\n+ 1 SuNiaHWRUtils.kt\ncom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils\n*L\n51#1:192,2\n58#1:194\n58#1:195,3\n80#1:198,2\n93#1:200,2\n134#1:202,2\n139#1:204,2\n171#1:206\n171#1:207,3\n*E\n"})
/* loaded from: classes7.dex */
public final class SuNiaHWRUtils {

    @NotNull
    public static final SuNiaHWRUtils INSTANCE = new SuNiaHWRUtils();

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HWRPointerEventType.values().length];
            try {
                iArr[HWRPointerEventType.DOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[HWRPointerEventType.f42542UP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[HWRPointerEventType.CANCEL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[HWRPointerEventType.MOVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @NotNull
    public final String getConfigDataDir(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        Path resolve = Paths.INSTANCE.toPath(PathManager.INSTANCE.getDirectory(StorageLocation.PRIVATE_FILE, DataScope.APP, FunctionKey.HWR)).resolve(HWRRecognizerTypeKt.getEngineType(input.getRecognizerType())).resolve(input.getLang());
        Intrinsics.checkNotNullExpressionValue(resolve, "resolve(...)");
        return resolve.toAbsolutePath().toString();
    }

    @NotNull
    public final String getConfigName(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return input.getLang() + ".conf";
    }

    @NotNull
    public final HWRBoundBox toHWRBoundBox(@Nullable BoundingBox boundingBox) {
        if (boundingBox == null) {
            return new HWRBoundBox();
        }
        HWRBoundBox hWRBoundBox = new HWRBoundBox();
        hWRBoundBox.setX(boundingBox.getX());
        hWRBoundBox.setY(boundingBox.getY());
        hWRBoundBox.setWidth(boundingBox.getWidth());
        hWRBoundBox.setHeight(boundingBox.getHeight());
        return hWRBoundBox;
    }

    @NotNull
    public final HWRChar toHWRChar(@Nullable PartieWords partieWords, @NotNull HashMap<Integer, SourcePointGroup> strokePointsMap, int i) {
        int collectionSizeOrDefault;
        List filterNotNull;
        Intrinsics.checkNotNullParameter(strokePointsMap, "strokePointsMap");
        if (partieWords == null) {
            return new HWRChar();
        }
        HWRChar hWRChar = new HWRChar();
        String label = partieWords.getLabel();
        Intrinsics.checkNotNullExpressionValue(label, "getLabel(...)");
        hWRChar.setLabel(label);
        List<String> candidates = partieWords.getCandidates();
        Intrinsics.checkNotNullExpressionValue(candidates, "getCandidates(...)");
        hWRChar.setCandidates(candidates);
        HWRBoundBox hWRBoundBox = INSTANCE.toHWRBoundBox(partieWords.getBounding_box());
        hWRChar.setBoundBox(hWRBoundBox);
        List<Integer> strokeIds = partieWords.getStrokeIds();
        Intrinsics.checkNotNullExpressionValue(strokeIds, "getStrokeIds(...)");
        List<Integer> list = strokeIds;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(strokePointsMap.get((Integer) it2.next()));
        }
        filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(arrayList);
        hWRChar.setSourcePointGroup(filterNotNull.isEmpty() ? new SourcePointGroup(null, GeometryUtils.INSTANCE.vertexPoints(hWRBoundBox.toRectF()), i, 0, 9, null) : SourcePointGroup.INSTANCE.merge(filterNotNull));
        return hWRChar;
    }

    @NotNull
    public final HWRConvertBean toHWRConvertBean(@Nullable PartiBean partiBean, @NotNull HashMap<Integer, SourcePointGroup> strokePointsMap) {
        Intrinsics.checkNotNullParameter(strokePointsMap, "strokePointsMap");
        if (partiBean == null) {
            return new HWRConvertBean();
        }
        ArrayList arrayList = new ArrayList();
        List<PartieWords> words = partiBean.getWords();
        Intrinsics.checkNotNullExpressionValue(words, "getWords(...)");
        Iterator<T> it2 = words.iterator();
        while (it2.hasNext()) {
            arrayList.add(INSTANCE.toHWRWord((PartieWords) it2.next()));
        }
        ArrayList arrayList2 = new ArrayList();
        SourcePointGroup.Companion companion = SourcePointGroup.INSTANCE;
        Collection<SourcePointGroup> values = strokePointsMap.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        int mostUsedStrokeColor = companion.getMostUsedStrokeColor(values);
        List<PartieWords> chars = partiBean.getChars();
        Intrinsics.checkNotNullExpressionValue(chars, "getChars(...)");
        Iterator<T> it3 = chars.iterator();
        while (it3.hasNext()) {
            arrayList2.add(INSTANCE.toHWRChar((PartieWords) it3.next(), strokePointsMap, mostUsedStrokeColor));
        }
        HWRConvertBean hWRConvertBean = new HWRConvertBean();
        String label = partiBean.getLabel();
        Intrinsics.checkNotNullExpressionValue(label, "getLabel(...)");
        hWRConvertBean.setLabel(label);
        String type = partiBean.getType();
        Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
        hWRConvertBean.setType(type);
        hWRConvertBean.setWords(arrayList);
        hWRConvertBean.setChars(arrayList2);
        return hWRConvertBean;
    }

    @NotNull
    public final HWRPointerEvent toHWRPointerEvent(@NotNull NBIAxisPoint nBIAxisPoint, @NotNull HWRPointerEventType eventType) {
        Intrinsics.checkNotNullParameter(nBIAxisPoint, "<this>");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        HWRPointerEvent hWRPointerEvent = new HWRPointerEvent();
        hWRPointerEvent.setX(nBIAxisPoint.f84039x);
        hWRPointerEvent.setY(nBIAxisPoint.f84040y);
        hWRPointerEvent.setT(nBIAxisPoint.f84038t);
        nBIAxisPoint.f84037p = nBIAxisPoint.f84037p;
        hWRPointerEvent.setW(nBIAxisPoint.f92531w);
        nBIAxisPoint.f84036id = nBIAxisPoint.f84036id;
        hWRPointerEvent.setEventType(eventType);
        return hWRPointerEvent;
    }

    @NotNull
    public final List<HWRPointerEvent> toHWRPointerEventList(@NotNull List<? extends NBIAxisPath> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.addAll(INSTANCE.toHWRPointerEventList((NBIAxisPath) it2.next()));
        }
        return arrayList;
    }

    @NotNull
    public final HWRPointerEventType toHWRPointerEventType(int type) {
        if (type == 0) {
            return HWRPointerEventType.DOWN;
        }
        if (type != 1 && type == 2) {
            return HWRPointerEventType.f42542UP;
        }
        return HWRPointerEventType.MOVE;
    }

    @NotNull
    public final HWRWord toHWRWord(@Nullable PartieWords partieWords) {
        if (partieWords == null) {
            return new HWRWord();
        }
        HWRWord hWRWord = new HWRWord();
        String label = partieWords.getLabel();
        Intrinsics.checkNotNullExpressionValue(label, "getLabel(...)");
        hWRWord.setLabel(label);
        List<String> candidates = partieWords.getCandidates();
        Intrinsics.checkNotNullExpressionValue(candidates, "getCandidates(...)");
        hWRWord.setCandidates(candidates);
        hWRWord.setBoundBox(INSTANCE.toHWRBoundBox(partieWords.getBounding_box()));
        return hWRWord;
    }

    @NotNull
    public final List<RecognizePath> toRecognizePaths(@NotNull List<HWRPointerEvent> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        RecognizePath recognizePath = new RecognizePath();
        for (HWRPointerEvent hWRPointerEvent : list) {
            int i = WhenMappings.$EnumSwitchMapping$0[hWRPointerEvent.getEventType().ordinal()];
            if (i == 1) {
                recognizePath = new RecognizePath();
            } else if (i == 2 || i == 3) {
                arrayList.add(recognizePath);
            }
            recognizePath.addPoint(INSTANCE.toRecognizePoint(hWRPointerEvent));
        }
        return arrayList;
    }

    @NotNull
    public final RecognizePoint toRecognizePoint(@NotNull HWRPointerEvent hWRPointerEvent) {
        Intrinsics.checkNotNullParameter(hWRPointerEvent, "<this>");
        RecognizePoint recognizePoint = new RecognizePoint();
        recognizePoint.f84039x = hWRPointerEvent.getX();
        recognizePoint.f84040y = hWRPointerEvent.getY();
        recognizePoint.f84037p = hWRPointerEvent.getCom.miui.penengine.e.f.c java.lang.String();
        recognizePoint.f84038t = hWRPointerEvent.getT();
        recognizePoint.f84036id = hWRPointerEvent.getPointerId();
        recognizePoint.action = INSTANCE.toRecognizePointAction(hWRPointerEvent.getEventType());
        return recognizePoint;
    }

    public final int toRecognizePointAction(@NotNull HWRPointerEventType eventType) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        int i = WhenMappings.$EnumSwitchMapping$0[eventType.ordinal()];
        if (i != 1) {
            return i != 2 ? 1 : 2;
        }
        return 0;
    }

    @NotNull
    public final List<RecognizePoint> toRecognizePoints(@NotNull List<HWRPointerEvent> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(INSTANCE.toRecognizePoint((HWRPointerEvent) it2.next()));
        }
        return arrayList;
    }

    @NotNull
    public final List<HWRPointerEvent> toHWRPointerEventList(@NotNull NBIAxisPath nBIAxisPath) {
        int collectionSizeOrDefault;
        Object firstOrNull;
        Object lastOrNull;
        Intrinsics.checkNotNullParameter(nBIAxisPath, "<this>");
        List<NBIAxisPoint> nbiAxisPointList = nBIAxisPath.getNbiAxisPointList();
        Intrinsics.checkNotNullExpressionValue(nbiAxisPointList, "getNbiAxisPointList(...)");
        List<NBIAxisPoint> list = nbiAxisPointList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (NBIAxisPoint nBIAxisPoint : list) {
            SuNiaHWRUtils suNiaHWRUtils = INSTANCE;
            Intrinsics.checkNotNull(nBIAxisPoint);
            arrayList.add(suNiaHWRUtils.toHWRPointerEvent(nBIAxisPoint, HWRPointerEventType.MOVE));
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) arrayList);
        HWRPointerEvent hWRPointerEvent = (HWRPointerEvent) firstOrNull;
        if (hWRPointerEvent != null) {
            hWRPointerEvent.setEventType(HWRPointerEventType.DOWN);
        }
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) arrayList);
        HWRPointerEvent hWRPointerEvent2 = (HWRPointerEvent) lastOrNull;
        if (hWRPointerEvent2 != null) {
            hWRPointerEvent2.setEventType(HWRPointerEventType.f42542UP);
        }
        return arrayList;
    }
}
