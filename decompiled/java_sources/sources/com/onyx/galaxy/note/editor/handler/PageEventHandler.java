package com.onyx.galaxy.note.editor.handler;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.event.AddShapesEvent;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt;
import com.onyx.android.sdk.universal.editor.bean.CloneState;
import com.onyx.android.sdk.universal.editor.bean.CopyState;
import com.onyx.android.sdk.universal.editor.bean.PasteState;
import com.onyx.android.sdk.universal.editor.data.VirtualDocViewInfo;
import com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler;
import com.onyx.android.sdk.universal.editor.events.app.CopyPageBeginEvent;
import com.onyx.android.sdk.universal.editor.events.app.CopyPageEndEvent;
import com.onyx.android.sdk.universal.editor.events.app.DocumentOpenSuccessEvent;
import com.onyx.android.sdk.universal.editor.events.app.GotoPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.RotatePageBeginEvent;
import com.onyx.android.sdk.universal.editor.events.app.RotatePageEndEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScrollBeginEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScrollingEvent;
import com.onyx.android.sdk.universal.editor.events.app.ShowImportSuccessEvent;
import com.onyx.android.sdk.universal.editor.events.app.ShowNotePageToastEvent;
import com.onyx.android.sdk.universal.editor.events.app.ToggleNotePageLoadingEvent;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.AfterStopScrollAction;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.dialog.ImportSuccessDialog;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.view.LoadingDialog;
import com.onyx.galaxy.note.editor.action.AppendPageIfNeededAction;
import com.onyx.galaxy.note.editor.event.ChangeScrollerConfigEvent;
import com.onyx.galaxy.note.editor.handler.PageEventHandler;
import com.onyx.galaxy.note.editor.view.custom.PageScroller;
import com.onyx.galaxy.note.editor.view.drag.EditorViewDragLayout;
import com.onyx.galaxy.note.editor.view.popup.PagePanelPopup;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 62\u00020\u0001:\u00017B\u000f\u0012\u0006\u00102\u001a\u000201¢\u0006\u0004\b3\u00104B\u0019\b\u0016\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u0010$\u001a\u00020!¢\u0006\u0004\b3\u00105J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0006H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\bH\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\fH\u0007J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u000eH\u0007J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0010H\u0007J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0012H\u0007J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0014H\u0007J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0016H\u0007J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0018H\u0007J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u001aH\u0007J\u0016\u0010\u001f\u001a\u00020\u00042\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002J\b\u0010 \u001a\u00020\u0004H\u0002R\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/¨\u00068"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;", NotificationCompat.CATEGORY_EVENT, "", "onDocumentOpenSuccessEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;", "onVirtualDocViewInfoEvent", "Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;", "onChangeScrollerConfigEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ShowImportSuccessEvent;", "onShowImportSuccessDialog", "Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageBeginEvent;", "onRotatePageBeginEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageEndEvent;", "onRotatePageEndEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageBeginEvent;", "onCopyPageBeginEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ToggleNotePageLoadingEvent;", "onToggleNotePageLoadingEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ShowNotePageToastEvent;", "onShowNotePageToastEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageEndEvent;", "onCopyPageEndEvent", "Lcom/onyx/android/sdk/note/common/event/AddShapesEvent;", "onAddShapesEvent", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "onNoteShapeChangedEvent", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "c", "e", "Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;", C6997f.f39671c, "Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;", "editorViewDragLayout", "", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "checkingAppendPage", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", C6999h.f39688c, "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "autoAppendPageOption", "Lcom/onyx/galaxy/note/common/view/LoadingDialog;", "i", "Lcom/onyx/galaxy/note/common/view/LoadingDialog;", "copyPageLoadingDialog", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V", "j", "a", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPageEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/PageEventHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,292:1\n1#2:293\n*E\n"})
/* loaded from: classes9.dex */
public final class PageEventHandler extends BaseEventHandler {

    /* renamed from: k */
    public static int f58818k;

