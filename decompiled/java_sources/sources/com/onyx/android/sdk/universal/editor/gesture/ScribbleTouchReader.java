package com.onyx.android.sdk.universal.editor.gesture;

import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.core.math.MathUtils;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.prediction.EstimateManager;
import com.onyx.android.sdk.prediction.IEstimate;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.config.EditorTouchMode;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 :2\u00020\u0001:\u0001:B\u0011\u0012\b\b\u0002\u0010,\u001a\u00020\u0006¢\u0006\u0004\b9\u0010+J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bJ\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\tJ\u000e\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0006J\u001a\u0010\u0016\u001a\u00020\u000e2\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u0017J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\b\u0010 \u001a\u00020\u000eH\u0002J\u0010\u0010!\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\tH\u0002J\u0010\u0010\"\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\tH\u0002J\u0010\u0010#\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010&\u001a\u00020\u000eH\u0002R\"\u0010,\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001a\u0010/\u001a\b\u0012\u0004\u0012\u00020\t0-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010.R\u0018\u00102\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u00101R\"\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u00103R\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u00105R\u0018\u0010\r\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u00106R\u0018\u00108\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u00107¨\u0006;"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "", "Landroid/view/View;", "v", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouchEvent", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "getObservable", "isAcceptEvent", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "setEditorBundle", "touchData", "onTouchData", "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "touchMode", "updateTouchMode", "stylusOnly", "setEventFilter", "Lkotlin/Function1;", "filter", "i", "", "action", "a", "", CouchFieldKey.KEY_GROUP_ID, C6997f.f39671c, C6999h.f39688c, "c", "b", "e", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "d", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "getEnableEstimation", Constants.BOOLEAN_VALUE_SIG, "setEnableEstimation", "(Z)V", "enableEstimation", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "publisher", "Lcom/onyx/android/sdk/prediction/IEstimate;", "Lcom/onyx/android/sdk/prediction/IEstimate;", "estimateHolder", "Lkotlin/jvm/functions/Function1;", "eventFilter", "J", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "lastTouchData", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nScribbleTouchReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScribbleTouchReader.kt\ncom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,216:1\n1#2:217\n*E\n"})
/* loaded from: classes8.dex */
public final class ScribbleTouchReader {
    public static final long INVALID_GROUP_ID = 0;

    /* renamed from: a, reason: from kotlin metadata */
    public boolean enableEstimation;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final PublishSubject<TouchData> publisher;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public IEstimate estimateHolder;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public Function1<? super MotionEvent, Boolean> eventFilter;

    /* renamed from: e, reason: from kotlin metadata */
    public long groupId;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public EditorBundle editorBundle;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public TouchData lastTouchData;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: h */
    @NotNull
    public static final Function1<MotionEvent, Boolean> f52177h = new Function1<MotionEvent, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader$Companion$ALL_EVENT_FILTER$1
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final Boolean invoke(@NotNull MotionEvent it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    };

