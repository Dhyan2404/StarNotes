package com.couchbase.lite.internal.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* renamed from: com.couchbase.lite.internal.utils.Fn */
/* loaded from: classes4.dex */
public interface InterfaceC2217Fn {

    @FunctionalInterface
    /* renamed from: com.couchbase.lite.internal.utils.Fn$BiFunction */
    /* loaded from: classes4.dex */
    public interface BiFunction<T1, T2, R> {
        @Nullable
        R apply(@NonNull T1 t1, @NonNull T2 t2);
    }

    @FunctionalInterface
    /* renamed from: com.couchbase.lite.internal.utils.Fn$Consumer */
    /* loaded from: classes4.dex */
    public interface Consumer<T> {
        void accept(@NonNull T t);
    }

    @FunctionalInterface
    /* renamed from: com.couchbase.lite.internal.utils.Fn$ConsumerThrows */
    /* loaded from: classes4.dex */
    public interface ConsumerThrows<T, E extends Exception> {
        void accept(@NonNull T t) throws Exception;
    }

    @FunctionalInterface
    @Deprecated
    /* renamed from: com.couchbase.lite.internal.utils.Fn$Function */
    /* loaded from: classes4.dex */
    public interface Function<T, R> {
        @Nullable
        R apply(@NonNull T t);
    }

    @FunctionalInterface
    @Deprecated
    /* renamed from: com.couchbase.lite.internal.utils.Fn$FunctionThrows */
    /* loaded from: classes4.dex */
    public interface FunctionThrows<T, R, E extends Exception> {
        @NonNull
        R apply(@NonNull T t) throws Exception;
    }

    @FunctionalInterface
    /* renamed from: com.couchbase.lite.internal.utils.Fn$LongProviderThrows */
    /* loaded from: classes4.dex */
    public interface LongProviderThrows<E extends Exception> {
        long get() throws Exception;
    }

    @FunctionalInterface
    /* renamed from: com.couchbase.lite.internal.utils.Fn$NonNullFunction */
    /* loaded from: classes4.dex */
    public interface NonNullFunction<T, R> {
        @NonNull
        R apply(@NonNull T t);
    }

    @FunctionalInterface
    /* renamed from: com.couchbase.lite.internal.utils.Fn$NonNullFunctionThrows */
    /* loaded from: classes4.dex */
    public interface NonNullFunctionThrows<T, R, E extends Exception> {
        @NonNull
        R apply(@NonNull T t) throws Exception;
    }

    @FunctionalInterface
    /* renamed from: com.couchbase.lite.internal.utils.Fn$NullableConsumer */
    /* loaded from: classes4.dex */
    public interface NullableConsumer<T> {
        void accept(@Nullable T t);
    }

    @FunctionalInterface
    /* renamed from: com.couchbase.lite.internal.utils.Fn$NullableFunction */
    /* loaded from: classes4.dex */
    public interface NullableFunction<T, R> {
        @Nullable
        R apply(@NonNull T t);
    }

    @FunctionalInterface
    /* renamed from: com.couchbase.lite.internal.utils.Fn$NullableFunctionThrows */
    /* loaded from: classes4.dex */
    public interface NullableFunctionThrows<T, R, E extends Exception> {
        @Nullable
        R apply(@NonNull T t) throws Exception;
    }

    @FunctionalInterface
    /* renamed from: com.couchbase.lite.internal.utils.Fn$NullablePredicate */
    /* loaded from: classes4.dex */
    public interface NullablePredicate<T> {
        boolean test(@Nullable T t);
    }

    @FunctionalInterface
    /* renamed from: com.couchbase.lite.internal.utils.Fn$Predicate */
    /* loaded from: classes4.dex */
    public interface Predicate<T> {
        boolean test(@NonNull T t);
    }

    @FunctionalInterface
    /* renamed from: com.couchbase.lite.internal.utils.Fn$Provider */
    /* loaded from: classes4.dex */
    public interface Provider<T> {
        @Nullable
        T get();
    }

    @FunctionalInterface
    /* renamed from: com.couchbase.lite.internal.utils.Fn$ProviderThrows */
    /* loaded from: classes4.dex */
    public interface ProviderThrows<T, E extends Exception> {
        @Nullable
        T get() throws Exception;
    }

    @FunctionalInterface
    /* renamed from: com.couchbase.lite.internal.utils.Fn$Runner */
    /* loaded from: classes4.dex */
    public interface Runner {
        void run(@NonNull Runnable runnable);
    }

    @FunctionalInterface
    /* renamed from: com.couchbase.lite.internal.utils.Fn$TaskThrows */
    /* loaded from: classes4.dex */
    public interface TaskThrows<E extends Exception> {
        void run() throws Exception;
    }

    @NonNull
    static <T> List<T> filterToList(@NonNull Collection<? extends T> collection, @NonNull NullablePredicate<T> nullablePredicate) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t : collection) {
            if (nullablePredicate.test(t)) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    @NonNull
    static <T> Set<T> filterToSet(@NonNull Collection<? extends T> collection, @NonNull Predicate<T> predicate) {
        HashSet hashSet = new HashSet(collection.size());
        for (T t : collection) {
            if (predicate.test(t)) {
                hashSet.add(t);
            }
        }
        return hashSet;
    }

    @Nullable
    static <T> T firstOrNull(@NonNull Collection<? extends T> collection, @NonNull Predicate<T> predicate) {
        for (T t : collection) {
            if (predicate.test(t)) {
                return t;
            }
        }
        return null;
    }

    @Nullable
    static <T, R> R foldR(@NonNull Collection<? extends T> collection, @NonNull R r, @NonNull BiFunction<R, T, R> biFunction) {
        Iterator<? extends T> it2 = collection.iterator();
        while (it2.hasNext()) {
            r = biFunction.apply(r, it2.next());
        }
        return r;
    }

    static <T> void forAll(@NonNull Collection<? extends T> collection, @NonNull Consumer<T> consumer) {
        Iterator<? extends T> it2 = collection.iterator();
        while (it2.hasNext()) {
            consumer.accept(it2.next());
        }
    }

    @NonNull
    static <T, R, E extends Exception> List<R> mapToList(@NonNull Collection<? extends T> collection, @NonNull NonNullFunctionThrows<T, R, E> nonNullFunctionThrows) throws Exception {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<? extends T> it2 = collection.iterator();
        while (it2.hasNext()) {
            arrayList.add(nonNullFunctionThrows.apply(it2.next()));
        }
        return arrayList;
    }

    @NonNull
    static <T, R, E extends Exception> Set<R> mapToSet(@NonNull Collection<? extends T> collection, @NonNull NonNullFunctionThrows<T, R, E> nonNullFunctionThrows) throws Exception {
        HashSet hashSet = new HashSet(collection.size());
        Iterator<? extends T> it2 = collection.iterator();
        while (it2.hasNext()) {
            hashSet.add(nonNullFunctionThrows.apply(it2.next()));
        }
        return hashSet;
    }
}
