package com.onyx.android.sdk.data.utils;

import com.bumptech.glide.disklrucache.DiskLruCache;
import com.bumptech.glide.load.engine.cache.SafeKeyGenerator;
import com.bumptech.glide.signature.ObjectKey;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.PackageUtils;
import com.onyx.android.sdk.data.common.data.DataScope;
import com.onyx.android.sdk.data.common.data.StorageLocation;
import com.onyx.android.sdk.data.common.path.PathManager;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00022\u00020\u0002B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010\u001b\u001a\u00020\u001cJ\u001b\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00010\u001e2\u0006\u0010\u001f\u001a\u00028\u0000H&¢\u0006\u0002\u0010 J\u0010\u0010!\u001a\u0004\u0018\u00010\u00052\u0006\u0010\"\u001a\u00020\u0005J!\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00010\u001e2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00028\u0000¢\u0006\u0002\u0010$J\u0010\u0010%\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0005H\u0002J\u000e\u0010&\u001a\u00020'2\u0006\u0010\"\u001a\u00020\u0005J\u0015\u0010(\u001a\u00028\u00012\u0006\u0010)\u001a\u00020*H&¢\u0006\u0002\u0010+J\u0016\u0010,\u001a\b\u0012\u0004\u0012\u00028\u00010\u001e2\u0006\u0010)\u001a\u00020*H\u0004J\u001f\u0010-\u001a\u0006\u0012\u0002\b\u00030\u001e2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010.\u001a\u00028\u0001¢\u0006\u0002\u0010$J\u001b\u0010/\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010.\u001a\u00028\u0001¢\u0006\u0002\u00100J\u001d\u00101\u001a\u00020'2\u0006\u0010.\u001a\u00028\u00012\u0006\u0010)\u001a\u00020*H&¢\u0006\u0002\u00102J#\u00103\u001a\b\u0012\u0004\u0012\u00020'0\u001e2\u0006\u0010.\u001a\u00028\u00012\u0006\u0010)\u001a\u00020*H\u0004¢\u0006\u0002\u00104R#\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u000f\u001a\u0004\b\u0018\u0010\u0019¨\u00065"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/ObjectLruCache;", "MODEL", "", "RESOURCE", "functionKey", "", "maxCacheSize", "", "(Ljava/lang/String;J)V", "cache", "Lcom/bumptech/glide/disklrucache/DiskLruCache;", "kotlin.jvm.PlatformType", "getCache", "()Lcom/bumptech/glide/disklrucache/DiskLruCache;", "cache$delegate", "Lkotlin/Lazy;", "safeKeyGenerator", "Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;", "getSafeKeyGenerator", "()Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;", "setSafeKeyGenerator", "(Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;)V", "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "getScheduler", "()Lio/reactivex/rxjava3/core/Scheduler;", "scheduler$delegate", "close", "", "decode", "Lio/reactivex/rxjava3/core/Observable;", "model", "(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;", "getCacheFile", "key", "getOrCreate", "(Ljava/lang/String;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;", "getSafeKey", "hasCache", "", "read", "file", "Ljava/io/File;", "(Ljava/io/File;)Ljava/lang/Object;", "readObservable", "saveOrUpdate", "resource", "saveOrUpdateAsync", "(Ljava/lang/String;Ljava/lang/Object;)V", "write", "(Ljava/lang/Object;Ljava/io/File;)Z", "writeObservable", "(Ljava/lang/Object;Ljava/io/File;)Lio/reactivex/rxjava3/core/Observable;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nObjectLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectLruCache.kt\ncom/onyx/android/sdk/data/utils/ObjectLruCache\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,112:1\n41#2,5:113\n*S KotlinDebug\n*F\n+ 1 ObjectLruCache.kt\ncom/onyx/android/sdk/data/utils/ObjectLruCache\n*L\n51#1:113,5\n*E\n"})
/* loaded from: classes7.dex */
public abstract class ObjectLruCache<MODEL, RESOURCE> {

