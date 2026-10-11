package com.onyx.android.sdk.universal.editor.action.handler;

import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.command.CommandManager;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import com.onyx.android.sdk.note.common.data.erase.EraseArgs;
import com.onyx.android.sdk.note.common.data.erase.EraseContext;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.event.CommandEvent;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction;
import com.onyx.android.sdk.universal.editor.data.EraserPropertyOption;
import com.onyx.android.sdk.universal.editor.data.ForceRenderNoteDirtyArgs;
import com.onyx.android.sdk.universal.editor.data.ForceRenderNoteDirtyResult;
import com.onyx.android.sdk.universal.editor.events.note.EndEraseEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartErasingArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000 I2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001IB\u0017\u0012\u0006\u0010D\u001a\u00020C\u0012\u0006\u0010F\u001a\u00020E¢\u0006\u0004\bG\u0010HJ\u001a\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001a\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\b\u0010\u000b\u001a\u00020\nH\u0002J\u0016\u0010\f\u001a\u00020\b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0012\u0010\u000e\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\u0003H\u0002J\u0016\u0010\u0011\u001a\u00020\n2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0002H\u0002J\u0016\u0010\u0013\u001a\u00020\n2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\bH\u0002J\u0014\u0010\u0016\u001a\u0006\u0012\u0002\b\u00030\u00052\u0006\u0010\u0014\u001a\u00020\bH\u0002J\b\u0010\u0018\u001a\u00020\u0017H\u0002J\u000e\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0014J\u0016\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\u0006\u0010\u001a\u001a\u00020\bH&J\u0016\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\u0006\u0010\u001a\u001a\u00020\bH&J\u001e\u0010$\u001a\u00020#2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020!J\u001c\u0010%\u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001d2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0010\u0010&\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0003H\u0014J\u0010\u0010'\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0003H\u0014J\u0010\u0010(\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0003H\u0014J\u0006\u0010*\u001a\u00020)J\u000e\u0010-\u001a\u00020\n2\u0006\u0010,\u001a\u00020+J\u0006\u0010.\u001a\u00020\bJ\u0014\u0010/\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\u0006\u0010\u0014\u001a\u00020\bJ\u000e\u00102\u001a\u00020\n2\u0006\u00101\u001a\u000200J\u0016\u00107\u001a\u0002062\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u00020\u001dJ\u0012\u00108\u001a\u0006\u0012\u0002\b\u00030\u00052\u0006\u0010\u0014\u001a\u00020\bJ\u0006\u00109\u001a\u00020\nR\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\"\u0010B\u001a\u000e\u0012\u0004\u0012\u00020?\u0012\u0004\u0012\u00020\b0>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010A¨\u0006J"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;", "", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "dataList", "Lio/reactivex/rxjava3/core/Observable;", "B", "r", "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;", "s", "", "z", "v", "touchData", "A", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "changedShapeBeans", C4921e.f26528e, "changedShapeBeanList", "y", "eraseContext", "x", "u", "", "t", BaiduYunConstant.CREATE, "downToUpEraseContext", "erasing", "endErase", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "pointList", "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;", "noteDrawingArgs", "Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;", "createEraseArgs", "collectErasePoint", "onTouchDown", "onTouchMove", "onTouchUp", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "createRenderContext", "Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;", NotificationCompat.CATEGORY_EVENT, "startErasing", "createEraseContext", "endEraseImpl", "", NotificationCompat.CATEGORY_MESSAGE, "log", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "boxInfo", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "loadNotePage", "display", "onCancelErase", "", C4921e.f26537n, Constants.OBJECT_SIG, "quitEvent", "", "", "l", "Ljava/util/Map;", "downToUpEraseContextMap", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaseEraseHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseEraseHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,299:1\n1855#2,2:300\n766#2:303\n857#2,2:304\n1855#2,2:306\n1#3:302\n*S KotlinDebug\n*F\n+ 1 BaseEraseHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction\n*L\n135#1:300,2\n208#1:303\n208#1:304,2\n209#1:306,2\n*E\n"})
/* loaded from: classes8.dex */
public abstract class BaseEraseHandlerAction extends BaseShapeHandlerAction<BaseEraseHandlerAction> {

