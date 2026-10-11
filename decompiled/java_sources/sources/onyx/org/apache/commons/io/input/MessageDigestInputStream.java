package onyx.org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;
import onyx.org.apache.commons.io.input.ObservableInputStream;

/* loaded from: classes11.dex */
public final class MessageDigestInputStream extends ObservableInputStream {

    /* renamed from: f */
    public final MessageDigest f104323f;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<MessageDigestInputStream, Builder> {

        /* renamed from: l */
        public MessageDigest f104324l;

        public Builder setMessageDigest(MessageDigest messageDigest) {
            this.f104324l = messageDigest;
            return this;
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public MessageDigestInputStream get() throws IOException {
            return new MessageDigestInputStream(getInputStream(), this.f104324l);
        }

        public Builder setMessageDigest(String str) throws NoSuchAlgorithmException {
            this.f104324l = MessageDigest.getInstance(str);
            return this;
        }
    }

    /* loaded from: classes11.dex */
    public static class MessageDigestMaintainingObserver extends ObservableInputStream.Observer {

        /* renamed from: a */
        public final MessageDigest f104325a;

        public MessageDigestMaintainingObserver(MessageDigest messageDigest) {
            Objects.requireNonNull(messageDigest, "messageDigest");
            this.f104325a = messageDigest;
        }

        @Override // onyx.org.apache.commons.io.input.ObservableInputStream.Observer
        public void data(byte[] bArr, int i, int i2) throws IOException {
            this.f104325a.update(bArr, i, i2);
        }

        @Override // onyx.org.apache.commons.io.input.ObservableInputStream.Observer
        public void data(int i) throws IOException {
            this.f104325a.update((byte) i);
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public MessageDigest getMessageDigest() {
        return this.f104323f;
    }

    public MessageDigestInputStream(InputStream inputStream, MessageDigest messageDigest) {
        super(inputStream, new MessageDigestMaintainingObserver(messageDigest));
        this.f104323f = messageDigest;
    }
}
