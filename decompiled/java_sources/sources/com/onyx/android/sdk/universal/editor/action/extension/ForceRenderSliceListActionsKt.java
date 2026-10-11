package com.onyx.android.sdk.universal.editor.action.extension;

import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.render.NoteRenderArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.config.ScaleConfig;
import com.onyx.android.sdk.universal.editor.data.ForceRenderNoteDirtyArgs;
import com.onyx.android.sdk.universal.editor.data.ForceRenderNoteDirtyArgsKt;
import com.onyx.android.sdk.universal.editor.data.ForceRenderNoteDirtyResult;
import com.onyx.android.sdk.universal.editor.data.PageSliceInfo;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a$\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0002\u001a \u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0001*\u0006\u0012\u0002\b\u00030\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u001a2\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\u0001*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\f\u001a\u00020\r2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u001a\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a$\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0001*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\f\u001a\u00020\r2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u001a\"\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0001*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\n\u001a2\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0001*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\f\u001a\u00020\r2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u001a*\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0001*\u0006\u0012\u0002\b\u00030\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u001a&\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0001*\u0006\u0012\u0002\b\u00030\u00032\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\r0\u0016\u001a$\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u0001*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\f\u001a\u00020\r2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0013\u001a\u001a\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u0001*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\f\u001a\u00020\r\u001a\"\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u0001*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\n\u001a\u001e\u0010\u001b\u001a\u00020\u001c*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0002\u001a\u0016\u0010\u001d\u001a\u00020\u001c*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\u001e\u001a\u00020\u001f\u001a\u0016\u0010 \u001a\u00020\u001c*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\u001e\u001a\u00020\u001f¨\u0006!"}, m61528d2 = {"ensureHighQualityDisplay", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "args", "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "forceRenderIntersectsNoteDirtyRectToDisplay", "shapeList", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "forceRenderNoteDirtyRect", "virtualPageBoxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "isEnabledPrintFailLog", "", "forceRenderNoteDirtyRectImpl", "forceRenderNoteDirtyRectToDisplay", "pageDisplayRectF", "Landroid/graphics/RectF;", "shape", Constant.MAP_TAG, "", "forceRenderNoteDirtyScreenRectToDisplay", "screenRectF", "forceRenderNoteToDisplay", "forceRenderShapeOutsideRectToDisplay", "logAfterForceRender", "", "logForForceRenderNote", NotificationCompat.CATEGORY_MESSAGE, "", "logW", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nForceRenderSliceListActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForceRenderSliceListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,333:1\n1477#2:334\n1502#2,3:335\n1505#2,3:345\n372#3,7:338\n*S KotlinDebug\n*F\n+ 1 ForceRenderSliceListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt\n*L\n108#1:334\n108#1:335,3\n108#1:345,3\n108#1:338,7\n*E\n"})
/* loaded from: classes8.dex */
public final class ForceRenderSliceListActionsKt {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt$a */
    /* loaded from: classes8.dex */
    public static final class C9074a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ForceRenderNoteDirtyResult f48994e;

        public C9074a(ForceRenderNoteDirtyResult forceRenderNoteDirtyResult) {
            this.f48994e = forceRenderNoteDirtyResult;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ForceRenderNoteDirtyResult apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48994e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt$b */
    /* loaded from: classes8.dex */
    public static final class C9075b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ RxBaseAppAction<?> f48995e;

        /* renamed from: f */
        public final /* synthetic */ ForceRenderNoteDirtyArgs f48996f;

        public C9075b(RxBaseAppAction<?> rxBaseAppAction, ForceRenderNoteDirtyArgs forceRenderNoteDirtyArgs) {
            this.f48995e = rxBaseAppAction;
            this.f48996f = forceRenderNoteDirtyArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ForceRenderNoteDirtyResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ForceRenderSliceListActionsKt.logAfterForceRender(this.f48995e, this.f48996f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt$c */
    /* loaded from: classes8.dex */
    public static final class C9076c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RxBaseAppAction<?> f48997e;

        /* renamed from: f */
        public final /* synthetic */ ForceRenderNoteDirtyArgs f48998f;

        public C9076c(RxBaseAppAction<?> rxBaseAppAction, ForceRenderNoteDirtyArgs forceRenderNoteDirtyArgs) {
            this.f48997e = rxBaseAppAction;
            this.f48998f = forceRenderNoteDirtyArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ForceRenderNoteDirtyResult> apply(@NotNull ForceRenderNoteDirtyResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRenderSliceListActionsKt.ensureHighQualityDisplay(this.f48997e, this.f48998f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt$d */
    /* loaded from: classes8.dex */
    public static final class C9077d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RxBaseAppAction<?> f48999e;

        public C9077d(RxBaseAppAction<?> rxBaseAppAction) {
            this.f48999e = rxBaseAppAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Map.Entry<? extends Shape, BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay(this.f48999e, it2.getValue(), it2.getKey());
        }
    }

    @SourceDebugExtension({"SMAP\nForceRenderSliceListActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForceRenderSliceListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderNoteDirtyRectToDisplay$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,333:1\n1271#2,2:334\n1285#2,4:336\n*S KotlinDebug\n*F\n+ 1 ForceRenderSliceListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderNoteDirtyRectToDisplay$2\n*L\n111#1:334,2\n111#1:336,4\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt$e */
    /* loaded from: classes8.dex */
    public static final class C9078e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RxBaseAppAction<?> f49000e;

        /* renamed from: f */
        public final /* synthetic */ Map<String, List<Shape>> f49001f;

        /* renamed from: g */
        public final /* synthetic */ boolean f49002g;

        /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt$e$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ RxBaseAppAction<?> f49003e;

            /* renamed from: f */
            public final /* synthetic */ boolean f49004f;

            public a(RxBaseAppAction<?> rxBaseAppAction, boolean z) {
                this.f49003e = rxBaseAppAction;
                this.f49004f = z;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Object> apply(@NotNull Map.Entry<BoxInfo, ? extends List<? extends Shape>> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRect(this.f49003e, it2.getKey(), it2.getValue(), this.f49004f);
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt$e$b */
        /* loaded from: classes8.dex */
        public static final class b<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ RxBaseAppAction<?> f49005e;

            public b(RxBaseAppAction<?> rxBaseAppAction) {
                this.f49005e = rxBaseAppAction;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                EditorBundleKt.renderManager(this.f49005e.getEditorBundle()).invalidate();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C9078e(RxBaseAppAction<?> rxBaseAppAction, Map<String, ? extends List<? extends Shape>> map, boolean z) {
            this.f49000e = rxBaseAppAction;
            this.f49001f = map;
            this.f49002g = z;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<BoxInfo> boxList) {
            int collectionSizeOrDefault;
            int mapCapacity;
            int coerceAtLeast;
            Intrinsics.checkNotNullParameter(boxList, "boxList");
            List<BoxInfo> list = boxList;
            Map<String, List<Shape>> map = this.f49001f;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
            LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
            for (T t : list) {
                linkedHashMap.put(t, map.get(((BoxInfo) t).getId()));
            }
            Map filterNotNullValues = CollectionKt.filterNotNullValues(linkedHashMap);
            if (filterNotNullValues.isEmpty()) {
                ForceRenderSliceListActionsKt.logForForceRenderNote(this.f49000e, "no boxInfoMap");
                return Observable.just(this.f49000e);
            }
            Observable<R> concatMap = Observable.fromIterable(filterNotNullValues.entrySet()).concatMap(new a(this.f49000e, this.f49002g));
            Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
            return RxjavaKt.takeLastOne(concatMap).doOnNext(new b(this.f49000e));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt$f */
    /* loaded from: classes8.dex */
    public static final class C9079f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Shape f49006e;

        /* renamed from: f */
        public final /* synthetic */ BoxInfo f49007f;

        public C9079f(Shape shape, BoxInfo boxInfo) {
            this.f49006e = shape;
            this.f49007f = boxInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RectF apply(@NotNull RectF it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RectKt.expand(it2, (this.f49006e.getStrokeWidth() / MatrixKt.getMaxScale(this.f49006e.getShapeMatrix())) * MatrixKt.getMaxScale(BoxInfoUtils.INSTANCE.notePageRenderMatrix(this.f49007f.getNoteInfo())));
            return it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt$g */
    /* loaded from: classes8.dex */
    public static final class C9083g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RxBaseAppAction<?> f49018e;

        /* renamed from: f */
        public final /* synthetic */ BoxInfo f49019f;

        public C9083g(RxBaseAppAction<?> rxBaseAppAction, BoxInfo boxInfo) {
            this.f49018e = rxBaseAppAction;
            this.f49019f = boxInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull RectF it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay(this.f49018e, this.f49019f, it2);
        }
    }

    @NotNull
    public static final Observable<ForceRenderNoteDirtyResult> ensureHighQualityDisplay(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull ForceRenderNoteDirtyArgs args, @NotNull ForceRenderNoteDirtyResult result) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(result, "result");
        if (!AppConfig.INSTANCE.isEnabledEnsureDisplay()) {
            Observable<ForceRenderNoteDirtyResult> just = Observable.just(result);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        if (RectKt.isNullOrEmpty(args.getPageDisplayRectF())) {
            Observable<ForceRenderNoteDirtyResult> just2 = Observable.just(result);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        if (!ScaleConfig.INSTANCE.isEnabledHighQuality(args.getVirtualPageBoxInfo(), EditorBundleKt.viewportRect(rxBaseAppAction.getEditorBundle())) || result.isHighQualityUpdateSuccess()) {
            Observable<ForceRenderNoteDirtyResult> just3 = Observable.just(result);
            Intrinsics.checkNotNullExpressionValue(just3, "just(...)");
            return just3;
        }
        if (!args.getIsEnabledEnsureDisplay()) {
            Debug.INSTANCE.m32062w(AnyKt.toSimpleNameString(rxBaseAppAction), "disable ensure display by args", new Object[0]);
            Observable<ForceRenderNoteDirtyResult> just4 = Observable.just(result);
            Intrinsics.checkNotNullExpressionValue(just4, "just(...)");
            return just4;
        }
        EditorBundleKt.renderManager(rxBaseAppAction.getEditorBundle()).safeClearPageNoteSliceCache(args.getVirtualPageBoxInfo().getId());
        Debug.INSTANCE.m32062w(AnyKt.toSimpleNameString(rxBaseAppAction), "ensureHighQualityDisplay", new Object[0]);
        Observable map = DisplayActionsKt.display(rxBaseAppAction).map(new C9074a(result));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public static final Observable<?> forceRenderIntersectsNoteDirtyRectToDisplay(@NotNull final RxBaseAppAction<?> rxBaseAppAction, @NotNull final List<? extends Shape> shapeList) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        if (shapeList.isEmpty()) {
            logForForceRenderNote(rxBaseAppAction, "no shapeList");
            Observable<?> just = Observable.just(rxBaseAppAction);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        List<BoxInfo> findIntersectsVisibleBoxList = EditorBundleKt.findIntersectsVisibleBoxList(rxBaseAppAction.getEditorBundle(), shapeList);
        if (CollectionKt.isNullOrEmpty(findIntersectsVisibleBoxList)) {
            Observable<?> just2 = Observable.just(rxBaseAppAction);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        final Set<String> boxIdSet = BoxInfoUtils.INSTANCE.toBoxIdSet(findIntersectsVisibleBoxList);
        Observable<List<BoxInfo>> observeOn = (!boxIdSet.containsAll(ShapeTypes.INSTANCE.toPageIdSet(shapeList)) ? ComputeBoxListActionsKt.findVisibleBoxInfoList(rxBaseAppAction, shapeList) : Observable.just(findIntersectsVisibleBoxList)).observeOn(rxBaseAppAction.getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return RxjavaKt.flatMapIf(observeOn, new Function1<?, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull List<BoxInfo> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }
        }, new Function1<?, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2

            /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2$a */
            /* loaded from: classes8.dex */
            public static final class a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ RxBaseAppAction<?> f49008e;

                /* renamed from: f */
                public final /* synthetic */ List<Shape> f49009f;

                /* JADX WARN: Multi-variable type inference failed */
                public a(RxBaseAppAction<?> rxBaseAppAction, List<? extends Shape> list) {
                    this.f49008e = rxBaseAppAction;
                    this.f49009f = list;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends Object> apply(@NotNull BoxInfo it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRect$default(this.f49008e, it2, this.f49009f, false, 4, null);
                }
            }

            /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2$b */
            /* loaded from: classes8.dex */
            public static final class b<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ RxBaseAppAction<?> f49010e;

                public b(RxBaseAppAction<?> rxBaseAppAction) {
                    this.f49010e = rxBaseAppAction;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(@NotNull Object it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    EditorBundleKt.renderManager(this.f49010e.getEditorBundle()).invalidate();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull List<BoxInfo> list) {
                List mutableList;
                Intrinsics.checkNotNullParameter(list, "list");
                Set<String> set = boxIdSet;
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (!set.contains(((BoxInfo) obj).getId())) {
                        arrayList.add(obj);
                    }
                }
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
                mutableList.removeAll(arrayList);
                EditorBundleKt.renderManager(rxBaseAppAction.getEditorBundle()).invalidateNotVisiblePagesIf(BoxInfoUtils.INSTANCE.toBoxIdSet(arrayList));
                if (mutableList.isEmpty()) {
                    Observable<? extends Object> just3 = Observable.just(rxBaseAppAction);
                    Intrinsics.checkNotNull(just3);
                    return just3;
                }
                Observable concatMap = Observable.fromIterable(mutableList).concatMap(new a(rxBaseAppAction, shapeList));
                Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
                Observable<? extends Object> doOnNext = RxjavaKt.takeLastOne(concatMap).doOnNext(new b(rxBaseAppAction));
                Intrinsics.checkNotNull(doOnNext);
                return doOnNext;
            }
        });
    }

    @NotNull
    public static final Observable<?> forceRenderNoteDirtyRect(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull BoxInfo virtualPageBoxInfo, @NotNull List<? extends Shape> shapeList, boolean z) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        if (shapeList.isEmpty()) {
            logForForceRenderNote(rxBaseAppAction, "no shapeList");
            Observable<?> just = Observable.just(rxBaseAppAction);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        ForceRenderNoteDirtyArgs forceRenderNoteDirtyArgs = new ForceRenderNoteDirtyArgs(virtualPageBoxInfo.copy(), ShapeRectUtils.INSTANCE.getBoundingPageDisplayRectFWithWidth(shapeList, virtualPageBoxInfo), false, false, false, false, 48, null);
        forceRenderNoteDirtyArgs.setEnabledPrintFailLog(z);
        return forceRenderNoteDirtyRect(rxBaseAppAction, forceRenderNoteDirtyArgs);
    }

    public static /* synthetic */ Observable forceRenderNoteDirtyRect$default(RxBaseAppAction rxBaseAppAction, BoxInfo boxInfo, List list, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return forceRenderNoteDirtyRect(rxBaseAppAction, boxInfo, list, z);
    }

    @NotNull
    public static final Observable<ForceRenderNoteDirtyResult> forceRenderNoteDirtyRectImpl(@NotNull final RxBaseAppAction<?> rxBaseAppAction, @NotNull ForceRenderNoteDirtyArgs args) {
        Set of;
        RectF rectF;
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(args, "args");
        final BoxInfo virtualPageBoxInfo = args.getVirtualPageBoxInfo();
        final RectF pageDisplayRectF = args.getPageDisplayRectF();
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = args.getEnableVerifyId();
        final Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
        booleanRef2.element = args.getInvalidate();
        final ForceRenderNoteDirtyResult forceRenderNoteDirtyResult = new ForceRenderNoteDirtyResult();
        if (RectKt.isNullOrEmpty(pageDisplayRectF) && !args.getIsFullPageRender()) {
            logForForceRenderNote(rxBaseAppAction, "id = " + virtualPageBoxInfo.getId() + ", empty dirty rect");
            Observable<ForceRenderNoteDirtyResult> just = Observable.just(forceRenderNoteDirtyResult);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        NoteRenderArgs createNoteRenderArgs = EditorBundleKt.renderManager(rxBaseAppAction.getEditorBundle()).createNoteRenderArgs(virtualPageBoxInfo);
        createNoteRenderArgs.setSupportRenderPageContentBitmap(EditorBundleKt.getUiFeature(rxBaseAppAction.getEditorBundle()).supportRenderPageContentBitmap());
        if (!args.getIsFullPageRender()) {
            if (pageDisplayRectF == null || (rectF = RectFKt.copy(pageDisplayRectF)) == null) {
                rectF = new RectF();
            }
            createNoteRenderArgs.setDirtyPageDisplayRectF(rectF);
        }
        if (!createNoteRenderArgs.getSliceRenderInfoList().isEmpty()) {
            if (args.getIsEnabledEnsureDisplay() && !createNoteRenderArgs.isEnabledEnsureDisplay()) {
                args.setEnabledEnsureDisplay(false);
            }
            args.setNoteRenderArgs(createNoteRenderArgs);
            CommonEditorActionsKt.updateSliceListState(createNoteRenderArgs.noteSliceList(), SliceInfo.State.RENDERING);
            final RenderNotePageAction renderNotePageAction = new RenderNotePageAction(rxBaseAppAction.getEditorBundle(), createNoteRenderArgs);
            Observable map = renderNotePageAction.build().map(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt$forceRenderNoteDirtyRectImpl$1
                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ForceRenderNoteDirtyResult apply(@NotNull RenderNotePageAction it2) {
                    Set of2;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    if (RenderNotePageAction.this.getIsAbort()) {
                        ForceRenderSliceListActionsKt.logForForceRenderNote(rxBaseAppAction, "action abort");
                        return forceRenderNoteDirtyResult;
                    }
                    if (RenderNotePageAction.this.getSuccessList().isEmpty()) {
                        ForceRenderSliceListActionsKt.logForForceRenderNote(rxBaseAppAction, "empty result");
                        return forceRenderNoteDirtyResult;
                    }
                    Map map2 = CollectionKt.toMap(RenderNotePageAction.this.getSuccessList(), new Function1<SliceInfo, String>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt$forceRenderNoteDirtyRectImpl$1$sliceKeyMap$1
                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final String invoke(@NotNull SliceInfo it3) {
                            Intrinsics.checkNotNullParameter(it3, "it");
                            return it3.cacheKey();
                        }
                    });
                    List<PageSliceInfo> findPageCacheSliceList = EditorBundleKt.renderManager(rxBaseAppAction.getEditorBundle()).findPageCacheSliceList(virtualPageBoxInfo.getId());
                    ArrayList arrayList = new ArrayList();
                    for (T t : findPageCacheSliceList) {
                        if (((PageSliceInfo) t).getSliceInfo().isContentNote()) {
                            arrayList.add(t);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        ForceRenderSliceListActionsKt.logForForceRenderNote(rxBaseAppAction, "visibleSliceEmpty, invalidate not visible pages, id = " + virtualPageBoxInfo.getId());
                        RenderManager renderManager = EditorBundleKt.renderManager(rxBaseAppAction.getEditorBundle());
                        of2 = SetsKt__SetsJVMKt.setOf(virtualPageBoxInfo.getId());
                        renderManager.invalidateNotVisiblePagesIf(of2);
                        return forceRenderNoteDirtyResult;
                    }
                    Ref.BooleanRef booleanRef3 = booleanRef;
                    ForceRenderNoteDirtyResult forceRenderNoteDirtyResult2 = forceRenderNoteDirtyResult;
                    RectF rectF2 = pageDisplayRectF;
                    RenderNotePageAction renderNotePageAction2 = RenderNotePageAction.this;
                    Iterator<T> it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        SliceInfo sliceInfo = ((PageSliceInfo) it3.next()).getSliceInfo();
                        SliceInfo sliceInfo2 = (SliceInfo) map2.get(sliceInfo.cacheKey());
                        if (sliceInfo2 != null) {
                            if (booleanRef3.element) {
                                if (Intrinsics.areEqual(sliceInfo2.lastVerifyId(), sliceInfo.lastVerifyId())) {
                                    forceRenderNoteDirtyResult2.getResultList().add(sliceInfo.updateBitmapDirtyRect(sliceInfo2, rectF2));
                                }
                                renderNotePageAction2.log("forceRenderNoteDirtyRect, newId = " + sliceInfo2.lastVerifyId() + ", oldId = " + sliceInfo.lastVerifyId());
                            } else {
                                forceRenderNoteDirtyResult2.getResultList().add(sliceInfo.updateBitmapDirtyRect(sliceInfo2, rectF2));
                                sliceInfo.setVerifyIdList(CollectionKt.copy(sliceInfo2.getVerifyIdList()));
                                renderNotePageAction2.log("forceRenderNoteDirtyRect, do not verify id");
                            }
                        }
                    }
                    ForceRenderSliceListActionsKt.logForForceRenderNote(rxBaseAppAction, "enableVerifyId = " + booleanRef.element + ", updatePageBitmap = " + forceRenderNoteDirtyResult.isUpdateBitmapSuccess() + ", visibleSliceList = " + arrayList.size());
                    if (!booleanRef.element) {
                        EditorBundleKt.renderManager(rxBaseAppAction.getEditorBundle()).clearShapeFlushInfo();
                    }
                    if (forceRenderNoteDirtyResult.isUpdateBitmapSuccess() && booleanRef2.element) {
                        EditorBundleKt.renderManager(rxBaseAppAction.getEditorBundle()).invalidate();
                    }
                    return forceRenderNoteDirtyResult;
                }
            });
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        logForForceRenderNote(rxBaseAppAction, "id = " + virtualPageBoxInfo.getId() + ", no renderInfo, invalidate not visible pages.");
        RenderManager renderManager = EditorBundleKt.renderManager(rxBaseAppAction.getEditorBundle());
        of = SetsKt__SetsJVMKt.setOf(virtualPageBoxInfo.getId());
        renderManager.invalidateNotVisiblePagesIf(of);
        Observable<ForceRenderNoteDirtyResult> just2 = Observable.just(forceRenderNoteDirtyResult);
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        return just2;
    }

    @NotNull
    public static final Observable<?> forceRenderNoteDirtyRectToDisplay(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull Map<Shape, BoxInfo> map) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        if (CollectionKt.isNullOrEmpty(map)) {
            Observable<?> just = Observable.just(rxBaseAppAction);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.fromIterable(map.entrySet()).concatMap(new C9077d(rxBaseAppAction));
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        return RxjavaKt.takeLastOne(concatMap);
    }

    public static /* synthetic */ Observable forceRenderNoteDirtyRectToDisplay$default(RxBaseAppAction rxBaseAppAction, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return forceRenderNoteDirtyRectToDisplay((RxBaseAppAction<?>) rxBaseAppAction, (List<? extends Shape>) list, z);
    }

    @NotNull
    public static final Observable<?> forceRenderNoteDirtyScreenRectToDisplay(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull BoxInfo virtualPageBoxInfo, @Nullable RectF rectF) {
        RectF visibleRect;
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        if (RectKt.isNullOrEmpty(rectF)) {
            Observable<?> just = Observable.just(rxBaseAppAction);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        BoxInfo noteInfo = virtualPageBoxInfo.getNoteInfo();
        if (noteInfo == null || (visibleRect = noteInfo.getVisibleRect()) == null) {
            Observable<?> just2 = Observable.just(rxBaseAppAction);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        RectF copy = RectFKt.copy(rectF);
        copy.offset(-visibleRect.left, -visibleRect.top);
        return forceRenderNoteDirtyRect(rxBaseAppAction, new ForceRenderNoteDirtyArgs(virtualPageBoxInfo.copy(), copy, false, true, false, false, 48, null));
    }

    @NotNull
    public static final Observable<?> forceRenderNoteToDisplay(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        if (!EditorBundleKt.renderManager(rxBaseAppAction.getEditorBundle()).computeNoteSliceRenderInfoList(virtualPageBoxInfo).isEmpty()) {
            return forceRenderNoteDirtyRect(rxBaseAppAction, new ForceRenderNoteDirtyArgs(virtualPageBoxInfo.copy(), null, false, true, true, false, 38, null));
        }
        Observable<?> just = Observable.just(rxBaseAppAction);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public static final Observable<?> forceRenderShapeOutsideRectToDisplay(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull BoxInfo virtualPageBoxInfo, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(shape, "shape");
        RectF boundingPageDisplayRectFWithWidth = ShapeRectUtils.INSTANCE.getBoundingPageDisplayRectFWithWidth(shape, virtualPageBoxInfo);
        RectF mapToPageDisplayRectF = BoxInfoUtils.INSTANCE.mapToPageDisplayRectF(RectFKt.copy(shape.getOriginRect()), virtualPageBoxInfo);
        Observable flatMap = Observable.just(new RectF(boundingPageDisplayRectFWithWidth.left, boundingPageDisplayRectFWithWidth.top, boundingPageDisplayRectFWithWidth.right, mapToPageDisplayRectF.top), new RectF(boundingPageDisplayRectFWithWidth.left, boundingPageDisplayRectFWithWidth.top, mapToPageDisplayRectF.left, boundingPageDisplayRectFWithWidth.bottom), new RectF(mapToPageDisplayRectF.right, boundingPageDisplayRectFWithWidth.top, boundingPageDisplayRectFWithWidth.right, boundingPageDisplayRectFWithWidth.bottom), new RectF(boundingPageDisplayRectFWithWidth.left, mapToPageDisplayRectF.bottom, boundingPageDisplayRectFWithWidth.right, boundingPageDisplayRectFWithWidth.bottom)).map(new C9079f(shape, virtualPageBoxInfo)).flatMap(new C9083g(rxBaseAppAction, virtualPageBoxInfo));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return RxjavaKt.takeLastOne(flatMap);
    }

    public static final void logAfterForceRender(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull ForceRenderNoteDirtyArgs args, @NotNull ForceRenderNoteDirtyResult result) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(result, "result");
        String warningLogAfterForceRender = ForceRenderNoteDirtyArgsKt.getWarningLogAfterForceRender(rxBaseAppAction.getEditorBundle(), args, result);
        if (warningLogAfterForceRender.length() > 0) {
            logW(rxBaseAppAction, warningLogAfterForceRender);
        }
    }

    public static final void logForForceRenderNote(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull String msg) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(msg, "msg");
    }

    public static final void logW(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull String msg) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(msg, "msg");
        LogUtils.wTag(AnyKt.toSimpleNameString(rxBaseAppAction), msg);
    }

    public static /* synthetic */ Observable forceRenderNoteDirtyRectToDisplay$default(RxBaseAppAction rxBaseAppAction, BoxInfo boxInfo, List list, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return forceRenderNoteDirtyRectToDisplay(rxBaseAppAction, boxInfo, list, z);
    }

    @NotNull
    public static final Observable<?> forceRenderNoteDirtyRectToDisplay(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull List<? extends Shape> shapeList, boolean z) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        if (shapeList.isEmpty()) {
            logForForceRenderNote(rxBaseAppAction, "no shapeList");
            Observable<?> just = Observable.just(rxBaseAppAction);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : shapeList) {
            String pageUniqueId = ((Shape) obj).getPageUniqueId();
            Object obj2 = linkedHashMap.get(pageUniqueId);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(pageUniqueId, obj2);
            }
            ((List) obj2).add(obj);
        }
        Observable<?> flatMap = ComputeBoxListActionsKt.findBoxInfoListWithPageIdList$default(rxBaseAppAction, linkedHashMap.keySet(), false, 2, null).flatMap(new C9078e(rxBaseAppAction, linkedHashMap, z));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public static final Observable<ForceRenderNoteDirtyResult> forceRenderNoteDirtyRect(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull ForceRenderNoteDirtyArgs args) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = forceRenderNoteDirtyRectImpl(rxBaseAppAction, args).doOnNext(new C9075b(rxBaseAppAction, args)).flatMap(new C9076c(rxBaseAppAction, args));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public static final Observable<?> forceRenderNoteDirtyRectToDisplay(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull BoxInfo virtualPageBoxInfo, @NotNull List<? extends Shape> shapeList, boolean z) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        if (shapeList.isEmpty()) {
            logForForceRenderNote(rxBaseAppAction, "no shapeList");
            Observable<?> just = Observable.just(rxBaseAppAction);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        ForceRenderNoteDirtyArgs forceRenderNoteDirtyArgs = new ForceRenderNoteDirtyArgs(virtualPageBoxInfo.copy(), ShapeRectUtils.INSTANCE.getBoundingPageDisplayRectFWithWidth(shapeList, virtualPageBoxInfo), false, true, false, false, 48, null);
        forceRenderNoteDirtyArgs.setEnabledPrintFailLog(z);
        return forceRenderNoteDirtyRect(rxBaseAppAction, forceRenderNoteDirtyArgs);
    }

    @NotNull
    public static final Observable<?> forceRenderNoteDirtyRectToDisplay(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull BoxInfo virtualPageBoxInfo, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(shape, "shape");
        return forceRenderNoteDirtyRect(rxBaseAppAction, new ForceRenderNoteDirtyArgs(virtualPageBoxInfo.copy(), ShapeRectUtils.INSTANCE.getBoundingPageDisplayRectFWithWidth(shape, virtualPageBoxInfo), false, true, false, false, 52, null));
    }

    @NotNull
    public static final Observable<?> forceRenderNoteDirtyRectToDisplay(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull BoxInfo virtualPageBoxInfo, @Nullable RectF rectF) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        if (RectKt.isNullOrEmpty(rectF)) {
            Observable<?> just = Observable.just(rxBaseAppAction);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        return forceRenderNoteDirtyRect(rxBaseAppAction, new ForceRenderNoteDirtyArgs(virtualPageBoxInfo.copy(), rectF, false, true, false, false, 48, null));
    }
}
