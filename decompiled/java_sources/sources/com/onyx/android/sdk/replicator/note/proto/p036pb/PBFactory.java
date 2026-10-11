package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.reflect.full.KClasses;
import kotlin.time.Duration;
import kotlin.time.TimeSource;
import kotlin.time.TimedValue;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b)\u0010*J:\u0010\t\u001a.\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00060\u0004j\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006`\b2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nJT\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u000b\u001a\u00020\n24\b\u0002\u0010\u0010\u001a.\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00060\u0004j\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006`\b2\b\b\u0002\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0016\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nJ\u001e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\u0012\u001a\u00020\u0011J\u0010\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0005H\u0002J\u0010\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0005H\u0002J\u0010\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0005H\u0002J\u0010\u0010\u001c\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0005H\u0002J\\\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u001a\u0010\u001e\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00060\u001d2&\u0010!\u001a\"\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00060 \u0012\u0004\u0012\u00020\f0\u001f2\b\b\u0002\u0010\u0012\u001a\u00020\u0011H\u0002RB\u0010$\u001a.\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00060\u0004j\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006`\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010#RB\u0010%\u001a.\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00060\u0004j\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006`\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010#RB\u0010&\u001a.\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00060\u0004j\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006`\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010#RB\u0010'\u001a.\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00060\u0004j\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006`\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010#RB\u0010(\u001a.\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00060\u0004j\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006`\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;", "", "", "types", "Ljava/util/LinkedHashMap;", "", "Lkotlin/reflect/KClass;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;", "Lkotlin/collections/LinkedHashMap;", "getCustomFuncMap", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "", "exportToPBFromDB", "exportToDBFromPB", "exportToNote", "funcMap", "Lio/reactivex/rxjava3/core/Scheduler;", "scheduler", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "exportToNoteObservable", "copyPBDataToDB", "copyPBDataToDBObservable", "type", "c", "d", "b", "a", "", "actionMap", "Lkotlin/Function1;", "", "action", "e", "Ljava/util/LinkedHashMap;", "pbMap", "exportToPBFromDBMap", "exportToDBFromPBMap", "exportNoteFuncMap", "copyPBDataToDBMap", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPBFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PBFactory.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/PBFactory\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,198:1\n13330#2,2:199\n215#3:201\n216#3:215\n215#3,2:216\n215#3:218\n216#3:231\n79#4,5:202\n113#4,7:207\n79#4,5:219\n113#4,7:224\n1#5:214\n*S KotlinDebug\n*F\n+ 1 PBFactory.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/PBFactory\n*L\n102#1:199,2\n117#1:201\n117#1:215\n135#1:216,2\n160#1:218\n160#1:231\n119#1:202,5\n119#1:207,7\n162#1:219,5\n162#1:224,7\n*E\n"})
/* loaded from: classes8.dex */
public final class PBFactory {

    @NotNull
    public static final PBFactory INSTANCE;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static LinkedHashMap<Integer, KClass<? extends PBData>> pbMap;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static LinkedHashMap<Integer, KClass<? extends PBData>> exportToPBFromDBMap;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static LinkedHashMap<Integer, KClass<? extends PBData>> exportToDBFromPBMap;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static LinkedHashMap<Integer, KClass<? extends PBData>> exportNoteFuncMap;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static LinkedHashMap<Integer, KClass<? extends PBData>> copyPBDataToDBMap;

    /* renamed from: com.onyx.android.sdk.replicator.note.proto.pb.PBFactory$a */
    /* loaded from: classes8.dex */
    public static final class C7797a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Function1<Map.Entry<Integer, ? extends KClass<? extends PBData>>, Unit> f46026e;

        /* renamed from: f */
        public final /* synthetic */ Ref.IntRef f46027f;

        /* renamed from: g */
        public final /* synthetic */ int f46028g;

        /* JADX WARN: Multi-variable type inference failed */
        public C7797a(Function1<? super Map.Entry<Integer, ? extends KClass<? extends PBData>>, Unit> function1, Ref.IntRef intRef, int i) {
            this.f46026e = function1;
            this.f46027f = intRef;
            this.f46028g = i;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends ProgressInfo> apply(@NotNull Map.Entry<Integer, ? extends KClass<? extends PBData>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f46026e.invoke(it2);
            Ref.IntRef intRef = this.f46027f;
            int i = intRef.element + 1;
            intRef.element = i;
            return Observable.just(new ProgressInfo(i, this.f46028g));
        }
    }

