package com.google.protobuf;

import java.io.IOException;

/* loaded from: classes6.dex */
public class LazyFieldLite {

    /* renamed from: d */
    public static final ExtensionRegistryLite f37685d = ExtensionRegistryLite.getEmptyRegistry();

    /* renamed from: a */
    public ByteString f37686a;

    /* renamed from: b */
    public ExtensionRegistryLite f37687b;

    /* renamed from: c */
    public volatile ByteString f37688c;
    protected volatile MessageLite value;

    public LazyFieldLite(ExtensionRegistryLite extensionRegistry, ByteString bytes) {
        m29354a(extensionRegistry, bytes);
        this.f37687b = extensionRegistry;
        this.f37686a = bytes;
    }

    /* renamed from: a */
    public static void m29354a(ExtensionRegistryLite extensionRegistry, ByteString bytes) {
        if (extensionRegistry == null) {
            throw new NullPointerException("found null ExtensionRegistry");
        }
        if (bytes == null) {
            throw new NullPointerException("found null ByteString");
        }
    }

    /* renamed from: b */
    public static MessageLite m29355b(MessageLite value, ByteString otherBytes, ExtensionRegistryLite extensionRegistry) {
        try {
            return value.toBuilder().mergeFrom(otherBytes, extensionRegistry).build();
        } catch (InvalidProtocolBufferException unused) {
            return value;
        }
    }

    public static LazyFieldLite fromValue(MessageLite value) {
        LazyFieldLite lazyFieldLite = new LazyFieldLite();
        lazyFieldLite.setValue(value);
        return lazyFieldLite;
    }

    /* renamed from: c */
    public void m29356c(Writer writer, int fieldNumber) throws IOException {
        if (this.f37688c != null) {
            writer.writeBytes(fieldNumber, this.f37688c);
            return;
        }
        ByteString byteString = this.f37686a;
        if (byteString != null) {
            writer.writeBytes(fieldNumber, byteString);
        } else if (this.value != null) {
            writer.mo29752z(fieldNumber, this.value);
        } else {
            writer.writeBytes(fieldNumber, ByteString.EMPTY);
        }
    }

    public void clear() {
        this.f37686a = null;
        this.value = null;
        this.f37688c = null;
    }

    public boolean containsDefaultInstance() {
        ByteString byteString;
        ByteString byteString2 = this.f37688c;
        ByteString byteString3 = ByteString.EMPTY;
        return byteString2 == byteString3 || (this.value == null && ((byteString = this.f37686a) == null || byteString == byteString3));
    }

    public void ensureInitialized(MessageLite defaultInstance) {
        if (this.value != null) {
            return;
        }
        synchronized (this) {
            if (this.value != null) {
                return;
            }
            try {
                if (this.f37686a != null) {
                    this.value = defaultInstance.getParserForType().parseFrom(this.f37686a, this.f37687b);
                    this.f37688c = this.f37686a;
                } else {
                    this.value = defaultInstance;
                    this.f37688c = ByteString.EMPTY;
                }
            } catch (InvalidProtocolBufferException unused) {
                this.value = defaultInstance;
                this.f37688c = ByteString.EMPTY;
            }
        }
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof LazyFieldLite)) {
            return false;
        }
        LazyFieldLite lazyFieldLite = (LazyFieldLite) o;
        MessageLite messageLite = this.value;
        MessageLite messageLite2 = lazyFieldLite.value;
        return (messageLite == null && messageLite2 == null) ? toByteString().equals(lazyFieldLite.toByteString()) : (messageLite == null || messageLite2 == null) ? messageLite != null ? messageLite.equals(lazyFieldLite.getValue(messageLite.getDefaultInstanceForType())) : getValue(messageLite2.getDefaultInstanceForType()).equals(messageLite2) : messageLite.equals(messageLite2);
    }

    public int getSerializedSize() {
        if (this.f37688c != null) {
            return this.f37688c.size();
        }
        ByteString byteString = this.f37686a;
        if (byteString != null) {
            return byteString.size();
        }
        if (this.value != null) {
            return this.value.getSerializedSize();
        }
        return 0;
    }

    public MessageLite getValue(MessageLite defaultInstance) {
        ensureInitialized(defaultInstance);
        return this.value;
    }

    public int hashCode() {
        return 1;
    }

    public void merge(LazyFieldLite other) {
        ByteString byteString;
        if (other.containsDefaultInstance()) {
            return;
        }
        if (containsDefaultInstance()) {
            set(other);
            return;
        }
        if (this.f37687b == null) {
            this.f37687b = other.f37687b;
        }
        ByteString byteString2 = this.f37686a;
        if (byteString2 != null && (byteString = other.f37686a) != null) {
            this.f37686a = byteString2.concat(byteString);
            return;
        }
        if (this.value == null && other.value != null) {
            setValue(m29355b(other.value, this.f37686a, this.f37687b));
        } else if (this.value == null || other.value != null) {
            setValue(this.value.toBuilder().mergeFrom(other.value).build());
        } else {
            setValue(m29355b(this.value, other.f37686a, other.f37687b));
        }
    }

    public void mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        if (containsDefaultInstance()) {
            setByteString(input.readBytes(), extensionRegistry);
            return;
        }
        if (this.f37687b == null) {
            this.f37687b = extensionRegistry;
        }
        ByteString byteString = this.f37686a;
        if (byteString != null) {
            setByteString(byteString.concat(input.readBytes()), this.f37687b);
        } else {
            try {
                setValue(this.value.toBuilder().mergeFrom(input, extensionRegistry).build());
            } catch (InvalidProtocolBufferException unused) {
            }
        }
    }

    public void set(LazyFieldLite other) {
        this.f37686a = other.f37686a;
        this.value = other.value;
        this.f37688c = other.f37688c;
        ExtensionRegistryLite extensionRegistryLite = other.f37687b;
        if (extensionRegistryLite != null) {
            this.f37687b = extensionRegistryLite;
        }
    }

    public void setByteString(ByteString bytes, ExtensionRegistryLite extensionRegistry) {
        m29354a(extensionRegistry, bytes);
        this.f37686a = bytes;
        this.f37687b = extensionRegistry;
        this.value = null;
        this.f37688c = null;
    }

    public MessageLite setValue(MessageLite value) {
        MessageLite messageLite = this.value;
        this.f37686a = null;
        this.f37688c = null;
        this.value = value;
        return messageLite;
    }

    public ByteString toByteString() {
        if (this.f37688c != null) {
            return this.f37688c;
        }
        ByteString byteString = this.f37686a;
        if (byteString != null) {
            return byteString;
        }
        synchronized (this) {
            if (this.f37688c != null) {
                return this.f37688c;
            }
            if (this.value == null) {
                this.f37688c = ByteString.EMPTY;
            } else {
                this.f37688c = this.value.toByteString();
            }
            return this.f37688c;
        }
    }

    public LazyFieldLite() {
    }
}
