package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes3.dex */
public final class Option<T> {

    /* renamed from: e */
    public static final CacheKeyUpdater<Object> f14469e = new C1913a();

    /* renamed from: a */
    public final T f14470a;

    /* renamed from: b */
    public final CacheKeyUpdater<T> f14471b;

    /* renamed from: c */
    public final String f14472c;

    /* renamed from: d */
    public volatile byte[] f14473d;

    /* loaded from: classes3.dex */
    public interface CacheKeyUpdater<T> {
        void update(@NonNull byte[] bArr, @NonNull T t, @NonNull MessageDigest messageDigest);
    }

    /* renamed from: com.bumptech.glide.load.Option$a */
    /* loaded from: classes3.dex */
    public class C1913a implements CacheKeyUpdater<Object> {
        @Override // com.bumptech.glide.load.Option.CacheKeyUpdater
        public void update(@NonNull byte[] bArr, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        }
    }

    public Option(@NonNull String str, @Nullable T t, @NonNull CacheKeyUpdater<T> cacheKeyUpdater) {
        this.f14472c = Preconditions.checkNotEmpty(str);
        this.f14470a = t;
        this.f14471b = (CacheKeyUpdater) Preconditions.checkNotNull(cacheKeyUpdater);
    }

    @NonNull
    /* renamed from: a */
    public static <T> CacheKeyUpdater<T> m8671a() {
        return (CacheKeyUpdater<T>) f14469e;
    }

    @NonNull
    public static <T> Option<T> disk(@NonNull String str, @NonNull CacheKeyUpdater<T> cacheKeyUpdater) {
        return new Option<>(str, null, cacheKeyUpdater);
    }

    @NonNull
    public static <T> Option<T> memory(@NonNull String str) {
        return new Option<>(str, null, m8671a());
    }

    @NonNull
    /* renamed from: b */
    public final byte[] m8672b() {
        if (this.f14473d == null) {
            this.f14473d = this.f14472c.getBytes(Key.CHARSET);
        }
        return this.f14473d;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Option) {
            return this.f14472c.equals(((Option) obj).f14472c);
        }
        return false;
    }

    @Nullable
    public T getDefaultValue() {
        return this.f14470a;
    }

    public int hashCode() {
        return this.f14472c.hashCode();
    }

    public String toString() {
        return "Option{key='" + this.f14472c + Chars.QUOTE + '}';
    }

    public void update(@NonNull T t, @NonNull MessageDigest messageDigest) {
        this.f14471b.update(m8672b(), t, messageDigest);
    }

    @NonNull
    public static <T> Option<T> disk(@NonNull String str, @Nullable T t, @NonNull CacheKeyUpdater<T> cacheKeyUpdater) {
        return new Option<>(str, t, cacheKeyUpdater);
    }

    @NonNull
    public static <T> Option<T> memory(@NonNull String str, @NonNull T t) {
        return new Option<>(str, t, m8671a());
    }
}
