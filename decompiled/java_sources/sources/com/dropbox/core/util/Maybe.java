package com.dropbox.core.util;

import com.google.android.material.motion.MotionUtils;

/* loaded from: classes4.dex */
public abstract class Maybe<T> {

    /* renamed from: a */
    public static final Maybe<Object> f16633a = new C2313c();

    /* renamed from: com.dropbox.core.util.Maybe$b */
    /* loaded from: classes4.dex */
    public static final class C2312b<T> extends Maybe<T> {

        /* renamed from: b */
        public final T f16634b;

        @Override // com.dropbox.core.util.Maybe
        public boolean equals(Maybe<T> maybe) {
            if (maybe instanceof C2312b) {
                return LangUtil.nullableEquals(this.f16634b, ((C2312b) maybe).f16634b);
            }
            if (maybe instanceof C2313c) {
                return false;
            }
            throw LangUtil.badType(maybe);
        }

        @Override // com.dropbox.core.util.Maybe
        public T get(T t) {
            return this.f16634b;
        }

        @Override // com.dropbox.core.util.Maybe
        public T getJust() {
            return this.f16634b;
        }

        @Override // com.dropbox.core.util.Maybe
        public int hashCode() {
            return LangUtil.nullableHashCode(this.f16634b) + 1;
        }

        @Override // com.dropbox.core.util.Maybe
        public boolean isJust() {
            return true;
        }

        @Override // com.dropbox.core.util.Maybe
        public boolean isNothing() {
            return false;
        }

        @Override // com.dropbox.core.util.Maybe
        public String toString() {
            return "Just(" + this.f16634b + MotionUtils.f31762d;
        }

        public C2312b(T t) {
            super();
            this.f16634b = t;
        }
    }

    /* renamed from: com.dropbox.core.util.Maybe$c */
    /* loaded from: classes4.dex */
    public static final class C2313c<T> extends Maybe<T> {
        @Override // com.dropbox.core.util.Maybe
        public boolean equals(Maybe<T> maybe) {
            return maybe == this;
        }

        @Override // com.dropbox.core.util.Maybe
        public T get(T t) {
            return t;
        }

        @Override // com.dropbox.core.util.Maybe
        public T getJust() {
            throw new IllegalStateException("can't call getJust() on a Nothing");
        }

        @Override // com.dropbox.core.util.Maybe
        public int hashCode() {
            return 0;
        }

        @Override // com.dropbox.core.util.Maybe
        public boolean isJust() {
            return false;
        }

        @Override // com.dropbox.core.util.Maybe
        public boolean isNothing() {
            return true;
        }

        @Override // com.dropbox.core.util.Maybe
        public String toString() {
            return "Nothing";
        }

        public C2313c() {
            super();
        }
    }

    public static <T> Maybe<T> Just(T t) {
        return new C2312b(t);
    }

    public static <T> Maybe<T> Nothing() {
        return (Maybe<T>) f16633a;
    }

    public abstract boolean equals(Maybe<T> maybe);

    public abstract T get(T t);

    public abstract T getJust();

    public abstract int hashCode();

    public abstract boolean isJust();

    public abstract boolean isNothing();

    public abstract String toString();

    public Maybe() {
    }
}
