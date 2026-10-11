package com.onyx.galaxy.note.editor.view.popup;

import android.app.Application;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.hjq.window.EasyWindow;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.p039ui.HighlightMaskDrawable;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.event.OrientationChangedEvent;
import com.onyx.galaxy.note.common.extension.EasyWindowKt;
import com.onyx.galaxy.note.databinding.LayoutScreenCaptureBinding;
import com.onyx.galaxy.note.editor.view.popup.ScreenCaptureEditorPopup;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001:\u0001NB\u0007¢\u0006\u0004\bL\u0010MJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0007J\b\u0010\f\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u0011\u001a\u00020\u0010H\u0002J\u0014\u0010\u0014\u001a\u00020\u00042\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u0012H\u0002J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0002JD\u0010\u001f\u001a\u00020\u00042\b\b\u0002\u0010\u0019\u001a\u00020\u00152\b\b\u0002\u0010\u001a\u001a\u00020\u00152\b\b\u0002\u0010\u001b\u001a\u00020\u00152\b\b\u0002\u0010\u001c\u001a\u00020\u00152\b\b\u0002\u0010\u001d\u001a\u00020\u00152\b\b\u0002\u0010\u001e\u001a\u00020\u0015H\u0002J\u0010\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020\rH\u0002J\b\u0010#\u001a\u00020\rH\u0002J\b\u0010$\u001a\u00020\rH\u0002J\u0010\u0010&\u001a\u00020!2\u0006\u0010\n\u001a\u00020%H\u0002J\u0018\u0010*\u001a\u00020)2\u0006\u0010'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u0015H\u0002J\u0010\u0010-\u001a\u00020\u00102\u0006\u0010,\u001a\u00020+H\u0002R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00104\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00106\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00103R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u00107R\u0016\u00108\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u00103R\u0016\u00109\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u00103R\u0016\u0010:\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u00103R\u0016\u0010;\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u00103R\u0016\u0010<\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u00103R\u0016\u0010=\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u00103R\u0016\u0010>\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u00103R\u0014\u0010A\u001a\u00020?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010@R\u0016\u0010D\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0014\u0010E\u001a\u00020)8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u000f\u0010CR\u0016\u0010G\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010CR\u001c\u0010J\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0014\u0010K\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u00103¨\u0006O"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;", "", "Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "setListener", "Landroid/app/Application;", "application", "show", "Lcom/onyx/galaxy/note/category/event/OrientationChangedEvent;", NotificationCompat.CATEGORY_EVENT, "onOrientationChanged", "s", "Landroid/graphics/RectF;", "shotViewRect", GoogleApiAvailabilityLight.f29016b, "Landroid/graphics/Rect;", C6997f.f39671c, "Lcom/hjq/window/EasyWindow;", "window", "l", "", "dx", "dy", "j", "leftOffset", "rightOffset", "topOffset", "bottomOffset", "widthOffset", "heightOffset", "q", "rect", "", "d", C6999h.f39688c, C6998g.f39679a, "Landroid/view/MotionEvent;", C4921e.f26537n, "x", "y", "", "e", "Landroid/view/View;", "touchView", "i", "Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;", "a", "Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;", "binding", "b", "F", "lastX", "c", "lastY", "Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;", "limitSize", "screenHeight", "screenWidth", "shotViewWidth", "shotViewHeight", "shotViewX", "shotViewY", "Lcom/onyx/android/sdk/ui/HighlightMaskDrawable;", "Lcom/onyx/android/sdk/ui/HighlightMaskDrawable;", "maskDrawable", "m", "I", Constants.ATTRNAME_MODE, "MODE_CANCEL", C4921e.f26528e, "MODE_OK", "p", "Lcom/hjq/window/EasyWindow;", "currentEasyWindow", "expandTouchPadding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "ScreenCaptureListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nScreenCaptureEditorPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenCaptureEditorPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,349:1\n1#2:350\n324#3:351\n324#3:352\n324#3:353\n324#3:354\n324#3:355\n324#3:356\n324#3:357\n324#3:358\n324#3:359\n324#3:360\n324#3:361\n*S KotlinDebug\n*F\n+ 1 ScreenCaptureEditorPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup\n*L\n310#1:351\n313#1:352\n316#1:353\n319#1:354\n322#1:355\n325#1:356\n328#1:357\n331#1:358\n334#1:359\n337#1:360\n340#1:361\n*E\n"})
/* loaded from: classes9.dex */
public final class ScreenCaptureEditorPopup {

