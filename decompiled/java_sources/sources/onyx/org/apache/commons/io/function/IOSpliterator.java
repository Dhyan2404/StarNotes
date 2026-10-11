package onyx.org.apache.commons.io.function;

import com.sunia.HTREnginev2.dei;
import com.sunia.HTREnginev2.hsn;
import java.util.Objects;
import java.util.Spliterator;

/* loaded from: classes11.dex */
public interface IOSpliterator<T> {
    static <E> IOSpliterator<E> adapt(Spliterator<E> spliterator) {
        return dei.m53640a(spliterator);
    }

    default Spliterator<T> asSpliterator() {
        return new hsn(this);
    }

    default int characteristics() {
        return unwrap().characteristics();
    }

    default long estimateSize() {
        return unwrap().estimateSize();
    }

    default void forEachRemaining(IOConsumer<? super T> iOConsumer) {
        do {
        } while (tryAdvance(iOConsumer));
    }

    default IOComparator<? super T> getComparator() {
        return (IOComparator) unwrap().getComparator();
    }

    default long getExactSizeIfKnown() {
        return unwrap().getExactSizeIfKnown();
    }

    default boolean hasCharacteristics(int i) {
        return unwrap().hasCharacteristics(i);
    }

    default boolean tryAdvance(IOConsumer<? super T> iOConsumer) {
        Spliterator<T> unwrap = unwrap();
        Objects.requireNonNull(iOConsumer, "action");
        return unwrap.tryAdvance(iOConsumer.asConsumer());
    }

    default IOSpliterator<T> trySplit() {
        return adapt(unwrap().trySplit());
    }

    Spliterator<T> unwrap();
}