    /* renamed from: cache$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy cache;

    @NotNull
    private final String functionKey;
    private final long maxCacheSize;

    @Nullable
    private SafeKeyGenerator safeKeyGenerator;

    /* renamed from: scheduler$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy scheduler;

    public ObjectLruCache(@NotNull String functionKey, long j) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(functionKey, "functionKey");
        this.functionKey = functionKey;
        this.maxCacheSize = j;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Scheduler>(this) { // from class: com.onyx.android.sdk.data.utils.ObjectLruCache$scheduler$2
            final /* synthetic */ ObjectLruCache<MODEL, RESOURCE> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Scheduler invoke() {
                String str;
                RxScheduler.Companion companion = RxScheduler.INSTANCE;
                StringBuilder sb = new StringBuilder();
                sb.append("ObjectLruCache-");
                str = ((ObjectLruCache) this.this$0).functionKey;
                sb.append(str);
                return RxScheduler.Companion.newSingleThreadManager$default(companion, sb.toString(), 0L, 2, null).getObserveOn();
            }
        });
        this.scheduler = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<DiskLruCache>(this) { // from class: com.onyx.android.sdk.data.utils.ObjectLruCache$cache$2
            final /* synthetic */ ObjectLruCache<MODEL, RESOURCE> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DiskLruCache invoke() {
                String str;
                long j2;
                PathManager pathManager = PathManager.INSTANCE;
                StorageLocation storageLocation = StorageLocation.CACHE;
                DataScope dataScope = DataScope.APP;
                str = ((ObjectLruCache) this.this$0).functionKey;
                File file = new File(pathManager.getDirectory(storageLocation, dataScope, str));
                int appVersionCode = (int) PackageUtils.INSTANCE.getAppVersionCode();
                j2 = ((ObjectLruCache) this.this$0).maxCacheSize;
                return DiskLruCache.open(file, appVersionCode, 1, j2);
            }
        });
        this.cache = lazy2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DiskLruCache getCache() {
        return (DiskLruCache) this.cache.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getSafeKey(String key) {
        SafeKeyGenerator safeKeyGenerator = this.safeKeyGenerator;
        if (safeKeyGenerator == null) {
            return key;
        }
        String safeKey = safeKeyGenerator != null ? safeKeyGenerator.getSafeKey(new ObjectKey(key)) : null;
        return safeKey == null ? key : safeKey;
    }

    private final Scheduler getScheduler() {
        return (Scheduler) this.scheduler.getValue();
    }

    public final void close() {
        RxjavaKt.runWithRx(new Function0<Unit>(this) { // from class: com.onyx.android.sdk.data.utils.ObjectLruCache$close$1
            final /* synthetic */ ObjectLruCache<MODEL, RESOURCE> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                DiskLruCache cache;
                cache = this.this$0.getCache();
                cache.close();
            }
        });
    }

    @NotNull
    public abstract Observable<RESOURCE> decode(@NotNull MODEL model);

    @Nullable
    public final String getCacheFile(@NotNull String key) {
        DiskLruCache.Value value;
        File file;
        Intrinsics.checkNotNullParameter(key, "key");
        if (!hasCache(key) || (value = getCache().get(getSafeKey(key))) == null || (file = value.getFile(0)) == null) {
            return null;
        }
        return file.getAbsolutePath();
    }

    @NotNull
    public final Observable<RESOURCE> getOrCreate(@NotNull final String key, @NotNull final MODEL model) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(model, "model");
        final String cacheFile = getCacheFile(key);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Observable just = Observable.just(Unit.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        Observable<RESOURCE> observeOn = RxjavaKt.flatMapIf(just, new Function1<Unit, Boolean>() { // from class: com.onyx.android.sdk.data.utils.ObjectLruCache$getOrCreate$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Unit it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(StringKt.isNotEmpty(cacheFile) && FileUtils.INSTANCE.isFileExist(cacheFile));
            }
        }, new Function1<Unit, Observable<? extends Object>>(this) { // from class: com.onyx.android.sdk.data.utils.ObjectLruCache$getOrCreate$2
            final /* synthetic */ ObjectLruCache<MODEL, RESOURCE> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Unit it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ObjectLruCache<MODEL, RESOURCE> objectLruCache = this.this$0;
                String str = cacheFile;
                Intrinsics.checkNotNull(str);
                Observable readObservable = objectLruCache.readObservable(new File(str));
                final Ref.ObjectRef<RESOURCE> objectRef2 = objectRef;
                Observable<? extends Object> doOnNext = readObservable.doOnNext(new Consumer() { // from class: com.onyx.android.sdk.data.utils.ObjectLruCache$getOrCreate$2.1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // io.reactivex.rxjava3.functions.Consumer
                    public final void accept(@NotNull RESOURCE it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        objectRef2.element = it3;
                    }
                });
                Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                return doOnNext;
            }
        }, new Function1<Unit, Observable<? extends Object>>(this) { // from class: com.onyx.android.sdk.data.utils.ObjectLruCache$getOrCreate$3
            final /* synthetic */ ObjectLruCache<MODEL, RESOURCE> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Unit it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Observable decode = this.this$0.decode(model);
                final Ref.ObjectRef<RESOURCE> objectRef2 = objectRef;
                Observable doOnNext = decode.doOnNext(new Consumer() { // from class: com.onyx.android.sdk.data.utils.ObjectLruCache$getOrCreate$3.1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // io.reactivex.rxjava3.functions.Consumer
                    public final void accept(@NotNull RESOURCE it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        objectRef2.element = it3;
                    }
                });
                final ObjectLruCache<MODEL, RESOURCE> objectLruCache = this.this$0;
                final String str = key;
                Observable<? extends Object> flatMap = doOnNext.flatMap(new Function() { // from class: com.onyx.android.sdk.data.utils.ObjectLruCache$getOrCreate$3.2
                    @Override // io.reactivex.rxjava3.functions.Function
                    @NotNull
                    public final ObservableSource<? extends Object> apply(@NotNull RESOURCE it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        return objectLruCache.saveOrUpdate(str, it3);
                    }

                    @Override // io.reactivex.rxjava3.functions.Function
                    public /* bridge */ /* synthetic */ Object apply(Object obj) {
                        return apply((C73802<T, R>) obj);
                    }
                });
                Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
                return flatMap;
            }
        }).map(new Function() { // from class: com.onyx.android.sdk.data.utils.ObjectLruCache$getOrCreate$4
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final RESOURCE apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                T t = objectRef.element;
                Intrinsics.checkNotNull(t);
                return t;
            }
        }).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @Nullable
    public final SafeKeyGenerator getSafeKeyGenerator() {
        return this.safeKeyGenerator;
    }

    public final boolean hasCache(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            return getCache().get(getSafeKey(key)) != null;
        } catch (Throwable unused) {
            return false;
        }
    }

    @NotNull
    public abstract RESOURCE read(@NotNull File file);

    @NotNull
    public final Observable<RESOURCE> readObservable(@NotNull final File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        Observable<RESOURCE> map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new Function(this) { // from class: com.onyx.android.sdk.data.utils.ObjectLruCache$readObservable$1
            final /* synthetic */ ObjectLruCache<MODEL, RESOURCE> this$0;

            {
                this.this$0 = this;
            }

            /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, RESOURCE] */
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final RESOURCE apply(@NotNull ObjectLruCache<MODEL, RESOURCE> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.this$0.read(file);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Observable<?> saveOrUpdate(@NotNull final String key, @NotNull final RESOURCE resource) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(resource, "resource");
        final String randomCacheFile = PathManager.INSTANCE.getRandomCacheFile();
        Observable<?> observeOn = Observable.just(Unit.INSTANCE).flatMap(new Function(this) { // from class: com.onyx.android.sdk.data.utils.ObjectLruCache$saveOrUpdate$1
            final /* synthetic */ ObjectLruCache<MODEL, RESOURCE> this$0;

            {
                this.this$0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends Boolean> apply(@NotNull Unit it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.this$0.writeObservable(resource, new File(randomCacheFile));
            }
        }).observeOn(getScheduler()).doOnNext(new Consumer(this) { // from class: com.onyx.android.sdk.data.utils.ObjectLruCache$saveOrUpdate$2
            final /* synthetic */ ObjectLruCache<MODEL, RESOURCE> this$0;

            {
                this.this$0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public /* bridge */ /* synthetic */ void accept(Object obj) {
                accept(((Boolean) obj).booleanValue());
            }

            public final void accept(boolean z) {
                DiskLruCache cache;
                String safeKey;
                File file;
                cache = this.this$0.getCache();
                safeKey = this.this$0.getSafeKey(key);
                DiskLruCache.Editor edit = cache.edit(safeKey);
                if (edit == null || (file = edit.getFile(0)) == null) {
                    return;
                }
                onyx.org.apache.commons.io.FileUtils.moveFile(new File(randomCacheFile), file);
                edit.commit();
            }
        }).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    public final void saveOrUpdateAsync(@NotNull String key, @NotNull RESOURCE resource) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(resource, "resource");
        saveOrUpdate(key, resource).subscribe();
    }

    public final void setSafeKeyGenerator(@Nullable SafeKeyGenerator safeKeyGenerator) {
        this.safeKeyGenerator = safeKeyGenerator;
    }

    public abstract boolean write(@NotNull RESOURCE resource, @NotNull File file);

    @NotNull
    public final Observable<Boolean> writeObservable(@NotNull final RESOURCE resource, @NotNull final File file) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        Intrinsics.checkNotNullParameter(file, "file");
        Observable<Boolean> map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new Function(this) { // from class: com.onyx.android.sdk.data.utils.ObjectLruCache$writeObservable$1
            final /* synthetic */ ObjectLruCache<MODEL, RESOURCE> this$0;

            {
                this.this$0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final Boolean apply(@NotNull ObjectLruCache<MODEL, RESOURCE> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(this.this$0.write(resource, file));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