    /* renamed from: n */
    public static float f58821n;

    /* renamed from: f, reason: from kotlin metadata */
    public EditorViewDragLayout editorViewDragLayout;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean checkingAppendPage;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public BooleanOption autoAppendPageOption;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public LoadingDialog copyPageLoadingDialog;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: l */
    @NotNull
    public static Rect f58819l = new Rect();

    /* renamed from: m */
    @NotNull
    public static Rect f58820m = new Rect();

    /* renamed from: com.onyx.galaxy.note.editor.handler.PageEventHandler$a, reason: from kotlin metadata */
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final float m46223a() {
            return PageEventHandler.f58821n;
        }

        @NotNull
        /* renamed from: b */
        public final Rect m46224b() {
            return PageEventHandler.f58820m;
        }

        @NotNull
        /* renamed from: c */
        public final Rect m46225c() {
            return PageEventHandler.f58819l;
        }

        /* renamed from: d */
        public final int m46226d() {
            return PageEventHandler.f58818k;
        }

        /* renamed from: e */
        public final void m46227e(float f) {
            PageEventHandler.f58821n = f;
        }

        /* renamed from: f */
        public final void m46228f(@NotNull Rect rect) {
            Intrinsics.checkNotNullParameter(rect, "<set-?>");
            PageEventHandler.f58820m = rect;
        }

        /* renamed from: g */
        public final void m46229g(@NotNull Rect rect) {
            Intrinsics.checkNotNullParameter(rect, "<set-?>");
            PageEventHandler.f58819l = rect;
        }

        /* renamed from: h */
        public final void m46230h(int i) {
            PageEventHandler.f58818k = i;
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageEventHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.autoAppendPageOption = NoteConfigManager.INSTANCE.getAutoAppendPage();
    }

    /* renamed from: d */
    public static final void m46219d(PageEventHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.checkingAppendPage = false;
    }

    /* renamed from: f */
    public static final void m46220f(boolean z, PageEventHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorViewDragLayout editorViewDragLayout = null;
        if (z) {
            EditorViewDragLayout editorViewDragLayout2 = this$0.editorViewDragLayout;
            if (editorViewDragLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorViewDragLayout");
            } else {
                editorViewDragLayout = editorViewDragLayout2;
            }
            editorViewDragLayout.getPageScroller().showForAwhile();
            return;
        }
        EditorViewDragLayout editorViewDragLayout3 = this$0.editorViewDragLayout;
        if (editorViewDragLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorViewDragLayout");
        } else {
            editorViewDragLayout = editorViewDragLayout3;
        }
        ViewKt.setViewVisibleOrGone(editorViewDragLayout.getPageScroller(), false);
    }

