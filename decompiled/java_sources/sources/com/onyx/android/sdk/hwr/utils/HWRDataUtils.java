package com.onyx.android.sdk.hwr.utils;

import android.graphics.PointF;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.config.GlobalConfig;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.geometry.extension.PathKt;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.hwr.data.bean.HWRCandidate;
import com.onyx.android.sdk.hwr.data.bean.HWRChar;
import com.onyx.android.sdk.hwr.data.bean.HWRConvertBean;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWRPointerEvent;
import com.onyx.android.sdk.hwr.data.constant.HWRPointerEventType;
import com.onyx.android.sdk.neohwr.layout.SourcePointGroup;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0013\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b.\u0010/J\u0012\u0010\u0006\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003J\n\u0010\b\u001a\u00020\u0007*\u00020\u0002J\u0018\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003J\n\u0010\r\u001a\u00020\f*\u00020\fJ\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\t*\b\u0012\u0004\u0012\u00020\f0\tJ\n\u0010\u000f\u001a\u00020\u000e*\u00020\fJ\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000e0\t*\b\u0012\u0004\u0012\u00020\f0\tJ\n\u0010\u0011\u001a\u00020\f*\u00020\u000eJ\u001c\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00120\u0012*\b\u0012\u0004\u0012\u00020\f0\tJ\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\t*\b\u0012\u0004\u0012\u00020\f0\tJ\n\u0010\u0015\u001a\u00020\u0005*\u00020\u0003J\u0010\u0010\u0017\u001a\u00020\u0016*\b\u0012\u0004\u0012\u00020\u000e0\tJ\n\u0010\u0018\u001a\u00020\u0005*\u00020\u0003J\u0018\u0010\u0018\u001a\u00020\u0005*\b\u0012\u0004\u0012\u00020\f0\t2\u0006\u0010\u0019\u001a\u00020\u0016J\u000e\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0016R\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010(\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010\u001f\u001a\u0004\b&\u0010!\"\u0004\b'\u0010#R\u001a\u0010-\u001a\u00020\u00168\u0006X\u0086D¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;", "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "input", "", "convert", "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;", "candidateFromChar", "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;", "charFromCandidate", "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;", "copy", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "toTouchPoint", "toTouchPointList", "toPointerEvent", "", "group", "resample", "updateCanvasSize", "", "asDebugJson", "saveToDebugFile", "name", "file", "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;", "readFromDebugFile", "", "a", Constants.HASIDCALL_INDEX_SIG, "getSaveDebugPoints", Constants.BOOLEAN_VALUE_SIG, "setSaveDebugPoints", "(Z)V", "saveDebugPoints", "b", "getReadDebugPoints", "setReadDebugPoints", "readDebugPoints", "c", Constants.STRING_SIG, "getDebugFile", "()Ljava/lang/String;", "debugFile", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWRDataUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRDataUtils.kt\ncom/onyx/android/sdk/hwr/utils/HWRDataUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,180:1\n1549#2:181\n1620#2,3:182\n766#2:187\n857#2,2:188\n1549#2:190\n1620#2,3:191\n1549#2:194\n1620#2,3:195\n1855#2,2:198\n1549#2:200\n1620#2,3:201\n1549#2:205\n1620#2,3:206\n1855#2,2:209\n37#3,2:185\n1#4:204\n*S KotlinDebug\n*F\n+ 1 HWRDataUtils.kt\ncom/onyx/android/sdk/hwr/utils/HWRDataUtils\n*L\n49#1:181\n49#1:182,3\n69#1:187\n69#1:188,2\n88#1:190\n88#1:191,3\n102#1:194\n102#1:195,3\n117#1:198,2\n132#1:200\n132#1:201,3\n150#1:205\n150#1:206,3\n175#1:209,2\n49#1:185,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HWRDataUtils {

    /* renamed from: a, reason: from kotlin metadata */
    public static boolean saveDebugPoints;

    /* renamed from: b, reason: from kotlin metadata */
    public static boolean readDebugPoints;

    @NotNull
    public static final HWRDataUtils INSTANCE = new HWRDataUtils();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String debugFile = "sdcard/debug-temp/debug.json";

    @NotNull
    public final String asDebugJson(@NotNull List<TouchPoint> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        List<TouchPoint> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TouchPoint touchPoint : list2) {
            arrayList.add(new PointF(touchPoint.getX(), touchPoint.getY()));
        }
        return jSONUtils.asPrettyJson(arrayList);
    }

    @NotNull
    public final HWRCandidate candidateFromChar(@NotNull HWRConvertBean hWRConvertBean) {
        int collectionSizeOrDefault;
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(hWRConvertBean, "<this>");
        List<HWRChar> chars = hWRConvertBean.getChars();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(chars, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = chars.iterator();
        while (it2.hasNext()) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) ((HWRChar) it2.next()).getCandidates());
            String str = (String) firstOrNull;
            if (str == null) {
                str = "";
            }
            arrayList.add(str);
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        return HWRCandidate.INSTANCE.text(StringKt.concat((String[]) Arrays.copyOf(strArr, strArr.length)));
    }

    @NotNull
    public final List<HWRChar> charFromCandidate(@NotNull HWRConvertBean hWRConvertBean, @NotNull HWRInput input) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(hWRConvertBean, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        RectF region = input.getRegion();
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) hWRConvertBean.getCandidates());
        HWRCandidate hWRCandidate = (HWRCandidate) firstOrNull;
        String text = hWRCandidate != null ? hWRCandidate.getText() : null;
        if (text == null) {
            text = "";
        }
        SourcePointGroup merge = SourcePointGroup.INSTANCE.merge(input.getSourceStrokePointGroups());
        ArrayList arrayList = new ArrayList();
        int length = text.length();
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            RectF rectF = new RectF(((i / text.length()) * region.width()) + region.left, region.top, ((i2 / text.length()) * region.width()) + region.left, region.bottom);
            HWRChar hWRChar = new HWRChar();
            hWRChar.setLabel(String.valueOf(StringKt.charAt$default(text, i, (char) 0, 2, null)));
            hWRChar.setCandidates(CollectionKt.asMutableList(hWRChar.getLabel()));
            hWRChar.setSourcePointGroup(merge.copy());
            SourcePointGroup sourcePointGroup = hWRChar.getSourcePointGroup();
            List<TouchPoint> points = merge.getPoints();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : points) {
                TouchPoint touchPoint = (TouchPoint) obj;
                if (rectF.contains(touchPoint.getX(), touchPoint.getY())) {
                    arrayList2.add(obj);
                }
            }
            sourcePointGroup.setPoints(arrayList2);
            arrayList.add(hWRChar);
            i = i2;
        }
        return arrayList;
    }

    public final void convert(@NotNull HWRConvertBean hWRConvertBean, @NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(hWRConvertBean, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        if (hWRConvertBean.getCandidates().isEmpty() && (!hWRConvertBean.getChars().isEmpty())) {
            hWRConvertBean.getCandidates().add(candidateFromChar(hWRConvertBean));
        }
        if (hWRConvertBean.getChars().isEmpty() && (!hWRConvertBean.getCandidates().isEmpty())) {
            hWRConvertBean.getChars().addAll(charFromCandidate(hWRConvertBean, input));
        }
    }

    @NotNull
    public final HWRPointerEvent copy(@NotNull HWRPointerEvent hWRPointerEvent) {
        Intrinsics.checkNotNullParameter(hWRPointerEvent, "<this>");
        HWRPointerEvent hWRPointerEvent2 = new HWRPointerEvent();
        hWRPointerEvent2.setEventType(hWRPointerEvent.getEventType());
        hWRPointerEvent2.setX(hWRPointerEvent.getX());
        hWRPointerEvent2.setY(hWRPointerEvent.getY());
        hWRPointerEvent2.setT(hWRPointerEvent.getT());
        hWRPointerEvent2.setF(hWRPointerEvent.getCom.miui.penengine.e.f.c java.lang.String());
        hWRPointerEvent2.setPointerType(hWRPointerEvent.getPointerType());
        hWRPointerEvent2.setPointerId(hWRPointerEvent.getPointerId());
        return hWRPointerEvent2;
    }

    @NotNull
    public final String getDebugFile() {
        return debugFile;
    }

    public final boolean getReadDebugPoints() {
        return readDebugPoints;
    }

    public final boolean getSaveDebugPoints() {
        return saveDebugPoints;
    }

    @NotNull
    public final List<List<HWRPointerEvent>> group(@NotNull List<HWRPointerEvent> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (HWRPointerEvent hWRPointerEvent : list) {
            if (hWRPointerEvent.getEventType() == HWRPointerEventType.DOWN) {
                arrayList2 = new ArrayList();
                arrayList.add(arrayList2);
            }
            arrayList2.add(hWRPointerEvent);
        }
        return arrayList;
    }

    @NotNull
    public final HWRPointerEvent.HWRPointEventList readFromDebugFile(@NotNull String file) {
        Object firstOrNull;
        Object lastOrNull;
        Intrinsics.checkNotNullParameter(file, "file");
        HWRPointerEvent.HWRPointEventList hWRPointEventList = (HWRPointerEvent.HWRPointEventList) JSONUtils.INSTANCE.parseObject(FileUtils.INSTANCE.readContentOfFile(file), HWRPointerEvent.HWRPointEventList.class);
        if (hWRPointEventList == null) {
            hWRPointEventList = new HWRPointerEvent.HWRPointEventList();
        }
        Iterator<HWRPointerEvent> it2 = hWRPointEventList.iterator();
        while (it2.hasNext()) {
            it2.next().setEventType(HWRPointerEventType.MOVE);
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) hWRPointEventList);
        HWRPointerEvent hWRPointerEvent = (HWRPointerEvent) firstOrNull;
        if (hWRPointerEvent != null) {
            hWRPointerEvent.setEventType(HWRPointerEventType.DOWN);
        }
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) hWRPointEventList);
        HWRPointerEvent hWRPointerEvent2 = (HWRPointerEvent) lastOrNull;
        if (hWRPointerEvent2 != null) {
            hWRPointerEvent2.setEventType(HWRPointerEventType.f42542UP);
        }
        return hWRPointEventList;
    }

    @NotNull
    public final List<HWRPointerEvent> resample(@NotNull List<HWRPointerEvent> list) {
        int collectionSizeOrDefault;
        Object first;
        Object last;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<TouchPoint> touchPointList = toTouchPointList(list);
        List<TouchPoint> resample = PathKt.resample(PathKt.createPathFrom$default(touchPointList, null, 2, null), Float.valueOf(GeometryUtils.INSTANCE.getResampleSpacing(touchPointList)));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(resample, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = resample.iterator();
        while (it2.hasNext()) {
            arrayList.add(INSTANCE.toPointerEvent((TouchPoint) it2.next()));
        }
        if (arrayList.isEmpty()) {
            return arrayList;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) arrayList);
        ((HWRPointerEvent) first).setEventType(HWRPointerEventType.DOWN);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) arrayList);
        ((HWRPointerEvent) last).setEventType(HWRPointerEventType.f42542UP);
        return arrayList;
    }

    public final void saveToDebugFile(@NotNull HWRInput hWRInput) {
        Intrinsics.checkNotNullParameter(hWRInput, "<this>");
        if (saveDebugPoints) {
            String format = DateTimeUtil.INSTANCE.getDATE_FORMAT_YMDHMS().format(new Date());
            List<HWRPointerEvent> pointerEvents = hWRInput.getPointerEvents();
            Intrinsics.checkNotNull(format);
            saveToDebugFile(pointerEvents, format);
        }
    }

    public final void setReadDebugPoints(boolean z) {
        readDebugPoints = z;
    }

    public final void setSaveDebugPoints(boolean z) {
        saveDebugPoints = z;
    }

    @NotNull
    public final HWRPointerEvent toPointerEvent(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        HWRPointerEvent hWRPointerEvent = new HWRPointerEvent();
        hWRPointerEvent.setX(touchPoint.getX());
        hWRPointerEvent.setY(touchPoint.getY());
        hWRPointerEvent.setT(0L);
        hWRPointerEvent.setEventType(HWRPointerEventType.MOVE);
        return hWRPointerEvent;
    }

    @NotNull
    public final TouchPoint toTouchPoint(@NotNull HWRPointerEvent hWRPointerEvent) {
        Intrinsics.checkNotNullParameter(hWRPointerEvent, "<this>");
        TouchPoint touchPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        touchPoint.setX(hWRPointerEvent.getX());
        touchPoint.setY(hWRPointerEvent.getY());
        touchPoint.m72174setTimestamp(hWRPointerEvent.getT());
        touchPoint.setPressure(hWRPointerEvent.getCom.miui.penengine.e.f.c java.lang.String());
        return touchPoint;
    }

    @NotNull
    public final List<TouchPoint> toTouchPointList(@NotNull List<HWRPointerEvent> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<HWRPointerEvent> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(INSTANCE.toTouchPoint((HWRPointerEvent) it2.next()));
        }
        return arrayList;
    }

    public final void updateCanvasSize(@NotNull HWRInput hWRInput) {
        Intrinsics.checkNotNullParameter(hWRInput, "<this>");
        List<HWRPointerEvent> pointerEvents = hWRInput.getPointerEvents();
        Iterator<T> it2 = pointerEvents.iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        float x = ((HWRPointerEvent) it2.next()).getX();
        while (it2.hasNext()) {
            x = Math.max(x, ((HWRPointerEvent) it2.next()).getX());
        }
        Iterator<T> it3 = pointerEvents.iterator();
        if (!it3.hasNext()) {
            throw new NoSuchElementException();
        }
        float x2 = ((HWRPointerEvent) it3.next()).getX();
        while (it3.hasNext()) {
            x2 = Math.min(x2, ((HWRPointerEvent) it3.next()).getX());
        }
        float f = x - x2;
        Iterator<T> it4 = pointerEvents.iterator();
        if (!it4.hasNext()) {
            throw new NoSuchElementException();
        }
        float y = ((HWRPointerEvent) it4.next()).getY();
        while (it4.hasNext()) {
            y = Math.max(y, ((HWRPointerEvent) it4.next()).getY());
        }
        Iterator<T> it5 = pointerEvents.iterator();
        if (!it5.hasNext()) {
            throw new NoSuchElementException();
        }
        float y2 = ((HWRPointerEvent) it5.next()).getY();
        while (it5.hasNext()) {
            y2 = Math.min(y2, ((HWRPointerEvent) it5.next()).getY());
        }
        hWRInput.setViewWidth(f * 1.5f);
        hWRInput.setViewHeight((y - y2) * 1.5f);
    }

    public final void saveToDebugFile(@NotNull List<HWRPointerEvent> list, @NotNull String name) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        if (ContextKt.hasStoragePermission(ResManager.INSTANCE.getAppContext(), GlobalConfig.INSTANCE.isStorageManagerEnable())) {
            String str = "sdcard/debug-temp/" + name + ".json";
            FileUtils fileUtils = FileUtils.INSTANCE;
            fileUtils.ensureFileExists(str);
            fileUtils.saveContentToFile(asDebugJson(toTouchPointList(list)), str);
            Debug.INSTANCE.m32037d("handwrite debug file saved : " + str);
        }
    }

    @NotNull
    public final List<HWRPointerEvent> copy(@NotNull List<HWRPointerEvent> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<HWRPointerEvent> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(INSTANCE.copy((HWRPointerEvent) it2.next()));
        }
        return arrayList;
    }
}
