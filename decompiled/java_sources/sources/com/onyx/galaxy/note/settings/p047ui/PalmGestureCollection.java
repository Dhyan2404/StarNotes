package com.onyx.galaxy.note.settings.p047ui;

import android.graphics.PointF;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.VibrateUtils;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.rxgesture.RxGestureConstant;
import com.onyx.android.sdk.rxgesture.palm.PalmGestureDetector;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\u000b¢\u0006\u0004\b!\u0010\"J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\b\u0010\b\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\u0006H\u0002J\b\u0010\n\u001a\u00020\u0006H\u0002R\u0014\u0010\r\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\fR\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0011R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;", "", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "isForceCollection", "", "handleEvent", "b", "c", "a", "Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;", "Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;", "palmCollectionType", "Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;", "Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;", "palmGestureDetector", Constants.HASIDCALL_INDEX_SIG, "isLongPress", "d", "isSingleClick", "e", "isFingerType", "Landroid/graphics/PointF;", C6997f.f39671c, "Landroid/graphics/PointF;", "lastMotionPoint", C6998g.f39679a, "downPointPoint", "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;", "longPressTimer", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PalmGestureCollection {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final PalmCollectionType palmCollectionType;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final PalmGestureDetector palmGestureDetector;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean isLongPress;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean isSingleClick;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean isFingerType;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public PointF lastMotionPoint;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public PointF downPointPoint;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RxTimerUtil.TimerObserver longPressTimer;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PalmCollectionType.values().length];
            try {
                iArr[PalmCollectionType.LONG_PRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PalmCollectionType.SINGLE_CLICK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public PalmGestureCollection(@NotNull PalmCollectionType palmCollectionType) {
        Intrinsics.checkNotNullParameter(palmCollectionType, "palmCollectionType");
        this.palmCollectionType = palmCollectionType;
        this.palmGestureDetector = PalmGestureDetector.INSTANCE.getInstance();
        this.lastMotionPoint = new PointF();
        this.downPointPoint = new PointF();
        this.longPressTimer = new RxTimerUtil.TimerObserver() { // from class: com.onyx.galaxy.note.settings.ui.PalmGestureCollection$longPressTimer$1
            @Override // io.reactivex.rxjava3.core.Observer
            public /* bridge */ /* synthetic */ void onNext(Long l) {
                onNext(l.longValue());
            }

            public void onNext(long aLong) {
                PalmGestureCollection.this.isLongPress = true;
                VibrateUtils.vibrate(100L);
            }
        };
    }

    public static /* synthetic */ void handleEvent$default(PalmGestureCollection palmGestureCollection, MotionEvent motionEvent, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        palmGestureCollection.handleEvent(motionEvent, z);
    }

    /* renamed from: a */
    public final void m50739a() {
        this.palmGestureDetector.releaseTouchList();
        m50741c();
        this.isLongPress = false;
        this.isSingleClick = false;
    }

    /* renamed from: b */
    public final void m50740b() {
        RxTimerUtil.INSTANCE.timer(500L, TimeUnit.MILLISECONDS, this.longPressTimer);
    }

    /* renamed from: c */
    public final void m50741c() {
        RxTimerUtil.INSTANCE.cancel(this.longPressTimer);
    }

    public final void handleEvent(@NotNull MotionEvent event, boolean isForceCollection) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (AppConfig.INSTANCE.isEnabledPalmReject() || isForceCollection) {
            int actionMasked = event.getActionMasked();
            if (actionMasked == 0) {
                this.isFingerType = event.getToolType(0) == 1;
                this.lastMotionPoint.set(event.getRawX(), event.getRawY());
                this.downPointPoint.set(event.getRawX(), event.getRawY());
                if (this.isFingerType) {
                    this.palmGestureDetector.collectionTouchList(event);
                    int i = WhenMappings.$EnumSwitchMapping$0[this.palmCollectionType.ordinal()];
                    if (i == 1) {
                        this.isLongPress = false;
                        m50740b();
                        return;
                    } else {
                        if (i != 2) {
                            return;
                        }
                        this.isSingleClick = true;
                        return;
                    }
                }
                return;
            }
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.isFingerType) {
                        this.palmGestureDetector.collectionTouchList(event);
                        MathUtils mathUtils = MathUtils.INSTANCE;
                        float rawX = event.getRawX();
                        float rawY = event.getRawY();
                        PointF pointF = this.lastMotionPoint;
                        double distance = mathUtils.distance(rawX, rawY, pointF.x, pointF.y);
                        float rawX2 = event.getRawX();
                        float rawY2 = event.getRawY();
                        PointF pointF2 = this.downPointPoint;
                        double distance2 = mathUtils.distance(rawX2, rawY2, pointF2.x, pointF2.y);
                        int i2 = WhenMappings.$EnumSwitchMapping$0[this.palmCollectionType.ordinal()];
                        if (i2 != 1) {
                            if (i2 == 2) {
                                RxGestureConstant rxGestureConstant = RxGestureConstant.INSTANCE;
                                if (distance > rxGestureConstant.getSINGLE_TAP_DISTANCE_THRESHOLD() || distance2 > rxGestureConstant.getSINGLE_TAP_DISTANCE_THRESHOLD() || MotionEventKt.isMultiTouch(event)) {
                                    this.isSingleClick = false;
                                }
                            }
                        } else if (distance > 5.0d || MotionEventKt.isMultiTouch(event)) {
                            m50741c();
                        }
                        this.lastMotionPoint.set(event.getRawX(), event.getRawY());
                        return;
                    }
                    return;
                }
                if (actionMasked != 3) {
                    return;
                }
            }
            if (!this.isFingerType) {
                this.palmGestureDetector.releaseTouchList();
                return;
            }
            if (this.isLongPress) {
                this.palmGestureDetector.analysisSizeList(true);
            }
            if (this.isSingleClick) {
                PalmGestureDetector.analysisSizeList$default(this.palmGestureDetector, false, 1, null);
            }
            m50739a();
        }
    }
}
