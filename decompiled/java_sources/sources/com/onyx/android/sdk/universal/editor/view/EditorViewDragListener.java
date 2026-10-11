package com.onyx.android.sdk.universal.editor.view;

import android.app.Activity;
import android.content.ClipData;
import android.content.Intent;
import android.graphics.RectF;
import android.view.DragEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.ClipBoard;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.universal.common.drag.DragAndDropHelper;
import com.onyx.android.sdk.universal.common.drag.DragAndDropUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.config.EditorConstantsKt;
import com.onyx.android.sdk.universal.editor.config.SplitScreenReceiverEntry;
import com.onyx.android.sdk.universal.editor.data.DragEventData;
import com.onyx.android.sdk.universal.editor.data.FocusedEditorDocSwitchEvent;
import com.onyx.android.sdk.universal.editor.events.note.HandleImageDropEvent;
import com.onyx.android.sdk.universal.editor.events.note.HandleMultiImageDropEvent;
import com.onyx.android.sdk.universal.editor.events.note.HandleQuickCopyDragEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartTextInputHandlerEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010)\u001a\u00020\u001d\u0012\u0006\u0010.\u001a\u00020*\u0012\u0006\u00103\u001a\u00020/¢\u0006\u0004\b;\u0010<J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\n\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\f\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0010\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0011\u001a\u00020\bH\u0002J\u0010\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010\u001f\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u0010\u0010 \u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J \u0010!\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010#\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\u0004H\u0002J\b\u0010%\u001a\u00020$H\u0002R\u0017\u0010)\u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b\u0015\u0010&\u001a\u0004\b'\u0010(R\u0017\u0010.\u001a\u00020*8\u0006¢\u0006\f\n\u0004\b\u0017\u0010+\u001a\u0004\b,\u0010-R\u0017\u00103\u001a\u00020/8\u0006¢\u0006\f\n\u0004\b\u001c\u00100\u001a\u0004\b1\u00102R\u0018\u00105\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u00104R\u0018\u00107\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u00106R\u0016\u0010:\u001a\u0002088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u00109¨\u0006="}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/view/EditorViewDragListener;", "Landroid/view/View$OnDragListener;", "Landroid/view/View;", "v", "Landroid/view/DragEvent;", NotificationCompat.CATEGORY_EVENT, "", "onDrag", "", "l", "p", "m", "q", "view", "Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;", "receiverEntry", "a", C4921e.f26528e, "c", "Landroid/content/ClipData;", "clipData", "e", "j", C6997f.f39671c, "i", "Landroid/content/ClipData$Item;", "item", C4921e.f26537n, C6998g.f39679a, "", EditorConstants.ARGS_DOC_ID, GoogleApiAvailabilityLight.f29016b, "r", "d", "dragEvent", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;", "b", Constants.STRING_SIG, "getId", "()Ljava/lang/String;", "id", "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "getManager", "()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "manager", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Landroid/view/View;", "highlightView", "Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;", "currentReceiverEntry", "Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;", "Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;", "dragHelper", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEditorViewDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorViewDragListener.kt\ncom/onyx/android/sdk/universal/editor/view/EditorViewDragListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,267:1\n288#2,2:268\n*S KotlinDebug\n*F\n+ 1 EditorViewDragListener.kt\ncom/onyx/android/sdk/universal/editor/view/EditorViewDragListener\n*L\n117#1:268,2\n*E\n"})
/* loaded from: classes8.dex */
public final class EditorViewDragListener implements View.OnDragListener {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String id;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final EditorBundleManager manager;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public View highlightView;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public SplitScreenReceiverEntry currentReceiverEntry;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public DragAndDropHelper dragHelper;

    public EditorViewDragListener(@NotNull String id, @NotNull EditorBundleManager manager, @NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.id = id;
        this.manager = manager;
        this.editorBundle = editorBundle;
        this.dragHelper = new DragAndDropHelper();
    }

    /* renamed from: a */
    public final void m41501a(View view, SplitScreenReceiverEntry receiverEntry) {
        RectF hintRegion = receiverEntry.hintRegion(view);
        Activity activity = this.editorBundle.getUiBundle().getActivityHelper().getAndroidx.appcompat.widget.ActivityChooserModel.r java.lang.String();
        if (activity == null) {
            return;
        }
        EditorHighlightView editorHighlightView = new EditorHighlightView(activity);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams((int) hintRegion.width(), (int) hintRegion.height());
        View decorView = activity.getWindow().getDecorView();
        Intrinsics.checkNotNull(decorView, "null cannot be cast to non-null type android.view.ViewGroup");
        ViewGroup viewGroup = (ViewGroup) decorView;
        RectF globalVisibleRectF = ViewKt.globalVisibleRectF(view);
        RectF globalVisibleRectF2 = ViewKt.globalVisibleRectF(viewGroup);
        RectF copy = RectFKt.copy(hintRegion);
        copy.offset(globalVisibleRectF.left, globalVisibleRectF.top);
        RectFKt.translateCoordinates(copy, globalVisibleRectF2);
        editorHighlightView.setX(copy.left);
        editorHighlightView.setY(copy.top);
        Debug.INSTANCE.m32035d(EditorViewDragListener.class, "addHighlightView, x = " + editorHighlightView.getX() + ", y = " + editorHighlightView.getY() + ",\nviewGroupGlobalVisibleRect = " + globalVisibleRectF2 + ", contentViewGlobalVisibleRect = " + globalVisibleRectF, new Object[0]);
        viewGroup.addView(editorHighlightView, layoutParams);
        this.highlightView = editorHighlightView;
    }

