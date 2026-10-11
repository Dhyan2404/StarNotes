package org.apache.commons.collections4.functors;

import com.sunia.HTREnginev2.oyg;
import java.util.Collection;
import org.apache.commons.collections4.Predicate;

/* loaded from: classes11.dex */
public final class AllPredicate<T> extends AbstractQuantifierPredicate<T> {
    private static final long serialVersionUID = -3094696765038308799L;

    public AllPredicate(Predicate<? super T>... predicateArr) {
        super(predicateArr);
    }

    public static <T> Predicate<T> allPredicate(Predicate<? super T>... predicateArr) {
        oyg.m56189h(predicateArr);
        if (predicateArr.length == 0) {
            return TruePredicate.truePredicate();
        }
        if (predicateArr.length == 1) {
            return oyg.m56183b(predicateArr[0]);
        }
        return new AllPredicate(oyg.m56186e(predicateArr));
    }

    @Override // org.apache.commons.collections4.Predicate
    public boolean evaluate(T t) {
        for (Predicate<? super T> predicate : this.iPredicates) {
            if (!predicate.evaluate(t)) {
                return false;
            }
        }
        return true;
    }

    public static <T> Predicate<T> allPredicate(Collection<? extends Predicate<? super T>> collection) {
        Predicate[] m56191j = oyg.m56191j(collection);
        if (m56191j.length == 0) {
            return TruePredicate.truePredicate();
        }
        if (m56191j.length == 1) {
            return oyg.m56183b(m56191j[0]);
        }
        return new AllPredicate(m56191j);
    }
}
