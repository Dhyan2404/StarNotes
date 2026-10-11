package onyx.org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;
import onyx.org.apache.commons.io.input.ObservableInputStream;

@Deprecated
/* loaded from: classes11.dex */
public class MessageDigestCalculatingInputStream extends ObservableInputStream {

    /* renamed from: g */
    public static final String f104319g = "MD5";

    /* renamed from: f */
    public final MessageDigest f104320f;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<MessageDigestCalculatingInputStream, Builder> {

        /* renamed from: l */
        public MessageDigest f104321l;

        public Builder() {
            try {
                this.f104321l = MessageDigestCalculatingInputStream.m65445g0();
            } catch (NoSuchAlgorithmException e) {
                throw new IllegalStateException(e);
            }
        }

        public void setMessageDigest(MessageDigest messageDigest) {
            this.f104321l = messageDigest;
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public MessageDigestCalculatingInputStream get() throws IOException {
            return new MessageDigestCalculatingInputStream(getInputStream(), this.f104321l);
        }

        public void setMessageDigest(String str) throws NoSuchAlgorithmException {
            this.f104321l = MessageDigest.getInstance(str);
        }
    }

    /* loaded from: classes11.dex */
    public static class MessageDigestMaintainingObserver extends ObservableInputStream.Observer {

        /* renamed from: a */
        public final MessageDigest f104322a;

        public MessageDigestMaintainingObserver(MessageDigest messageDigest) {
            Objects.requireNonNull(messageDigest, "messageDigest");
            this.f104322a = messageDigest;
        }

        @Override // onyx.org.apache.commons.io.input.ObservableInputStream.Observer
        public void data(byte[] bArr, int i, int i2) throws IOException {
            this.f104322a.update(bArr, i, i2);
        }

        @Override // onyx.org.apache.commons.io.input.ObservableInputStream.Observer
        public void data(int i) throws IOException {
            this.f104322a.update((byte) i);
        }
    }

    @Deprecated
    public MessageDigestCalculatingInputStream(InputStream inputStream) throws NoSuchAlgorithmException {
        this(inputStream, m65445g0());
    }

    public static Builder builder() {
        return new Builder();
    }

    /* renamed from: g0 */
    public static MessageDigest m65445g0() throws NoSuchAlgorithmException {
        return MessageDigest.getInstance("MD5");
    }

    public MessageDigest getMessageDigest() {
        return this.f104320f;
    }

    @Deprecated
    public MessageDigestCalculatingInputStream(InputStream inputStream, MessageDigest messageDigest) {
        super(inputStream, new MessageDigestMaintainingObserver(messageDigest));
        this.f104320f = messageDigest;
    }

    @Deprecated
    public MessageDigestCalculatingInputStream(InputStream inputStream, String str) throws NoSuchAlgorithmException {
        this(inputStream, MessageDigest.getInstance(str));
    }
}