    static {
        PBFactory pBFactory = new PBFactory();
        INSTANCE = pBFactory;
        pbMap = new LinkedHashMap<>();
        exportToPBFromDBMap = new LinkedHashMap<>();
        exportToDBFromPBMap = new LinkedHashMap<>();
        exportNoteFuncMap = new LinkedHashMap<>();
        copyPBDataToDBMap = new LinkedHashMap<>();
        pbMap.put(1, Reflection.getOrCreateKotlinClass(ShapePBData.class));
        pbMap.put(2, Reflection.getOrCreateKotlinClass(ResourcePBData.class));
        pbMap.put(3, Reflection.getOrCreateKotlinClass(LinkPBData.class));
        pbMap.put(4, Reflection.getOrCreateKotlinClass(TagPBData.class));
        pbMap.put(5, Reflection.getOrCreateKotlinClass(NoteModelPBData.class));
        pbMap.put(6, Reflection.getOrCreateKotlinClass(ExtraInfoPBData.class));
        pbMap.put(7, Reflection.getOrCreateKotlinClass(VirtualPagePBData.class));
        pbMap.put(10, Reflection.getOrCreateKotlinClass(VirtualDocPBData.class));
        pbMap.put(13, Reflection.getOrCreateKotlinClass(ThumbnailData.class));
        pbMap.put(17, Reflection.getOrCreateKotlinClass(TocPBData.class));
        pbMap.put(18, Reflection.getOrCreateKotlinClass(BookmarkPBData.class));
        pbMap.put(21, Reflection.getOrCreateKotlinClass(FTSContentPBData.class));
        pbMap.put(22, Reflection.getOrCreateKotlinClass(FTSPageStatePBData.class));
        pBFactory.m35467c(1);
        pBFactory.m35467c(2);
        pBFactory.m35467c(3);
        pBFactory.m35467c(4);
        pBFactory.m35467c(7);
        pBFactory.m35467c(10);
        pBFactory.m35467c(17);
        pBFactory.m35467c(18);
        pBFactory.m35467c(21);
        pBFactory.m35467c(22);
        pBFactory.m35468d(2);
        pBFactory.m35468d(3);
        pBFactory.m35468d(7);
        pBFactory.m35468d(10);
        pBFactory.m35468d(17);
        pBFactory.m35468d(18);
        pBFactory.m35468d(21);
        pBFactory.m35468d(22);
        pBFactory.m35466b(7);
        pBFactory.m35466b(10);
        pBFactory.m35466b(1);
        pBFactory.m35466b(2);
        pBFactory.m35466b(3);
        pBFactory.m35466b(4);
        pBFactory.m35466b(5);
        pBFactory.m35466b(6);
        pBFactory.m35466b(13);
        pBFactory.m35466b(17);
        pBFactory.m35466b(18);
        pBFactory.m35466b(21);
        pBFactory.m35466b(22);
        pBFactory.m35465a(6);
        pBFactory.m35465a(7);
        pBFactory.m35465a(10);
        pBFactory.m35465a(2);
        pBFactory.m35465a(3);
        pBFactory.m35465a(4);
        pBFactory.m35465a(1);
        pBFactory.m35465a(13);
        pBFactory.m35465a(17);
        pBFactory.m35465a(18);
        pBFactory.m35465a(21);
        pBFactory.m35465a(22);
    }

