package com.onyx.android.sdk.universal.editor.action;

import androidx.core.app.NotificationCompat;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.blankj.utilcode.util.LogUtils;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.miui.penengine.p015e.C6999h;
import com.onegravity.rteditor.fonts.FontManager;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.LooperKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.base.utils.debug.PerformanceWatcher;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.AppPaths;
import com.onyx.android.sdk.geometry.data.BoxExtraInfo;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.shape.ShapeBean;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.request.InitReaderViewSizeRequest;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.OpenDocumentAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.flush.ImportStashShapeAction;
import com.onyx.android.sdk.universal.editor.action.penbox.ActivatePenBoxViewAction;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.data.VirtualDocOpenResultInfo;
import com.onyx.android.sdk.universal.editor.events.app.DocumentOpenSuccessEvent;
import com.onyx.android.sdk.universal.editor.events.app.GlobalDocumentOpenSuccessEvent;
import com.onyx.android.sdk.universal.editor.events.note.AudioShapeBeanEvent;
import com.onyx.android.sdk.universal.editor.events.note.HWRPrepareInitEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.AfterDocumentOpenRequest;
import com.onyx.android.sdk.universal.editor.request.audio.CheckAndCorrectAudioDurationRequest;
import com.onyx.android.sdk.universal.editor.request.audio.LoadAudioListRequest;
import com.onyx.android.sdk.universal.editor.request.doc.OpenVirtualDocRequest;
import com.onyx.android.sdk.universal.editor.request.p041pb.ExportToDBFromPBRequest;
import com.onyx.android.sdk.universal.editor.request.page.GotoPageByIdRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.Duration;
import kotlin.time.TimeSource;
import kotlin.time.TimedValue;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010A\u001a\u00020@\u0012\u0006\u00108\u001a\u000201¢\u0006\u0004\bB\u0010CJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\f\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\f\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0002J\f\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0002J\f\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0002J\b\u0010\u0014\u001a\u00020\u0002H\u0002J\f\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0002J\b\u0010\u0016\u001a\u00020\u0002H\u0002J\b\u0010\u0017\u001a\u00020\u0002H\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\b\u0010\u001b\u001a\u00020\u0002H\u0002J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\b\u0010\u001e\u001a\u00020\u0002H\u0002J\u000e\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\u000e\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\b\u0010!\u001a\u00020\u0002H\u0002J\b\u0010\"\u001a\u00020\u0002H\u0002J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010$\u001a\u00020#H\u0002J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010'\u001a\u00020&H\u0002J+\u0010)\u001a\u00028\u0000\"\u0004\b\u0000\u0010)2\u0006\u0010'\u001a\u00020&2\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000*H\u0002¢\u0006\u0004\b)\u0010,J\b\u0010.\u001a\u00020-H\u0002J\u000e\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0016J\u000e\u00100\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0014R\"\u00108\u001a\u0002018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u0018\u0010;\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0014\u0010?\u001a\u00020<8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>¨\u0006D"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "x", "d0", "Lio/reactivex/rxjava3/core/Observable;", "v", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "I", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "f0", "B", "V", "X", "W", "u", "F", "M", "L", "R", "J", "P", "N", "c0", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;", "openResultInfo", Constants.HASIDCALL_INDEX_SIG, "E", "y", "a0", "Y", "e0", "t", "s", "b0", "", OcrValues.LANG_ITALIAN, "G", "", NotificationCompat.CATEGORY_MESSAGE, "U", "T", "Lkotlin/Function0;", BreakpointSQLiteHelper.f39283i, "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "", "K", PrivilegedApp.f6529f, BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "getOpenDocArgs", "()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "setOpenDocArgs", "(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V", "openDocArgs", "i", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;", "virtualDocOpenResultInfo", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "j", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "benchmarkSinceOpen", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOpenDocumentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenDocumentAction.kt\ncom/onyx/android/sdk/universal/editor/action/OpenDocumentAction\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n1#1,400:1\n79#2,5:401\n113#2,7:406\n*S KotlinDebug\n*F\n+ 1 OpenDocumentAction.kt\ncom/onyx/android/sdk/universal/editor/action/OpenDocumentAction\n*L\n390#1:401,5\n390#1:406,7\n*E\n"})
/* loaded from: classes8.dex */
public final class OpenDocumentAction extends RxBaseAppAction<OpenDocumentAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public OpenDocArgs openDocArgs;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public VirtualDocOpenResultInfo virtualDocOpenResultInfo;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Benchmark benchmarkSinceOpen;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$a */
    /* loaded from: classes8.dex */
    public static final class C8245a<T, R> implements Function {
        public C8245a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OpenDocumentAction apply(@NotNull ActivateReadingHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$a0 */
    /* loaded from: classes8.dex */
    public static final class C8246a0<T, R> implements Function {
        public C8246a0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OpenDocumentAction apply(@NotNull GetContentViewSizeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenDocumentAction.this.getOpenDocArgs().setViewSize(Size.copy$default(it2.getViewSize(), 0, 0, 3, null));
            return OpenDocumentAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$b */
    /* loaded from: classes8.dex */
    public static final class C8247b<T, R> implements Function {
        public C8247b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentAction.this.m36907t();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$b0 */
    /* loaded from: classes8.dex */
    public static final class C8248b0<T> implements Consumer {
        public C8248b0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenDocumentAction.this.m36894U("getContentViewSize finish");
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$c */
    /* loaded from: classes8.dex */
    public static final class C8249c<T> implements Consumer {
        public C8249c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenDocumentAction.this.m36906s();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$c0 */
    /* loaded from: classes8.dex */
    public static final class C8250c0<T> implements Consumer {
        public C8250c0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ImportStashShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenDocumentAction.this.m36894U("importStashShapes finish");
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$d */
    /* loaded from: classes8.dex */
    public static final class C8251d<T> implements Consumer {
        public C8251d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenDocumentAction.this.m36901b0();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$d0 */
    /* loaded from: classes8.dex */
    public static final class C8252d0<T, R> implements Function {
        public C8252d0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OpenDocumentAction apply(@NotNull ImportStashShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$e */
    /* loaded from: classes8.dex */
    public static final class C8253e<T, R> implements Function {
        public C8253e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentAction> apply(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentAction.this.m36904e0();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$e0 */
    /* loaded from: classes8.dex */
    public static final class C8254e0<T, R> implements Function {

        /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$e0$a */
        /* loaded from: classes8.dex */
        public static final class a<T1, T2, R> implements BiFunction {

            /* renamed from: e */
            public static final a<T1, T2, R> f47701e = new a<>();

            /* renamed from: a */
            public final void m36923a(@NotNull Object obj, @NotNull Object obj2) {
                Intrinsics.checkNotNullParameter(obj, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(obj2, "<anonymous parameter 1>");
            }

            @Override // io.reactivex.rxjava3.functions.BiFunction
            public /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
                m36923a(obj, obj2);
                return Unit.INSTANCE;
            }
        }

        public C8254e0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.zip(OpenDocumentAction.this.m36892R(), OpenDocumentAction.this.m36891P(), a.f47701e);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$f */
    /* loaded from: classes8.dex */
    public static final class C8256f<T, R> implements Function {
        public C8256f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OpenDocumentAction apply(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$f0 */
    /* loaded from: classes8.dex */
    public static final class C8257f0<T> implements Consumer {
        public C8257f0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenDocumentAction.this.m36894U("loadData finish");
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$g */
    /* loaded from: classes8.dex */
    public static final class C8258g<T> implements Consumer {
        public C8258g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenDocumentAction.this.m36894U("switch main thread after load data");
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$g0 */
    /* loaded from: classes8.dex */
    public static final class C8259g0<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ String f47706e;

        public C8259g0(String str) {
            this.f47706e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PerformanceWatcher.INSTANCE.beginRequest(this.f47706e, true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$h */
    /* loaded from: classes8.dex */
    public static final class C8260h<T, R> implements Function {
        public C8260h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentAction> apply(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentAction.this.m36881D();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$h0 */
    /* loaded from: classes8.dex */
    public static final class C8261h0<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ String f47708e;

        public C8261h0(String str) {
            this.f47708e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PerformanceWatcher.INSTANCE.beginRequest(this.f47708e, true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$i */
    /* loaded from: classes8.dex */
    public static final class C8262i<T> implements Consumer {
        public C8262i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(OpenDocumentAction.this.getEditorBundle()).resizeCache(OpenDocumentAction.this.getOpenDocArgs().getViewSize());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$i0 */
    /* loaded from: classes8.dex */
    public static final class C8263i0<T> implements Consumer {
        public C8263i0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenDocumentAction.this.m36897X();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$j */
    /* loaded from: classes8.dex */
    public static final class C8264j<T, R> implements Function {
        public C8264j() {
        }

        /* renamed from: a */
        public final void m36933a(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenDocumentAction.this.m36883F();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m36933a((OpenDocumentAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$j0 */
    /* loaded from: classes8.dex */
    public static final class C8265j0<T> implements Consumer {
        public C8265j0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenDocumentAction.this.m36896W();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$k */
    /* loaded from: classes8.dex */
    public static final class C8266k<T> implements Consumer {
        public C8266k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenDocumentAction.this.m36886J();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$k0 */
    /* loaded from: classes8.dex */
    public static final class C8267k0<T> implements Consumer {
        public C8267k0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenDocumentAction.this.m36880C();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$l */
    /* loaded from: classes8.dex */
    public static final class C8268l<T> implements Consumer {
        public C8268l() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenDocumentAction.this.m36894U("switch main thread before display");
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$l0 */
    /* loaded from: classes8.dex */
    public static final class C8269l0<T, R> implements Function {
        public C8269l0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentAction> apply(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentAction.this.m36885I();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$m */
    /* loaded from: classes8.dex */
    public static final class C8273m<T, R> implements Function {
        public C8273m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(OpenDocumentAction.this.getEditorBundle(), true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$m0 */
    /* loaded from: classes8.dex */
    public static final class C8274m0<T, R> implements Function {
        public C8274m0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentAction.this.m36889M();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$n */
    /* loaded from: classes8.dex */
    public static final class C8275n<T, R> implements Function {
        public C8275n() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.preRenderNextScreen(OpenDocumentAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$n0 */
    /* loaded from: classes8.dex */
    public static final class C8276n0<T, R> implements Function {
        public C8276n0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OpenDocumentAction apply(@NotNull ContentViewSizeChangedAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$o */
    /* loaded from: classes8.dex */
    public static final class C8277o<T> implements Consumer {
        public C8277o() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenDocumentAction.this.m36898Y();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$o0 */
    /* loaded from: classes8.dex */
    public static final class C8278o0<T, R> implements Function {
        public C8278o0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OpenDocumentAction apply(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenDocumentAction.this.getEditorBundle().getWorkBundle().setRotation(ResManager.INSTANCE.getRotation());
            return OpenDocumentAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$p */
    /* loaded from: classes8.dex */
    public static final class C8279p<T> implements Consumer {
        public C8279p() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(OpenDocumentAction.this.getEditorBundle()).clearDisplay();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$q */
    /* loaded from: classes8.dex */
    public static final class C8280q<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ String f47731e;

        public C8280q(String str) {
            this.f47731e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PerformanceWatcher.INSTANCE.beginRequest(this.f47731e, true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$r */
    /* loaded from: classes8.dex */
    public static final class C8281r<T, R> implements Function {
        public C8281r() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.ensureCloseDoc(OpenDocumentAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$s */
    /* loaded from: classes8.dex */
    public static final class C8282s<T, R> implements Function {
        public C8282s() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentAction.this.m36905f0();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$t */
    /* loaded from: classes8.dex */
    public static final class C8283t<T, R> implements Function {
        public C8283t() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentAction> apply(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentAction.this.m36879B();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$u */
    /* loaded from: classes8.dex */
    public static final class C8284u<T> implements Consumer {
        public C8284u() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenDocumentAction.this.m36910x();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$v */
    /* loaded from: classes8.dex */
    public static final class C8285v<T, R> implements Function {
        public C8285v() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentAction> apply(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentAction.this.m36909v();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$w */
    /* loaded from: classes8.dex */
    public static final class C8286w<T, R> implements Function {
        public C8286w() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentAction.this.m36895V();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$x */
    /* loaded from: classes8.dex */
    public static final class C8287x<T, R> implements Function {
        public C8287x() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentAction.this.m36908u();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$z */
    /* loaded from: classes8.dex */
    public static final class C8289z<T> implements Consumer {
        public C8289z() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            String stackTraceToString;
            Intrinsics.checkNotNullParameter(it2, "it");
            String simpleName = OpenDocumentAction.this.getClass().getSimpleName();
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
            LogUtils.file(simpleName, stackTraceToString);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpenDocumentAction(@NotNull EditorBundle editorBundle, @NotNull OpenDocArgs openDocArgs) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(openDocArgs, "openDocArgs");
        this.openDocArgs = openDocArgs;
        this.benchmarkSinceOpen = new Benchmark();
    }

    /* renamed from: A */
    public static final void m36865A(OpenDocumentAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m36903d0();
    }

    /* renamed from: H */
    public static final void m36866H() {
        ToastUtils.INSTANCE.show(C8045R.string.open_fail_default_tip, true);
    }

    /* renamed from: O */
    public static final void m36867O(OpenDocumentAction this$0, List it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "$it");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new AudioShapeBeanEvent(it2));
    }

    /* renamed from: Q */
    public static final void m36868Q(String actionName) {
        Intrinsics.checkNotNullParameter(actionName, "$actionName");
        PerformanceWatcher.endRequest$default(PerformanceWatcher.INSTANCE, actionName, false, 2, null);
    }

    /* renamed from: S */
    public static final void m36869S(String msg) {
        Intrinsics.checkNotNullParameter(msg, "$msg");
        PerformanceWatcher.endRequest$default(PerformanceWatcher.INSTANCE, msg, false, 2, null);
    }

    /* renamed from: w */
    public static final void m36877w(String actionName) {
        Intrinsics.checkNotNullParameter(actionName, "$actionName");
        PerformanceWatcher.endRequest$default(PerformanceWatcher.INSTANCE, actionName, false, 2, null);
    }

    /* renamed from: z */
    public static final void m36878z(OpenDocumentAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m36894U("UI thread prepared");
    }

    /* renamed from: B */
    public final Observable<OpenDocumentAction> m36879B() {
        Observable doOnError = Observable.just(this).observeOn(GlobalBundle.INSTANCE.getSingleIO().getObserveOn()).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$ensureLoadCustomFonts$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull OpenDocumentAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OpenDocumentAction.this.m36893T("ensureLoadCustomFonts", new Function0<Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$ensureLoadCustomFonts$1.1
                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        FontManager.ensureLoadCustomFonts(AppPaths.INSTANCE.appFontDir().toAbsolutePath().toString());
                    }
                });
            }
        }).doOnError(new C8289z());
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        return RxjavaKt.onErrorReturnItemWithLog(doOnError, this);
    }

    /* renamed from: C */
    public final void m36880C() {
        m36893T("exportToDBFromPB", new Function0<Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$exportToDBFromPB$1
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
                new ExportToDBFromPBRequest(OpenDocumentAction.this.getEditorBundle().getWorkBundle()).execute2();
            }
        });
    }

    /* renamed from: D */
    public final Observable<OpenDocumentAction> m36881D() {
        if (this.openDocArgs.getUseExternalViewSize()) {
            Observable<OpenDocumentAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        m36894U("getContentViewSize start");
        Observable<OpenDocumentAction> doOnNext = new GetContentViewSizeAction(getEditorBundle()).build().map(new C8246a0()).doOnNext(new C8248b0());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: E */
    public final void m36882E() {
        if (this.openDocArgs.getPageId().length() == 0) {
            return;
        }
        new GotoPageByIdRequest(getEditorBundle().getWorkBundle(), this.openDocArgs.getPageId()).execute2();
    }

    /* renamed from: F */
    public final void m36883F() {
        m36893T("handleCoreAfterDocumentOpen", new Function0<Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$handleCoreAfterDocumentOpen$1
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
                VirtualDocOpenResultInfo virtualDocOpenResultInfo;
                WorkBundle workBundle = OpenDocumentAction.this.getEditorBundle().getWorkBundle();
                virtualDocOpenResultInfo = OpenDocumentAction.this.virtualDocOpenResultInfo;
                new AfterDocumentOpenRequest(workBundle, virtualDocOpenResultInfo).execute2();
                OpenDocumentAction.this.m36882E();
            }
        });
    }

    /* renamed from: G */
    public final void m36884G(Throwable it2) {
        String stackTraceToString;
        StringBuilder sb = new StringBuilder();
        sb.append("open document fail, docId=");
        sb.append(this.openDocArgs.getDocumentId());
        sb.append(" ,path=");
        sb.append(this.openDocArgs.getPath());
        sb.append(" ,title=");
        sb.append(this.openDocArgs.getTitle());
        sb.append(" ,exception:");
        stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
        sb.append(stackTraceToString);
        LogUtils.file(OpenDocumentAction.class.getSimpleName(), sb.toString());
        RxjavaKt.runInUI(new Runnable() { // from class: com.sunia.HTREnginev2.ahk
            @Override // java.lang.Runnable
            public final void run() {
                OpenDocumentAction.m36866H();
            }
        });
    }

    /* renamed from: I */
    public final Observable<OpenDocumentAction> m36885I() {
        m36894U("importStashShapes start");
        Observable<R> map = new ImportStashShapeAction(getEditorBundle(), this.openDocArgs).buildFast().doOnNext(new C8250c0()).map(new C8252d0());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.onErrorReturnItemWithLog(map, this);
    }

    /* renamed from: J */
    public final void m36886J() {
        new InitReaderViewSizeRequest(EditorBundleKt.readerBundle(getEditorBundle()), this.openDocArgs.getViewSize()).execute2();
    }

    /* renamed from: K */
    public final boolean m36887K() {
        return this.openDocArgs.getIsPreLoadData();
    }

    /* renamed from: L */
    public final Observable<?> m36888L() {
        Observable<?> doOnNext = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$loadCoreData$1

            @Metadata(m61527d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m61528d2 = {"<anonymous>", "", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
            /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$loadCoreData$1$1 */
            /* loaded from: classes8.dex */
            public static final class C82701 extends Lambda implements Function0<Unit> {
                final /* synthetic */ OpenDocumentAction this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C82701(OpenDocumentAction openDocumentAction) {
                    super(0);
                    this.this$0 = openDocumentAction;
                }

                /* JADX INFO: Access modifiers changed from: private */
                public static final void invoke$lambda$0(OpenDocumentAction this$0, VirtualDocOpenResultInfo openResultInfo) {
                    Intrinsics.checkNotNullParameter(this$0, "this$0");
                    Intrinsics.checkNotNullParameter(openResultInfo, "$openResultInfo");
                    EditorBundleKt.renderManager(this$0.getEditorBundle()).setBackground(openResultInfo.getGeoLayoutBackground());
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    final VirtualDocOpenResultInfo onDocOpened = this.this$0.getEditorBundle().getWorkBundle().getVirtualPolicy().onDocOpened();
                    this.this$0.virtualDocOpenResultInfo = onDocOpened;
                    final OpenDocumentAction openDocumentAction = this.this$0;
                    RxjavaKt.runInUI(
                    /*  JADX ERROR: Method code generation error
                        jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x001e: INVOKE 
                          (wrap:java.lang.Runnable:0x001b: CONSTRUCTOR 
                          (r2v1 'openDocumentAction' com.onyx.android.sdk.universal.editor.action.OpenDocumentAction A[DONT_INLINE])
                          (r0v4 'onDocOpened' com.onyx.android.sdk.universal.editor.data.VirtualDocOpenResultInfo A[DONT_INLINE])
                         A[MD:(com.onyx.android.sdk.universal.editor.action.OpenDocumentAction, com.onyx.android.sdk.universal.editor.data.VirtualDocOpenResultInfo):void (m), WRAPPED] call: com.onyx.android.sdk.universal.editor.action.b.<init>(com.onyx.android.sdk.universal.editor.action.OpenDocumentAction, com.onyx.android.sdk.universal.editor.data.VirtualDocOpenResultInfo):void type: CONSTRUCTOR)
                         STATIC call: com.onyx.android.sdk.base.extension.RxjavaKt.runInUI(java.lang.Runnable):void A[MD:(java.lang.Runnable):void (m)] in method: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$loadCoreData$1.1.invoke():void, file: classes8.dex
                        	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                        	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                        	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                        	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                        	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                        Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: com.onyx.android.sdk.universal.editor.action.b, state: NOT_LOADED
                        	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:304)
                        	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:781)
                        	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                        	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                        	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                        	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                        	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                        	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1117)
                        	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:884)
                        	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:422)
                        	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                        	... 15 more
                        */
                    /*
                        this = this;
                        com.onyx.android.sdk.universal.editor.action.OpenDocumentAction r0 = r2.this$0
                        com.onyx.android.sdk.universal.editor.EditorBundle r0 = r0.getEditorBundle()
                        com.onyx.android.sdk.universal.editor.WorkBundle r0 = r0.getWorkBundle()
                        com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy r0 = r0.getVirtualPolicy()
                        com.onyx.android.sdk.universal.editor.data.VirtualDocOpenResultInfo r0 = r0.onDocOpened()
                        com.onyx.android.sdk.universal.editor.action.OpenDocumentAction r1 = r2.this$0
                        com.onyx.android.sdk.universal.editor.action.OpenDocumentAction.access$setVirtualDocOpenResultInfo$p(r1, r0)
                        com.onyx.android.sdk.universal.editor.action.OpenDocumentAction r2 = r2.this$0
                        com.onyx.android.sdk.universal.editor.action.b r1 = new com.onyx.android.sdk.universal.editor.action.b
                        r1.<init>(r2, r0)
                        com.onyx.android.sdk.base.extension.RxjavaKt.runInUI(r1)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$loadCoreData$1.C82701.invoke2():void");
                }
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull OpenDocumentAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OpenDocumentAction openDocumentAction = OpenDocumentAction.this;
                openDocumentAction.m36893T("loadCoreData", new C82701(openDocumentAction));
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: M */
    public final Observable<?> m36889M() {
        m36894U("loadData start");
        Observable<?> doOnNext = m36888L().flatMap(new C8254e0()).doOnNext(new C8257f0());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: N */
    public final void m36890N() {
        final List list = (List) m36893T("loadNoteAudioList", new Function0<List<ShapeBean>>() { // from class: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$loadNoteAudioList$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<ShapeBean> invoke() {
                LoadAudioListRequest loadAudioListRequest = new LoadAudioListRequest(OpenDocumentAction.this.getEditorBundle());
                loadAudioListRequest.execute2();
                List<ShapeBean> audioShapeBeanList = loadAudioListRequest.getAudioShapeBeanList();
                new CheckAndCorrectAudioDurationRequest(OpenDocumentAction.this.getEditorBundle(), audioShapeBeanList).execute2();
                return audioShapeBeanList;
            }
        });
        RxjavaKt.runInUI(new Runnable() { // from class: com.sunia.HTREnginev2.wgk
            @Override // java.lang.Runnable
            public final void run() {
                OpenDocumentAction.m36867O(OpenDocumentAction.this, list);
            }
        });
    }

    /* renamed from: P */
    public final Observable<?> m36891P() {
        final String str = AnyKt.toSimpleNameString(this) + " loadNoteData";
        final VirtualDocOpenResultInfo virtualDocOpenResultInfo = this.virtualDocOpenResultInfo;
        if (virtualDocOpenResultInfo == null) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<?> doFinally = Observable.just(this).doOnNext(new C8259g0(str)).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$loadNoteData$2
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull OpenDocumentAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                final OpenDocumentAction openDocumentAction = OpenDocumentAction.this;
                String str2 = str;
                final VirtualDocOpenResultInfo virtualDocOpenResultInfo2 = virtualDocOpenResultInfo;
                openDocumentAction.m36893T(str2, new Function0<Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$loadNoteData$2.1
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
                        OpenDocumentAction.this.m36902c0();
                        OpenDocumentAction.this.m36899Z(virtualDocOpenResultInfo2);
                        OpenDocumentAction.this.m36890N();
                    }
                });
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.zgk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                OpenDocumentAction.m36868Q(str);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: R */
    public final Observable<?> m36892R() {
        final VirtualDocOpenResultInfo virtualDocOpenResultInfo = this.virtualDocOpenResultInfo;
        if (virtualDocOpenResultInfo == null) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final String str = AnyKt.toSimpleNameString(this) + " loadReaderData";
        Observable<?> doFinally = Observable.just(this).doOnNext(new C8261h0(str)).observeOn(EditorBundleKt.readerScheduler(getEditorBundle())).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$loadReaderData$2
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull OpenDocumentAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                final OpenDocumentAction openDocumentAction = OpenDocumentAction.this;
                String str2 = str;
                final VirtualDocOpenResultInfo virtualDocOpenResultInfo2 = virtualDocOpenResultInfo;
                openDocumentAction.m36893T(str2, new Function0<Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$loadReaderData$2.1
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
                        OpenDocumentAction.this.m36900a0(virtualDocOpenResultInfo2);
                        OpenDocumentAction.this.m36911y(virtualDocOpenResultInfo2);
                    }
                });
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.xgk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                OpenDocumentAction.m36869S(str);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: T */
    public final <T> T m36893T(String msg, Function0<? extends T> block) {
        TimedValue timedValue = new TimedValue(block.invoke(), TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto()), null);
        this.benchmarkSinceOpen.reportDebug(AnyKt.toSimpleNameString(this), msg + ", functionTime = " + ((Object) Duration.m74024toStringimpl(timedValue.m74136getDurationUwyO8pc())) + ", sinceBeginOpen");
        return (T) timedValue.getValue();
    }

    /* renamed from: U */
    public final void m36894U(String msg) {
        this.benchmarkSinceOpen.reportDebug(AnyKt.toSimpleNameString(this), msg);
    }

    /* renamed from: V */
    public final Observable<?> m36895V() {
        Observable<?> flatMap = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).doOnNext(new C8263i0()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C8265j0()).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).doOnNext(new C8267k0()).flatMap(new C8269l0()).flatMap(new C8274m0());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: W */
    public final void m36896W() {
        m36893T("openNoteDocument", new OpenDocumentAction$openNoteDocument$1(this));
    }

    /* renamed from: X */
    public final void m36897X() {
        m36893T("openVirtualDoc", new Function0<Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$openVirtualDoc$1
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
                new OpenVirtualDocRequest(OpenDocumentAction.this.getEditorBundle().getWorkBundle(), OpenDocumentAction.this.getOpenDocArgs()).execute2();
            }
        });
    }

    /* renamed from: Y */
    public final void m36898Y() {
        EditorBundleKt.postEvent(getEditorBundle(), new DocumentOpenSuccessEvent(this.openDocArgs));
        GlobalBundle.INSTANCE.postEvent(new GlobalDocumentOpenSuccessEvent(this.openDocArgs.getDocumentId()));
    }

    /* renamed from: Z */
    public final void m36899Z(VirtualDocOpenResultInfo openResultInfo) {
        BoxInfo virtualPageBoxInfo;
        final BoxInfo noteInfo;
        if (!m36887K() || (virtualPageBoxInfo = openResultInfo.getVirtualPageBoxInfo()) == null || (noteInfo = virtualPageBoxInfo.getNoteInfo()) == null) {
            return;
        }
    }

    /* renamed from: a0 */
    public final void m36900a0(final VirtualDocOpenResultInfo openResultInfo) {
        if (m36887K()) {
            m36893T("preOpenReaderDoc", new Function0<Reader>() { // from class: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$preOpenReaderDocIf$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @Nullable
                public final Reader invoke() {
                    BoxExtraInfo extraInfo;
                    BoxInfo virtualPageBoxInfo = VirtualDocOpenResultInfo.this.getVirtualPageBoxInfo();
                    String contentPath = (virtualPageBoxInfo == null || (extraInfo = virtualPageBoxInfo.getExtraInfo()) == null) ? null : extraInfo.getContentPath();
                    if (contentPath == null) {
                        contentPath = "";
                    }
                    return ReaderBundle.ensureReaderByPath$default(EditorBundleKt.readerBundle(this.getEditorBundle()), contentPath, null, 2, null);
                }
            });
        }
    }

    /* renamed from: b0 */
    public final void m36901b0() {
        EditorBundleKt.postEvent(getEditorBundle(), new HWRPrepareInitEvent());
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<OpenDocumentAction> build() {
        return LooperKt.isMainThread() ? buildFast() : super.build();
    }

    /* renamed from: c0 */
    public final void m36902c0() {
        final NoteBundle noteBundle = EditorBundleKt.noteBundle(getEditorBundle());
        m36893T("prepareNoteData", new Function0<Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction$prepareNoteData$1
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
                NoteDocNotePage.INSTANCE.updateValidShapeNotePageIds(NoteBundle.this.getNoteDoc());
            }
        });
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<OpenDocumentAction> create() {
        RxjavaKt.runInUI(new Runnable() { // from class: com.sunia.HTREnginev2.ugk
            @Override // java.lang.Runnable
            public final void run() {
                OpenDocumentAction.m36878z(OpenDocumentAction.this);
            }
        });
        Observable<OpenDocumentAction> doFinally = Observable.just(this).doOnNext(new C8284u()).flatMap(new C8285v()).flatMap(new C8286w()).flatMap(new C8287x()).observeOn(getMainUIScheduler()).doOnError(new Consumer() { // from class: com.onyx.android.sdk.universal.editor.action.OpenDocumentAction.y
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                OpenDocumentAction.this.m36884G(p0);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.vgk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                OpenDocumentAction.m36865A(OpenDocumentAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: d0 */
    public final void m36903d0() {
        PerformanceWatcher.INSTANCE.endOpenDoc(AnyKt.toSimpleNameString(this) + ", " + this.openDocArgs.toPerformanceStr() + ", durationSinceCreateAction = " + this.benchmarkSinceOpen.durationString() + ", isPreLoadData = " + m36887K() + ", " + EditorBundleKt.documentState(getEditorBundle()).name());
    }

    /* renamed from: e0 */
    public final Observable<OpenDocumentAction> m36904e0() {
        Size viewSize = EditorBundleKt.viewSize(getEditorBundle());
        if (this.openDocArgs.getViewSize().getWidth() == viewSize.getWidth() && this.openDocArgs.getViewSize().getHeight() == viewSize.getHeight()) {
            Observable<OpenDocumentAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Debug.INSTANCE.m32059w(OpenDocumentAction.class, "content view size changed after opened. before: " + this.openDocArgs.getViewSize() + ", after: " + viewSize, new Object[0]);
        Observable map = new ContentViewSizeChangedAction(getEditorBundle()).build().map(new C8276n0());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: f0 */
    public final Observable<OpenDocumentAction> m36905f0() {
        Observable<OpenDocumentAction> map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C8278o0());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final OpenDocArgs getOpenDocArgs() {
        return this.openDocArgs;
    }

    /* renamed from: s */
    public final void m36906s() {
        RxBaseAction.execute$default(new ActivatePenBoxViewAction(getEditorBundle(), false, 2, null), null, null, null, 7, null);
    }

    public final void setOpenDocArgs(@NotNull OpenDocArgs openDocArgs) {
        Intrinsics.checkNotNullParameter(openDocArgs, "<set-?>");
        this.openDocArgs = openDocArgs;
    }

    /* renamed from: t */
    public final Observable<OpenDocumentAction> m36907t() {
        Observable map = new ActivateReadingHandlerAction(getEditorBundle()).build().map(new C8245a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: u */
    public final Observable<OpenDocumentAction> m36908u() {
        Observable<OpenDocumentAction> map = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C8258g()).flatMap(new C8260h()).doOnNext(new C8262i()).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C8264j()).observeOn(EditorBundleKt.readerScheduler(getEditorBundle())).doOnNext(new C8266k()).observeOn(getMainUIScheduler()).doOnNext(new C8268l()).flatMap(new C8273m()).flatMap(new C8275n()).doOnNext(new C8277o()).flatMap(new C8247b()).doOnNext(new C8249c()).doOnNext(new C8251d()).flatMap(new C8253e()).map(new C8256f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: v */
    public final Observable<OpenDocumentAction> m36909v() {
        final String str = AnyKt.toSimpleNameString(this) + " beforeOpenDocument";
        Observable<OpenDocumentAction> doFinally = Observable.just(this).doOnNext(new C8279p()).doOnNext(new C8280q(str)).flatMap(new C8281r()).flatMap(new C8282s()).flatMap(new C8283t()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.ygk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                OpenDocumentAction.m36877w(str);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: x */
    public final void m36910x() {
        PerformanceWatcher.INSTANCE.beginOpenDoc();
    }

    /* renamed from: y */
    public final void m36911y(VirtualDocOpenResultInfo openResultInfo) {
        m36893T("checkContentValid", new OpenDocumentAction$checkContentValid$1(openResultInfo, this));
    }
}
