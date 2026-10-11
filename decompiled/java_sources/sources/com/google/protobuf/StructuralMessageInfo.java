package com.google.protobuf;

import com.sunia.HTREnginev2.htd;
import com.sunia.HTREnginev2.xmj;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@htd
/* loaded from: classes6.dex */
public final class StructuralMessageInfo implements xmj {

    /* renamed from: a */
    public final ProtoSyntax f37823a;

    /* renamed from: b */
    public final boolean f37824b;

    /* renamed from: c */
    public final int[] f37825c;

    /* renamed from: d */
    public final FieldInfo[] f37826d;

    /* renamed from: e */
    public final MessageLite f37827e;

    public StructuralMessageInfo(ProtoSyntax syntax, boolean messageSetWireFormat, int[] checkInitialized, FieldInfo[] fields, Object defaultInstance) {
        this.f37823a = syntax;
        this.f37824b = messageSetWireFormat;
        this.f37825c = checkInitialized;
        this.f37826d = fields;
        this.f37827e = (MessageLite) Internal.m29344b(defaultInstance, "defaultInstance");
    }

    /* renamed from: e */
    public static Builder m29491e() {
        return new Builder();
    }

    /* renamed from: f */
    public static Builder m29492f(int numFields) {
        return new Builder(numFields);
    }

    @Override // com.sunia.HTREnginev2.xmj
    /* renamed from: a */
    public boolean mo29493a() {
        return this.f37824b;
    }

    @Override // com.sunia.HTREnginev2.xmj
    /* renamed from: b */
    public MessageLite mo29494b() {
        return this.f37827e;
    }

    /* renamed from: c */
    public int[] m29495c() {
        return this.f37825c;
    }

    /* renamed from: d */
    public FieldInfo[] m29496d() {
        return this.f37826d;
    }

    @Override // com.sunia.HTREnginev2.xmj
    public ProtoSyntax getSyntax() {
        return this.f37823a;
    }

    /* loaded from: classes6.dex */
    public static final class Builder {

        /* renamed from: a */
        public final List<FieldInfo> f37828a;

        /* renamed from: b */
        public ProtoSyntax f37829b;

        /* renamed from: c */
        public boolean f37830c;

        /* renamed from: d */
        public boolean f37831d;

        /* renamed from: e */
        public int[] f37832e;

        /* renamed from: f */
        public Object f37833f;

        public Builder() {
            this.f37832e = null;
            this.f37828a = new ArrayList();
        }

        public StructuralMessageInfo build() {
            if (this.f37830c) {
                throw new IllegalStateException("Builder can only build once");
            }
            if (this.f37829b == null) {
                throw new IllegalStateException("Must specify a proto syntax");
            }
            this.f37830c = true;
            Collections.sort(this.f37828a);
            return new StructuralMessageInfo(this.f37829b, this.f37831d, this.f37832e, (FieldInfo[]) this.f37828a.toArray(new FieldInfo[0]), this.f37833f);
        }

        public void withCheckInitialized(int[] checkInitialized) {
            this.f37832e = checkInitialized;
        }

        public void withDefaultInstance(Object defaultInstance) {
            this.f37833f = defaultInstance;
        }

        public void withField(FieldInfo field) {
            if (this.f37830c) {
                throw new IllegalStateException("Builder can only build once");
            }
            this.f37828a.add(field);
        }

        public void withMessageSetWireFormat(boolean messageSetWireFormat) {
            this.f37831d = messageSetWireFormat;
        }

        public void withSyntax(ProtoSyntax syntax) {
            this.f37829b = (ProtoSyntax) Internal.m29344b(syntax, "syntax");
        }

        public Builder(int numFields) {
            this.f37832e = null;
            this.f37828a = new ArrayList(numFields);
        }
    }
}