    /* renamed from: b */
    public final EditorViewHandler m41502b() {
        return this.manager.getAnotherEditorViewHandler(this.id);
    }

    /* renamed from: c */
    public final void m41503c(DragEvent event) {
        List listOf;
        Activity activity;
        ClipData clipData = event.getClipData();
        if (clipData == null) {
            return;
        }
        DragAndDropUtils dragAndDropUtils = DragAndDropUtils.INSTANCE;
        String customDragDropType = dragAndDropUtils.getCustomDragDropType(clipData);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(DragAndDropUtils.DRAG_DROP_TYPE_TOC);
        if (listOf.contains(customDragDropType) || (activity = this.editorBundle.getUiBundle().getActivityHelper().getAndroidx.appcompat.widget.ActivityChooserModel.r java.lang.String()) == null) {
            return;
        }
        if (!dragAndDropUtils.requestDragAndDropPermissionsSafely(activity, event)) {
            Debug.INSTANCE.m32059w(EditorViewDragListener.class, "requestDragAndDropPermissions fail", new Object[0]);
            return;
        }
        EditorBundleKt.postEvent(this.editorBundle, new QuitTransformEvent(false, 1, null));
        Debug.INSTANCE.m32035d(EditorViewDragListener.class, "handleDrop", new Object[0]);
        int itemCount = clipData.getItemCount();
        if (itemCount != 0) {
            if (itemCount != 1) {
                m41505e(clipData, event);
            } else {
                m41509i(clipData, event);
            }
        }
    }

    /* renamed from: d */
    public final void m41504d(ClipData.Item item, ClipData clipData, DragEvent event) {
        if (item.getUri() == null) {
            return;
        }
        Object localState = event.getLocalState();
        EditorBundleKt.postEvent(this.editorBundle, new HandleImageDropEvent(new DragEventData(clipData, new TouchPoint(event.getX(), event.getY()), localState instanceof Intent ? (Intent) localState : null), Intrinsics.areEqual(this.manager.focusEditorBundle(), this.editorBundle)));
    }

    /* renamed from: e */
    public final void m41505e(ClipData clipData, DragEvent event) {
        ClipBoard clipBoard = ClipBoard.INSTANCE;
        if (clipBoard.hasImageContent(clipData)) {
            m41506f(clipData, event);
        } else if (clipBoard.hasTextContent(clipData)) {
            m41510j(clipData, event);
        } else {
            Debug.INSTANCE.m32035d(EditorViewDragListener.class, "multi drop, no image, do nothing", new Object[0]);
        }
    }

    /* renamed from: f */
    public final void m41506f(ClipData clipData, DragEvent event) {
        EditorBundleKt.postEvent(this.editorBundle, new HandleMultiImageDropEvent(new DragEventData(clipData, new TouchPoint(event.getX(), event.getY()), null, 4, null)));
    }

