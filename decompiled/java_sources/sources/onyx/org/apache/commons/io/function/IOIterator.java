package onyx.org.apache.commons.io.function;

import com.sunia.HTREnginev2.csn;
import com.sunia.HTREnginev2.tdi;
import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes11.dex */
public interface IOIterator<E> {
    static <E> IOIterator<E> adapt(Iterator<E> it2) {
        return tdi.m57364a(it2);
    }

    default Iterator<E> asIterator() {
        return new csn(this);
    }

    default void forEachRemaining(IOConsumer<? super E> iOConsumer) throws IOException {
        Objects.requireNonNull(iOConsumer);
        while (hasNext()) {
            iOConsumer.accept(next());
        }
    }

    boolean hasNext() throws IOException;

    E next() throws IOException;

    default void remove() throws IOException {
        unwrap().remove();
    }

    Iterator<E> unwrap();
}
