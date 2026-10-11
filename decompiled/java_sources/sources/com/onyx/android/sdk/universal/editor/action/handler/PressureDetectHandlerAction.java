package com.onyx.android.sdk.universal.editor.action.handler;

import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.data.SelectOnScreenArgs;
import com.onyx.android.sdk.rxgesture.pen.PenStatusBean;
import com.onyx.android.sdk.rxgesture.pen.RxPenGesture;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.SelectOnScreenAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.selection.StartTextSelectionAction;
import com.onyx.android.sdk.universal.editor.data.EraserPropertyOption;
import com.onyx.android.sdk.universal.editor.events.note.PreparePressureErasingEvent;
import com.onyx.android.sdk.universal.editor.events.note.RestoreUserProviderEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartDrawingShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartErasingArgs;
import com.onyx.android.sdk.universal.editor.events.note.StartTextSelectionArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.editor.feature.touch.TouchModeFeatureManager;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 92\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002:9B\u001f\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u0010%\u001a\u00020\"¢\u0006\u0004\b7\u00108J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\b\u0010\n\u001a\u00020\u0006H\u0016J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J.\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00022\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u001d\u001a\u00020\u001cH\u0002J\b\u0010\u001e\u001a\u00020\u001cH\u0002J\u0016\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010 \u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\f\u0010!\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010(\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010'R\u0016\u0010+\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010*R\u001b\u00100\u001a\u00020,8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b-\u0010/R\u0016\u00102\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u00101¨\u0006;"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "", "onTouchDown", "onTouchMove", "onTouchUp", "dispose", "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;", "penStatusBean", C4921e.f26528e, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "lastPoint", "u", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "hitTestBoxInfo", "downTouchData", "Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;", OcrValues.LANG_ITALIAN, "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "selection", "Lcom/onyx/android/sdk/universal/editor/action/selection/StartTextSelectionAction;", "s", "down", "t", "", "q", "p", "r", "l", "m", "Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;", C4921e.f26537n, "Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;", "args", "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;", "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;", "rxPenGesture", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "touchPointList", "", GoogleApiAvailabilityLight.f29016b, "Lkotlin/Lazy;", "()F", "eraserPressure", "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;", "lastPenStatusBean", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;)V", "Companion", "Args", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPressureDetectHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PressureDetectHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,212:1\n344#2,3:213\n*S KotlinDebug\n*F\n+ 1 PressureDetectHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction\n*L\n168#1:213,3\n*E\n"})
/* loaded from: classes8.dex */
public final class PressureDetectHandlerAction extends BaseShapeHandlerAction<PressureDetectHandlerAction> {

    /* renamed from: p */
    public static final float f49228p = 0.2f;

    /* renamed from: q */
    public static final float f49229q = 0.85f;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Args args;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public RxPenGesture rxPenGesture;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public TouchPointList touchPointList;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Lazy eraserPressure;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public PenStatusBean lastPenStatusBean;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0017\b\u0086\b\u0018\u0000 #2\u00020\u0001:\u0001#B%\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0001¢\u0006\u0004\b!\u0010\"J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0001HÆ\u0003J'\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u0001HÆ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\"\u0010\b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\t\u001a\u00020\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;", "", "", "component1", "", "component2", "component3", "textSelectionPressureMax", "detectEraser", "quitEvent", "copy", "", "toString", "", "hashCode", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "equals", "a", "F", "getTextSelectionPressureMax", "()F", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getDetectEraser", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setDetectEraser", "(Z)V", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.OBJECT_SIG, "getQuitEvent", "()Ljava/lang/Object;", "setQuitEvent", "(Ljava/lang/Object;)V", Constants.CONSTRUCTOR_NAME, "(FZLjava/lang/Object;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final /* data */ class Args {

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = new Companion(null);

        /* renamed from: a, reason: from kotlin metadata and from toString */
        public final float textSelectionPressureMax;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        public boolean detectEraser;

        /* renamed from: c, reason: from kotlin metadata and from toString */
        @NotNull
        public Object quitEvent;

