package onyx.org.apache.commons.io.function;

import com.sunia.HTREnginev2.dei;
import com.sunia.HTREnginev2.tdi;
import com.sunia.HTREnginev2.xrn;
import java.io.Closeable;
import java.io.IOException;
import java.util.stream.BaseStream;
import onyx.org.apache.commons.io.function.Erase;
import onyx.org.apache.commons.io.function.IOBaseStream;
import onyx.org.apache.commons.io.function.IORunnable;

/* loaded from: classes11.dex */
public interface IOBaseStream<T, S extends IOBaseStream<T, S, B>, B extends BaseStream<T, B>> extends Closeable {
    default BaseStream<T, B> asBaseStream() {
        return new xrn(this);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    default void close() {
        unwrap().close();
    }

    default boolean isParallel() {
        return unwrap().isParallel();
    }

    default IOIterator<T> iterator() {
        return tdi.m57364a(unwrap().iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    default S onClose(final IORunnable iORunnable) throws IOException {
        return (S) wrap(unwrap().onClose(new Runnable() { // from class: com.sunia.HTREnginev2.ici
            @Override // java.lang.Runnable
            public final void run() {
                Erase.m65270g(IORunnable.this);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    default S parallel() {
        return isParallel() ? this : (S) wrap(unwrap().parallel());
    }

    /* JADX WARN: Multi-variable type inference failed */
    default S sequential() {
        return isParallel() ? (S) wrap(unwrap().sequential()) : this;
    }

    default IOSpliterator<T> spliterator() {
        return dei.m53640a(unwrap().spliterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    default S unordered() {
        return (S) wrap(unwrap().unordered());
    }

    B unwrap();

    S wrap(B b);
}
