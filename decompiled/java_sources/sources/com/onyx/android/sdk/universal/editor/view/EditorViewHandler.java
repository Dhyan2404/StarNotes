package com.onyx.android.sdk.universal.editor.view;

import android.app.Activity;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import androidx.activity.result.ActivityResultCaller;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.Lifecycle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.replicator.note.data.link.LinkDocBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.OpenDocumentAction;
import com.onyx.android.sdk.universal.editor.action.SaveDocumentAction;
import com.onyx.android.sdk.universal.editor.action.doc.LoadNoteModelAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.GotoQuoteExcerptShapeAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.ShowShapeHighlightAnimationAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RenderRequestManagerKt;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.events.app.BeforeRenderDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.app.CloseDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.app.DocumentOpenSuccessEvent;
import com.onyx.android.sdk.universal.editor.events.app.EditorCreatedEvent;
import com.onyx.android.sdk.universal.editor.events.app.SaveDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.note.DeleteExcerptResultEvent;
import com.onyx.android.sdk.universal.editor.events.note.DismissShapeHighlightAnimationEvent;
import com.onyx.android.sdk.universal.editor.events.note.GotoSourceEvent;
import com.onyx.android.sdk.universal.editor.events.note.HideQuoteIndicatorEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitExcerptSelectionEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowShapeHighlightAnimationEvent;
import com.onyx.android.sdk.universal.editor.events.note.SplitScreenOpenShapeLinkEvent;
import com.onyx.android.sdk.universal.editor.events.note.SplitScreenShowQuoteEvent;
import com.onyx.android.sdk.universal.editor.events.note.SplitScreenShowSourceEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartDropImageTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.UpdateExcerptResultEvent;
import com.onyx.android.sdk.universal.editor.events.note.UpdateQuoteShapeEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000È\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010B\u001a\u00020+\u0012\u0006\u0010G\u001a\u00020C\u0012\u0006\u0010R\u001a\u00020M\u0012\u0006\u0010L\u001a\u00020H¢\u0006\u0004\b[\u0010\\J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0002J\u0018\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\fH\u0002J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\t2\u0006\u0010\u0010\u001a\u00020\u000eH\u0002J\b\u0010\u0013\u001a\u00020\u0000H\u0002J\b\u0010\u0014\u001a\u00020\u0002H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u000e\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015J\u000e\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0019J\b\u0010\u001d\u001a\u00020\u001cH\u0014J\u0016\u0010\"\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 J\u0006\u0010#\u001a\u00020\u0002J\u000e\u0010$\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0007J\u0018\u0010(\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u00152\u0006\u0010'\u001a\u00020&H\u0016J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010'\u001a\u00020)H\u0007J\u001c\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00110\t2\u0006\u0010,\u001a\u00020+2\u0006\u0010\r\u001a\u00020\fJ\u001c\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00110\t2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\fJ\u0010\u0010/\u001a\u00020\u00022\u0006\u0010'\u001a\u00020.H\u0007J\u0010\u00101\u001a\u00020\u00022\u0006\u0010'\u001a\u000200H\u0007J\u0010\u00103\u001a\u00020\u00022\u0006\u0010'\u001a\u000202H\u0007J\u0010\u00105\u001a\u00020\u00022\u0006\u0010'\u001a\u000204H\u0007J\u0010\u00107\u001a\u00020\u00022\u0006\u0010'\u001a\u000206H\u0007J\u0010\u00109\u001a\u00020\u00022\u0006\u0010'\u001a\u000208H\u0007J\u0010\u0010;\u001a\u00020\u00022\u0006\u0010'\u001a\u00020:H\u0007J\u0006\u0010<\u001a\u00020\u0002J\u0010\u0010>\u001a\u00020\u00022\u0006\u0010'\u001a\u00020=H\u0007R\u0017\u0010B\u001a\u00020+8\u0006¢\u0006\f\n\u0004\b\u0012\u0010?\u001a\u0004\b@\u0010AR\u0017\u0010G\u001a\u00020C8\u0006¢\u0006\f\n\u0004\b\u000f\u0010D\u001a\u0004\bE\u0010FR\u0017\u0010L\u001a\u00020H8\u0006¢\u0006\f\n\u0004\b\n\u0010I\u001a\u0004\bJ\u0010KR$\u0010R\u001a\u00020M2\u0006\u0010N\u001a\u00020M8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0003\u0010O\u001a\u0004\bP\u0010QR\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0016\u0010S\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR\u0018\u0010Z\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010Y¨\u0006]"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;", "Landroid/view/View$OnTouchListener;", "", C6999h.f39688c, "i", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "syncNoteModel", "", "a", "Lio/reactivex/rxjava3/core/Observable;", C6998g.f39679a, "noteModel", "Landroid/graphics/RectF;", "viewRectF", "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", C6997f.f39671c, "openDocArgs", "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;", "e", "c", "b", "Landroid/view/View;", "editorView", "d", "initEditorView", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "attachActivity", "Landroid/view/View$OnDragListener;", "createDragListener", "Landroidx/lifecycle/Lifecycle;", RequestParameters.SUBRESOURCE_LIFECYCLE, "Landroidx/activity/result/ActivityResultCaller;", "activityResultLauncher", "postEditorCreatedEvent", "destroy", "saveDocument", "v", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouch", "Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;", "onSplitScreenShowQuoteEvent", "", EditorConstants.ARGS_DOC_ID, "openAnotherDocument", "Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowSourceEvent;", "onSplitScreenShowSourceEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowShapeHighlightAnimationEvent;", "onShowShapeHighlightAnimationEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/DismissShapeHighlightAnimationEvent;", "onDismissShapeHighlightAnimationEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;", "onDeleteExcerptResultEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultEvent;", "onUpdateExcerptResultEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartDropImageTransformEvent;", "onStartDropImageTransformEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenOpenShapeLinkEvent;", "onSplitScreenOpenShapeLinkEvent", "closeDocumentAfterExitSplitScreen", "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;", "onDocumentOpenSuccessEvent", Constants.STRING_SIG, "getId", "()Ljava/lang/String;", "id", "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "getManager", "()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "manager", "Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;", "Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;", "getViewDownListener", "()Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;", "viewDownListener", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "<set-?>", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Landroid/view/View;", "getEditorView", "()Landroid/view/View;", "setEditorView", "(Landroid/view/View;)V", "Lio/reactivex/rxjava3/disposables/Disposable;", "Lio/reactivex/rxjava3/disposables/Disposable;", "highlightAnimationDisposable", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/view/EditorViewDownListener;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class EditorViewHandler implements View.OnTouchListener {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String id;
    public View editorView;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final EditorBundleManager manager;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EditorViewDownListener viewDownListener;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Disposable highlightAnimationDisposable;

    /* renamed from: com.onyx.android.sdk.universal.editor.view.EditorViewHandler$a */
    /* loaded from: classes8.dex */
    public static final class C10572a<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ SplitScreenOpenShapeLinkEvent f52783e;

        public C10572a(SplitScreenOpenShapeLinkEvent splitScreenOpenShapeLinkEvent) {
            this.f52783e = splitScreenOpenShapeLinkEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f52783e.getLinkBean().isLinkPageType();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.view.EditorViewHandler$b */
    /* loaded from: classes8.dex */
    public static final class C10573b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ SplitScreenOpenShapeLinkEvent f52784e;

        public C10573b(SplitScreenOpenShapeLinkEvent splitScreenOpenShapeLinkEvent) {
            this.f52784e = splitScreenOpenShapeLinkEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CommonEditorActionsKt.gotoPageOrShape(it2.getEditorBundle(), this.f52784e.getLinkBean());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.view.EditorViewHandler$c */
    /* loaded from: classes8.dex */
    public static final class C10574c<T> implements Consumer {
        public C10574c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorViewHandler.this.m41527i();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.view.EditorViewHandler$e */
    /* loaded from: classes8.dex */
    public static final class C10576e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorViewHandler f52788f;

        public C10576e(EditorViewHandler editorViewHandler) {
            this.f52788f = editorViewHandler;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<SyncNoteModel, RectF> apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new Pair<>(it2, EditorBundleManager.ensureEnableSpiltScreen$default(EditorViewHandler.this.getManager(), this.f52788f, null, 2, null));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.view.EditorViewHandler$f */
    /* loaded from: classes8.dex */
    public static final class C10577f<T, R> implements Function {
        public C10577f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentAction> apply(@NotNull Pair<? extends SyncNoteModel, ? extends RectF> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorViewHandler.this.openAnotherDocument(it2.getFirst(), it2.getSecond());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.view.EditorViewHandler$g */
    /* loaded from: classes8.dex */
    public static final class C10578g<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ SplitScreenShowSourceEvent f52790e;

        public C10578g(SplitScreenShowSourceEvent splitScreenShowSourceEvent) {
            this.f52790e = splitScreenShowSourceEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(it2.getEditorBundle(), new GotoSourceEvent(this.f52790e.getSourceId()));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.view.EditorViewHandler$h */
    /* loaded from: classes8.dex */
    public static final class C10579h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f52792f;

        public C10579h(String str) {
            this.f52792f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SyncNoteModel> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadNoteModelAction(EditorViewHandler.this.getEditorBundle(), this.f52792f).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.view.EditorViewHandler$i */
    /* loaded from: classes8.dex */
    public static final class C10580i<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ RectF f52794f;

        public C10580i(RectF rectF) {
            this.f52794f = rectF;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentAction> apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorViewHandler.this.openAnotherDocument(it2, this.f52794f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.view.EditorViewHandler$j */
    /* loaded from: classes8.dex */
    public static final class C10581j<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ SyncNoteModel f52795e;

        public C10581j(SyncNoteModel syncNoteModel) {
            this.f52795e = syncNoteModel;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SyncNoteModel apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f52795e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.view.EditorViewHandler$k */
    /* loaded from: classes8.dex */
    public static final class C10582k<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ RectF f52797f;

        public C10582k(RectF rectF) {
            this.f52797f = rectF;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OpenDocArgs apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorViewHandler.this.m41524f(it2, this.f52797f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.view.EditorViewHandler$l */
    /* loaded from: classes8.dex */
    public static final class C10583l<T, R> implements Function {
        public C10583l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentAction> apply(@NotNull OpenDocArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorViewHandler.this.m41523e(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.view.EditorViewHandler$m */
    /* loaded from: classes8.dex */
    public static final class C10584m<T> implements Consumer {
        public C10584m() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleManager.updateFocusId$default(EditorViewHandler.this.getManager(), EditorViewHandler.this.getId(), false, 2, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.view.EditorViewHandler$n */
    /* loaded from: classes8.dex */
    public static final class C10585n<T> implements Consumer {
        public C10585n() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorViewHandler editorViewHandler = EditorViewHandler.this;
            editorViewHandler.m41522d(editorViewHandler.getEditorView());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.view.EditorViewHandler$o */
    /* loaded from: classes8.dex */
    public static final class C10586o<T, R> implements Function {

        /* renamed from: e */
        public static final C10586o<T, R> f52801e = new C10586o<>();

        /* renamed from: a */
        public final void m41542a(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m41542a((SaveDocumentAction) obj);
            return Unit.INSTANCE;
        }
    }

    public EditorViewHandler(@NotNull String id, @NotNull EditorBundleManager manager, @NotNull EditorBundle editorBundle, @NotNull EditorViewDownListener viewDownListener) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(viewDownListener, "viewDownListener");
        this.id = id;
        this.manager = manager;
        this.viewDownListener = viewDownListener;
        this.editorBundle = editorBundle;
        EditorBundleKt.register(editorBundle, this);
    }

    /* renamed from: a */
    public final boolean m41519a(SyncNoteModel syncNoteModel) {
        if (syncNoteModel.isEnabled()) {
            return true;
        }
        m41527i();
        return false;
    }

    public final void attachActivity(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.editorBundle.getUiBundle().attachActivity(activity);
    }

    /* renamed from: b */
    public final void m41520b() {
        Disposable disposable;
        if (RxjavaKt.isDisposed(this.highlightAnimationDisposable) || (disposable = this.highlightAnimationDisposable) == null) {
            return;
        }
        disposable.dispose();
    }

    /* renamed from: c */
    public final EditorViewHandler m41521c() {
        return this.manager.getAnotherEditorViewHandler(this.id);
    }

    public final void closeDocumentAfterExitSplitScreen() {
        this.editorBundle.getUiBundle().getUiStateInfo().setClosingDocumentAfterExitSplitScreen(true);
        EditorBundleKt.postEvent(this.editorBundle, new CloseDocumentEvent(false, true, 1, null));
    }

    @NotNull
    public View.OnDragListener createDragListener() {
        return new EditorViewDragListener(this.id, this.manager, this.editorBundle);
    }

    /* renamed from: d */
    public final void m41522d(View editorView) {
        EditorBundleKt.postEvent(this.editorBundle, new BeforeRenderDocumentEvent(editorView));
    }

    public final void destroy() {
        m41520b();
        EditorBundleKt.unregister(this.editorBundle, this);
        RenderRequestManagerKt.safeClearAllSliceCache(this.editorBundle);
        if (saveDocument(true)) {
            return;
        }
        this.editorBundle.destroy();
    }

    /* renamed from: e */
    public final Observable<OpenDocumentAction> m41523e(OpenDocArgs openDocArgs) {
        return new OpenDocumentAction(this.editorBundle, openDocArgs).build();
    }

    /* renamed from: f */
    public final OpenDocArgs m41524f(SyncNoteModel noteModel, RectF viewRectF) {
        OpenDocArgs openDocArgs = new OpenDocArgs();
        openDocArgs.setUserId(AccountDataBundle.INSTANCE.getSyncUserId());
        openDocArgs.setDocumentId(noteModel.getUniqueId());
        openDocArgs.setParentUniqueId(String.valueOf(noteModel.getParentUniqueId()));
        openDocArgs.setActiveScene(noteModel.getActiveScene());
        if (!viewRectF.isEmpty()) {
            openDocArgs.setViewSize(RectKt.toSize(viewRectF));
            openDocArgs.setUseExternalViewSize(true);
        }
        return openDocArgs;
    }

    /* renamed from: g */
    public final Observable<Unit> m41525g() {
        if (!EditorBundleKt.isDocumentOpen(this.editorBundle)) {
            Observable<Unit> just = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        EditorBundleKt.postEvent(this.editorBundle, new QuitExcerptSelectionEvent(false, null, 2, null));
        EditorBundleKt.postEvent(this.editorBundle, new QuitTransformEvent(false, 1, null));
        Observable map = new SaveDocumentAction(this.editorBundle).build().map(C10586o.f52801e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final View getEditorView() {
        View view = this.editorView;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("editorView");
        return null;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final EditorBundleManager getManager() {
        return this.manager;
    }

    @NotNull
    public final EditorViewDownListener getViewDownListener() {
        return this.viewDownListener;
    }

    /* renamed from: h */
    public final void m41526h() {
        getEditorView().setOnDragListener(createDragListener());
    }

    /* renamed from: i */
    public final void m41527i() {
        ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.can_not_goto_deleted_note_tip, false, 2, (Object) null);
    }

    public final void initEditorView(@NotNull View editorView) {
        Intrinsics.checkNotNullParameter(editorView, "editorView");
        setEditorView(editorView);
        this.editorBundle.getUiBundle().updateContentView(editorView, this);
        this.editorBundle.getDisplayBundle().setView(editorView);
        m41526h();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteExcerptResultEvent(@NotNull DeleteExcerptResultEvent event) {
        List mutableList;
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.manager.isEnabledSplitScreen()) {
            EditorViewHandler m41521c = m41521c();
            if (EditorBundleKt.isDocumentOpen(m41521c.editorBundle)) {
                Debug.INSTANCE.m32035d(getClass(), "notify hide quote indicator", new Object[0]);
                m41520b();
                EditorBundle editorBundle = m41521c.editorBundle;
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) event.getCom.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING java.lang.String().getExcerptCollectionList());
                EditorBundleKt.postEvent(editorBundle, new HideQuoteIndicatorEvent(mutableList));
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDismissShapeHighlightAnimationEvent(@NotNull DismissShapeHighlightAnimationEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41520b();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocumentOpenSuccessEvent(@NotNull DocumentOpenSuccessEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.manager.setAnimatingStartSplitScreen(false);
        if (event.getOpenDocArgs().getDoAnimation()) {
            m41522d(getEditorView());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowShapeHighlightAnimationEvent(@NotNull ShowShapeHighlightAnimationEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41520b();
        this.highlightAnimationDisposable = new ShowShapeHighlightAnimationAction(this.editorBundle, event.getShape(), 0L, 4, null).build().subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSplitScreenOpenShapeLinkEvent(@NotNull SplitScreenOpenShapeLinkEvent event) {
        String documentId;
        Intrinsics.checkNotNullParameter(event, "event");
        LinkDocBean docBean = event.getLinkBean().getDocBean();
        if (docBean == null || (documentId = docBean.getDocumentId()) == null) {
            return;
        }
        EditorViewHandler m41521c = m41521c();
        if (Intrinsics.areEqual(documentId, EditorBundleKt.docId(m41521c.editorBundle))) {
            if (event.getLinkBean().isLinkPageType()) {
                CommonEditorActionsKt.gotoPageOrShape(m41521c.editorBundle, event.getLinkBean());
            }
        } else {
            Observable<OpenDocumentAction> doOnNext = m41521c.openAnotherDocument(documentId, EditorBundleManager.ensureEnableSpiltScreen$default(this.manager, m41521c, null, 2, null)).filter(new C10572a(event)).doOnNext(new C10573b(event));
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSplitScreenShowQuoteEvent(@NotNull SplitScreenShowQuoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        new GotoQuoteExcerptShapeAction(this.editorBundle, this.manager, event).build().subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSplitScreenShowSourceEvent(@NotNull SplitScreenShowSourceEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorViewHandler m41521c = m41521c();
        if (Intrinsics.areEqual(EditorBundleKt.docId(m41521c.editorBundle), event.getSourceDocId())) {
            EditorBundleKt.postEvent(m41521c.editorBundle, new GotoSourceEvent(event.getSourceId()));
        } else {
            new LoadNoteModelAction(this.editorBundle, event.getSourceDocId()).build().doOnError(new C10574c()).filter(new Predicate() { // from class: com.onyx.android.sdk.universal.editor.view.EditorViewHandler.d
                @Override // io.reactivex.rxjava3.functions.Predicate
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final boolean test(@NotNull SyncNoteModel p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    return EditorViewHandler.this.m41519a(p0);
                }
            }).map(new C10576e(m41521c)).flatMap(new C10577f()).doOnNext(new C10578g(event)).subscribe();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartDropImageTransformEvent(@NotNull StartDropImageTransformEvent event) {
        EditorViewHandler m41521c;
        Intrinsics.checkNotNullParameter(event, "event");
        if (Intrinsics.areEqual(EditorBundleKt.docId(this.editorBundle), event.getDocId())) {
            m41521c = this;
        } else {
            if (!this.manager.isEnabledSplitScreen()) {
                return;
            }
            m41521c = m41521c();
            if (!EditorBundleKt.isDocumentOpen(m41521c.editorBundle)) {
                return;
            }
        }
        EditorBundle editorBundle = m41521c.editorBundle;
        this.manager.updateFocusId(m41521c.id, true);
        EditorBundleKt.postEvent(editorBundle, new StartTransformEvent(event.getTransformBean()));
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(@NotNull View v, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(event, "event");
        if (!DeviceFactory.INSTANCE.getCurrentDevice().filterByActionDown(event)) {
            return false;
        }
        this.viewDownListener.onDown(this.id);
        return false;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateExcerptResultEvent(@NotNull UpdateExcerptResultEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.manager.isEnabledSplitScreen()) {
            EditorViewHandler m41521c = m41521c();
            if (EditorBundleKt.isDocumentOpen(m41521c.editorBundle)) {
                EditorBundleKt.postEvent(m41521c.editorBundle, new UpdateQuoteShapeEvent(event.getArgs()));
            }
        }
    }

    @NotNull
    public final Observable<OpenDocumentAction> openAnotherDocument(@NotNull final String docId, @NotNull RectF viewRectF) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(viewRectF, "viewRectF");
        Observable just = Observable.just(m41521c().editorBundle);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        Observable<OpenDocumentAction> flatMap = RxjavaKt.flatMapIf(just, new Function1<EditorBundle, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.view.EditorViewHandler$openAnotherDocument$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull EditorBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(EditorBundleKt.docId(it2), docId) && EditorBundleKt.isDocumentOpen(it2));
            }
        }, new Function1<EditorBundle, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.view.EditorViewHandler$openAnotherDocument$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull EditorBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new SaveDocumentAction(it2).build();
            }
        }).flatMap(new C10579h(docId)).flatMap(new C10580i(viewRectF));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public final void postEditorCreatedEvent(@NotNull Lifecycle lifecycle, @NotNull ActivityResultCaller activityResultLauncher) {
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        Intrinsics.checkNotNullParameter(activityResultLauncher, "activityResultLauncher");
        EditorBundleKt.postEvent(this.editorBundle, new EditorCreatedEvent(lifecycle, activityResultLauncher));
    }

    public final boolean saveDocument(boolean destroy) {
        if (!EditorBundleKt.isDocumentOpen(this.editorBundle)) {
            return false;
        }
        EditorBundleKt.postEvent(this.editorBundle, new SaveDocumentEvent(destroy));
        return true;
    }

    public final void setEditorView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.editorView = view;
    }

    @NotNull
    public final Observable<OpenDocumentAction> openAnotherDocument(@NotNull SyncNoteModel noteModel, @NotNull RectF viewRectF) {
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        Intrinsics.checkNotNullParameter(viewRectF, "viewRectF");
        Observable<OpenDocumentAction> doOnNext = m41525g().map(new C10581j(noteModel)).map(new C10582k(viewRectF)).flatMap(new C10583l()).doOnNext(new C10584m()).doOnNext(new C10585n());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }
}
