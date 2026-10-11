package com.onyx.android.sdk.universal.editor.action.handler;

import android.graphics.Canvas;
import android.graphics.RectF;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.excerpt.SaveExcerptArgsKt;
import com.onyx.android.sdk.note.common.data.excerpt.SaveTextExcerptArgs;
import com.onyx.android.sdk.note.common.data.excerpt.UpdateTextExcerptShapeArgs;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.api.ReaderWritingModeKt;
import com.onyx.android.sdk.reader.data.SelectOnScreenArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.excerpt.CreateTextExcerptShapeAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.SaveTextExcerptAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.SelectOnScreenAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.UpdateTextExcerptAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction;
import com.onyx.android.sdk.universal.editor.action.selection.GetReaderSelectionByShapeAction;
import com.onyx.android.sdk.universal.editor.data.TextExcerptEditContext;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.events.note.DismissExcerptPopupEvent;
import com.onyx.android.sdk.universal.editor.events.note.ExitExcerptEditEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowExcerptPopupArgs;
import com.onyx.android.sdk.universal.editor.events.note.ShowExcerptPopupEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartExcerptEditArgs;
import com.onyx.android.sdk.universal.editor.extension.ContentSelectionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.onyx.android.sdk.universal.editor.view.TextExcerptCreationRenderer;
import com.onyx.android.sdk.universal.editor.view.TextSelectionHighlightViewHandler;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010R\u001a\u00020Q\u0012\u0006\u0010T\u001a\u00020S¢\u0006\u0004\bU\u0010VJ\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u0007\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002J\u0018\u0010\r\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u001c\u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u00020\u000e2\u0006\u0010\n\u001a\u00020\tH\u0002J$\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u00020\u000e2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J$\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u00020\u000e2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0003H\u0002J\u0018\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0018\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\b\u0010\u001d\u001a\u00020\u0005H\u0002J3\u0010\"\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\t2!\u0010!\u001a\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u00050\u001eH\u0002J\u001c\u0010$\u001a\u0006\u0012\u0002\b\u00030\u000e2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010#\u001a\u00020\u0018H\u0002J\b\u0010%\u001a\u00020\u0005H\u0002J\u0010\u0010'\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u0003H\u0002J\u001c\u0010(\u001a\u0006\u0012\u0002\b\u00030\u000e2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0012\u0010)\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002J\u0018\u0010-\u001a\u00020\u00052\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020\u0010H\u0002J\u0014\u0010.\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u000eH\u0014J\b\u0010/\u001a\u00020\u0018H\u0016J\b\u00100\u001a\u00020\u0005H\u0016J\u0018\u00102\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u001aH\u0016J\u0010\u00103\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0003H\u0014J\u0010\u00104\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\u0010\u00107\u001a\u00020\u00052\u0006\u00106\u001a\u000205H\u0016J3\u00108\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u00182!\u0010!\u001a\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u00050\u001eH\u0016J\b\u00109\u001a\u00020\u0005H\u0016J\u0010\u0010<\u001a\u00020\u00052\u0006\u0010;\u001a\u00020:H\u0016J\u0010\u0010=\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0003H\u0014J\u0010\u0010>\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0003H\u0014R\u0014\u0010A\u001a\u00020?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010@R\u0014\u0010D\u001a\u00020B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010CR\u0016\u0010F\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010ER\u0018\u0010H\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010GR\"\u0010N\u001a\u00020:8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\u0018\u0010P\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010O¨\u0006W"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;", "", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "dataList", "", "u", "v", "p", "Lcom/onyx/android/sdk/universal/editor/data/TextExcerptEditContext;", "editContext", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Lio/reactivex/rxjava3/core/Observable;", "m", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "readerSelection", "A", "E", "touchData", "q", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "", "r", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "s", "z", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "onSaveCallback", "w", "saveChanged", "B", GoogleApiAvailabilityLight.f29016b, Keywords.FUNC_CURRENT_STRING, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "y", "t", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "selection", C4921e.f26528e, BaiduYunConstant.CREATE, "isEditMode", "dispose", "virtualBoxInfo", "onTouchContentOutside", "onTouchDown", "onSingleTapUp", "Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;", "args", "startExcerptEdit", "quitEdit", "cancelAction", "", "shapeUniqueId", "cancelEditIfDeleted", "onTouchMove", "onTouchUp", "Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;", "Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;", "highlightViewHandler", "Lcom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer;", "Lcom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer;", "creationRenderer", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "downPoint", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "currentSelection", Constants.STRING_SIG, "getContentPath", "()Ljava/lang/String;", "setContentPath", "(Ljava/lang/String;)V", "contentPath", "Lcom/onyx/android/sdk/universal/editor/data/TextExcerptEditContext;", "editingContext", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTextExcerptShapeDrawingHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextExcerptShapeDrawingHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,395:1\n1855#2,2:396\n*S KotlinDebug\n*F\n+ 1 TextExcerptShapeDrawingHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction\n*L\n212#1:396,2\n*E\n"})
/* loaded from: classes8.dex */
public final class TextExcerptShapeDrawingHandlerAction extends BaseExcerptShapeHandlerAction {

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final TextSelectionHighlightViewHandler highlightViewHandler;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final TextExcerptCreationRenderer creationRenderer;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public TouchPoint downPoint;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public ReaderSelection currentSelection;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public String contentPath;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public TextExcerptEditContext editingContext;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9303a<T> implements Predicate {
        public C9303a() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return (it2.isEmpty() ^ true) && !TextExcerptShapeDrawingHandlerAction.this.getExitOnTouchUp();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9304b<T> implements Consumer {
        public C9304b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextExcerptShapeDrawingHandlerAction.this.m38713u(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9305c<T> implements Predicate {
        public C9305c() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextExcerptShapeDrawingHandlerAction.this.isTouchDone(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$d */
    /* loaded from: classes8.dex */
    public static final class C9306d<T> implements Consumer {
        public C9306d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextExcerptShapeDrawingHandlerAction.this.m38714v(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$e */
    /* loaded from: classes8.dex */
    public static final class C9307e<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ TextExcerptEditContext f49424e;

        public C9307e(TextExcerptEditContext textExcerptEditContext) {
            this.f49424e = textExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49424e.setTransformShapes(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$f */
    /* loaded from: classes8.dex */
    public static final class C9308f<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ TextExcerptEditContext f49426f;

        public C9308f(TextExcerptEditContext textExcerptEditContext) {
            this.f49426f = textExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CreateTextExcerptShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextExcerptShapeDrawingHandlerAction.this.m38703D(this.f49426f, it2.getShape());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$g */
    /* loaded from: classes8.dex */
    public static final class C9309g<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ TextExcerptEditContext f49428f;

        public C9309g(TextExcerptEditContext textExcerptEditContext) {
            this.f49428f = textExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NotePage> apply(@NotNull CreateTextExcerptShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextExcerptShapeDrawingHandlerAction.this.ensureNotePage(this.f49428f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$h */
    /* loaded from: classes8.dex */
    public static final class C9310h<T> implements Consumer {
        public C9310h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextExcerptShapeDrawingHandlerAction.this.highlightViewHandler.initPaint();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$i */
    /* loaded from: classes8.dex */
    public static final class C9311i<T> implements Consumer {
        public C9311i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextExcerptShapeDrawingHandlerAction textExcerptShapeDrawingHandlerAction = TextExcerptShapeDrawingHandlerAction.this;
            textExcerptShapeDrawingHandlerAction.m38712t(textExcerptShapeDrawingHandlerAction.currentSelection);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$j */
    /* loaded from: classes8.dex */
    public static final class C9312j<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ TextExcerptEditContext f49432f;

        /* renamed from: g */
        public final /* synthetic */ boolean f49433g;

        public C9312j(TextExcerptEditContext textExcerptEditContext, boolean z) {
            this.f49432f = textExcerptEditContext;
            this.f49433g = z;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull TextExcerptShapeDrawingHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextExcerptShapeDrawingHandlerAction.this.m38701B(this.f49432f, this.f49433g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$k */
    /* loaded from: classes8.dex */
    public static final class C9313k<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ TextExcerptEditContext f49435f;

        /* renamed from: g */
        public final /* synthetic */ Function1<Shape, Unit> f49436g;

        /* JADX WARN: Multi-variable type inference failed */
        public C9313k(TextExcerptEditContext textExcerptEditContext, Function1<? super Shape, Unit> function1) {
            this.f49435f = textExcerptEditContext;
            this.f49436g = function1;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextExcerptShapeDrawingHandlerAction.this.m38715w(this.f49435f, this.f49436g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$l */
    /* loaded from: classes8.dex */
    public static final class C9314l<T> implements Consumer {
        public C9314l() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(TextExcerptShapeDrawingHandlerAction.this.getEditorBundle(), new ExitExcerptEditEvent());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$m */
    /* loaded from: classes8.dex */
    public static final class C9315m<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ TextExcerptEditContext f49441f;

        /* renamed from: g */
        public final /* synthetic */ Shape f49442g;

        public C9315m(TextExcerptEditContext textExcerptEditContext, Shape shape) {
            this.f49441f = textExcerptEditContext;
            this.f49442g = shape;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull ChangedShapeBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay(TextExcerptShapeDrawingHandlerAction.this, this.f49441f.getVirtualBoxInfo(), this.f49442g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$n */
    /* loaded from: classes8.dex */
    public static final class C9316n<T, R> implements Function {

        /* renamed from: e */
        public static final C9316n<T, R> f49443e = new C9316n<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull SaveTextExcerptAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getShapeList();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$o */
    /* loaded from: classes8.dex */
    public static final class C9317o<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ TextExcerptEditContext f49445f;

        /* renamed from: g */
        public final /* synthetic */ Shape f49446g;

        public C9317o(TextExcerptEditContext textExcerptEditContext, Shape shape) {
            this.f49445f = textExcerptEditContext;
            this.f49446g = shape;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay(TextExcerptShapeDrawingHandlerAction.this, this.f49445f.getVirtualBoxInfo(), this.f49446g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$p */
    /* loaded from: classes8.dex */
    public static final class C9318p<T> implements Consumer {
        public C9318p() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SelectOnScreenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ReaderSelection selection = it2.getSelection();
            if (selection != null) {
                TextExcerptShapeDrawingHandlerAction textExcerptShapeDrawingHandlerAction = TextExcerptShapeDrawingHandlerAction.this;
                textExcerptShapeDrawingHandlerAction.currentSelection = selection;
                TextExcerptEditContext textExcerptEditContext = textExcerptShapeDrawingHandlerAction.editingContext;
                if (textExcerptEditContext != null) {
                    textExcerptEditContext.setSelection(selection);
                }
            }
            TextExcerptShapeDrawingHandlerAction.this.setContentPath(it2.getContentPath());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$q */
    /* loaded from: classes8.dex */
    public static final class C9319q<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ TextExcerptEditContext f49449f;

        /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$q$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ GetReaderSelectionByShapeAction f49450e;

            public a(GetReaderSelectionByShapeAction getReaderSelectionByShapeAction) {
                this.f49450e = getReaderSelectionByShapeAction;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final GetReaderSelectionByShapeAction apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f49450e;
            }
        }

        public C9319q(TextExcerptEditContext textExcerptEditContext) {
            this.f49449f = textExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GetReaderSelectionByShapeAction> apply(@NotNull GetReaderSelectionByShapeAction action) {
            Intrinsics.checkNotNullParameter(action, "action");
            return TextExcerptShapeDrawingHandlerAction.this.m38716y(this.f49449f, action.getShape()).map(new a(action));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$r */
    /* loaded from: classes8.dex */
    public static final class C9320r<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ StartExcerptEditArgs f49452f;

        /* renamed from: g */
        public final /* synthetic */ TextExcerptEditContext f49453g;

        public C9320r(StartExcerptEditArgs startExcerptEditArgs, TextExcerptEditContext textExcerptEditContext) {
            this.f49452f = startExcerptEditArgs;
            this.f49453g = textExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetReaderSelectionByShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ReaderSelection selection = it2.getSelection();
            if (selection != null) {
                TextExcerptShapeDrawingHandlerAction textExcerptShapeDrawingHandlerAction = TextExcerptShapeDrawingHandlerAction.this;
                StartExcerptEditArgs startExcerptEditArgs = this.f49452f;
                TextExcerptEditContext textExcerptEditContext = this.f49453g;
                textExcerptShapeDrawingHandlerAction.setDownVirtualBoxInfo(startExcerptEditArgs.getVirtualBoxInfo());
                textExcerptShapeDrawingHandlerAction.downPoint.set(TouchPointKt.toDownTouchData$default(it2.getStartPoint(), null, startExcerptEditArgs.getVirtualBoxInfo(), 1, null).getTouchPoint());
                textExcerptShapeDrawingHandlerAction.setContentPath("");
                textExcerptShapeDrawingHandlerAction.currentSelection = selection;
                textExcerptEditContext.setSelection(selection);
                textExcerptEditContext.setOriginalExcerptShape(it2.getShape());
                textExcerptShapeDrawingHandlerAction.highlightViewHandler.initPaint();
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$s */
    /* loaded from: classes8.dex */
    public static final class C9322s<T> implements Consumer {
        public C9322s() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetReaderSelectionByShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextExcerptShapeDrawingHandlerAction textExcerptShapeDrawingHandlerAction = TextExcerptShapeDrawingHandlerAction.this;
            textExcerptShapeDrawingHandlerAction.m38712t(textExcerptShapeDrawingHandlerAction.currentSelection);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$t */
    /* loaded from: classes8.dex */
    public static final class C9324t<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ TextExcerptEditContext f49460f;

        public C9324t(TextExcerptEditContext textExcerptEditContext) {
            this.f49460f = textExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetReaderSelectionByShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextExcerptShapeDrawingHandlerAction.this.m38703D(this.f49460f, it2.getShape());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$u */
    /* loaded from: classes8.dex */
    public static final class C9325u<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ UpdateTextExcerptShapeArgs f49461e;

        public C9325u(UpdateTextExcerptShapeArgs updateTextExcerptShapeArgs) {
            this.f49461e = updateTextExcerptShapeArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull UpdateTextExcerptAction it2) {
            List<Shape> listOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            listOf = CollectionsKt__CollectionsJVMKt.listOf(this.f49461e.getShape());
            return listOf;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextExcerptShapeDrawingHandlerAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader) {
        super(editorBundle, touchReader);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
        this.highlightViewHandler = new TextSelectionHighlightViewHandler();
        this.creationRenderer = new TextExcerptCreationRenderer(editorBundle);
        this.downPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        this.contentPath = "";
    }

    /* renamed from: x */
    public static final void m38699x(TextExcerptShapeDrawingHandlerAction this$0, Object it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m38717z();
    }

    /* renamed from: A */
    public final Observable<List<Shape>> m38700A(TextExcerptEditContext editContext, ReaderSelection readerSelection) {
        SaveTextExcerptArgs saveTextExcerptArgs = ContentSelectionKt.toSaveTextExcerptArgs(readerSelection, editContext.getVirtualBoxInfo());
        SaveTextExcerptAction saveTextExcerptAction = new SaveTextExcerptAction(getEditorBundle());
        saveTextExcerptAction.setArgs(saveTextExcerptArgs);
        Observable map = saveTextExcerptAction.build().map(C9316n.f49443e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: B */
    public final Observable<?> m38701B(TextExcerptEditContext editContext, boolean saveChanged) {
        if (saveChanged) {
            return m38705m(editContext);
        }
        final Shape originalExcerptShape = editContext.getOriginalExcerptShape();
        if (originalExcerptShape == null) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<?> flatMap = ensureNotePage(editContext).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$saveOrRestore$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Unit> apply(@NotNull final NotePage notePage) {
                Intrinsics.checkNotNullParameter(notePage, "notePage");
                TextExcerptShapeDrawingHandlerAction textExcerptShapeDrawingHandlerAction = TextExcerptShapeDrawingHandlerAction.this;
                final Shape shape = originalExcerptShape;
                return DocCommonActionsKt.createNoteObservable(textExcerptShapeDrawingHandlerAction, new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$saveOrRestore$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                        invoke2(noteBundle);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull NoteBundle it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        NotePageShape.addShape$default(NotePageShape.INSTANCE, NotePage.this, shape, 0, 2, null);
                    }
                });
            }
        }).flatMap(new C9317o(editContext, originalExcerptShape));
        Intrinsics.checkNotNull(flatMap);
        return flatMap;
    }

    /* renamed from: C */
    public final void m38702C(TouchData current) {
        TouchPoint touchPoint = current.getTouchPoint();
        new RectF(this.downPoint.getX(), this.downPoint.getY(), touchPoint.getX(), touchPoint.getY());
        BoxInfo downVirtualBoxInfo = getDownVirtualBoxInfo();
        if (downVirtualBoxInfo == null) {
            return;
        }
        Observable<SelectOnScreenAction> doOnNext = new SelectOnScreenAction(getEditorBundle(), new SelectOnScreenArgs(this.contentPath, downVirtualBoxInfo, TouchPointKt.toPointF(this.downPoint), TouchPointKt.toPointF(touchPoint), true, false, null, null, 224, null)).build().doOnNext(new C9318p());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    /* renamed from: D */
    public final void m38703D(TextExcerptEditContext editContext, Shape shape) {
        Debug.INSTANCE.m32035d(TextExcerptShapeDrawingHandlerAction.class, "showExcerptMenuPopup: ", new Object[0]);
        EditorBundleKt.postEvent(getEditorBundle(), new ShowExcerptPopupEvent(new ShowExcerptPopupArgs(editContext.getVirtualBoxInfo(), shape, editContext.getExcerptCollectionList(), editContext.getNoteModelList(), false)));
    }

    /* renamed from: E */
    public final Observable<List<Shape>> m38704E(TextExcerptEditContext editContext, ReaderSelection readerSelection) {
        UpdateTextExcerptShapeArgs updateTextExcerptArgs = SaveExcerptArgsKt.toUpdateTextExcerptArgs(ContentSelectionKt.toSaveTextExcerptArgs(readerSelection, editContext.getVirtualBoxInfo()));
        Shape originalExcerptShape = editContext.getOriginalExcerptShape();
        Intrinsics.checkNotNull(originalExcerptShape);
        updateTextExcerptArgs.setShape(originalExcerptShape);
        Observable map = new UpdateTextExcerptAction(getEditorBundle(), updateTextExcerptArgs).build().map(new C9325u(updateTextExcerptArgs));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseExcerptShapeHandlerAction
    public void cancelAction() {
        BaseExcerptShapeHandlerAction.quitEdit$default(this, true, null, 2, null);
        getDelayDragCaptureHelper().cancelDelayDrag();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseExcerptShapeHandlerAction
    public void cancelEditIfDeleted(@NotNull String shapeUniqueId) {
        Intrinsics.checkNotNullParameter(shapeUniqueId, "shapeUniqueId");
        TextExcerptEditContext textExcerptEditContext = this.editingContext;
        if (textExcerptEditContext == null) {
            return;
        }
        Shape originalExcerptShape = textExcerptEditContext.getOriginalExcerptShape();
        if (Intrinsics.areEqual(originalExcerptShape != null ? originalExcerptShape.getShapeUniqueId() : null, shapeUniqueId) && isEditMode()) {
            textExcerptEditContext.setOriginalExcerptShape(null);
            this.currentSelection = null;
            BaseExcerptShapeHandlerAction.quitEdit$default(this, false, null, 2, null);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<TouchData>> create() {
        Observable<List<TouchData>> doOnNext = RxjavaKt.touchBuffer$default(subscribeTouchData(), 0L, 0, getMainUIScheduler(), 3, null).filter(new C9303a()).doOnNext(new C9304b()).filter(new C9305c()).doOnNext(new C9306d());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction, io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        BaseExcerptShapeHandlerAction.quitEdit$default(this, true, null, 2, null);
        super.dispose();
        getDelayDragCaptureHelper().cancelDelayDrag();
    }

    @NotNull
    public final String getContentPath() {
        return this.contentPath;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseExcerptShapeHandlerAction
    public boolean isEditMode() {
        return this.editingContext != null;
    }

    /* renamed from: m */
    public final Observable<List<Shape>> m38705m(TextExcerptEditContext editContext) {
        List emptyList;
        Debug.INSTANCE.m32035d(TextExcerptShapeDrawingHandlerAction.class, "saveTextExcerpt: ", new Object[0]);
        ReaderSelection selection = editContext.getSelection();
        if (selection != null) {
            Observable<List<Shape>> doOnNext = (editContext.getOriginalExcerptShape() == null ? m38700A(editContext, selection) : m38704E(editContext, selection)).doOnNext(new C9307e(editContext));
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            return doOnNext;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Observable<List<Shape>> just = Observable.just(emptyList);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: n */
    public final void m38706n() {
        TextExcerptEditContext textExcerptEditContext = this.editingContext;
        if (textExcerptEditContext == null) {
            return;
        }
        getDelayDragCaptureHelper().startDelayDrag(textExcerptEditContext, m38705m(textExcerptEditContext));
    }

    /* renamed from: o */
    public final void m38707o(Canvas canvas, ReaderSelection selection) {
        BoxInfo downVirtualBoxInfo = getDownVirtualBoxInfo();
        if (downVirtualBoxInfo == null) {
            return;
        }
        this.highlightViewHandler.drawHighlight(canvas, downVirtualBoxInfo, selection);
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseExcerptShapeHandlerAction
    public boolean onSingleTapUp(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        return isEditMode();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchContentOutside(@NotNull TouchData touchData, @NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        super.onTouchContentOutside(touchData, virtualBoxInfo);
        BaseExcerptShapeHandlerAction.quitEdit$default(this, true, null, 2, null);
        EditorBundleKt.shapeHandlerManager(getEditorBundle()).restoreUserProvider();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        EditorBundleKt.postEvent(getEditorBundle(), new DismissExcerptPopupEvent());
        if (!isEditMode()) {
            m38711s(touchData.getTouchPoint(), touchData.ensureBoxInfo());
        } else {
            if (getExitOnTouchUp()) {
                return;
            }
            m38709q(touchData);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchMove(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (getExitOnTouchUp()) {
            return;
        }
        m38702C(touchData);
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchUp(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (touchData.isTouchCancel()) {
            return;
        }
        getDelayDragCaptureHelper().cancelDelayDrag();
        if (getExitOnTouchUp()) {
            BaseExcerptShapeHandlerAction.quitEdit$default(this, true, null, 2, null);
        }
    }

    /* renamed from: p */
    public final void m38708p() {
        BoxInfo downVirtualBoxInfo;
        Debug.INSTANCE.m32035d(TextExcerptShapeDrawingHandlerAction.class, "enterEditMode: ", new Object[0]);
        ReaderSelection readerSelection = this.currentSelection;
        if (readerSelection == null || (downVirtualBoxInfo = getDownVirtualBoxInfo()) == null) {
            return;
        }
        TextExcerptEditContext textExcerptEditContext = this.editingContext;
        if (textExcerptEditContext == null) {
            textExcerptEditContext = TextExcerptEditContext.INSTANCE.create(downVirtualBoxInfo, readerSelection);
        }
        new CreateTextExcerptShapeAction(getEditorBundle(), ContentSelectionKt.toSaveTextExcerptArgs(readerSelection, downVirtualBoxInfo)).build().doOnNext(new C9308f(textExcerptEditContext)).flatMap(new C9309g(textExcerptEditContext)).doOnNext(new C9310h()).doOnNext(new C9311i()).subscribe();
        this.editingContext = textExcerptEditContext;
    }

    /* renamed from: q */
    public final void m38709q(TouchData touchData) {
        Object last;
        Object first;
        ReaderSelection readerSelection = this.currentSelection;
        if (readerSelection != null) {
            int hitTestCursor = this.highlightViewHandler.hitTestCursor(readerSelection.rectangles(), ReaderWritingModeKt.isVertical(readerSelection.writingMode()), touchData);
            if (hitTestCursor == 0) {
                last = CollectionsKt___CollectionsKt.last((List<? extends Object>) readerSelection.charRectList());
                RectF rectF = (RectF) last;
                this.downPoint.set(new TouchPoint(rectF.centerX(), rectF.centerY()));
            } else if (hitTestCursor == 1) {
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) readerSelection.charRectList());
                RectF rectF2 = (RectF) first;
                this.downPoint.set(new TouchPoint(rectF2.centerX(), rectF2.centerY()));
            } else if (m38710r(readerSelection, touchData.getTouchPoint())) {
                m38706n();
            } else {
                setExitOnTouchUp(true);
            }
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseExcerptShapeHandlerAction
    public void quitEdit(boolean saveChanged, @NotNull Function1<? super Shape, Unit> onSaveCallback) {
        Intrinsics.checkNotNullParameter(onSaveCallback, "onSaveCallback");
        Debug.INSTANCE.m32035d(TextExcerptShapeDrawingHandlerAction.class, "quitSelection: saveChanged=" + saveChanged + " editMode=" + isEditMode(), new Object[0]);
        if (RxjavaKt.isDisposed(getQuitDisposable())) {
            TextExcerptEditContext textExcerptEditContext = this.editingContext;
            Unit unit = null;
            this.editingContext = null;
            if (textExcerptEditContext != null) {
                Observable doOnNext = Observable.just(this).flatMap(new C9312j(textExcerptEditContext, saveChanged)).doOnNext(new C9313k(textExcerptEditContext, onSaveCallback)).doOnNext(new C9314l());
                Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                setQuitDisposable(RxjavaKt.doOnNextIf(doOnNext, new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$quitEdit$1$4
                    {
                        super(1);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull Object it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.valueOf(TextExcerptShapeDrawingHandlerAction.this.editingContext == null);
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.dcn
                    @Override // io.reactivex.rxjava3.functions.Consumer
                    public final void accept(Object obj) {
                        TextExcerptShapeDrawingHandlerAction.m38699x(TextExcerptShapeDrawingHandlerAction.this, obj);
                    }
                }).subscribe());
                unit = Unit.INSTANCE;
            }
            if (unit == null) {
                m38717z();
            }
        }
    }

    /* renamed from: r */
    public final boolean m38710r(ReaderSelection readerSelection, TouchPoint touchPoint) {
        BoxInfo downVirtualBoxInfo = getDownVirtualBoxInfo();
        if (downVirtualBoxInfo == null) {
            return false;
        }
        TouchPoint normalizeTouchPoint = normalizeTouchPoint(downVirtualBoxInfo, touchPoint);
        Iterator<T> it2 = readerSelection.rectangles().iterator();
        while (it2.hasNext()) {
            RectF copy = RectFKt.copy((RectF) it2.next());
            BoxInfoUtils.INSTANCE.noteNormalizeMatrix(downVirtualBoxInfo).mapRect(copy);
            if (copy.contains(normalizeTouchPoint.getX(), normalizeTouchPoint.getY())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: s */
    public final void m38711s(TouchPoint touchPoint, BoxInfo boxInfo) {
        Debug.INSTANCE.m32035d(TextExcerptShapeDrawingHandlerAction.class, "initTextExcerpt: ", new Object[0]);
        this.downPoint.set(touchPoint);
        setDownVirtualBoxInfo(boxInfo);
        this.currentSelection = null;
        this.contentPath = "";
        this.creationRenderer.initPaint(boxInfo);
        this.highlightViewHandler.initPaint();
    }

    public final void setContentPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentPath = str;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseExcerptShapeHandlerAction
    public void startExcerptEdit(@NotNull StartExcerptEditArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Debug.INSTANCE.m32035d(TextExcerptShapeDrawingHandlerAction.class, "startExcerptEdit: ", new Object[0]);
        TextExcerptEditContext create = TextExcerptEditContext.INSTANCE.create(args);
        new GetReaderSelectionByShapeAction(getEditorBundle(), args.getVirtualBoxInfo(), args.getShape()).build().flatMap(new C9319q(create)).doOnNext(new C9320r(args, create)).doOnNext(new C9322s()).doOnNext(new C9324t(create)).subscribe();
        this.editingContext = create;
    }

    /* renamed from: t */
    public final void m38712t(final ReaderSelection readerSelection) {
        if (readerSelection == null) {
            return;
        }
        RenderManager.addRenderer$default(EditorBundleKt.renderManager(getEditorBundle()), RenderManager.RENDER_KEY_TEXT_EXCERPT, new RenderManager.Renderer() { // from class: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$lowLatencyRender$1
            @Override // com.onyx.android.sdk.universal.editor.display.RenderManager.Renderer
            public void onDraw(@NotNull Canvas canvas) {
                TextExcerptCreationRenderer textExcerptCreationRenderer;
                Intrinsics.checkNotNullParameter(canvas, "canvas");
                if (TextExcerptShapeDrawingHandlerAction.this.isEditMode()) {
                    TextExcerptShapeDrawingHandlerAction.this.m38707o(canvas, readerSelection);
                } else {
                    textExcerptCreationRenderer = TextExcerptShapeDrawingHandlerAction.this.creationRenderer;
                    textExcerptCreationRenderer.lowLatencyRender(canvas, readerSelection);
                }
            }
        }, false, 4, null);
    }

    /* renamed from: u */
    public final void m38713u(List<TouchData> dataList) {
        ReaderSelection readerSelection = this.currentSelection;
        if (readerSelection == null || getDelayDragCaptureHelper().isDragging() || getExitOnTouchUp()) {
            return;
        }
        m38712t(readerSelection);
    }

    /* renamed from: v */
    public final void m38714v(List<TouchData> dataList) {
        if (isEditMode() || !isSingleTapUp(dataList)) {
            m38708p();
        } else {
            RenderManager.removeRenderer$default(EditorBundleKt.renderManager(getEditorBundle()), RenderManager.RENDER_KEY_TEXT_EXCERPT, false, 2, null);
        }
    }

    /* renamed from: w */
    public final void m38715w(TextExcerptEditContext editContext, Function1<? super Shape, Unit> onSaveCallback) {
        if (!editContext.getTransformShapes().isEmpty()) {
            onSaveCallback.invoke(editContext.ensureTransformShape());
        }
        editContext.reset();
    }

    /* renamed from: y */
    public final Observable<?> m38716y(TextExcerptEditContext editContext, final Shape shape) {
        Observable<?> flatMap = ensureNotePage(editContext).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$removeOriginalShape$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends ChangedShapeBean> apply(@NotNull final NotePage notePage) {
                Intrinsics.checkNotNullParameter(notePage, "notePage");
                TextExcerptShapeDrawingHandlerAction textExcerptShapeDrawingHandlerAction = TextExcerptShapeDrawingHandlerAction.this;
                final Shape shape2 = shape;
                return DocCommonActionsKt.createNoteObservable(textExcerptShapeDrawingHandlerAction, new Function1<NoteBundle, ChangedShapeBean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.TextExcerptShapeDrawingHandlerAction$removeOriginalShape$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final ChangedShapeBean invoke(@NotNull NoteBundle it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return NotePage.removeShape$default(NotePage.this, shape2, false, 2, null);
                    }
                });
            }
        }).flatMap(new C9315m(editContext, shape));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: z */
    public final void m38717z() {
        EditorBundleKt.postEvent(getEditorBundle(), new DismissExcerptPopupEvent());
        setExitOnTouchUp(false);
        this.currentSelection = null;
        RenderManager.removeRenderer$default(EditorBundleKt.renderManager(getEditorBundle()), RenderManager.RENDER_KEY_TEXT_EXCERPT, false, 2, null);
    }
}
