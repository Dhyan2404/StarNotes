package com.onyx.android.sdk.universal.editor.handler.shape;

import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.note.common.utils.ShapeTextUtils;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.note.request.textinput.SaveTextShapesRequest;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextAlignType;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.textbox.data.EditorStyleInfo;
import com.onyx.android.sdk.textbox.event.SelectionChangeEvent;
import com.onyx.android.sdk.textbox.event.SwitchToNextShapeEvent;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.HitTestVisibleBoxAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNotePageAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction;
import com.onyx.android.sdk.universal.editor.action.layer.MoveShapesToLayerAction;
import com.onyx.android.sdk.universal.editor.action.link.CreateShapeLinkBeanAction;
import com.onyx.android.sdk.universal.editor.action.shape.GetReferenceShapeAction;
import com.onyx.android.sdk.universal.editor.action.shape.PlaceShapesAction;
import com.onyx.android.sdk.universal.editor.action.textinput.HitTestTextShapeAction;
import com.onyx.android.sdk.universal.editor.action.textinput.StartTextTransformAction;
import com.onyx.android.sdk.universal.editor.action.textinput.SwitchToNextTextShapeAction;
import com.onyx.android.sdk.universal.editor.events.app.LongPressEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScaleBeginEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScrollBeginEvent;
import com.onyx.android.sdk.universal.editor.events.note.AbortEditTextEvent;
import com.onyx.android.sdk.universal.editor.events.note.CopyEditTextShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.CreateEditTextShapeLinkEvent;
import com.onyx.android.sdk.universal.editor.events.note.EditTextShapeUpdateResultEvent;
import com.onyx.android.sdk.universal.editor.events.note.HideEditTextShapeSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.MoveShapesToLayerEvent;
import com.onyx.android.sdk.universal.editor.events.note.PlaceEditTextShapesEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.RedoEvent;
import com.onyx.android.sdk.universal.editor.events.note.SaveEditTextShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.SaveTextShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowEditTextShapeSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowInitInputTextEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextEditFinishEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextEditStartEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextShapeHitTestEvent;
import com.onyx.android.sdk.universal.editor.events.note.TextStartTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.TransformEditEvent;
import com.onyx.android.sdk.universal.editor.events.note.UndoEvent;
import com.onyx.android.sdk.universal.editor.events.note.UpdateTextInputMenuEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler;
import com.onyx.android.sdk.universal.editor.request.page.FindVisibleBoxInfoByNotePageIdRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000ä\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001dB\u000f\u0012\u0006\u0010a\u001a\u00020`¢\u0006\u0004\bb\u0010cJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\u000b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002J\b\u0010\f\u001a\u00020\u0007H\u0002J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0004H\u0002J9\u0010\u0016\u001a\r\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0002\b\u00152\u0006\u0010\r\u001a\u00020\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u0002H\u0002J8\u0010\u001b\u001a\u00020\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0012\u001a\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\u0002H\u0002J\b\u0010\u001c\u001a\u00020\u0002H\u0002J\u0012\u0010\u001e\u001a\u00020\u00072\b\b\u0002\u0010\u001d\u001a\u00020\u0002H\u0002J\b\u0010\u001f\u001a\u00020\u0007H\u0002J\u0010\u0010 \u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\"\u001a\u00020!H\u0002J\u0010\u0010#\u001a\u00020!2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\b\u0010%\u001a\u00020$H\u0002J\u0010\u0010(\u001a\u00020\u00072\u0006\u0010'\u001a\u00020&H\u0002J\"\u0010+\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0)0\u00132\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\t0)H\u0002J\u0016\u0010-\u001a\b\u0012\u0004\u0012\u00020$0\u00132\u0006\u0010,\u001a\u00020\u000fH\u0002J\b\u0010.\u001a\u00020\u0007H\u0016J\b\u0010/\u001a\u00020\u0007H\u0016J\u0010\u00100\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u00103\u001a\u00020\u00072\u0006\u00102\u001a\u000201H\u0016J\u0010\u00104\u001a\u00020\u00072\u0006\u00102\u001a\u000201H\u0016J\u0010\u00107\u001a\u00020\u00072\u0006\u00106\u001a\u000205H\u0007J\u0010\u0010:\u001a\u00020\u00072\u0006\u00109\u001a\u000208H\u0007J\u0010\u0010<\u001a\u00020\u00072\u0006\u00109\u001a\u00020;H\u0007J\u0010\u0010>\u001a\u00020\u00072\u0006\u00109\u001a\u00020=H\u0007J\u0010\u0010@\u001a\u00020\u00072\u0006\u00109\u001a\u00020?H\u0007J\u0010\u0010B\u001a\u00020\u00072\u0006\u00109\u001a\u00020AH\u0007J\u0010\u0010D\u001a\u00020\u00072\u0006\u00109\u001a\u00020CH\u0016J\u0010\u0010F\u001a\u00020\u00072\u0006\u00109\u001a\u00020EH\u0016J\u0010\u0010H\u001a\u00020\u00072\u0006\u00109\u001a\u00020GH\u0007J\u0010\u0010J\u001a\u00020\u00072\u0006\u00109\u001a\u00020IH\u0007J\u0010\u0010L\u001a\u00020\u00072\u0006\u00109\u001a\u00020KH\u0007J\u0010\u0010N\u001a\u00020\u00072\u0006\u00109\u001a\u00020MH\u0007J\u0010\u0010P\u001a\u00020\u00072\u0006\u00109\u001a\u00020OH\u0007J\u0010\u0010R\u001a\u00020\u00072\u0006\u00109\u001a\u00020QH\u0007J\u0010\u0010T\u001a\u00020\u00072\u0006\u00109\u001a\u00020SH\u0007J\u0010\u0010V\u001a\u00020\u00072\u0006\u00109\u001a\u00020UH\u0007J\u0010\u0010X\u001a\u00020\u00072\u0006\u00109\u001a\u00020WH\u0007J\u0010\u0010Z\u001a\u00020\u00072\u0006\u00109\u001a\u00020YH\u0007R\u0018\u0010\\\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010[R\u0018\u0010^\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010]R\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010_¨\u0006e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;", "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;", "", C4921e.f26528e, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "d", "", "u", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", "w", "e", "point", "l", "", "textToInsert", "createNew", "editForAll", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;", "Lio/reactivex/rxjava3/annotations/NonNull;", "m", "shape", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "createNewShape", "p", "v", "needSave", "b", C6999h.f39688c, "t", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", C6997f.f39671c, C6998g.f39679a, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "i", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "shapeTransformBean", "s", "", "shapeList", C4921e.f26537n, CouchFieldKey.KEY_PAGE_ID, "j", "onActivate", "onDeactivate", "onSingleTapUp", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "onTouchDown", "onTouchUp", "Lcom/onyx/android/sdk/universal/editor/events/note/AbortEditTextEvent;", "even", "onRefreshEditText", "Lcom/onyx/android/sdk/universal/editor/events/note/PlaceEditTextShapesEvent;", NotificationCompat.CATEGORY_EVENT, "onPlaceEditTextShapesEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/CreateEditTextShapeLinkEvent;", "onCreateEditTextShapeLinkEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/CopyEditTextShapeEvent;", "onCopyEditTextShapeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/EditTextShapeUpdateResultEvent;", "onEditTextShapeUpdateResultEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;", "onMoveShapesToLayerEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;", "onUndoEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;", "onRedoEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowInitInputTextEvent;", "onShowInitInputTextEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TextShapeHitTestEvent;", "onTextShapeHitTestEvent", "Lcom/onyx/android/sdk/textbox/event/SwitchToNextShapeEvent;", "onSwitchToNextShapeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SaveTextShapeEvent;", "onSaveTextShapeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/TextStartTransformEvent;", "onStartTransformEvent", "Lcom/onyx/android/sdk/textbox/event/SelectionChangeEvent;", "onSelectionChangeEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;", "onScrollBeginEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;", "onScaleBeginEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/LongPressEvent;", "onLongPressEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;", "onQuitTransformEvent", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "TextInputHandlerAction", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTextInputHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextInputHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,502:1\n332#2:503\n1#3:504\n*S KotlinDebug\n*F\n+ 1 TextInputHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler\n*L\n137#1:503\n*E\n"})
/* loaded from: classes8.dex */
public final class TextInputHandler extends BaseShapeHandler {

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public BoxInfo virtualBoxInfo;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public RenderContext renderContext;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Shape textShape;

    @Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0014J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0016¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$TextInputHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "touchReader", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "onTouchContentOutside", "", "touchData", "virtualBoxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public final class TextInputHandlerAction extends BaseShapeHandlerAction<TouchData> {

        /* renamed from: k */
        public final /* synthetic */ TextInputHandler f52270k;

        /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$TextInputHandlerAction$a */
        /* loaded from: classes8.dex */
        public static final class C10437a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ TextInputHandler f52271e;

            public C10437a(TextInputHandler textInputHandler) {
                this.f52271e = textInputHandler;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull TouchData it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f52271e.onTouchData(it2);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TextInputHandlerAction(@NotNull TextInputHandler textInputHandler, @NotNull EditorBundle editorBundle, ScribbleTouchReader touchReader) {
            super(editorBundle, touchReader);
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(touchReader, "touchReader");
            this.f52270k = textInputHandler;
        }

        @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
        @NotNull
        public Observable<TouchData> create() {
            Observable<TouchData> doOnNext = subscribeTouchData().doOnNext(new C10437a(this.f52270k));
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            return doOnNext;
        }

        @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
        public void onTouchContentOutside(@NotNull TouchData touchData, @NotNull BoxInfo virtualBoxInfo) {
            Intrinsics.checkNotNullParameter(touchData, "touchData");
            Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
            super.onTouchContentOutside(touchData, virtualBoxInfo);
            this.f52270k.m41066v();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$a */
    /* loaded from: classes8.dex */
    public static final class C10438a<T, R> implements Function {
        public C10438a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NotePage> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureNotePageAction(TextInputHandler.this.getEditorBundle(), it2).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$a0 */
    /* loaded from: classes8.dex */
    public static final class C10439a0<T> implements Predicate {

        /* renamed from: e */
        public static final C10439a0<T> f52273e = new C10439a0<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull SwitchToNextTextShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getNextShape() != null;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$b */
    /* loaded from: classes8.dex */
    public static final class C10440b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Shape f52275f;

        public C10440b(Shape shape) {
            this.f52275f = shape;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveTextShapesRequest apply(@NotNull NotePage it2) {
            List listOfNotNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteBundle noteBundle = EditorBundleKt.noteBundle(TextInputHandler.this.getEditorBundle());
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(this.f52275f);
            return new SaveTextShapesRequest(noteBundle, it2, listOfNotNull);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$b0 */
    /* loaded from: classes8.dex */
    public static final class C10441b0<T> implements Consumer {
        public C10441b0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SwitchToNextTextShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextInputHandler.this.m41066v();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$c */
    /* loaded from: classes8.dex */
    public static final class C10442c<T, R> implements Function {
        public C10442c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveTextShapesRequest> apply(@NotNull SaveTextShapesRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RxBaseAppActionKt.submitRequestToNote(TextInputHandler.this.getEditorBundle(), it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$c0 */
    /* loaded from: classes8.dex */
    public static final class C10443c0<T> implements Predicate {
        public C10443c0() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull SwitchToNextTextShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextInputHandler.this.m41061o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$d */
    /* loaded from: classes8.dex */
    public static final class C10444d<T> implements Consumer {
        public C10444d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextInputHandler.this.virtualBoxInfo = it2.getVirtualPageBoxInfo();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$d0 */
    /* loaded from: classes8.dex */
    public static final class C10445d0<T> implements Consumer {
        public C10445d0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SwitchToNextTextShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextInputHandler.this.m41062p(it2.getNextShape(), it2.getNotePage(), null, false, false);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$e */
    /* loaded from: classes8.dex */
    public static final class C10446e<T, R> implements Function {
        public C10446e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BoxInfo boxInfo = TextInputHandler.this.virtualBoxInfo;
            return boxInfo == null ? TextInputHandler.this.m41056i() : boxInfo;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$e0 */
    /* loaded from: classes8.dex */
    public static final class C10447e0<T, R> implements Function {
        public C10447e0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NotePage> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureNotePageAction(TextInputHandler.this.getEditorBundle(), TextInputHandler.this.m41056i()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$f */
    /* loaded from: classes8.dex */
    public static final class C10448f<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f52283e;

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f52284f;

        /* JADX WARN: Multi-variable type inference failed */
        public C10448f(List<Shape> list, List<? extends Shape> list2) {
            this.f52283e = list;
            this.f52284f = list2;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f52283e.addAll(GetReferenceShapeAction.mergeShapeList$default(it2, false, 1, null));
            this.f52283e.addAll(this.f52284f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$f0 */
    /* loaded from: classes8.dex */
    public static final class C10449f0<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ TextShapeHitTestEvent f52286f;

        public C10449f0(TextShapeHitTestEvent textShapeHitTestEvent) {
            this.f52286f = textShapeHitTestEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextInputHandler.this.m41062p(this.f52286f.getShape(), it2, null, this.f52286f.getReadOnly(), false);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$g */
    /* loaded from: classes8.dex */
    public static final class C10450g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f52287e;

        public C10450g(List<Shape> list) {
            this.f52287e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull GetReferenceShapeAction it2) {
            List<Shape> distinct;
            Intrinsics.checkNotNullParameter(it2, "it");
            distinct = CollectionsKt___CollectionsKt.distinct(this.f52287e);
            return distinct;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$h */
    /* loaded from: classes8.dex */
    public static final class C10451h<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ String f52289f;

        /* renamed from: g */
        public final /* synthetic */ boolean f52290g;

        public C10451h(String str, boolean z) {
            this.f52289f = str;
            this.f52290g = z;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HitTestTextShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextInputHandler.this.m41062p(it2.getShape(), it2.getNotePage(), this.f52289f, this.f52290g && it2.getIsHitTestSelectedShapes(), it2.getCreateNew());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$i */
    /* loaded from: classes8.dex */
    public static final class C10452i<T> implements Consumer {
        public C10452i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TextInputHandler it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextInputHandler.this.m41066v();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$j */
    /* loaded from: classes8.dex */
    public static final class C10453j<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ CreateEditTextShapeLinkEvent f52293f;

        public C10453j(CreateEditTextShapeLinkEvent createEditTextShapeLinkEvent) {
            this.f52293f = createEditTextShapeLinkEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ShapeLinkBean> apply(@NotNull TextInputHandler it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CreateShapeLinkBeanAction(TextInputHandler.this.getEditorBundle(), this.f52293f.getShapes()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$k */
    /* loaded from: classes8.dex */
    public static final class C10454k<T> implements Consumer {

        /* renamed from: e */
        public static final C10454k<T> f52294e = new C10454k<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShapeLinkBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.copyShapeLink(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$l */
    /* loaded from: classes8.dex */
    public static final class C10455l<T> implements Consumer {

        /* renamed from: e */
        public static final C10455l<T> f52295e = new C10455l<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShapeLinkBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.create_link_success, false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$m */
    /* loaded from: classes8.dex */
    public static final class C10456m<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Shape f52297f;

        public C10456m(Shape shape) {
            this.f52297f = shape;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            List listOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = TextInputHandler.this.getEditorBundle();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(this.f52297f);
            EditorBundleKt.postEvent(editorBundle, new ShowEditTextShapeSelectionMenuEvent(it2, listOf));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$n */
    /* loaded from: classes8.dex */
    public static final class C10457n<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ NotePage f52299f;

        /* renamed from: g */
        public final /* synthetic */ Shape f52300g;

        /* renamed from: h */
        public final /* synthetic */ boolean f52301h;

        /* renamed from: i */
        public final /* synthetic */ boolean f52302i;

        public C10457n(NotePage notePage, Shape shape, boolean z, boolean z2) {
            this.f52299f = notePage;
            this.f52300g = shape;
            this.f52301h = z;
            this.f52302i = z2;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(TextInputHandler.this.getEditorBundle(), new TextEditStartEvent(TextInputHandler.this.m41054g(this.f52299f), this.f52299f, TextInputHandler.this.m41056i(), this.f52300g, this.f52301h, this.f52302i));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$o */
    /* loaded from: classes8.dex */
    public static final class C10458o<T> implements Consumer {
        public C10458o() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull PlaceShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextInputHandler.this.m41050b(true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$p */
    /* loaded from: classes8.dex */
    public static final class C10459p<T> implements Consumer {
        public C10459p() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextInputHandler.this.virtualBoxInfo = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$q */
    /* loaded from: classes8.dex */
    public static final class C10460q<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ ShowInitInputTextEvent f52306f;

        public C10460q(ShowInitInputTextEvent showInitInputTextEvent) {
            this.f52306f = showInitInputTextEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HitTestTextShapeAction> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextInputHandler textInputHandler = TextInputHandler.this;
            return textInputHandler.m41060m(textInputHandler.normalizeTouchPoint(textInputHandler.m41056i(), this.f52306f.getInsertPoint()), this.f52306f.getTextToInsert(), true, this.f52306f.getEditForAll());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$r */
    /* loaded from: classes8.dex */
    public static final class C10461r<T> implements Predicate {

        /* renamed from: e */
        public static final C10461r<T> f52307e = new C10461r<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull HitTestVisibleBoxAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.isInsideHitBox();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$s */
    /* loaded from: classes8.dex */
    public static final class C10462s<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ TouchData f52308e;

        public C10462s(TouchData touchData) {
            this.f52308e = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HitTestVisibleBoxAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f52308e.setBoxInfo(it2.ensureBoxInfo());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$t */
    /* loaded from: classes8.dex */
    public static final class C10463t<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ TouchData f52309e;

        public C10463t(TouchData touchData) {
            this.f52309e = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TouchData apply(@NotNull HitTestVisibleBoxAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f52309e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$u */
    /* loaded from: classes8.dex */
    public static final class C10464u<T> implements Consumer {
        public C10464u() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextInputHandler.this.onTouchDown(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$v */
    /* loaded from: classes8.dex */
    public static final class C10465v<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ TouchPoint f52311e;

        public C10465v(TouchPoint touchPoint) {
            this.f52311e = touchPoint;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TouchData apply(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TouchPoint touchPoint = this.f52311e;
            BoxInfo boxInfo = it2.getBoxInfo();
            return TouchPointKt.toUpTouchData$default(touchPoint, null, boxInfo != null ? boxInfo.copy() : null, 1, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$w */
    /* loaded from: classes8.dex */
    public static final class C10466w<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ TouchData f52313f;

        public C10466w(TouchData touchData) {
            this.f52313f = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextInputHandler.this.m41065u(this.f52313f.getTouchPoint());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$x */
    /* loaded from: classes8.dex */
    public static final class C10467x<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ShapeTransformBean f52314e;

        public C10467x(ShapeTransformBean shapeTransformBean) {
            this.f52314e = shapeTransformBean;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f52314e.setTransformShapes(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$y */
    /* loaded from: classes8.dex */
    public static final class C10468y<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Shape f52316f;

        public C10468y(Shape shape) {
            this.f52316f = shape;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextInputHandler.this.m41057j(this.f52316f.getPageUniqueId());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$z */
    /* loaded from: classes8.dex */
    public static final class C10469z<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ ShapeTransformBean f52318f;

        public C10469z(ShapeTransformBean shapeTransformBean) {
            this.f52318f = shapeTransformBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartTextTransformAction> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new StartTextTransformAction(TextInputHandler.this.getEditorBundle(), TextInputHandler.this.m41053f(), TextInputHandler.this.m41056i(), this.f52318f).build();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextInputHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    /* renamed from: c */
    public static /* synthetic */ void m41046c(TextInputHandler textInputHandler, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        textInputHandler.m41050b(z);
    }

    /* renamed from: n */
    public static /* synthetic */ Observable m41047n(TextInputHandler textInputHandler, TouchPoint touchPoint, String str, boolean z, boolean z2, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        if ((i & 8) != 0) {
            z2 = true;
        }
        return textInputHandler.m41060m(touchPoint, str, z, z2);
    }

    /* renamed from: q */
    public static /* synthetic */ void m41048q(TextInputHandler textInputHandler, Shape shape, NotePage notePage, String str, boolean z, boolean z2, int i, Object obj) {
        if ((i & 8) != 0) {
            z = true;
        }
        boolean z3 = z;
        if ((i & 16) != 0) {
            z2 = false;
        }
        textInputHandler.m41062p(shape, notePage, str, z3, z2);
    }

    /* renamed from: r */
    public static final void m41049r(TextInputHandler this$0, ShapeTransformBean shapeTransformBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(shapeTransformBean, "$shapeTransformBean");
        this$0.m41063s(shapeTransformBean);
    }

    /* renamed from: b */
    public final void m41050b(boolean needSave) {
        Shape shape = this.textShape;
        if (shape == null) {
            return;
        }
        RenderContext m41053f = m41053f();
        EditorBundleKt.postEvent(getEditorBundle(), new TextEditFinishEvent(shape, TextRenderUtil.INSTANCE.getRenderRect(m41053f), false, needSave));
        m41053f.clearSelectionRect();
        m41052e();
        EditorBundleKt.shapeHandlerManager(getEditorBundle()).restoreUserProvider();
        EditorBundleKt.postEvent(getEditorBundle(), new HideEditTextShapeSelectionMenuEvent());
    }

    /* renamed from: d */
    public final boolean m41051d(TouchPoint touchPoint) {
        Shape shape = this.textShape;
        if (shape == null) {
            return false;
        }
        TouchPoint normalizeTouchPoint = normalizeTouchPoint(m41056i(), touchPoint);
        RectF boundingRect = shape.getBoundingRect();
        PointF pointF = TouchPointKt.toPointF(normalizeTouchPoint);
        if (boundingRect.contains(pointF.x, pointF.y)) {
            return true;
        }
        m41066v();
        return true;
    }

    /* renamed from: e */
    public final void m41052e() {
        m41067w(null);
    }

    /* renamed from: f */
    public final RenderContext m41053f() {
        if (this.renderContext == null) {
            this.renderContext = new RenderContext(new Paint(), new Matrix());
        }
        RenderContext renderContext = this.renderContext;
        Intrinsics.checkNotNull(renderContext);
        return renderContext;
    }

    /* renamed from: g */
    public final RenderContext m41054g(NotePage notePage) {
        RenderContext m41053f = m41053f();
        m41053f.getRenderMeasure().setPageInfo(notePage.getPageInfo());
        return m41053f;
    }

    /* renamed from: h */
    public final void m41055h() {
        Shape shape = this.textShape;
        if (shape == null) {
            return;
        }
        m41057j(shape.getPageUniqueId()).flatMap(new C10438a()).map(new C10440b(shape)).flatMap(new C10442c()).subscribe();
    }

    /* renamed from: i */
    public final BoxInfo m41056i() {
        Object first;
        if (this.virtualBoxInfo == null) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) EditorBundleKt.visibleBoxList(getEditorBundle()));
            this.virtualBoxInfo = (BoxInfo) first;
        }
        BoxInfo boxInfo = this.virtualBoxInfo;
        Intrinsics.checkNotNull(boxInfo);
        return boxInfo;
    }

    /* renamed from: j */
    public final Observable<BoxInfo> m41057j(String pageUniqueId) {
        Object obj;
        Iterator<T> it2 = EditorBundleKt.visibleBoxList(getEditorBundle()).iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((BoxInfo) obj).getId(), pageUniqueId)) {
                break;
            }
        }
        BoxInfo boxInfo = (BoxInfo) obj;
        if (boxInfo == null) {
            Observable map = EditorBundleKt.findVisibleBoxInfoByNotePageId(getEditorBundle(), pageUniqueId, true).doOnNext(new C10444d()).map(new C10446e());
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        this.virtualBoxInfo = boxInfo;
        Observable<BoxInfo> just = Observable.just(boxInfo);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: k */
    public final Observable<List<Shape>> m41058k(List<? extends Shape> shapeList) {
        List mutableList;
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Observable<List<Shape>> just = Observable.just(shapeList);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        if (!RectFKt.isOutside(ShapeRectUtils.INSTANCE.getBoundingScreenRectWithWidth(shapeList, boxInfo), boxInfo.getVisibleRect())) {
            Observable<List<Shape>> just2 = Observable.just(shapeList);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        List<? extends Shape> list = shapeList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
        List<Shape> filterReferenceShapes = ShapeTypes.INSTANCE.filterReferenceShapes(list);
        mutableList.removeAll(filterReferenceShapes);
        Observable map = new GetReferenceShapeAction(getEditorBundle(), shapeList).build().doOnNext(new C10448f(mutableList, filterReferenceShapes)).map(new C10450g(mutableList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m41059l(TouchPoint point) {
        m41060m(point, "", false, true).subscribe();
    }

    /* renamed from: m */
    public final Observable<HitTestTextShapeAction> m41060m(TouchPoint point, String textToInsert, boolean createNew, boolean editForAll) {
        HitTestTextShapeAction hitTestTextShapeAction = new HitTestTextShapeAction(getEditorBundle(), m41053f(), m41056i(), point);
        hitTestTextShapeAction.setCreateNew(createNew);
        Observable<HitTestTextShapeAction> doOnNext = hitTestTextShapeAction.build().doOnNext(new C10451h(textToInsert, editForAll));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: o */
    public final boolean m41061o() {
        return EditorBundleKt.isRegistered(getEditorBundle(), this);
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onActivate() {
        super.onActivate();
        addAndExecuteAction(new TextInputHandlerAction(this, getEditorBundle(), getTouchReader()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCopyEditTextShapeEvent(@NotNull CopyEditTextShapeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        GlobalBundle.INSTANCE.copyShapes(event.getShapes());
        m41066v();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCreateEditTextShapeLinkEvent(@NotNull CreateEditTextShapeLinkEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Observable.just(this).doOnNext(new C10452i()).flatMap(new C10453j(event)).doOnNext(C10454k.f52294e).doOnNext(C10455l.f52295e).subscribe();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onDeactivate() {
        super.onDeactivate();
        m41066v();
        this.renderContext = null;
        EditorBundleKt.postEvent(getEditorBundle(), new HideEditTextShapeSelectionMenuEvent());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditTextShapeUpdateResultEvent(@NotNull EditTextShapeUpdateResultEvent event) {
        Shape shape;
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getEditorStyleable() && (shape = this.textShape) != null) {
            m41057j(shape.getPageUniqueId()).doOnNext(new C10456m(shape)).subscribe();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLongPressEvent(@NotNull LongPressEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41066v();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMoveShapesToLayerEvent(@NotNull MoveShapesToLayerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        List copy = CollectionKt.copy(event.getShapes());
        m41066v();
        RxBaseAction.execute$default(new MoveShapesToLayerAction(getEditorBundle(), copy, event.getLayerId()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPlaceEditTextShapesEvent(@NotNull PlaceEditTextShapesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            return;
        }
        new PlaceShapesAction(getEditorBundle(), boxInfo, event.getShapes(), event.getToTop()).build().doOnNext(new C10458o()).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onQuitTransformEvent(@NotNull QuitTransformEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41066v();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onRedoEvent(@NotNull final RedoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.textShape == null) {
            super.onRedoEvent(event);
        } else {
            m41066v();
            RxTimerUtil.INSTANCE.shortTimer(new Function1<Long, Unit>() { // from class: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$onRedoEvent$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                    invoke(l.longValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(long j) {
                    super/*com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler*/.onRedoEvent(event);
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRefreshEditText(@NotNull AbortEditTextEvent even) {
        Intrinsics.checkNotNullParameter(even, "even");
        m41046c(this, false, 1, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSaveTextShapeEvent(@NotNull SaveTextShapeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41066v();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScaleBeginEvent(@NotNull ScaleBeginEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41066v();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScrollBeginEvent(@NotNull ScrollBeginEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41066v();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionChangeEvent(@NotNull SelectionChangeEvent event) {
        ShapeTextStyle textStyle;
        ShapeTextStyle m72374clone;
        Intrinsics.checkNotNullParameter(event, "event");
        Shape shape = this.textShape;
        if (shape == null || (textStyle = shape.getTextStyle()) == null || (m72374clone = textStyle.m72374clone()) == null) {
            return;
        }
        EditorStyleInfo styleInfo = event.getStyleInfo();
        m72374clone.setTextBold(styleInfo.getBold()).setTextItalic(styleInfo.getItalic()).setTextUnderline(styleInfo.getUnderline()).setFontFace(styleInfo.getFontFamily(String.valueOf(m72374clone.getFontFace()))).setTextSize(styleInfo.getFontSize(m72374clone.getTextSize())).setTextSpacing(styleInfo.getLineHeight()).setAlignType(ShapeTextAlignType.INSTANCE.toInt(String.valueOf(styleInfo.getTextAlign())));
        EditorBundleKt.postEvent(getEditorBundle(), new UpdateTextInputMenuEvent(m72374clone, styleInfo));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowInitInputTextEvent(@NotNull ShowInitInputTextEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Observable<R> flatMap = CommonEditorActionsKt.hitTestVisibleBoxObservable(getEditorBundle(), event.getInsertPoint()).doOnNext(new C10459p()).flatMap(new C10460q(event));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        RxjavaKt.subscribeWithDefault$default(flatMap, null, null, null, 7, null);
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public boolean onSingleTapUp(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        if (m41051d(touchPoint)) {
            return true;
        }
        if (!EditorBundleKt.handlerManager(getEditorBundle()).isSupportTouchEdit() && this.textShape == null) {
            return false;
        }
        TouchData downTouchData$default = TouchPointKt.toDownTouchData$default(touchPoint, null, null, 3, null);
        new HitTestVisibleBoxAction(getEditorBundle()).setTouchPoint(touchPoint).build().filter(C10461r.f52307e).doOnNext(new C10462s(downTouchData$default)).map(new C10463t(downTouchData$default)).doOnNext(new C10464u()).map(new C10465v(touchPoint)).doOnNext(new C10466w(downTouchData$default)).subscribe();
        return true;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartTransformEvent(@NotNull TextStartTransformEvent event) {
        List<? extends Shape> listOf;
        Intrinsics.checkNotNullParameter(event, "event");
        Shape shape = this.textShape;
        if (shape == null) {
            return;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(shape);
        final ShapeTransformBean shapeTransformBean = new ShapeTransformBean();
        m41058k(listOf).doOnNext(new C10467x(shapeTransformBean)).flatMap(new C10468y(shape)).flatMap(new C10469z(shapeTransformBean)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.xcn
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                TextInputHandler.m41049r(TextInputHandler.this, shapeTransformBean);
            }
        }).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSwitchToNextShapeEvent(@NotNull SwitchToNextShapeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        new SwitchToNextTextShapeAction(getEditorBundle(), m41056i(), this.textShape).build().filter(C10439a0.f52273e).doOnNext(new C10441b0()).delay(1000L, TimeUnit.MILLISECONDS, AndroidSchedulers.mainThread()).filter(new C10443c0()).doOnNext(new C10445d0()).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTextShapeHitTestEvent(@NotNull TextShapeHitTestEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41057j(event.getShape().getPageUniqueId()).flatMap(new C10447e0()).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C10449f0(event)).subscribe();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        this.virtualBoxInfo = touchData.ensureBoxInfo();
        m41053f();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onTouchUp(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        m41065u(touchData.getTouchPoint());
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onUndoEvent(@NotNull final UndoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.textShape == null) {
            super.onUndoEvent(event);
        } else {
            m41066v();
            RxTimerUtil.INSTANCE.shortTimer(new Function1<Long, Unit>() { // from class: com.onyx.android.sdk.universal.editor.handler.shape.TextInputHandler$onUndoEvent$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                    invoke(l.longValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(long j) {
                    super/*com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler*/.onUndoEvent(event);
                }
            });
        }
    }

    /* renamed from: p */
    public final void m41062p(Shape shape, NotePage notePage, String textToInsert, boolean editForAll, boolean createNewShape) {
        if (Intrinsics.areEqual(this.textShape, shape)) {
            return;
        }
        m41067w(shape);
        if (shape == null) {
            return;
        }
        if (!(textToInsert == null || textToInsert.length() == 0)) {
            String convertToHtmlText = ShapeTextUtils.INSTANCE.convertToHtmlText(textToInsert);
            StringBuilder sb = new StringBuilder();
            String richText = shape.getRichText();
            if (richText == null) {
                richText = "";
            }
            sb.append(richText);
            sb.append(convertToHtmlText);
            shape.setRichText(sb.toString());
        }
        m41057j(shape.getPageUniqueId()).doOnNext(new C10457n(notePage, shape, editForAll, createNewShape)).subscribe();
    }

    /* renamed from: s */
    public final void m41063s(ShapeTransformBean shapeTransformBean) {
        if (m41061o()) {
            EditorBundleKt.postEvent(getEditorBundle(), new TransformEditEvent(shapeTransformBean, null, 2, null));
        } else {
            Debug.INSTANCE.m32059w(TextInputHandler.class, "finish edit with invalid state!", new Object[0]);
            EditorBundleKt.postEvent(getEditorBundle(), new SaveEditTextShapeEvent());
        }
    }

    /* renamed from: t */
    public final void m41064t(Shape textShape) {
        EditorBundleKt.postEvent(getEditorBundle(), new TextEditFinishEvent(textShape, null, true, false, 2, null));
    }

    /* renamed from: u */
    public final void m41065u(TouchPoint touchPoint) {
        if (this.textShape != null) {
            m41066v();
        } else {
            m41059l(normalizeTouchPoint(m41056i(), touchPoint));
        }
    }

    /* renamed from: v */
    public final boolean m41066v() {
        Shape shape = this.textShape;
        if (shape == null) {
            return false;
        }
        RenderContext m41053f = m41053f();
        if (!ShapeTextUtils.INSTANCE.isNotBlankRichText(shape)) {
            m41064t(shape);
            m41053f.clearSelectionRect();
            m41052e();
            EditorBundleKt.shapeHandlerManager(getEditorBundle()).restoreUserProvider();
            return false;
        }
        m41055h();
        RectF renderRect = TextRenderUtil.INSTANCE.getRenderRect(m41053f);
        if (renderRect != null) {
            EditorBundleKt.postEvent(getEditorBundle(), new TextEditFinishEvent(shape, renderRect, false, false, 12, null));
        }
        m41052e();
        EditorBundleKt.shapeHandlerManager(getEditorBundle()).restoreUserProvider();
        return true;
    }

    /* renamed from: w */
    public final void m41067w(Shape textShape) {
        this.textShape = textShape;
    }
}
