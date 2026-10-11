package com.onyx.galaxy.note.editor.handler;

import android.app.Activity;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.StringMap;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.NetworkCheckAction;
import com.onyx.android.sdk.data.account.event.ActivationStateChangedEvent;
import com.onyx.android.sdk.data.account.model.HWRActivationModel;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.common.data.MessageTemplateKt;
import com.onyx.android.sdk.data.common.data.ShapeTypesetArgs;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerType;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerTypeKt;
import com.onyx.android.sdk.hwr.service.manager.HWRActivationManager;
import com.onyx.android.sdk.neohwr.layout.FontPathLoadResult;
import com.onyx.android.sdk.neohwr.layout.TextLayout;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.event.AddShapesEvent;
import com.onyx.android.sdk.note.common.event.UndoRedoDoneEvent;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShapeLayout;
import com.onyx.android.sdk.p039ui.DoubleOptionDialog;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.RxEmptyBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.hwr.HWRActivateAction;
import com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertTexShapeAction;
import com.onyx.android.sdk.universal.editor.action.hwr.HWRExportToTextAction;
import com.onyx.android.sdk.universal.editor.action.ink.RelayoutRealtimeBeautifyShapesAction;
import com.onyx.android.sdk.universal.editor.action.shape.ReplaceShapesAction;
import com.onyx.android.sdk.universal.editor.action.shape.TransformShapesToSamePageAction;
import com.onyx.android.sdk.universal.editor.data.HWRArgs;
import com.onyx.android.sdk.universal.editor.data.InkBeautifyConvertType;
import com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler;
import com.onyx.android.sdk.universal.editor.events.app.CheckRealtimeBeautifyModeEvent;
import com.onyx.android.sdk.universal.editor.events.app.FinishEditBeautifyResultEvent;
import com.onyx.android.sdk.universal.editor.events.app.MagnifierToolEvent;
import com.onyx.android.sdk.universal.editor.events.app.NotifyRealtimeBeautifyModeUpdatedEvent;
import com.onyx.android.sdk.universal.editor.events.app.RealtimeBeautifyModeUpdatedEvent;
import com.onyx.android.sdk.universal.editor.events.app.StartEditBeautifyResultEvent;
import com.onyx.android.sdk.universal.editor.events.app.StartRealtimeBeautifyEvent;
import com.onyx.android.sdk.universal.editor.events.app.StopRealtimeBeautifyEvent;
import com.onyx.android.sdk.universal.editor.events.note.CheckBeautifyPermissionEvent;
import com.onyx.android.sdk.universal.editor.events.note.HWRCacheExpiredEvent;
import com.onyx.android.sdk.universal.editor.events.note.HWREngineInitFailedEvent;
import com.onyx.android.sdk.universal.editor.events.note.HWRExceedDeviceLimitEvent;
import com.onyx.android.sdk.universal.editor.events.note.HWRFinishSDKFirstActivationEvent;
import com.onyx.android.sdk.universal.editor.events.note.HWRRequestActivateTrialEvent;
import com.onyx.android.sdk.universal.editor.events.note.HWRStartEngineActivateEvent;
import com.onyx.android.sdk.universal.editor.events.note.HWRStartSDKFirstActivationEvent;
import com.onyx.android.sdk.universal.editor.events.note.HWRTrialActivatedEvent;
import com.onyx.android.sdk.universal.editor.events.note.HWRTrialExpiredEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartInkBeautifyEvent;
import com.onyx.android.sdk.universal.editor.events.note.UiDrawingArgsChangedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.util.HWREngineManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.CheckLoginStateAction;
import com.onyx.galaxy.note.common.data.NavigationType;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.onyx.galaxy.note.utils.FunctionPermissions;
import com.onyx.galaxy.note.utils.Navigator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000ú\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010_\u001a\u00020^\u0012\u0006\u0010S\u001a\u00020Q¢\u0006\u0004\b`\u0010aJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\f\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007H\u0002J\u001a\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J,\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\b\u0010\u0014\u001a\u00020\u0002H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\b\u0010\u001e\u001a\u00020\u0002H\u0002J\b\u0010\u001f\u001a\u00020\u0002H\u0002J\u0010\u0010\"\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 H\u0002J\b\u0010$\u001a\u00020#H\u0002J\b\u0010%\u001a\u00020\u0002H\u0016J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010'\u001a\u00020&H\u0007J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010'\u001a\u00020)H\u0007J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010'\u001a\u00020+H\u0007J\u0010\u0010.\u001a\u00020\u00022\u0006\u0010'\u001a\u00020-H\u0007J\u0010\u00100\u001a\u00020\u00022\u0006\u0010'\u001a\u00020/H\u0007J\u0010\u00102\u001a\u00020\u00022\u0006\u0010'\u001a\u000201H\u0007J\u0010\u00104\u001a\u00020\u00022\u0006\u0010'\u001a\u000203H\u0007J\u0010\u00106\u001a\u00020\u00022\u0006\u0010'\u001a\u000205H\u0007J\u0010\u00108\u001a\u00020\u00022\u0006\u0010'\u001a\u000207H\u0007J\u0010\u0010:\u001a\u00020\u00022\u0006\u0010'\u001a\u000209H\u0007J\u0010\u0010<\u001a\u00020\u00022\u0006\u0010'\u001a\u00020;H\u0007J\u0010\u0010>\u001a\u00020\u00022\u0006\u0010'\u001a\u00020=H\u0007J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010'\u001a\u00020?H\u0007J\u0010\u0010B\u001a\u00020\u00022\u0006\u0010'\u001a\u00020AH\u0007J\u0010\u0010D\u001a\u00020\u00022\u0006\u0010'\u001a\u00020CH\u0007J\u0010\u0010F\u001a\u00020\u00022\u0006\u0010'\u001a\u00020EH\u0007J\u0010\u0010H\u001a\u00020\u00022\u0006\u0010'\u001a\u00020GH\u0007J\u0010\u0010J\u001a\u00020\u00022\u0006\u0010'\u001a\u00020IH\u0007J\u0010\u0010L\u001a\u00020\u00022\u0006\u0010'\u001a\u00020KH\u0007J\u0010\u0010N\u001a\u00020\u00022\u0006\u0010'\u001a\u00020MH\u0007J\u0010\u0010P\u001a\u00020\u00022\u0006\u0010'\u001a\u00020OH\u0007R\u0014\u0010S\u001a\u00020Q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010RR\u0014\u0010V\u001a\u00020T8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010UR\u001a\u0010X\u001a\b\u0012\u0004\u0012\u00020\n0\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010WR\u0018\u0010[\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010ZR\u0014\u0010]\u001a\u00020 8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\b\u0010\\¨\u0006b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "", C6999h.f39688c, "Landroid/app/Activity;", "m", "i", "Lio/reactivex/rxjava3/core/Observable;", "j", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "originShapes", C4921e.f26537n, "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "typesetArgs", "", "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;", "relayoutShapes", "lastLineShapes", "z", "q", "Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;", "convertType", C6998g.f39679a, GoogleApiAvailabilityLight.f29016b, "x", "y", "", "limitCount", "w", "u", "v", "", "triggerFrom", C6997f.f39671c, "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "l", "destroy", "Lcom/onyx/android/sdk/note/common/event/AddShapesEvent;", NotificationCompat.CATEGORY_EVENT, "onAddShapesEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/FinishEditBeautifyResultEvent;", "onFinishEditBeautifyResultEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/StartRealtimeBeautifyEvent;", "onStartRealtimeBeautifyEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/StopRealtimeBeautifyEvent;", "onStopRealtimeBeautifyEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/CheckRealtimeBeautifyModeEvent;", "onCheckRealtimeBeautifyModeEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/NotifyRealtimeBeautifyModeUpdatedEvent;", "onNotifyRealtimeBeautifyModeUpdatedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/UiDrawingArgsChangedEvent;", "onUiDrawingArgsChangedEvent", "Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;", "onActivationStateChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/CheckBeautifyPermissionEvent;", "onCheckBeautifyPermissionEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartInkBeautifyEvent;", "onStartInkBeautifyEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HWRRequestActivateTrialEvent;", "onHWRRequestActivateTrialEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HWRStartSDKFirstActivationEvent;", "onHWRStartSDKFirstActivationEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HWRFinishSDKFirstActivationEvent;", "onHWRFinishSDKFirstActivationEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HWRTrialActivatedEvent;", "onHWRTrialActivatedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HWRTrialExpiredEvent;", "onHWRTrialExpiredEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HWRExceedDeviceLimitEvent;", "onHWRExceedDeviceLimitEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HWRCacheExpiredEvent;", "onHWRCacheExpiredEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HWREngineInitFailedEvent;", "onHWREngineInitFailedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HWRStartEngineActivateEvent;", "onHWRStartEngineActivateEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/MagnifierToolEvent;", "onMagnifierToolEvent", "Lcom/onyx/android/sdk/note/common/event/UndoRedoDoneEvent;", "onUndoRedoDoneEvent", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "fragment", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "disposables", "Ljava/util/List;", "scribbleShapes", "Lcom/onyx/galaxy/note/common/view/LoadingDialog;", "Lcom/onyx/galaxy/note/common/view/LoadingDialog;", "hwrActivatingDialog", Constants.STRING_SIG, "KEY_TRIAL_EXPIRE_NOTIFY_STATE", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nInkBeautifyEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkBeautifyEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,523:1\n766#2:524\n857#2,2:525\n766#2:528\n857#2,2:529\n1#3:527\n970#4:531\n1041#4,3:532\n*S KotlinDebug\n*F\n+ 1 InkBeautifyEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler\n*L\n152#1:524\n152#1:525,2\n381#1:528\n381#1:529,2\n392#1:531\n392#1:532,3\n*E\n"})
/* loaded from: classes9.dex */
public final class InkBeautifyEventHandler extends BaseEventHandler {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final NoteScribbleFragment fragment;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final CompositeDisposable disposables;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> scribbleShapes;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public LoadingDialog hwrActivatingDialog;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final String KEY_TRIAL_EXPIRE_NOTIFY_STATE;

    /* renamed from: com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler$a */
    /* loaded from: classes9.dex */
    public static final class C12039a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f58691f;

        /* JADX WARN: Multi-variable type inference failed */
        public C12039a(List<? extends Shape> list) {
            this.f58691f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ReplaceShapesAction> apply(@NotNull RelayoutRealtimeBeautifyShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new ReplaceShapesAction(InkBeautifyEventHandler.this.getEditorBundle(), this.f58691f, it2.getRelayoutShapes(), false, 8, null).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler$b */
    /* loaded from: classes9.dex */
    public static final class C12040b<T, R> implements Function {
        public C12040b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InkBeautifyEventHandler.this.m46079k(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler$c */
    /* loaded from: classes9.dex */
    public static final class C12041c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f58694f;

        /* JADX WARN: Multi-variable type inference failed */
        public C12041c(List<? extends Shape> list) {
            this.f58694f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new TransformShapesToSamePageAction(InkBeautifyEventHandler.this.getEditorBundle(), this.f58694f, null, 4, null).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler$d */
    /* loaded from: classes9.dex */
    public static final class C12042d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f58695e;

        public C12042d(List<Shape> list) {
            this.f58695e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f58695e.addAll(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler$e */
    /* loaded from: classes9.dex */
    public static final class C12043e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ HWRArgs f58697f;

        public C12043e(HWRArgs hWRArgs) {
            this.f58697f = hWRArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWRExportToTextAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWRExportToTextAction(InkBeautifyEventHandler.this.getEditorBundle(), it2, this.f58697f).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler$f */
    /* loaded from: classes9.dex */
    public static final class C12044f<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f58699f;

        /* renamed from: g */
        public final /* synthetic */ Shape f58700g;

        /* renamed from: h */
        public final /* synthetic */ float f58701h;

        public C12044f(String str, Shape shape, float f) {
            this.f58699f = str;
            this.f58700g = shape;
            this.f58701h = f;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull HWRExportToTextAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWRConvertTexShapeAction(InkBeautifyEventHandler.this.getEditorBundle(), this.f58699f, this.f58700g.getLayerId(), it2.getHwrBlockOutputs(), this.f58701h).build();
        }
    }

    @SourceDebugExtension({"SMAP\nInkBeautifyEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkBeautifyEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$createConvertObservable$7\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,523:1\n800#2,11:524\n*S KotlinDebug\n*F\n+ 1 InkBeautifyEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$createConvertObservable$7\n*L\n191#1:524,11\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler$g */
    /* loaded from: classes9.dex */
    public static final class C12045g<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<HWRTextShape> f58702e;

        public C12045g(List<HWRTextShape> list) {
            this.f58702e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            List<HWRTextShape> list = this.f58702e;
            ArrayList arrayList = new ArrayList();
            for (T t : it2) {
                if (t instanceof HWRTextShape) {
                    arrayList.add(t);
                }
            }
            list.addAll(arrayList);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler$h */
    /* loaded from: classes9.dex */
    public static final class C12046h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<HWRTextShape> f58704f;

        /* renamed from: g */
        public final /* synthetic */ ShapeTypesetArgs f58705g;

        /* renamed from: h */
        public final /* synthetic */ String f58706h;

        /* renamed from: i */
        public final /* synthetic */ Set<String> f58707i;

        public C12046h(List<HWRTextShape> list, ShapeTypesetArgs shapeTypesetArgs, String str, Set<String> set) {
            this.f58704f = list;
            this.f58705g = shapeTypesetArgs;
            this.f58706h = str;
            this.f58707i = set;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RelayoutRealtimeBeautifyShapesAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new RelayoutRealtimeBeautifyShapesAction(InkBeautifyEventHandler.this.getEditorBundle(), this.f58704f, this.f58705g, this.f58706h, this.f58707i).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler$i */
    /* loaded from: classes9.dex */
    public static final class C12047i<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<HWRTextShape> f58708e;

        /* renamed from: f */
        public final /* synthetic */ List<HWRTextShape> f58709f;

        public C12047i(List<HWRTextShape> list, List<HWRTextShape> list2) {
            this.f58708e = list;
            this.f58709f = list2;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RelayoutRealtimeBeautifyShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f58708e.addAll(it2.getRelayoutShapes());
            this.f58709f.addAll(it2.getLastLineShapes());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler$j */
    /* loaded from: classes9.dex */
    public static final class C12048j<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ HWRBundle f58710e;

        /* renamed from: f */
        public final /* synthetic */ HWRRecognizerType f58711f;

        public C12048j(HWRBundle hWRBundle, HWRRecognizerType hWRRecognizerType) {
            this.f58710e = hWRBundle;
            this.f58711f = hWRRecognizerType;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWRActivateAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWRActivateAction(this.f58710e, this.f58711f).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler$k */
    /* loaded from: classes9.dex */
    public static final class C12049k<T, R> implements Function {

        /* renamed from: e */
        public static final C12049k<T, R> f58712e = new C12049k<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull List<BoxInfo> it2) {
            Object first;
            Intrinsics.checkNotNullParameter(it2, "it");
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2);
            return (BoxInfo) first;
        }
    }

    @SourceDebugExtension({"SMAP\nInkBeautifyEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkBeautifyEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$updateBeautifyResult$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Point.kt\nandroidx/core/graphics/PointKt\n*L\n1#1,523:1\n1549#2:524\n1620#2,3:525\n1549#2:529\n1620#2,3:530\n187#3:528\n*S KotlinDebug\n*F\n+ 1 InkBeautifyEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$updateBeautifyResult$3\n*L\n216#1:524\n216#1:525,3\n220#1:529\n220#1:530,3\n218#1:528\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler$l */
    /* loaded from: classes9.dex */
    public static final class C12050l<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<HWRTextShape> f58713e;

        /* renamed from: f */
        public final /* synthetic */ InkBeautifyEventHandler f58714f;

        /* renamed from: g */
        public final /* synthetic */ List<HWRTextShape> f58715g;

        /* renamed from: h */
        public final /* synthetic */ ShapeTypesetArgs f58716h;

        /* renamed from: i */
        public final /* synthetic */ HWRTextShape f58717i;

        public C12050l(List<HWRTextShape> list, InkBeautifyEventHandler inkBeautifyEventHandler, List<HWRTextShape> list2, ShapeTypesetArgs shapeTypesetArgs, HWRTextShape hWRTextShape) {
            this.f58713e = list;
            this.f58714f = inkBeautifyEventHandler;
            this.f58715g = list2;
            this.f58716h = shapeTypesetArgs;
            this.f58717i = hWRTextShape;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo boxInfo) {
            int collectionSizeOrDefault;
            int collectionSizeOrDefault2;
            String str;
            Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
            Matrix noteRenderMatrix = BoxInfoUtils.INSTANCE.noteRenderMatrix(boxInfo);
            List<HWRTextShape> list = this.f58713e;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(((HWRTextShape) it2.next()).getBoundingRect());
            }
            RectF concatTransform = RectFKt.concatTransform(RectFKt.boundingRectF(arrayList), noteRenderMatrix);
            PointF pointF = new PointF(this.f58714f.getEditorBundle().getDisplayBundle().getActivityOffset());
            RectF copyAndOffset = RectKt.copyAndOffset(concatTransform, pointF.x, pointF.y);
            List<HWRTextShape> list2 = this.f58715g;
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            Iterator<T> it3 = list2.iterator();
            while (true) {
                str = "";
                if (!it3.hasNext()) {
                    break;
                }
                String text = ((HWRTextShape) it3.next()).getText();
                if (text != null) {
                    str = text;
                }
                arrayList2.add(str);
            }
            String join$default = StringKt.join$default(arrayList2, null, 1, null);
            TextLayout textLayout = TextLayout.INSTANCE;
            ShapeTypesetArgs shapeTypesetArgs = this.f58716h;
            String text2 = this.f58717i.getText();
            FontPathLoadResult loadFontPath = textLayout.loadFontPath(shapeTypesetArgs, text2 != null ? text2 : "");
            EditorBundleKt.postEvent(this.f58714f.getEditorBundle(), new StartEditBeautifyResultEvent(this.f58714f.getEditorBundle(), this.f58715g, copyAndOffset, join$default, this.f58717i.getBoundingRect().left + loadFontPath.getGlyphRect().left, this.f58717i.getBoundingRect().top + loadFontPath.getGlyphRect().top, this.f58716h));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InkBeautifyEventHandler(@NotNull EditorBundle editorBundle, @NotNull NoteScribbleFragment fragment) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.fragment = fragment;
        this.disposables = new CompositeDisposable();
        this.scribbleShapes = new ArrayList();
        this.KEY_TRIAL_EXPIRE_NOTIFY_STATE = "TrialExpireNotified";
        GlobalBundle.INSTANCE.register(this);
        AccountDataBundle.INSTANCE.register(this);
    }

    /* renamed from: o */
    public static final void m46069o(String lang, InkBeautifyConvertType convertType, InkBeautifyEventHandler this$0) {
        Intrinsics.checkNotNullParameter(lang, "$lang");
        Intrinsics.checkNotNullParameter(convertType, "$convertType");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new StartInkBeautifyEvent(lang, convertType));
    }

    /* renamed from: p */
    public static final void m46070p(LoadingDialog dialog, int i) {
        Intrinsics.checkNotNullParameter(dialog, "$dialog");
        dialog.dismiss();
        RxTimerUtil.INSTANCE.cancel(i);
    }

    /* renamed from: r */
    public static final void m46071r(InkBeautifyEventHandler this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new QuitTransformEvent(true));
    }

    /* renamed from: s */
    public static final void m46072s(InkBeautifyEventHandler this$0, CheckBeautifyPermissionEvent event, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(event, "$event");
        this$0.m46075g(event.getConvertType());
    }

    /* renamed from: t */
    public static final void m46073t(String lang, HWRStartEngineActivateEvent event, InkBeautifyEventHandler this$0) {
        Intrinsics.checkNotNullParameter(lang, "$lang");
        Intrinsics.checkNotNullParameter(event, "$event");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new StartInkBeautifyEvent(lang, event.getConvertType()));
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler, com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void destroy() {
        this.disposables.dispose();
        GlobalBundle.INSTANCE.unregister(this);
        AccountDataBundle.INSTANCE.unregister(this);
        super.destroy();
    }

    /* renamed from: f */
    public final void m46074f(String triggerFrom) {
        StringMap stringMap = new StringMap();
        stringMap.put(MessageTemplateKt.KEY_STATISTIC_TYPE, triggerFrom);
        Navigator.navigate$default(Navigator.INSTANCE, NavigationType.MEMBER_CHARGE, stringMap, null, 4, null);
    }

    /* renamed from: g */
    public final void m46075g(InkBeautifyConvertType convertType) {
        HWRActivationModel hWREngineActivationState = HWRActivationManager.INSTANCE.getHWREngineActivationState(HWREngineManager.INSTANCE.getEngineByFunction(FunctionKey.INK_BEAUTIFY));
        if (hWREngineActivationState.getCacheValidityTime() < DateTimeUtil.INSTANCE.millisOfNow()) {
            EditorBundleKt.postEvent(getEditorBundle(), new HWRCacheExpiredEvent());
            return;
        }
        if (hWREngineActivationState.getExceedDeviceLimit()) {
            EditorBundleKt.postEvent(getEditorBundle(), new HWRExceedDeviceLimitEvent(hWREngineActivationState.getDeviceLimitCount()));
            return;
        }
        if (HWRActivationModel.INSTANCE.isExpired(hWREngineActivationState)) {
            EditorBundleKt.postEvent(getEditorBundle(), new HWRTrialExpiredEvent(convertType));
            return;
        }
        int state = hWREngineActivationState.getState();
        if (state == 1) {
            EditorBundleKt.postEvent(getEditorBundle(), new HWRRequestActivateTrialEvent(convertType));
            return;
        }
        if (state == 2) {
            EditorBundleKt.postEvent(getEditorBundle(), new HWRStartEngineActivateEvent(convertType));
        } else if (state == 3 || state == 4) {
            if (hWREngineActivationState.getDeviceActivated()) {
                m46082n(convertType);
            } else {
                EditorBundleKt.postEvent(getEditorBundle(), new HWRStartEngineActivateEvent(convertType));
            }
        }
    }

    /* renamed from: h */
    public final void m46076h() {
        this.scribbleShapes.clear();
        this.disposables.clear();
    }

    /* renamed from: i */
    public final void m46077i() {
        Disposable subscribe = m46078j().subscribe();
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        this.disposables.add(subscribe);
    }

    /* renamed from: j */
    public final Observable<?> m46078j() {
        if (this.scribbleShapes.isEmpty()) {
            Observable<?> just = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        List<Shape> list = this.scribbleShapes;
        final ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!getEditorBundle().getAiBundle().isStrokeConverted(((Shape) obj).getDownPoint().getTimestamp())) {
                arrayList.add(obj);
            }
        }
        this.scribbleShapes.clear();
        Observable<?> flatMap = DocCommonActionsKt.createNoteObservable(getEditorBundle(), new Function1<NoteBundle, List<? extends Shape>>() { // from class: com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler$createConvertObservable$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<Shape> invoke(@NotNull NoteBundle noteBundle) {
                int collectionSizeOrDefault;
                List arrayList2;
                Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                List<Shape> list2 = arrayList;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Object obj2 : list2) {
                    String pageUniqueId = ((Shape) obj2).getPageUniqueId();
                    Object obj3 = linkedHashMap.get(pageUniqueId);
                    if (obj3 == null) {
                        obj3 = new ArrayList();
                        linkedHashMap.put(pageUniqueId, obj3);
                    }
                    ((List) obj3).add(obj2);
                }
                ArrayList arrayList3 = new ArrayList(linkedHashMap.size());
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    NotePage notePage = NoteDocNotePage.INSTANCE.getNotePage(noteBundle.getNoteDoc(), (String) entry.getKey());
                    if (notePage == null) {
                        arrayList2 = CollectionsKt__CollectionsKt.emptyList();
                    } else {
                        Iterable iterable = (Iterable) entry.getValue();
                        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                        ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault);
                        Iterator it2 = iterable.iterator();
                        while (it2.hasNext()) {
                            arrayList4.add(((Shape) it2.next()).getShapeUniqueId());
                        }
                        arrayList2 = new ArrayList();
                        for (Object obj4 : arrayList4) {
                            if (NotePageShape.INSTANCE.isMemShapeRemoved(notePage, (String) obj4)) {
                                arrayList2.add(obj4);
                            }
                        }
                        linkedHashSet.addAll(arrayList2);
                    }
                    arrayList3.add(arrayList2);
                }
                List<Shape> list3 = arrayList;
                ArrayList arrayList5 = new ArrayList();
                for (Object obj5 : list3) {
                    if (!linkedHashSet.contains(((Shape) obj5).getShapeUniqueId())) {
                        arrayList5.add(obj5);
                    }
                }
                return arrayList5;
            }
        }).flatMap(new C12040b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: k */
    public final Observable<?> m46079k(List<? extends Shape> originShapes) {
        Object first;
        float minFontSizeLimit = HWRConvertTexShapeAction.INSTANCE.getMinFontSizeLimit(originShapes);
        ArrayList arrayList = new ArrayList();
        Set<String> pageIdSet = ShapeTypes.INSTANCE.toPageIdSet(originShapes);
        ArrayList arrayList2 = new ArrayList();
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) originShapes);
        Shape shape = (Shape) first;
        String pageUniqueId = shape.getPageUniqueId();
        HWRArgs hWRArgs = new HWRArgs();
        HWREngineManager hWREngineManager = HWREngineManager.INSTANCE;
        hWRArgs.setLang(hWREngineManager.getDefaultLangByFunction(FunctionKey.INK_BEAUTIFY));
        hWRArgs.setRecognizer(hWREngineManager.getRecognizerTypeByFunction(FunctionKey.INK_BEAUTIFY));
        hWRArgs.setSegmentation(hWREngineManager.shouldEnableSegmentFeature(HWRRecognizerTypeKt.getEngineType(hWRArgs.getRecognizer())));
        Observable<?> flatMap = Observable.just(Unit.INSTANCE).flatMap(new C12041c(originShapes)).doOnNext(new C12042d(arrayList2)).flatMap(new C12043e(hWRArgs)).flatMap(new C12044f(pageUniqueId, shape, minFontSizeLimit)).doOnNext(new C12045g(arrayList)).flatMap(new C12046h(arrayList, MMKVNote.INSTANCE.getRealtimeBeautifyTypesetArgs(), pageUniqueId, pageIdSet)).doOnNext(new C12047i(new ArrayList(), new ArrayList())).flatMap(new C12039a(originShapes));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final BooleanOption m46080l() {
        return MMKVUtils.INSTANCE.booleanOption(AccountDataBundle.INSTANCE.getSyncUserId() + '-' + this.KEY_TRIAL_EXPIRE_NOTIFY_STATE, false);
    }

    /* renamed from: m */
    public final Activity m46081m() {
        return EditorBundleKt.activity(getEditorBundle());
    }

    /* renamed from: n */
    public final void m46082n(final InkBeautifyConvertType convertType) {
        FragmentActivity activity = this.fragment.getActivity();
        if (activity == null) {
            return;
        }
        final LoadingDialog createLoadingDialog = ContextExtKt.createLoadingDialog(activity);
        createLoadingDialog.updateTitle(C10651R.string.ink_activating_beautify_sdk);
        createLoadingDialog.setTransparentAlpha();
        createLoadingDialog.show();
        final int timer = RxTimerUtil.INSTANCE.timer(300L, TimeUnit.MILLISECONDS, new Function1<Long, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler$initEngine$timerKey$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                invoke(l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j) {
                LoadingDialog.this.setOpaqueAlpha();
            }
        });
        HWRBundle hwrBundle = getEditorBundle().getAiBundle().getHwrBundle();
        HWREngineManager hWREngineManager = HWREngineManager.INSTANCE;
        final String defaultLangByFunction = hWREngineManager.getDefaultLangByFunction(FunctionKey.INK_BEAUTIFY);
        final HWRRecognizerType recognizerTypeByFunction = hWREngineManager.getRecognizerTypeByFunction(FunctionKey.INK_BEAUTIFY);
        Observable just = Observable.just(Unit.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        RxjavaKt.flatMapIf(just, new Function1<Unit, Boolean>() { // from class: com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler$initEngine$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Unit it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!HWRActivationManager.INSTANCE.isRecognizerActivated(HWRRecognizerType.this));
            }
        }, new Function1<Unit, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler$initEngine$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Unit it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new NetworkCheckAction().build();
            }
        }).flatMap(new C12048j(hwrBundle, recognizerTypeByFunction)).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.cki
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                InkBeautifyEventHandler.m46069o(defaultLangByFunction, convertType, this);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.dki
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                InkBeautifyEventHandler.m46070p(LoadingDialog.this, timer);
            }
        }).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onActivationStateChangedEvent(@NotNull ActivationStateChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46083q();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAddShapesEvent(@NotNull AddShapesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        List<Shape> list = event.getList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            Shape shape = (Shape) obj;
            ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
            if (shapeTypes.isSupportHWR(shape) && shapeTypes.isPenShape(shape) && !shapeTypes.isReferenceShape(shape)) {
                arrayList.add(obj);
            }
        }
        this.scribbleShapes.addAll(arrayList);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCheckBeautifyPermissionEvent(@NotNull final CheckBeautifyPermissionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        FragmentActivity activity = this.fragment.getActivity();
        if (activity == null) {
            return;
        }
        RxjavaKt.doOnNextIfTrue(RxjavaKt.doOnNextIfFalse(new CheckLoginStateAction(activity).build(), new Consumer() { // from class: com.sunia.HTREnginev2.aki
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                InkBeautifyEventHandler.m46071r(InkBeautifyEventHandler.this, ((Boolean) obj).booleanValue());
            }
        }), new Consumer() { // from class: com.sunia.HTREnginev2.bki
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                InkBeautifyEventHandler.m46072s(InkBeautifyEventHandler.this, event, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCheckRealtimeBeautifyModeEvent(@NotNull CheckRealtimeBeautifyModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46083q();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFinishEditBeautifyResultEvent(@NotNull FinishEditBeautifyResultEvent event) {
        Object firstOrNull;
        List filterNotNull;
        Intrinsics.checkNotNullParameter(event, "event");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) event.getOriginShapes());
        HWRTextShape hWRTextShape = (HWRTextShape) firstOrNull;
        if (hWRTextShape == null) {
            return;
        }
        float startX = event.getStartX();
        float baseline = event.getBaseline();
        float charSpacingInPx = event.getTypesetArgs().getCharSpacingInPx();
        HWRTextShape clone$default = HWRTextShape.clone$default(hWRTextShape, null, 1, null);
        String newText = event.getNewText();
        ArrayList arrayList = new ArrayList(newText.length());
        for (int i = 0; i < newText.length(); i++) {
            clone$default.setText(String.valueOf(newText.charAt(i)));
            HWRTextShape layoutShape = HWRTextShapeLayout.INSTANCE.layoutShape(clone$default, startX, baseline, event.getTypesetArgs());
            if (layoutShape.getBoundingRect().isEmpty()) {
                layoutShape = null;
            } else {
                startX = layoutShape.getBoundingRect().right + charSpacingInPx;
            }
            arrayList.add(layoutShape);
        }
        filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(arrayList);
        RxBaseAction.execute$default(new ReplaceShapesAction(getEditorBundle(), event.getOriginShapes(), filterNotNull, false, 8, null), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHWRCacheExpiredEvent(@NotNull HWRCacheExpiredEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46084u();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHWREngineInitFailedEvent(@NotNull HWREngineInitFailedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46085v();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHWRExceedDeviceLimitEvent(@NotNull HWRExceedDeviceLimitEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46086w(event.getLimitCount());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHWRFinishSDKFirstActivationEvent(@NotNull HWRFinishSDKFirstActivationEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        LoadingDialog loadingDialog = this.hwrActivatingDialog;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        this.hwrActivatingDialog = null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHWRRequestActivateTrialEvent(@NotNull HWRRequestActivateTrialEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46087x(event.getConvertType());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHWRStartEngineActivateEvent(@NotNull final HWRStartEngineActivateEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        HWRBundle hwrBundle = getEditorBundle().getAiBundle().getHwrBundle();
        HWREngineManager hWREngineManager = HWREngineManager.INSTANCE;
        HWRRecognizerType recognizerTypeByFunction = hWREngineManager.getRecognizerTypeByFunction(FunctionKey.INK_BEAUTIFY);
        final String defaultLangByFunction = hWREngineManager.getDefaultLangByFunction(FunctionKey.INK_BEAUTIFY);
        HWRActivateAction hWRActivateAction = new HWRActivateAction(hwrBundle, recognizerTypeByFunction);
        hWRActivateAction.setEditorBundle(getEditorBundle());
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<HWRActivateAction> doOnComplete = hWRActivateAction.build().doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.eki
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                InkBeautifyEventHandler.m46073t(defaultLangByFunction, event, this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnComplete, null, null, 3, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHWRStartSDKFirstActivationEvent(@NotNull HWRStartSDKFirstActivationEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Activity m46081m = m46081m();
        if (m46081m == null) {
            return;
        }
        LoadingDialog createLoadingDialog = ContextExtKt.createLoadingDialog(m46081m);
        createLoadingDialog.updateTitle(C10651R.string.ink_activating_beautify_sdk);
        createLoadingDialog.show();
        this.hwrActivatingDialog = createLoadingDialog;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHWRTrialActivatedEvent(@NotNull HWRTrialActivatedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.ink_beautify_trial_activated_hint, false, 2, (Object) null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHWRTrialExpiredEvent(@NotNull HWRTrialExpiredEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46088y(event.getConvertType());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMagnifierToolEvent(@NotNull MagnifierToolEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46076h();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNotifyRealtimeBeautifyModeUpdatedEvent(@NotNull NotifyRealtimeBeautifyModeUpdatedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46083q();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartInkBeautifyEvent(@NotNull StartInkBeautifyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getConvertType().isRealtimeConvert()) {
            MMKVNote.INSTANCE.getRealtimeBeautifyEnabledOption().put(true);
            GlobalBundle.INSTANCE.postEvent(new NotifyRealtimeBeautifyModeUpdatedEvent());
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.realtime_beautify_enabled, false, 2, (Object) null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartRealtimeBeautifyEvent(@NotNull StartRealtimeBeautifyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46077i();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStopRealtimeBeautifyEvent(@NotNull StopRealtimeBeautifyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46076h();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUiDrawingArgsChangedEvent(@NotNull UiDrawingArgsChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46083q();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUndoRedoDoneEvent(@NotNull UndoRedoDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46076h();
    }

    /* renamed from: q */
    public final void m46083q() {
        m46076h();
        EditorBundleKt.postEvent(getEditorBundle(), new RealtimeBeautifyModeUpdatedEvent(FunctionPermissions.INSTANCE.isRealtimeBeautifyEnabled()));
    }

    /* renamed from: u */
    public final void m46084u() {
        Activity m46081m = m46081m();
        if (m46081m == null) {
            return;
        }
        DoubleOptionDialog createWithWarningConfirmTitleStyle = DoubleOptionDialog.INSTANCE.createWithWarningConfirmTitleStyle(m46081m);
        createWithWarningConfirmTitleStyle.setMessageTextRes(C10651R.string.ink_cache_expired);
        createWithWarningConfirmTitleStyle.setLeftButtonTitleRes(C10651R.string.cancel);
        createWithWarningConfirmTitleStyle.setRightButtonTitleRes(C10651R.string.confirm);
        createWithWarningConfirmTitleStyle.show();
    }

    /* renamed from: v */
    public final void m46085v() {
        Activity m46081m = m46081m();
        if (m46081m == null) {
            return;
        }
        DoubleOptionDialog createWithWarningConfirmTitleStyle = DoubleOptionDialog.INSTANCE.createWithWarningConfirmTitleStyle(m46081m);
        createWithWarningConfirmTitleStyle.setMessageTextRes(C10651R.string.ink_engine_init_failed);
        createWithWarningConfirmTitleStyle.setLeftButtonTitleRes(C10651R.string.cancel);
        createWithWarningConfirmTitleStyle.setRightButtonTitleRes(C10651R.string.confirm);
        createWithWarningConfirmTitleStyle.show();
    }

    /* renamed from: w */
    public final void m46086w(int limitCount) {
        Activity m46081m = m46081m();
        if (m46081m == null) {
            return;
        }
        DoubleOptionDialog createWithWarningConfirmTitleStyle = DoubleOptionDialog.INSTANCE.createWithWarningConfirmTitleStyle(m46081m);
        createWithWarningConfirmTitleStyle.setMessageText(ResManager.INSTANCE.getFormatString(C10651R.string.ink_exceed_device_limit, Integer.valueOf(limitCount)));
        createWithWarningConfirmTitleStyle.setLeftButtonTitleRes(C10651R.string.cancel);
        createWithWarningConfirmTitleStyle.setRightButtonTitleRes(C10651R.string.confirm);
        createWithWarningConfirmTitleStyle.show();
    }

    /* renamed from: x */
    public final void m46087x(final InkBeautifyConvertType convertType) {
        Activity m46081m = m46081m();
        if (m46081m == null) {
            return;
        }
        DoubleOptionDialog createWithSecondaryPrimaryTitleStyle = DoubleOptionDialog.INSTANCE.createWithSecondaryPrimaryTitleStyle(m46081m);
        createWithSecondaryPrimaryTitleStyle.setShowCloseButton(true);
        createWithSecondaryPrimaryTitleStyle.setMessageTextRes(C10651R.string.ink_about);
        createWithSecondaryPrimaryTitleStyle.setLeftButtonTitleRes(C10651R.string.ink_start_trial);
        createWithSecondaryPrimaryTitleStyle.setRightButtonTitleRes(C10651R.string.ink_buy_pro);
        createWithSecondaryPrimaryTitleStyle.setOnLeftButtonClick(new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler$showRequestActivateTrialDialog$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                EditorBundleKt.postEvent(this.getEditorBundle(), new HWRStartEngineActivateEvent(InkBeautifyConvertType.this));
            }
        });
        createWithSecondaryPrimaryTitleStyle.setOnRightButtonClick(new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.handler.InkBeautifyEventHandler$showRequestActivateTrialDialog$1$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.m46074f(InkBeautifyConvertType.this.isRealtimeConvert() ? OnyxStatisticConstant.TRIGGER_REALTIME_BEAUTIFY_FROM_TRIAL : OnyxStatisticConstant.TRIGGER_INK_BEAUTIFY_FROM_TRIAL);
            }
        });
        createWithSecondaryPrimaryTitleStyle.setCanceledOnTouchOutside(true);
        createWithSecondaryPrimaryTitleStyle.show();
    }

    /* renamed from: y */
    public final void m46088y(InkBeautifyConvertType convertType) {
        m46074f(convertType.isRealtimeConvert() ? OnyxStatisticConstant.TRIGGER_REALTIME_BEAUTIFY_FROM_PRO : OnyxStatisticConstant.TRIGGER_INK_BEAUTIFY_FROM_PRO);
        if (HWRActivationManager.INSTANCE.getHWREngineActivationState(HWREngineManager.INSTANCE.getEngineByFunction(FunctionKey.INK_BEAUTIFY)).getState() == 6) {
            return;
        }
        BooleanOption m46080l = m46080l();
        if (m46080l.get()) {
            return;
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.ink_trial_expired, false, 2, (Object) null);
        m46080l.put(true);
    }

    /* renamed from: z */
    public final void m46089z(ShapeTypesetArgs typesetArgs, List<HWRTextShape> relayoutShapes, List<HWRTextShape> lastLineShapes) {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) lastLineShapes);
        HWRTextShape hWRTextShape = (HWRTextShape) firstOrNull;
        if (hWRTextShape == null) {
            return;
        }
        String pageUniqueId = hWRTextShape.getPageUniqueId();
        ShapeTypesetArgs copy = typesetArgs.copy();
        if (!copy.getEnableUnifiedParams()) {
            ShapeTextStyle textStyle = hWRTextShape.getTextStyle();
            copy.setFontSize(textStyle != null ? Float.valueOf(textStyle.getTextSize()) : null);
        }
        ComputeBoxListActionsKt.findBoxInfoListWithPageIdList(new RxEmptyBaseAppAction(getEditorBundle()), CollectionKt.asList(pageUniqueId), true).map(C12049k.f58712e).doOnNext(new C12050l(relayoutShapes, this, lastLineShapes, copy, hWRTextShape)).subscribe();
    }
}
