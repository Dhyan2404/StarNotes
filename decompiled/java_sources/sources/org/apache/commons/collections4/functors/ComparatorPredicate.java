package org.apache.commons.collections4.functors;

import java.io.Serializable;
import java.util.Comparator;
import org.apache.commons.collections4.Predicate;

/* loaded from: classes11.dex */
public class ComparatorPredicate<T> implements Predicate<T>, Serializable {
    private static final long serialVersionUID = -1863209236504077399L;
    private final Comparator<T> comparator;
    private final Criterion criterion;
    private final T object;

    /* loaded from: classes11.dex */
    public enum Criterion {
        EQUAL,
        GREATER,
        LESS,
        GREATER_OR_EQUAL,
        LESS_OR_EQUAL
    }

    /* renamed from: org.apache.commons.collections4.functors.ComparatorPredicate$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18740a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f104993a;

        static {
            int[] iArr = new int[Criterion.values().length];
            f104993a = iArr;
            try {
                iArr[Criterion.EQUAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f104993a[Criterion.GREATER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f104993a[Criterion.LESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f104993a[Criterion.GREATER_OR_EQUAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f104993a[Criterion.LESS_OR_EQUAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public ComparatorPredicate(T t, Comparator<T> comparator, Criterion criterion) {
        this.object = t;
        this.comparator = comparator;
        this.criterion = criterion;
    }

    public static <T> Predicate<T> comparatorPredicate(T t, Comparator<T> comparator) {
        return comparatorPredicate(t, comparator, Criterion.EQUAL);
    }

    @Override // org.apache.commons.collections4.Predicate
    public boolean evaluate(T t) {
        int compare = this.comparator.compare(this.object, t);
        int i = C18740a.f104993a[this.criterion.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            throw new IllegalStateException("The current criterion '" + this.criterion + "' is invalid.");
                        }
                        if (compare > 0) {
                            return false;
                        }
                    } else if (compare < 0) {
                        return false;
                    }
                } else if (compare >= 0) {
                    return false;
                }
            } else if (compare <= 0) {
                return false;
            }
        } else if (compare != 0) {
            return false;
        }
        return true;
    }

    public static <T> Predicate<T> comparatorPredicate(T t, Comparator<T> comparator, Criterion criterion) {
        if (comparator == null) {
            throw new NullPointerException("Comparator must not be null.");
        }
        if (criterion != null) {
            return new ComparatorPredicate(t, comparator, criterion);
        }
        throw new NullPointerException("Criterion must not be null.");
    }
}
