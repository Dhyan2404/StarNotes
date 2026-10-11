package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.util.Objects;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public final class Notification<T> {

    /* renamed from: b */
    public static final Notification<Object> f94992b = new Notification<>(null);

    /* renamed from: a */
    public final Object f94993a;

    public Notification(@Nullable Object value) {
        this.f94993a = value;
    }

    @NonNull
    public static <T> Notification<T> createOnComplete() {
        return (Notification<T>) f94992b;
    }

    @NonNull
    public static <T> Notification<T> createOnError(@NonNull Throwable error) {
        Objects.requireNonNull(error, "error is null");
        return new Notification<>(NotificationLite.error(error));
    }

    @NonNull
    public static <T> Notification<T> createOnNext(T value) {
        Objects.requireNonNull(value, "value is null");
        return new Notification<>(value);
    }

    public boolean equals(Object obj) {
        if (obj instanceof Notification) {
            return Objects.equals(this.f94993a, ((Notification) obj).f94993a);
        }
        return false;
    }

    @Nullable
    public Throwable getError() {
        Object obj = this.f94993a;
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    @Nullable
    public T getValue() {
        Object obj = this.f94993a;
        if (obj == null || NotificationLite.isError(obj)) {
            return null;
        }
        return (T) this.f94993a;
    }

    public int hashCode() {
        Object obj = this.f94993a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public boolean isOnComplete() {
        return this.f94993a == null;
    }

    public boolean isOnError() {
        return NotificationLite.isError(this.f94993a);
    }

    public boolean isOnNext() {
        Object obj = this.f94993a;
        return (obj == null || NotificationLite.isError(obj)) ? false : true;
    }

    public String toString() {
        Object obj = this.f94993a;
        if (obj == null) {
            return "OnCompleteNotification";
        }
        if (NotificationLite.isError(obj)) {
            return "OnErrorNotification[" + NotificationLite.getError(obj) + IteratorUtils.f104924b;
        }
        return "OnNextNotification[" + this.f94993a + IteratorUtils.f104924b;
    }
}
