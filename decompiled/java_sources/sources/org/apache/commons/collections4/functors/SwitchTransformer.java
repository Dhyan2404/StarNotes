package org.apache.commons.collections4.functors;

import com.sunia.HTREnginev2.oyg;
import java.io.Serializable;
import java.util.Map;
import org.apache.commons.collections4.Predicate;
import org.apache.commons.collections4.Transformer;

/* loaded from: classes11.dex */
public class SwitchTransformer<I, O> implements Transformer<I, O>, Serializable {
    private static final long serialVersionUID = -6404460890903469332L;
    private final Transformer<? super I, ? extends O> iDefault;
    private final Predicate<? super I>[] iPredicates;
    private final Transformer<? super I, ? extends O>[] iTransformers;

    private SwitchTransformer(boolean z, Predicate<? super I>[] predicateArr, Transformer<? super I, ? extends O>[] transformerArr, Transformer<? super I, ? extends O> transformer) {
        this.iPredicates = z ? oyg.m56186e(predicateArr) : predicateArr;
        this.iTransformers = z ? oyg.m56187f(transformerArr) : transformerArr;
        this.iDefault = transformer == null ? ConstantTransformer.nullTransformer() : transformer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <I, O> Transformer<I, O> switchTransformer(Predicate<? super I>[] predicateArr, Transformer<? super I, ? extends O>[] transformerArr, Transformer<? super I, ? extends O> transformer) {
        oyg.m56189h(predicateArr);
        oyg.m56190i(transformerArr);
        if (predicateArr.length == transformerArr.length) {
            if (predicateArr.length == 0) {
                return transformer == 0 ? ConstantTransformer.nullTransformer() : transformer;
            }
            return new SwitchTransformer(predicateArr, transformerArr, transformer);
        }
        throw new IllegalArgumentException("The predicate and transformer arrays must be the same size");
    }

    public Transformer<? super I, ? extends O> getDefaultTransformer() {
        return this.iDefault;
    }

    public Predicate<? super I>[] getPredicates() {
        return oyg.m56186e(this.iPredicates);
    }

    public Transformer<? super I, ? extends O>[] getTransformers() {
        return oyg.m56187f(this.iTransformers);
    }

    @Override // org.apache.commons.collections4.Transformer
    public O transform(I i) {
        int i2 = 0;
        while (true) {
            Predicate<? super I>[] predicateArr = this.iPredicates;
            if (i2 >= predicateArr.length) {
                return this.iDefault.transform(i);
            }
            if (predicateArr[i2].evaluate(i)) {
                return this.iTransformers[i2].transform(i);
            }
            i2++;
        }
    }

    public SwitchTransformer(Predicate<? super I>[] predicateArr, Transformer<? super I, ? extends O>[] transformerArr, Transformer<? super I, ? extends O> transformer) {
        this(true, predicateArr, transformerArr, transformer);
    }

    public static <I, O> Transformer<I, O> switchTransformer(Map<? extends Predicate<? super I>, ? extends Transformer<? super I, ? extends O>> map) {
        if (map != null) {
            if (map.size() == 0) {
                return ConstantTransformer.nullTransformer();
            }
            Transformer<? super I, ? extends O> remove = map.remove(null);
            int size = map.size();
            if (size == 0) {
                return remove == null ? ConstantTransformer.nullTransformer() : remove;
            }
            Transformer[] transformerArr = new Transformer[size];
            Predicate[] predicateArr = new Predicate[size];
            int i = 0;
            for (Map.Entry<? extends Predicate<? super I>, ? extends Transformer<? super I, ? extends O>> entry : map.entrySet()) {
                predicateArr[i] = entry.getKey();
                transformerArr[i] = entry.getValue();
                i++;
            }
            return new SwitchTransformer(false, predicateArr, transformerArr, remove);
        }
        throw new NullPointerException("The predicate and transformer map must not be null");
    }
}
