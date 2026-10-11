package onyx.org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import onyx.org.apache.commons.io.IOUtils;
import onyx.org.apache.commons.io.function.IOConsumer;
import onyx.org.apache.commons.io.input.ObservableInputStream;

/* loaded from: classes11.dex */
public class ObservableInputStream extends ProxyInputStream {

    /* renamed from: e */
    public final List<Observer> f104340e;

    /* loaded from: classes11.dex */
    public static abstract class Observer {
        public void closed() throws IOException {
        }

        public void data(int i) throws IOException {
        }

        public void error(IOException iOException) throws IOException {
            throw iOException;
        }

        public void finished() throws IOException {
        }

        public void data(byte[] bArr, int i, int i2) throws IOException {
        }
    }

    public ObservableInputStream(InputStream inputStream) {
        this(inputStream, new ArrayList());
    }

    /* renamed from: H */
    public final void m65455H(IOConsumer<Observer> iOConsumer) throws IOException {
        IOConsumer.forAll(iOConsumer, this.f104340e);
    }

    public void add(Observer observer) {
        this.f104340e.add(observer);
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            super.close();
            e = null;
        } catch (IOException e) {
            e = e;
        }
        if (e == null) {
            noteClosed();
        } else {
            noteError(e);
        }
    }

    public void consume() throws IOException {
        IOUtils.consume(this);
    }

    /* renamed from: f0 */
    public final void m65456f0(byte[] bArr, int i, int i2, IOException iOException) throws IOException {
        if (iOException != null) {
            noteError(iOException);
            throw iOException;
        }
        if (i2 == -1) {
            noteFinished();
        } else if (i2 > 0) {
            noteDataBytes(bArr, i, i2);
        }
    }

    public List<Observer> getObservers() {
        return new ArrayList(this.f104340e);
    }

    public void noteClosed() throws IOException {
        m65455H(new IOConsumer() { // from class: com.sunia.HTREnginev2.lek
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                ((ObservableInputStream.Observer) obj).closed();
            }
        });
    }

    public void noteDataByte(final int i) throws IOException {
        m65455H(new IOConsumer() { // from class: com.sunia.HTREnginev2.mek
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                ((ObservableInputStream.Observer) obj).data(i);
            }
        });
    }

    public void noteDataBytes(final byte[] bArr, final int i, final int i2) throws IOException {
        m65455H(new IOConsumer() { // from class: com.sunia.HTREnginev2.nek
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                ((ObservableInputStream.Observer) obj).data(bArr, i, i2);
            }
        });
    }

    public void noteError(final IOException iOException) throws IOException {
        m65455H(new IOConsumer() { // from class: com.sunia.HTREnginev2.kek
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                ((ObservableInputStream.Observer) obj).error(iOException);
            }
        });
    }

    public void noteFinished() throws IOException {
        m65455H(new IOConsumer() { // from class: com.sunia.HTREnginev2.jek
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                ((ObservableInputStream.Observer) obj).finished();
            }
        });
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i;
        try {
            i = super.read();
            e = null;
        } catch (IOException e) {
            e = e;
            i = 0;
        }
        if (e != null) {
            noteError(e);
            throw e;
        }
        if (i == -1) {
            noteFinished();
        } else {
            noteDataByte(i);
        }
        return i;
    }

    public void remove(Observer observer) {
        this.f104340e.remove(observer);
    }

    public void removeAllObservers() {
        this.f104340e.clear();
    }

    public ObservableInputStream(InputStream inputStream, List<Observer> list) {
        super(inputStream);
        this.f104340e = list;
    }

    public ObservableInputStream(InputStream inputStream, Observer... observerArr) {
        this(inputStream, (List<Observer>) Arrays.asList(observerArr));
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int i;
        try {
            i = super.read(bArr);
            e = null;
        } catch (IOException e) {
            e = e;
            i = 0;
        }
        m65456f0(bArr, 0, i, e);
        return i;
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        try {
            i3 = super.read(bArr, i, i2);
            e = null;
        } catch (IOException e) {
            e = e;
            i3 = 0;
        }
        m65456f0(bArr, i, i3, e);
        return i3;
    }
}
