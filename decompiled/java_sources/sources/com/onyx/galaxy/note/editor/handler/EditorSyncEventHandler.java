package com.onyx.galaxy.note.editor.handler;

import androidx.annotation.CallSuper;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.data.shape.ShapeBean;
import com.onyx.android.sdk.note.common.event.CommandEvent;
import com.onyx.android.sdk.note.common.event.NoteShapeChangedEvent;
import com.onyx.android.sdk.note.extension.NoteDocumentKt;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.SaveDocumentAction;
import com.onyx.android.sdk.universal.editor.action.command.CloneCommandAction;
import com.onyx.android.sdk.universal.editor.action.doc.ChangeDocAdaptiveStrokeWidthAction;
import com.onyx.android.sdk.universal.editor.action.doc.ChangeDocContinuousPageAction;
import com.onyx.android.sdk.universal.editor.action.doc.ChangeDocFetchPoliyOptionAction;
import com.onyx.android.sdk.universal.editor.action.doc.ChangeDocLayoutTypeAction;
import com.onyx.android.sdk.universal.editor.action.doc.ChangeDocPageColumnCountAction;
import com.onyx.android.sdk.universal.editor.action.doc.ChangeDocScrollerGravityAction;
import com.onyx.android.sdk.universal.editor.action.doc.ReleaseNoteMemoryAction;
import com.onyx.android.sdk.universal.editor.action.doc.ReopenDocumentAction;
import com.onyx.android.sdk.universal.editor.action.editor.ApplyCellVirtualPageAction;
import com.onyx.android.sdk.universal.editor.action.editor.ApplyChangedShapesAction;
import com.onyx.android.sdk.universal.editor.action.editor.ApplyPageChangedLayerChangAction;
import com.onyx.android.sdk.universal.editor.action.editor.ApplyPageCopiedAction;
import com.onyx.android.sdk.universal.editor.action.editor.ApplyPageInsertedAction;
import com.onyx.android.sdk.universal.editor.action.editor.ApplyPageLayerRemovedAction;
import com.onyx.android.sdk.universal.editor.action.editor.ApplyPageRemovedAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.layer.AddNotePageNewLayerAction;
import com.onyx.android.sdk.universal.editor.action.layer.SaveNotePageLayersAction;
import com.onyx.android.sdk.universal.editor.action.layer.SetNotePageCurLayerAction;
import com.onyx.android.sdk.universal.editor.action.page.InsertOtherNotePagesAction;
import com.onyx.android.sdk.universal.editor.action.page.RestoreRemovedPagesAction;
import com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction;
import com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler;
import com.onyx.android.sdk.universal.editor.events.app.ActivateDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.app.ChangeLayoutTypeEvent;
import com.onyx.android.sdk.universal.editor.events.app.ChangePageColumnCountEvent;
import com.onyx.android.sdk.universal.editor.events.app.ChangeScrollerGravityEvent;
import com.onyx.android.sdk.universal.editor.events.app.DocumentClosedEvent;
import com.onyx.android.sdk.universal.editor.events.app.DocumentOpenSuccessEvent;
import com.onyx.android.sdk.universal.editor.events.app.DraftCellAddedEvent;
import com.onyx.android.sdk.universal.editor.events.app.EnableAdaptiveStrokeWidthEvent;
import com.onyx.android.sdk.universal.editor.events.app.EnableContinuousPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.OtherNotePageInsertedEvent;
import com.onyx.android.sdk.universal.editor.events.app.PageCopiedEvent;
import com.onyx.android.sdk.universal.editor.events.app.PageInsertedEvent;
import com.onyx.android.sdk.universal.editor.events.app.PageLayerRemovedEvent;
import com.onyx.android.sdk.universal.editor.events.app.PagesRemovedEvent;
import com.onyx.android.sdk.universal.editor.events.app.PastePageEvent;
import com.onyx.android.sdk.universal.editor.events.app.RemovedPageRestoredEvent;
import com.onyx.android.sdk.universal.editor.events.app.RotatePageFinallyEvent;
import com.onyx.android.sdk.universal.editor.events.app.UpdateDocFetchPolicyEvent;
import com.onyx.android.sdk.universal.editor.events.app.UpdatePageMarginEvent;
import com.onyx.android.sdk.universal.editor.events.note.AudioInfoBeanRemovedEvent;
import com.onyx.android.sdk.universal.editor.events.note.AudioInfoBeanRenamedEvent;
import com.onyx.android.sdk.universal.editor.events.note.AudioShapeBeanCreatedEvent;
import com.onyx.android.sdk.universal.editor.events.note.EditorRedoEvent;
import com.onyx.android.sdk.universal.editor.events.note.EditorUndoEvent;
import com.onyx.android.sdk.universal.editor.events.note.GotoOtherShapeLinkEvent;
import com.onyx.android.sdk.universal.editor.events.note.NoteLayerAddedEvent;
import com.onyx.android.sdk.universal.editor.events.note.NoteLayerInfoChangedEvent;
import com.onyx.android.sdk.universal.editor.events.note.NoteLayerMergedEvent;
import com.onyx.android.sdk.universal.editor.events.note.NoteLayerSetEvent;
import com.onyx.android.sdk.universal.editor.events.note.NoteLayerUpdatedEvent;
import com.onyx.android.sdk.universal.editor.events.note.RedoEvent;
import com.onyx.android.sdk.universal.editor.events.note.ReleaseOtherNoteMemoryEvent;
import com.onyx.android.sdk.universal.editor.events.note.UndoEvent;
import com.onyx.android.sdk.universal.editor.events.note.UpdateShapeLocationBarEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.view.EditorBundleManager;
import com.onyx.galaxy.note.category.event.NoteTagUpdatedEvent;
import com.onyx.galaxy.note.category.event.NoteTitleUpdatedEvent;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import com.onyx.galaxy.note.editor.action.audio.RenameAudioNameAction;
import com.onyx.galaxy.note.editor.event.EditNoteEncryptionChangedEvent;
import com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u009a\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010_\u001a\u00020]\u0012\u0006\u0010`\u001a\u00020Y¢\u0006\u0004\ba\u0010bJ\u001c\u0010\u0006\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000eH\u0007J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0012H\u0007J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0014H\u0007J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0016H\u0007J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0018H\u0007J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u001aH\u0007J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u001cH\u0007J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u001eH\u0007J\u0010\u0010!\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020 H\u0007J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\"H\u0007J\u0010\u0010%\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020$H\u0007J\u0010\u0010'\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020&H\u0007J\u0010\u0010)\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020(H\u0007J\u0010\u0010+\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020*H\u0007J\u0010\u0010-\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020,H\u0007J\u0010\u0010/\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020.H\u0007J\u0010\u00101\u001a\u00020\u00042\u0006\u0010\f\u001a\u000200H\u0007J\u0010\u00103\u001a\u00020\u00042\u0006\u0010\f\u001a\u000202H\u0007J\u0010\u00105\u001a\u00020\u00042\u0006\u0010\f\u001a\u000204H\u0007J\u0010\u00107\u001a\u00020\u00042\u0006\u0010\f\u001a\u000206H\u0007J\u0010\u00109\u001a\u00020\u00042\u0006\u0010\f\u001a\u000208H\u0007J\u0010\u0010;\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020:H\u0007J\u0010\u0010=\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020<H\u0007J\u0010\u0010?\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020>H\u0007J\u0010\u0010A\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020@H\u0007J\u0010\u0010C\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020BH\u0007J\u0010\u0010E\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020DH\u0007J\u0010\u0010G\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020FH\u0007J\u0010\u0010I\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020HH\u0007J\u0010\u0010K\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020JH\u0007J\u0010\u0010M\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020LH\u0007J\u0010\u0010O\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020NH\u0017J\u0010\u0010Q\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020PH\u0007J\u0010\u0010S\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020RH\u0007J\u0010\u0010U\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020TH\u0007J\u0010\u0010W\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020VH\u0007J\u001e\u0010\\\u001a\u00020\u00042\f\u0010Z\u001a\b\u0012\u0004\u0012\u00020Y0X2\u0006\u0010[\u001a\u00020&H\u0015R\u0014\u0010_\u001a\u00020]8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010^¨\u0006c"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "", "callback", C6997f.f39671c, "e", "", EditorConstants.ARGS_DOC_ID, "d", "", NotificationCompat.CATEGORY_EVENT, "c", "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;", "onDocumentOpenSuccessEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentClosedEvent;", "onDocumentClosedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ActivateDocumentEvent;", "onActivateDocumentEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ReleaseOtherNoteMemoryEvent;", "onReleaseOtherNoteMemoryEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ChangePageColumnCountEvent;", "onChangePageColumnCountEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/EnableAdaptiveStrokeWidthEvent;", "onEnableAdaptiveStrokeWidthEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/EnableContinuousPageEvent;", "onEnableContinuousPageEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ChangeLayoutTypeEvent;", "onChangeLayoutTypeEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ChangeScrollerGravityEvent;", "onChangeScrollerGravityEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/EditorUndoEvent;", "onEditorUndoEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/EditorRedoEvent;", "onEditorRedoEvent", "Lcom/onyx/android/sdk/note/common/event/CommandEvent;", "onCommandEvent", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "onChangedShapeBeanEvent", "Lcom/onyx/android/sdk/note/common/event/NoteShapeChangedEvent;", "onNoteShapeChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/PageInsertedEvent;", "onPageInsertedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;", "onOtherNotePageInsertedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/PagesRemovedEvent;", "onPageRemovedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/UpdateDocFetchPolicyEvent;", "onUpdateDocFetchPolicyEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/RemovedPageRestoredEvent;", "onRemovedPageRestoredEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;", "onPageCopiedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageFinallyEvent;", "onRotatePageFinallyEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/PastePageEvent;", "onPastePageEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/UpdatePageMarginEvent;", "onUpdatePageMarginEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/PageLayerRemovedEvent;", "onPageLayerRemovedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerInfoChangedEvent;", "onNoteLayerInfoChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerMergedEvent;", "onNoteLayerMergedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerAddedEvent;", "onNoteLayerAddedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerSetEvent;", "onNoteLayerSetEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerUpdatedEvent;", "onNoteLayerUpdatedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanCreatedEvent;", "onAudioShapeBeanCreatedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/AudioInfoBeanRemovedEvent;", "onAudioInfoBeanRemovedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/AudioInfoBeanRenamedEvent;", "onAudioInfoBeanRenamedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;", "onDraftCellAddedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/GotoOtherShapeLinkEvent;", "onGotoGotoOtherNoteLinkEvent", "Lcom/onyx/galaxy/note/editor/event/EditNoteEncryptionChangedEvent;", "onEditNoteEncryptionChangedEvent", "Lcom/onyx/galaxy/note/category/event/NoteTitleUpdatedEvent;", "onNoteTitleUpdatedEvent", "Lcom/onyx/galaxy/note/category/event/NoteTagUpdatedEvent;", "onNoteTagUpdatedEvent", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundleList", "changedShapeBean", "applyChangedShapes", "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "editorBundleManager", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEditorSyncEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorSyncEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,540:1\n766#2:541\n857#2,2:542\n766#2:544\n857#2,2:545\n1855#2,2:547\n766#2:549\n857#2,2:550\n1855#2,2:552\n1477#2:554\n1502#2,3:555\n1505#2,3:565\n1855#2:568\n1855#2,2:569\n1726#2,3:571\n1856#2:574\n766#2:575\n857#2,2:576\n1855#2,2:578\n1855#2,2:580\n372#3,7:558\n*S KotlinDebug\n*F\n+ 1 EditorSyncEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler\n*L\n127#1:541\n127#1:542,2\n128#1:544\n128#1:545,2\n129#1:547,2\n481#1:549\n481#1:550,2\n484#1:552,2\n488#1:554\n488#1:555,3\n488#1:565,3\n490#1:568\n491#1:569,2\n494#1:571,3\n490#1:574\n502#1:575\n502#1:576,2\n503#1:578,2\n533#1:580,2\n488#1:558,7\n*E\n"})
/* loaded from: classes9.dex */
public class EditorSyncEventHandler extends BaseEventHandler {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final EditorBundleManager editorBundleManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditorSyncEventHandler(@NotNull EditorBundleManager editorBundleManager, @NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundleManager, "editorBundleManager");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundleManager = editorBundleManager;
    }

    /* renamed from: b */
    public static final void m46043b(EditorBundle it2) {
        Intrinsics.checkNotNullParameter(it2, "$it");
        EditorBundleKt.postEvent(it2, new UpdateShapeLocationBarEvent());
    }

    @CallSuper
    public void applyChangedShapes(@NotNull List<EditorBundle> editorBundleList, @NotNull ChangedShapeBean changedShapeBean) {
        Intrinsics.checkNotNullParameter(editorBundleList, "editorBundleList");
        Intrinsics.checkNotNullParameter(changedShapeBean, "changedShapeBean");
        for (final EditorBundle editorBundle : editorBundleList) {
            new ApplyChangedShapesAction(editorBundle, changedShapeBean).build().doFinally(new Action() { // from class: com.sunia.HTREnginev2.imf
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    EditorSyncEventHandler.m46043b(EditorBundle.this);
                }
            }).subscribe();
        }
    }

    /* renamed from: c */
    public final void m46044c(Object event) {
        EditorBundleKt.postEvent(getEditorBundle(), event);
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new EditorSyncEventHandler$concatPostUndoRedoEvent$1(this, event));
    }

    /* renamed from: d */
    public final void m46045d(String docId) {
        List<EditorBundle> primaryEditorBundleList = this.editorBundleManager.getPrimaryEditorBundleList();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = primaryEditorBundleList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            EditorBundle editorBundle = (EditorBundle) next;
            if (Intrinsics.areEqual(EditorBundleKt.docId(editorBundle), docId) && editorBundle != getEditorBundle()) {
                arrayList.add(next);
            }
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            EditorBundleKt.setOwner((EditorBundle) it3.next(), true);
        }
    }

    /* renamed from: e */
    public final void m46046e() {
        boolean z;
        Object first;
        List<EditorBundle> immutableEditorBundleList = this.editorBundleManager.getImmutableEditorBundleList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : immutableEditorBundleList) {
            if (Intrinsics.areEqual(EditorBundleKt.docId((EditorBundle) obj), EditorBundleKt.docId(getEditorBundle()))) {
                arrayList.add(obj);
            }
        }
        boolean z2 = arrayList.size() > 1;
        if (!z2) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                EditorBundleKt.setOwner((EditorBundle) it2.next(), !z2);
            }
            return;
        }
        List<EditorBundle> immutableEditorBundleList2 = this.editorBundleManager.getImmutableEditorBundleList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj2 : immutableEditorBundleList2) {
            String docId = EditorBundleKt.docId((EditorBundle) obj2);
            Object obj3 = linkedHashMap.get(docId);
            if (obj3 == null) {
                obj3 = new ArrayList();
                linkedHashMap.put(docId, obj3);
            }
            ((List) obj3).add(obj2);
        }
        for (List list : linkedHashMap.values()) {
            Iterator it3 = list.subList(1, list.size()).iterator();
            while (it3.hasNext()) {
                EditorBundleKt.setOwner((EditorBundle) it3.next(), false);
            }
            List list2 = list;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                Iterator it4 = list2.iterator();
                while (it4.hasNext()) {
                    if (!(!EditorBundleKt.isOwner((EditorBundle) it4.next()))) {
                        z = false;
                        break;
                    }
                }
            }
            z = true;
            if (z) {
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
                EditorBundleKt.setOwner((EditorBundle) first, true);
            }
        }
    }

    /* renamed from: f */
    public final void m46047f(final Function1<? super SyncNoteModel, Unit> callback) {
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$updateAssociatedBundleNoteModel$1

            /* renamed from: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$updateAssociatedBundleNoteModel$1$a */
            /* loaded from: classes9.dex */
            public static final class C12038a<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ Function1<SyncNoteModel, Unit> f58681e;

                /* JADX WARN: Multi-variable type inference failed */
                public C12038a(Function1<? super SyncNoteModel, Unit> function1) {
                    this.f58681e = function1;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull EditorBundle it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f58681e.invoke(EditorBundleKt.noteBundle(it2).getNoteDoc().getNoteModel());
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                Function1<SyncNoteModel, Unit> function1 = callback;
                for (EditorBundle editorBundle : list) {
                    Observable.just(editorBundle).observeOn(EditorBundleKt.noteScheduler(editorBundle)).doOnNext(new C12038a(function1)).subscribe();
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onActivateDocumentEvent(@NotNull ActivateDocumentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46046e();
        Debug.INSTANCE.m32035d(getClass(), "onActivateDocumentEvent:" + event.getSyncNoteModel().getUniqueId(), new Object[0]);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAudioInfoBeanRemovedEvent(@NotNull final AudioInfoBeanRemovedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onAudioInfoBeanRemovedEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                AudioInfoBeanRemovedEvent audioInfoBeanRemovedEvent = AudioInfoBeanRemovedEvent.this;
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    RemoveAudioAction removeAudioAction = new RemoveAudioAction((EditorBundle) it2.next(), audioInfoBeanRemovedEvent.getAudioInfoBeanList());
                    removeAudioAction.setPostShapeChangedEvent(false);
                    removeAudioAction.build().subscribe();
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAudioInfoBeanRenamedEvent(@NotNull final AudioInfoBeanRenamedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onAudioInfoBeanRenamedEvent$1

            /* renamed from: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onAudioInfoBeanRenamedEvent$1$a */
            /* loaded from: classes9.dex */
            public static final class C12028a<T> implements Predicate {

                /* renamed from: e */
                public static final C12028a<T> f58669e = new C12028a<>();

                @Override // io.reactivex.rxjava3.functions.Predicate
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final boolean test(@NotNull List<AudioInfoBean> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return !it2.isEmpty();
                }
            }

            @SourceDebugExtension({"SMAP\nEditorSyncEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorSyncEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onAudioInfoBeanRenamedEvent$1$1$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,540:1\n1#2:541\n*E\n"})
            /* renamed from: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onAudioInfoBeanRenamedEvent$1$b */
            /* loaded from: classes9.dex */
            public static final class C12029b<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ EditorBundle f58670e;

                /* renamed from: f */
                public final /* synthetic */ AudioInfoBeanRenamedEvent f58671f;

                public C12029b(EditorBundle editorBundle, AudioInfoBeanRenamedEvent audioInfoBeanRenamedEvent) {
                    this.f58670e = editorBundle;
                    this.f58671f = audioInfoBeanRenamedEvent;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends RenameAudioNameAction> apply(@NotNull List<AudioInfoBean> it2) {
                    Object first;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    EditorBundle editorBundle = this.f58670e;
                    first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2);
                    RenameAudioNameAction renameAudioNameAction = new RenameAudioNameAction(editorBundle, (AudioInfoBean) first, this.f58671f.getAudioInfoBean().getTitle());
                    renameAudioNameAction.setPostShapeChangedEvent(false);
                    return renameAudioNameAction.build();
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                final AudioInfoBeanRenamedEvent audioInfoBeanRenamedEvent = AudioInfoBeanRenamedEvent.this;
                for (EditorBundle editorBundle : list) {
                    DocCommonActionsKt.createNoteObservable(editorBundle, new Function1<NoteBundle, List<? extends AudioInfoBean>>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onAudioInfoBeanRenamedEvent$1$1$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final List<AudioInfoBean> invoke(@NotNull NoteBundle it2) {
                            List<AudioInfoBean> listOfNotNull;
                            Intrinsics.checkNotNullParameter(it2, "it");
                            ShapeBean findShapeBean = it2.findShapeBean(AudioInfoBeanRenamedEvent.this.getAudioInfoBean());
                            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(findShapeBean != null ? findShapeBean.getAudioInfoBean() : null);
                            return listOfNotNull;
                        }
                    }).filter(C12028a.f58669e).flatMap(new C12029b(editorBundle, audioInfoBeanRenamedEvent)).subscribe();
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAudioShapeBeanCreatedEvent(@NotNull final AudioShapeBeanCreatedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onAudioShapeBeanCreatedEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                final AudioShapeBeanCreatedEvent audioShapeBeanCreatedEvent = AudioShapeBeanCreatedEvent.this;
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    DocCommonActionsKt.createNoteObservable((EditorBundle) it2.next(), new Function1<NoteBundle, ShapeBean>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onAudioShapeBeanCreatedEvent$1$1$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final ShapeBean invoke(@NotNull NoteBundle it3) {
                            Intrinsics.checkNotNullParameter(it3, "it");
                            ShapeBean addAudioShapeBean = it3.addAudioShapeBean(AudioShapeBeanCreatedEvent.this.getShapeBean().getShape(), AudioShapeBeanCreatedEvent.this.getShapeBean().getAudioInfoBean(), AudioShapeBeanCreatedEvent.this.getShapeBean().getResourceModel());
                            Intrinsics.checkNotNull(addAudioShapeBean);
                            return addAudioShapeBean;
                        }
                    }).subscribe();
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeLayoutTypeEvent(@NotNull final ChangeLayoutTypeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onChangeLayoutTypeEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ChangeLayoutTypeEvent changeLayoutTypeEvent = ChangeLayoutTypeEvent.this;
                Iterator<T> it3 = it2.iterator();
                while (it3.hasNext()) {
                    RxBaseAction.execute$default(new ChangeDocLayoutTypeAction((EditorBundle) it3.next(), changeLayoutTypeEvent.getLayoutType()), null, null, null, 7, null);
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangePageColumnCountEvent(@NotNull final ChangePageColumnCountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onChangePageColumnCountEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ChangePageColumnCountEvent changePageColumnCountEvent = ChangePageColumnCountEvent.this;
                Iterator<T> it3 = it2.iterator();
                while (it3.hasNext()) {
                    RxBaseAction.execute$default(new ChangeDocPageColumnCountAction((EditorBundle) it3.next(), changePageColumnCountEvent.getPageColumnCount()), null, null, null, 7, null);
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeScrollerGravityEvent(@NotNull final ChangeScrollerGravityEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onChangeScrollerGravityEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ChangeScrollerGravityEvent changeScrollerGravityEvent = ChangeScrollerGravityEvent.this;
                Iterator<T> it3 = it2.iterator();
                while (it3.hasNext()) {
                    RxBaseAction.execute$default(new ChangeDocScrollerGravityAction((EditorBundle) it3.next(), changeScrollerGravityEvent.isHorizontal(), changeScrollerGravityEvent.getGravity()), null, null, null, 7, null);
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangedShapeBeanEvent(@NotNull final ChangedShapeBean event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onChangedShapeBeanEvent$1

            /* renamed from: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onChangedShapeBeanEvent$1$a */
            /* loaded from: classes9.dex */
            public static final class C12031a<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ EditorSyncEventHandler f58672e;

                /* renamed from: f */
                public final /* synthetic */ List<EditorBundle> f58673f;

                public C12031a(EditorSyncEventHandler editorSyncEventHandler, List<EditorBundle> list) {
                    this.f58672e = editorSyncEventHandler;
                    this.f58673f = list;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull ChangedShapeBean it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f58672e.applyChangedShapes(this.f58673f, it2);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                if (CollectionKt.isNullOrEmpty(list)) {
                    return;
                }
                EditorBundle editorBundle = EditorSyncEventHandler.this.getEditorBundle();
                final ChangedShapeBean changedShapeBean = event;
                DocCommonActionsKt.createLightNoteObservable(editorBundle, new Function1<NoteBundle, ChangedShapeBean>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onChangedShapeBeanEvent$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final ChangedShapeBean invoke(@NotNull NoteBundle it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return ChangedShapeBean.this.deepFullCopy();
                    }
                }).doOnNext(new C12031a(EditorSyncEventHandler.this, list)).subscribe();
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCommandEvent(@NotNull final CommandEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onCommandEvent$1

            @SourceDebugExtension({"SMAP\nEditorSyncEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorSyncEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onCommandEvent$1$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,540:1\n1855#2,2:541\n*S KotlinDebug\n*F\n+ 1 EditorSyncEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onCommandEvent$1$2\n*L\n195#1:541,2\n*E\n"})
            /* renamed from: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onCommandEvent$1$a */
            /* loaded from: classes9.dex */
            public static final class C12033a<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ List<EditorBundle> f58674e;

                /* renamed from: f */
                public final /* synthetic */ CommandEvent f58675f;

                public C12033a(List<EditorBundle> list, CommandEvent commandEvent) {
                    this.f58674e = list;
                    this.f58675f = commandEvent;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull Unit it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    List<EditorBundle> list = this.f58674e;
                    CommandEvent commandEvent = this.f58675f;
                    Iterator<T> it3 = list.iterator();
                    while (it3.hasNext()) {
                        RxBaseAction.execute$default(new CloneCommandAction((EditorBundle) it3.next(), commandEvent.getCommand()), null, null, null, 7, null);
                    }
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                if (CollectionKt.isNullOrEmpty(list)) {
                    return;
                }
                DocCommonActionsKt.createLightNoteObservable(EditorSyncEventHandler.this.getEditorBundle(), new Function1<NoteBundle, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onCommandEvent$1.1
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull NoteBundle it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                        invoke2(noteBundle);
                        return Unit.INSTANCE;
                    }
                }).doOnNext(new C12033a(list, event)).subscribe();
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocumentClosedEvent(@NotNull DocumentClosedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Debug.INSTANCE.m32035d(getClass(), "onDocumentClosedEvent:" + event.getDocId(), new Object[0]);
        m46045d(event.getDocId());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocumentOpenSuccessEvent(@NotNull DocumentOpenSuccessEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46046e();
        Debug.INSTANCE.m32035d(getClass(), "onDocumentOpened:" + event.getOpenDocArgs().getDocumentId(), new Object[0]);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDraftCellAddedEvent(@NotNull final DraftCellAddedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onDraftCellAddedEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                if (list.isEmpty()) {
                    return;
                }
                DraftCellAddedEvent draftCellAddedEvent = DraftCellAddedEvent.this;
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    RxBaseAction.execute$default(new ApplyCellVirtualPageAction((EditorBundle) it2.next(), draftCellAddedEvent.getVirtualPage().copy()), null, null, null, 7, null);
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditNoteEncryptionChangedEvent(@NotNull final EditNoteEncryptionChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46047f(new Function1<SyncNoteModel, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onEditNoteEncryptionChangedEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SyncNoteModel syncNoteModel) {
                invoke2(syncNoteModel);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull SyncNoteModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.setEncryption(EditNoteEncryptionChangedEvent.this.getSyncNoteModel().getEncryption());
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditorRedoEvent(@NotNull EditorRedoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46044c(new RedoEvent());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditorUndoEvent(@NotNull EditorUndoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46044c(new UndoEvent());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEnableAdaptiveStrokeWidthEvent(@NotNull final EnableAdaptiveStrokeWidthEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onEnableAdaptiveStrokeWidthEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                EnableAdaptiveStrokeWidthEvent enableAdaptiveStrokeWidthEvent = EnableAdaptiveStrokeWidthEvent.this;
                Iterator<T> it3 = it2.iterator();
                while (it3.hasNext()) {
                    RxBaseAction.execute$default(new ChangeDocAdaptiveStrokeWidthAction((EditorBundle) it3.next(), enableAdaptiveStrokeWidthEvent.getEnabled()), null, null, null, 7, null);
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEnableContinuousPageEvent(@NotNull final EnableContinuousPageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onEnableContinuousPageEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                EnableContinuousPageEvent enableContinuousPageEvent = EnableContinuousPageEvent.this;
                Iterator<T> it3 = it2.iterator();
                while (it3.hasNext()) {
                    RxBaseAction.execute$default(new ChangeDocContinuousPageAction((EditorBundle) it3.next(), enableContinuousPageEvent.getEnabled()), null, null, null, 7, null);
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onGotoGotoOtherNoteLinkEvent(@NotNull GotoOtherShapeLinkEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new GotoOtherNoteLinkAction(getEditorBundle(), this.editorBundleManager, event.getLinkBean()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteLayerAddedEvent(@NotNull final NoteLayerAddedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onNoteLayerAddedEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                NoteLayerAddedEvent noteLayerAddedEvent = NoteLayerAddedEvent.this;
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    AddNotePageNewLayerAction addNotePageNewLayerAction = new AddNotePageNewLayerAction((EditorBundle) it2.next(), Integer.valueOf(noteLayerAddedEvent.getLayerInfo().getId()));
                    addNotePageNewLayerAction.setPostChangedEvent(false);
                    RxBaseAction.execute$default(addNotePageNewLayerAction, null, null, null, 7, null);
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteLayerInfoChangedEvent(@NotNull final NoteLayerInfoChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onNoteLayerInfoChangedEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                NoteLayerInfoChangedEvent noteLayerInfoChangedEvent = NoteLayerInfoChangedEvent.this;
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    RxBaseAction.execute$default(new ApplyPageChangedLayerChangAction((EditorBundle) it2.next(), noteLayerInfoChangedEvent.getLayerInfo()), null, null, null, 7, null);
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteLayerMergedEvent(@NotNull final NoteLayerMergedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onNoteLayerMergedEvent$1

            /* renamed from: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onNoteLayerMergedEvent$1$a */
            /* loaded from: classes9.dex */
            public static final class C12034a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ EditorBundle f58676e;

                public C12034a(EditorBundle editorBundle) {
                    this.f58676e = editorBundle;
                }

                @NotNull
                /* renamed from: a */
                public final ObservableSource<? extends Object> m46055a(int i) {
                    return DocCommonActionsKt.postVirtualDocViewInfo(this.f58676e);
                }

                @Override // io.reactivex.rxjava3.functions.Function
                public /* bridge */ /* synthetic */ Object apply(Object obj) {
                    return m46055a(((Number) obj).intValue());
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                final NoteLayerMergedEvent noteLayerMergedEvent = NoteLayerMergedEvent.this;
                for (EditorBundle editorBundle : list) {
                    DocCommonActionsKt.createNoteObservable(editorBundle, new Function1<NoteBundle, Integer>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onNoteLayerMergedEvent$1$1$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final Integer invoke(@NotNull NoteBundle it2) {
                            Intrinsics.checkNotNullParameter(it2, "it");
                            return Integer.valueOf(NoteDocumentKt.mergeLayers(it2.getNoteDoc(), NoteLayerMergedEvent.this.getSrcLayerIds(), NoteLayerMergedEvent.this.getTargetLayerId()));
                        }
                    }).flatMap(new C12034a(editorBundle)).subscribe();
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteLayerSetEvent(@NotNull final NoteLayerSetEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onNoteLayerSetEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                NoteLayerSetEvent noteLayerSetEvent = NoteLayerSetEvent.this;
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    SetNotePageCurLayerAction setNotePageCurLayerAction = new SetNotePageCurLayerAction((EditorBundle) it2.next(), noteLayerSetEvent.getLayerId());
                    setNotePageCurLayerAction.setPostChangedEvent(false);
                    RxBaseAction.execute$default(setNotePageCurLayerAction, null, null, null, 7, null);
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteLayerUpdatedEvent(@NotNull final NoteLayerUpdatedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onNoteLayerUpdatedEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                NoteLayerUpdatedEvent noteLayerUpdatedEvent = NoteLayerUpdatedEvent.this;
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    SaveNotePageLayersAction saveNotePageLayersAction = new SaveNotePageLayersAction((EditorBundle) it2.next(), noteLayerUpdatedEvent.getPageInfo());
                    saveNotePageLayersAction.setPostChangedEvent(false);
                    RxBaseAction.execute$default(saveNotePageLayersAction, null, null, null, 7, null);
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteShapeChangedEvent(@NotNull NoteShapeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        onChangedShapeBeanEvent(event.getChangedShapeBean());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteTagUpdatedEvent(@NotNull final NoteTagUpdatedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46047f(new Function1<SyncNoteModel, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onNoteTagUpdatedEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SyncNoteModel syncNoteModel) {
                invoke2(syncNoteModel);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull SyncNoteModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.setTagIdList(NoteTagUpdatedEvent.this.getNoteModel().getTagIdList());
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteTitleUpdatedEvent(@NotNull final NoteTitleUpdatedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46047f(new Function1<SyncNoteModel, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onNoteTitleUpdatedEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SyncNoteModel syncNoteModel) {
                invoke2(syncNoteModel);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull SyncNoteModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.setTitle(NoteTitleUpdatedEvent.this.getNoteModel().getTitle());
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onOtherNotePageInsertedEvent(@NotNull final OtherNotePageInsertedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onOtherNotePageInsertedEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                OtherNotePageInsertedEvent otherNotePageInsertedEvent = OtherNotePageInsertedEvent.this;
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    InsertOtherNotePagesAction.Companion.afterInserted((EditorBundle) it2.next(), otherNotePageInsertedEvent.getTargetPageInfo(), otherNotePageInsertedEvent.getPageIndex()).subscribe();
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPageCopiedEvent(@NotNull final PageCopiedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onPageCopiedEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                PageCopiedEvent pageCopiedEvent = PageCopiedEvent.this;
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    RxBaseAction.execute$default(new ApplyPageCopiedAction((EditorBundle) it2.next(), pageCopiedEvent.getPageIndex(), pageCopiedEvent.getVirtualPage(), pageCopiedEvent.getNotePage()), null, null, null, 7, null);
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPageInsertedEvent(@NotNull final PageInsertedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onPageInsertedEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                PageInsertedEvent pageInsertedEvent = PageInsertedEvent.this;
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    RxBaseAction.execute$default(new ApplyPageInsertedAction((EditorBundle) it2.next(), pageInsertedEvent.getInsertPageArgs(), pageInsertedEvent.getVirtualPage()), null, null, null, 7, null);
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPageLayerRemovedEvent(@NotNull final PageLayerRemovedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onPageLayerRemovedEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                PageLayerRemovedEvent pageLayerRemovedEvent = PageLayerRemovedEvent.this;
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    RxBaseAction.execute$default(new ApplyPageLayerRemovedAction((EditorBundle) it2.next(), pageLayerRemovedEvent.getLayerIdList()), null, null, null, 7, null);
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPageRemovedEvent(@NotNull final PagesRemovedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onPageRemovedEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                PagesRemovedEvent pagesRemovedEvent = PagesRemovedEvent.this;
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    RxBaseAction.execute$default(new ApplyPageRemovedAction((EditorBundle) it2.next(), pagesRemovedEvent.getPageIdList()), null, null, null, 7, null);
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPastePageEvent(@NotNull PastePageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onPastePageEvent$1

            /* renamed from: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onPastePageEvent$1$a */
            /* loaded from: classes9.dex */
            public static final class C12035a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ EditorBundle f58677e;

                public C12035a(EditorBundle editorBundle) {
                    this.f58677e = editorBundle;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return DisplayActionsKt.display$default(this.f58677e, false, 1, null);
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                for (EditorBundle editorBundle : list) {
                    new ReopenDocumentAction(editorBundle).build().flatMap(new C12035a(editorBundle)).subscribe();
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onReleaseOtherNoteMemoryEvent(@NotNull ReleaseOtherNoteMemoryEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        List<EditorBundle> immutableEditorBundleList = this.editorBundleManager.getImmutableEditorBundleList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : immutableEditorBundleList) {
            if (!Intrinsics.areEqual((EditorBundle) obj, getEditorBundle())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (EditorBundleKt.isDocumentOpen((EditorBundle) obj2)) {
                arrayList2.add(obj2);
            }
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            RxBaseAction.execute$default(new ReleaseNoteMemoryAction((EditorBundle) it2.next()), null, null, null, 7, null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRemovedPageRestoredEvent(@NotNull RemovedPageRestoredEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onRemovedPageRestoredEvent$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    RestoreRemovedPagesAction.Companion.afterRestore((EditorBundle) it2.next(), "").subscribe();
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRotatePageFinallyEvent(@NotNull RotatePageFinallyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        final EditorBundle editorBundle = getEditorBundle();
        this.editorBundleManager.postToAssociatedBundle(editorBundle, new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onRotatePageFinallyEvent$1

            /* renamed from: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onRotatePageFinallyEvent$1$a */
            /* loaded from: classes9.dex */
            public static final class C12036a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ List<EditorBundle> f58678e;

                public C12036a(List<EditorBundle> list) {
                    this.f58678e = list;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends EditorBundle> apply(@NotNull SaveDocumentAction it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Observable.fromIterable(this.f58678e);
                }
            }

            /* renamed from: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onRotatePageFinallyEvent$1$b */
            /* loaded from: classes9.dex */
            public static final class C12037b<T, R> implements Function {

                /* renamed from: e */
                public static final C12037b<T, R> f58679e = new C12037b<>();

                /* renamed from: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onRotatePageFinallyEvent$1$b$a */
                /* loaded from: classes9.dex */
                public static final class a<T, R> implements Function {

                    /* renamed from: e */
                    public final /* synthetic */ EditorBundle f58680e;

                    public a(EditorBundle editorBundle) {
                        this.f58680e = editorBundle;
                    }

                    @Override // io.reactivex.rxjava3.functions.Function
                    @NotNull
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return DisplayActionsKt.display$default(this.f58680e, false, 1, null);
                    }
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends Object> apply(@NotNull EditorBundle editorBundle) {
                    Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
                    return new ReopenDocumentAction(editorBundle).build().flatMap(new a(editorBundle));
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                if (list.isEmpty()) {
                    return;
                }
                new SaveDocumentAction(EditorBundle.this).build().flatMap(new C12036a(list)).concatMap(C12037b.f58679e).subscribe();
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateDocFetchPolicyEvent(@NotNull final UpdateDocFetchPolicyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onUpdateDocFetchPolicyEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                UpdateDocFetchPolicyEvent updateDocFetchPolicyEvent = UpdateDocFetchPolicyEvent.this;
                Iterator<T> it3 = it2.iterator();
                while (it3.hasNext()) {
                    RxBaseAction.execute$default(new ChangeDocFetchPoliyOptionAction((EditorBundle) it3.next(), updateDocFetchPolicyEvent.getFetchPolicy()), null, null, null, 7, null);
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdatePageMarginEvent(@NotNull final UpdatePageMarginEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundleManager.postToAssociatedBundle(getEditorBundle(), new Function1<List<? extends EditorBundle>, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.EditorSyncEventHandler$onUpdatePageMarginEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditorBundle> list) {
                invoke2((List<EditorBundle>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<EditorBundle> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                UpdatePageMarginEvent updatePageMarginEvent = UpdatePageMarginEvent.this;
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    RxBaseAction.execute$default(new UpdatePageMarginAction((EditorBundle) it2.next(), updatePageMarginEvent.getArgs()), null, null, null, 7, null);
                }
            }
        });
    }
}
