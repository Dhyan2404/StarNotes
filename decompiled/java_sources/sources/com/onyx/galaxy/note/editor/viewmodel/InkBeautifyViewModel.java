package com.onyx.galaxy.note.editor.viewmodel;

import android.graphics.Rect;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TimeGuard;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.LogFileUtils;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.account.model.HWRActivationModel;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.common.data.ShapeTypesetArgs;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerTypeKt;
import com.onyx.android.sdk.hwr.service.manager.HWRActivationManager;
import com.onyx.android.sdk.neohwr.fontmgr.FontConfig;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import com.onyx.android.sdk.note.common.shape.pen.PenShape;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModelExt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertTexShapeAction;
import com.onyx.android.sdk.universal.editor.action.hwr.HWRExportToTextAction;
import com.onyx.android.sdk.universal.editor.action.ink.DownloadFontAction;
import com.onyx.android.sdk.universal.editor.action.ink.FetchInkFontListAction;
import com.onyx.android.sdk.universal.editor.action.ink.LoadInkFontListAction;
import com.onyx.android.sdk.universal.editor.action.selection.CloneTransformHWRShapesAction;
import com.onyx.android.sdk.universal.editor.action.selection.NormalizeTextShapesFontSizeAction;
import com.onyx.android.sdk.universal.editor.action.selection.ReplaceTransformShapesAction;
import com.onyx.android.sdk.universal.editor.action.selection.UpdateTransformShapesMatrixAction;
import com.onyx.android.sdk.universal.editor.data.HWRArgs;
import com.onyx.android.sdk.universal.editor.data.InkBeautifyArgs;
import com.onyx.android.sdk.universal.editor.data.InkBeautifyConvertType;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.ReplaceTransformBeanEvent;
import com.onyx.android.sdk.universal.editor.events.note.RestoreSourceTransformBeanEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.util.HWREngineManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.editor.event.InkBeautifyDoneEvent;
import com.onyx.galaxy.note.editor.event.InkBeautifyShapeInitializedEvent;
import com.onyx.galaxy.note.editor.event.InkFontConvertedEvent;
import com.onyx.galaxy.note.editor.event.InkFontConvertingEvent;
import com.onyx.galaxy.note.editor.event.InkFontDownloadFailEvent;
import com.onyx.galaxy.note.editor.event.InkFontDownloadFinishEvent;
import com.onyx.galaxy.note.editor.event.InkFontDownloadingEvent;
import com.onyx.galaxy.note.editor.event.InkFontFetchedEvent;
import com.onyx.galaxy.note.editor.event.InkFontLoadedEvent;
import com.onyx.galaxy.note.editor.event.InkFontSelectedEvent;
import com.onyx.galaxy.note.editor.event.InkTimerUpdatedEvent;
import com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 }2\u00020\u0001:\u0001}B\u0007¢\u0006\u0004\b{\u0010|J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\u0016\u0010\n\u001a\u00020\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\u0006\u0010\u000b\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fJ\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00022\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0004J\u0006\u0010\u0012\u001a\u00020\u0004J\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015J\u000e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0019\u001a\u00020\u0004J\u0006\u0010\u001a\u001a\u00020\u0004J\u0006\u0010\u001b\u001a\u00020\u0004J\u0016\u0010 \u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001cJ\u000e\u0010!\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\"\u001a\u00020\u0004J\u0006\u0010#\u001a\u00020\u0004J\u0006\u0010$\u001a\u00020\u0004J\u0006\u0010%\u001a\u00020\u0004J\u0006\u0010&\u001a\u00020\u0004J\u0006\u0010'\u001a\u00020\u0004R\u0017\u0010-\u001a\u00020(8\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u001d\u00103\u001a\b\u0012\u0004\u0012\u00020\f0.8\u0006¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R$\u0010:\u001a\u0004\u0018\u0001048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\"\u0010A\u001a\u00020;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\"\u0010H\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR$\u0010P\u001a\u0004\u0018\u00010I8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR$\u0010T\u001a\u0004\u0018\u00010I8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bQ\u0010K\u001a\u0004\bR\u0010M\"\u0004\bS\u0010OR\u001d\u0010Z\u001a\b\u0012\u0004\u0012\u00020\u00020U8\u0006¢\u0006\f\n\u0004\bV\u0010W\u001a\u0004\bX\u0010YR\"\u0010a\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R\"\u0010e\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bb\u0010C\u001a\u0004\bc\u0010E\"\u0004\bd\u0010GR\u0016\u0010i\u001a\u00020f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010hR\u0018\u0010m\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\u0018\u0010o\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010\\R\u001c\u0010r\u001a\b\u0012\u0004\u0012\u00020p0U8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010WR\u001c\u0010t\u001a\b\u0012\u0004\u0012\u00020p0U8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010WR\u0018\u0010v\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010lR\u001e\u0010z\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010y¨\u0006~"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "model", "", "l", C6999h.f39688c, "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", C4921e.f26537n, Constants.CLEAR_ATTRIBUTES, "", "ev", "postEvent", "models", "selectPrimaryFont", "loadFromLocal", "fetchFromCloud", "getSelectedShapes", "selectFont", "", "path", "saveLastUsedFont", "applyInkFont", "updateTypesetParams", "cancelInkBeautify", "saveInkBeautify", "Landroid/graphics/Rect;", "old", "new", "", "haveHugeChanges", "download", "loadTrialTime", "displayTrialTime", "startTimer", "stopTimer", "restoreDefaultTypeset", "startFontParamsFilter", "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;", "i", "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;", "getTypesetViewModel", "()Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;", "typesetViewModel", "Landroidx/lifecycle/MutableLiveData;", "j", "Landroidx/lifecycle/MutableLiveData;", "getEvent", "()Landroidx/lifecycle/MutableLiveData;", NotificationCompat.CATEGORY_EVENT, "Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;", "Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;", "getArgs", "()Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;", "setArgs", "(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;)V", "args", "Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;", "Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;", "getConvertType", "()Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;", "setConvertType", "(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;)V", "convertType", "m", Constants.HASIDCALL_INDEX_SIG, "getDragged", Constants.BOOLEAN_VALUE_SIG, "setDragged", "(Z)V", "dragged", "Lcom/onyx/android/sdk/base/data/WindowLocation;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/base/data/WindowLocation;", "getLastWindowLocationOfEditPopup", "()Lcom/onyx/android/sdk/base/data/WindowLocation;", "setLastWindowLocationOfEditPopup", "(Lcom/onyx/android/sdk/base/data/WindowLocation;)V", "lastWindowLocationOfEditPopup", C4921e.f26528e, "getWindowLocationBeforeKeyboardOpen", "setWindowLocationBeforeKeyboardOpen", "windowLocationBeforeKeyboardOpen", "", "p", "Ljava/util/List;", "getFontList", "()Ljava/util/List;", "fontList", "q", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "getSelectedFont", "()Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "setSelectedFont", "(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V", "selectedFont", "r", "getFontParamInitialized", "setFontParamInitialized", "fontParamInitialized", "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;", "s", "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;", "activationModel", "Lio/reactivex/rxjava3/disposables/Disposable;", "t", "Lio/reactivex/rxjava3/disposables/Disposable;", "timerDisposable", "u", "defaultFont", "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;", "v", "convertedShapes", "w", "defaultConvertedShapes", "x", "convertDisposable", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "y", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "paramsFilter", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nInkBeautifyViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkBeautifyViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,466:1\n800#2,11:467\n1726#2,3:489\n800#2,11:492\n800#2,11:503\n800#2,11:514\n1#3:478\n41#4,5:479\n41#4,5:484\n*S KotlinDebug\n*F\n+ 1 InkBeautifyViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel\n*L\n150#1:467,11\n218#1:489,3\n243#1:492,11\n248#1:503,11\n462#1:514,11\n155#1:479,5\n163#1:484,5\n*E\n"})
/* loaded from: classes9.dex */
public final class InkBeautifyViewModel extends BaseViewModel {

