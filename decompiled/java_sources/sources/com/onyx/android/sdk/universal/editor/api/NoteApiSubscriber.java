package com.onyx.android.sdk.universal.editor.api;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBean;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.event.AddCommandEvent;
import com.onyx.android.sdk.note.common.event.RedoCommandEvent;
import com.onyx.android.sdk.note.common.event.UndoCommandEvent;
import com.onyx.android.sdk.note.common.event.UndoRedoDoneEvent;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.page.ClearNotePageRenderResultRequest;
import com.onyx.android.sdk.replicator.event.StartNoteReplicatorEvent;
import com.onyx.android.sdk.replicator.note.action.StartNoteDocSyncAction;
import com.onyx.android.sdk.replicator.note.bean.NoteCloudSyncCheckArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.AdaptiveColorThemeAction;
import com.onyx.android.sdk.universal.editor.action.SaveDocumentAction;
import com.onyx.android.sdk.universal.editor.action.audio.CreateAudioShapeAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNotePageAction;
import com.onyx.android.sdk.universal.editor.action.draft.MoveToOriginAction;
import com.onyx.android.sdk.universal.editor.action.draft.MoveToShapeRegionAction;
import com.onyx.android.sdk.universal.editor.action.draw.StartDrawingLaserShapeAction;
import com.onyx.android.sdk.universal.editor.action.draw.StartDrawingShapeAction;
import com.onyx.android.sdk.universal.editor.action.erase.ChangeEraserWidthAction;
import com.onyx.android.sdk.universal.editor.action.erase.StartEraseAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.DeleteExcerptByModelAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.DeleteQuoteAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeByExcerptAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.HandleImageDropAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.HandleMultiImageDropAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.HideQuoteIndicatorAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.LocateLargeMatrixShapeAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.SaveExcerptCollectionAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.SaveRectExcerptAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.SaveTextExcerptAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.StartExcerptAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.UpdateExcerptAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.UpdateQuoteAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RenderRequestManagerKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.handler.ActivateShapeHandlerAction;
import com.onyx.android.sdk.universal.editor.action.image.CreateImageShapeAction;
import com.onyx.android.sdk.universal.editor.action.link.CreateLinkShapeAction;
import com.onyx.android.sdk.universal.editor.action.page.GotoPageAction;
import com.onyx.android.sdk.universal.editor.action.page.RemoveInvalidVirtualPageAction;
import com.onyx.android.sdk.universal.editor.action.render.RedrawNoteAction;
import com.onyx.android.sdk.universal.editor.action.selection.StartSelectionAction;
import com.onyx.android.sdk.universal.editor.action.selection.StartTextSelectionAction;
import com.onyx.android.sdk.universal.editor.action.selection.StartTransformHandlerAction;
import com.onyx.android.sdk.universal.editor.action.shape.ChangePenArgsAction;
import com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeAlphaFactorAction;
import com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeColorAction;
import com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokePressureSensitivityAction;
import com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeSmoothLevelAction;
import com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeVelocityAmplifierAction;
import com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeVelocityIgnoreThresholdAction;
import com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeVelocityLowerBoundAction;
import com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeVelocitySensitivityAction;
import com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeVelocityUpperBoundAction;
import com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeWidthAction;
import com.onyx.android.sdk.universal.editor.action.shape.ChangeSubShapeAction;
import com.onyx.android.sdk.universal.editor.action.shape.CorrectShapePageAction;
import com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction;
import com.onyx.android.sdk.universal.editor.action.shape.ShowAllTapeShapeOverlayAction;
import com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction;
import com.onyx.android.sdk.universal.editor.action.textinput.StartTextInputAction;
import com.onyx.android.sdk.universal.editor.action.universalshape.StartUniversalShapeAction;
import com.onyx.android.sdk.universal.editor.api.NoteApiSubscriber;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.doc.VirtualPagePathInfo;
import com.onyx.android.sdk.universal.editor.events.app.AdaptiveColorThemeEvent;
import com.onyx.android.sdk.universal.editor.events.app.ClearCacheEvent;
import com.onyx.android.sdk.universal.editor.events.app.ClearRenderResultEvent;
import com.onyx.android.sdk.universal.editor.events.app.DumpDisplayInfoEvent;
import com.onyx.android.sdk.universal.editor.events.app.LocateLargeMatrixShapeEvent;
import com.onyx.android.sdk.universal.editor.events.app.RemoveInvalidVirtualPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.TryCorrectShapePageEvent;
import com.onyx.android.sdk.universal.editor.events.app.TryRestorePageOrderEvent;
import com.onyx.android.sdk.universal.editor.events.app.UpdateVirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.events.note.ActivateShapeHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeEraseTypeEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeEraserWidthEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangePenArgsEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeShapeTypeEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeAlphaFactorEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeColorEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokePressureSensitivityEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeSmoothLevelEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocityAmplifierEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocityIgnoreThresholdEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocityLowerBoundEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocitySensitivityEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocityUpperBoundEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeWidthEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeSubShapeTypeEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeTouchModeEvent;
import com.onyx.android.sdk.universal.editor.events.note.CreateAudioShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.DeleteExcerptByModelEvent;
import com.onyx.android.sdk.universal.editor.events.note.DeleteExcerptEvent;
import com.onyx.android.sdk.universal.editor.events.note.DeleteQuoteEvent;
import com.onyx.android.sdk.universal.editor.events.note.GotoExcerptShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.GotoQuoteEvent;
import com.onyx.android.sdk.universal.editor.events.note.GotoSourceEvent;
import com.onyx.android.sdk.universal.editor.events.note.HandleImageDropEvent;
import com.onyx.android.sdk.universal.editor.events.note.HandleMultiImageDropEvent;
import com.onyx.android.sdk.universal.editor.events.note.HideQuoteIndicatorEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertImagesEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertLinkEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertShapesEvent;
import com.onyx.android.sdk.universal.editor.events.note.InsertTagEvent;
import com.onyx.android.sdk.universal.editor.events.note.MoveToNextShapeRegionEvent;
import com.onyx.android.sdk.universal.editor.events.note.MoveToOriginEvent;
import com.onyx.android.sdk.universal.editor.events.note.MoveToPrevShapeRegionEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitExcerptSelectionEvent;
import com.onyx.android.sdk.universal.editor.events.note.RedrawNoteEvent;
import com.onyx.android.sdk.universal.editor.events.note.RestoreUserProviderEvent;
import com.onyx.android.sdk.universal.editor.events.note.SaveExcerptCollectionEvent;
import com.onyx.android.sdk.universal.editor.events.note.SaveRectExcerptEvent;
import com.onyx.android.sdk.universal.editor.events.note.SaveTextExcerptEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowTapeShapeOverlayEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartDrawingShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartEraseHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartExcerptHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartLaserShapeDrawingEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartSelectionHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartTextInputHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartTextSelectionHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartUniversalShapeDrawingEvent;
import com.onyx.android.sdk.universal.editor.events.note.UpdateExcerptEvent;
import com.onyx.android.sdk.universal.editor.events.note.UpdateQuoteShapeEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.editor.request.AfterDocumentOpenRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0092\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\t¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000fH\u0007J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0011H\u0007J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0013H\u0007J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0015H\u0007J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0017H\u0007J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0019H\u0007J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u001bH\u0007J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u001dH\u0007J\u0010\u0010 \u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u001fH\u0007J\u0010\u0010\"\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020!H\u0007J\u0010\u0010$\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020#H\u0007J\u0010\u0010&\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020%H\u0007J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020'H\u0007J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020)H\u0007J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020+H\u0007J\u0010\u0010.\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020-H\u0007J\u0010\u00100\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020/H\u0007J\u0010\u00102\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u000201H\u0007J\u0010\u00104\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u000203H\u0007J\u0010\u00106\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u000205H\u0007J\u0010\u00108\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u000207H\u0007J\u0010\u0010:\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u000209H\u0007J\u0010\u0010<\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020;H\u0007J\u0010\u0010>\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020=H\u0007J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020?H\u0007J\u0010\u0010B\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020AH\u0007J\u0010\u0010D\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020CH\u0007J\u0010\u0010F\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020EH\u0007J\u0010\u0010H\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020GH\u0007J\u0010\u0010J\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020IH\u0007J\u0010\u0010L\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020KH\u0007J\u0010\u0010N\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020MH\u0007J\u0010\u0010P\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020OH\u0007J\u0010\u0010R\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020QH\u0007J\u0010\u0010T\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020SH\u0007J\u0010\u0010V\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020UH\u0007J\u0010\u0010X\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020WH\u0007J\u0010\u0010Z\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020YH\u0007J\u0010\u0010\\\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020[H\u0007J\u0010\u0010^\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020]H\u0007J\u0010\u0010`\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020_H\u0007J\u0010\u0010b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020aH\u0007J\u0010\u0010d\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020cH\u0007J\u0010\u0010f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020eH\u0007J\u0010\u0010h\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020gH\u0007J\u0010\u0010j\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020iH\u0007J\u0010\u0010l\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020kH\u0007J\u0010\u0010n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020mH\u0007J\u0010\u0010p\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020oH\u0007J\u0010\u0010r\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020qH\u0007J\u0010\u0010t\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020sH\u0007J\u0010\u0010v\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020uH\u0007J\u0010\u0010x\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020wH\u0007J\u0010\u0010z\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020yH\u0007J\u0010\u0010|\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020{H\u0007J\u0010\u0010~\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020}H\u0007J\u0011\u0010\u0080\u0001\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u007fH\u0007J\u0012\u0010\u0082\u0001\u001a\u00020\u00022\u0007\u0010\u0005\u001a\u00030\u0081\u0001H\u0007J\u0012\u0010\u0084\u0001\u001a\u00020\u00022\u0007\u0010\u0005\u001a\u00030\u0083\u0001H\u0007¨\u0006\u0087\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber;", "Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;", "", "c", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeWidthEvent;", NotificationCompat.CATEGORY_EVENT, "onChangeStrokeWidthEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeColorEvent;", "onChangeStrokeColorEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokePressureSensitivityEvent;", "onChangeStrokePressureSensitivityEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocitySensitivityEvent;", "onChangeStrokeVelocitySensitivityEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityAmplifierEvent;", "onChangeStrokeVelocityAmplifierEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityIgnoreThresholdEvent;", "onChangeStrokeVelocityIgnoreThresholdEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;", "onChangeStrokeVelocityLowerBoundEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityUpperBoundEvent;", "onChangeStrokeVelocityUpperBoundEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeAlphaFactorEvent;", "onChangeStrokeAlphaFactorEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeSmoothLevelEvent;", "onChangeStrokeSmoothLevelEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeTypeEvent;", "onChangeShapeTypeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;", "onChangeSubShapeTypeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;", "onChangePenArgsEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraserWidthEvent;", "onChangeEraserWidth", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;", "onChangeEraseTypeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartTransformEvent;", "onStartTransformEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartDrawingShapeEvent;", "onStartDrawingShapeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartUniversalShapeDrawingEvent;", "onStartUniversalShapeDrawingEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartLaserShapeDrawingEvent;", "onStartLaserShapeDrawingEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartEraseHandlerEvent;", "onStartEraseHandlerEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartSelectionHandlerEvent;", "onStartSelectionHandlerEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionHandlerEvent;", "onStartTextSelectionHandlerEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;", "onStartTextInputHandlerEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptHandlerEvent;", "onStartExcerptHandlerEvent", "Lcom/onyx/android/sdk/note/common/event/AddCommandEvent;", "onAddCommandEvent", "Lcom/onyx/android/sdk/note/common/event/UndoCommandEvent;", "onUndoCommandEvent", "Lcom/onyx/android/sdk/note/common/event/RedoCommandEvent;", "onRedoCommandEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/InsertImagesEvent;", "onInsertImagesEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/InsertLinkEvent;", "onInsertLinkEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/InsertTagEvent;", "onInsertTagEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/InsertShapesEvent;", "onInsertShapesEvent", "Lcom/onyx/android/sdk/replicator/event/StartNoteReplicatorEvent;", "onStartNoteReplicatorEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SaveRectExcerptEvent;", "onSaveRectExcerptEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SaveTextExcerptEvent;", "onSaveTextExcerptEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SaveExcerptCollectionEvent;", "onSaveExcerptCollectionEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/CreateAudioShapeEvent;", "onCreateAudioShapeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HandleImageDropEvent;", "onHandleImageDropEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/GotoQuoteEvent;", "onGotoQuoteEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/GotoSourceEvent;", "onGotoSourceEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptEvent;", "onUpdateExcerptEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptByModelEvent;", "onDeleteExcerptByModelEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/GotoExcerptShapeEvent;", "onGotoExcerptShapeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HandleMultiImageDropEvent;", "onHandleMultiImageDropEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptEvent;", "onDeleteExcerptEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteQuoteEvent;", "onDeleteQuoteEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HideQuoteIndicatorEvent;", "onHideQuoteIndicatorEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateQuoteShapeEvent;", "onUpdateQuoteShapeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/RedrawNoteEvent;", "onRedrawNoteEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ActivateShapeHandlerEvent;", "onActivateShapeHandlerEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowTapeShapeOverlayEvent;", "onShowTapeShapeOverlayEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/UpdateVirtualDocViewInfoEvent;", "onUpdateVirtualDocViewInfoEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ClearCacheEvent;", "onClearCacheEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/DumpDisplayInfoEvent;", "onDumpDisplayInfoEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/RestoreUserProviderEvent;", "onRestoreUserProviderEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;", "onChangeTouchModeEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ClearRenderResultEvent;", "onClearRenderResultEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/TryRestorePageOrderEvent;", "onTryRestorePageOrderEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/TryCorrectShapePageEvent;", "onTryCorrectShapePageEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/LocateLargeMatrixShapeEvent;", "onLocateLargeMatrixShapeEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/RemoveInvalidVirtualPageEvent;", "onRemoveInvalidVirtualPageEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/MoveToPrevShapeRegionEvent;", "onMoveToPrevShapeRegionEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/MoveToNextShapeRegionEvent;", "onMoveToNextShapeRegionEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/MoveToOriginEvent;", "onMoveToOriginEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/AdaptiveColorThemeEvent;", "onAdaptiveColorThemeEvent", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteApiSubscriber.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteApiSubscriber.kt\ncom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,562:1\n1#2:563\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteApiSubscriber extends BaseApiSubscriber {

    /* renamed from: com.onyx.android.sdk.universal.editor.api.NoteApiSubscriber$a */
    /* loaded from: classes8.dex */
    public static final class C10301a<T, R> implements Function {
        public C10301a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NotePage> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureNotePageAction(NoteApiSubscriber.this.getEditorBundle(), it2).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.api.NoteApiSubscriber$b */
    /* loaded from: classes8.dex */
    public static final class C10302b<T, R> implements Function {
        public C10302b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ClearNotePageRenderResultRequest apply(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new ClearNotePageRenderResultRequest(EditorBundleKt.noteBundle(NoteApiSubscriber.this.getEditorBundle()), it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.api.NoteApiSubscriber$c */
    /* loaded from: classes8.dex */
    public static final class C10303c<T, R> implements Function {
        public C10303c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ClearNotePageRenderResultRequest> apply(@NotNull ClearNotePageRenderResultRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RxBaseAppActionKt.submitRequestToNote(NoteApiSubscriber.this.getEditorBundle(), it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.api.NoteApiSubscriber$d */
    /* loaded from: classes8.dex */
    public static final class C10304d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ StartReplicatorBean f51276e;

        /* renamed from: f */
        public final /* synthetic */ NoteCloudSyncCheckArgs f51277f;

        public C10304d(StartReplicatorBean startReplicatorBean, NoteCloudSyncCheckArgs noteCloudSyncCheckArgs) {
            this.f51276e = startReplicatorBean;
            this.f51277f = noteCloudSyncCheckArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartNoteDocSyncAction> apply(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new StartNoteDocSyncAction(this.f51276e, this.f51277f).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.api.NoteApiSubscriber$e */
    /* loaded from: classes8.dex */
    public static final class C10305e<T, R> implements Function {
        public C10305e() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AfterDocumentOpenRequest> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RxBaseAppActionKt.submitRequestToCore(NoteApiSubscriber.this.getEditorBundle(), new AfterDocumentOpenRequest(NoteApiSubscriber.this.getEditorBundle().getWorkBundle(), null, 2, 0 == true ? 1 : 0));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.api.NoteApiSubscriber$f */
    /* loaded from: classes8.dex */
    public static final class C10306f<T, R> implements Function {
        public C10306f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GotoPageAction> apply(@NotNull AfterDocumentOpenRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new GotoPageAction(NoteApiSubscriber.this.getEditorBundle(), 0).build();
        }
    }

    /* renamed from: b */
    public static final void m40579b(NoteApiSubscriber this$0, List shapes) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new StartTransformEvent(new ShapeTransformBean().setTransformShapes(shapes).setSelectionType(2).setSelectAll(true)));
    }

    /* renamed from: c */
    public final void m40580c() {
        EditorBundleKt.onPageChangedEvent(getEditorBundle());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onActivateShapeHandlerEvent(@NotNull ActivateShapeHandlerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ActivateShapeHandlerAction(getEditorBundle(), event.getUserProvider(), event.getProviderName(), event.getShapeType()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAdaptiveColorThemeEvent(@NotNull AdaptiveColorThemeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new AdaptiveColorThemeAction(getEditorBundle()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAddCommandEvent(@NotNull AddCommandEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getEditorBundle().getUiBundle().getCommandDataInfo().setRedoing(false);
        getEditorBundle().getUiBundle().getCommandDataInfo().updateCount(event.getUndoCount(), event.getRedoCount());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeEraseTypeEvent(@NotNull ChangeEraseTypeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new StartEraseAction(getEditorBundle(), Integer.valueOf(event.getEraseType()), event.getActiveUserProvider(), false, 8, null), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeEraserWidth(@NotNull ChangeEraserWidthEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangeEraserWidthAction(getEditorBundle(), event.getEraserWidth()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangePenArgsEvent(@NotNull ChangePenArgsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangePenArgsAction(getEditorBundle(), event.getPenArgs()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeShapeTypeEvent(@NotNull ChangeShapeTypeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangePenArgsAction(getEditorBundle(), MMKVNote.INSTANCE.getPenArgsOption(event.getShapeType()).get()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokeAlphaFactorEvent(@NotNull ChangeStrokeAlphaFactorEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangeStrokeAlphaFactorAction(getEditorBundle(), event.getFactor()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokeColorEvent(@NotNull ChangeStrokeColorEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangeStrokeColorAction(getEditorBundle(), event.getStrokeColor()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokePressureSensitivityEvent(@NotNull ChangeStrokePressureSensitivityEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangeStrokePressureSensitivityAction(getEditorBundle(), event.getSensitivity()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokeSmoothLevelEvent(@NotNull ChangeStrokeSmoothLevelEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangeStrokeSmoothLevelAction(getEditorBundle(), event.getSmoothLevel()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokeVelocityAmplifierEvent(@NotNull ChangeStrokeVelocityAmplifierEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangeStrokeVelocityAmplifierAction(getEditorBundle(), event.getAmplifier()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokeVelocityIgnoreThresholdEvent(@NotNull ChangeStrokeVelocityIgnoreThresholdEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangeStrokeVelocityIgnoreThresholdAction(getEditorBundle(), event.getThreshold()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokeVelocityLowerBoundEvent(@NotNull ChangeStrokeVelocityLowerBoundEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangeStrokeVelocityLowerBoundAction(getEditorBundle(), event.getLower()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokeVelocitySensitivityEvent(@NotNull ChangeStrokeVelocitySensitivityEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangeStrokeVelocitySensitivityAction(getEditorBundle(), event.getSensitivity()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokeVelocityUpperBoundEvent(@NotNull ChangeStrokeVelocityUpperBoundEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangeStrokeVelocityUpperBoundAction(getEditorBundle(), event.getUpper()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokeWidthEvent(@NotNull ChangeStrokeWidthEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangeStrokeWidthAction(getEditorBundle(), event.getStrokeWidth()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeSubShapeTypeEvent(@NotNull ChangeSubShapeTypeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangeSubShapeAction(getEditorBundle(), event.getShapeType()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeTouchModeEvent(@NotNull ChangeTouchModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundleKt.handlerManager(getEditorBundle()).updateTouchMode(event.getNewTouchMode());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onClearCacheEvent(@NotNull ClearCacheEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RenderRequestManagerKt.safeClearAllSliceCache(getEditorBundle());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onClearRenderResultEvent(@NotNull ClearRenderResultEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        List<BoxInfo> visibleBoxList = EditorBundleKt.visibleBoxList(getEditorBundle());
        if (!(!visibleBoxList.isEmpty())) {
            visibleBoxList = null;
        }
        if (visibleBoxList == null) {
            return;
        }
        Observable.fromIterable(visibleBoxList).flatMap(new C10301a()).map(new C10302b()).flatMap(new C10303c()).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCreateAudioShapeEvent(@NotNull CreateAudioShapeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new CreateAudioShapeAction(getEditorBundle(), event.getAudioInfoBean(), event.getAddToCmdStack()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteExcerptByModelEvent(@NotNull DeleteExcerptByModelEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundleKt.postEvent(getEditorBundle(), new QuitExcerptSelectionEvent(false, null, 2, null));
        RxBaseAction.execute$default(new DeleteExcerptByModelAction(getEditorBundle(), event.getExcerptInfoBeanList()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteExcerptEvent(@NotNull DeleteExcerptEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundleKt.postEvent(getEditorBundle(), new QuitExcerptSelectionEvent(false, null, 2, null));
        RxBaseAction.execute$default(new DeleteExcerptAction(getEditorBundle(), event.getHitTestShape()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteQuoteEvent(@NotNull DeleteQuoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new DeleteQuoteAction(getEditorBundle(), event.getHitTestVirtualPage(), event.getHitTestShape()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDumpDisplayInfoEvent(@NotNull DumpDisplayInfoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Debug.INSTANCE.m32062w(AnyKt.toSimpleNameString(this), EditorBundleKt.renderManager(getEditorBundle()).getDisplayDebugString() + ", " + EditorBundleKt.virtualDocViewInfo(getEditorBundle()).toDebugString(), new Object[0]);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onGotoExcerptShapeEvent(@NotNull GotoExcerptShapeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40580c();
        RxBaseAction.execute$default(new GotoShapeByExcerptAction(getEditorBundle(), event.getExcerptInfoBean()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onGotoQuoteEvent(@NotNull GotoQuoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new GotoShapeAction(getEditorBundle(), event.getQuoteId(), false, 4, null), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onGotoSourceEvent(@NotNull GotoSourceEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new GotoShapeAction(getEditorBundle(), event.getSourceId(), false, 4, null), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHandleImageDropEvent(@NotNull HandleImageDropEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new HandleImageDropAction(getEditorBundle(), event.getAndroidx.core.app.NotificationCompat.CATEGORY_EVENT java.lang.String(), event.getIsFromSameEditor()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHandleMultiImageDropEvent(@NotNull HandleMultiImageDropEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new HandleMultiImageDropAction(getEditorBundle(), event.getAndroidx.core.app.NotificationCompat.CATEGORY_EVENT java.lang.String()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHideQuoteIndicatorEvent(@NotNull HideQuoteIndicatorEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new HideQuoteIndicatorAction(getEditorBundle(), event.getRemovedExcerptCollectionList()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onInsertImagesEvent(@NotNull InsertImagesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40580c();
        RxBaseAction.execute$default(new CreateImageShapeAction(getEditorBundle(), event.getUriList()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onInsertLinkEvent(@NotNull InsertLinkEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new CreateLinkShapeAction(getEditorBundle(), event.getLinkBean(), event.getStartPoint()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onInsertShapesEvent(@NotNull InsertShapesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new InsertShapesAction(getEditorBundle(), event.getShapes(), event.getStartPoint(), event.getAutoSelect()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onInsertTagEvent(@NotNull final InsertTagEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxjavaKt.doOnNextIf(new CreateTagShapeAction(getEditorBundle(), event.getTagBean(), event.getStartPoint()).build(), new Function1<List<? extends Shape>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.api.NoteApiSubscriber$onInsertTagEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull List<? extends Shape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(InsertTagEvent.this.getAutoSelect());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.juj
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                NoteApiSubscriber.m40579b(NoteApiSubscriber.this, (List) obj);
            }
        }).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLocateLargeMatrixShapeEvent(@NotNull LocateLargeMatrixShapeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new LocateLargeMatrixShapeAction(getEditorBundle(), event.getScale()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMoveToNextShapeRegionEvent(@NotNull MoveToNextShapeRegionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new MoveToShapeRegionAction(getEditorBundle(), true), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMoveToOriginEvent(@NotNull MoveToOriginEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new MoveToOriginAction(getEditorBundle()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMoveToPrevShapeRegionEvent(@NotNull MoveToPrevShapeRegionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new MoveToShapeRegionAction(getEditorBundle(), false), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRedoCommandEvent(@NotNull RedoCommandEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getEditorBundle().getUiBundle().getCommandDataInfo().setRedoing(false);
        getEditorBundle().getUiBundle().getCommandDataInfo().updateCount(event.getUndoCount(), event.getRedoCount());
        EditorBundleKt.postEvent(getEditorBundle(), new UndoRedoDoneEvent());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRedrawNoteEvent(@NotNull RedrawNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new RedrawNoteAction(getEditorBundle()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRemoveInvalidVirtualPageEvent(@NotNull RemoveInvalidVirtualPageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new RemoveInvalidVirtualPageAction(getEditorBundle()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRestoreUserProviderEvent(@NotNull RestoreUserProviderEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundleKt.shapeHandlerManager(getEditorBundle()).restoreUserProvider();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSaveExcerptCollectionEvent(@NotNull SaveExcerptCollectionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        SaveExcerptCollectionAction saveExcerptCollectionAction = new SaveExcerptCollectionAction(getEditorBundle());
        saveExcerptCollectionAction.setArgs(event.getArgs());
        RxBaseAction.execute$default(saveExcerptCollectionAction, null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSaveRectExcerptEvent(@NotNull SaveRectExcerptEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        SaveRectExcerptAction saveRectExcerptAction = new SaveRectExcerptAction(getEditorBundle());
        saveRectExcerptAction.setArgs(event.getArgs());
        RxBaseAction.execute$default(saveRectExcerptAction, null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSaveTextExcerptEvent(@NotNull SaveTextExcerptEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        SaveTextExcerptAction saveTextExcerptAction = new SaveTextExcerptAction(getEditorBundle());
        saveTextExcerptAction.setArgs(event.getArgs());
        RxBaseAction.execute$default(saveTextExcerptAction, null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowTapeShapeOverlayEvent(@NotNull ShowTapeShapeOverlayEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ShowAllTapeShapeOverlayAction(getEditorBundle(), event.getShow()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartDrawingShapeEvent(@NotNull StartDrawingShapeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new StartDrawingShapeAction(getEditorBundle()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartEraseHandlerEvent(@NotNull StartEraseHandlerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new StartEraseAction(getEditorBundle(), null, event.getUserProvider(), false, 10, null), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartExcerptHandlerEvent(@NotNull StartExcerptHandlerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new StartExcerptAction(getEditorBundle()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartLaserShapeDrawingEvent(@NotNull StartLaserShapeDrawingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new StartDrawingLaserShapeAction(getEditorBundle()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartNoteReplicatorEvent(@NotNull StartNoteReplicatorEvent event) {
        List<String> mutableList;
        Intrinsics.checkNotNullParameter(event, "event");
        NoteCloudSyncCheckArgs noteCloudSyncCheckArgs = new NoteCloudSyncCheckArgs();
        noteCloudSyncCheckArgs.setCheckConfig(false);
        StartReplicatorBean startReplicatorBean = new StartReplicatorBean(0, false, false, false, null, null, false, 127, null);
        startReplicatorBean.setSyncAll(false);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) event.getDocIdList());
        startReplicatorBean.setSyncDocIdList(mutableList);
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<R> flatMap = new SaveDocumentAction(getEditorBundle()).build().flatMap(new C10304d(startReplicatorBean, noteCloudSyncCheckArgs));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, flatMap, null, null, 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartSelectionHandlerEvent(@NotNull StartSelectionHandlerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new StartSelectionAction(getEditorBundle(), null, 2, 0 == true ? 1 : 0), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartTextInputHandlerEvent(@NotNull StartTextInputHandlerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        StartTextInputAction startTextInputAction = new StartTextInputAction(getEditorBundle());
        if (event.getInsertPoint() != null) {
            startTextInputAction.setInsertPoint(event.getInsertPoint());
        }
        startTextInputAction.setTextToInsert(event.getInputText());
        startTextInputAction.setShowInitInputText(StringKt.isNotBlank(event.getInputText()));
        startTextInputAction.setEditForAll(event.getEditForAll());
        startTextInputAction.setSwitchToUserProvider(event.getUserProvider());
        RxBaseAction.execute$default(startTextInputAction, null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartTextSelectionHandlerEvent(@NotNull StartTextSelectionHandlerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new StartTextSelectionAction(getEditorBundle(), null, 2, 0 == true ? 1 : 0), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartTransformEvent(@NotNull StartTransformEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new StartTransformHandlerAction(getEditorBundle(), event.getTransformBean()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartUniversalShapeDrawingEvent(@NotNull StartUniversalShapeDrawingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new StartUniversalShapeAction(getEditorBundle(), event.getUserProvider()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTryCorrectShapePageEvent(@NotNull TryCorrectShapePageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new CorrectShapePageAction(getEditorBundle()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onTryRestorePageOrderEvent(@NotNull TryRestorePageOrderEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        DocCommonActionsKt.createCoreObservable(getEditorBundle(), new Function1<WorkBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.api.NoteApiSubscriber$onTryRestorePageOrderEvent$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(WorkBundle workBundle) {
                invoke2(workBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull WorkBundle workBundle) {
                List<VirtualPage> sortedWith;
                List<VirtualPagePathInfo> list;
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullParameter(workBundle, "workBundle");
                sortedWith = CollectionsKt___CollectionsKt.sortedWith(workBundle.getVirtualPolicy().getVirtualPageList(), new Comparator() { // from class: com.onyx.android.sdk.universal.editor.api.NoteApiSubscriber$onTryRestorePageOrderEvent$1$invoke$$inlined$sortedBy$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        int compareValues;
                        compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((VirtualPage) t).getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().parseContentPageIndex()), Integer.valueOf(((VirtualPage) t2).getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().parseContentPageIndex()));
                        return compareValues;
                    }
                });
                VirtualPage.Companion companion = VirtualPage.INSTANCE;
                companion.reorderOrderIndexByListIndex(sortedWith);
                list = CollectionsKt___CollectionsKt.toList(companion.toPagePathInfoList(sortedWith));
                List<VirtualPage> list2 = sortedWith;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                Iterator<T> it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList.add(VirtualPage.INSTANCE.createVirtualPageModel((VirtualPage) it2.next(), list));
                }
                workBundle.getVirtualModelProvider().saveVirtualPageList(arrayList);
                workBundle.getVirtualPolicy().close();
            }
        }).flatMap(new C10305e()).flatMap(new C10306f()).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUndoCommandEvent(@NotNull UndoCommandEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getEditorBundle().getUiBundle().getCommandDataInfo().setUndoing(false);
        getEditorBundle().getUiBundle().getCommandDataInfo().updateCount(event.getUndoCount(), event.getRedoCount());
        EditorBundleKt.postEvent(getEditorBundle(), new UndoRedoDoneEvent());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateExcerptEvent(@NotNull UpdateExcerptEvent event) {
        List listOf;
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundle editorBundle = getEditorBundle();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(event.getExcerptInfoBean());
        RxBaseAction.execute$default(new UpdateExcerptAction(editorBundle, listOf), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateQuoteShapeEvent(@NotNull UpdateQuoteShapeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new UpdateQuoteAction(getEditorBundle(), event.getArgs()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateVirtualDocViewInfoEvent(@NotNull UpdateVirtualDocViewInfoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        DocCommonActionsKt.postVirtualDocViewInfo(getEditorBundle()).subscribe();
    }
}