    /* renamed from: i */
    @NotNull
    public static final Function1<MotionEvent, Boolean> f52178i = new Function1<MotionEvent, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader$Companion$STYLUS_EVENT_FILTER$1
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final Boolean invoke(@NotNull MotionEvent it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(!MotionEventKt.isFingerTouch(it2));
        }
    };

    /* renamed from: j */
    @NotNull
    public static final Function1<MotionEvent, Boolean> f52179j = new Function1<MotionEvent, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader$Companion$FINGER_EVENT_FILTER$1
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final Boolean invoke(@NotNull MotionEvent it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(MotionEventKt.isFingerTouch(it2));
        }
    };

    /* renamed from: k */
    @NotNull
    public static final Function1<MotionEvent, Boolean> f52180k = new Function1<MotionEvent, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader$Companion$DISABLE_EVENT_FILTER$1
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final Boolean invoke(@NotNull MotionEvent it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.FALSE;
        }
    };

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000eR\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\bR\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\bR\u000e\u0010\r\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u001d\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\b¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion;", "", "()V", "ALL_EVENT_FILTER", "Lkotlin/Function1;", "Landroid/view/MotionEvent;", "", "getALL_EVENT_FILTER", "()Lkotlin/jvm/functions/Function1;", "DISABLE_EVENT_FILTER", "getDISABLE_EVENT_FILTER", "FINGER_EVENT_FILTER", "getFINGER_EVENT_FILTER", "INVALID_GROUP_ID", "", "STYLUS_EVENT_FILTER", "getSTYLUS_EVENT_FILTER", "isInvalidGroupId", "id", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Function1<MotionEvent, Boolean> getALL_EVENT_FILTER() {
            return ScribbleTouchReader.f52177h;
        }

        @NotNull
        public final Function1<MotionEvent, Boolean> getDISABLE_EVENT_FILTER() {
            return ScribbleTouchReader.f52180k;
        }

        @NotNull
        public final Function1<MotionEvent, Boolean> getFINGER_EVENT_FILTER() {
            return ScribbleTouchReader.f52179j;
        }

        @NotNull
        public final Function1<MotionEvent, Boolean> getSTYLUS_EVENT_FILTER() {
            return ScribbleTouchReader.f52178i;
        }

        public final boolean isInvalidGroupId(long id) {
            return id == 0;
        }

        public Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EditorTouchMode.values().length];
            try {
                iArr[EditorTouchMode.STYLUS_SCRIBBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EditorTouchMode.FINGER_SCRIBBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ScribbleTouchReader() {
        this(false, 1, null);
    }

    /* renamed from: a */
    public final void m40957a(int action, MotionEvent event) {
        TouchData touchData;
        if (action != 3 || (touchData = this.lastTouchData) == null) {
            return;
        }
        event.setLocation(touchData.getTouchPoint().getX(), touchData.getTouchPoint().getY());
    }

    /* renamed from: b */
    public final void m40958b(TouchData touchData) {
        if (touchData.isFingerToolType()) {
            if (touchData.isTouchDone()) {
                touchData.getTouchPoint().setPressure(0.105000004f);
            } else {
                touchData.getTouchPoint().setPressure(0.7f);
            }
        }
    }

    /* renamed from: c */
    public final void m40959c(TouchData touchData) {
        m40958b(touchData);
        touchData.getTouchPoint().setPressure(MathUtils.clamp(touchData.getTouchPoint().getPressure(), 0.001f, 1.0f));
    }

    /* renamed from: d */
    public final TouchPoint m40960d(MotionEvent event) {
        ArrayList<TouchPoint> estimate;
        Object lastOrNull;
        try {
            IEstimate iEstimate = this.estimateHolder;
            if (iEstimate == null || (estimate = iEstimate.estimate(event)) == null) {
                return null;
            }
            lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) estimate);
            return (TouchPoint) lastOrNull;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: e */
    public final void m40961e(View v) {
        if (this.enableEstimation && this.estimateHolder == null) {
            IEstimate createEstimate = EstimateManager.INSTANCE.createEstimate(ResManager.INSTANCE.getAppContext());
            this.estimateHolder = createEstimate;
            if (createEstimate != null) {
                createEstimate.init(v);
            }
        }
    }

    /* renamed from: f */
    public final void m40962f(long groupId) {
        Debug debug = Debug.INSTANCE;
        if (debug.getDebug() && groupId == 0) {
            debug.m32062w(AnyKt.toSimpleNameString(this), "groupId is invalid, down missing?", new Object[0]);
        }
    }

    /* renamed from: g */
    public final void m40963g() {
        try {
            IEstimate iEstimate = this.estimateHolder;
            if (iEstimate != null) {
                iEstimate.release();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final boolean getEnableEstimation() {
        return this.enableEstimation;
    }

    @NotNull
    public final Observable<TouchData> getObservable() {
        return this.publisher;
    }

    /* renamed from: h */
    public final void m40964h() {
        this.groupId = 0L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001a, code lost:
    
        if (r7 != 3) goto L20;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.onyx.android.sdk.geometry.data.TouchData m40965i(android.view.MotionEvent r11) {
        /*
            r10 = this;
            com.onyx.android.sdk.base.data.TouchPoint r0 = r10.m40960d(r11)
            long r1 = r10.groupId
            com.onyx.android.sdk.device.DeviceFactory r3 = com.onyx.android.sdk.device.DeviceFactory.INSTANCE
            com.onyx.android.sdk.device.CommonBaseDevice r3 = r3.getCurrentDevice()
            int r7 = r3.normalizeTouchAction(r11)
            if (r7 == 0) goto L51
            r3 = 1
            if (r7 == r3) goto L3e
            r3 = 2
            r4 = 0
            if (r7 == r3) goto L1d
            r0 = 3
            if (r7 == r0) goto L3e
            goto L60
        L1d:
            r10.m40962f(r1)
            r5 = 0
            int r3 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r3 != 0) goto L2c
            long r1 = r11.getEventTime()
            r10.groupId = r1
        L2c:
            if (r0 == 0) goto L34
            com.onyx.android.sdk.base.data.TouchPoint r0 = r0.copy()
            r5 = r0
            goto L35
        L34:
            r5 = r4
        L35:
            r6 = 0
            r8 = 2
            r9 = 0
            r4 = r11
            com.onyx.android.sdk.geometry.data.TouchData r4 = com.onyx.android.sdk.geometry.extension.MotionEventKt.toTouchData$default(r4, r5, r6, r7, r8, r9)
            goto L60
        L3e:
            r10.m40957a(r7, r11)
            r10.m40963g()
            r10.m40964h()
            r5 = 0
            r6 = 0
            r8 = 3
            r9 = 0
            r4 = r11
            com.onyx.android.sdk.geometry.data.TouchData r4 = com.onyx.android.sdk.geometry.extension.MotionEventKt.toTouchData$default(r4, r5, r6, r7, r8, r9)
            goto L60
        L51:
            long r1 = r11.getEventTime()
            r10.groupId = r1
            r5 = 0
            r6 = 0
            r8 = 3
            r9 = 0
            r4 = r11
            com.onyx.android.sdk.geometry.data.TouchData r4 = com.onyx.android.sdk.geometry.extension.MotionEventKt.toTouchData$default(r4, r5, r6, r7, r8, r9)
        L60:
            if (r4 != 0) goto L63
            goto L66
        L63:
            r4.setGroupId(r1)
        L66:
            if (r4 == 0) goto L7e
            r10.m40959c(r4)
            com.onyx.android.sdk.universal.editor.EditorBundle r0 = r10.editorBundle
            if (r0 == 0) goto L7e
            com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager r0 = com.onyx.android.sdk.universal.editor.extension.EditorBundleKt.handlerManager(r0)
            if (r0 == 0) goto L7e
            com.onyx.android.sdk.universal.editor.gesture.TouchEventTransformer r0 = r0.getRulerTransformHandler()
            if (r0 == 0) goto L7e
            r0.processTouchData(r11, r4)
        L7e:
            r10.lastTouchData = r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader.m40965i(android.view.MotionEvent):com.onyx.android.sdk.geometry.data.TouchData");
    }

    public final boolean isAcceptEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return this.eventFilter.invoke(event).booleanValue();
    }

    public final void onTouchData(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        this.publisher.onNext(touchData);
    }

    public final boolean onTouchEvent(@NotNull View v, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(event, "event");
        if (!isAcceptEvent(event)) {
            return false;
        }
        m40961e(v);
        TouchData m40965i = m40965i(event);
        if (m40965i == null) {
            return false;
        }
        onTouchData(m40965i);
        return true;
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public final void setEnableEstimation(boolean z) {
        this.enableEstimation = z;
    }

    public final void setEventFilter(boolean stylusOnly) {
        Function1<MotionEvent, Boolean> function1;
        if (stylusOnly) {
            function1 = f52178i;
        } else {
            function1 = f52177h;
        }
        setEventFilter(function1);
    }

    public final void updateTouchMode(@NotNull EditorTouchMode touchMode) {
        Intrinsics.checkNotNullParameter(touchMode, "touchMode");
        int i = WhenMappings.$EnumSwitchMapping$0[touchMode.ordinal()];
        this.eventFilter = i != 1 ? i != 2 ? f52180k : f52177h : f52178i;
    }

    public ScribbleTouchReader(boolean z) {
        this.enableEstimation = z;
        PublishSubject<TouchData> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.publisher = create;
        this.eventFilter = f52178i;
    }

    public final void setEventFilter(@NotNull Function1<? super MotionEvent, Boolean> filter) {
        Intrinsics.checkNotNullParameter(filter, "filter");
        this.eventFilter = filter;
    }

    public /* synthetic */ ScribbleTouchReader(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z);
    }
}
