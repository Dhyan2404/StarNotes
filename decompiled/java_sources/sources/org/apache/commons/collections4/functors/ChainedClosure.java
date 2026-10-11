package org.apache.commons.collections4.functors;

import com.sunia.HTREnginev2.oyg;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.collections4.Closure;

/* loaded from: classes11.dex */
public class ChainedClosure<E> implements Closure<E>, Serializable {
    private static final long serialVersionUID = -3520677225766901240L;
    private final Closure<? super E>[] iClosures;

    private ChainedClosure(boolean z, Closure<? super E>... closureArr) {
        this.iClosures = z ? oyg.m56185d(closureArr) : closureArr;
    }

    public static <E> Closure<E> chainedClosure(Closure<? super E>... closureArr) {
        oyg.m56188g(closureArr);
        if (closureArr.length == 0) {
            return NOPClosure.nopClosure();
        }
        return new ChainedClosure(closureArr);
    }

    @Override // org.apache.commons.collections4.Closure
    public void execute(E e) {
        for (Closure<? super E> closure : this.iClosures) {
            closure.execute(e);
        }
    }

    public Closure<? super E>[] getClosures() {
        return oyg.m56185d(this.iClosures);
    }

    public ChainedClosure(Closure<? super E>... closureArr) {
        this(true, closureArr);
    }

    public static <E> Closure<E> chainedClosure(Collection<? extends Closure<? super E>> collection) {
        if (collection != null) {
            if (collection.size() == 0) {
                return NOPClosure.nopClosure();
            }
            Closure[] closureArr = new Closure[collection.size()];
            Iterator<? extends Closure<? super E>> it2 = collection.iterator();
            int i = 0;
            while (it2.hasNext()) {
                closureArr[i] = it2.next();
                i++;
            }
            oyg.m56188g(closureArr);
            return new ChainedClosure(false, closureArr);
        }
        throw new NullPointerException("Closure collection must not be null");
    }
}