    /* renamed from: a, reason: from kotlin metadata */
    public LayoutScreenCaptureBinding binding;

    /* renamed from: b, reason: from kotlin metadata */
    public float lastX;

    /* renamed from: c, reason: from kotlin metadata */
    public float lastY;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public ScreenCaptureListener listener;

    /* renamed from: e, reason: from kotlin metadata */
    public float limitSize;

    /* renamed from: f, reason: from kotlin metadata */
    public float screenHeight;

    /* renamed from: g, reason: from kotlin metadata */
    public float screenWidth;

    /* renamed from: h, reason: from kotlin metadata */
    public float shotViewWidth;

    /* renamed from: i, reason: from kotlin metadata */
    public float shotViewHeight;

    /* renamed from: j, reason: from kotlin metadata */
    public float shotViewX;

    /* renamed from: k, reason: from kotlin metadata */
    public float shotViewY;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final HighlightMaskDrawable maskDrawable;

    /* renamed from: m, reason: from kotlin metadata */
    public int mode;

    /* renamed from: n, reason: from kotlin metadata */
    public final int MODE_CANCEL;

    /* renamed from: o, reason: from kotlin metadata */
    public int MODE_OK;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public EasyWindow<?> currentEasyWindow;

    /* renamed from: q, reason: from kotlin metadata */
    public final float expandTouchPadding;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\u0003H&¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;", "", "onCancel", "", "onEditorRect", "rect", "Landroid/graphics/Rect;", "onStart", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface ScreenCaptureListener {
        void onCancel();

        void onEditorRect(@NotNull Rect rect);

