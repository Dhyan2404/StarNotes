package org.apache.commons.collections4.functors;

import com.sunia.HTREnginev2.oyg;
import java.util.Collection;
import org.apache.commons.collections4.Predicate;

/* loaded from: classes11.dex */
public final class NonePredicate<T> extends AbstractQuantifierPredicate<T> {
    private static final long serialVersionUID = 2007613066565892961L;

    public NonePredicate(Predicate<? super T>... predicateArr) {
        super(predicateArr);
    }

    public static <T> Predicate<T> nonePredicate(Predicate<? super T>... predicateArr) {
        oyg.m56189h(predicateArr);
        if (predicateArr.length == 0) {
            return TruePredicate.truePredicate();
        }
        return new NonePredicate(oyg.m56186e(predicateArr));
    }

    @Override // org.apache.commons.collections4.Predicate
    public boolean evaluate(T t) {
        for (Predicate<? super T> predicate : this.iPredicates) {
            if (predicate.evaluate(t)) {
                return false;
            }
        }
        return true;
    }

    public static <T> Predicate<T> nonePredicate(Collection<? extends Predicate<? super T>> collection) {
        Predicate[] m56191j = oyg.m56191j(collection);
        if (m56191j.length == 0) {
            return TruePredicate.truePredicate();
        }
        return new NonePredicate(m56191j);
    }
}