    /* renamed from: z */
    public static final long f61116z = 500;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public InkBeautifyArgs args;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean dragged;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public WindowLocation lastWindowLocationOfEditPopup;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public WindowLocation windowLocationBeforeKeyboardOpen;

    /* renamed from: r, reason: from kotlin metadata */
    public boolean fontParamInitialized;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public Disposable timerDisposable;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public FontModel defaultFont;

    /* renamed from: x, reason: from kotlin metadata */
    @Nullable
    public Disposable convertDisposable;

    /* renamed from: y, reason: from kotlin metadata */
    @Nullable
    public RxFilter<Unit> paramsFilter;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final InkBeautifyTypesetViewModel typesetViewModel = new InkBeautifyTypesetViewModel();

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Object> event = new MutableLiveData<>(Unit.INSTANCE);

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public InkBeautifyConvertType convertType = InkBeautifyConvertType.SELECTION_CONVERT;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final List<FontModel> fontList = new ArrayList();

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public FontModel selectedFont = new FontModel();

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public HWRActivationModel activationModel = new HWRActivationModel();

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public List<HWRTextShape> convertedShapes = new ArrayList();

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public List<HWRTextShape> defaultConvertedShapes = new ArrayList();

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[InkBeautifyConvertType.values().length];
            try {
                iArr[InkBeautifyConvertType.SELECTION_CONVERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[InkBeautifyConvertType.REALTIME_CONVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12562a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ FontModel f61134e;

        /* renamed from: f */
        public final /* synthetic */ InkBeautifyViewModel f61135f;

        public C12562a(FontModel fontModel, InkBeautifyViewModel inkBeautifyViewModel) {
            this.f61134e = fontModel;
            this.f61135f = inkBeautifyViewModel;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f61134e.setState((byte) 0);
            this.f61135f.postEvent(new InkFontDownloadFailEvent(this.f61134e));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12563b<T> implements Consumer {
        public C12563b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<FontModel> it2) {
            List mutableList;
            Intrinsics.checkNotNullParameter(it2, "it");
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) it2);
            mutableList.add(0, InkBeautifyViewModel.this.m50381h());
            CollectionKt.reset(InkBeautifyViewModel.this.getFontList(), mutableList);
            InkBeautifyViewModel.this.postEvent(new InkFontLoadedEvent(mutableList));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$c */
    /* loaded from: classes9.dex */
    public static final class C12564c<T> implements Consumer {
        public C12564c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InkBeautifyViewModel inkBeautifyViewModel = InkBeautifyViewModel.this;
            inkBeautifyViewModel.m50383l(inkBeautifyViewModel.getSelectedFont());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$d */
    /* loaded from: classes9.dex */
    public static final class C12565d<T> implements Consumer {
        public C12565d() {
        }

        /* renamed from: a */
        public final void m50387a(long j) {
            InkBeautifyViewModel.this.displayTrialTime();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m50387a(((Number) obj).longValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$e */
    /* loaded from: classes9.dex */
    public static final class C12566e<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ InkBeautifyArgs f61140f;

        public C12566e(InkBeautifyArgs inkBeautifyArgs) {
            this.f61140f = inkBeautifyArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LogFileUtils.INSTANCE.m32103e(InkBeautifyViewModel.this.getClass(), "Convert Beautify Shapes Fail", it2);
            EditorBundleKt.postEvent(this.f61140f.getEditorBundle(), new RestoreSourceTransformBeanEvent());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$f */
    /* loaded from: classes9.dex */
    public static final class C12567f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ InkBeautifyArgs f61141e;

        /* renamed from: f */
        public final /* synthetic */ List<PenShape> f61142f;

        /* JADX WARN: Multi-variable type inference failed */
        public C12567f(InkBeautifyArgs inkBeautifyArgs, List<? extends PenShape> list) {
            this.f61141e = inkBeautifyArgs;
            this.f61142f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWRExportToTextAction> apply(@NotNull InkBeautifyViewModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRArgs hWRArgs = new HWRArgs();
            hWRArgs.setLang(this.f61141e.getLang());
            HWREngineManager hWREngineManager = HWREngineManager.INSTANCE;
            hWRArgs.setRecognizer(hWREngineManager.getRecognizerTypeByFunction(FunctionKey.INK_BEAUTIFY));
            hWRArgs.setSegmentation(hWREngineManager.shouldEnableSegmentFeature(HWRRecognizerTypeKt.getEngineType(hWRArgs.getRecognizer())));
            return new HWRExportToTextAction(this.f61141e.getEditorBundle(), this.f61142f, hWRArgs).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$g */
    /* loaded from: classes9.dex */
    public static final class C12568g<T, R> implements Function {

        /* renamed from: e */
        public static final C12568g<T, R> f61143e = new C12568g<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ArrayList<List<HWROutput>> apply(@NotNull HWRExportToTextAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getHwrBlockOutputs();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$h */
    /* loaded from: classes9.dex */
    public static final class C12569h<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ InkBeautifyArgs f61144e;

        /* renamed from: f */
        public final /* synthetic */ String f61145f;

        /* renamed from: g */
        public final /* synthetic */ List<HWRTextShape> f61146g;

        /* renamed from: h */
        public final /* synthetic */ FontModel f61147h;

        /* renamed from: i */
        public final /* synthetic */ InkBeautifyViewModel f61148i;

        /* renamed from: j */
        public final /* synthetic */ List<Shape> f61149j;

        /* renamed from: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$h$a */
        /* loaded from: classes9.dex */
        public static final class a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ List<Shape> f61150e;

            public a(List<Shape> list) {
                this.f61150e = list;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull List<HWRTextShape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                CollectionKt.safeAddAll(this.f61150e, it2);
            }
        }

        public C12569h(InkBeautifyArgs inkBeautifyArgs, String str, List<HWRTextShape> list, FontModel fontModel, InkBeautifyViewModel inkBeautifyViewModel, List<Shape> list2) {
            this.f61144e = inkBeautifyArgs;
            this.f61145f = str;
            this.f61146g = list;
            this.f61147h = fontModel;
            this.f61148i = inkBeautifyViewModel;
            this.f61149j = list2;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<HWRTextShape>> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ShapeTypesetArgs shapeTypesetArgs = new ShapeTypesetArgs();
            FontModel fontModel = this.f61147h;
            InkBeautifyViewModel inkBeautifyViewModel = this.f61148i;
            shapeTypesetArgs.setTypeface(FontModelExt.getSavePath$default(FontModelExt.INSTANCE, fontModel, null, 1, null));
            if (inkBeautifyViewModel.getTypesetViewModel().getIsFontSizeChanged()) {
                shapeTypesetArgs.setFontSize(Float.valueOf(inkBeautifyViewModel.getTypesetViewModel().getRealFontSize()));
                shapeTypesetArgs.setLineSpacing(Float.valueOf(inkBeautifyViewModel.getTypesetViewModel().getLineSpacing()));
            } else if (inkBeautifyViewModel.getTypesetViewModel().getIsLineSpacingChanged()) {
                shapeTypesetArgs.setLineSpacing(Float.valueOf(inkBeautifyViewModel.getTypesetViewModel().getLineSpacing()));
            }
            return new CloneTransformHWRShapesAction(this.f61144e.getEditorBundle(), this.f61145f, this.f61146g, shapeTypesetArgs).build().doOnNext(new a(this.f61149j));
        }
    }

    @SourceDebugExtension({"SMAP\nInkBeautifyViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkBeautifyViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$9\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,466:1\n800#2,11:467\n*S KotlinDebug\n*F\n+ 1 InkBeautifyViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$9\n*L\n319#1:467,11\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$i */
    /* loaded from: classes9.dex */
    public static final class C12570i<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f61151e;

        /* renamed from: f */
        public final /* synthetic */ InkBeautifyViewModel f61152f;

        /* renamed from: g */
        public final /* synthetic */ FontModel f61153g;

        public C12570i(List<Shape> list, InkBeautifyViewModel inkBeautifyViewModel, FontModel fontModel) {
            this.f61151e = list;
            this.f61152f = inkBeautifyViewModel;
            this.f61153g = fontModel;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            List<Shape> list = this.f61151e;
            ArrayList arrayList = new ArrayList();
            for (T t : list) {
                if (t instanceof HWRTextShape) {
                    arrayList.add(t);
                }
            }
            CollectionKt.reset(this.f61152f.convertedShapes, arrayList);
            InkBeautifyViewModel inkBeautifyViewModel = this.f61152f;
            inkBeautifyViewModel.m50382k(inkBeautifyViewModel.convertedShapes);
            InkBeautifyViewModel inkBeautifyViewModel2 = this.f61152f;
            inkBeautifyViewModel2.postEvent(new InkFontConvertedEvent(this.f61153g, inkBeautifyViewModel2.convertedShapes));
        }
    }

    /* renamed from: i */
    public static final void m50377i(FontModel model, InkBeautifyViewModel this$0, FontModel it2) {
        Intrinsics.checkNotNullParameter(model, "$model");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        model.setState((byte) -3);
        this$0.postEvent(new InkFontDownloadFinishEvent(model));
    }

    /* renamed from: j */
    public static final void m50378j(InkBeautifyViewModel this$0, Object it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.postEvent(new InkFontFetchedEvent());
    }

    /* renamed from: m */
    public static final void m50379m(InkBeautifyViewModel this$0, InkBeautifyArgs args, Object it2) {
        List<? extends Shape> list;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(args, "$args");
        Intrinsics.checkNotNullParameter(it2, "it");
        ShapeTransformBean shapeTransformBean = new ShapeTransformBean();
        list = CollectionsKt___CollectionsKt.toList(this$0.convertedShapes);
        EditorBundleKt.postEvent(args.getEditorBundle(), new ReplaceTransformBeanEvent(shapeTransformBean.setTransformShapes(list)));
    }

    /* renamed from: n */
    public static final void m50380n(int i, LoadingDialog loadingDialog) {
        Intrinsics.checkNotNullParameter(loadingDialog, "$loadingDialog");
        RxTimerUtil.INSTANCE.cancel(i);
        loadingDialog.dismiss();
    }

    public final void applyInkFont(@NotNull FontModel model) {
        boolean areEqual;
        Intrinsics.checkNotNullParameter(model, "model");
        InkBeautifyArgs inkBeautifyArgs = this.args;
        if (inkBeautifyArgs == null || inkBeautifyArgs.getOriginShapes().isEmpty()) {
            return;
        }
        List<Shape> selectedShapes = getSelectedShapes();
        boolean z = true;
        if (!(selectedShapes instanceof Collection) || !selectedShapes.isEmpty()) {
            Iterator<T> it2 = selectedShapes.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Shape shape = (Shape) it2.next();
                HWRTextShape hWRTextShape = shape instanceof HWRTextShape ? (HWRTextShape) shape : null;
                if (hWRTextShape == null) {
                    areEqual = false;
                } else {
                    ShapeTextStyle textStyle = hWRTextShape.getTextStyle();
                    areEqual = Intrinsics.areEqual(textStyle != null ? textStyle.getFontFace() : null, FontModelExt.getSavePath$default(FontModelExt.INSTANCE, model, null, 1, null));
                }
                if (!areEqual) {
                    z = false;
                    break;
                }
            }
        }
        if (!z) {
            m50383l(model);
        } else {
            this.selectedFont = model;
            m50382k(inkBeautifyArgs.getOriginShapes());
        }
    }

    public final void cancelInkBeautify() {
        InkBeautifyArgs inkBeautifyArgs = this.args;
        if (inkBeautifyArgs == null) {
            return;
        }
        RxFilter<Unit> rxFilter = this.paramsFilter;
        if (rxFilter != null) {
            rxFilter.dispose();
        }
        Disposable disposable = this.convertDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        if (this.convertedShapes.isEmpty() || Intrinsics.areEqual(this.convertedShapes, inkBeautifyArgs.getOriginShapes())) {
            EditorBundleKt.postEvent(inkBeautifyArgs.getEditorBundle(), new QuitTransformEvent(false, 1, null));
        } else {
            EditorBundleKt.postEvent(inkBeautifyArgs.getEditorBundle(), new RestoreSourceTransformBeanEvent());
        }
        this.convertedShapes.clear();
        this.defaultConvertedShapes.clear();
        postEvent(new InkBeautifyDoneEvent());
    }

    public final void clear() {
        this.event.setValue(Unit.INSTANCE);
        this.args = null;
        this.fontList.clear();
        this.selectedFont = new FontModel();
        stopTimer();
        this.typesetViewModel.clear();
        this.defaultFont = null;
        Disposable disposable = this.convertDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        this.defaultConvertedShapes.clear();
        RxFilter<Unit> rxFilter = this.paramsFilter;
        if (rxFilter != null) {
            rxFilter.dispose();
        }
        this.paramsFilter = null;
        this.fontParamInitialized = false;
        this.convertedShapes.clear();
    }

    public final void displayTrialTime() {
        if (this.activationModel.getUniqueId().length() == 0) {
            return;
        }
        long expireTime = this.activationModel.getExpireTime();
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        postEvent(new InkTimerUpdatedEvent(DateTimeUtil.formatLeftTime$default(dateTimeUtil, ((Number) MathUtils.INSTANCE.atLeast(Long.valueOf(expireTime - dateTimeUtil.millisOfNow()), 0L)).longValue(), false, 2, null)));
    }

    public final void download(@NotNull final FontModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        model.setState((byte) 3);
        postEvent(new InkFontDownloadingEvent(model));
        if (!NetworkUtils.INSTANCE.isNetworkConnected(ResManager.INSTANCE.getAppContext())) {
            postEvent(new InkFontDownloadFailEvent(model));
            return;
        }
        Observable<FontModel> observeOn = new DownloadFontAction(model).build().observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable doOnError = RxjavaKt.doOnNextIf(observeOn, new Function1<FontModel, Boolean>() { // from class: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$download$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull FontModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(FontModelExt.INSTANCE.isDownloaded(it2));
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.pki
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                InkBeautifyViewModel.m50377i(FontModel.this, this, (FontModel) obj);
            }
        }).doOnError(new C12562a(model, this));
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        RxjavaKt.subscribeWithDefault$default(doOnError, null, null, null, 7, null);
    }

    public final void fetchFromCloud() {
        RxjavaKt.doOnNextIf(new FetchInkFontListAction().build(), new TimeGuard(ResManager.INSTANCE.getLong(C7373R.integer.sync_timeout), 0L, 2, null), new Consumer() { // from class: com.sunia.HTREnginev2.ski
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                InkBeautifyViewModel.m50378j(InkBeautifyViewModel.this, obj);
            }
        }).subscribe();
    }

    @Nullable
    public final InkBeautifyArgs getArgs() {
        return this.args;
    }

    @NotNull
    public final InkBeautifyConvertType getConvertType() {
        return this.convertType;
    }

    public final boolean getDragged() {
        return this.dragged;
    }

    @NotNull
    public final MutableLiveData<Object> getEvent() {
        return this.event;
    }

    @NotNull
    public final List<FontModel> getFontList() {
        return this.fontList;
    }

    public final boolean getFontParamInitialized() {
        return this.fontParamInitialized;
    }

    @Nullable
    public final WindowLocation getLastWindowLocationOfEditPopup() {
        return this.lastWindowLocationOfEditPopup;
    }

    @NotNull
    public final FontModel getSelectedFont() {
        return this.selectedFont;
    }

    @NotNull
    public final List<Shape> getSelectedShapes() {
        List<Shape> emptyList;
        List<HWRTextShape> list = this.convertedShapes;
        if (!(!list.isEmpty())) {
            list = null;
        }
        if (list != null) {
            return list;
        }
        InkBeautifyArgs inkBeautifyArgs = this.args;
        List<Shape> originShapes = inkBeautifyArgs != null ? inkBeautifyArgs.getOriginShapes() : null;
        if (originShapes != null) {
            return originShapes;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @NotNull
    public final InkBeautifyTypesetViewModel getTypesetViewModel() {
        return this.typesetViewModel;
    }

    @Nullable
    public final WindowLocation getWindowLocationBeforeKeyboardOpen() {
        return this.windowLocationBeforeKeyboardOpen;
    }

    /* renamed from: h */
    public final FontModel m50381h() {
        FontModel fontModel = new FontModel();
        fontModel.setUniqueId("default");
        FontConfig fontConfig = FontConfig.INSTANCE;
        fontModel.setName(fontConfig.getDEFAULT_FONT_NAME());
        String extension = FilenameUtils.getExtension(fontModel.getName());
        Intrinsics.checkNotNullExpressionValue(extension, "getExtension(...)");
        fontModel.setFormat(extension);
        fontModel.setUrl(fontConfig.ensureDefaultFontPath());
        FontModelExt fontModelExt = FontModelExt.INSTANCE;
        String cachedPreviewFile = fontModelExt.getCachedPreviewFile(fontModel);
        String cachedInkTitleThumbnailFile = fontModelExt.getCachedInkTitleThumbnailFile(fontModel);
        String cachedInkContentThumbnailFile = fontModelExt.getCachedInkContentThumbnailFile(fontModel);
        FileUtils fileUtils = FileUtils.INSTANCE;
        ResManager resManager = ResManager.INSTANCE;
        fileUtils.copyAssetsFile(resManager.getAppContext(), fontConfig.getDEFAULT_FONT_THUMBNAIL_TEXTBOX(), cachedPreviewFile);
        fileUtils.copyAssetsFile(resManager.getAppContext(), fontConfig.getDEFAULT_FONT_THUMBNAIL_TITLE(), cachedInkTitleThumbnailFile);
        fileUtils.copyAssetsFile(resManager.getAppContext(), fontConfig.getDEFAULT_FONT_THUMBNAIL_CONTENT(), cachedInkContentThumbnailFile);
        fontModel.setPreviewUrl(cachedPreviewFile);
        fontModel.setInkTitleThumbnail(cachedInkTitleThumbnailFile);
        fontModel.setInkContentThumbnail(cachedInkContentThumbnailFile);
        return fontModel;
    }

    public final boolean haveHugeChanges(@NotNull Rect old, @NotNull Rect r4) {
        Intrinsics.checkNotNullParameter(old, "old");
        Intrinsics.checkNotNullParameter(r4, "new");
        float dimension = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_20);
        return ((float) Math.abs(old.left - r4.left)) > dimension || ((float) Math.abs(old.right - r4.right)) > dimension || ((float) Math.abs(old.top - r4.top)) > dimension || ((float) Math.abs(old.bottom - r4.bottom)) > dimension;
    }

    /* renamed from: k */
    public final void m50382k(List<? extends Shape> shapes) {
        EditorBundle editorBundle;
        if (!this.defaultConvertedShapes.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : shapes) {
            if (obj instanceof HWRTextShape) {
                arrayList.add(obj);
            }
        }
        CollectionKt.reset(this.defaultConvertedShapes, arrayList);
        InkBeautifyArgs inkBeautifyArgs = this.args;
        if (inkBeautifyArgs == null || (editorBundle = inkBeautifyArgs.getEditorBundle()) == null) {
            return;
        }
        EditorBundleKt.postEvent(editorBundle, new InkBeautifyShapeInitializedEvent(arrayList));
    }

    /* renamed from: l */
    public final void m50383l(final FontModel model) {
        List emptyList;
        List<HWRTextShape> list;
        Object firstOrNull;
        final InkBeautifyArgs inkBeautifyArgs = this.args;
        if (inkBeautifyArgs == null || inkBeautifyArgs.getOriginShapes().isEmpty()) {
            return;
        }
        List<Shape> originShapes = inkBeautifyArgs.getOriginShapes();
        postEvent(new InkFontConvertingEvent(model));
        final boolean isEmpty = this.convertedShapes.isEmpty();
        if (isEmpty) {
            emptyList = new ArrayList();
            for (Object obj : originShapes) {
                if (obj instanceof PenShape) {
                    emptyList.add(obj);
                }
            }
        } else {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        final List list2 = emptyList;
        if (isEmpty) {
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : originShapes) {
                if (obj2 instanceof HWRTextShape) {
                    arrayList.add(obj2);
                }
            }
            list = arrayList;
        } else {
            list = this.defaultConvertedShapes;
        }
        final ArrayList arrayList2 = new ArrayList();
        final LoadingDialog createLoadingDialog = ContextExtKt.createLoadingDialog(inkBeautifyArgs.getActivityContext());
        createLoadingDialog.setTransparentAlpha();
        createLoadingDialog.updateTitle(C10651R.string.ink_beautifying);
        createLoadingDialog.show();
        final int timer = RxTimerUtil.INSTANCE.timer(1000L, TimeUnit.MILLISECONDS, new Function1<Long, Unit>() { // from class: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$updateInkFont$timerDialogKey$1
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
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) originShapes);
        final Shape shape = (Shape) firstOrNull;
        final float minFontSizeLimit = HWRConvertTexShapeAction.INSTANCE.getMinFontSizeLimit(originShapes);
        final String str = (String) AnyKt.getOrElse(shape != null ? shape.getPageUniqueId() : null, new Function0<String>() { // from class: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$updateInkFont$notePageId$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                Object firstOrNull2;
                firstOrNull2 = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) InkBeautifyViewModel.this.convertedShapes);
                HWRTextShape hWRTextShape = (HWRTextShape) firstOrNull2;
                String pageUniqueId = hWRTextShape != null ? hWRTextShape.getPageUniqueId() : null;
                return pageUniqueId == null ? "" : pageUniqueId;
            }
        });
        final int intValue = ((Number) AnyKt.getOrElse(shape != null ? Integer.valueOf(shape.getLayerId()) : null, new Function0<Integer>() { // from class: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$updateInkFont$layerId$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return 0;
            }
        })).intValue();
        Disposable disposable = this.convertDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        Observable flatMap = Observable.just(this).flatMap(new C12567f(inkBeautifyArgs, list2)).map(C12568g.f61143e).flatMap(new Function() { // from class: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$updateInkFont$3

            /* renamed from: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$updateInkFont$3$a */
            /* loaded from: classes9.dex */
            public static final class C12573a<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ List<Shape> f61161e;

                public C12573a(List<Shape> list) {
                    this.f61161e = list;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull List<? extends Shape> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    CollectionKt.safeAddAll(this.f61161e, it2);
                }
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Object> apply(@NotNull ArrayList<List<HWROutput>> hwrBlockOutputs) {
                Intrinsics.checkNotNullParameter(hwrBlockOutputs, "hwrBlockOutputs");
                FontConfig.INSTANCE.setFontPath(FontModelExt.getSavePath$default(FontModelExt.INSTANCE, FontModel.this, null, 1, null));
                Observable<List<? extends Shape>> doOnNext = new HWRConvertTexShapeAction(inkBeautifyArgs.getEditorBundle(), str, intValue, hwrBlockOutputs, minFontSizeLimit).build().doOnNext(new C12573a(arrayList2));
                Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                final Shape shape2 = shape;
                Function1<List<? extends Shape>, Boolean> function1 = new Function1<List<? extends Shape>, Boolean>() { // from class: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$updateInkFont$3.2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull List<? extends Shape> it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.valueOf(Shape.this != null);
                    }
                };
                final InkBeautifyArgs inkBeautifyArgs2 = inkBeautifyArgs;
                final Shape shape3 = shape;
                return RxjavaKt.flatMapIf(doOnNext, function1, new Function1<List<? extends Shape>, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$updateInkFont$3.3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Observable<? extends Object> invoke(@NotNull List<? extends Shape> it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        EditorBundle editorBundle = InkBeautifyArgs.this.getEditorBundle();
                        Shape shape4 = shape3;
                        Intrinsics.checkNotNull(shape4);
                        return new UpdateTransformShapesMatrixAction(editorBundle, shape4, it2).build();
                    }
                });
            }
        }).flatMap(new C12569h(inkBeautifyArgs, str, list, model, this, arrayList2));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<Object> doOnNext = RxjavaKt.flatMapIf(RxjavaKt.flatMapIf(flatMap, new Function1<List<? extends HWRTextShape>, Boolean>() { // from class: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$updateInkFont$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<HWRTextShape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf((list2.isEmpty() ^ true) && (arrayList2.isEmpty() ^ true));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends HWRTextShape> list3) {
                return invoke2((List<HWRTextShape>) list3);
            }
        }, new Function1<List<? extends HWRTextShape>, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$updateInkFont$6

            /* renamed from: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$updateInkFont$6$a */
            /* loaded from: classes9.dex */
            public static final class C12574a<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ List<Shape> f61162e;

                public C12574a(List<Shape> list) {
                    this.f61162e = list;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull List<? extends Shape> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    CollectionKt.reset(this.f61162e, it2);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(List<? extends HWRTextShape> list3) {
                return invoke2((List<HWRTextShape>) list3);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Observable<? extends Object> invoke2(@NotNull List<HWRTextShape> it2) {
                List mutableList;
                Intrinsics.checkNotNullParameter(it2, "it");
                EditorBundle editorBundle = InkBeautifyArgs.this.getEditorBundle();
                String str2 = str;
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
                Observable<List<? extends Shape>> doOnNext2 = new NormalizeTextShapesFontSizeAction(editorBundle, str2, mutableList, model).build().doOnNext(new C12574a(arrayList2));
                Intrinsics.checkNotNullExpressionValue(doOnNext2, "doOnNext(...)");
                return doOnNext2;
            }
        }), new Function1<Object, Boolean>() { // from class: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$updateInkFont$7
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(isEmpty);
            }
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$updateInkFont$8
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new ReplaceTransformShapesAction(InkBeautifyArgs.this.getEditorBundle(), arrayList2).build();
            }
        }).doOnNext(new C12570i(arrayList2, this, model));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        this.convertDisposable = RxjavaKt.doOnNextIf(doOnNext, new Function1<Object, Boolean>() { // from class: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$updateInkFont$10
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!isEmpty && CollectionKt.isNonBlank(this.convertedShapes));
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.qki
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj3) {
                InkBeautifyViewModel.m50379m(InkBeautifyViewModel.this, inkBeautifyArgs, obj3);
            }
        }).doOnError(new C12566e(inkBeautifyArgs)).observeOn(AndroidSchedulers.mainThread()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.rki
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                InkBeautifyViewModel.m50380n(timer, createLoadingDialog);
            }
        }).subscribe();
    }

    public final void loadFromLocal() {
        new LoadInkFontListAction().build().doOnNext(new C12563b()).subscribe();
    }

    public final void loadTrialTime() {
        this.activationModel = HWRActivationManager.INSTANCE.getHWREngineActivationState(HWREngineManager.INSTANCE.getEngineByFunction(FunctionKey.INK_BEAUTIFY));
    }

    public final void postEvent(@NotNull Object ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        this.event.setValue(ev);
    }

    public final void restoreDefaultTypeset() {
        InkBeautifyArgs inkBeautifyArgs = this.args;
        if (inkBeautifyArgs == null) {
            return;
        }
        this.typesetViewModel.restoreDefaultTypeset();
        CollectionKt.reset(this.convertedShapes, this.defaultConvertedShapes);
        EditorBundleKt.postEvent(inkBeautifyArgs.getEditorBundle(), new ReplaceTransformBeanEvent(new ShapeTransformBean().setTransformShapes(ShapeCopyUtils.INSTANCE.cloneNewShapes(this.convertedShapes))));
        FontModel fontModel = this.defaultFont;
        if (fontModel != null) {
            selectFont(fontModel);
        }
    }

    public final void saveInkBeautify() {
        InkBeautifyArgs inkBeautifyArgs = this.args;
        if (inkBeautifyArgs == null) {
            return;
        }
        RxFilter<Unit> rxFilter = this.paramsFilter;
        if (rxFilter != null) {
            rxFilter.dispose();
        }
        Disposable disposable = this.convertDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        EditorBundleKt.postEvent(inkBeautifyArgs.getEditorBundle(), new QuitTransformEvent(false, 1, null));
        postEvent(new InkBeautifyDoneEvent());
    }

    public final void saveLastUsedFont(@NotNull final String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        int i = WhenMappings.$EnumSwitchMapping$0[this.convertType.ordinal()];
        if (i == 1) {
            MMKVNote.INSTANCE.getInkLastBeautifyFontOption().put(path);
        } else {
            if (i != 2) {
                return;
            }
            MMKVNote.INSTANCE.getRealtimeBeautifyTypesetOption().getAndPut(new Function1<ShapeTypesetArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel$saveLastUsedFont$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ShapeTypesetArgs shapeTypesetArgs) {
                    invoke2(shapeTypesetArgs);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable ShapeTypesetArgs shapeTypesetArgs) {
                    if (shapeTypesetArgs == null) {
                        return;
                    }
                    shapeTypesetArgs.setTypeface(path);
                }
            });
        }
    }

    public final void selectFont(@NotNull FontModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        this.selectedFont = model;
        postEvent(new InkFontSelectedEvent(model));
        if (this.defaultFont != null || FontModelExt.INSTANCE.isDefaultResource(model)) {
            return;
        }
        this.defaultFont = model;
    }

    @Nullable
    public final FontModel selectPrimaryFont(@NotNull List<FontModel> models) {
        Object firstOrNull;
        Object firstOrNull2;
        Object obj;
        ShapeTextStyle textStyle;
        Intrinsics.checkNotNullParameter(models, "models");
        InkBeautifyArgs inkBeautifyArgs = this.args;
        Object obj2 = null;
        if (inkBeautifyArgs == null) {
            return null;
        }
        List<Shape> originShapes = inkBeautifyArgs.getOriginShapes();
        ArrayList arrayList = new ArrayList();
        for (Object obj3 : originShapes) {
            if (obj3 instanceof HWRTextShape) {
                arrayList.add(obj3);
            }
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) arrayList);
        HWRTextShape hWRTextShape = (HWRTextShape) firstOrNull;
        String fontFace = (hWRTextShape == null || (textStyle = hWRTextShape.getTextStyle()) == null) ? null : textStyle.getFontFace();
        if (fontFace == null) {
            fontFace = "";
        }
        if ((fontFace.length() > 0) && FileUtils.INSTANCE.isFileExist(fontFace)) {
            Iterator<T> it2 = models.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (Intrinsics.areEqual(FontModelExt.getSavePath$default(FontModelExt.INSTANCE, (FontModel) obj, null, 1, null), fontFace)) {
                    break;
                }
            }
            FontModel fontModel = (FontModel) obj;
            if (fontModel != null) {
                return fontModel;
            }
        }
        String str = MMKVNote.INSTANCE.getInkLastBeautifyFontOption().get();
        String str2 = str != null ? str : "";
        if ((str2.length() > 0) && FileUtils.INSTANCE.isFileExist(str2)) {
            Iterator<T> it3 = models.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                Object next = it3.next();
                if (Intrinsics.areEqual(FontModelExt.getSavePath$default(FontModelExt.INSTANCE, (FontModel) next, null, 1, null), str2)) {
                    obj2 = next;
                    break;
                }
            }
            FontModel fontModel2 = (FontModel) obj2;
            if (fontModel2 != null) {
                return fontModel2;
            }
        }
        firstOrNull2 = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) models);
        return (FontModel) firstOrNull2;
    }

    public final void setArgs(@Nullable InkBeautifyArgs inkBeautifyArgs) {
        this.args = inkBeautifyArgs;
    }

    public final void setConvertType(@NotNull InkBeautifyConvertType inkBeautifyConvertType) {
        Intrinsics.checkNotNullParameter(inkBeautifyConvertType, "<set-?>");
        this.convertType = inkBeautifyConvertType;
    }

    public final void setDragged(boolean z) {
        this.dragged = z;
    }

    public final void setFontParamInitialized(boolean z) {
        this.fontParamInitialized = z;
    }

    public final void setLastWindowLocationOfEditPopup(@Nullable WindowLocation windowLocation) {
        this.lastWindowLocationOfEditPopup = windowLocation;
    }

    public final void setSelectedFont(@NotNull FontModel fontModel) {
        Intrinsics.checkNotNullParameter(fontModel, "<set-?>");
        this.selectedFont = fontModel;
    }

    public final void setWindowLocationBeforeKeyboardOpen(@Nullable WindowLocation windowLocation) {
        this.windowLocationBeforeKeyboardOpen = windowLocation;
    }

    public final void startFontParamsFilter() {
        RxFilter<Unit> rxFilter = new RxFilter<>();
        rxFilter.subscribeThrottleLast(new C12564c());
        this.paramsFilter = rxFilter;
    }

    public final void startTimer() {
        stopTimer();
        this.timerDisposable = Observable.interval(500L, TimeUnit.MILLISECONDS).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C12565d()).subscribe();
    }

    public final void stopTimer() {
        Disposable disposable = this.timerDisposable;
        if (disposable != null) {
            RxjavaKt.safelyDispose(disposable);
        }
    }

    public final void updateTypesetParams() {
        RxFilter<Unit> rxFilter = this.paramsFilter;
        if (rxFilter != null) {
            rxFilter.onNext(Unit.INSTANCE);
        }
    }
}
