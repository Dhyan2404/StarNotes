package com.onyx.android.sdk.universal.editor.api;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.universal.editor.GotoShapeAndHighLightAction;
import com.onyx.android.sdk.universal.editor.action.ContentViewSizeChangedAction;
import com.onyx.android.sdk.universal.editor.action.CopyPageAction;
import com.onyx.android.sdk.universal.editor.action.InsertPageAction;
import com.onyx.android.sdk.universal.editor.action.InsertPageAfterSpecifiedPageAction;
import com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction;
import com.onyx.android.sdk.universal.editor.action.MovePageAction;
import com.onyx.android.sdk.universal.editor.action.ReloadBoxManagerWithSettingsAction;
import com.onyx.android.sdk.universal.editor.action.RemovePageAction;
import com.onyx.android.sdk.universal.editor.action.RemovePageByIdListAction;
import com.onyx.android.sdk.universal.editor.action.RemoveTagAction;
import com.onyx.android.sdk.universal.editor.action.RotatePageAction;
import com.onyx.android.sdk.universal.editor.action.ScaleAction;
import com.onyx.android.sdk.universal.editor.action.bookmark.DeleteBookmarkAction;
import com.onyx.android.sdk.universal.editor.action.bookmark.UpdateBookmarkAction;
import com.onyx.android.sdk.universal.editor.action.clone.ClonePageAction;
import com.onyx.android.sdk.universal.editor.action.clone.PastePageAction;
import com.onyx.android.sdk.universal.editor.action.doc.ChangeDocAdaptiveStrokeWidthAction;
import com.onyx.android.sdk.universal.editor.action.doc.ChangeDocContinuousPageAction;
import com.onyx.android.sdk.universal.editor.action.doc.ChangeDocFetchPoliyOptionAction;
import com.onyx.android.sdk.universal.editor.action.doc.ChangeDocLayoutTypeAction;
import com.onyx.android.sdk.universal.editor.action.doc.ChangeDocPageColumnCountAction;
import com.onyx.android.sdk.universal.editor.action.doc.ChangeDocScrollerGravityAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeAction;
import com.onyx.android.sdk.universal.editor.action.page.ClearCurrentPageAction;
import com.onyx.android.sdk.universal.editor.action.page.GotoPageAction;
import com.onyx.android.sdk.universal.editor.action.page.GotoPageByIdAction;
import com.onyx.android.sdk.universal.editor.action.page.RestoreRemovedPagesAction;
import com.onyx.android.sdk.universal.editor.action.page.UpdatePageMarginAction;
import com.onyx.android.sdk.universal.editor.action.splitscreen.SplitScreenChangedAction;
import com.onyx.android.sdk.universal.editor.action.toc.DeleteTocEntryAction;
import com.onyx.android.sdk.universal.editor.action.toc.InsertTocEntryAction;
import com.onyx.android.sdk.universal.editor.action.toc.UpdateTocEntryAction;
import com.onyx.android.sdk.universal.editor.bean.CloneState;
import com.onyx.android.sdk.universal.editor.bean.PasteState;
import com.onyx.android.sdk.universal.editor.config.GlobalDocSettings;
import com.onyx.android.sdk.universal.editor.events.app.BeforeExitSplitScreenEvent;
import com.onyx.android.sdk.universal.editor.events.app.BeforeStartSplitScreenEvent;
import com.onyx.android.sdk.universal.editor.events.app.ChangeLayoutTypeEvent;
import com.onyx.android.sdk.universal.editor.events.app.ChangePageColumnCountEvent;
import com.onyx.android.sdk.universal.editor.events.app.ChangeScrollerGravityEvent;
import com.onyx.android.sdk.universal.editor.events.app.ClearCurrentPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.ClonePageEvent;
import com.onyx.android.sdk.universal.editor.events.app.ContentViewSizeChangedEvent;
import com.onyx.android.sdk.universal.editor.events.app.CopyPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.DeleteBookmarkEvent;
import com.onyx.android.sdk.universal.editor.events.app.DeleteTocEntryEvent;
import com.onyx.android.sdk.universal.editor.events.app.EnableAdaptiveStrokeWidthEvent;
import com.onyx.android.sdk.universal.editor.events.app.EnableContinuousPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.EnableFreeMovePaperEvent;
import com.onyx.android.sdk.universal.editor.events.app.FastUpdateContentViewSizeEvent;
import com.onyx.android.sdk.universal.editor.events.app.GotoPageByIdEvent;
import com.onyx.android.sdk.universal.editor.events.app.GotoPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.GotoShapeAndHighLightEvent;
import com.onyx.android.sdk.universal.editor.events.app.GotoShapeByIdEvent;
import com.onyx.android.sdk.universal.editor.events.app.InsertPageAfterSpecifiedPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.InsertPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.InsertPdfPagesEvent;
import com.onyx.android.sdk.universal.editor.events.app.InsertTocEntryEvent;
import com.onyx.android.sdk.universal.editor.events.app.MovePageEvent;
import com.onyx.android.sdk.universal.editor.events.app.PastePageEvent;
import com.onyx.android.sdk.universal.editor.events.app.ReloadBoxManagerWithSettingsEvent;
import com.onyx.android.sdk.universal.editor.events.app.RemovePageEvent;
import com.onyx.android.sdk.universal.editor.events.app.RemovePagesEvent;
import com.onyx.android.sdk.universal.editor.events.app.RotatePageEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScaleReset;
import com.onyx.android.sdk.universal.editor.events.app.ShowNotePageToastEvent;
import com.onyx.android.sdk.universal.editor.events.app.ToggleNotePageLoadingEvent;
import com.onyx.android.sdk.universal.editor.events.app.UndoRemovePageEvent;
import com.onyx.android.sdk.universal.editor.events.app.UpdateBookmarkEvent;
import com.onyx.android.sdk.universal.editor.events.app.UpdateDocFetchPolicyEvent;
import com.onyx.android.sdk.universal.editor.events.app.UpdatePageMarginEvent;
import com.onyx.android.sdk.universal.editor.events.app.UpdateTocEntryEvent;
import com.onyx.android.sdk.universal.editor.events.note.DeleteTagShapesEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000ä\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bK\u0010LJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000fH\u0007J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0011H\u0007J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0013H\u0007J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0015H\u0007J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0017H\u0007J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0019H\u0007J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u001bH\u0007J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u001dH\u0007J\u0010\u0010 \u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u001fH\u0007J\u0010\u0010\"\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020!H\u0007J\u0010\u0010$\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020#H\u0007J\u0010\u0010&\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020%H\u0007J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020'H\u0007J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020)H\u0007J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020+H\u0007J\u0010\u0010.\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020-H\u0007J\u0010\u00100\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020/H\u0007J\u0010\u00102\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u000201H\u0007J\u0010\u00104\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u000203H\u0007J\u0010\u00106\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u000205H\u0007J\u0010\u00108\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u000207H\u0007J\u0010\u0010:\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u000209H\u0007J\u0010\u0010<\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020;H\u0007J\u0010\u0010>\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020=H\u0007J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020?H\u0007J\u0010\u0010B\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020AH\u0007J\u0010\u0010D\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020CH\u0007J\u0010\u0010F\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020EH\u0007J\u0010\u0010H\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020GH\u0007J\u0010\u0010J\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020IH\u0007¨\u0006M"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/api/DocInternalApiSubscriber;", "Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;", "", "a", "Lcom/onyx/android/sdk/universal/editor/events/app/ContentViewSizeChangedEvent;", NotificationCompat.CATEGORY_EVENT, "onContentViewSizeChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleReset;", "onScaleReset", "Lcom/onyx/android/sdk/universal/editor/events/app/InsertPageEvent;", "onInsertPageEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/InsertPageAfterSpecifiedPageEvent;", "onInsertPageAfterSpecifiedPageEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/InsertPdfPagesEvent;", "onInsertPdfPagesEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/RemovePageEvent;", "onRemovePageEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/RemovePagesEvent;", "onRemovePagesEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/UndoRemovePageEvent;", "onUndoRemovePageEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ClearCurrentPageEvent;", "onClearCurrentPageEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/GotoPageEvent;", "onGotoPageEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/GotoPageByIdEvent;", "onGotoPageByIdEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/GotoShapeByIdEvent;", "onGotoShapeByIdEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/GotoShapeAndHighLightEvent;", "onGotoShapeByIdListEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageEvent;", "onCopyPageEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ClonePageEvent;", "onClonePageEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/PastePageEvent;", "onPastePageEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;", "onMovePageEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageEvent;", "onRotatePageEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/DeleteTocEntryEvent;", "onDeleteTocEntryEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/UpdateTocEntryEvent;", "onUpdateTocEntrysEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/InsertTocEntryEvent;", "onInsertTocEntryEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/DeleteBookmarkEvent;", "onDeleteBookmarkEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/UpdateBookmarkEvent;", "onUpdateBookmarkEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ChangePageColumnCountEvent;", "onChangePageColumnCountEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ChangeLayoutTypeEvent;", "onChangeLayoutTypeEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ChangeScrollerGravityEvent;", "onChangeScrollerGravityEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/EnableContinuousPageEvent;", "onEnableContinuousPageEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/EnableAdaptiveStrokeWidthEvent;", "onEnableAdaptiveStrokeWidthEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/UpdateDocFetchPolicyEvent;", "onUpdateDocFetchPolicyEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/EnableFreeMovePaperEvent;", "onEnableFreeMovePaperEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ReloadBoxManagerWithSettingsEvent;", "onReloadBoxManagerWithSettingsEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/UpdatePageMarginEvent;", "onUpdatePageMarginEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/BeforeStartSplitScreenEvent;", "onBeforeStartSplitScreenEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/BeforeExitSplitScreenEvent;", "onBeforeExitSplitScreenEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteTagShapesEvent;", "onDeleteTagShapesEvent", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DocInternalApiSubscriber extends BaseApiSubscriber {
    /* renamed from: a */
    public final void m40561a() {
        EditorBundleKt.onPageChangedEvent(getEditorBundle());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onBeforeExitSplitScreenEvent(@NotNull BeforeExitSplitScreenEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new SplitScreenChangedAction(getEditorBundle()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onBeforeStartSplitScreenEvent(@NotNull BeforeStartSplitScreenEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new SplitScreenChangedAction(getEditorBundle()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeLayoutTypeEvent(@NotNull ChangeLayoutTypeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangeDocLayoutTypeAction(getEditorBundle(), event.getLayoutType()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangePageColumnCountEvent(@NotNull ChangePageColumnCountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangeDocPageColumnCountAction(getEditorBundle(), event.getPageColumnCount()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeScrollerGravityEvent(@NotNull ChangeScrollerGravityEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangeDocScrollerGravityAction(getEditorBundle(), event.isHorizontal(), event.getGravity()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onClearCurrentPageEvent(@NotNull ClearCurrentPageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ClearCurrentPageAction(getEditorBundle()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onClonePageEvent(@NotNull ClonePageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        CloneState cloneState = event.getCloneState();
        if (cloneState instanceof CloneState.Create) {
            m40561a();
            RxBaseAction.execute$default(new ClonePageAction(getEditorBundle(), ((CloneState.Create) event.getCloneState()).getCloneArgsList()), null, null, null, 7, null);
        } else if (cloneState instanceof CloneState.InProgress) {
            EditorBundleKt.postEvent(getEditorBundle(), new ToggleNotePageLoadingEvent(true, CloneState.InProgress.INSTANCE));
        } else if (cloneState instanceof CloneState.Success) {
            EditorBundleKt.postEvent(getEditorBundle(), new ShowNotePageToastEvent(CloneState.Success.INSTANCE));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onContentViewSizeChangedEvent(@NotNull ContentViewSizeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (EditorBundleKt.isAnimatingStartSplitScreen(getEditorBundle())) {
            return;
        }
        if (EditorBundleKt.isEnabledAnimationUpdateEditorView(getEditorBundle())) {
            EditorBundleKt.postEvent(getEditorBundle(), new FastUpdateContentViewSizeEvent());
        } else {
            RxBaseAction.execute$default(new ContentViewSizeChangedAction(getEditorBundle()), null, null, null, 7, null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCopyPageEvent(@NotNull CopyPageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40561a();
        RxBaseAction.execute$default(new CopyPageAction(getEditorBundle(), event.getCopyArgsList()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteBookmarkEvent(@NotNull DeleteBookmarkEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new DeleteBookmarkAction(getEditorBundle(), event.getEntry()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteTagShapesEvent(@NotNull DeleteTagShapesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new RemoveTagAction(getEditorBundle(), event.getTagIds()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteTocEntryEvent(@NotNull DeleteTocEntryEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new DeleteTocEntryAction(getEditorBundle(), event.getEntries()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEnableAdaptiveStrokeWidthEvent(@NotNull EnableAdaptiveStrokeWidthEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangeDocAdaptiveStrokeWidthAction(getEditorBundle(), event.getEnabled()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEnableContinuousPageEvent(@NotNull EnableContinuousPageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangeDocContinuousPageAction(getEditorBundle(), event.getEnabled()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEnableFreeMovePaperEvent(@NotNull EnableFreeMovePaperEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        GlobalDocSettings.INSTANCE.setEnabledFreeMovePaper(event.getEnabled());
        RxBaseAction.execute$default(new ReloadBoxManagerWithSettingsAction(getEditorBundle()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onGotoPageByIdEvent(@NotNull GotoPageByIdEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40561a();
        RxBaseAction.execute$default(new GotoPageByIdAction(getEditorBundle(), event.getPageId(), false, 4, null), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onGotoPageEvent(@NotNull GotoPageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40561a();
        RxBaseAction.execute$default(new GotoPageAction(getEditorBundle(), event.getPageIndex()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onGotoShapeByIdEvent(@NotNull GotoShapeByIdEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new GotoShapeAction(getEditorBundle(), event.getShapeId(), event.getHighlight()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onGotoShapeByIdListEvent(@NotNull GotoShapeAndHighLightEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new GotoShapeAndHighLightAction(getEditorBundle(), event.getShapeIdList()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onInsertPageAfterSpecifiedPageEvent(@NotNull InsertPageAfterSpecifiedPageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40561a();
        RxBaseAction.execute$default(new InsertPageAfterSpecifiedPageAction(getEditorBundle(), event.getSpecifiedPageIndex(), false, 4, null), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onInsertPageEvent(@NotNull InsertPageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40561a();
        RxBaseAction.execute$default(new InsertPageAction(getEditorBundle(), event.getInsertPageArgs()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onInsertPdfPagesEvent(@NotNull InsertPdfPagesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40561a();
        RxBaseAction.execute$default(new InsertPdfPagesAction(getEditorBundle(), event.getInsertPageArgs()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onInsertTocEntryEvent(@NotNull InsertTocEntryEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new InsertTocEntryAction(getEditorBundle(), event.getEntry()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMovePageEvent(@NotNull MovePageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40561a();
        MovePageAction movePageAction = new MovePageAction(getEditorBundle());
        movePageAction.setMovePageArgs(event.getMovePageArgs());
        RxBaseAction.execute$default(movePageAction, null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPastePageEvent(@NotNull PastePageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        PasteState pasteState = event.getPasteState();
        if (pasteState instanceof PasteState.Create) {
            m40561a();
            RxBaseAction.execute$default(new PastePageAction(getEditorBundle(), ((PasteState.Create) event.getPasteState()).getArgs().getPastePageInfos()), null, null, null, 7, null);
        } else if (pasteState instanceof PasteState.InProgress) {
            EditorBundleKt.postEvent(getEditorBundle(), new ToggleNotePageLoadingEvent(true, PasteState.InProgress.INSTANCE));
        } else if (pasteState instanceof PasteState.Success) {
            EditorBundleKt.postEvent(getEditorBundle(), new ShowNotePageToastEvent(PasteState.Success.INSTANCE));
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onReloadBoxManagerWithSettingsEvent(@NotNull ReloadBoxManagerWithSettingsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ReloadBoxManagerWithSettingsAction(getEditorBundle()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRemovePageEvent(@NotNull RemovePageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40561a();
        RemovePageAction removePageAction = new RemovePageAction(getEditorBundle());
        removePageAction.setPageIndex(event.getPageIndex());
        RxBaseAction.execute$default(removePageAction, null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRemovePagesEvent(@NotNull RemovePagesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40561a();
        RxBaseAction.execute$default(new RemovePageByIdListAction(getEditorBundle(), event.getPageIdList()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRotatePageEvent(@NotNull RotatePageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40561a();
        RxBaseAction.execute$default(new RotatePageAction(getEditorBundle(), event.getRotatePageArgs()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScaleReset(@NotNull ScaleReset event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ScaleAction(getEditorBundle(), event.getScale(), event.getCenterXOffset(), event.getCenterYOffset()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUndoRemovePageEvent(@NotNull UndoRemovePageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40561a();
        RxBaseAction.execute$default(new RestoreRemovedPagesAction(getEditorBundle(), event.getPageIdList()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateBookmarkEvent(@NotNull UpdateBookmarkEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new UpdateBookmarkAction(getEditorBundle(), event.getEntry()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateDocFetchPolicyEvent(@NotNull UpdateDocFetchPolicyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ChangeDocFetchPoliyOptionAction(getEditorBundle(), event.getFetchPolicy()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdatePageMarginEvent(@NotNull UpdatePageMarginEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40561a();
        RxBaseAction.execute$default(new UpdatePageMarginAction(getEditorBundle(), event.getArgs()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateTocEntrysEvent(@NotNull UpdateTocEntryEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new UpdateTocEntryAction(getEditorBundle(), event.getEntryList(), event.getPageIndexChanged()), null, null, null, 7, null);
    }
}
