package com.onyx.android.sdk.rxgesture.pen;

import android.graphics.Rect;
import android.view.ViewConfiguration;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.p018rx.ObservableHolder;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u0000 =2\u00020\u0001:\u0001=B\u0007¢\u0006\u0004\b;\u0010<J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007J\u0016\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nJ\u0006\u0010\u000f\u001a\u00020\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002R \u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00120\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001d\u0010*\u001a\b\u0012\u0004\u0012\u00020\u001d0%8\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R*\u0010:\u001a\u00020\n2\u0006\u00103\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109¨\u0006>"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;", "", "", "resetPenStatus", "Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;", "status", "postEvent", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "data", "onTouchEvent", "", "x", "y", "", "isInLimitRect", "dispose", "a", "", "Lcom/onyx/android/sdk/rxgesture/pen/PenReader;", "Ljava/util/Map;", "readerMap", "Landroid/graphics/Rect;", "b", "Landroid/graphics/Rect;", "getLimitRect", "()Landroid/graphics/Rect;", "setLimitRect", "(Landroid/graphics/Rect;)V", "limitRect", "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;", "c", "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;", "getPenStatusBean", "()Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;", "setPenStatusBean", "(Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;)V", "penStatusBean", "Lcom/onyx/android/sdk/base/rx/ObservableHolder;", "d", "Lcom/onyx/android/sdk/base/rx/ObservableHolder;", "getObservableHolder", "()Lcom/onyx/android/sdk/base/rx/ObservableHolder;", "observableHolder", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "e", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getDownPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setDownPoint", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "downPoint", "reader", C6997f.f39671c, "I", "getActiveReader", "()I", "setActiveReader", "(I)V", "activeReader", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RxPenGesture {
    public static final int DOWN_READER_TYPE = 1;
    public static final int INIT_READER_TYPE = 0;
    public static final int LONG_PRESSURE_MOVE_LIMIT_DISTANCE = 6;
    public static final long LONG_PRESS_LIMIT_TIME_MS = 500;
    public static final int LONG_PRESS_READER_TYPE = 4;
    public static final int MOVE_PAUSE_LIMIT_DISTANCE = 2;
    public static final long MOVE_PAUSE_LIMIT_TIME_MS = 400;
    public static final int MOVE_READER_TYPE = 2;
    public static final int UP_READER_TYPE = 3;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Map<Integer, PenReader> readerMap = new LinkedHashMap();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public Rect limitRect = new Rect();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public PenStatusBean penStatusBean = new PenStatusBean();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final ObservableHolder<PenStatusBean> observableHolder = new ObservableHolder<>();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public TouchPoint downPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0, 127, null);

    /* renamed from: f, reason: from kotlin metadata */
    public int activeReader;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: g */
    public static final int f46573g = Math.max(6, ViewConfiguration.get(ResManager.INSTANCE.getAppContext()).getScaledTouchSlop() / 2);

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture$Companion;", "", "()V", "DOWN_READER_TYPE", "", "INIT_READER_TYPE", "LONG_PRESSURE_MOVE_LIMIT_DISTANCE", "LONG_PRESS_LIMIT_DISTANCE", "getLONG_PRESS_LIMIT_DISTANCE", "()I", "LONG_PRESS_LIMIT_TIME_MS", "", "LONG_PRESS_READER_TYPE", "MOVE_PAUSE_LIMIT_DISTANCE", "MOVE_PAUSE_LIMIT_TIME_MS", "MOVE_READER_TYPE", "UP_READER_TYPE", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getLONG_PRESS_LIMIT_DISTANCE() {
            return RxPenGesture.f46573g;
        }

        public Companion() {
        }
    }

    public RxPenGesture() {
        m36054a();
    }

    /* renamed from: a */
    public final void m36054a() {
        this.readerMap.put(0, new PenInitReader(this));
        this.readerMap.put(1, new PenDownReader(this));
        this.readerMap.put(4, new PenLongPressReader(this));
        this.readerMap.put(2, new PenMoveReader(this));
        this.readerMap.put(3, new PenUpReader(this));
    }

    public final void dispose() {
        this.observableHolder.dispose();
    }

    public final int getActiveReader() {
        return this.activeReader;
    }

    @NotNull
    public final TouchPoint getDownPoint() {
        return this.downPoint;
    }

    @NotNull
    public final Rect getLimitRect() {
        return this.limitRect;
    }

    @NotNull
    public final ObservableHolder<PenStatusBean> getObservableHolder() {
        return this.observableHolder;
    }

    @NotNull
    public final PenStatusBean getPenStatusBean() {
        return this.penStatusBean;
    }

    public final boolean isInLimitRect(int x, int y) {
        return this.limitRect.contains(x, y);
    }

    public final void onTouchEvent(@NotNull TouchData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        PenReader penReader = this.readerMap.get(Integer.valueOf(this.activeReader));
        if (penReader != null) {
            penReader.onTouchEvent(data);
        }
    }

    public final void postEvent(@NotNull PenStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.penStatusBean.setPenStatus(status);
        postEvent();
    }

    public final void resetPenStatus() {
        this.penStatusBean = new PenStatusBean();
    }

    public final void setActiveReader(int i) {
        int i2 = this.activeReader;
        if (i2 == i) {
            return;
        }
        PenReader penReader = this.readerMap.get(Integer.valueOf(i2));
        if (penReader != null) {
            penReader.onDeactivate();
        }
        this.activeReader = i;
        PenReader penReader2 = this.readerMap.get(Integer.valueOf(i));
        if (penReader2 != null) {
            penReader2.onActivate();
        }
    }

    public final void setDownPoint(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.downPoint = touchPoint;
    }

    public final void setLimitRect(@NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "<set-?>");
        this.limitRect = rect;
    }

    public final void setPenStatusBean(@NotNull PenStatusBean penStatusBean) {
        Intrinsics.checkNotNullParameter(penStatusBean, "<set-?>");
        this.penStatusBean = penStatusBean;
    }

    public final void postEvent() {
        this.observableHolder.onNext(this.penStatusBean.copy());
    }
}
