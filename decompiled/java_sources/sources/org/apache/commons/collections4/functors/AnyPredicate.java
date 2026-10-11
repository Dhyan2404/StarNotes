package org.apache.commons.collections4.functors;

import com.sunia.HTREnginev2.oyg;
import java.util.Collection;
import org.apache.commons.collections4.Predicate;

/* loaded from: classes11.dex */
public final class AnyPredicate<T> extends AbstractQuantifierPredicate<T> {
    private static final long serialVersionUID = 7429999530934647542L;

    public AnyPredicate(Predicate<? super T>... predicateArr) {
        super(predicateArr);
    }

    public static <T> Predicate<T> anyPredicate(Predicate<? super T>... predicateArr) {
        oyg.m56189h(predicateArr);
        if (predicateArr.length == 0) {
            return FalsePredicate.falsePredicate();
        }
        if (predicateArr.length == 1) {
            return (Predicate<T>) predicateArr[0];
        }
        return new AnyPredicate(oyg.m56186e(predicateArr));
    }

    @Override // org.apache.commons.collections4.Predicate
    public boolean evaluate(T t) {
        for (Predicate<? super T> predicate : this.iPredicates) {
            if (predicate.evaluate(t)) {
                return true;
            }
        }
        return false;
    }

    public static <T> Predicate<T> anyPredicate(Collection<? extends Predicate<? super T>> collection) {
        Predicate<T>[] m56191j = oyg.m56191j(collection);
        if (m56191j.length == 0) {
            return FalsePredicate.falsePredicate();
        }
        if (m56191j.length == 1) {
            return m56191j[0];
        }
        return new AnyPredicate(m56191j);
    }
}
