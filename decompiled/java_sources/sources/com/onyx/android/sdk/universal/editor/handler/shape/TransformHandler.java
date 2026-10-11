package com.onyx.android.sdk.universal.editor.handler.shape;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.FileKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.command.Command;
import com.onyx.android.sdk.note.common.command.CompositeCommand;
import com.onyx.android.sdk.note.common.data.command.UndoRedoArgs;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import com.onyx.android.sdk.note.common.shape.pen.PenShape;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.note.request.selection.UpdateSelectionBitmapRequest;
import com.onyx.android.sdk.ocr.action.OcrProcessAction;
import com.onyx.android.sdk.ocr.data.bean.OcrInput;
import com.onyx.android.sdk.ocr.data.bean.OcrOutput;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.sticker.action.AddStickerAction;
import com.onyx.android.sdk.replicator.sticker.action.CheckStickerImageFileAction;
import com.onyx.android.sdk.replicator.sticker.action.StickerSyncAction;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.command.AddUndoRedoCommandAction;
import com.onyx.android.sdk.universal.editor.action.command.RedoAction;
import com.onyx.android.sdk.universal.editor.action.command.UndoAction;
import com.onyx.android.sdk.universal.editor.action.command.UndoRedoAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.GotoSourceByQuoteAction;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction;
import com.onyx.android.sdk.universal.editor.action.hwr.HWRConvertToTextShapeAction;
import com.onyx.android.sdk.universal.editor.action.hwr.HWRExportToTextAction;
import com.onyx.android.sdk.universal.editor.action.image.StartImageDragAndDropAction;
import com.onyx.android.sdk.universal.editor.action.layer.MoveShapesToLayerAction;
import com.onyx.android.sdk.universal.editor.action.link.CreateShapeLinkBeanAction;
import com.onyx.android.sdk.universal.editor.action.selection.ChangeShapesColorAction;
import com.onyx.android.sdk.universal.editor.action.selection.DrawSelectionRectAction;
import com.onyx.android.sdk.universal.editor.action.selection.LockShapesAction;
import com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction;
import com.onyx.android.sdk.universal.editor.action.selection.StartTransformAction;
import com.onyx.android.sdk.universal.editor.action.shape.ChangeShapeAttributesAction;
import com.onyx.android.sdk.universal.editor.action.shape.CopyShapesAction;
import com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction;
import com.onyx.android.sdk.universal.editor.action.shape.PlaceShapesAction;
import com.onyx.android.sdk.universal.editor.action.textinput.StartEditTextShapeAction;
import com.onyx.android.sdk.universal.editor.action.universalshape.StartEditUniversalShapeAction;
import com.onyx.android.sdk.universal.editor.config.EditorTouchMode;
import com.onyx.android.sdk.universal.editor.data.HWRArgs;
import com.onyx.android.sdk.universal.editor.data.InkBeautifyArgs;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.events.app.ExitLongPressEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeShapeAttributesEvent;
import com.onyx.android.sdk.universal.editor.events.note.HideSelectionButtonEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertConvertedTextEvent;
import com.onyx.android.sdk.universal.editor.events.note.MoveShapesToLayerEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.RedoEvent;
import com.onyx.android.sdk.universal.editor.events.note.ReplaceTransformBeanEvent;
import com.onyx.android.sdk.universal.editor.events.note.RestoreSourceTransformBeanEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionAddToStickerEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionBottomingEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionColorEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionCopyEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionCreateShapeLinkEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionCutEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionDeleteEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionEditTextShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionEditUniversalShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionGotoSourceEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionHWREvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionInsertStickerDoneEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionInsertStickerErrorEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionInsertStickerStartEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionLockEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionOCREvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionToppingEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShapesConvertTextEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowInkBeautifyPopupEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartInkBeautifyEvent;
import com.onyx.android.sdk.universal.editor.events.note.TransformEditEvent;
import com.onyx.android.sdk.universal.editor.events.note.UndoEvent;
import com.onyx.android.sdk.universal.editor.events.note.UpdateSelectionBitmapEvent;
import com.onyx.android.sdk.universal.editor.events.note.UpdateTransformVisibleRectEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler;
import com.onyx.android.sdk.universal.editor.request.page.FindVisibleBoxInfoByNotePageIdRequest;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
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