        void onStart();
    }

    public ScreenCaptureEditorPopup() {
        ResManager resManager = ResManager.INSTANCE;
        this.limitSize = resManager.getDimension(C7384R.dimen.dp_28);
        this.shotViewWidth = resManager.getDimension(C10651R.dimen.layout_screen_capture_editor_size);
        this.shotViewHeight = resManager.getDimension(C10651R.dimen.layout_screen_capture_editor_size);
        this.maskDrawable = new HighlightMaskDrawable();
        this.MODE_CANCEL = 1001;
        this.MODE_OK = 1002;
        this.expandTouchPadding = resManager.getDimension(C7384R.dimen.dp_10);
    }

    /* renamed from: m */
    public static final boolean m49378m(ScreenCaptureEditorPopup this$0, EasyWindow easyWindow, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(motionEvent);
        return this$0.m49389k(motionEvent);
    }

    /* renamed from: o */
    public static final void m49379o(ScreenCaptureEditorPopup this$0, EasyWindow easyWindow, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(easyWindow, "easyWindow");
        easyWindow.cancel();
        ScreenCaptureListener screenCaptureListener = this$0.listener;
        if (screenCaptureListener != null) {
            screenCaptureListener.onCancel();
        }
    }

    /* renamed from: p */
    public static final void m49380p(ScreenCaptureEditorPopup this$0, EasyWindow easyWindow, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(easyWindow, "easyWindow");
        Rect m49384f = this$0.m49384f();
        easyWindow.cancel();
        ScreenCaptureListener screenCaptureListener = this$0.listener;
        if (screenCaptureListener != null) {
            screenCaptureListener.onEditorRect(m49384f);
        }
    }

    /* renamed from: r */
    public static /* synthetic */ void m49381r(ScreenCaptureEditorPopup screenCaptureEditorPopup, float f, float f2, float f3, float f4, float f5, float f6, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        if ((i & 4) != 0) {
            f3 = 0.0f;
        }
        if ((i & 8) != 0) {
            f4 = 0.0f;
        }
        if ((i & 16) != 0) {
            f5 = 0.0f;
        }
        if ((i & 32) != 0) {
            f6 = 0.0f;
        }
        screenCaptureEditorPopup.m49392q(f, f2, f3, f4, f5, f6);
    }

    /* renamed from: d */
    public final boolean m49382d(RectF rect) {
        return m49385g().contains(rect) && rect.width() >= this.limitSize && rect.height() >= this.limitSize;
    }

    /* renamed from: e */
    public final int m49383e(float x, float y) {
        Point point = new Point((int) x, (int) y);
        LayoutScreenCaptureBinding layoutScreenCaptureBinding = this.binding;
        LayoutScreenCaptureBinding layoutScreenCaptureBinding2 = null;
        if (layoutScreenCaptureBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutScreenCaptureBinding = null;
        }
        AppCompatImageView btnCancel = layoutScreenCaptureBinding.btnCancel;
        Intrinsics.checkNotNullExpressionValue(btnCancel, "btnCancel");
        if (ViewKt.screenVisibleRect(btnCancel).contains(point.x, point.y)) {
            return this.MODE_CANCEL;
        }
        LayoutScreenCaptureBinding layoutScreenCaptureBinding3 = this.binding;
        if (layoutScreenCaptureBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutScreenCaptureBinding3 = null;
        }
        AppCompatImageView btnOk = layoutScreenCaptureBinding3.btnOk;
        Intrinsics.checkNotNullExpressionValue(btnOk, "btnOk");
        if (ViewKt.screenVisibleRect(btnOk).contains(point.x, point.y)) {
            return this.MODE_OK;
        }
        LayoutScreenCaptureBinding layoutScreenCaptureBinding4 = this.binding;
        if (layoutScreenCaptureBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutScreenCaptureBinding4 = null;
        }
        AppCompatImageView leftTopHandle = layoutScreenCaptureBinding4.leftTopHandle;
        Intrinsics.checkNotNullExpressionValue(leftTopHandle, "leftTopHandle");
        if (m49387i(leftTopHandle).contains(point.x, point.y)) {
            return 51;
        }
        LayoutScreenCaptureBinding layoutScreenCaptureBinding5 = this.binding;
        if (layoutScreenCaptureBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutScreenCaptureBinding5 = null;
        }
        AppCompatImageView leftBottomHandle = layoutScreenCaptureBinding5.leftBottomHandle;
        Intrinsics.checkNotNullExpressionValue(leftBottomHandle, "leftBottomHandle");
        if (m49387i(leftBottomHandle).contains(point.x, point.y)) {
            return 83;
        }
        LayoutScreenCaptureBinding layoutScreenCaptureBinding6 = this.binding;
        if (layoutScreenCaptureBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutScreenCaptureBinding6 = null;
        }
        AppCompatImageView rightTopHandle = layoutScreenCaptureBinding6.rightTopHandle;
        Intrinsics.checkNotNullExpressionValue(rightTopHandle, "rightTopHandle");
        if (m49387i(rightTopHandle).contains(point.x, point.y)) {
            return 53;
        }
        LayoutScreenCaptureBinding layoutScreenCaptureBinding7 = this.binding;
        if (layoutScreenCaptureBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutScreenCaptureBinding7 = null;
        }
        AppCompatImageView rightBottomHandle = layoutScreenCaptureBinding7.rightBottomHandle;
        Intrinsics.checkNotNullExpressionValue(rightBottomHandle, "rightBottomHandle");
        if (m49387i(rightBottomHandle).contains(point.x, point.y)) {
            return 85;
        }
        LayoutScreenCaptureBinding layoutScreenCaptureBinding8 = this.binding;
        if (layoutScreenCaptureBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutScreenCaptureBinding8 = null;
        }
        AppCompatImageView leftHandle = layoutScreenCaptureBinding8.leftHandle;
        Intrinsics.checkNotNullExpressionValue(leftHandle, "leftHandle");
        if (m49387i(leftHandle).contains(point.x, point.y)) {
            return 3;
        }
        LayoutScreenCaptureBinding layoutScreenCaptureBinding9 = this.binding;
        if (layoutScreenCaptureBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutScreenCaptureBinding9 = null;
        }
        AppCompatImageView rightHandle = layoutScreenCaptureBinding9.rightHandle;
        Intrinsics.checkNotNullExpressionValue(rightHandle, "rightHandle");
        if (m49387i(rightHandle).contains(point.x, point.y)) {
            return 5;
        }
        LayoutScreenCaptureBinding layoutScreenCaptureBinding10 = this.binding;
        if (layoutScreenCaptureBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutScreenCaptureBinding10 = null;
        }
        AppCompatImageView topHandle = layoutScreenCaptureBinding10.topHandle;
        Intrinsics.checkNotNullExpressionValue(topHandle, "topHandle");
        if (m49387i(topHandle).contains(point.x, point.y)) {
            return 48;
        }
        LayoutScreenCaptureBinding layoutScreenCaptureBinding11 = this.binding;
        if (layoutScreenCaptureBinding11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutScreenCaptureBinding11 = null;
        }
        AppCompatImageView bottomHandle = layoutScreenCaptureBinding11.bottomHandle;
        Intrinsics.checkNotNullExpressionValue(bottomHandle, "bottomHandle");
        if (m49387i(bottomHandle).contains(point.x, point.y)) {
            return 80;
        }
        LayoutScreenCaptureBinding layoutScreenCaptureBinding12 = this.binding;
        if (layoutScreenCaptureBinding12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutScreenCaptureBinding2 = layoutScreenCaptureBinding12;
        }
        View shotView = layoutScreenCaptureBinding2.shotView;
        Intrinsics.checkNotNullExpressionValue(shotView, "shotView");
        return m49387i(shotView).contains(point.x, point.y) ? 17 : 0;
    }

    /* renamed from: f */
    public final Rect m49384f() {
        LayoutScreenCaptureBinding layoutScreenCaptureBinding = this.binding;
        LayoutScreenCaptureBinding layoutScreenCaptureBinding2 = null;
        if (layoutScreenCaptureBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutScreenCaptureBinding = null;
        }
        View shotView = layoutScreenCaptureBinding.shotView;
        Intrinsics.checkNotNullExpressionValue(shotView, "shotView");
        int[] locationOnScreen = ViewKt.getLocationOnScreen(shotView);
        int i = locationOnScreen[0];
        int i2 = locationOnScreen[1];
        LayoutScreenCaptureBinding layoutScreenCaptureBinding3 = this.binding;
        if (layoutScreenCaptureBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutScreenCaptureBinding3 = null;
        }
        int width = layoutScreenCaptureBinding3.shotView.getWidth() + i;
        LayoutScreenCaptureBinding layoutScreenCaptureBinding4 = this.binding;
        if (layoutScreenCaptureBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutScreenCaptureBinding2 = layoutScreenCaptureBinding4;
        }
        return new Rect(i, i2, width, layoutScreenCaptureBinding2.shotView.getHeight() + i2);
    }

    /* renamed from: g */
    public final RectF m49385g() {
        return new RectF(0.0f, 0.0f, this.screenWidth, this.screenHeight);
    }

    /* renamed from: h */
    public final RectF m49386h() {
        RectF rectF = new RectF();
        float f = this.shotViewX;
        rectF.left = f;
        rectF.right = f + this.shotViewWidth;
        float f2 = this.shotViewY;
        rectF.top = f2;
        rectF.bottom = f2 + this.shotViewHeight;
        return rectF;
    }

    /* renamed from: i */
    public final Rect m49387i(View touchView) {
        return RectKt.expand(ViewKt.screenVisibleRect(touchView), Float.valueOf(this.expandTouchPadding));
    }

    /* renamed from: j */
    public final void m49388j(float dx, float dy) {
        float coerceAtLeast;
        float coerceAtMost;
        float coerceAtLeast2;
        float coerceAtMost2;
        float coerceAtLeast3;
        float coerceAtMost3;
        float coerceAtLeast4;
        float coerceAtLeast5;
        float coerceAtMost4;
        float coerceAtLeast6;
        float coerceAtMost5;
        float coerceAtMost6;
        float coerceAtLeast7;
        float coerceAtLeast8;
        float coerceAtMost7;
        float coerceAtMost8;
        float coerceAtLeast9;
        float coerceAtMost9;
        float coerceAtMost10;
        float coerceAtLeast10;
        float coerceAtMost11;
        float coerceAtLeast11;
        float coerceAtMost12;
        float coerceAtLeast12;
        RectF m49386h = m49386h();
        RectF m49385g = m49385g();
        int i = this.mode;
        if (i == 3) {
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(dx, m49385g.left - m49386h.left);
            m49381r(this, coerceAtLeast, 0.0f, 0.0f, 0.0f, -coerceAtLeast, 0.0f, 46, null);
            return;
        }
        if (i == 5) {
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(dx, m49385g.right - m49386h.right);
            m49381r(this, 0.0f, coerceAtMost, 0.0f, 0.0f, coerceAtMost, 0.0f, 45, null);
            return;
        }
        if (i == 17) {
            coerceAtLeast2 = RangesKt___RangesKt.coerceAtLeast(dx, m49385g.left - m49386h.left);
            coerceAtMost2 = RangesKt___RangesKt.coerceAtMost(coerceAtLeast2, m49385g.right - m49386h.right);
            coerceAtLeast3 = RangesKt___RangesKt.coerceAtLeast(dy, m49385g.top - m49386h.top);
            coerceAtMost3 = RangesKt___RangesKt.coerceAtMost(coerceAtLeast3, m49385g.bottom - m49386h.bottom);
            m49381r(this, coerceAtMost2, coerceAtMost2, coerceAtMost3, coerceAtMost3, 0.0f, 0.0f, 48, null);
            return;
        }
        if (i == 48) {
            coerceAtLeast4 = RangesKt___RangesKt.coerceAtLeast(dy, m49385g.top - m49386h.top);
            m49381r(this, 0.0f, 0.0f, coerceAtLeast4, 0.0f, 0.0f, -coerceAtLeast4, 27, null);
            return;
        }
        if (i == 51) {
            coerceAtLeast5 = RangesKt___RangesKt.coerceAtLeast(dx, m49385g.left - m49386h.left);
            coerceAtMost4 = RangesKt___RangesKt.coerceAtMost(coerceAtLeast5, (m49386h.right - this.limitSize) - m49386h.left);
            coerceAtLeast6 = RangesKt___RangesKt.coerceAtLeast(dy, m49385g.top - m49386h.top);
            coerceAtMost5 = RangesKt___RangesKt.coerceAtMost(coerceAtLeast6, (m49386h.bottom - this.limitSize) - m49386h.top);
            m49381r(this, coerceAtMost4, 0.0f, coerceAtMost5, 0.0f, -coerceAtMost4, -coerceAtMost5, 10, null);
            return;
        }
        if (i == 53) {
            coerceAtMost6 = RangesKt___RangesKt.coerceAtMost(dx, m49385g.right - m49386h.right);
            coerceAtLeast7 = RangesKt___RangesKt.coerceAtLeast(coerceAtMost6, (m49386h.left + this.limitSize) - m49386h.right);
            coerceAtLeast8 = RangesKt___RangesKt.coerceAtLeast(dy, m49385g.top - m49386h.top);
            coerceAtMost7 = RangesKt___RangesKt.coerceAtMost(coerceAtLeast8, (m49386h.bottom - this.limitSize) - m49386h.top);
            m49381r(this, 0.0f, coerceAtLeast7, coerceAtMost7, 0.0f, coerceAtLeast7, -coerceAtMost7, 9, null);
            return;
        }
        if (i == 80) {
            coerceAtMost8 = RangesKt___RangesKt.coerceAtMost(dy, m49385g.bottom - m49386h.bottom);
            m49381r(this, 0.0f, 0.0f, 0.0f, coerceAtMost8, 0.0f, coerceAtMost8, 23, null);
            return;
        }
        if (i == 83) {
            coerceAtLeast9 = RangesKt___RangesKt.coerceAtLeast(dx, m49385g.left - m49386h.left);
            coerceAtMost9 = RangesKt___RangesKt.coerceAtMost(coerceAtLeast9, (m49386h.right - this.limitSize) - m49386h.left);
            coerceAtMost10 = RangesKt___RangesKt.coerceAtMost(dy, m49385g.bottom - m49386h.bottom);
            coerceAtLeast10 = RangesKt___RangesKt.coerceAtLeast(coerceAtMost10, (m49386h.top + this.limitSize) - m49386h.bottom);
            m49381r(this, coerceAtMost9, 0.0f, 0.0f, coerceAtLeast10, -coerceAtMost9, coerceAtLeast10, 6, null);
            return;
        }
        if (i != 85) {
            return;
        }
        coerceAtMost11 = RangesKt___RangesKt.coerceAtMost(dx, m49385g.right - m49386h.right);
        coerceAtLeast11 = RangesKt___RangesKt.coerceAtLeast(coerceAtMost11, (m49386h.left + this.limitSize) - m49386h.right);
        coerceAtMost12 = RangesKt___RangesKt.coerceAtMost(dy, m49385g.bottom - m49386h.bottom);
        coerceAtLeast12 = RangesKt___RangesKt.coerceAtLeast(coerceAtMost12, (m49386h.top + this.limitSize) - m49386h.bottom);
        m49381r(this, 0.0f, coerceAtLeast11, 0.0f, coerceAtLeast12, coerceAtLeast11, coerceAtLeast12, 5, null);
    }

    /* renamed from: k */
    public final boolean m49389k(MotionEvent event) {
        int action = event.getAction();
        if (action == 0) {
            this.mode = m49383e(event.getRawX(), event.getRawY());
        } else if (action == 1) {
            int i = this.mode;
            LayoutScreenCaptureBinding layoutScreenCaptureBinding = null;
            if (i == this.MODE_CANCEL) {
                LayoutScreenCaptureBinding layoutScreenCaptureBinding2 = this.binding;
                if (layoutScreenCaptureBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    layoutScreenCaptureBinding = layoutScreenCaptureBinding2;
                }
                layoutScreenCaptureBinding.btnCancel.performClick();
            } else if (i == this.MODE_OK) {
                LayoutScreenCaptureBinding layoutScreenCaptureBinding3 = this.binding;
                if (layoutScreenCaptureBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    layoutScreenCaptureBinding = layoutScreenCaptureBinding3;
                }
                layoutScreenCaptureBinding.btnOk.performClick();
            }
        } else if (action == 2) {
            float rawX = event.getRawX() - this.lastX;
            float rawY = event.getRawY() - this.lastY;
            if (this.mode != 0) {
                m49388j(rawX, rawY);
            }
        }
        this.lastX = event.getRawX();
        this.lastY = event.getRawY();
        return true;
    }

    /* renamed from: l */
    public final void m49390l(EasyWindow<?> window) {
        window.setOnTouchListener(new EasyWindow.OnTouchListener() { // from class: com.sunia.HTREnginev2.b6m
            @Override // com.hjq.window.EasyWindow.OnTouchListener
            public final boolean onTouch(EasyWindow easyWindow, View view, MotionEvent motionEvent) {
                boolean m49378m;
                m49378m = ScreenCaptureEditorPopup.m49378m(ScreenCaptureEditorPopup.this, easyWindow, view, motionEvent);
                return m49378m;
            }
        });
    }

    /* renamed from: n */
    public final void m49391n(RectF shotViewRect) {
        float dimension = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_5);
        RectF copy = RectFKt.copy(shotViewRect);
        copy.inset(dimension, dimension);
        this.maskDrawable.setBounds(new RectF(0.0f, 0.0f, this.screenWidth, this.screenHeight));
        this.maskDrawable.setHighlightRect(copy);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onOrientationChanged(@NotNull OrientationChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EasyWindow<?> easyWindow = this.currentEasyWindow;
        if (easyWindow != null) {
            easyWindow.cancel();
        }
        Context appContext = ResManager.INSTANCE.getAppContext();
        Intrinsics.checkNotNull(appContext, "null cannot be cast to non-null type android.app.Application");
        show((Application) appContext);
    }

    /* renamed from: q */
    public final void m49392q(float leftOffset, float rightOffset, float topOffset, float bottomOffset, float widthOffset, float heightOffset) {
        RectF transform = RectFKt.transform(m49386h(), Float.valueOf(leftOffset), Float.valueOf(rightOffset), Float.valueOf(topOffset), Float.valueOf(bottomOffset));
        if (m49382d(transform)) {
            this.shotViewX += leftOffset;
            this.shotViewY += topOffset;
            this.shotViewWidth += widthOffset;
            this.shotViewHeight += heightOffset;
            LayoutScreenCaptureBinding layoutScreenCaptureBinding = this.binding;
            LayoutScreenCaptureBinding layoutScreenCaptureBinding2 = null;
            if (layoutScreenCaptureBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutScreenCaptureBinding = null;
            }
            ConstraintLayout shotContainer = layoutScreenCaptureBinding.shotContainer;
            Intrinsics.checkNotNullExpressionValue(shotContainer, "shotContainer");
            ViewKt.setLayoutParams(shotContainer, (int) this.shotViewWidth, (int) this.shotViewHeight);
            LayoutScreenCaptureBinding layoutScreenCaptureBinding3 = this.binding;
            if (layoutScreenCaptureBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutScreenCaptureBinding3 = null;
            }
            layoutScreenCaptureBinding3.shotContainer.setX(this.shotViewX);
            LayoutScreenCaptureBinding layoutScreenCaptureBinding4 = this.binding;
            if (layoutScreenCaptureBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutScreenCaptureBinding4 = null;
            }
            layoutScreenCaptureBinding4.shotContainer.setY(this.shotViewY);
            RectF rectF = new RectF();
            float f = transform.right;
            ResManager resManager = ResManager.INSTANCE;
            float dimens = f - resManager.getDimens(C7384R.dimen.dp_20);
            rectF.right = dimens;
            LayoutScreenCaptureBinding layoutScreenCaptureBinding5 = this.binding;
            if (layoutScreenCaptureBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutScreenCaptureBinding5 = null;
            }
            rectF.left = dimens - layoutScreenCaptureBinding5.buttonGroup.getLayoutParams().width;
            float dimens2 = transform.bottom + resManager.getDimens(C7384R.dimen.dp_10);
            rectF.top = dimens2;
            LayoutScreenCaptureBinding layoutScreenCaptureBinding6 = this.binding;
            if (layoutScreenCaptureBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutScreenCaptureBinding6 = null;
            }
            float f2 = dimens2 + layoutScreenCaptureBinding6.buttonGroup.getLayoutParams().height;
            rectF.bottom = f2;
            float height = f2 > this.screenHeight ? ((-transform.height()) - rectF.height()) - resManager.getDimens(C7384R.dimen.dp_20) : 0.0f;
            float f3 = rectF.left;
            rectF.offset(f3 < 0.0f ? -f3 : 0.0f, height);
            int dimens3 = resManager.getDimens(C7384R.dimen.dp_30);
            if (rectF.top <= 0.0f || rectF.bottom >= this.screenHeight) {
                float f4 = transform.bottom - dimens3;
                rectF.bottom = f4;
                LayoutScreenCaptureBinding layoutScreenCaptureBinding7 = this.binding;
                if (layoutScreenCaptureBinding7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    layoutScreenCaptureBinding7 = null;
                }
                rectF.top = f4 - layoutScreenCaptureBinding7.buttonGroup.getLayoutParams().height;
            }
            LayoutScreenCaptureBinding layoutScreenCaptureBinding8 = this.binding;
            if (layoutScreenCaptureBinding8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutScreenCaptureBinding8 = null;
            }
            layoutScreenCaptureBinding8.buttonGroup.setX(rectF.left);
            LayoutScreenCaptureBinding layoutScreenCaptureBinding9 = this.binding;
            if (layoutScreenCaptureBinding9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                layoutScreenCaptureBinding2 = layoutScreenCaptureBinding9;
            }
            layoutScreenCaptureBinding2.buttonGroup.setY(rectF.top);
            m49391n(transform);
        }
    }

    /* renamed from: s */
    public final void m49393s() {
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        this.screenHeight = viewLocator.getScreenSize().getHeight();
        float width = viewLocator.getScreenSize().getWidth();
        this.screenWidth = width;
        float f = 2;
        this.shotViewX = (width / f) - (this.shotViewWidth / f);
        this.shotViewY = (this.screenHeight / f) - (this.shotViewHeight / f);
    }

    public final void setListener(@NotNull ScreenCaptureListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    public final void show(@NotNull Application application) {
        Intrinsics.checkNotNullParameter(application, "application");
        m49393s();
        LayoutScreenCaptureBinding inflate = LayoutScreenCaptureBinding.inflate(LayoutInflater.from(application));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        ScreenCaptureListener screenCaptureListener = this.listener;
        if (screenCaptureListener != null) {
            screenCaptureListener.onStart();
        }
        EasyWindow<?> with = EasyWindow.with(application);
        this.currentEasyWindow = with;
        LayoutScreenCaptureBinding layoutScreenCaptureBinding = this.binding;
        LayoutScreenCaptureBinding layoutScreenCaptureBinding2 = null;
        if (layoutScreenCaptureBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutScreenCaptureBinding = null;
        }
        with.setContentView(layoutScreenCaptureBinding.getRoot());
        Intrinsics.checkNotNull(with);
        View safeContentView = EasyWindowKt.getSafeContentView(with);
        if (safeContentView != null) {
            safeContentView.setBackground(this.maskDrawable);
        }
        WindowManager.LayoutParams windowParams = with.getWindowParams();
        Intrinsics.checkNotNullExpressionValue(windowParams, "getWindowParams(...)");
        ViewKt.matchScreen(windowParams);
        with.getWindowParams().width = (int) this.screenWidth;
        with.getWindowParams().height = (int) this.screenHeight;
        View safeContentView2 = EasyWindowKt.getSafeContentView(with);
        if (safeContentView2 != null) {
            ViewKt.matchParent(safeContentView2);
        }
        m49381r(this, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 63, null);
        float f = this.shotViewX;
        float f2 = this.shotViewY;
        m49391n(new RectF(f, f2, this.shotViewWidth + f, this.shotViewHeight + f2));
        LayoutScreenCaptureBinding layoutScreenCaptureBinding3 = this.binding;
        if (layoutScreenCaptureBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutScreenCaptureBinding2 = layoutScreenCaptureBinding3;
        }
        layoutScreenCaptureBinding2.getRoot().requestLayout();
        m49390l(with);
        with.setOnClickListener(C10651R.id.btn_cancel, new EasyWindow.OnClickListener() { // from class: com.sunia.HTREnginev2.c6m
            @Override // com.hjq.window.EasyWindow.OnClickListener
            public final void onClick(EasyWindow easyWindow, View view) {
                ScreenCaptureEditorPopup.m49379o(ScreenCaptureEditorPopup.this, easyWindow, view);
            }
        });
        with.setOnClickListener(C10651R.id.btn_ok, new EasyWindow.OnClickListener() { // from class: com.sunia.HTREnginev2.d6m
            @Override // com.hjq.window.EasyWindow.OnClickListener
            public final void onClick(EasyWindow easyWindow, View view) {
                ScreenCaptureEditorPopup.m49380p(ScreenCaptureEditorPopup.this, easyWindow, view);
            }
        });
        with.setOnWindowLifecycle(new EasyWindow.OnWindowLifecycle() { // from class: com.onyx.galaxy.note.editor.view.popup.ScreenCaptureEditorPopup$show$1$3
            @Override // com.hjq.window.EasyWindow.OnWindowLifecycle
            public void onWindowCancel(@Nullable EasyWindow<?> easyWindow) {
                GlobalBundle globalBundle = GlobalBundle.INSTANCE;
                globalBundle.unregister(ScreenCaptureEditorPopup.this);
                globalBundle.getUiStates().setScreenCapturing(false);
            }

            @Override // com.hjq.window.EasyWindow.OnWindowLifecycle
            public void onWindowShow(@Nullable EasyWindow<?> easyWindow) {
                GlobalBundle globalBundle = GlobalBundle.INSTANCE;
                globalBundle.register(ScreenCaptureEditorPopup.this);
                globalBundle.getUiStates().setScreenCapturing(true);
            }
        });
        with.show();
    }
}
