package com.onyx.android.sdk.hwr.utils;

import com.google.mlkit.vision.digitalink.Ink;
import com.google.mlkit.vision.digitalink.RecognitionContext;
import com.google.mlkit.vision.digitalink.WritingArea;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWRPointerEvent;
import com.onyx.android.sdk.hwr.data.constant.HWRPointerEventType;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u0006J\u0014\u0010\t\u001a\u00020\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u0014\u0010\u000f\u001a\u00020\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\fJ\u0014\u0010\u0013\u001a\u00020\u00142\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\u0015¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/utils/MLUtils;", "", "()V", "getInk", "Lcom/google/mlkit/vision/digitalink/Ink;", "input", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "getPreContext", "Lcom/google/mlkit/vision/digitalink/RecognitionContext;", "getTimelessInk", PointConstant.POINT_FILE_END, "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;", "preHandleInputPoints", "pointerEvents", "toInk", "toInkPoint", "Lcom/google/mlkit/vision/digitalink/Ink$Point;", "pointerEvent", "toInkStroke", "Lcom/google/mlkit/vision/digitalink/Ink$Stroke;", "", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nMLUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MLUtils.kt\ncom/onyx/android/sdk/hwr/utils/MLUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1855#2,2:76\n1855#2,2:78\n2634#2:80\n1549#2:82\n1620#2,3:83\n1#3:81\n*S KotlinDebug\n*F\n+ 1 MLUtils.kt\ncom/onyx/android/sdk/hwr/utils/MLUtils\n*L\n23#1:76,2\n32#1:78,2\n48#1:80\n71#1:82\n71#1:83,3\n48#1:81\n*E\n"})
/* loaded from: classes7.dex */
public final class MLUtils {

    @NotNull
    public static final MLUtils INSTANCE = new MLUtils();

    @NotNull
    public final Ink getInk(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return toInk(input.getPointerEvents());
    }

    @Nullable
    public final RecognitionContext getPreContext(@NotNull HWRInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (input.getViewWidth() <= 0.0f || input.getViewHeight() <= 0.0f) {
            return null;
        }
        RecognitionContext.Builder builder = RecognitionContext.builder();
        Intrinsics.checkNotNullExpressionValue(builder, "builder(...)");
        if (input.getPreContext().length() > 0) {
            builder.setPreContext(input.getPreContext());
        } else {
            builder.setPreContext("");
        }
        builder.setWritingArea(new WritingArea(input.getViewWidth(), input.getViewHeight()));
        return builder.build();
    }

    @NotNull
    public final Ink getTimelessInk(@NotNull List<HWRPointerEvent> points) {
        Intrinsics.checkNotNullParameter(points, "points");
        List<HWRPointerEvent> copy = HWRDataUtils.INSTANCE.copy(points);
        Iterator<T> it2 = copy.iterator();
        while (it2.hasNext()) {
            ((HWRPointerEvent) it2.next()).setT(-1L);
        }
        return toInk(copy);
    }

    @NotNull
    public final List<HWRPointerEvent> preHandleInputPoints(@NotNull List<HWRPointerEvent> pointerEvents) {
        int collectionSizeOrDefault;
        List<HWRPointerEvent> flatten;
        Intrinsics.checkNotNullParameter(pointerEvents, "pointerEvents");
        List<List<HWRPointerEvent>> group = HWRDataUtils.INSTANCE.group(pointerEvents);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(group, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = group.iterator();
        while (it2.hasNext()) {
            arrayList.add(HWRDataUtils.INSTANCE.resample((List) it2.next()));
        }
        flatten = CollectionsKt__IterablesKt.flatten(arrayList);
        return flatten;
    }

    @NotNull
    public final Ink toInk(@NotNull List<HWRPointerEvent> pointerEvents) {
        Intrinsics.checkNotNullParameter(pointerEvents, "pointerEvents");
        Ink.Builder builder = Ink.builder();
        Intrinsics.checkNotNullExpressionValue(builder, "builder(...)");
        Ink.Stroke.Builder builder2 = Ink.Stroke.builder();
        Intrinsics.checkNotNullExpressionValue(builder2, "builder(...)");
        for (HWRPointerEvent hWRPointerEvent : pointerEvents) {
            builder2.addPoint(INSTANCE.toInkPoint(hWRPointerEvent));
            if (hWRPointerEvent.getEventType() == HWRPointerEventType.f42542UP) {
                Ink.Stroke build = builder2.build();
                Intrinsics.checkNotNullExpressionValue(build, "build(...)");
                builder.addStroke(build);
                builder2 = Ink.Stroke.builder();
                Intrinsics.checkNotNullExpressionValue(builder2, "builder(...)");
            }
        }
        Ink build2 = builder.build();
        Intrinsics.checkNotNullExpressionValue(build2, "build(...)");
        return build2;
    }

    @NotNull
    public final Ink.Point toInkPoint(@NotNull HWRPointerEvent pointerEvent) {
        Intrinsics.checkNotNullParameter(pointerEvent, "pointerEvent");
        Ink.Point create = Ink.Point.create(pointerEvent.getX(), pointerEvent.getY(), pointerEvent.getT());
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return create;
    }

    @NotNull
    public final Ink.Stroke toInkStroke(@NotNull List<HWRPointerEvent> pointerEvents) {
        Intrinsics.checkNotNullParameter(pointerEvents, "pointerEvents");
        Ink.Stroke.Builder builder = Ink.Stroke.builder();
        Intrinsics.checkNotNullExpressionValue(builder, "builder(...)");
        Iterator<T> it2 = pointerEvents.iterator();
        while (it2.hasNext()) {
            builder.addPoint(INSTANCE.toInkPoint((HWRPointerEvent) it2.next()));
        }
        Ink.Stroke build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }
}