@Metadata(m61527d1 = {"\u0000¨\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010x\u001a\u00020w¢\u0006\u0004\by\u0010zJ\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J\u001e\u0010\t\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J&\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\b\u0002\u0010\r\u001a\u00020\u0004H\u0002J\u001c\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00000\b2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0010\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u000bH\u0002J\u0018\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u000bH\u0002J\u001e\u0010\u001c\u001a\u00020\u00062\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0010\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0004H\u0002J\b\u0010\u001f\u001a\u00020\u0006H\u0002J\u0016\u0010 \u001a\u00020\u00062\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\b\u0010!\u001a\u00020\u0006H\u0016J\b\u0010\"\u001a\u00020\u0006H\u0016J\b\u0010#\u001a\u00020\u0006H\u0016J\u0010\u0010&\u001a\u00020\u00062\u0006\u0010%\u001a\u00020$H\u0016J\u0012\u0010)\u001a\u00020\u00042\b\u0010(\u001a\u0004\u0018\u00010'H\u0016J\u0010\u0010,\u001a\u00020\u00042\u0006\u0010+\u001a\u00020*H\u0016J\u0010\u0010.\u001a\u00020\u00062\u0006\u0010(\u001a\u00020-H\u0007J\u0010\u00100\u001a\u00020\u00062\u0006\u0010(\u001a\u00020/H\u0017J\u0010\u00102\u001a\u00020\u00062\u0006\u0010(\u001a\u000201H\u0017J\u0010\u00104\u001a\u00020\u00062\u0006\u0010(\u001a\u000203H\u0007J\u0010\u00106\u001a\u00020\u00062\u0006\u0010(\u001a\u000205H\u0007J\u0010\u00108\u001a\u00020\u00062\u0006\u0010(\u001a\u000207H\u0007J\u0010\u0010:\u001a\u00020\u00062\u0006\u0010(\u001a\u000209H\u0007J\u0010\u0010<\u001a\u00020\u00062\u0006\u0010(\u001a\u00020;H\u0007J\u0010\u0010>\u001a\u00020\u00062\u0006\u0010(\u001a\u00020=H\u0007J\u0010\u0010@\u001a\u00020\u00062\u0006\u0010(\u001a\u00020?H\u0007J\u0018\u0010B\u001a\u0006\u0012\u0002\b\u00030\b2\f\u0010A\u001a\b\u0012\u0004\u0012\u00020\u000b0\nJ\u0010\u0010D\u001a\u00020\u00062\u0006\u0010(\u001a\u00020CH\u0007J\u0010\u0010F\u001a\u00020\u00062\u0006\u0010(\u001a\u00020EH\u0007J\u0010\u0010H\u001a\u00020\u00062\u0006\u0010(\u001a\u00020GH\u0007J\u0010\u0010J\u001a\u00020\u00062\u0006\u0010(\u001a\u00020IH\u0007J\u0010\u0010L\u001a\u00020\u00062\u0006\u0010(\u001a\u00020KH\u0007J\u0010\u0010N\u001a\u00020\u00062\u0006\u0010(\u001a\u00020MH\u0007J\u0010\u0010P\u001a\u00020\u00062\u0006\u0010(\u001a\u00020OH\u0007J\u0010\u0010R\u001a\u00020\u00062\u0006\u0010(\u001a\u00020QH\u0007J\u0010\u0010T\u001a\u00020\u00062\u0006\u0010(\u001a\u00020SH\u0007J\u0010\u0010V\u001a\u00020\u00062\u0006\u0010(\u001a\u00020UH\u0007J\u0010\u0010X\u001a\u00020\u00062\u0006\u0010(\u001a\u00020WH\u0007J\u0010\u0010Z\u001a\u00020\u00062\u0006\u0010(\u001a\u00020YH\u0007J\u0010\u0010\\\u001a\u00020\u00062\u0006\u0010(\u001a\u00020[H\u0007J\u0010\u0010^\u001a\u00020\u00062\u0006\u0010(\u001a\u00020]H\u0007J\u0010\u0010`\u001a\u00020\u00062\u0006\u0010(\u001a\u00020_H\u0007J\u0010\u0010b\u001a\u00020\u00062\u0006\u0010(\u001a\u00020aH\u0007J\u0010\u0010d\u001a\u00020\u00062\u0006\u0010(\u001a\u00020cH\u0007J\u0010\u0010f\u001a\u00020\u00062\u0006\u0010(\u001a\u00020eH\u0007J\u0012\u0010g\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\bJ\u0006\u0010h\u001a\u00020\u0002R\u001b\u0010n\u001a\u00020i8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bj\u0010k\u001a\u0004\bl\u0010mR\u0016\u0010r\u001a\u00020o8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bp\u0010qR\u0016\u0010v\u001a\u00020s8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bt\u0010u¨\u0006{"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;", "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "transformBean", "", "transforming", "", "B", "Lio/reactivex/rxjava3/core/Observable;", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapeList", "addToCmdStack", "Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;", "j", "selectedList", C4921e.f26528e, "clearRender", "l", "shape", "p", "", "text", "x", "shapes", "Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;", "hwrArgs", "z", "topping", "w", "y", "i", "onActivate", "onDeactivate", "destroy", "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "touchMode", "updateTouchMode", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "isProcessing", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "onSingleTapUp", "Lcom/onyx/android/sdk/universal/editor/events/note/TransformEditEvent;", "onTransformEditEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;", "onUndoEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;", "onRedoEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;", "onQuitTransformEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionHWREvent;", "onSelectionHWREvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionOCREvent;", "onSelectionOCREvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartInkBeautifyEvent;", "onStartInkBeautifyEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ReplaceTransformBeanEvent;", "onReplaceTransformBeanEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/RestoreSourceTransformBeanEvent;", "onRestoreSourceTransformBeanEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionDeleteEvent;", "onSelectionDeleteEvent", "replaceShapes", "replaceTransformShapes", "Lcom/onyx/android/sdk/universal/editor/events/note/HideSelectionButtonEvent;", "onHideSelectionButtonEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionToppingEvent;", "onSelectionToppingEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionBottomingEvent;", "onSelectionBottomingEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionColorEvent;", "onSelectionColorEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCopyEvent;", "onSelectionCopyEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionGotoSourceEvent;", "onSelectionGotoSourceEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;", "onMoveShapesToLayerEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCutEvent;", "onSelectionCutEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionLockEvent;", "onSelectionLockEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCreateShapeLinkEvent;", "onSelectionCreateShapeLinkEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionAddToStickerEvent;", "onSelectionAddToStickerEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/InsertConvertedTextEvent;", "onInsertConvertTextEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;", "onChangeShapeAttributesEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSelectionBitmapEvent;", "onUpdateSelectionBitmapEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionEditTextShapeEvent;", "onSelectionEditTextShapeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionEditUniversalShapeEvent;", "onSelectionEditUniversalShapeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateTransformVisibleRectEvent;", "onUpdateTransformVisibleRectEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ExitLongPressEvent;", "onExitLongPressEvent", "quitTransformObservable", "getShapeTransformBean", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "d", "Lkotlin/Lazy;", GoogleApiAvailabilityLight.f29016b, "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "e", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;", "transformHandlerAction", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTransformHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,574:1\n1#2:575\n766#3:576\n857#3,2:577\n800#3,11:579\n800#3,11:590\n*S KotlinDebug\n*F\n+ 1 TransformHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler\n*L\n239#1:576\n239#1:577,2\n538#1:579,11\n539#1:590,11\n*E\n"})
/* loaded from: classes8.dex */
public final class TransformHandler extends BaseShapeHandler {

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Lazy renderContext;

    /* renamed from: e, reason: from kotlin metadata */
    public BoxInfo virtualBoxInfo;

    /* renamed from: f, reason: from kotlin metadata */
    public TransformHandlerAction transformHandlerAction;

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$a */
    /* loaded from: classes8.dex */
    public static final class C10470a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f52324f;

        public C10470a(List<Shape> list) {
            this.f52324f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DrawSelectionRectAction> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = TransformHandler.this.getEditorBundle();
            RenderContext m41125n = TransformHandler.this.m41125n();
            BoxInfo boxInfo = TransformHandler.this.virtualBoxInfo;
            if (boxInfo == null) {
                Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
                boxInfo = null;
            }
            return new DrawSelectionRectAction(editorBundle, m41125n, boxInfo, this.f52324f, false, 16, null).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$a0 */
    /* loaded from: classes8.dex */
    public static final class C10471a0<T, R> implements Function {
        public C10471a0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartEditTextShapeAction> apply(@NotNull List<? extends Shape> it2) {
            Object first;
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = TransformHandler.this.getEditorBundle();
            ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2);
            return new StartEditTextShapeAction(editorBundle, shapeTypes.getTargetShape((Shape) first), false).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$b */
    /* loaded from: classes8.dex */
    public static final class C10472b<T, R> implements Function {
        public C10472b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TransformHandler apply(@NotNull GotoSourceByQuoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TransformHandler.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$b0 */
    /* loaded from: classes8.dex */
    public static final class C10473b0<T> implements Predicate {

        /* renamed from: e */
        public static final C10473b0<T> f52327e = new C10473b0<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$c */
    /* loaded from: classes8.dex */
    public static final class C10474c<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Shape f52329f;

        public C10474c(Shape shape) {
            this.f52329f = shape;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OcrOutput it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TransformHandler.this.m41129x(it2.getCom.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING java.lang.String().getText(), this.f52329f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$c0 */
    /* loaded from: classes8.dex */
    public static final class C10475c0<T, R> implements Function {

        /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$c0$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ List<Shape> f52331e;

            /* JADX WARN: Multi-variable type inference failed */
            public a(List<? extends Shape> list) {
                this.f52331e = list;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final List<Shape> apply(@NotNull DeleteShapesAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f52331e;
            }
        }

        public C10475c0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull List<? extends Shape> shapes) {
            Intrinsics.checkNotNullParameter(shapes, "shapes");
            return TransformHandler.this.m41123j(shapes, false).map(new a(shapes));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$d */
    /* loaded from: classes8.dex */
    public static final class C10476d<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Shape f52333f;

        public C10476d(Shape shape) {
            this.f52333f = shape;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TransformHandler.this.m41129x("", this.f52333f);
        }
    }

    @SourceDebugExtension({"SMAP\nTransformHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onSelectionEditUniversalShapeEvent$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,574:1\n1#2:575\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$d0 */
    /* loaded from: classes8.dex */
    public static final class C10477d0<T, R> implements Function {
        public C10477d0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartEditUniversalShapeAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = TransformHandler.this.getEditorBundle();
            ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
            Shape firstTargetShape = shapeTypes.firstTargetShape(it2);
            Intrinsics.checkNotNull(firstTargetShape, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.shape.universal.UniversalShape");
            StartEditUniversalShapeAction startEditUniversalShapeAction = new StartEditUniversalShapeAction(editorBundle, (UniversalShape) firstTargetShape, false);
            startEditUniversalShapeAction.setReferenceShapes(shapeTypes.filterReferenceShapes(it2));
            return startEditUniversalShapeAction.build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$e */
    /* loaded from: classes8.dex */
    public static final class C10478e<T> implements Consumer {
        public C10478e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ChangeShapeAttributesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TransformHandler.this.m41124l(true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$e0 */
    /* loaded from: classes8.dex */
    public static final class C10479e0<T, R> implements Function {
        public C10479e0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends TransformHandler> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TransformHandler.this.m41126o(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$f */
    /* loaded from: classes8.dex */
    public static final class C10480f<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f52338f;

        /* JADX WARN: Multi-variable type inference failed */
        public C10480f(List<? extends Shape> list) {
            this.f52338f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartImageDragAndDropAction> apply(@NotNull List<? extends Shape> it2) {
            Object first;
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = TransformHandler.this.getEditorBundle();
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.f52338f);
            return new StartImageDragAndDropAction(editorBundle, (Shape) first).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$f0 */
    /* loaded from: classes8.dex */
    public static final class C10481f0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SelectionLockEvent f52340f;

        public C10481f0(SelectionLockEvent selectionLockEvent) {
            this.f52340f = selectionLockEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LockShapesAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LockShapesAction(TransformHandler.this.getEditorBundle(), it2, this.f52340f.getLock()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$g */
    /* loaded from: classes8.dex */
    public static final class C10482g<T> implements Predicate {

        /* renamed from: e */
        public static final C10482g<T> f52341e = new C10482g<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$g0 */
    /* loaded from: classes8.dex */
    public static final class C10483g0<T> implements Predicate {

        /* renamed from: e */
        public static final C10483g0<T> f52342e = new C10483g0<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getVirtualPageBoxInfo() != null;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$h */
    /* loaded from: classes8.dex */
    public static final class C10484h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ InsertConvertedTextEvent f52344f;

        public C10484h(InsertConvertedTextEvent insertConvertedTextEvent) {
            this.f52344f = insertConvertedTextEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWRConvertToTextShapeAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWRConvertToTextShapeAction(TransformHandler.this.getEditorBundle(), TransformHandler.this.m41125n(), it2, this.f52344f.getContent(), this.f52344f.getTextContentTypes()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$h0 */
    /* loaded from: classes8.dex */
    public static final class C10485h0<T> implements Consumer {
        public C10485h0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TransformHandlerAction transformHandlerAction = TransformHandler.this.transformHandlerAction;
            if (transformHandlerAction == null) {
                Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
                transformHandlerAction = null;
            }
            transformHandlerAction.setVirtualBoxInfo(it2.getVirtualPageBoxInfo());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$i */
    /* loaded from: classes8.dex */
    public static final class C10486i<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ MoveShapesToLayerEvent f52347f;

        public C10486i(MoveShapesToLayerEvent moveShapesToLayerEvent) {
            this.f52347f = moveShapesToLayerEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends MoveShapesToLayerAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new MoveShapesToLayerAction(TransformHandler.this.getEditorBundle(), it2, this.f52347f.getLayerId()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$i0 */
    /* loaded from: classes8.dex */
    public static final class C10487i0<T> implements Consumer {
        public C10487i0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TransformHandler transformHandler = TransformHandler.this;
            BoxInfo virtualPageBoxInfo = it2.getVirtualPageBoxInfo();
            Intrinsics.checkNotNull(virtualPageBoxInfo);
            transformHandler.virtualBoxInfo = virtualPageBoxInfo;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$j */
    /* loaded from: classes8.dex */
    public static final class C10488j<T> implements Consumer {
        public C10488j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            new RedoAction(TransformHandler.this.getEditorBundle()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$j0 */
    /* loaded from: classes8.dex */
    public static final class C10489j0<T> implements Predicate {

        /* renamed from: e */
        public static final C10489j0<T> f52350e = new C10489j0<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$k */
    /* loaded from: classes8.dex */
    public static final class C10490k<T, R> implements Function {
        public C10490k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TransformHandler.this.quitTransformObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$k0 */
    /* loaded from: classes8.dex */
    public static final class C10491k0<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ TransformEditEvent f52353f;

        public C10491k0(TransformEditEvent transformEditEvent) {
            this.f52353f = transformEditEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TransformHandler.m41102C(TransformHandler.this, this.f52353f.getTransformBean(), false, 2, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$l */
    /* loaded from: classes8.dex */
    public static final class C10492l<T, R> implements Function {

        /* renamed from: e */
        public static final C10492l<T, R> f52354e = new C10492l<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ShapeUtils.INSTANCE.filterResourceExistImageShape(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$l0 */
    /* loaded from: classes8.dex */
    public static final class C10493l0<T, R> implements Function {
        public C10493l0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UndoRedoAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new UndoAction(TransformHandler.this.getEditorBundle()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$m */
    /* loaded from: classes8.dex */
    public static final class C10494m<T> implements Predicate {

        /* renamed from: e */
        public static final C10494m<T> f52356e = new C10494m<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$m0 */
    /* loaded from: classes8.dex */
    public static final class C10495m0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ boolean f52358f;

        public C10495m0(boolean z) {
            this.f52358f = z;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends PlaceShapesAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = TransformHandler.this.getEditorBundle();
            BoxInfo boxInfo = TransformHandler.this.virtualBoxInfo;
            if (boxInfo == null) {
                Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
                boxInfo = null;
            }
            return new PlaceShapesAction(editorBundle, boxInfo, it2, this.f52358f).build();
        }
    }

    @SourceDebugExtension({"SMAP\nTransformHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onSelectionAddToStickerEvent$4\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,574:1\n1549#2:575\n1620#2,3:576\n*S KotlinDebug\n*F\n+ 1 TransformHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onSelectionAddToStickerEvent$4\n*L\n424#1:575\n424#1:576,3\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$n */
    /* loaded from: classes8.dex */
    public static final class C10496n<T, R> implements Function {

        /* renamed from: e */
        public static final C10496n<T, R> f52359e = new C10496n<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull List<? extends Shape> list) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(list, "list");
            List<? extends Shape> list2 = list;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                ShapeResource resource = ShapeOptions.INSTANCE.getResource((Shape) it2.next());
                String path = resource != null ? resource.getPath() : null;
                if (path == null) {
                    path = "";
                }
                arrayList.add(path);
            }
            return arrayList;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$n0 */
    /* loaded from: classes8.dex */
    public static final class C10497n0<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ShapeTransformBean f52360e;

        public C10497n0(ShapeTransformBean shapeTransformBean) {
            this.f52360e = shapeTransformBean;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f52360e.setForceUpdateOnQuit(true);
        }
    }

    @SourceDebugExtension({"SMAP\nTransformHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onSelectionAddToStickerEvent$5\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,574:1\n1549#2:575\n1620#2,3:576\n*S KotlinDebug\n*F\n+ 1 TransformHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onSelectionAddToStickerEvent$5\n*L\n426#1:575\n426#1:576,3\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$o */
    /* loaded from: classes8.dex */
    public static final class C10498o<T, R> implements Function {

        /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$o$a */
        /* loaded from: classes8.dex */
        public static final class a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ TransformHandler f52362e;

            public a(TransformHandler transformHandler) {
                this.f52362e = transformHandler;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull List<? extends Uri> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                EditorBundleKt.postEvent(this.f52362e.getEditorBundle(), new SelectionInsertStickerStartEvent());
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$o$b */
        /* loaded from: classes8.dex */
        public static final class b<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ List<Uri> f52363e;

            /* JADX WARN: Multi-variable type inference failed */
            public b(List<? extends Uri> list) {
                this.f52363e = list;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends StickerModel> apply(@NotNull List<? extends Uri> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new AddStickerAction(this.f52363e, null, 2, 0 == true ? 1 : 0).build();
            }
        }

        public C10498o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StickerModel> apply(@NotNull List<String> paths) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(paths, "paths");
            List<String> list = paths;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(FileKt.toProviderUri(new File((String) it2.next()), ResManager.INSTANCE.getAppContext()));
            }
            return new CheckStickerImageFileAction(arrayList).build().doOnNext(new a(TransformHandler.this)).flatMap(new b(arrayList));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$o0 */
    /* loaded from: classes8.dex */
    public static final class C10499o0<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ShapeTransformBean f52364e;

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f52365f;

        /* JADX WARN: Multi-variable type inference failed */
        public C10499o0(ShapeTransformBean shapeTransformBean, List<? extends Shape> list) {
            this.f52364e = shapeTransformBean;
            this.f52365f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f52364e.replaceShapes(this.f52365f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$p */
    /* loaded from: classes8.dex */
    public static final class C10502p<T> implements Consumer {
        public C10502p() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(TransformHandler.this.getEditorBundle(), new SelectionInsertStickerErrorEvent(it2));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$p0 */
    /* loaded from: classes8.dex */
    public static final class C10503p0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ ShapeTransformBean f52372f;

        public C10503p0(ShapeTransformBean shapeTransformBean) {
            this.f52372f = shapeTransformBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TransformHandler.this.m41121D(this.f52372f, true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$q */
    /* loaded from: classes8.dex */
    public static final class C10504q<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SelectionColorEvent f52374f;

        public C10504q(SelectionColorEvent selectionColorEvent) {
            this.f52374f = selectionColorEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ChangeShapesColorAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = TransformHandler.this.getEditorBundle();
            RenderContext m41125n = TransformHandler.this.m41125n();
            BoxInfo boxInfo = TransformHandler.this.virtualBoxInfo;
            if (boxInfo == null) {
                Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
                boxInfo = null;
            }
            ChangeShapesColorAction changeShapesColorAction = new ChangeShapesColorAction(editorBundle, m41125n, boxInfo, it2);
            changeShapesColorAction.setColor(this.f52374f.getColor());
            return changeShapesColorAction.build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$q0 */
    /* loaded from: classes8.dex */
    public static final class C10505q0<T> implements Consumer {
        public C10505q0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StartTransformAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TransformHandlerAction transformHandlerAction = TransformHandler.this.transformHandlerAction;
            if (transformHandlerAction == null) {
                Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
                transformHandlerAction = null;
            }
            transformHandlerAction.setTransformStarted(true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$r */
    /* loaded from: classes8.dex */
    public static final class C10506r<T> implements Consumer {
        public C10506r() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TransformHandler.this.m41122i(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$s */
    /* loaded from: classes8.dex */
    public static final class C10512s<T> implements Predicate {

        /* renamed from: e */
        public static final C10512s<T> f52386e = new C10512s<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$t */
    /* loaded from: classes8.dex */
    public static final class C10513t<T, R> implements Function {
        public C10513t() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ShapeLinkBean> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CreateShapeLinkBeanAction(TransformHandler.this.getEditorBundle(), it2).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$u */
    /* loaded from: classes8.dex */
    public static final class C10514u<T> implements Consumer {

        /* renamed from: e */
        public static final C10514u<T> f52388e = new C10514u<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShapeLinkBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.copyShapeLink(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$v */
    /* loaded from: classes8.dex */
    public static final class C10515v<T> implements Consumer {

        /* renamed from: e */
        public static final C10515v<T> f52389e = new C10515v<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShapeLinkBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.create_link_success, false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$w */
    /* loaded from: classes8.dex */
    public static final class C10516w<T, R> implements Function {

        /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$w$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ List<Shape> f52391e;

            /* JADX WARN: Multi-variable type inference failed */
            public a(List<? extends Shape> list) {
                this.f52391e = list;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final List<Shape> apply(@NotNull DeleteShapesAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f52391e;
            }
        }

        public C10516w() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull List<? extends Shape> shapes) {
            Intrinsics.checkNotNullParameter(shapes, "shapes");
            return TransformHandler.m41112k(TransformHandler.this, shapes, false, 2, null).map(new a(shapes));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$x */
    /* loaded from: classes8.dex */
    public static final class C10517x<T> implements Consumer {
        public C10517x() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TransformHandler.this.m41122i(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$y */
    /* loaded from: classes8.dex */
    public static final class C10518y<T, R> implements Function {
        public C10518y() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteShapesAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TransformHandler.m41112k(TransformHandler.this, it2, false, 2, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$z */
    /* loaded from: classes8.dex */
    public static final class C10519z<T> implements Predicate {

        /* renamed from: e */
        public static final C10519z<T> f52394e = new C10519z<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransformHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RenderContext>() { // from class: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$renderContext$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RenderContext invoke() {
                return new RenderContext(new Paint(), new Matrix());
            }
        });
        this.renderContext = lazy;
        getTouchReader().updateTouchMode(EditorTouchMode.FINGER_SCRIBBLE);
    }

    /* renamed from: A */
    public static final void m41101A(HWRExportToTextAction action, List charShapes, List penShapes) {
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullParameter(charShapes, "$charShapes");
        Intrinsics.checkNotNullParameter(penShapes, "$penShapes");
        action.postShapesConvertTextEvent(charShapes, penShapes);
    }

    /* renamed from: C */
    public static /* synthetic */ void m41102C(TransformHandler transformHandler, ShapeTransformBean shapeTransformBean, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        transformHandler.m41120B(shapeTransformBean, z);
    }

    /* renamed from: E */
    public static /* synthetic */ Observable m41103E(TransformHandler transformHandler, ShapeTransformBean shapeTransformBean, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return transformHandler.m41121D(shapeTransformBean, z);
    }

    /* renamed from: k */
    public static /* synthetic */ Observable m41112k(TransformHandler transformHandler, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return transformHandler.m41123j(list, z);
    }

    /* renamed from: m */
    public static final void m41113m(TransformHandler this$0, UpdateSelectionBitmapRequest request, Unit it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(request, "$request");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m41125n().getSelectionArgs().setSelectionBitmap(request.getBitmap());
    }

    /* renamed from: q */
    public static final void m41114q() {
        ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.add_sticker_succeed, false, 2, (Object) null);
    }

    /* renamed from: r */
    public static final void m41115r(TransformHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new SelectionInsertStickerDoneEvent());
    }

    /* renamed from: s */
    public static final void m41116s(TransformHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.renderManager(this$0.getEditorBundle()).invalidate();
    }

    /* renamed from: t */
    public static final void m41117t(TransformHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.renderManager(this$0.getEditorBundle()).invalidate();
    }

    /* renamed from: u */
    public static final void m41118u(TransformHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.renderManager(this$0.getEditorBundle()).invalidate();
    }

    /* renamed from: v */
    public static final void m41119v(TransformHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.renderManager(this$0.getEditorBundle()).invalidate();
    }

    /* renamed from: B */
    public final void m41120B(ShapeTransformBean transformBean, boolean transforming) {
        m41121D(transformBean, transforming).subscribe();
    }

    /* renamed from: D */
    public final Observable<?> m41121D(ShapeTransformBean transformBean, boolean transforming) {
        EditorBundle editorBundle = getEditorBundle();
        RenderContext m41125n = m41125n();
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        StartTransformAction startTransformAction = new StartTransformAction(editorBundle, m41125n, boxInfo, transformBean);
        startTransformAction.setTransforming(transforming);
        Observable<StartTransformAction> doOnNext = startTransformAction.build().doOnNext(new C10505q0());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void destroy() {
        super.destroy();
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        if (transformHandlerAction != null) {
            if (transformHandlerAction == null) {
                Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
                transformHandlerAction = null;
            }
            transformHandlerAction.dispose();
        }
    }

    @NotNull
    public final ShapeTransformBean getShapeTransformBean() {
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        return transformHandlerAction.getShapeTransformBean();
    }

    /* renamed from: i */
    public final void m41122i(List<? extends Shape> shapes) {
        RxBaseAction.execute$default(new CopyShapesAction(getEditorBundle(), shapes), null, null, null, 7, null);
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public boolean isProcessing(@Nullable MotionEvent event) {
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        return !transformHandlerAction.isUndefinedTransformAction();
    }

    /* renamed from: j */
    public final Observable<DeleteShapesAction> m41123j(List<? extends Shape> shapeList, boolean addToCmdStack) {
        DeleteShapesAction deleteShapesAction = new DeleteShapesAction(getEditorBundle(), shapeList, addToCmdStack, false, 8, null);
        deleteShapesAction.setRender(false);
        return deleteShapesAction.build();
    }

    /* renamed from: l */
    public final void m41124l(boolean clearRender) {
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        BoxInfo boxInfo = null;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        List<Shape> selectionRectShapes = transformHandlerAction.getShapeTransformBean().getSelectionRectShapes();
        NoteBundle noteBundle = EditorBundleKt.noteBundle(getEditorBundle());
        RenderContext m41125n = m41125n();
        BoxInfo boxInfo2 = this.virtualBoxInfo;
        if (boxInfo2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
        } else {
            boxInfo = boxInfo2;
        }
        final UpdateSelectionBitmapRequest updateSelectionBitmapRequest = new UpdateSelectionBitmapRequest(noteBundle, m41125n, boxInfo, selectionRectShapes);
        updateSelectionBitmapRequest.setUpdateSelectionBitmap(false);
        updateSelectionBitmapRequest.setClearRender(clearRender);
        RxjavaKt.doOnNextIf(DocCommonActionsKt.createNoteObservable(getEditorBundle(), new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$drawSelectionBitmapRect$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle2) {
                invoke2(noteBundle2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                UpdateSelectionBitmapRequest.this.execute2();
            }
        }), new Function1<Unit, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$drawSelectionBitmapRect$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Unit it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(BitmapKt.isValid(UpdateSelectionBitmapRequest.this.getBitmap()));
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.tln
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                TransformHandler.m41113m(TransformHandler.this, updateSelectionBitmapRequest, (Unit) obj);
            }
        }).flatMap(new C10470a(selectionRectShapes)).subscribe();
    }

    /* renamed from: n */
    public final RenderContext m41125n() {
        return (RenderContext) this.renderContext.getValue();
    }

    /* renamed from: o */
    public final Observable<TransformHandler> m41126o(List<? extends Shape> selectedList) {
        Shape firstTargetShape = ShapeTypes.INSTANCE.firstTargetShape(selectedList);
        if (firstTargetShape == null) {
            Observable<TransformHandler> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = new GotoSourceByQuoteAction(getEditorBundle(), firstTargetShape).build().map(new C10472b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onActivate() {
        super.onActivate();
        TransformHandlerAction transformHandlerAction = new TransformHandlerAction(getEditorBundle(), getTouchReader(), m41125n());
        this.transformHandlerAction = transformHandlerAction;
        transformHandlerAction.build().subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeShapeAttributesEvent(@NotNull ChangeShapeAttributesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ChangeShapeAttributesAction changeShapeAttributesAction = new ChangeShapeAttributesAction(getEditorBundle(), event.getShapeAttrPairs());
        changeShapeAttributesAction.setTransformShapeMatrixMap(getShapeTransformBean().getTransformShapeMatrixMap());
        changeShapeAttributesAction.build().doOnNext(new C10478e()).subscribe();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onDeactivate() {
        EditorBundleKt.renderManager(getEditorBundle()).removeRenderSilent(RenderManager.RENDER_KEY_TRANSFORM);
        super.onDeactivate();
        m41130y();
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        transformHandlerAction.dispose();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onExitLongPressEvent(@NotNull ExitLongPressEvent event) {
        Object first;
        Intrinsics.checkNotNullParameter(event, "event");
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        List<Shape> filterNormalShapes = shapeTypes.filterNormalShapes(transformHandlerAction.getShapeTransformBean().getSelectionRectShapes());
        if (filterNormalShapes.size() == 1) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) filterNormalShapes);
            if (shapeTypes.isImageShape((Shape) first)) {
                quitTransformObservable().flatMap(new C10480f(filterNormalShapes)).subscribe();
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHideSelectionButtonEvent(@NotNull HideSelectionButtonEvent event) {
        BoxInfo boxInfo;
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundle editorBundle = getEditorBundle();
        RenderContext m41125n = m41125n();
        BoxInfo boxInfo2 = this.virtualBoxInfo;
        if (boxInfo2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        } else {
            boxInfo = boxInfo2;
        }
        RxBaseAction.execute$default(DrawSelectionRectAction.configureSelectionRender$default(new DrawSelectionRectAction(editorBundle, m41125n, boxInfo, event.getShapes(), false, 16, null), false, null, 2, null), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onInsertConvertTextEvent(@NotNull InsertConvertedTextEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        quitTransformObservable().filter(C10482g.f52341e).flatMap(new C10484h(event)).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMoveShapesToLayerEvent(@NotNull MoveShapesToLayerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        quitTransformObservable().flatMap(new C10486i(event)).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onQuitTransformEvent(@NotNull QuitTransformEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        quitTransformObservable().subscribe();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onRedoEvent(@NotNull RedoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        Observable<?> doOnNext = TransformHandlerAction.quitTransformObservable$default(transformHandlerAction, boxInfo, false, 2, null).doOnNext(new C10488j());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        getEditorBundle().getUiBundle().getActionManager().execute(doOnNext);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onReplaceTransformBeanEvent(@NotNull ReplaceTransformBeanEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        ShapeTransformBean shapeTransformBean = transformHandlerAction.getShapeTransformBean();
        shapeTransformBean.replaceShapes(event.getTransformBean().getTransformShapes());
        m41120B(shapeTransformBean, true);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRestoreSourceTransformBeanEvent(@NotNull RestoreSourceTransformBeanEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        TransformHandlerAction transformHandlerAction2 = null;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        final CompositeCommand lastCompositeCommand = transformHandlerAction.getShapeTransformBean().getLastCompositeCommand();
        if (lastCompositeCommand != null) {
            TransformHandlerAction transformHandlerAction3 = this.transformHandlerAction;
            if (transformHandlerAction3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
                transformHandlerAction3 = null;
            }
            transformHandlerAction3.getShapeTransformBean().setLastCompositeCommand(null);
            TransformHandlerAction transformHandlerAction4 = this.transformHandlerAction;
            if (transformHandlerAction4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            } else {
                transformHandlerAction2 = transformHandlerAction4;
            }
            transformHandlerAction2.getShapeTransformBean().setTransformShapes(new ArrayList());
            final Command revokeLastCommand = lastCompositeCommand.revokeLastCommand();
            final EditorBundle editorBundle = getEditorBundle();
            RxjavaKt.flatMapIf(new UndoRedoAction(editorBundle) { // from class: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$onRestoreSourceTransformBeanEvent$1
                @Override // com.onyx.android.sdk.universal.editor.action.command.UndoRedoAction
                @NotNull
                public UndoRedoArgs handle() {
                    Command command = Command.this;
                    if (command != null) {
                        command.undo(getUndoRedoArgs());
                    }
                    return getUndoRedoArgs();
                }
            }.build(), new Function1<UndoRedoAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$onRestoreSourceTransformBeanEvent$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull UndoRedoAction it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(CompositeCommand.this.hasCommand());
                }
            }, new Function1<UndoRedoAction, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$onRestoreSourceTransformBeanEvent$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Observable<? extends Object> invoke(@NotNull UndoRedoAction it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new AddUndoRedoCommandAction(TransformHandler.this.getEditorBundle(), lastCompositeCommand).build();
                }
            }).subscribe();
        }
        quitTransformObservable().subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionAddToStickerEvent(@NotNull SelectionAddToStickerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doFinally = new StickerSyncAction().build().flatMap(new C10490k()).map(C10492l.f52354e).filter(C10494m.f52356e).map(C10496n.f52359e).flatMap(new C10498o()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.yln
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                TransformHandler.m41114q();
            }
        }).doOnError(new C10502p()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.zln
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                TransformHandler.m41115r(TransformHandler.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        onyxErrorHandler.subscribeSilently(doFinally);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionBottomingEvent(@NotNull SelectionBottomingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41128w(false);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionColorEvent(@NotNull SelectionColorEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        quitTransformObservable().flatMap(new C10504q(event)).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionCopyEvent(@NotNull SelectionCopyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        quitTransformObservable().doOnNext(new C10506r()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.sln
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                TransformHandler.m41116s(TransformHandler.this);
            }
        }).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionCreateShapeLinkEvent(@NotNull SelectionCreateShapeLinkEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        quitTransformObservable().filter(C10512s.f52386e).flatMap(new C10513t()).doOnNext(C10514u.f52388e).doOnNext(C10515v.f52389e).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionCutEvent(@NotNull SelectionCutEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        transformHandlerAction.getShapeTransformBean().setUpdateDisplayAfterQuit(false);
        quitTransformObservable().flatMap(new C10516w()).doOnNext(new C10517x()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.xln
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                TransformHandler.m41117t(TransformHandler.this);
            }
        }).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionDeleteEvent(@NotNull SelectionDeleteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        transformHandlerAction.getShapeTransformBean().setUpdateDisplayAfterQuit(false);
        quitTransformObservable().flatMap(new C10518y()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.wln
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                TransformHandler.m41118u(TransformHandler.this);
            }
        }).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionEditTextShapeEvent(@NotNull SelectionEditTextShapeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        quitTransformObservable().filter(C10519z.f52394e).flatMap(new C10471a0()).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionEditUniversalShapeEvent(@NotNull SelectionEditUniversalShapeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        transformHandlerAction.getShapeTransformBean().setUpdateDisplayAfterQuit(false);
        quitTransformObservable().filter(C10473b0.f52327e).flatMap(new C10475c0()).flatMap(new C10477d0()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.vln
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                TransformHandler.m41119v(TransformHandler.this);
            }
        }).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionGotoSourceEvent(@NotNull SelectionGotoSourceEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        quitTransformObservable().flatMap(new C10479e0()).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionHWREvent(@NotNull SelectionHWREvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        m41131z(ShapeTypes.INSTANCE.filterSupportHWRShapes(transformHandlerAction.getShapeTransformBean().getTransformShapes()), event.getHwrArgs());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionLockEvent(@NotNull SelectionLockEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        quitTransformObservable().flatMap(new C10481f0(event)).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionOCREvent(@NotNull SelectionOCREvent event) {
        Object first;
        Intrinsics.checkNotNullParameter(event, "event");
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        List<Shape> transformShapes = transformHandlerAction.getShapeTransformBean().getTransformShapes();
        ArrayList arrayList = new ArrayList();
        for (Object obj : transformShapes) {
            if (ShapeTypes.INSTANCE.isImageShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) arrayList);
        m41127p((Shape) first);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionToppingEvent(@NotNull SelectionToppingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41128w(true);
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public boolean onSingleTapUp(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        return isProcessing(null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartInkBeautifyEvent(@NotNull StartInkBeautifyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getConvertType().isRealtimeConvert()) {
            return;
        }
        View editorView = EditorBundleKt.editorView(getEditorBundle());
        TransformHandlerAction transformHandlerAction = null;
        Context context = editorView != null ? editorView.getContext() : null;
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null) {
            return;
        }
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        TransformHandlerAction transformHandlerAction2 = this.transformHandlerAction;
        if (transformHandlerAction2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
        } else {
            transformHandlerAction = transformHandlerAction2;
        }
        EditorBundleKt.postEvent(getEditorBundle(), new ShowInkBeautifyPopupEvent(new InkBeautifyArgs(appCompatActivity, getEditorBundle(), shapeTypes.filterSupportHWRShapes(transformHandlerAction.getShapeTransformBean().getTransformShapes()), new Rect(), event.getLang())));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTransformEditEvent(@NotNull final TransformEditEvent event) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(event, "event");
        final List<Shape> transformShapes = event.getTransformBean().getTransformShapes();
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) transformShapes);
        Shape shape = (Shape) firstOrNull;
        if (shape == null) {
            return;
        }
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        TransformHandlerAction transformHandlerAction2 = null;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        if (transformHandlerAction.getShapeTransformBean().hasTransformShapes()) {
            return;
        }
        TransformHandlerAction transformHandlerAction3 = this.transformHandlerAction;
        if (transformHandlerAction3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction3 = null;
        }
        transformHandlerAction3.setShapeTransformBean(event.getTransformBean());
        TransformHandlerAction transformHandlerAction4 = this.transformHandlerAction;
        if (transformHandlerAction4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
        } else {
            transformHandlerAction2 = transformHandlerAction4;
        }
        ComputeBoxListActionsKt.findVisibleBoxInfoByNotePageId(transformHandlerAction2, shape.getPageUniqueId(), true).filter(C10483g0.f52342e).doOnNext(new C10485h0()).doOnNext(new C10487i0()).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$onTransformEditEvent$4
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends List<BoxInfo>> apply(@NotNull FindVisibleBoxInfoByNotePageIdRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                TransformHandlerAction transformHandlerAction5 = TransformHandler.this.transformHandlerAction;
                if (transformHandlerAction5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
                    transformHandlerAction5 = null;
                }
                final List<Shape> list = transformShapes;
                return ComputeBoxListActionsKt.findBoxInfoList(transformHandlerAction5, new Function1<BoxInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$onTransformEditEvent$4.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull final BoxInfo boxInfo) {
                        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
                        return Boolean.valueOf(CollectionKt.contains(list, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler.onTransformEditEvent.4.1.1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            @NotNull
                            public final Boolean invoke(@NotNull Shape it3) {
                                Intrinsics.checkNotNullParameter(it3, "it");
                                String pageUniqueId = it3.getPageUniqueId();
                                BoxInfo noteInfo = BoxInfo.this.getNoteInfo();
                                return Boolean.valueOf(Intrinsics.areEqual(pageUniqueId, noteInfo != null ? noteInfo.getId() : null));
                            }
                        }));
                    }
                });
            }
        }).filter(C10489j0.f52350e).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$onTransformEditEvent$6
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull List<BoxInfo> boxList) {
                Intrinsics.checkNotNullParameter(boxList, "boxList");
                TransformEditEvent.this.getTransformBean().setTransformBoxInfoMap(CollectionKt.toMap(boxList, new Function1<BoxInfo, String>() { // from class: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$onTransformEditEvent$6.1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final String invoke(@NotNull BoxInfo it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return it2.getId();
                    }
                }));
            }
        }).doOnNext(new C10491k0(event)).subscribe();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onUndoEvent(@NotNull UndoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        Observable<?> flatMap = TransformHandlerAction.quitTransformObservable$default(transformHandlerAction, boxInfo, false, 2, null).flatMap(new C10493l0());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        getEditorBundle().getUiBundle().getActionManager().execute(flatMap);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateSelectionBitmapEvent(@NotNull UpdateSelectionBitmapEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41124l(false);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateTransformVisibleRectEvent(@NotNull UpdateTransformVisibleRectEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        transformHandlerAction.updateSelectionVisibleRect(event.getRectF());
    }

    /* renamed from: p */
    public final void m41127p(Shape shape) {
        String path;
        ShapeResource resource = ShapeOptions.INSTANCE.getResource(shape);
        if (resource == null || (path = resource.getPath()) == null) {
            return;
        }
        OcrInput ocrInput = new OcrInput();
        ocrInput.setUri(Uri.fromFile(new File(path)));
        new OcrProcessAction(ocrInput).build().doOnNext(new C10474c(shape)).doOnError(new C10476d(shape)).subscribe();
    }

    @NotNull
    public final Observable<List<Shape>> quitTransformObservable() {
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        return TransformHandlerAction.quitTransformObservable$default(transformHandlerAction, boxInfo, false, 2, null);
    }

    @NotNull
    public final Observable<?> replaceTransformShapes(@NotNull List<? extends Shape> replaceShapes) {
        Intrinsics.checkNotNullParameter(replaceShapes, "replaceShapes");
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        BoxInfo boxInfo = null;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        ShapeTransformBean shapeTransformBean = transformHandlerAction.getShapeTransformBean();
        EditorBundle editorBundle = getEditorBundle();
        RenderContext m41125n = m41125n();
        BoxInfo boxInfo2 = this.virtualBoxInfo;
        if (boxInfo2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
        } else {
            boxInfo = boxInfo2;
        }
        QuitTransformAction quitTransformAction = new QuitTransformAction(editorBundle, m41125n, boxInfo, shapeTransformBean);
        quitTransformAction.setAddToCmdStack(shapeTransformBean.getLastCompositeCommand() != null);
        Observable<?> flatMap = quitTransformAction.build().flatMap(new TransformHandler$replaceTransformShapes$2(this, shapeTransformBean)).doOnNext(new C10497n0(shapeTransformBean)).doOnNext(new C10499o0(shapeTransformBean, replaceShapes)).flatMap(new C10503p0(shapeTransformBean));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void updateTouchMode(@NotNull EditorTouchMode touchMode) {
        Intrinsics.checkNotNullParameter(touchMode, "touchMode");
        super.updateTouchMode(EditorTouchMode.FINGER_SCRIBBLE);
    }

    /* renamed from: w */
    public final void m41128w(boolean topping) {
        quitTransformObservable().flatMap(new C10495m0(topping)).subscribe();
    }

    /* renamed from: x */
    public final void m41129x(String text, Shape shape) {
        List listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(shape);
        EditorBundleKt.postEvent(getEditorBundle(), new ShapesConvertTextEvent(listOf, text, TextContentType.OCR_TEXT));
    }

    /* renamed from: y */
    public final void m41130y() {
        TransformHandlerAction transformHandlerAction = this.transformHandlerAction;
        BoxInfo boxInfo = null;
        if (transformHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction = null;
        }
        if (CollectionKt.isNullOrEmpty(transformHandlerAction.getShapeTransformBean().getTransformShapes()) || this.virtualBoxInfo == null) {
            return;
        }
        TransformHandlerAction transformHandlerAction2 = this.transformHandlerAction;
        if (transformHandlerAction2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformHandlerAction");
            transformHandlerAction2 = null;
        }
        BoxInfo boxInfo2 = this.virtualBoxInfo;
        if (boxInfo2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
        } else {
            boxInfo = boxInfo2;
        }
        transformHandlerAction2.quitTransformObservable(boxInfo, false).subscribe();
    }

    /* renamed from: z */
    public final void m41131z(List<? extends Shape> shapes, HWRArgs hwrArgs) {
        List<? extends Shape> list = shapes;
        final ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof PenShape) {
                arrayList.add(obj);
            }
        }
        final ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list) {
            if (obj2 instanceof HWRTextShape) {
                arrayList2.add(obj2);
            }
        }
        final HWRExportToTextAction hWRExportToTextAction = new HWRExportToTextAction(getEditorBundle(), arrayList, hwrArgs);
        hWRExportToTextAction.build().doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.uln
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                TransformHandler.m41101A(HWRExportToTextAction.this, arrayList2, arrayList);
            }
        }).subscribe();
    }
}
