package org.apache.commons.collections4.functors;

import com.sunia.HTREnginev2.oyg;
import java.io.Serializable;
import java.util.Collection;
import org.apache.commons.collections4.Transformer;

/* loaded from: classes11.dex */
public class ChainedTransformer<T> implements Transformer<T, T>, Serializable {
    private static final long serialVersionUID = 3514945074733160196L;
    private final Transformer<? super T, ? extends T>[] iTransformers;

    private ChainedTransformer(boolean z, Transformer<? super T, ? extends T>[] transformerArr) {
        this.iTransformers = z ? oyg.m56187f(transformerArr) : transformerArr;
    }

    public static <T> Transformer<T, T> chainedTransformer(Transformer<? super T, ? extends T>... transformerArr) {
        oyg.m56190i(transformerArr);
        if (transformerArr.length == 0) {
            return NOPTransformer.nopTransformer();
        }
        return new ChainedTransformer(transformerArr);
    }

    public Transformer<? super T, ? extends T>[] getTransformers() {
        return oyg.m56187f(this.iTransformers);
    }

    @Override // org.apache.commons.collections4.Transformer
    public T transform(T t) {
        for (Transformer<? super T, ? extends T> transformer : this.iTransformers) {
            t = transformer.transform(t);
        }
        return t;
    }

    public ChainedTransformer(Transformer<? super T, ? extends T>... transformerArr) {
        this(true, transformerArr);
    }

    public static <T> Transformer<T, T> chainedTransformer(Collection<? extends Transformer<? super T, ? extends T>> collection) {
        if (collection != null) {
            if (collection.size() == 0) {
                return NOPTransformer.nopTransformer();
            }
            Transformer[] transformerArr = (Transformer[]) collection.toArray(new Transformer[collection.size()]);
            oyg.m56190i(transformerArr);
            return new ChainedTransformer(false, transformerArr);
        }
        throw new NullPointerException("Transformer collection must not be null");
    }
}