    public static /* synthetic */ Observable copyPBDataToDBObservable$default(PBFactory pBFactory, PBDataContext pBDataContext, Scheduler scheduler, int i, Object obj) {
        if ((i & 2) != 0) {
            scheduler = Schedulers.trampoline();
            Intrinsics.checkNotNullExpressionValue(scheduler, "trampoline(...)");
        }
        return pBFactory.copyPBDataToDBObservable(pBDataContext, scheduler);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Observable exportToNoteObservable$default(PBFactory pBFactory, PBDataContext pBDataContext, LinkedHashMap linkedHashMap, Scheduler scheduler, int i, Object obj) {
        if ((i & 2) != 0) {
            linkedHashMap = exportNoteFuncMap;
        }
        if ((i & 4) != 0) {
            scheduler = Schedulers.trampoline();
            Intrinsics.checkNotNullExpressionValue(scheduler, "trampoline(...)");
        }
        return pBFactory.exportToNoteObservable(pBDataContext, linkedHashMap, scheduler);
    }

    /* renamed from: f */
    public static /* synthetic */ Observable m35464f(PBFactory pBFactory, Map map, Function1 function1, Scheduler scheduler, int i, Object obj) {
        if ((i & 4) != 0) {
            scheduler = Schedulers.trampoline();
            Intrinsics.checkNotNullExpressionValue(scheduler, "trampoline(...)");
        }
        return pBFactory.m35469e(map, function1, scheduler);
    }

    /* renamed from: a */
    public final void m35465a(int type) {
        LinkedHashMap<Integer, KClass<? extends PBData>> linkedHashMap = copyPBDataToDBMap;
        Integer valueOf = Integer.valueOf(type);
        KClass<? extends PBData> kClass = pbMap.get(Integer.valueOf(type));
        if (kClass == null) {
            kClass = Reflection.getOrCreateKotlinClass(DummyPBData.class);
        }
        linkedHashMap.put(valueOf, kClass);
    }

    /* renamed from: b */
    public final void m35466b(int type) {
        LinkedHashMap<Integer, KClass<? extends PBData>> linkedHashMap = exportNoteFuncMap;
        Integer valueOf = Integer.valueOf(type);
        KClass<? extends PBData> kClass = pbMap.get(Integer.valueOf(type));
        if (kClass == null) {
            kClass = Reflection.getOrCreateKotlinClass(DummyPBData.class);
        }
        linkedHashMap.put(valueOf, kClass);
    }

    /* renamed from: c */
    public final void m35467c(int type) {
        LinkedHashMap<Integer, KClass<? extends PBData>> linkedHashMap = exportToPBFromDBMap;
        Integer valueOf = Integer.valueOf(type);
        KClass<? extends PBData> kClass = pbMap.get(Integer.valueOf(type));
        if (kClass == null) {
            kClass = Reflection.getOrCreateKotlinClass(DummyPBData.class);
        }
        linkedHashMap.put(valueOf, kClass);
    }

    public final void copyPBDataToDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        StringBuilder sb = new StringBuilder();
        if (pbDataContext.getPrintLogToFile()) {
            sb.append(pbDataContext.getDocumentId() + " copyPBDataToDB\r\n");
        }
        Iterator<Map.Entry<Integer, KClass<? extends PBData>>> it2 = copyPBDataToDBMap.entrySet().iterator();
        while (it2.hasNext()) {
            PBData pBData = (PBData) KClasses.createInstance(it2.next().getValue());
            long m74114markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto();
            pBData.copyPBDataToDB(pbDataContext);
            TimedValue timedValue = new TimedValue(Unit.INSTANCE, TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(m74114markNowz9LOYto), null);
            if (!pbDataContext.getPrintLogToFile()) {
                timedValue = null;
            }
            if (timedValue != null) {
                sb.append(AnyKt.toSimpleNameString(pBData) + ':' + ((Object) Duration.m74024toStringimpl(timedValue.m74136getDurationUwyO8pc())) + "\r\n");
            }
        }
        if (pbDataContext.getPrintLogToFile()) {
            LogUtils.wTag(PBFactory.class.getSimpleName(), sb.toString());
        }
    }

