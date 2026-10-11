package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.proto.Protobuf;
import java.lang.annotation.Annotation;

/* loaded from: classes6.dex */
public final class AtProtobuf {

    /* renamed from: a */
    public int f35865a;

    /* renamed from: b */
    public Protobuf.IntEncoding f35866b = Protobuf.IntEncoding.DEFAULT;

    /* renamed from: com.google.firebase.encoders.proto.AtProtobuf$a */
    /* loaded from: classes6.dex */
    public static final class C6461a implements Protobuf {

        /* renamed from: a */
        public final int f35867a;

        /* renamed from: g */
        public final Protobuf.IntEncoding f35868g;

        public C6461a(int i, Protobuf.IntEncoding intEncoding) {
            this.f35867a = i;
            this.f35868g = intEncoding;
        }

        @Override // java.lang.annotation.Annotation
        public Class<? extends Annotation> annotationType() {
            return Protobuf.class;
        }

        @Override // java.lang.annotation.Annotation
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Protobuf)) {
                return false;
            }
            Protobuf protobuf = (Protobuf) obj;
            return this.f35867a == protobuf.tag() && this.f35868g.equals(protobuf.intEncoding());
        }

        @Override // java.lang.annotation.Annotation
        public int hashCode() {
            return (14552422 ^ this.f35867a) + (this.f35868g.hashCode() ^ 2041407134);
        }

        @Override // com.google.firebase.encoders.proto.Protobuf
        public Protobuf.IntEncoding intEncoding() {
            return this.f35868g;
        }

        @Override // com.google.firebase.encoders.proto.Protobuf
        public int tag() {
            return this.f35867a;
        }

        @Override // java.lang.annotation.Annotation
        public String toString() {
            return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f35867a + "intEncoding=" + this.f35868g + ')';
        }
    }

    public static AtProtobuf builder() {
        return new AtProtobuf();
    }

    public Protobuf build() {
        return new C6461a(this.f35865a, this.f35866b);
    }

    public AtProtobuf intEncoding(Protobuf.IntEncoding intEncoding) {
        this.f35866b = intEncoding;
        return this;
    }

    public AtProtobuf tag(int i) {
        this.f35865a = i;
        return this;
    }
}
