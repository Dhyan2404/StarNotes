package com.onyx.android.sdk.universal.editor.action.handler;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.view.ViewConfiguration;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt;
import com.onyx.android.sdk.universal.editor.events.app.SingleTapUpEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0017\u0012\u0006\u0010I\u001a\u00020H\u0012\u0006\u0010:\u001a\u000205¢\u0006\u0004\bJ\u0010KJ\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J \u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0004J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006H\u0004J\b\u0010\f\u001a\u00020\u000bH\u0004J\b\u0010\u000e\u001a\u00020\rH\u0014J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u000e\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0016\u0010\u0019\u001a\u00020\u00152\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u0017H\u0014J\u0016\u0010\u001a\u001a\u00020\u00152\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u0017H\u0014J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00042\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u0017H\u0014J\u0016\u0010\u001d\u001a\u00020\u001c2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u0017H\u0014J\u0018\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u001cH\u0014J\u0018\u0010\"\u001a\u00020 2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010!\u001a\u00020 H\u0014J\u0012\u0010$\u001a\u00020#2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014J\u0018\u0010%\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0016J\u0018\u0010&\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0016J\u0012\u0010'\u001a\u00020#2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0004J\u0014\u0010(\u001a\u00020\u00152\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u0017J\u001a\u0010(\u001a\u00020\u00152\b\u0010)\u001a\u0004\u0018\u00010\u00042\b\u0010*\u001a\u0004\u0018\u00010\u0004J\u0014\u0010+\u001a\u00020\u00152\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u0017J\u0018\u0010-\u001a\u00020\u00152\b\u0010)\u001a\u0004\u0018\u00010\u00042\u0006\u0010,\u001a\u00020\u0004J\u0018\u0010.\u001a\u00020\u00152\b\u0010)\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u001a\u0010+\u001a\u00020\u00152\b\u0010)\u001a\u0004\u0018\u00010\u00042\b\u0010*\u001a\u0004\u0018\u00010\u0004J\u0018\u00100\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\bH\u0016J\u001a\u00104\u001a\u00020\u00152\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020\u001501R\u001a\u0010:\u001a\u0002058\u0004X\u0084\u0004¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R$\u0010A\u001a\u0004\u0018\u00010\b8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R$\u0010)\u001a\u0004\u0018\u00010\u00048\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010G¨\u0006L"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;", "", "T", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "Lio/reactivex/rxjava3/core/Observable;", "hitTestVisibleBoxTouchData", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "subscribeTouchData", "", "resetDownHitTestBoxInfo", "Lio/reactivex/rxjava3/core/Scheduler;", "touchDataScheduler", "onTouchData", "onTouchDown", "onTouchMove", "onTouchUp", "performTouchDown", "convertMoveToDownIf", "", "isTouchDown", "", "dataList", "isTouchDone", "hasTouchDown", "getTouchDoneData", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "toTouchPointList", "touchList", "normalizeTouchPoints", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "point", "normalizeTouchPoint", "Landroid/graphics/Matrix;", "noteNormalizeMatrix", "onInterceptTouchDown", "onTouchContentOutside", "noteRenderMatrix", "singleTapUp", "down", "up", "isSingleTapUp", "touchUp", "isSingleTapUpShort", "isMoved", "boxInfo", "hitNoteInside", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;", "predicate", "filterByFingerGesture", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "getTouchReader", "()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", "i", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getHitTestBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setHitTestBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "hitTestBoxInfo", "j", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "getDown", "()Lcom/onyx/android/sdk/geometry/data/TouchData;", "setDown", "(Lcom/onyx/android/sdk/geometry/data/TouchData;)V", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaseShapeHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseShapeHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,234:1\n1747#2,3:235\n1855#2,2:239\n1#3:238\n*S KotlinDebug\n*F\n+ 1 BaseShapeHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction\n*L\n141#1:235,3\n154#1:239,2\n*E\n"})
/* loaded from: classes8.dex */
public abstract class BaseShapeHandlerAction<T> extends RxBaseAppAction<T> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ScribbleTouchReader touchReader;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public BoxInfo hitTestBoxInfo;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public TouchData down;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9156a<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ BaseShapeHandlerAction<T> f49141e;

        /* renamed from: f */
        public final /* synthetic */ TouchData f49142f;

        public C9156a(BaseShapeHandlerAction<T> baseShapeHandlerAction, TouchData touchData) {
            this.f49141e = baseShapeHandlerAction;
            this.f49142f = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49141e.onInterceptTouchDown(this.f49142f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9157b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ BaseShapeHandlerAction<T> f49143e;

        public C9157b(BaseShapeHandlerAction<T> baseShapeHandlerAction) {
            this.f49143e = baseShapeHandlerAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49143e.setHitTestBoxInfo(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9158c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ BaseShapeHandlerAction<T> f49144e;

        /* renamed from: f */
        public final /* synthetic */ TouchData f49145f;

        public C9158c(BaseShapeHandlerAction<T> baseShapeHandlerAction, TouchData touchData) {
            this.f49144e = baseShapeHandlerAction;
            this.f49145f = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49144e.setDown(this.f49145f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction$d */
    /* loaded from: classes8.dex */
    public static final class C9159d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ TouchData f49146e;

        public C9159d(TouchData touchData) {
            this.f49146e = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49146e.setBoxInfo(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction$e */
    /* loaded from: classes8.dex */
    public static final class C9160e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ TouchData f49147e;

        public C9160e(TouchData touchData) {
            this.f49147e = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TouchData apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49147e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction$f */
    /* loaded from: classes8.dex */
    public static final class C9161f<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ TouchData f49148e;

        public C9161f(TouchData touchData) {
            this.f49148e = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49148e.setBoxInfo(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction$g */
    /* loaded from: classes8.dex */
    public static final class C9162g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ TouchData f49149e;

        public C9162g(TouchData touchData) {
            this.f49149e = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TouchData apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49149e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction$h */
    /* loaded from: classes8.dex */
    public static final class C9163h<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ BaseShapeHandlerAction<T> f49150e;

        /* renamed from: f */
        public final /* synthetic */ TouchData f49151f;

        public C9163h(BaseShapeHandlerAction<T> baseShapeHandlerAction, TouchData touchData) {
            this.f49150e = baseShapeHandlerAction;
            this.f49151f = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49150e.convertMoveToDownIf(this.f49151f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction$i */
    /* loaded from: classes8.dex */
    public static final class C9164i<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ BaseShapeHandlerAction<T> f49152e;

        public C9164i(BaseShapeHandlerAction<T> baseShapeHandlerAction) {
            this.f49152e = baseShapeHandlerAction;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49152e.getDown() != null;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction$j */
    /* loaded from: classes8.dex */
    public static final class C9165j<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ BaseShapeHandlerAction<T> f49153e;

        public C9165j(BaseShapeHandlerAction<T> baseShapeHandlerAction) {
            this.f49153e = baseShapeHandlerAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends TouchData> apply(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49153e.hitTestVisibleBoxTouchData(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction$k */
    /* loaded from: classes8.dex */
    public static final class C9166k<T> implements Predicate {

        /* renamed from: e */
        public static final C9166k<T> f49154e = new C9166k<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getBoxInfo() != null;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction$l */
    /* loaded from: classes8.dex */
    public static final class C9167l<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ BaseShapeHandlerAction<T> f49155e;

        public C9167l(BaseShapeHandlerAction<T> baseShapeHandlerAction) {
            this.f49155e = baseShapeHandlerAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49155e.onTouchData(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseShapeHandlerAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
        this.touchReader = touchReader;
    }

    public final void convertMoveToDownIf(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (this.down == null && touchData.isTouchMove() && hitNoteInside(touchData, touchData.ensureBoxInfo())) {
            performTouchDown(touchData);
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "down missing, convertMoveToDown", new Object[0]);
        }
    }

    public final boolean filterByFingerGesture(@NotNull Function1<? super HandlerManager, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return EditorBundleKt.handlerManager(getEditorBundle()).filterByFingerGesture(predicate);
    }

    @Nullable
    public final TouchData getDown() {
        return this.down;
    }

    @Nullable
    public final BoxInfo getHitTestBoxInfo() {
        return this.hitTestBoxInfo;
    }

    @Nullable
    public TouchData getTouchDoneData(@NotNull List<TouchData> dataList) {
        TouchData touchData;
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        ListIterator<TouchData> listIterator = dataList.listIterator(dataList.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                touchData = null;
                break;
            }
            touchData = listIterator.previous();
            if (isTouchDone(touchData)) {
                break;
            }
        }
        return touchData;
    }

    @NotNull
    public final ScribbleTouchReader getTouchReader() {
        return this.touchReader;
    }

    public boolean hasTouchDown(@NotNull List<TouchData> dataList) {
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        List<TouchData> list = dataList;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            if (isTouchDown((TouchData) it2.next())) {
                return true;
            }
        }
        return false;
    }

    public boolean hitNoteInside(@NotNull TouchData touchData, @NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        PointF pointF = TouchPointKt.toPointF(touchData.getTouchPoint());
        return boxInfo.getVisibleRect().contains(pointF.x, pointF.y);
    }

    @NotNull
    public Observable<TouchData> hitTestVisibleBoxTouchData(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (touchData.getAction() == 0) {
            resetDownHitTestBoxInfo();
            Observable<R> map = CommonEditorActionsKt.hitTestVisibleBoxObservable(getEditorBundle(), touchData).filter(new C9156a(this, touchData)).doOnNext(new C9157b(this)).doOnNext(new C9158c(this, touchData)).doOnNext(new C9159d(touchData)).map(new C9160e(touchData));
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return RxjavaKt.onErrorReturnItemWithLog(map, touchData);
        }
        touchData.setBoxInfo(this.hitTestBoxInfo);
        Observable<TouchData> just = Observable.just(touchData);
        Intrinsics.checkNotNull(just);
        return just;
    }

    public final boolean isMoved(@Nullable TouchData down, @NotNull TouchData touchData) {
        TouchPoint touchPoint;
        TouchPoint copy;
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (down == null || (touchPoint = down.getTouchPoint()) == null || (copy = touchPoint.copy()) == null) {
            return false;
        }
        TouchPoint copy2 = touchData.getTouchPoint().copy();
        return MathUtils.INSTANCE.distance(copy.getX(), copy.getY(), copy2.getX(), copy2.getY()) >= ((double) ViewConfiguration.get(ResManager.INSTANCE.getAppContext()).getScaledTouchSlop());
    }

    public final boolean isSingleTapUp(@NotNull List<TouchData> dataList) {
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        return isSingleTapUp(this.down, getTouchDoneData(dataList));
    }

    public final boolean isSingleTapUpShort(@Nullable TouchData down, @NotNull TouchData touchUp) {
        Intrinsics.checkNotNullParameter(touchUp, "touchUp");
        return EditorShapesActionsKt.isSingleTapEvent(down, touchUp, Integer.valueOf(ViewConfiguration.get(ResManager.INSTANCE.getAppContext()).getScaledTouchSlop()), ViewConfiguration.getTapTimeout());
    }

    public boolean isTouchDone(@NotNull List<TouchData> dataList) {
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        return getTouchDoneData(dataList) != null;
    }

    public boolean isTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        return touchData.isTouchDown();
    }

    @NotNull
    public TouchPoint normalizeTouchPoint(@NotNull BoxInfo virtualBoxInfo, @NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(point, "point");
        point.applyMatrix(BoxInfoUtils.INSTANCE.noteNormalizeMatrix(virtualBoxInfo));
        return point;
    }

    @NotNull
    public TouchPointList normalizeTouchPoints(@NotNull BoxInfo virtualBoxInfo, @NotNull TouchPointList touchList) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(touchList, "touchList");
        touchList.applyMatrix(BoxInfoUtils.INSTANCE.noteNormalizeMatrix(virtualBoxInfo));
        return touchList;
    }

    @NotNull
    public Matrix noteNormalizeMatrix(@Nullable BoxInfo virtualBoxInfo) {
        Matrix noteNormalizeMatrix;
        return (virtualBoxInfo == null || (noteNormalizeMatrix = BoxInfoUtils.INSTANCE.noteNormalizeMatrix(virtualBoxInfo)) == null) ? new Matrix() : noteNormalizeMatrix;
    }

    @NotNull
    public final Matrix noteRenderMatrix(@Nullable BoxInfo virtualBoxInfo) {
        Matrix noteRenderMatrix;
        return (virtualBoxInfo == null || (noteRenderMatrix = BoxInfoUtils.INSTANCE.noteRenderMatrix(virtualBoxInfo)) == null) ? new Matrix() : noteRenderMatrix;
    }

    public boolean onInterceptTouchDown(@NotNull TouchData touchData, @NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        boolean hitNoteInside = hitNoteInside(touchData, virtualBoxInfo);
        if (!hitNoteInside) {
            onTouchContentOutside(touchData, virtualBoxInfo);
        }
        return hitNoteInside;
    }

    public void onTouchContentOutside(@NotNull TouchData touchData, @NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        EditorBundleKt.shapeHandlerManager(getEditorBundle()).setStylusOnly(true);
    }

    public void onTouchData(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        int action = touchData.getAction();
        if (action == 0) {
            onTouchDown(touchData);
            return;
        }
        if (action != 1) {
            if (action == 2) {
                onTouchMove(touchData);
                return;
            } else if (action != 3) {
                return;
            }
        }
        onTouchUp(touchData);
    }

    public void onTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
    }

    public void onTouchMove(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
    }

    public void onTouchUp(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
    }

    public final void performTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        this.hitTestBoxInfo = touchData.getBoxInfo();
        this.down = touchData;
        onTouchDown(touchData);
    }

    public final void resetDownHitTestBoxInfo() {
        this.hitTestBoxInfo = null;
        this.down = null;
    }

    public final void setDown(@Nullable TouchData touchData) {
        this.down = touchData;
    }

    public final void setHitTestBoxInfo(@Nullable BoxInfo boxInfo) {
        this.hitTestBoxInfo = boxInfo;
    }

    public final boolean singleTapUp(@NotNull List<TouchData> dataList) {
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        return singleTapUp(this.down, getTouchDoneData(dataList));
    }

    @NotNull
    public final Observable<TouchData> subscribeTouchData() {
        Observable<TouchData> doOnNext = this.touchReader.getObservable().concatMap(new C9165j(this)).filter(C9166k.f49154e).doOnNext(new C9167l(this));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @NotNull
    public TouchPointList toTouchPointList(@NotNull List<TouchData> dataList) {
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        TouchPointList touchPointList = new TouchPointList();
        Iterator<T> it2 = dataList.iterator();
        while (it2.hasNext()) {
            touchPointList.add(((TouchData) it2.next()).getTouchPoint());
        }
        return touchPointList;
    }

    @NotNull
    public Scheduler touchDataScheduler() {
        return getMainUIScheduler();
    }

    public final boolean isSingleTapUp(@Nullable TouchData down, @Nullable TouchData up) {
        return EditorShapesActionsKt.isSingleTapEvent$default(down, up, null, 0L, 12, null);
    }

    public boolean isTouchDone(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        return touchData.isTouchDone();
    }

    public final boolean singleTapUp(@Nullable TouchData down, @Nullable TouchData up) {
        if (up == null || !isSingleTapUp(down, up)) {
            return false;
        }
        EditorBundleKt.postEvent(getEditorBundle(), new SingleTapUpEvent(up.getTouchPoint()));
        return true;
    }

    @NotNull
    public final Observable<TouchData> hitTestVisibleBoxTouchData(@NotNull TouchData touchData, @Nullable BoxInfo virtualBoxInfo) {
        Observable map;
        RectF visibleRect;
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        boolean z = false;
        if (virtualBoxInfo != null && (visibleRect = virtualBoxInfo.getVisibleRect()) != null && visibleRect.contains(touchData.getTouchPoint().getX(), touchData.getTouchPoint().getY())) {
            z = true;
        }
        if (z) {
            touchData.setBoxInfo(virtualBoxInfo);
            map = Observable.just(touchData);
        } else {
            map = CommonEditorActionsKt.hitTestVisibleBoxObservable(this, touchData).doOnNext(new C9161f(touchData)).map(new C9162g(touchData));
        }
        Observable<T> filter = map.doOnNext(new C9163h(this, touchData)).filter(new C9164i(this));
        Intrinsics.checkNotNullExpressionValue(filter, "filter(...)");
        return filter;
    }
}