        @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args$Companion;", "", "()V", "restoreUserProviderDrawingArgs", "Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;", "selectionArgs", "shapeDrawingArgs", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes8.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final Args restoreUserProviderDrawingArgs() {
                return new Args(0.0f, false, new RestoreUserProviderEvent(), 2, null);
            }

            @NotNull
            public final Args selectionArgs() {
                return new Args(1.0f, false, null, 4, null);
            }

            @NotNull
            public final Args shapeDrawingArgs() {
                return new Args(1.0f, false, null, 6, null);
            }

            public Companion() {
            }
        }

        public Args() {
            this(0.0f, false, null, 7, null);
        }

        public static /* synthetic */ Args copy$default(Args args, float f, boolean z, Object obj, int i, Object obj2) {
            if ((i & 1) != 0) {
                f = args.textSelectionPressureMax;
            }
            if ((i & 2) != 0) {
                z = args.detectEraser;
            }
            if ((i & 4) != 0) {
                obj = args.quitEvent;
            }
            return args.copy(f, z, obj);
        }

        /* renamed from: component1, reason: from getter */
        public final float getTextSelectionPressureMax() {
            return this.textSelectionPressureMax;
        }

        /* renamed from: component2, reason: from getter */
        public final boolean getDetectEraser() {
            return this.detectEraser;
        }

        @NotNull
        /* renamed from: component3, reason: from getter */
        public final Object getQuitEvent() {
            return this.quitEvent;
        }

        @NotNull
        public final Args copy(float textSelectionPressureMax, boolean detectEraser, @NotNull Object quitEvent) {
            Intrinsics.checkNotNullParameter(quitEvent, "quitEvent");
            return new Args(textSelectionPressureMax, detectEraser, quitEvent);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Args)) {
                return false;
            }
            Args args = (Args) other;
            return Float.compare(this.textSelectionPressureMax, args.textSelectionPressureMax) == 0 && this.detectEraser == args.detectEraser && Intrinsics.areEqual(this.quitEvent, args.quitEvent);
        }

        public final boolean getDetectEraser() {
            return this.detectEraser;
        }

        @NotNull
        public final Object getQuitEvent() {
            return this.quitEvent;
        }

        public final float getTextSelectionPressureMax() {
            return this.textSelectionPressureMax;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = Float.hashCode(this.textSelectionPressureMax) * 31;
            boolean z = this.detectEraser;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            return ((hashCode + i) * 31) + this.quitEvent.hashCode();
        }

        public final void setDetectEraser(boolean z) {
            this.detectEraser = z;
        }

        public final void setQuitEvent(@NotNull Object obj) {
            Intrinsics.checkNotNullParameter(obj, "<set-?>");
            this.quitEvent = obj;
        }

        @NotNull
        public String toString() {
            return "Args(textSelectionPressureMax=" + this.textSelectionPressureMax + ", detectEraser=" + this.detectEraser + ", quitEvent=" + this.quitEvent + ')';
        }

        public Args(float f, boolean z, @NotNull Object quitEvent) {
            Intrinsics.checkNotNullParameter(quitEvent, "quitEvent");
            this.textSelectionPressureMax = f;
            this.detectEraser = z;
            this.quitEvent = quitEvent;
        }

        public /* synthetic */ Args(float f, boolean z, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? 0.2f : f, (i & 2) != 0 ? true : z, (i & 4) != 0 ? new StartDrawingShapeEvent() : obj);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.PressureDetectHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9202a<T> implements Predicate {
        public C9202a() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PressureDetectHandlerAction.this.getDown() != null;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.PressureDetectHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9203b<T, R> implements Function {
        public C9203b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends PenStatusBean> apply(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PressureDetectHandlerAction.this.rxPenGesture.getObservableHolder().getObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.PressureDetectHandlerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9204c<T, R> implements Function {
        public C9204c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends PressureDetectHandlerAction> apply(@NotNull PenStatusBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PressureDetectHandlerAction.this.m38513o(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.PressureDetectHandlerAction$d */
    /* loaded from: classes8.dex */
    public static final class C9205d<T, R> implements Function {
        public C9205d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PressureDetectHandlerAction apply(@NotNull PressureDetectHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PressureDetectHandlerAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.PressureDetectHandlerAction$e */
    /* loaded from: classes8.dex */
    public static final class C9206e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ RectF f49243f;

        public C9206e(RectF rectF) {
            this.f49243f = rectF;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyScreenRectToDisplay(PressureDetectHandlerAction.this, it2, this.f49243f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.PressureDetectHandlerAction$f */
    /* loaded from: classes8.dex */
    public static final class C9207f<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ TouchData f49245f;

        /* renamed from: g */
        public final /* synthetic */ TouchPoint f49246g;

        public C9207f(TouchData touchData, TouchPoint touchPoint) {
            this.f49245f = touchData;
            this.f49246g = touchPoint;
        }

        /* renamed from: a */
        public final void m38525a(@NotNull PressureDetectHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PressureDetectHandlerAction.this.m38518t(this.f49245f, this.f49246g);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38525a((PressureDetectHandlerAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.PressureDetectHandlerAction$g */
    /* loaded from: classes8.dex */
    public static final class C9208g<T, R> implements Function {
        public C9208g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PressureDetectHandlerAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PressureDetectHandlerAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.PressureDetectHandlerAction$h */
    /* loaded from: classes8.dex */
    public static final class C9209h<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ TouchData f49249f;

        public C9209h(TouchData touchData) {
            this.f49249f = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PressureDetectHandlerAction.this.m38510l(this.f49249f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.PressureDetectHandlerAction$i */
    /* loaded from: classes8.dex */
    public static final class C9210i<T, R> implements Function {
        public C9210i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PressureDetectHandlerAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PressureDetectHandlerAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.PressureDetectHandlerAction$j */
    /* loaded from: classes8.dex */
    public static final class C9211j<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ StartTextSelectionArgs f49252f;

        public C9211j(StartTextSelectionArgs startTextSelectionArgs) {
            this.f49252f = startTextSelectionArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartTextSelectionAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new StartTextSelectionAction(PressureDetectHandlerAction.this.getEditorBundle(), this.f49252f).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.PressureDetectHandlerAction$k */
    /* loaded from: classes8.dex */
    public static final class C9212k<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ BoxInfo f49254f;

        /* renamed from: g */
        public final /* synthetic */ TouchData f49255g;

        public C9212k(BoxInfo boxInfo, TouchData touchData) {
            this.f49254f = boxInfo;
            this.f49255g = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RxBaseAppAction<?>> apply(@NotNull SelectOnScreenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ReaderSelection selection = it2.getSelection();
            return selection == null ? Observable.just(PressureDetectHandlerAction.this) : PressureDetectHandlerAction.this.m38517s(this.f49254f, this.f49255g, it2, selection);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.PressureDetectHandlerAction$l */
    /* loaded from: classes8.dex */
    public static final class C9213l<T, R> implements Function {
        public C9213l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PressureDetectHandlerAction apply(@NotNull RxBaseAppAction<?> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PressureDetectHandlerAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PressureDetectHandlerAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader, @NotNull Args args) {
        super(editorBundle, touchReader);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.rxPenGesture = new RxPenGesture();
        this.touchPointList = new TouchPointList();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.PressureDetectHandlerAction$eraserPressure$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(EraserPropertyOption.INSTANCE.getPressurePercentage());
            }
        });
        this.eraserPressure = lazy;
        this.lastPenStatusBean = new PenStatusBean();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<PressureDetectHandlerAction> create() {
        Observable<PressureDetectHandlerAction> map = subscribeTouchData().filter(new C9202a()).flatMap(new C9203b()).flatMap(new C9204c()).map(new C9205d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction, io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        super.dispose();
        this.rxPenGesture.dispose();
    }

    /* renamed from: l */
    public final void m38510l(TouchData touchData) {
        if (this.lastPenStatusBean.isUp()) {
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "pen up, do not activeEraser", new Object[0]);
            return;
        }
        ShapeHandlerManager shapeHandlerManager = EditorBundleKt.shapeHandlerManager(getEditorBundle());
        shapeHandlerManager.activeShapeProvider(ShapeHandlerManager.ERASE_PROVIDER);
        BaseShapeHandler activeHandler = shapeHandlerManager.getActiveHandler();
        if (activeHandler != null) {
            activeHandler.startErasing(new StartErasingArgs(touchData, this.args.getQuitEvent()));
        }
    }

    /* renamed from: m */
    public final Observable<?> m38511m() {
        Object first;
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.touchPointList.getPoints());
        NoteDrawingArgs uiDrawingArgs = EditorBundleKt.uiDrawingArgs(getEditorBundle());
        RectF boundingRect = this.touchPointList.getBoundingRect();
        RectKt.expand(boundingRect, uiDrawingArgs.getEraserWidth(), uiDrawingArgs.getEraserWidth());
        Observable flatMap = CommonEditorActionsKt.hitTestVisibleBoxObservable(this, (TouchPoint) first).flatMap(new C9206e(boundingRect));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: n */
    public final float m38512n() {
        return ((Number) this.eraserPressure.getValue()).floatValue();
    }

    /* renamed from: o */
    public final Observable<PressureDetectHandlerAction> m38513o(PenStatusBean penStatusBean) {
        Object lastOrNull;
        this.lastPenStatusBean = penStatusBean;
        TouchData down = getDown();
        if (down == null) {
            Observable<PressureDetectHandlerAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        if (!penStatusBean.isLongPress()) {
            Observable<PressureDetectHandlerAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) this.touchPointList.getPoints());
        TouchPoint touchPoint = (TouchPoint) lastOrNull;
        if (touchPoint == null) {
            Observable<PressureDetectHandlerAction> just3 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just3, "just(...)");
            return just3;
        }
        Observable<PressureDetectHandlerAction> map = m38519u(touchPoint).map(new C9207f(down, touchPoint)).map(new C9208g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        this.touchPointList.clear();
        this.touchPointList.add(touchData.getTouchPoint());
        RxPenGesture rxPenGesture = this.rxPenGesture;
        RectF visibleRect = touchData.ensureBoxInfo().getVisibleRect();
        Rect rect = new Rect();
        visibleRect.roundOut(rect);
        rxPenGesture.setLimitRect(rect);
        this.rxPenGesture.onTouchEvent(touchData);
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchMove(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (getDown() == null) {
            return;
        }
        this.touchPointList.add(touchData.getTouchPoint());
        this.rxPenGesture.onTouchEvent(touchData);
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchUp(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (getDown() == null) {
            return;
        }
        this.touchPointList.add(touchData.getTouchPoint());
        this.rxPenGesture.onTouchEvent(touchData);
    }

    /* renamed from: p */
    public final boolean m38514p() {
        return !TouchModeFeatureManager.INSTANCE.isCurTouchModeSupportEdit() || MMKVNote.INSTANCE.getEnableStylusSelectTextOption().get();
    }

    /* renamed from: q */
    public final boolean m38515q() {
        return EraserPropertyOption.INSTANCE.getPressureSwitchOption().get();
    }

    /* renamed from: r */
    public final Observable<PressureDetectHandlerAction> m38516r(TouchData touchData) {
        EditorBundleKt.postEvent(getEditorBundle(), new PreparePressureErasingEvent());
        Observable map = m38511m().doOnNext(new C9209h(touchData)).map(new C9210i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final Observable<StartTextSelectionAction> m38517s(BoxInfo hitTestBoxInfo, TouchData downTouchData, SelectOnScreenAction it2, ReaderSelection selection) {
        Observable flatMap = DisplayActionsKt.display(this).flatMap(new C9211j(new StartTextSelectionArgs(hitTestBoxInfo, downTouchData.getTouchPoint(), it2.getContentPath(), selection, true)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: t */
    public final void m38518t(TouchData down, TouchPoint lastPoint) {
        if (this.args.getDetectEraser()) {
            if (this.lastPenStatusBean.isUp()) {
                Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "pen up, do not startEraser", new Object[0]);
            } else {
                if (!m38515q() || lastPoint.getPressure() < 0.85f - m38512n()) {
                    return;
                }
                RxjavaKt.subscribeWithDefault$default(m38516r(down), null, null, null, 7, null);
            }
        }
    }

    /* renamed from: u */
    public final Observable<PressureDetectHandlerAction> m38519u(TouchPoint lastPoint) {
        if (!EditorBundleKt.handlerManager(getEditorBundle()).isTextSelectionTouchEnabled()) {
            Observable<PressureDetectHandlerAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        if (lastPoint.getPressure() > this.args.getTextSelectionPressureMax() || !m38514p()) {
            Observable<PressureDetectHandlerAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        TouchData down = getDown();
        if (down == null) {
            Observable<PressureDetectHandlerAction> just3 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just3, "just(...)");
            return just3;
        }
        BoxInfo boxInfo = down.getBoxInfo();
        if (boxInfo == null) {
            Observable<PressureDetectHandlerAction> just4 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just4, "just(...)");
            return just4;
        }
        PointF pointF = TouchPointKt.toPointF(down.getTouchPoint());
        Observable<PressureDetectHandlerAction> map = new SelectOnScreenAction(getEditorBundle(), new SelectOnScreenArgs("", boxInfo, pointF, pointF, true, true, null, null, 192, null)).build().flatMap(new C9212k(boxInfo, down)).map(new C9213l());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
