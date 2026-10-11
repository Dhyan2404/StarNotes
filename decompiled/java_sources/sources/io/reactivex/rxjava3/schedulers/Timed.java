package io.reactivex.rxjava3.schedulers;

import io.reactivex.rxjava3.annotations.NonNull;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public final class Timed<T> {

    /* renamed from: a */
    public final T f97583a;

    /* renamed from: b */
    public final long f97584b;

    /* renamed from: c */
    public final TimeUnit f97585c;

    public Timed(@NonNull T value, long time, @NonNull TimeUnit unit) {
        Objects.requireNonNull(value, "value is null");
        this.f97583a = value;
        this.f97584b = time;
        Objects.requireNonNull(unit, "unit is null");
        this.f97585c = unit;
    }

    public boolean equals(Object other) {
        if (!(other instanceof Timed)) {
            return false;
        }
        Timed timed = (Timed) other;
        return Objects.equals(this.f97583a, timed.f97583a) && this.f97584b == timed.f97584b && Objects.equals(this.f97585c, timed.f97585c);
    }

    public int hashCode() {
        int hashCode = this.f97583a.hashCode() * 31;
        long j = this.f97584b;
        return ((hashCode + ((int) (j ^ (j >>> 31)))) * 31) + this.f97585c.hashCode();
    }

    public long time() {
        return this.f97584b;
    }

    public String toString() {
        return "Timed[time=" + this.f97584b + ", unit=" + this.f97585c + ", value=" + this.f97583a + IteratorUtils.f104924b;
    }

    @NonNull
    public TimeUnit unit() {
        return this.f97585c;
    }

    @NonNull
    public T value() {
        return this.f97583a;
    }

    public long time(@NonNull TimeUnit unit) {
        return unit.convert(this.f97584b, this.f97585c);
    }
}