    /* renamed from: g */
    public final void m41507g(ClipData.Item item) {
        Intent intent = item.getIntent();
        if (intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra(EditorConstants.ARGS_DOC_ID);
        if (stringExtra == null || stringExtra.length() == 0) {
            return;
        }
        if (this.manager.isEnabledSplitScreen()) {
            m41514n(stringExtra);
        } else {
            m41518r(stringExtra);
        }
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final EditorBundleManager getManager() {
        return this.manager;
    }

    /* renamed from: h */
    public final void m41508h(DragEvent dragEvent) {
        if (EditorConstantsKt.isQuickCopyEvent(dragEvent) && this.dragHelper.getIsEntered()) {
            EditorBundleKt.postEvent(this.manager.focusEditorBundle(), new HandleQuickCopyDragEvent(this.id, new TouchPoint(this.dragHelper.getLastDragX(), this.dragHelper.getLastDragY())));
        }
    }

    /* renamed from: i */
    public final void m41509i(ClipData clipData, DragEvent event) {
        ClipData.Item itemAt = clipData.getItemAt(0);
        Intrinsics.checkNotNull(itemAt);
        if (m41511k(itemAt)) {
            m41507g(itemAt);
            return;
        }
        ClipBoard clipBoard = ClipBoard.INSTANCE;
        if (clipBoard.hasImageContent(clipData)) {
            m41504d(itemAt, clipData, event);
        } else if (clipBoard.hasTextContent(clipData)) {
            m41510j(clipData, event);
        }
    }

    /* renamed from: j */
    public final void m41510j(ClipData clipData, DragEvent event) {
        EditorBundleKt.postEvent(this.editorBundle, new StartTextInputHandlerEvent(ClipBoard.INSTANCE.findFirstTextContent(clipData), false, new TouchPoint(event.getX(), event.getY()), false));
    }

    /* renamed from: k */
    public final boolean m41511k(ClipData.Item item) {
        Intent intent = item.getIntent();
        return StringKt.isNotBlank(intent != null ? intent.getStringExtra(EditorConstants.ARGS_DOC_ID) : null);
    }

    /* renamed from: l */
    public final void m41512l(View v, DragEvent event) {
        if (EditorConstantsKt.isStarSplitScreenEvent(event) && this.manager.isEnabledSplitScreen()) {
            m41516p(v, event);
        }
    }

    /* renamed from: m */
    public final void m41513m(View v, DragEvent event) {
        if (!EditorConstantsKt.isStarSplitScreenEvent(event) || this.manager.isEnabledSplitScreen()) {
            return;
        }
        m41517q(v, event);
    }

    /* renamed from: n */
    public final void m41514n(String docId) {
        EditorViewHandler editorViewHandler = this.manager.getEditorViewHandler(this.id);
        if (Intrinsics.areEqual(docId, EditorBundleKt.docId(editorViewHandler.getEditorBundle()))) {
            Debug.INSTANCE.m32035d(EditorViewDragListener.class, "current doc is open, do not open again", new Object[0]);
        } else {
            EditorBundleKt.postEvent(this.editorBundle, new FocusedEditorDocSwitchEvent(docId, this.id));
            RxjavaKt.subscribeWithDefault$default(editorViewHandler.openAnotherDocument(docId, new RectF()), null, null, null, 7, null);
        }
    }

    /* renamed from: o */
    public final void m41515o() {
        Activity activity;
        View view = this.highlightView;
        if (view == null || (activity = this.editorBundle.getUiBundle().getActivityHelper().getAndroidx.appcompat.widget.ActivityChooserModel.r java.lang.String()) == null) {
            return;
        }
        View decorView = activity.getWindow().getDecorView();
        Intrinsics.checkNotNull(decorView, "null cannot be cast to non-null type android.view.ViewGroup");
        ((ViewGroup) decorView).removeView(view);
        this.highlightView = null;
        this.currentReceiverEntry = null;
        Debug.INSTANCE.m32035d(EditorViewDragListener.class, "removeHighlightView", new Object[0]);
    }

    @Override // android.view.View.OnDragListener
    public boolean onDrag(@NotNull View v, @NotNull DragEvent event) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(event, "event");
        int action = event.getAction();
        if (action == 2) {
            m41513m(v, event);
        } else if (action == 3) {
            m41503c(event);
        } else if (action == 4) {
            m41515o();
            m41508h(event);
        } else if (action == 5) {
            m41512l(v, event);
        } else if (action == 6) {
            m41515o();
        }
        this.dragHelper.onDrag(v, event);
        return true;
    }

    /* renamed from: p */
    public final void m41516p(View v, DragEvent event) {
        m41515o();
        m41501a(v, SplitScreenReceiverEntry.INSTANCE.getFullReceiver());
    }

    /* renamed from: q */
    public final void m41517q(View v, DragEvent event) {
        Object obj;
        Iterator<T> it2 = SplitScreenReceiverEntry.INSTANCE.getSplitScreenReceiverEntryList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (((SplitScreenReceiverEntry) obj).contains(v, event.getX(), event.getY())) {
                    break;
                }
            }
        }
        SplitScreenReceiverEntry splitScreenReceiverEntry = (SplitScreenReceiverEntry) obj;
        if (splitScreenReceiverEntry == null || Intrinsics.areEqual(splitScreenReceiverEntry, this.currentReceiverEntry)) {
            return;
        }
        Debug.INSTANCE.m32035d(EditorViewDragListener.class, "highlightRect changed", new Object[0]);
        m41515o();
        m41501a(v, splitScreenReceiverEntry);
        this.currentReceiverEntry = splitScreenReceiverEntry;
    }

    /* renamed from: r */
    public final void m41518r(String docId) {
        EditorViewHandler m41502b = m41502b();
        if (EditorBundleKt.isDocumentOpen(m41502b.getEditorBundle())) {
            Debug.INSTANCE.m32035d(EditorViewDragListener.class, "doc is open, do not switch document", new Object[0]);
            return;
        }
        SplitScreenReceiverEntry splitScreenReceiverEntry = this.currentReceiverEntry;
        if (splitScreenReceiverEntry != null) {
            RxjavaKt.subscribeWithDefault$default(m41502b.openAnotherDocument(docId, this.manager.ensureEnableSpiltScreen(m41502b, splitScreenReceiverEntry.getPosition())), null, null, null, 7, null);
        }
    }
}
