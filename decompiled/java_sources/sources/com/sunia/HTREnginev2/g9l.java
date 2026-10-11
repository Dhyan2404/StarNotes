package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ValueEncoderContext;
import com.google.firebase.encoders.proto.C6462a;
import java.io.IOException;

/* loaded from: classes6.dex */
public class g9l implements ValueEncoderContext {

    /* renamed from: a */
    public boolean f70824a = false;

    /* renamed from: b */
    public boolean f70825b = false;

    /* renamed from: c */
    public FieldDescriptor f70826c;

    /* renamed from: d */
    public final C6462a f70827d;

    public g9l(C6462a c6462a) {
        this.f70827d = c6462a;
    }

    /* renamed from: a */
    public final void m54243a() {
        if (this.f70824a) {
            throw new EncodingException("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f70824a = true;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    @NonNull
    public ValueEncoderContext add(@Nullable String str) throws IOException {
        m54243a();
        this.f70827d.m28100d(this.f70826c, str, this.f70825b);
        return this;
    }

    /* renamed from: b */
    public void m54244b(FieldDescriptor fieldDescriptor, boolean z) {
        this.f70824a = false;
        this.f70826c = fieldDescriptor;
        this.f70825b = z;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    @NonNull
    public ValueEncoderContext add(float f) throws IOException {
        m54243a();
        this.f70827d.m28099c(this.f70826c, f, this.f70825b);
        return this;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    @NonNull
    public ValueEncoderContext add(double d) throws IOException {
        m54243a();
        this.f70827d.m28098b(this.f70826c, d, this.f70825b);
        return this;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    @NonNull
    public ValueEncoderContext add(int i) throws IOException {
        m54243a();
        this.f70827d.m28102f(this.f70826c, i, this.f70825b);
        return this;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    @NonNull
    public ValueEncoderContext add(long j) throws IOException {
        m54243a();
        this.f70827d.m28104h(this.f70826c, j, this.f70825b);
        return this;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    @NonNull
    public ValueEncoderContext add(boolean z) throws IOException {
        m54243a();
        this.f70827d.m28106j(this.f70826c, z, this.f70825b);
        return this;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    @NonNull
    public ValueEncoderContext add(@NonNull byte[] bArr) throws IOException {
        m54243a();
        this.f70827d.m28100d(this.f70826c, bArr, this.f70825b);
        return this;
    }
}