    /* renamed from: m */
    public static final int f49103m = 5;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public Object quitEvent;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public Map<Long, EraseContext> downToUpEraseContextMap;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9133a<T> implements Predicate {

        /* renamed from: e */
        public static final C9133a<T> f49106e = new C9133a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9134b<T> implements Predicate {
        public C9134b() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseEraseHandlerAction.this.getEditorBundle().getUiBundle().getUiStateInfo().isEnabledEditShape();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9135c<T, R> implements Function {
        public C9135c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BaseEraseHandlerAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseEraseHandlerAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$d */
    /* loaded from: classes8.dex */
    public static final class C9136d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RectF f49109e;

        /* renamed from: f */
        public final /* synthetic */ BaseEraseHandlerAction f49110f;

        public C9136d(RectF rectF, BaseEraseHandlerAction baseEraseHandlerAction) {
            this.f49109e = rectF;
            this.f49110f = baseEraseHandlerAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ForceRenderNoteDirtyResult> apply(@NotNull BoxInfo boxInfo) {
            Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRect(this.f49110f, new ForceRenderNoteDirtyArgs(boxInfo.copy(), BoxInfoUtils.INSTANCE.mapToPageDisplayRectF(this.f49109e, boxInfo), false, true, false, false, 48, null));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$e */
    /* loaded from: classes8.dex */
    public static final class C9138e<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Set<String> f49112f;

        public C9138e(Set<String> set) {
            this.f49112f = set;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ForceRenderNoteDirtyResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(BaseEraseHandlerAction.this.getEditorBundle()).invalidateSliceByPages(this.f49112f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$f */
    /* loaded from: classes8.dex */
    public static final class C9139f<T, R> implements Function {
        public C9139f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BaseEraseHandlerAction apply(@NotNull ForceRenderNoteDirtyResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseEraseHandlerAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$g */
    /* loaded from: classes8.dex */
    public static final class C9140g<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<ChangedShapeBean> f49115f;

        public C9140g(List<ChangedShapeBean> list) {
            this.f49115f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BaseEraseHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BaseEraseHandlerAction.this.m38403y(this.f49115f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$h */
    /* loaded from: classes8.dex */
    public static final class C9141h<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<ChangedShapeBean> f49117f;

        public C9141h(List<ChangedShapeBean> list) {
            this.f49117f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BaseEraseHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BaseEraseHandlerAction.this.m38396o(this.f49117f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$i */
    /* loaded from: classes8.dex */
    public static final class C9142i<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EraseContext f49119f;

        public C9142i(EraseContext eraseContext) {
            this.f49119f = eraseContext;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull BaseEraseHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CommonEditorActionsKt.updateVirtualPages(BaseEraseHandlerAction.this, this.f49119f.getChangedPageSet());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$j */
    /* loaded from: classes8.dex */
    public static final class C9143j<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EraseContext f49120e;

        public C9143j(EraseContext eraseContext) {
            this.f49120e = eraseContext;
        }

        @NotNull
        /* renamed from: a */
        public final EraseContext m38414a(boolean z) {
            return this.f49120e;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m38414a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$k */
    /* loaded from: classes8.dex */
    public static final class C9144k<T, R> implements Function {
        public C9144k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends EraseContext> apply(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseEraseHandlerAction.this.m38398s(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$m */
    /* loaded from: classes8.dex */
    public static final class C9146m<T> implements Predicate {

        /* renamed from: f */
        public final /* synthetic */ List<TouchData> f49124f;

        public C9146m(List<TouchData> list) {
            this.f49124f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull EraseContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseEraseHandlerAction.this.isTouchDone(this.f49124f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$n */
    /* loaded from: classes8.dex */
    public static final class C9147n<T> implements Consumer {

        /* renamed from: e */
        public static final C9147n<T> f49125e = new C9147n<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull EraseContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            it2.setEraseState(2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$o */
    /* loaded from: classes8.dex */
    public static final class C9148o<T, R> implements Function {
        public C9148o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends EraseContext> apply(@NotNull EraseContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseEraseHandlerAction.this.endErase(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$p */
    /* loaded from: classes8.dex */
    public static final class C9149p<T> implements Consumer {
        public C9149p() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull EraseContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BaseEraseHandlerAction.this.m38402x(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$q */
    /* loaded from: classes8.dex */
    public static final class C9150q<T> implements Consumer {
        public C9150q() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull EraseContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BaseEraseHandlerAction.this.m38404z();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$r */
    /* loaded from: classes8.dex */
    public static final class C9151r<T, R> implements Function {
        public C9151r() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull EraseContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseEraseHandlerAction.this.m38400u(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$s */
    /* loaded from: classes8.dex */
    public static final class C9152s<T, R> implements Function {
        public C9152s() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BaseEraseHandlerAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseEraseHandlerAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$t */
    /* loaded from: classes8.dex */
    public static final class C9153t<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ EraseContext f49131e;

        public C9153t(EraseContext eraseContext) {
            this.f49131e = eraseContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull EraseContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49131e.setEraseState(0);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$u */
    /* loaded from: classes8.dex */
    public static final class C9154u<T> implements Consumer {
        public C9154u() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull EraseContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BaseEraseHandlerAction.this.m38402x(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseEraseHandlerAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader) {
        super(editorBundle, touchReader);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
        this.downToUpEraseContextMap = new LinkedHashMap();
    }

    /* renamed from: p */
    public static final boolean m38391p(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* renamed from: q */
    public static final void m38392q(BaseEraseHandlerAction this$0, EraseContext eraseContext) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(eraseContext, "$eraseContext");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) eraseContext.getErasingDataList());
        this$0.m38394A((TouchData) firstOrNull);
    }

    /* renamed from: w */
    public static final EraseContext m38393w(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (EraseContext) tmp0.invoke(obj);
    }

    /* renamed from: A */
    public final void m38394A(TouchData touchData) {
        boolean z = false;
        if (touchData != null && this.downToUpEraseContextMap.remove(Long.valueOf(touchData.getGroupId())) != null) {
            z = true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("removeDownToUpEraseContext, groupId = ");
        sb.append(touchData != null ? Long.valueOf(touchData.getGroupId()) : null);
        sb.append(", removeSuccess = ");
        sb.append(z);
        sb.append(", retainSize = ");
        sb.append(this.downToUpEraseContextMap.size());
        log(sb.toString());
    }

    /* renamed from: B */
    public final Observable<?> m38395B(List<TouchData> dataList) {
        if (isTouchDone(dataList)) {
            return m38397r(dataList);
        }
        Observable<?> just = Observable.just(this);
        Intrinsics.checkNotNull(just);
        return just;
    }

    @NotNull
    public final TouchPointList collectErasePoint(@NotNull BoxInfo virtualBoxInfo, @NotNull List<TouchData> dataList) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        TouchPointList touchPointList = new TouchPointList();
        Iterator<T> it2 = dataList.iterator();
        while (it2.hasNext()) {
            touchPointList.add(((TouchData) it2.next()).getTouchPoint().copy());
        }
        normalizeTouchPoints(virtualBoxInfo, touchPointList);
        return touchPointList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<BaseEraseHandlerAction> create() {
        Observable filter = RxjavaKt.touchBuffer$default(subscribeTouchData(), 0L, 0, getMainUIScheduler(), 3, null).filter(C9133a.f49106e).filter(new C9134b());
        Intrinsics.checkNotNullExpressionValue(filter, "filter(...)");
        Observable map = RxjavaKt.flatMapIf(filter, new Function1<List<? extends TouchData>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$create$3
            {
                super(1);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<TouchData> it2) {
                boolean m38399t;
                Intrinsics.checkNotNullParameter(it2, "it");
                m38399t = BaseEraseHandlerAction.this.m38399t();
                return Boolean.valueOf(m38399t);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends TouchData> list) {
                return invoke2((List<TouchData>) list);
            }
        }, new Function1<List<? extends TouchData>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$create$4
            {
                super(1);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Observable<? extends Object> invoke2(@NotNull List<TouchData> it2) {
                Observable<? extends Object> m38397r;
                Intrinsics.checkNotNullParameter(it2, "it");
                m38397r = BaseEraseHandlerAction.this.m38397r(it2);
                return m38397r;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(List<? extends TouchData> list) {
                return invoke2((List<TouchData>) list);
            }
        }, new Function1<List<? extends TouchData>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$create$5
            {
                super(1);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Observable<? extends Object> invoke2(@NotNull List<TouchData> it2) {
                Observable<? extends Object> m38395B;
                Intrinsics.checkNotNullParameter(it2, "it");
                m38395B = BaseEraseHandlerAction.this.m38395B(it2);
                return m38395B;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(List<? extends TouchData> list) {
                return invoke2((List<TouchData>) list);
            }
        }).map(new C9135c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final EraseArgs createEraseArgs(@NotNull BoxInfo virtualBoxInfo, @NotNull TouchPointList pointList, @NotNull NoteDrawingArgs noteDrawingArgs) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        Intrinsics.checkNotNullParameter(noteDrawingArgs, "noteDrawingArgs");
        return new EraseArgs().setNormalizeScale(MatrixKt.getMinScale(BoxInfoUtils.INSTANCE.noteNormalizeMatrix(virtualBoxInfo))).setDrawRadius(noteDrawingArgs.getEraserWidth() / 2).setPartEraseTrackPoints(pointList);
    }

    @NotNull
    public final EraseContext createEraseContext() {
        Set<Integer> set;
        EraseContext eraseContext = new EraseContext();
        EraserPropertyOption eraserPropertyOption = EraserPropertyOption.INSTANCE;
        set = CollectionsKt___CollectionsKt.toSet((Iterable) eraserPropertyOption.getEraserElementsOnlyOption().get());
        eraseContext.setOnlyEraseShapeTypes(set);
        eraseContext.setEraseAllContains(eraserPropertyOption.getEraserAllContainsSwitchOption().get());
        return eraseContext;
    }

    @NotNull
    public final RenderContext createRenderContext() {
        return new RenderContext(new Paint(), new Matrix());
    }

    @NotNull
    public final Observable<?> display(@NotNull EraseContext eraseContext) {
        RectF copy;
        Intrinsics.checkNotNullParameter(eraseContext, "eraseContext");
        RectF eraseRect = eraseContext.getEraseRect();
        if (eraseRect == null || (copy = RectFKt.copy(eraseRect)) == null) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        eraseContext.resetEraseRect();
        Set<String> changedPageSet = eraseContext.getChangedPageSet();
        final List<BoxInfo> findIntersectsVisibleBoxList = EditorBundleKt.findIntersectsVisibleBoxList(getEditorBundle(), changedPageSet);
        if (CollectionKt.isNullOrEmpty(findIntersectsVisibleBoxList)) {
            Observable<?> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        final Function1<String, Boolean> function1 = new Function1<String, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$display$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull final String pageId) {
                Intrinsics.checkNotNullParameter(pageId, "pageId");
                return Boolean.valueOf(CollectionKt.contains(findIntersectsVisibleBoxList, new Function1<BoxInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$display$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull BoxInfo it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.valueOf(Intrinsics.areEqual(it2.getId(), pageId));
                    }
                }));
            }
        };
        changedPageSet.removeIf(new java.util.function.Predicate() { // from class: com.sunia.HTREnginev2.fn
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m38391p;
                m38391p = BaseEraseHandlerAction.m38391p(Function1.this, obj);
                return m38391p;
            }
        });
        Observable concatMap = Observable.fromIterable(findIntersectsVisibleBoxList).concatMap(new C9136d(copy, this));
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<?> map = RxjavaKt.takeLastOne(concatMap).doOnNext(new C9138e(changedPageSet)).map(new C9139f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public abstract Observable<EraseContext> endErase(@NotNull EraseContext downToUpEraseContext);

    @NotNull
    public final Observable<EraseContext> endEraseImpl(@NotNull final EraseContext eraseContext) {
        List list;
        Intrinsics.checkNotNullParameter(eraseContext, "eraseContext");
        list = CollectionsKt___CollectionsKt.toList(eraseContext.getChangedShapeBeans());
        Observable<EraseContext> doFinally = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C9140g(list)).doOnNext(new C9141h(list)).flatMap(new C9142i(eraseContext)).observeOn(AndroidSchedulers.mainThread()).map(new C9143j(eraseContext)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.gn
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                BaseEraseHandlerAction.m38392q(BaseEraseHandlerAction.this, eraseContext);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    @NotNull
    public abstract Observable<EraseContext> erasing(@NotNull EraseContext downToUpEraseContext);

    @NotNull
    public final NotePage loadNotePage(@NotNull NoteBundle noteBundle, @NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        NoteDocNotePage noteDocNotePage = NoteDocNotePage.INSTANCE;
        NoteDocument noteDoc = noteBundle.getNoteDoc();
        BoxInfo noteInfo = boxInfo.getNoteInfo();
        String id = noteInfo != null ? noteInfo.getId() : null;
        if (id == null) {
            id = "";
        }
        return noteDocNotePage.ensureNotePage(noteDoc, id);
    }

    public final void log(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), msg, new Object[0]);
    }

    /* renamed from: o */
    public final void m38396o(List<ChangedShapeBean> changedShapeBeans) {
        CommandManager commandManager = EditorBundleKt.noteBundle(getEditorBundle()).getCommandManager();
        ArrayList arrayList = new ArrayList();
        for (Object obj : changedShapeBeans) {
            if (!((ChangedShapeBean) obj).isEmpty()) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            UndoRedoCommand addChangedShapeBean = new UndoRedoCommand().addChangedShapeBean((ChangedShapeBean) it2.next());
            commandManager.addCommand(addChangedShapeBean);
            EditorBundleKt.noteBundle(getEditorBundle()).postEvent(new CommandEvent(addChangedShapeBean));
        }
    }

    public final void onCancelErase() {
        Object lastOrNull;
        if (this.downToUpEraseContextMap.isEmpty()) {
            return;
        }
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull(this.downToUpEraseContextMap.values());
        EraseContext eraseContext = (EraseContext) lastOrNull;
        if (eraseContext == null || eraseContext.isEraseComplete() || eraseContext.isErasing()) {
            return;
        }
        eraseContext.setEraseState(2);
        Observable<EraseContext> doOnNext = endErase(eraseContext).doOnNext(new C9154u());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchMove(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchUp(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
    }

    /* renamed from: r */
    public final Observable<?> m38397r(List<TouchData> dataList) {
        Observable map = Observable.just(dataList).flatMap(new C9144k()).doOnError(new Consumer() { // from class: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction.l
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                BaseEraseHandlerAction.this.onError(p0);
            }
        }).filter(new C9146m(dataList)).doOnNext(C9147n.f49125e).flatMap(new C9148o()).doOnNext(new C9149p()).doOnNext(new C9150q()).flatMap(new C9151r()).map(new C9152s());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.onErrorReturnItemWithLog(map, this);
    }

    /* renamed from: s */
    public final Observable<EraseContext> m38398s(List<TouchData> dataList) {
        List<TouchData> mutableList;
        boolean isTouchDone = isTouchDone(dataList);
        EraseContext m38401v = m38401v(dataList);
        List<TouchData> list = dataList;
        m38401v.getDownToUpDataList().addAll(list);
        if (m38401v.isErasing() && !isTouchDone) {
            m38401v.getErasingBufferDataList().addAll(list);
            Observable<EraseContext> just = Observable.just(m38401v);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        if (!m38401v.getErasingBufferDataList().isEmpty()) {
            dataList = m38401v.detachErasingBufferDataList();
            dataList.addAll(list);
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) dataList);
        m38401v.setErasingDataList(mutableList);
        m38401v.setEraseState(1);
        Observable<EraseContext> doOnNext = erasing(m38401v).doOnNext(new C9153t(m38401v));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    public final void startErasing(@NotNull StartErasingArgs event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.quitEvent = event.getQuitEvent();
        TouchData touchData = event.getTouchData();
        log("startErasing, performTouchDown");
        performTouchDown(touchData);
    }

    /* renamed from: t */
    public final boolean m38399t() {
        return !filterByFingerGesture(new Function1<HandlerManager, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$filterByFingerGesture$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull HandlerManager it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.hasMultiplePoint());
            }
        });
    }

    /* renamed from: u */
    public final Observable<?> m38400u(EraseContext eraseContext) {
        if (!(!eraseContext.getChangedPageSet().isEmpty()) && !eraseContext.getDownToUpDataList().isEmpty()) {
            final List copy = CollectionKt.copy(eraseContext.getDownToUpDataList());
            return RxjavaKt.flatMapIf(CommonEditorActionsKt.hitTestVisibleBoxObservable(getEditorBundle(), (List<TouchData>) copy), new Function1<BoxInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$forceRenderTrackRectIfNeed$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull BoxInfo it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(!it2.getOriginRectF().isEmpty());
                }
            }, new Function1<BoxInfo, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$forceRenderTrackRectIfNeed$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Observable<? extends Object> invoke(@NotNull BoxInfo box) {
                    Intrinsics.checkNotNullParameter(box, "box");
                    return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRect(BaseEraseHandlerAction.this, new ForceRenderNoteDirtyArgs(box.copy(), BoxInfoUtils.INSTANCE.mapToPageDisplayRectF(BaseEraseHandlerAction.this.collectErasePoint(box, copy).getBoundingRect(), box), false, true, false, false, 48, null));
                }
            });
        }
        Observable<?> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: v */
    public final EraseContext m38401v(List<TouchData> dataList) {
        Object first;
        if (hasTouchDown(dataList) && this.downToUpEraseContextMap.size() >= 5) {
            this.downToUpEraseContextMap.clear();
            ForceRenderSliceListActionsKt.logW(this, "downToUpEraseContextMap.size = " + this.downToUpEraseContextMap.size() + ", clear, maybe missing undo command");
        }
        Map<Long, EraseContext> map = this.downToUpEraseContextMap;
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) dataList);
        Long valueOf = Long.valueOf(((TouchData) first).getGroupId());
        final Function1<Long, EraseContext> function1 = new Function1<Long, EraseContext>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction$getDownToUpEraseContext$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final EraseContext invoke(@NotNull Long it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return BaseEraseHandlerAction.this.createEraseContext();
            }
        };
        EraseContext computeIfAbsent = map.computeIfAbsent(valueOf, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.en
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                EraseContext m38393w;
                m38393w = BaseEraseHandlerAction.m38393w(Function1.this, obj);
                return m38393w;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    /* renamed from: x */
    public final void m38402x(EraseContext eraseContext) {
        Object firstOrNull;
        EditorBundle editorBundle = getEditorBundle();
        List<Shape> changedRemovedShapes = eraseContext.getChangedRemovedShapes();
        HashSet<Integer> hitTestShapeTypes = eraseContext.getHitTestShapeTypes();
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) eraseContext.getDownToUpDataList());
        EditorBundleKt.postEvent(editorBundle, new EndEraseEvent(changedRemovedShapes, hitTestShapeTypes, isSingleTapUp((TouchData) firstOrNull, getTouchDoneData(eraseContext.getDownToUpDataList()))));
    }

    /* renamed from: y */
    public final void m38403y(List<ChangedShapeBean> changedShapeBeanList) {
        NoteBundle noteBundle = EditorBundleKt.noteBundle(getEditorBundle());
        EraseContext.Companion companion = EraseContext.INSTANCE;
        noteBundle.postAddShapeEvent(companion.getAddedShapeList(changedShapeBeanList));
        EditorBundleKt.noteBundle(getEditorBundle()).postRemoveShapeEvent(companion.getRemovedShapes(changedShapeBeanList));
    }

    /* renamed from: z */
    public final void m38404z() {
        Object obj = this.quitEvent;
        if (obj != null) {
            EditorBundleKt.postEvent(getEditorBundle(), obj);
        }
        this.quitEvent = null;
    }
}
