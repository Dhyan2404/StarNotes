package com.google.firebase.encoders.proto;

import androidx.annotation.NonNull;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import com.google.firebase.encoders.proto.ProtobufEncoder;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes6.dex */
public class ProtobufEncoder {

    /* renamed from: a */
    public final Map<Class<?>, ObjectEncoder<?>> f35869a;

    /* renamed from: b */
    public final Map<Class<?>, ValueEncoder<?>> f35870b;

    /* renamed from: c */
    public final ObjectEncoder<Object> f35871c;

    public ProtobufEncoder(Map<Class<?>, ObjectEncoder<?>> map, Map<Class<?>, ValueEncoder<?>> map2, ObjectEncoder<Object> objectEncoder) {
        this.f35869a = map;
        this.f35870b = map2;
        this.f35871c = objectEncoder;
    }

    public static Builder builder() {
        return new Builder();
    }

    public void encode(@NonNull Object obj, @NonNull OutputStream outputStream) throws IOException {
        new C6462a(outputStream, this.f35869a, this.f35870b, this.f35871c).m28110o(obj);
    }

    /* loaded from: classes6.dex */
    public static final class Builder implements EncoderConfig<Builder> {

        /* renamed from: d */
        public static final ObjectEncoder<Object> f35872d = new ObjectEncoder() { // from class: com.sunia.HTREnginev2.f9l
            @Override // com.sunia.HTREnginev2.gpf
            public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
                ProtobufEncoder.Builder.m28092b(obj, objectEncoderContext);
            }
        };

        /* renamed from: a */
        public final Map<Class<?>, ObjectEncoder<?>> f35873a = new HashMap();

        /* renamed from: b */
        public final Map<Class<?>, ValueEncoder<?>> f35874b = new HashMap();

        /* renamed from: c */
        public ObjectEncoder<Object> f35875c = f35872d;

        /* renamed from: b */
        public static /* synthetic */ void m28092b(Object obj, ObjectEncoderContext objectEncoderContext) throws IOException {
            throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }

        public ProtobufEncoder build() {
            return new ProtobufEncoder(new HashMap(this.f35873a), new HashMap(this.f35874b), this.f35875c);
        }

        @NonNull
        public Builder configureWith(@NonNull Configurator configurator) {
            configurator.configure(this);
            return this;
        }

        @NonNull
        public Builder registerFallbackEncoder(@NonNull ObjectEncoder<Object> objectEncoder) {
            this.f35875c = objectEncoder;
            return this;
        }

        @Override // com.google.firebase.encoders.config.EncoderConfig
        @NonNull
        public <U> Builder registerEncoder(@NonNull Class<U> cls, @NonNull ObjectEncoder<? super U> objectEncoder) {
            this.f35873a.put(cls, objectEncoder);
            this.f35874b.remove(cls);
            return this;
        }

        @Override // com.google.firebase.encoders.config.EncoderConfig
        @NonNull
        public <U> Builder registerEncoder(@NonNull Class<U> cls, @NonNull ValueEncoder<? super U> valueEncoder) {
            this.f35874b.put(cls, valueEncoder);
            this.f35873a.remove(cls);
            return this;
        }
    }

    @NonNull
    public byte[] encode(@NonNull Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            encode(obj, byteArrayOutputStream);
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }
}