    /* renamed from: c */
    public final void m46221c(List<? extends Shape> shapes) {
        if (!EditorBundleKt.getUiFeature(getEditorBundle()).supportMultiPage() || !this.autoAppendPageOption.get() || this.checkingAppendPage || EditorBundleKt.pageCount(getEditorBundle()) - 1 > EditorBundleKt.lastPageIndex(getEditorBundle())) {
            return;
        }
        this.checkingAppendPage = true;
        Observable<AppendPageIfNeededAction> doFinally = new AppendPageIfNeededAction(getEditorBundle(), shapes).build().doFinally(new Action() { // from class: com.sunia.HTREnginev2.dsk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PageEventHandler.m46219d(PageEventHandler.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        RxjavaKt.subscribeWithDefault$default(doFinally, null, null, null, 7, null);
    }

    /* renamed from: e */
    public final void m46222e() {
        LoadingDialog loadingDialog = this.copyPageLoadingDialog;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        this.copyPageLoadingDialog = null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onAddShapesEvent(@NotNull AddShapesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46221c(event.getList());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeScrollerConfigEvent(@NotNull ChangeScrollerConfigEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Integer toolBarWidth = event.getToolBarWidth();
        if (toolBarWidth != null) {
            f58818k = toolBarWidth.intValue();
        }
        Rect rightSideBarRect = event.getRightSideBarRect();
        if (rightSideBarRect != null) {
            f58819l = rightSideBarRect;
        }
        Rect leftSideBarRect = event.getLeftSideBarRect();
        if (leftSideBarRect != null) {
            f58820m = leftSideBarRect;
        }
        Float containerTranslationX = event.getContainerTranslationX();
        if (containerTranslationX != null) {
            f58821n = containerTranslationX.floatValue();
        }
        EditorViewDragLayout editorViewDragLayout = null;
        onVirtualDocViewInfoEvent(new VirtualDocViewInfoEvent(EditorBundleKt.virtualDocViewInfo(getEditorBundle()), false, 2, null));
        Boolean showForAWhile = event.getShowForAWhile();
        if (showForAWhile != null) {
            final boolean booleanValue = showForAWhile.booleanValue();
            EditorViewDragLayout editorViewDragLayout2 = this.editorViewDragLayout;
            if (editorViewDragLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorViewDragLayout");
                editorViewDragLayout2 = null;
            }
            editorViewDragLayout2.refreshPageScrollerLayout();
            if (!booleanValue) {
                EditorViewDragLayout editorViewDragLayout3 = this.editorViewDragLayout;
                if (editorViewDragLayout3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editorViewDragLayout");
                    editorViewDragLayout3 = null;
                }
                if (ViewKt.isVisible(editorViewDragLayout3.getPageScroller())) {
                    EditorViewDragLayout editorViewDragLayout4 = this.editorViewDragLayout;
                    if (editorViewDragLayout4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("editorViewDragLayout");
                    } else {
                        editorViewDragLayout = editorViewDragLayout4;
                    }
                    ViewKt.setViewVisibleOrGone(editorViewDragLayout.getPageScroller(), false);
                    return;
                }
            }
            EditorViewDragLayout editorViewDragLayout5 = this.editorViewDragLayout;
            if (editorViewDragLayout5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorViewDragLayout");
            } else {
                editorViewDragLayout = editorViewDragLayout5;
            }
            editorViewDragLayout.post(new Runnable() { // from class: com.sunia.HTREnginev2.csk
                @Override // java.lang.Runnable
                public final void run() {
                    PageEventHandler.m46220f(booleanValue, this);
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCopyPageBeginEvent(@NotNull CopyPageBeginEvent event) {
        LoadingDialog createLoadingDialog;
        Intrinsics.checkNotNullParameter(event, "event");
        LoadingDialog loadingDialog = this.copyPageLoadingDialog;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        Activity activity = getEditorBundle().getUiBundle().getActivityHelper().getAndroidx.appcompat.widget.ActivityChooserModel.r java.lang.String();
        if (activity == null || (createLoadingDialog = ContextExtKt.createLoadingDialog(activity)) == null) {
            return;
        }
        createLoadingDialog.updateTitle(ResManager.INSTANCE.getStringSafely(C10651R.string.option_copying));
        this.copyPageLoadingDialog = createLoadingDialog;
        createLoadingDialog.show();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCopyPageEndEvent(@NotNull CopyPageEndEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46222e();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocumentOpenSuccessEvent(@NotNull DocumentOpenSuccessEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorViewDragLayout editorViewDragLayout = this.editorViewDragLayout;
        if (editorViewDragLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorViewDragLayout");
            editorViewDragLayout = null;
        }
        editorViewDragLayout.getPageScroller().setEnabledBySceneFeature(EditorBundleKt.getUiFeature(getEditorBundle()).supportMultiPage());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onNoteShapeChangedEvent(@NotNull ChangedShapeBean event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46221c(event.getAddShapeList());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRotatePageBeginEvent(@NotNull RotatePageBeginEvent event) {
        LoadingDialog createLoadingDialog;
        Intrinsics.checkNotNullParameter(event, "event");
        LoadingDialog loadingDialog = this.copyPageLoadingDialog;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        Activity activity = getEditorBundle().getUiBundle().getActivityHelper().getAndroidx.appcompat.widget.ActivityChooserModel.r java.lang.String();
        if (activity == null || (createLoadingDialog = ContextExtKt.createLoadingDialog(activity)) == null) {
            return;
        }
        createLoadingDialog.updateTitle(ResManager.INSTANCE.getStringSafely(C8045R.string.rotateing));
        this.copyPageLoadingDialog = createLoadingDialog;
        createLoadingDialog.show();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRotatePageEndEvent(@NotNull RotatePageEndEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        LoadingDialog loadingDialog = this.copyPageLoadingDialog;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        this.copyPageLoadingDialog = null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowImportSuccessDialog(@NotNull ShowImportSuccessEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Activity activity = getEditorBundle().getUiBundle().getActivityHelper().getAndroidx.appcompat.widget.ActivityChooserModel.r java.lang.String();
        if (activity != null) {
            new ImportSuccessDialog(activity, event.getImportSelectedContext()).show();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowNotePageToastEvent(@NotNull ShowNotePageToastEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46222e();
        CopyState state = event.getState();
        Integer valueOf = state instanceof CloneState.Success ? Integer.valueOf(C10651R.string.option_page_copied) : state instanceof PasteState.Success ? Integer.valueOf(C10651R.string.option_page_pasted) : null;
        if (valueOf != null) {
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) ResManager.INSTANCE.getStringSafely(valueOf.intValue()), false, 2, (Object) null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onToggleNotePageLoadingEvent(@NotNull ToggleNotePageLoadingEvent event) {
        LoadingDialog createLoadingDialog;
        Intrinsics.checkNotNullParameter(event, "event");
        if (!event.getIsShow()) {
            m46222e();
            return;
        }
        m46222e();
        Activity activity = getEditorBundle().getUiBundle().getActivityHelper().getAndroidx.appcompat.widget.ActivityChooserModel.r java.lang.String();
        if (activity == null || (createLoadingDialog = ContextExtKt.createLoadingDialog(activity)) == null) {
            return;
        }
        CopyState state = event.getState();
        Integer valueOf = state instanceof CloneState.InProgress ? Integer.valueOf(C10651R.string.option_clone_in_progress) : state instanceof PasteState.InProgress ? Integer.valueOf(C10651R.string.option_page_pasting) : null;
        if (valueOf != null) {
            createLoadingDialog.updateTitle(ResManager.INSTANCE.getStringSafely(valueOf.intValue()));
            this.copyPageLoadingDialog = createLoadingDialog;
            createLoadingDialog.show();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVirtualDocViewInfoEvent(@NotNull VirtualDocViewInfoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (EditorBundleKt.getUiFeature(getEditorBundle()).supportMultiPage()) {
            VirtualDocViewInfo virtualDocViewInfo = event.getVirtualDocViewInfo();
            PageScroller.PageNumViewUpdateData pageNumViewUpdateData = new PageScroller.PageNumViewUpdateData(virtualDocViewInfo.getPageCount(), virtualDocViewInfo.getViewport().getBox(), virtualDocViewInfo.getViewportLimitRect(), DocOptionsActionsKt.isVerticalLayoutType(getEditorBundle()), DocOptionsActionsKt.getScrollerGravity(getEditorBundle()));
            EditorViewDragLayout editorViewDragLayout = this.editorViewDragLayout;
            if (editorViewDragLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editorViewDragLayout");
                editorViewDragLayout = null;
            }
            editorViewDragLayout.setToolBarRectWidth(f58818k);
            editorViewDragLayout.setRightSideBarRect(f58819l);
            editorViewDragLayout.setLeftSideBarRect(f58820m);
            editorViewDragLayout.setContainerTranslationX(f58821n);
            editorViewDragLayout.refreshPageScrollerLayout();
            editorViewDragLayout.updateScrollerViewData(pageNumViewUpdateData);
            editorViewDragLayout.updatePageNum(virtualDocViewInfo.currentPageIndex(), virtualDocViewInfo.getPageCount());
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PageEventHandler(@NotNull final EditorBundle editorBundle, @NotNull final EditorViewDragLayout editorViewDragLayout) {
        this(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(editorViewDragLayout, "editorViewDragLayout");
        this.editorViewDragLayout = editorViewDragLayout;
        editorViewDragLayout.getPageScroller().setPageNumFloatingBarListener(new PageScroller.PageNumFloatingBarListener() { // from class: com.onyx.galaxy.note.editor.handler.PageEventHandler$pageJumpListener$1
            @Override // com.onyx.galaxy.note.editor.view.custom.PageScroller.PageNumFloatingBarListener
            public void onDismiss() {
                editorViewDragLayout.showPageNumView(false);
            }

            @Override // com.onyx.galaxy.note.editor.view.custom.PageScroller.PageNumFloatingBarListener
            public void onShown() {
                editorViewDragLayout.showPageNumView(true);
            }

            @Override // com.onyx.galaxy.note.editor.view.custom.PageScroller.PageNumFloatingBarListener
            public void pageScrollEnd() {
                EditorBundle.this.getUiBundle().getUiStateInfo().setPageScrollerScrolling(false);
                RxBaseAction.execute$default(new AfterStopScrollAction(EditorBundle.this), null, null, null, 7, null);
            }

            @Override // com.onyx.galaxy.note.editor.view.custom.PageScroller.PageNumFloatingBarListener
            public void pageScrollStart() {
                EditorBundleKt.stopScroll(EditorBundle.this);
                EditorBundle.this.getUiBundle().getUiStateInfo().setPageScrollerScrolling(true);
                EditorBundleKt.postEvent(EditorBundle.this, new ScrollBeginEvent(0.0f, 0.0f, 3, null));
            }

            @Override // com.onyx.galaxy.note.editor.view.custom.PageScroller.PageNumFloatingBarListener
            public void pageScrollX(float offsetX) {
                EditorBundleKt.postEvent(EditorBundle.this, new ScrollingEvent(offsetX, 0.0f, 1, 2, null));
            }

            @Override // com.onyx.galaxy.note.editor.view.custom.PageScroller.PageNumFloatingBarListener
            public void pageScrollY(float offsetY) {
                EditorBundleKt.postEvent(EditorBundle.this, new ScrollingEvent(0.0f, offsetY, 1, 1, null));
            }

            @Override // com.onyx.galaxy.note.editor.view.custom.PageScroller.PageNumFloatingBarListener
            public void showPageJumperPopup(float x, float y) {
                Context context = editorViewDragLayout.getPageScroller().getContext();
                Intrinsics.checkNotNull(context);
                PagePanelPopup pagePanelPopup = new PagePanelPopup(context);
                pagePanelPopup.notifyInfoChange(EditorBundleKt.currentPageIndex(EditorBundle.this), EditorBundleKt.virtualDocViewInfo(EditorBundle.this).getPageCount());
                final EditorBundle editorBundle2 = EditorBundle.this;
                final EditorViewDragLayout editorViewDragLayout2 = editorViewDragLayout;
                pagePanelPopup.setPageJumpListener(new PagePanelPopup.PageJumpListener() { // from class: com.onyx.galaxy.note.editor.handler.PageEventHandler$pageJumpListener$1$showPageJumperPopup$1
                    @Override // com.onyx.galaxy.note.editor.view.popup.PagePanelPopup.PageJumpListener
                    public void pageJump(int pageIndex) {
                        EditorBundleKt.postEvent(EditorBundle.this, new GotoPageEvent(pageIndex));
                        editorViewDragLayout2.refreshPageScrollerLayout();
                        editorViewDragLayout2.getPageScroller().showForAwhile();
                    }
                });
                pagePanelPopup.showAtLocation(editorViewDragLayout.getPageScroller(), 0, (int) x, (int) y);
            }
        });
    }
}
