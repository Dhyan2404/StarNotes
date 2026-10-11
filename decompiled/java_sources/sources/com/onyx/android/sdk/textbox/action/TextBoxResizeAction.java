package com.onyx.android.sdk.textbox.action;

import android.graphics.RectF;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.textbox.data.TransformType;
import com.onyx.android.sdk.textbox.utils.TextBoxUtils;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0007\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001c¢\u0006\u0004\b.\u0010/J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\bH\u0014J\b\u0010\n\u001a\u00020\u0000H\u0002J\b\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\rH\u0002J\u0018\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\rH\u0002J(\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u000fH\u0002J(\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u000fH\u0002R\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\"\u001a\u00020\u000f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010)\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/action/TextBoxResizeAction;", "Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;", "Lcom/onyx/android/sdk/textbox/data/TransformType;", "type", "setType", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "setMotionEvent", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "r", "", "s", "", "m", "", "width", "limit", C4921e.f26528e, "height", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "lastInvertPoint", "moveInvertPoint", "dx", "q", "dy", "p", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", C6997f.f39671c, "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "textBoxView", C6998g.f39679a, "I", "FILTER_EVENT_TIME", C6999h.f39688c, "Lcom/onyx/android/sdk/textbox/data/TransformType;", "i", "Landroid/view/MotionEvent;", "j", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "lastPoint", "", C4921e.f26537n, "F", "rotate", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TextBoxResizeAction extends TextBoxBaseAction<TextBoxResizeAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public TextBoxView textBoxView;

    /* renamed from: g, reason: from kotlin metadata */
    public final int FILTER_EVENT_TIME;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public TransformType type;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public MotionEvent event;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public TouchPoint lastPoint;

    /* renamed from: k, reason: from kotlin metadata */
    public float rotate;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TransformType.values().length];
            try {
                iArr[TransformType.RESIZE_L.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TransformType.RESIZE_R.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TransformType.RESIZE_T.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TransformType.RESIZE_B.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[TransformType.RESIZE_TL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[TransformType.RESIZE_TR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[TransformType.RESIZE_BL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[TransformType.RESIZE_BR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.android.sdk.textbox.action.TextBoxResizeAction$a */
    /* loaded from: classes8.dex */
    public static final class C8015a<T, R> implements Function {
        public C8015a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextBoxResizeAction apply(@NotNull TextBoxResizeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextBoxResizeAction.this.m36100r();
        }
    }

    public TextBoxResizeAction(@NotNull TextBoxView textBoxView) {
        Intrinsics.checkNotNullParameter(textBoxView, "textBoxView");
        this.textBoxView = textBoxView;
        this.FILTER_EVENT_TIME = 16;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<TextBoxResizeAction> create() {
        Observable<TextBoxResizeAction> map = Observable.just(this).observeOn(getMainUIScheduler()).map(new C8015a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final boolean m36095m() {
        if (!this.textBoxView.isLimitTranslateRect()) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        TouchPoint touchPoint = this.lastPoint;
        Intrinsics.checkNotNull(touchPoint);
        long timestamp = currentTimeMillis - touchPoint.getTimestamp();
        RectF rectF = new RectF(this.textBoxView.getLimitRect());
        RectKt.expand(rectF, -this.textBoxView.getPaddingNonClick());
        if (timestamp >= this.FILTER_EVENT_TIME) {
            MotionEvent motionEvent = this.event;
            Intrinsics.checkNotNull(motionEvent);
            float rawX = motionEvent.getRawX();
            MotionEvent motionEvent2 = this.event;
            Intrinsics.checkNotNull(motionEvent2);
            if (rectF.contains(rawX, motionEvent2.getRawY())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: n */
    public final boolean m36096n(int height, boolean limit) {
        if (limit && !this.textBoxView.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MODE java.lang.String().canUpdateEditorHeight(height)) {
            return false;
        }
        this.textBoxView.updateHeight(height);
        return true;
    }

    /* renamed from: o */
    public final boolean m36097o(int width, boolean limit) {
        if (limit && !this.textBoxView.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MODE java.lang.String().canUpdateEditorWidth(width)) {
            return false;
        }
        this.textBoxView.updateWidth(width);
        return true;
    }

    /* renamed from: p */
    public final void m36098p(TouchPoint lastInvertPoint, TouchPoint moveInvertPoint, int height, int dy) {
        TouchPoint touchPoint = this.lastPoint;
        if (touchPoint == null) {
            return;
        }
        if (m36096n(height - dy, dy > 0)) {
            TouchPoint rotatePoint = TextBoxUtils.INSTANCE.rotatePoint(new TouchPoint(lastInvertPoint.getX(), moveInvertPoint.getY()), this.rotate);
            this.textBoxView.updatePosition(rotatePoint.getX() - touchPoint.getX(), rotatePoint.getY() - touchPoint.getY());
        }
    }

    /* renamed from: q */
    public final void m36099q(TouchPoint lastInvertPoint, TouchPoint moveInvertPoint, int width, int dx) {
        TouchPoint touchPoint = this.lastPoint;
        if (touchPoint == null) {
            return;
        }
        if (m36097o(width - dx, dx > 0)) {
            TouchPoint rotatePoint = TextBoxUtils.INSTANCE.rotatePoint(new TouchPoint(moveInvertPoint.getX(), lastInvertPoint.getY()), this.rotate);
            this.textBoxView.updatePosition(rotatePoint.getX() - touchPoint.getX(), rotatePoint.getY() - touchPoint.getY());
        }
    }

    /* renamed from: r */
    public final TextBoxResizeAction m36100r() {
        TouchPoint lastPoint = this.textBoxView.getLastPoint();
        if (lastPoint == null) {
            return this;
        }
        this.lastPoint = lastPoint;
        if (m36095m()) {
            return this;
        }
        this.rotate = this.textBoxView.getEditorRotate();
        m36101s();
        this.textBoxView.getEditorView().requestLayout();
        this.textBoxView.requestLayout();
        TextBoxView textBoxView = this.textBoxView;
        MotionEvent motionEvent = this.event;
        Intrinsics.checkNotNull(motionEvent);
        float rawX = motionEvent.getRawX();
        MotionEvent motionEvent2 = this.event;
        Intrinsics.checkNotNull(motionEvent2);
        textBoxView.updateLastPoint(new TouchPoint(rawX, motionEvent2.getRawY()));
        MotionEvent motionEvent3 = this.event;
        Intrinsics.checkNotNull(motionEvent3);
        motionEvent3.recycle();
        return this;
    }

    /* renamed from: s */
    public final void m36101s() {
        int roundToInt;
        int roundToInt2;
        TextBoxUtils textBoxUtils = TextBoxUtils.INSTANCE;
        TouchPoint rotatePoint = textBoxUtils.rotatePoint(this.lastPoint, -this.rotate);
        MotionEvent motionEvent = this.event;
        Intrinsics.checkNotNull(motionEvent);
        float rawX = motionEvent.getRawX();
        MotionEvent motionEvent2 = this.event;
        Intrinsics.checkNotNull(motionEvent2);
        TouchPoint rotatePoint2 = textBoxUtils.rotatePoint(new TouchPoint(rawX, motionEvent2.getRawY()), -this.rotate);
        int editorScaleWidthInt = this.textBoxView.getEditorScaleWidthInt();
        int editorScaleHeightInt = this.textBoxView.getEditorScaleHeightInt();
        roundToInt = MathKt__MathJVMKt.roundToInt(rotatePoint2.getX() - rotatePoint.getX());
        roundToInt2 = MathKt__MathJVMKt.roundToInt(rotatePoint2.getY() - rotatePoint.getY());
        if (this.textBoxView.isVertical()) {
            roundToInt = -roundToInt;
            roundToInt2 = -roundToInt2;
        }
        TransformType transformType = this.type;
        switch (transformType == null ? -1 : WhenMappings.$EnumSwitchMapping$0[transformType.ordinal()]) {
            case 1:
                m36099q(rotatePoint, rotatePoint2, editorScaleWidthInt, roundToInt);
                return;
            case 2:
                m36097o(editorScaleWidthInt + roundToInt, roundToInt < 0);
                return;
            case 3:
                m36098p(rotatePoint, rotatePoint2, editorScaleHeightInt, roundToInt2);
                return;
            case 4:
                m36096n(editorScaleHeightInt + roundToInt2, roundToInt2 < 0);
                return;
            case 5:
                m36099q(rotatePoint, rotatePoint2, editorScaleWidthInt, roundToInt);
                m36098p(rotatePoint, rotatePoint2, editorScaleHeightInt, roundToInt2);
                return;
            case 6:
                m36097o(editorScaleWidthInt + roundToInt, roundToInt < 0);
                m36098p(rotatePoint, rotatePoint2, editorScaleHeightInt, roundToInt2);
                return;
            case 7:
                m36096n(editorScaleHeightInt + roundToInt2, roundToInt2 < 0);
                m36099q(rotatePoint, rotatePoint2, editorScaleWidthInt, roundToInt);
                return;
            case 8:
                m36097o(editorScaleWidthInt + roundToInt, roundToInt < 0);
                m36096n(editorScaleHeightInt + roundToInt2, roundToInt2 < 0);
                return;
            default:
                return;
        }
    }

    @NotNull
    public final TextBoxResizeAction setMotionEvent(@Nullable MotionEvent event) {
        this.event = event;
        return this;
    }

    @NotNull
    public final TextBoxResizeAction setType(@Nullable TransformType type) {
        this.type = type;
        return this;
    }
}
