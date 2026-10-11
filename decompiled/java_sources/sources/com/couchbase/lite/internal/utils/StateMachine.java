package com.couchbase.lite.internal.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.logging.Log;
import java.lang.Enum;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.EnumSet;

/* loaded from: classes4.dex */
public final class StateMachine<T extends Enum<T>> {

    @NonNull
    private final LogDomain domain;

    @Nullable
    private final T failureState;

    @NonNull
    private T state;

    @NonNull
    private final EnumMap<T, EnumSet<T>> transitions;

    /* loaded from: classes4.dex */
    public static class Builder<S extends Enum<S>> {

        @NonNull
        private final LogDomain domain;

        @Nullable
        private final S failureState;

        @NonNull
        private final S initialState;

        @NonNull
        private final EnumMap<S, EnumSet<S>> transitions;

        public Builder(@NonNull Class<S> cls, @NonNull LogDomain logDomain, @NonNull S s, @Nullable S s2) {
            this.transitions = new EnumMap<>(cls);
            this.domain = logDomain;
            this.initialState = s;
            this.failureState = s2;
        }

        @NonNull
        @SafeVarargs
        public final Builder<S> addTransition(@NonNull S s, @NonNull S s2, @NonNull S... sArr) {
            if (s == this.failureState) {
                throw new IllegalArgumentException("transitions from the failure state are illegal");
            }
            this.transitions.put((EnumMap<S, EnumSet<S>>) s, (S) EnumSet.of(s2, sArr));
            return this;
        }

        @NonNull
        public StateMachine<S> build() {
            return new StateMachine<>(this.domain, this.initialState, this.failureState, this.transitions);
        }
    }

    @SafeVarargs
    public final boolean assertState(@NonNull T... tArr) {
        Preconditions.assertPositive(tArr.length, "expected states length");
        for (T t : tArr) {
            if (t == this.state) {
                return true;
            }
        }
        if (this.state != this.failureState) {
            Log.m9898d(this.domain, "StateMachine%s: unexpected state %s %s", new Exception(), this, this.state, Arrays.toString(tArr));
        }
        return false;
    }

    @NonNull
    @VisibleForTesting
    public T getCurrentState() {
        return this.state;
    }

    public boolean setState(@NonNull T t) {
        EnumSet<T> enumSet = this.transitions.get(this.state);
        if (t == this.failureState || (enumSet != null && enumSet.contains(t))) {
            Log.m9899d(this.domain, "StateMachine%s: transition %s => %s", this, this.state, t);
            this.state = t;
            return true;
        }
        if (this.state == this.failureState) {
            return false;
        }
        Log.m9899d(this.domain, "StateMachine%s: no transition: %s => %s %s", this, new Exception(), this.state, t, enumSet);
        return false;
    }

    @NonNull
    public String toString() {
        return ClassUtils.objId(this);
    }

    private StateMachine(@NonNull LogDomain logDomain, @NonNull T t, @Nullable T t2, @NonNull EnumMap<T, EnumSet<T>> enumMap) {
        this.domain = logDomain;
        this.state = t;
        this.failureState = t2;
        this.transitions = enumMap;
    }
}
