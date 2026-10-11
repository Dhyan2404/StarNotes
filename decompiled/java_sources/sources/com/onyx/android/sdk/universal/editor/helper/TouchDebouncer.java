package com.onyx.android.sdk.universal.editor.helper;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.onyx.android.sdk.universal.C8045R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u0005R\u0016\u0010\f\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;", "", "", gon.f71290o0, "stop", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "point", "add", "", "detect", "a", Constants.HASIDCALL_INDEX_SIG, "detecting", "", "b", "Ljava/util/List;", PointConstant.POINT_FILE_END, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTouchDebouncer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchDebouncer.kt\ncom/onyx/android/sdk/universal/editor/helper/TouchDebouncer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n766#2:57\n857#2,2:58\n*S KotlinDebug\n*F\n+ 1 TouchDebouncer.kt\ncom/onyx/android/sdk/universal/editor/helper/TouchDebouncer\n*L\n37#1:57\n37#1:58,2\n*E\n"})
/* loaded from: classes8.dex */
public final class TouchDebouncer {

    /* renamed from: a, reason: from kotlin metadata */
    public boolean detecting;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<TouchPoint> points = new ArrayList();

    public final void add(@NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(point, "point");
        this.points.add(point);
    }

    public final boolean detect(@NotNull TouchPoint point) {
        List<TouchPoint> mutableList;
        Object last;
        Intrinsics.checkNotNullParameter(point, "point");
        long timestamp = point.getTimestamp() - ResManager.INSTANCE.getLong(C8045R.integer.hand_hold_duration);
        List<TouchPoint> list = this.points;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (((TouchPoint) next).getTimestamp() > timestamp) {
                arrayList.add(next);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        this.points = mutableList;
        ResManager resManager = ResManager.INSTANCE;
        if (this.points.size() < resManager.getInteger(C8045R.integer.hand_hold_min_point_size)) {
            return false;
        }
        float length = GeometryUtils.INSTANCE.farthestPointPair(this.points).length();
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) this.points);
        TouchPoint touchPoint = (TouchPoint) last;
        long timestamp2 = point.getTimestamp() - touchPoint.getTimestamp();
        float length2 = new TouchPointPair(point, touchPoint).length();
        return length < ((float) resManager.getDimens(C8045R.dimen.hand_hold_max_distance)) && timestamp2 < resManager.getLong(C8045R.integer.hand_shake_max_duration) && length2 < ((float) resManager.getDimens(C8045R.dimen.hand_shake_max_distance)) && length2 / DateTimeUtil.INSTANCE.msToSecFloat(timestamp2) > ((float) resManager.getDimens(C8045R.dimen.hand_shake_min_speed)) && point.getPressure() < touchPoint.getPressure();
    }

    public final void start() {
        this.detecting = true;
    }

    public final void stop() {
        this.detecting = false;
        this.points.clear();
    }
}