    @NotNull
    public final Observable<ProgressInfo> copyPBDataToDBObservable(@NotNull final PBDataContext pbDataContext, @NotNull Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        return m35469e(copyPBDataToDBMap, new Function1<Map.Entry<? extends Integer, ? extends KClass<? extends PBData>>, Unit>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.PBFactory$copyPBDataToDBObservable$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Map.Entry<? extends Integer, ? extends KClass<? extends PBData>> entry) {
                invoke2((Map.Entry<Integer, ? extends KClass<? extends PBData>>) entry);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Map.Entry<Integer, ? extends KClass<? extends PBData>> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ((PBData) KClasses.createInstance(it2.getValue())).copyPBDataToDB(PBDataContext.this);
            }
        }, scheduler);
    }

    /* renamed from: d */
    public final void m35468d(int type) {
        LinkedHashMap<Integer, KClass<? extends PBData>> linkedHashMap = exportToDBFromPBMap;
        Integer valueOf = Integer.valueOf(type);
        KClass<? extends PBData> kClass = pbMap.get(Integer.valueOf(type));
        if (kClass == null) {
            kClass = Reflection.getOrCreateKotlinClass(DummyPBData.class);
        }
        linkedHashMap.put(valueOf, kClass);
    }

    /* renamed from: e */
    public final Observable<ProgressInfo> m35469e(Map<Integer, ? extends KClass<? extends PBData>> actionMap, Function1<? super Map.Entry<Integer, ? extends KClass<? extends PBData>>, Unit> action, Scheduler scheduler) {
        int size = actionMap.size();
        Observable<ProgressInfo> concatMap = Observable.fromIterable(actionMap.entrySet()).observeOn(scheduler).concatMap(new C7797a(action, new Ref.IntRef(), size));
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        return concatMap;
    }

    public final void exportToDBFromPB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        Iterator<Map.Entry<Integer, KClass<? extends PBData>>> it2 = exportToDBFromPBMap.entrySet().iterator();
        while (it2.hasNext()) {
            ((PBData) KClasses.createInstance(it2.next().getValue())).exportToDBFromPB(pbDataContext);
        }
    }

    public final void exportToNote(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        Iterator<Map.Entry<Integer, KClass<? extends PBData>>> it2 = exportNoteFuncMap.entrySet().iterator();
        while (it2.hasNext()) {
            ((PBData) KClasses.createInstance(it2.next().getValue())).exportToNote(pbDataContext);
        }
    }

    @NotNull
    public final Observable<ProgressInfo> exportToNoteObservable(@NotNull final PBDataContext pbDataContext, @NotNull LinkedHashMap<Integer, KClass<? extends PBData>> funcMap, @NotNull Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        Intrinsics.checkNotNullParameter(funcMap, "funcMap");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        if (funcMap.isEmpty()) {
            funcMap = exportNoteFuncMap;
        }
        return m35469e(funcMap, new Function1<Map.Entry<? extends Integer, ? extends KClass<? extends PBData>>, Unit>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.PBFactory$exportToNoteObservable$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Map.Entry<? extends Integer, ? extends KClass<? extends PBData>> entry) {
                invoke2((Map.Entry<Integer, ? extends KClass<? extends PBData>>) entry);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Map.Entry<Integer, ? extends KClass<? extends PBData>> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ((PBData) KClasses.createInstance(it2.getValue())).exportToNote(PBDataContext.this);
            }
        }, scheduler);
    }

    public final void exportToPBFromDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        StringBuilder sb = new StringBuilder();
        if (pbDataContext.getPrintLogToFile()) {
            sb.append(pbDataContext.getDocumentId() + " exportToPBFromDB\r\n");
        }
        Iterator<Map.Entry<Integer, KClass<? extends PBData>>> it2 = exportToPBFromDBMap.entrySet().iterator();
        while (it2.hasNext()) {
            PBData pBData = (PBData) KClasses.createInstance(it2.next().getValue());
            long m74114markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto();
            pBData.exportToPBFromDB(pbDataContext);
            TimedValue timedValue = new TimedValue(Unit.INSTANCE, TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(m74114markNowz9LOYto), null);
            if (!pbDataContext.getPrintLogToFile()) {
                timedValue = null;
            }
            if (timedValue != null) {
                sb.append(AnyKt.toSimpleNameString(pBData) + ':' + ((Object) Duration.m74024toStringimpl(timedValue.m74136getDurationUwyO8pc())) + "\r\n");
            }
        }
        if (pbDataContext.getPrintLogToFile()) {
            LogUtils.wTag(PBFactory.class.getSimpleName(), sb.toString());
        }
    }

    @NotNull
    public final LinkedHashMap<Integer, KClass<? extends PBData>> getCustomFuncMap(@NotNull int[] types) {
        Intrinsics.checkNotNullParameter(types, "types");
        LinkedHashMap<Integer, KClass<? extends PBData>> linkedHashMap = new LinkedHashMap<>();
        for (int i : types) {
            Integer valueOf = Integer.valueOf(i);
            KClass<? extends PBData> kClass = pbMap.get(Integer.valueOf(i));
            if (kClass == null) {
                kClass = Reflection.getOrCreateKotlinClass(DummyPBData.class);
            } else {
                Intrinsics.checkNotNull(kClass);
            }
            linkedHashMap.put(valueOf, kClass);
        }
        return linkedHashMap;
    }
}
