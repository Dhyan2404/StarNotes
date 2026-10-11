package com.onyx.android.sdk.universal.editor.action.extension;

import android.graphics.Bitmap;
import com.onyx.android.sdk.base.data.bitmap.SafeBitmap;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.p018rx.RxScrollerArgs;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.data.EditorAnimatorContext;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0018\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0010\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007*\u00020\t\u001a\u0018\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0007*\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\f\u001a\u0012\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0007*\u0006\u0012\u0002\b\u00030\r\u001a\u000e\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u0007*\u00020\t\u001a\u001a\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u0007*\u0006\u0012\u0002\b\u00030\r2\u0006\u0010\u0010\u001a\u00020\u0011\u001a\u0016\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u0007*\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u000e\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u0007*\u00020\t¨\u0006\u0014"}, m61528d2 = {"collectPreRenderBoxList", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "flingActionType", "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;", "createSnapshot", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "display", "highQualityFirst", "", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "displayAfterRefreshFullScreen", "displayWithBoxAnimation", "context", "Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;", "preRender", "preRenderNextScreen", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class DisplayActionsKt {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RxScrollerArgs.FlingActionType.values().length];
            try {
                iArr[RxScrollerArgs.FlingActionType.CONTINUOUS_SCROLL_TO_BOTTOM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RxScrollerArgs.FlingActionType.CONTINUOUS_SCROLL_TO_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RxScrollerArgs.FlingActionType.NEXT_SCREEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[RxScrollerArgs.FlingActionType.CONTINUOUS_SCROLL_TO_TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[RxScrollerArgs.FlingActionType.CONTINUOUS_SCROLL_TO_LEFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[RxScrollerArgs.FlingActionType.PREV_SCREEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt$a */
    /* loaded from: classes8.dex */
    public static final class C9044a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f48942e;

        public C9044a(EditorBundle editorBundle) {
            this.f48942e = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SafeBitmap apply(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SafeBitmap.INSTANCE.create(BitmapUtils.INSTANCE.createBitmapOrNull(EditorBundleKt.viewportRect(this.f48942e)));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt$b */
    /* loaded from: classes8.dex */
    public static final class C9045b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f48943e;

        public C9045b(EditorBundle editorBundle) {
            this.f48943e = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SafeBitmap it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Bitmap bitmap = it2.getBitmap();
            if (BitmapKt.isValid(bitmap)) {
                EditorBundleKt.renderManager(this.f48943e).draw(bitmap);
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt$c */
    /* loaded from: classes8.dex */
    public static final class C9046c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f48944e;

        /* renamed from: f */
        public final /* synthetic */ boolean f48945f;

        public C9046c(EditorBundle editorBundle, boolean z) {
            this.f48944e = editorBundle;
            this.f48945f = z;
        }

        /* renamed from: a */
        public final void m38257a(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(this.f48944e).displayBoxList(this.f48944e, it2, this.f48945f);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38257a((List) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt$d */
    /* loaded from: classes8.dex */
    public static final class C9047d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f48946e;

        public C9047d(EditorBundle editorBundle) {
            this.f48946e = editorBundle;
        }

        /* renamed from: a */
        public final void m38258a(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(this.f48946e).displayBoxListAfterRefreshFullScreen(this.f48946e, it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38258a((List) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt$e */
    /* loaded from: classes8.dex */
    public static final class C9048e<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ RxBaseAppAction<?> f48947e;

        /* renamed from: f */
        public final /* synthetic */ EditorAnimatorContext f48948f;

        public C9048e(RxBaseAppAction<?> rxBaseAppAction, EditorAnimatorContext editorAnimatorContext) {
            this.f48947e = rxBaseAppAction;
            this.f48948f = editorAnimatorContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(this.f48947e.getEditorBundle()).displayBoxListAnimation(this.f48947e.getEditorBundle(), this.f48948f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt$f */
    /* loaded from: classes8.dex */
    public static final class C9049f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ BoxManager f48949e;

        /* renamed from: f */
        public final /* synthetic */ RxScrollerArgs.FlingActionType f48950f;

        public C9049f(BoxManager boxManager, RxScrollerArgs.FlingActionType flingActionType) {
            this.f48949e = boxManager;
            this.f48950f = flingActionType;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<BoxInfo> apply(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.collectPreRenderBoxList(this.f48949e, this.f48950f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt$g */
    /* loaded from: classes8.dex */
    public static final class C9050g<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f48951e;

        public C9050g(EditorBundle editorBundle) {
            this.f48951e = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(this.f48951e).preRenderBoxList(this.f48951e, it2);
        }
    }

    @NotNull
    public static final List<BoxInfo> collectPreRenderBoxList(@NotNull BoxManager boxManager, @NotNull RxScrollerArgs.FlingActionType flingActionType) {
        List<BoxInfo> emptyList;
        Intrinsics.checkNotNullParameter(boxManager, "<this>");
        Intrinsics.checkNotNullParameter(flingActionType, "flingActionType");
        switch (WhenMappings.$EnumSwitchMapping$0[flingActionType.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return boxManager.collectNextViewportVisibleBoxList();
            case 4:
            case 5:
            case 6:
                return boxManager.collectPrevViewportVisibleBoxList();
            default:
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
        }
    }

    @NotNull
    public static final Observable<SafeBitmap> createSnapshot(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Observable<SafeBitmap> doOnNext = Observable.just(editorBundle).observeOn(EditorBundleKt.coreScheduler(editorBundle)).map(new C9044a(editorBundle)).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C9045b(editorBundle));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @NotNull
    public static final Observable<?> display(@NotNull EditorBundle editorBundle, boolean z) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Observable map = CommonEditorActionsKt.loadVisibleBoxList(editorBundle).map(new C9046c(editorBundle, z));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public static /* synthetic */ Observable display$default(EditorBundle editorBundle, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return display(editorBundle, z);
    }

    @NotNull
    public static final Observable<?> displayAfterRefreshFullScreen(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Observable map = CommonEditorActionsKt.loadVisibleBoxList(editorBundle).map(new C9047d(editorBundle));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public static final Observable<?> displayWithBoxAnimation(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull final EditorAnimatorContext context) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Observable<?> doOnNext = DocCommonActionsKt.createCoreObservable(rxBaseAppAction.getEditorBundle(), new Function1<WorkBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt$displayWithBoxAnimation$1
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
                EditorAnimatorContext.this.updateCurrent(it2);
            }
        }).doOnNext(new C9048e(rxBaseAppAction, context));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @NotNull
    public static final Observable<?> preRender(@NotNull EditorBundle editorBundle, @NotNull RxScrollerArgs.FlingActionType flingActionType) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(flingActionType, "flingActionType");
        BoxManager boxManager = editorBundle.getWorkBundle().getBoxManager();
        if (boxManager == null) {
            Observable<?> just = Observable.just(editorBundle);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<?> doOnNext = Observable.just(editorBundle).observeOn(EditorBundleKt.coreScheduler(editorBundle)).map(new C9049f(boxManager, flingActionType)).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C9050g(editorBundle));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @NotNull
    public static final Observable<?> preRenderNextScreen(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return preRender(editorBundle, RxScrollerArgs.FlingActionType.NEXT_SCREEN);
    }

    @NotNull
    public static final Observable<?> display(@NotNull RxBaseAppAction<?> rxBaseAppAction) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        return display$default(rxBaseAppAction.getEditorBundle(), false, 1, null);
    }
}
