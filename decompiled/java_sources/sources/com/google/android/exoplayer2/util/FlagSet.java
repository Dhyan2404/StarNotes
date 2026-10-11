package com.google.android.exoplayer2.util;

import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
public final class FlagSet {

    /* renamed from: a */
    public final SparseBooleanArray f28340a;

    public boolean contains(int i) {
        return this.f28340a.get(i);
    }

    public boolean containsAny(int... iArr) {
        for (int i : iArr) {
            if (contains(i)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlagSet)) {
            return false;
        }
        FlagSet flagSet = (FlagSet) obj;
        if (Util.SDK_INT >= 24) {
            return this.f28340a.equals(flagSet.f28340a);
        }
        if (size() != flagSet.size()) {
            return false;
        }
        for (int i = 0; i < size(); i++) {
            if (get(i) != flagSet.get(i)) {
                return false;
            }
        }
        return true;
    }

    public int get(int i) {
        Assertions.checkIndex(i, 0, size());
        return this.f28340a.keyAt(i);
    }

    public int hashCode() {
        if (Util.SDK_INT >= 24) {
            return this.f28340a.hashCode();
        }
        int size = size();
        for (int i = 0; i < size(); i++) {
            size = (size * 31) + get(i);
        }
        return size;
    }

    public int size() {
        return this.f28340a.size();
    }

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public final SparseBooleanArray f28341a = new SparseBooleanArray();

        /* renamed from: b */
        public boolean f28342b;

        public Builder add(int i) {
            Assertions.checkState(!this.f28342b);
            this.f28341a.append(i, true);
            return this;
        }

        public Builder addAll(int... iArr) {
            for (int i : iArr) {
                add(i);
            }
            return this;
        }

        public Builder addIf(int i, boolean z) {
            return z ? add(i) : this;
        }

        public FlagSet build() {
            Assertions.checkState(!this.f28342b);
            this.f28342b = true;
            return new FlagSet(this.f28341a);
        }

        public Builder remove(int i) {
            Assertions.checkState(!this.f28342b);
            this.f28341a.delete(i);
            return this;
        }

        public Builder removeAll(int... iArr) {
            for (int i : iArr) {
                remove(i);
            }
            return this;
        }

        public Builder removeIf(int i, boolean z) {
            return z ? remove(i) : this;
        }

        public Builder addAll(FlagSet flagSet) {
            for (int i = 0; i < flagSet.size(); i++) {
                add(flagSet.get(i));
            }
            return this;
        }
    }

    public FlagSet(SparseBooleanArray sparseBooleanArray) {
        this.f28340a = sparseBooleanArray;
    }
}
