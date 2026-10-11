package com.onyx.galaxy.note.editor.handler;

import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.config.SplitScreenPosition;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandler;
import com.onyx.android.sdk.universal.editor.events.app.BeforeRenderDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.note.SplitScreenType;
import com.onyx.android.sdk.universal.editor.events.note.StartSplitScreenEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.view.EditorBundleManager;
import com.onyx.android.sdk.universal.editor.view.EditorViewHandler;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0013¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002J\u001c\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000bH\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;", "", "destroy", "Lcom/onyx/android/sdk/universal/editor/events/app/BeforeRenderDocumentEvent;", NotificationCompat.CATEGORY_EVENT, "onBeforeRenderDocumentEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;", "onStartSplitScreenEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;", "splitScreenType", "Landroid/graphics/RectF;", "b", "c", "", EditorConstants.ARGS_DOC_ID, "viewRectF", "Lio/reactivex/rxjava3/core/Observable;", "a", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "e", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "scribbleFragment", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSplitScreenEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplitScreenEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,87:1\n1855#2,2:88\n1855#2,2:90\n*S KotlinDebug\n*F\n+ 1 SplitScreenEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler\n*L\n30#1:88,2\n38#1:90,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SplitScreenEventHandler implements EventHandler {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final NoteScribbleFragment scribbleFragment;

    /* renamed from: com.onyx.galaxy.note.editor.handler.SplitScreenEventHandler$a */
    /* loaded from: classes9.dex */
    public static final class C12110a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ StartSplitScreenEvent f58862f;

        public C12110a(StartSplitScreenEvent startSplitScreenEvent) {
            this.f58862f = startSplitScreenEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RectF apply(@NotNull SplitScreenEventHandler it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SplitScreenEventHandler.this.m46303b(this.f58862f.getSplitScreenType());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.SplitScreenEventHandler$b */
    /* loaded from: classes9.dex */
    public static final class C12111b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ StartSplitScreenEvent f58864f;

        public C12111b(StartSplitScreenEvent startSplitScreenEvent) {
            this.f58864f = startSplitScreenEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull RectF it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SplitScreenEventHandler.this.m46302a(this.f58864f.getDocId(), it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.handler.SplitScreenEventHandler$c */
    /* loaded from: classes9.dex */
    public static final class C12112c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ StartSplitScreenEvent f58866f;

        public C12112c(StartSplitScreenEvent startSplitScreenEvent) {
            this.f58866f = startSplitScreenEvent;
        }

        /* renamed from: a */
        public final void m46307a(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SplitScreenEventHandler.this.m46304c(this.f58866f.getSplitScreenType());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m46307a(obj);
            return Unit.INSTANCE;
        }
    }

    public SplitScreenEventHandler(@NotNull NoteScribbleFragment scribbleFragment) {
        Intrinsics.checkNotNullParameter(scribbleFragment, "scribbleFragment");
        this.scribbleFragment = scribbleFragment;
        DocCollectionBundle.INSTANCE.ensureRegister(this);
        Iterator<T> it2 = scribbleFragment.getEditorBundleManager().getEditorViewHandlers().iterator();
        while (it2.hasNext()) {
            EditorBundleKt.register(((EditorViewHandler) it2.next()).getEditorBundle(), this);
        }
    }

    /* renamed from: a */
    public final Observable<?> m46302a(String docId, RectF viewRectF) {
        EditorBundleManager editorBundleManager = this.scribbleFragment.getEditorBundleManager();
        return this.scribbleFragment.isEnabledSplitScreen() ? editorBundleManager.getAnotherEditorViewHandler(editorBundleManager.getFocusId()).openAnotherDocument(docId, viewRectF) : editorBundleManager.unfocusedEditorViewHandler().openAnotherDocument(docId, viewRectF);
    }

    /* renamed from: b */
    public final RectF m46303b(SplitScreenType splitScreenType) {
        EditorBundleManager editorBundleManager = this.scribbleFragment.getEditorBundleManager();
        return editorBundleManager.ensureEnableSpiltScreen(editorBundleManager.getAnotherEditorViewHandler(editorBundleManager.getFocusId()), splitScreenType == SplitScreenType.UP_DOWN ? SplitScreenPosition.BOTTOM : SplitScreenPosition.RIGHT);
    }

    /* renamed from: c */
    public final void m46304c(SplitScreenType splitScreenType) {
        boolean z = false;
        boolean z2 = this.scribbleFragment.getBinding$note_overseasRelease().shapeAndTool.getSplitScreenLayout().getSplitScreenType() == 1 && splitScreenType == SplitScreenType.LEFT_RIGHT;
        if (this.scribbleFragment.getBinding$note_overseasRelease().shapeAndTool.getSplitScreenLayout().getSplitScreenType() == 2 && splitScreenType == SplitScreenType.UP_DOWN) {
            z = true;
        }
        if (z2 || z) {
            return;
        }
        this.scribbleFragment.getBinding$note_overseasRelease().shapeAndTool.getSplitScreenLayout().switchSplitScreenType();
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void destroy() {
        EventHandler.DefaultImpls.destroy(this);
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
        Iterator<T> it2 = this.scribbleFragment.getEditorBundleManager().getEditorViewHandlers().iterator();
        while (it2.hasNext()) {
            EditorBundleKt.unregister(((EditorViewHandler) it2.next()).getEditorBundle(), this);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void init() {
        EventHandler.DefaultImpls.init(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onBeforeRenderDocumentEvent(@NotNull BeforeRenderDocumentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ViewExtKt.startAlphaAnimation$default(event.getEditorView(), 0.0f, 1.0f, 0L, null, 12, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartSplitScreenEvent(@NotNull StartSplitScreenEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Observable.just(this).map(new C12110a(event)).flatMap(new C12111b(event)).map(new C12112c(event)).subscribe();
    }
}
