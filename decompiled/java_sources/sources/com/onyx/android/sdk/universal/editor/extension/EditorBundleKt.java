package com.onyx.android.sdk.universal.editor.extension;

import android.app.Activity;
import android.content.Context;
import android.graphics.RectF;
import android.view.View;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.base.data.ColorTheme;
import com.onyx.android.sdk.base.data.DelegatedValueProvider;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.scheduler.RequestManager;
import com.onyx.android.sdk.base.scheduler.SchedulerManager;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.replicator.fts.provider.FTSProvider;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.InsertPageAfterSpecifiedPageAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.config.DocumentState;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.data.EditorAnimatorContext;
import com.onyx.android.sdk.universal.editor.data.PageViewInfo;
import com.onyx.android.sdk.universal.editor.data.VirtualDocViewInfo;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.events.app.StopScrollEvent;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitExcerptSelectionEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature;
import com.onyx.android.sdk.universal.editor.gesture.TouchStateInfo;
import com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.onyx.android.sdk.universal.editor.request.page.FindVisibleBoxInfoByNotePageIdRequest;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KProperty;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000ê\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0006\u0010\u0001\u001a\u00020\u0000\u001a\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0005*\u00020\u0002\u001a\n\u0010\b\u001a\u00020\u0007*\u00020\u0002\u001a\u0012\u0010\u000b\u001a\n \n*\u0004\u0018\u00010\t0\t*\u00020\u0002\u001a\n\u0010\f\u001a\u00020\t*\u00020\u0002\u001a\n\u0010\r\u001a\u00020\t*\u00020\u0002\u001a\n\u0010\u000e\u001a\u00020\t*\u00020\u0002\u001a\n\u0010\u000f\u001a\u00020\t*\u00020\u0002\u001a\n\u0010\u0010\u001a\u00020\t*\u00020\u0002\u001a\n\u0010\u0011\u001a\u00020\t*\u00020\u0002\u001a\n\u0010\u0013\u001a\u00020\u0012*\u00020\u0002\u001a\n\u0010\u0015\u001a\u00020\u0014*\u00020\u0002\u001a\n\u0010\u0017\u001a\u00020\u0016*\u00020\u0002\u001a\n\u0010\u0019\u001a\u00020\u0018*\u00020\u0002\u001a\n\u0010\u001b\u001a\u00020\u001a*\u00020\u0002\u001a\u0012\u0010\u001f\u001a\u00020\u001e*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001c\u001a\u0012\u0010!\u001a\u00020\u001a*\u00020\u00022\u0006\u0010 \u001a\u00020\u001c\u001a\u0012\u0010\"\u001a\u00020\u001e*\u00020\u00022\u0006\u0010 \u001a\u00020\u001c\u001a\u0012\u0010#\u001a\u00020\u001e*\u00020\u00022\u0006\u0010 \u001a\u00020\u001c\u001a\n\u0010%\u001a\u00020$*\u00020\u0002\u001a\n\u0010'\u001a\u00020&*\u00020\u0002\u001a\f\u0010)\u001a\u0004\u0018\u00010(*\u00020\u0002\u001a\n\u0010*\u001a\u00020(*\u00020\u0002\u001a\n\u0010,\u001a\u00020+*\u00020\u0002\u001a\n\u0010-\u001a\u00020+*\u00020\u0002\u001a\u0012\u00100\u001a\u00020+*\u00020\u00022\u0006\u0010/\u001a\u00020.\u001a\n\u00101\u001a\u00020+*\u00020\u0002\u001a\n\u00102\u001a\u00020+*\u00020\u0002\u001a\n\u00103\u001a\u00020.*\u00020\u0002\u001a\u0010\u00105\u001a\b\u0012\u0004\u0012\u00020.04*\u00020\u0002\u001a\n\u00106\u001a\u00020.*\u00020\u0002\u001a\n\u00107\u001a\u00020&*\u00020\u0002\u001a\u0018\u00109\u001a\b\u0012\u0004\u0012\u00020.04*\u00020\u00022\u0006\u00108\u001a\u00020&\u001a\u001e\u00109\u001a\b\u0012\u0004\u0012\u00020.04*\u00020\u00022\f\u0010;\u001a\b\u0012\u0004\u0012\u00020:04\u001a\u001e\u00109\u001a\b\u0012\u0004\u0012\u00020.04*\u00020\u00022\f\u0010>\u001a\b\u0012\u0004\u0012\u00020=0<\u001a\"\u0010C\u001a\b\u0012\u0004\u0012\u00020B0A*\u00020\u00022\u0006\u0010?\u001a\u00020=2\b\b\u0002\u0010@\u001a\u00020\u001a\u001a\n\u0010E\u001a\u00020D*\u00020\u0002\u001a\n\u0010F\u001a\u00020D*\u00020\u0002\u001a\n\u0010G\u001a\u00020D*\u00020\u0002\u001a\n\u0010H\u001a\u00020D*\u00020\u0002\u001a\u0012\u0010E\u001a\u00020D*\u00020\u00022\u0006\u0010I\u001a\u00020D\u001a\n\u0010J\u001a\u00020&*\u00020\u0002\u001a\u0012\u0010M\u001a\u00020\u001e*\u00020\u00022\u0006\u0010L\u001a\u00020K\u001a\n\u0010N\u001a\u00020K*\u00020\u0002\u001a\n\u0010O\u001a\u00020.*\u00020\u0002\u001a\n\u0010P\u001a\u00020&*\u00020\u0002\u001a\n\u0010Q\u001a\u00020&*\u00020\u0002\u001a\n\u0010R\u001a\u00020\u001e*\u00020\u0002\u001a\n\u0010S\u001a\u00020\u001e*\u00020\u0002\u001a\n\u0010T\u001a\u00020\u001e*\u00020\u0002\u001a\n\u0010U\u001a\u00020\u001a*\u00020\u0002\u001a\n\u0010V\u001a\u00020\u001a*\u00020\u0002\u001a\n\u0010X\u001a\u00020W*\u00020\u0002\u001a\n\u0010Y\u001a\u00020\u001a*\u00020\u0002\u001a\n\u0010Z\u001a\u00020\u001a*\u00020\u0002\u001a\n\u0010[\u001a\u00020\u001a*\u00020\u0002\u001a\u0012\u0010]\u001a\u00020\u001e*\u00020\u00022\u0006\u0010\\\u001a\u00020\u001a\u001a\n\u0010_\u001a\u00020^*\u00020\u0002\u001a\n\u0010`\u001a\u00020\u001a*\u00020\u0002\u001a\n\u0010a\u001a\u00020\u001a*\u00020\u0002\u001a\n\u0010b\u001a\u00020\u001a*\u00020\u0002\u001a\n\u0010c\u001a\u00020\u001a*\u00020\u0002\u001a\u0012\u0010e\u001a\u00020\u001a*\u00020\u00022\u0006\u0010d\u001a\u00020=\u001a\n\u0010f\u001a\u00020=*\u00020\u0002\u001a\n\u0010g\u001a\u00020\u001a*\u00020\u0002\u001a\u000e\u0010h\u001a\u0006\u0012\u0002\b\u00030A*\u00020\u0002\u001a\u001e\u0010m\u001a\u0006\u0012\u0002\b\u00030A*\u00020\u00022\u0006\u0010j\u001a\u00020i2\u0006\u0010l\u001a\u00020k\u001a\u0012\u0010o\u001a\u00020\u001e*\u00020\u00022\u0006\u0010n\u001a\u00020\u001a\u001a\u0012\u0010q\u001a\u00020\u001e*\u00020\u00022\u0006\u0010p\u001a\u00020\u001a\u001a\n\u0010r\u001a\u00020\u001a*\u00020\u0002\u001a\u0012\u0010s\u001a\u00020\u001e*\u00020\u00022\u0006\u0010n\u001a\u00020\u001a\u001a\n\u0010t\u001a\u00020\u001a*\u00020\u0002\u001a\f\u0010v\u001a\u0004\u0018\u00010u*\u00020\u0002\u001a\n\u0010x\u001a\u00020w*\u00020\u0002\u001a\n\u0010z\u001a\u00020y*\u00020\u0002\u001a\n\u0010{\u001a\u00020\u001e*\u00020\u0002\u001a\n\u0010|\u001a\u00020\u001e*\u00020\u0002\u001a\n\u0010~\u001a\u00020}*\u00020\u0002\u001a\n\u0010\u007f\u001a\u00020\u001e*\u00020\u0002\"%\u0010\u0085\u0001\u001a\u00030\u0080\u0001*\u00020\u00028FX\u0086\u0084\u0002¢\u0006\u0010\n\u0006\b\u0081\u0001\u0010\u0082\u0001\u001a\u0006\b\u0083\u0001\u0010\u0084\u0001¨\u0006\u0086\u0001"}, m61528d2 = {"Landroid/content/Context;", "appContext", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "readerBundle", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;", "schedulerManager", "Lio/reactivex/rxjava3/core/Scheduler;", "kotlin.jvm.PlatformType", "requestManagerScheduler", "coreScheduler", "readerScheduler", "noteScheduler", "subNoteScheduler", "ioSequenceScheduler", "stashScheduler", "Lorg/greenrobot/eventbus/EventBus;", "appEventBus", "Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;", "touchStateInfo", "Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;", "handlerManager", "Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;", "shapeHandlerManager", "", "isDestroyed", "", NotificationCompat.CATEGORY_EVENT, "", "postEvent", "subscriber", "isRegistered", "register", "unregister", "Lcom/onyx/android/sdk/base/data/Size;", "viewSize", "Landroid/graphics/RectF;", "viewportRect", "Landroid/view/View;", "editorView", "requireEditorView", "", "pageCount", "lastPageIndex", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "pageIndex", "currentPageIndex", "currentPageNumber", "currentVisibleBoxInfo", "", "visibleBoxList", "ensureFirstVisibleBoxInfo", "visibleBoundingRect", "screenRectF", "findIntersectsVisibleBoxList", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "list", "", "", "pageIdSet", "notePageId", "updateToVisibleBox", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;", "findVisibleBoxInfoByNotePageId", "", "actualScale", "currentMinScale", "currentDisplayScale", "currentToViewportWidthScale", "displayScale", "firstVisibleRect", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", PrivilegedApp.f6532i, "updateVirtualDocViewInfo", "virtualDocViewInfo", "viewport", "boundingRect", "viewportLimitRect", "toReadingProvider", "toDummyProvider", "activeShapeDrawingProvider", "stopScroll", "isScrolling", "Lcom/onyx/android/sdk/universal/editor/config/DocumentState;", "documentState", "isDocumentOpen", "isDocumentPending", "isOwner", "owner", "setOwner", "Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;", "getUiFeature", "hasLockedLayer", "isCurNoteLayerLocked", "isCurNoteLayerShown", "isCurNoteLayerEnable", CouchFieldKey.KEY_TOC_PAGE_ID, "isCurDarkTheme", EditorConstants.ARGS_DOC_ID, "isReachLimitEdge", "appendPage", "Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;", "context", "Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext$AnimationType;", "animationType", "prepareBoxAnimation", "enabled", "setEnabledAnimationUpdateEditorView", "animating", "setAnimatingStartSplitScreen", "isEnabledAnimationUpdateEditorView", "setEnabledAbortFlingAnimation", "isAnimatingStartSplitScreen", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "Lcom/onyx/android/sdk/base/scheduler/RequestManager;", "requestManager", "Lcom/onyx/android/sdk/universal/editor/display/RenderManager;", "renderManager", "onPageChangedEvent", "updateNoteDrawingArgs", "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;", "uiDrawingArgs", "updateUiDrawingArgs", "Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;", "b", "Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;", "getDocFtsProvider", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;", "docFtsProvider", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEditorBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorBundle.kt\ncom/onyx/android/sdk/universal/editor/extension/EditorBundleKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,325:1\n1#2:326\n766#3:327\n857#3,2:328\n1549#3:330\n1620#3,3:331\n766#3:334\n857#3,2:335\n97#4:337\n*S KotlinDebug\n*F\n+ 1 EditorBundle.kt\ncom/onyx/android/sdk/universal/editor/extension/EditorBundleKt\n*L\n137#1:327\n137#1:328,2\n141#1:330\n141#1:331,3\n146#1:334\n146#1:335,2\n325#1:337\n*E\n"})
/* loaded from: classes8.dex */
public final class EditorBundleKt {

    /* renamed from: a */
    public static final /* synthetic */ KProperty<Object>[] f52073a = {Reflection.property1(new PropertyReference1Impl(EditorBundleKt.class, "docFtsProvider", "getDocFtsProvider(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;", 1))};

    /* renamed from: b */
    @NotNull
    public static final DelegatedValueProvider f52074b = new DelegatedValueProvider() { // from class: com.onyx.android.sdk.universal.editor.extension.EditorBundleKt$special$$inlined$delegate$1
        @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
        public RESULT getValue(CONTEXT context, @NotNull KProperty<?> kProperty) {
            return (RESULT) DelegatedValueProvider.DefaultImpls.getValue(this, context, kProperty);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
        public final FTSProvider provideValue(CONTEXT context) {
            return WorkBundleKt.getDocFtsProvider(((EditorBundle) context).getWorkBundle());
        }
    };

    /* renamed from: com.onyx.android.sdk.universal.editor.extension.EditorBundleKt$a */
    /* loaded from: classes8.dex */
    public static final class C10367a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f52075e;

        /* renamed from: f */
        public final /* synthetic */ Ref.IntRef f52076f;

        public C10367a(EditorBundle editorBundle, Ref.IntRef intRef) {
            this.f52075e = editorBundle;
            this.f52076f = intRef;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends InsertPageAfterSpecifiedPageAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.onPageChangedEvent(this.f52075e);
            return new InsertPageAfterSpecifiedPageAction(this.f52075e, this.f52076f.element, false, 4, null).build();
        }
    }

    public static final void activeShapeDrawingProvider(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        editorBundle.getUiBundle().getHandlerManager().getShapeHandlerManager().activeShapeDrawingProvider();
    }

    @Nullable
    public static final Activity activity(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getUiBundle().getActivityHelper().getAndroidx.appcompat.widget.ActivityChooserModel.r java.lang.String();
    }

    public static final float actualScale(@NotNull EditorBundle editorBundle) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) visibleBoxList(editorBundle));
        BoxInfo boxInfo = (BoxInfo) firstOrNull;
        if (boxInfo != null) {
            return boxInfo.getActualScale();
        }
        return 1.0f;
    }

    @NotNull
    public static final Context appContext() {
        return ResManager.INSTANCE.getAppContext();
    }

    @NotNull
    public static final EventBus appEventBus(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getUiBundle().getEventBus();
    }

    @NotNull
    public static final Observable<?> appendPage(@NotNull final EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        final Ref.IntRef intRef = new Ref.IntRef();
        int pageCount = pageCount(editorBundle) - 1;
        intRef.element = pageCount;
        Observable just = Observable.just(Integer.valueOf(pageCount));
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        Observable flatMap = RxjavaKt.flatMapIf(just, new Function1<Integer, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.extension.EditorBundleKt$appendPage$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Integer it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.intValue() < 0);
            }
        }, new Function1<Integer, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.extension.EditorBundleKt$appendPage$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull final Integer it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                final String dumpInfoToString = VirtualDocViewInfo.INSTANCE.dumpInfoToString(EditorBundleKt.virtualDocViewInfo(EditorBundle.this));
                EditorBundle editorBundle2 = EditorBundle.this;
                final Ref.IntRef intRef2 = intRef;
                return DocCommonActionsKt.createCoreObservable(editorBundle2, new Function1<WorkBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.extension.EditorBundleKt$appendPage$2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(WorkBundle workBundle) {
                        invoke2(workBundle);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull WorkBundle workBundle) {
                        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
                        VirtualDocViewInfo collectVirtualDocViewInfo = WorkBundleKt.collectVirtualDocViewInfo(workBundle);
                        Ref.IntRef.this.element = collectVirtualDocViewInfo.getPageCount() - 1;
                        WorkBundleKt.postEvent(workBundle, new VirtualDocViewInfoEvent(collectVirtualDocViewInfo, false, 2, null));
                        LogUtils.wTag("appendPage failIndex:" + it2.intValue() + ", correctIndex:" + Ref.IntRef.this.element, dumpInfoToString);
                    }
                });
            }
        }).flatMap(new C10367a(editorBundle, intRef));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public static final RectF boundingRect(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getDisplayBundle().getVirtualDocViewInfo().getBoundingRect();
    }

    @NotNull
    public static final Scheduler coreScheduler(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return schedulerManager(editorBundle).coreScheduler().getObserveOn();
    }

    public static final float currentDisplayScale(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return actualScale(editorBundle) / currentMinScale(editorBundle);
    }

    public static final float currentMinScale(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return virtualDocViewInfo(editorBundle).getCurrentMinScale();
    }

    public static final int currentPageIndex(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        PageViewInfo currentVisiblePageViewInfo = virtualDocViewInfo(editorBundle).currentVisiblePageViewInfo();
        if (currentVisiblePageViewInfo != null) {
            return currentVisiblePageViewInfo.getPageIndex();
        }
        return 0;
    }

    public static final int currentPageNumber(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return currentPageIndex(editorBundle) + 1;
    }

    public static final float currentToViewportWidthScale(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return RectFKt.scaleToWidth(RectFKt.copy(currentVisibleBoxInfo(editorBundle).getOriginRectFWithMargin()), viewportRect(editorBundle));
    }

    @NotNull
    public static final BoxInfo currentVisibleBoxInfo(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        BoxInfo currentVisibleBoxInfo = virtualDocViewInfo(editorBundle).currentVisibleBoxInfo();
        return currentVisibleBoxInfo == null ? new BoxInfo() : currentVisibleBoxInfo;
    }

    @NotNull
    public static final String docId(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return virtualDocViewInfo(editorBundle).getDocId();
    }

    @NotNull
    public static final DocumentState documentState(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getUiBundle().getDocumentState();
    }

    @Nullable
    public static final View editorView(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getDisplayBundle().getView();
    }

    @NotNull
    public static final BoxInfo ensureFirstVisibleBoxInfo(@NotNull EditorBundle editorBundle) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) visibleBoxList(editorBundle));
        BoxInfo boxInfo = (BoxInfo) firstOrNull;
        return boxInfo == null ? currentVisibleBoxInfo(editorBundle) : boxInfo;
    }

    @NotNull
    public static final List<BoxInfo> findIntersectsVisibleBoxList(@NotNull EditorBundle editorBundle, @NotNull RectF screenRectF) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(screenRectF, "screenRectF");
        List<BoxInfo> visibleBoxList = visibleBoxList(editorBundle);
        ArrayList arrayList = new ArrayList();
        for (Object obj : visibleBoxList) {
            if (RectF.intersects(((BoxInfo) obj).getVisibleRect(), screenRectF)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public static final Observable<FindVisibleBoxInfoByNotePageIdRequest> findVisibleBoxInfoByNotePageId(@NotNull EditorBundle editorBundle, @NotNull String notePageId, boolean z) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(notePageId, "notePageId");
        FindVisibleBoxInfoByNotePageIdRequest findVisibleBoxInfoByNotePageIdRequest = new FindVisibleBoxInfoByNotePageIdRequest(editorBundle.getWorkBundle(), notePageId);
        findVisibleBoxInfoByNotePageIdRequest.setUpdateToVisibleBox(z);
        return RxBaseAppActionKt.submitRequestToCore(editorBundle, findVisibleBoxInfoByNotePageIdRequest);
    }

    public static /* synthetic */ Observable findVisibleBoxInfoByNotePageId$default(EditorBundle editorBundle, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return findVisibleBoxInfoByNotePageId(editorBundle, str, z);
    }

    @NotNull
    public static final RectF firstVisibleRect(@NotNull EditorBundle editorBundle) {
        Object firstOrNull;
        RectF visibleRect;
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) visibleBoxList(editorBundle));
        BoxInfo boxInfo = (BoxInfo) firstOrNull;
        return (boxInfo == null || (visibleRect = boxInfo.getVisibleRect()) == null) ? new RectF() : visibleRect;
    }

    @NotNull
    public static final FTSProvider getDocFtsProvider(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return (FTSProvider) f52074b.getValue(editorBundle, f52073a[0]);
    }

    @NotNull
    public static final UIFeature getUiFeature(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getUiBundle().getUiFeatureManager().getUIFeature(virtualDocViewInfo(editorBundle).getActiveScene());
    }

    @NotNull
    public static final HandlerManager handlerManager(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getUiBundle().getHandlerManager();
    }

    public static final boolean hasLockedLayer(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return virtualDocViewInfo(editorBundle).getHasLockedLayer();
    }

    @NotNull
    public static final Scheduler ioSequenceScheduler(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return schedulerManager(editorBundle).ioScheduler().getObserveOn();
    }

    public static final boolean isAnimatingStartSplitScreen(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getUiBundle().getUiStateInfo().getAnimatingStartSplitScreen();
    }

    public static final boolean isCurDarkTheme(@NotNull EditorBundle editorBundle, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return ColorTheme.INSTANCE.isDarkTheme(virtualDocViewInfo(editorBundle).pageViewInfoById(pageId).getColorTheme());
    }

    public static final boolean isCurNoteLayerEnable(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return isCurNoteLayerShown(editorBundle) && !isCurNoteLayerLocked(editorBundle);
    }

    public static final boolean isCurNoteLayerLocked(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return virtualDocViewInfo(editorBundle).getCurNoteLayerLocked();
    }

    public static final boolean isCurNoteLayerShown(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return virtualDocViewInfo(editorBundle).getCurNoteLayerVisible();
    }

    public static final boolean isDestroyed(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getUiBundle().getIsDestroyed();
    }

    public static final boolean isDocumentOpen(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getUiBundle().getDocumentState() == DocumentState.OPENED;
    }

    public static final boolean isDocumentPending(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getUiBundle().getDocumentState() == DocumentState.PENDING;
    }

    public static final boolean isEnabledAnimationUpdateEditorView(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getUiBundle().getUiStateInfo().getAnimationUpdateEditorView();
    }

    public static final boolean isOwner(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getUiBundle().getIsOwner();
    }

    public static final boolean isReachLimitEdge(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        RectF copy = RectFKt.copy(viewport(editorBundle).getBox());
        RectF copy2 = RectFKt.copy(viewportLimitRect(editorBundle));
        return DocOptionsActionsKt.isVerticalLayoutType(editorBundle) ? copy.bottom >= copy2.bottom : copy.right >= copy2.right;
    }

    public static final boolean isRegistered(@NotNull EditorBundle editorBundle, @NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        return appEventBus(editorBundle).isRegistered(subscriber);
    }

    public static final boolean isScrolling(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getUiBundle().getHandlerManager().getTouchStateInfo().getIsScrolling();
    }

    public static final int lastPageIndex(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        PageViewInfo lastVisiblePageViewInfo = virtualDocViewInfo(editorBundle).lastVisiblePageViewInfo();
        return lastVisiblePageViewInfo != null ? lastVisiblePageViewInfo.getPageIndex() : currentPageIndex(editorBundle);
    }

    @NotNull
    public static final NoteBundle noteBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getWorkBundle().getNoteBundle();
    }

    @NotNull
    public static final Scheduler noteScheduler(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return schedulerManager(editorBundle).noteScheduler().getObserveOn();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void onPageChangedEvent(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        if (!shapeHandlerManager(editorBundle).isTransformHandler()) {
            shapeHandlerManager(editorBundle).restoreUserProvider();
        }
        postEvent(editorBundle, new QuitTransformEvent(false, 1, null));
        postEvent(editorBundle, new QuitExcerptSelectionEvent(false, null, 2, 0 == true ? 1 : 0));
    }

    public static final int pageCount(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return virtualDocViewInfo(editorBundle).getPageCount();
    }

    public static final int pageIndex(@NotNull EditorBundle editorBundle, @NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        PageViewInfo visiblePageViewInfo = virtualDocViewInfo(editorBundle).visiblePageViewInfo(boxInfo);
        if (visiblePageViewInfo != null) {
            return visiblePageViewInfo.getPageIndex();
        }
        return 0;
    }

    public static final void postEvent(@NotNull EditorBundle editorBundle, @NotNull Object event) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(event, "event");
        appEventBus(editorBundle).post(event);
    }

    @NotNull
    public static final Observable<?> prepareBoxAnimation(@NotNull final EditorBundle editorBundle, @NotNull final EditorAnimatorContext context, @NotNull final EditorAnimatorContext.AnimationType animationType) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(animationType, "animationType");
        return DocCommonActionsKt.createCoreObservable(editorBundle, new Function1<WorkBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.extension.EditorBundleKt$prepareBoxAnimation$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(WorkBundle workBundle) {
                invoke2(workBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull WorkBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                EditorAnimatorContext.this.prepare(editorBundle.getWorkBundle(), animationType);
            }
        });
    }

    @NotNull
    public static final ReaderBundle readerBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getWorkBundle().getReaderBundle();
    }

    @NotNull
    public static final Scheduler readerScheduler(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return schedulerManager(editorBundle).readerScheduler().getObserveOn();
    }

    public static final void register(@NotNull EditorBundle editorBundle, @NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        EventBusHolderKt.ensureRegister(appEventBus(editorBundle), subscriber);
    }

    @NotNull
    public static final RenderManager renderManager(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getDisplayBundle().getRenderManager();
    }

    @NotNull
    public static final RequestManager requestManager(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getDisplayBundle().getRequestManager();
    }

    public static final Scheduler requestManagerScheduler(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return AndroidSchedulers.mainThread();
    }

    @NotNull
    public static final View requireEditorView(@NotNull EditorBundle editorBundle) throws IllegalStateException {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        View view = editorBundle.getDisplayBundle().getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException((AnyKt.toSimpleNameString(editorBundle) + " not attached to an editorView.").toString());
    }

    @NotNull
    public static final SchedulerManager schedulerManager(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getUiBundle().getSchedulerManager();
    }

    public static final void setAnimatingStartSplitScreen(@NotNull EditorBundle editorBundle, boolean z) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        editorBundle.getUiBundle().getUiStateInfo().setAnimatingStartSplitScreen(z);
    }

    public static final void setEnabledAbortFlingAnimation(@NotNull EditorBundle editorBundle, boolean z) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        editorBundle.getUiBundle().getUiStateInfo().setEnabledAbortFlingAnimation(z);
    }

    public static final void setEnabledAnimationUpdateEditorView(@NotNull EditorBundle editorBundle, boolean z) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        editorBundle.getUiBundle().getUiStateInfo().setAnimationUpdateEditorView(z);
    }

    public static final void setOwner(@NotNull EditorBundle editorBundle, boolean z) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        editorBundle.getUiBundle().setOwner(z);
    }

    @NotNull
    public static final ShapeHandlerManager shapeHandlerManager(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getUiBundle().getHandlerManager().getShapeHandlerManager();
    }

    @NotNull
    public static final Scheduler stashScheduler(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return schedulerManager(editorBundle).stashScheduler().getObserveOn();
    }

    public static final boolean stopScroll(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        if (!editorBundle.getUiBundle().getUiStateInfo().getIsFling()) {
            return false;
        }
        postEvent(editorBundle, new StopScrollEvent());
        editorBundle.getUiBundle().getUiStateInfo().setFling(false);
        return true;
    }

    @NotNull
    public static final Scheduler subNoteScheduler(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return schedulerManager(editorBundle).subNoteScheduler().getObserveOn();
    }

    public static final void toDummyProvider(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        editorBundle.getUiBundle().getHandlerManager().setActiveProviderName("dummy");
    }

    public static final void toReadingProvider(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        editorBundle.getUiBundle().getHandlerManager().setActiveProviderName(HandlerManager.READING_PROVIDER);
    }

    @NotNull
    public static final TouchStateInfo touchStateInfo(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getUiBundle().getHandlerManager().getTouchStateInfo();
    }

    @NotNull
    public static final NoteDrawingArgs uiDrawingArgs(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getUiBundle().getNoteInfo().getNoteDrawingArgs();
    }

    public static final void unregister(@NotNull EditorBundle editorBundle, @NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        EventBusHolderKt.ensureUnRegister(appEventBus(editorBundle), subscriber);
    }

    public static final void updateNoteDrawingArgs(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        noteBundle(editorBundle).getNoteDrawingArgs().copyFrom(editorBundle.getUiBundle().getNoteInfo().getNoteDrawingArgs());
    }

    public static final void updateUiDrawingArgs(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        editorBundle.getUiBundle().getNoteInfo().getNoteDrawingArgs().copyFrom(noteBundle(editorBundle).getNoteDrawingArgs());
    }

    public static final void updateVirtualDocViewInfo(@NotNull EditorBundle editorBundle, @NotNull VirtualDocViewInfo info) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(info, "info");
        editorBundle.getDisplayBundle().setVirtualDocViewInfo(info);
    }

    @NotNull
    public static final Size viewSize(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return renderManager(editorBundle).viewSize();
    }

    @NotNull
    public static final BoxInfo viewport(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return virtualDocViewInfo(editorBundle).getViewport();
    }

    @NotNull
    public static final RectF viewportLimitRect(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return virtualDocViewInfo(editorBundle).getViewportLimitRect();
    }

    @NotNull
    public static final RectF viewportRect(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return renderManager(editorBundle).viewportRect();
    }

    @NotNull
    public static final VirtualDocViewInfo virtualDocViewInfo(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return editorBundle.getDisplayBundle().getVirtualDocViewInfo();
    }

    @NotNull
    public static final RectF visibleBoundingRect(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return virtualDocViewInfo(editorBundle).getVisibleBoundingRect();
    }

    @NotNull
    public static final List<BoxInfo> visibleBoxList(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return renderManager(editorBundle).visibleBoxList();
    }

    public static final float actualScale(@NotNull EditorBundle editorBundle, float f) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return f * currentMinScale(editorBundle);
    }

    @NotNull
    public static final List<BoxInfo> findIntersectsVisibleBoxList(@NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> list) {
        int collectionSizeOrDefault;
        List distinct;
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        List<? extends Shape> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((Shape) it2.next()).getPageUniqueId());
        }
        distinct = CollectionsKt___CollectionsKt.distinct(arrayList);
        return findIntersectsVisibleBoxList(editorBundle, (Collection<String>) distinct);
    }

    @NotNull
    public static final List<BoxInfo> findIntersectsVisibleBoxList(@NotNull EditorBundle editorBundle, @NotNull Collection<String> pageIdSet) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(pageIdSet, "pageIdSet");
        List<BoxInfo> visibleBoxList = visibleBoxList(editorBundle);
        ArrayList arrayList = new ArrayList();
        for (Object obj : visibleBoxList) {
            if (pageIdSet.contains(((BoxInfo) obj).getId())) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
