package com.google.protobuf;

import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessage.Builder;
import com.google.protobuf.MessageOrBuilder;
import com.sunia.HTREnginev2.bnd;

/* loaded from: classes6.dex */
public class SingleFieldBuilder<MType extends GeneratedMessage, BType extends GeneratedMessage.Builder, IType extends MessageOrBuilder> implements GeneratedMessage.BuilderParent {

    /* renamed from: a */
    public GeneratedMessage.BuilderParent f37796a;

    /* renamed from: b */
    public BType f37797b;

    /* renamed from: c */
    public MType f37798c;

    /* renamed from: d */
    public boolean f37799d;

    public SingleFieldBuilder(MType message, GeneratedMessage.BuilderParent parent, boolean isClean) {
        this.f37798c = (MType) Internal.m29343a(message);
        this.f37796a = parent;
        this.f37799d = isClean;
    }

    /* renamed from: a */
    public final void m29480a() {
        GeneratedMessage.BuilderParent builderParent;
        if (this.f37797b != null) {
            this.f37798c = null;
        }
        if (!this.f37799d || (builderParent = this.f37796a) == null) {
            return;
        }
        builderParent.markDirty();
        this.f37799d = false;
    }

    public MType build() {
        this.f37799d = true;
        return getMessage();
    }

    @bnd
    public SingleFieldBuilder<MType, BType, IType> clear() {
        MType mtype = this.f37798c;
        this.f37798c = (MType) (mtype != null ? mtype.getDefaultInstanceForType() : this.f37797b.getDefaultInstanceForType());
        BType btype = this.f37797b;
        if (btype != null) {
            btype.mo28602c();
            this.f37797b = null;
        }
        m29480a();
        this.f37799d = true;
        return this;
    }

    public void dispose() {
        this.f37796a = null;
    }

    public BType getBuilder() {
        if (this.f37797b == null) {
            BType btype = (BType) this.f37798c.newBuilderForType(this);
            this.f37797b = btype;
            btype.mergeFrom(this.f37798c);
            this.f37797b.markClean();
        }
        return this.f37797b;
    }

    public MType getMessage() {
        if (this.f37798c == null) {
            this.f37798c = (MType) this.f37797b.buildPartial();
        }
        return this.f37798c;
    }

    public IType getMessageOrBuilder() {
        BType btype = this.f37797b;
        return btype != null ? btype : this.f37798c;
    }

    @Override // com.google.protobuf.AbstractMessage.BuilderParent
    public void markDirty() {
        m29480a();
    }

    @bnd
    public SingleFieldBuilder<MType, BType, IType> mergeFrom(MType value) {
        if (this.f37797b == null) {
            Message message = this.f37798c;
            if (message == message.getDefaultInstanceForType()) {
                this.f37798c = value;
                m29480a();
                return this;
            }
        }
        getBuilder().mergeFrom(value);
        m29480a();
        return this;
    }

    @bnd
    public SingleFieldBuilder<MType, BType, IType> setMessage(MType message) {
        this.f37798c = (MType) Internal.m29343a(message);
        BType btype = this.f37797b;
        if (btype != null) {
            btype.mo28602c();
            this.f37797b = null;
        }
        m29480a();
        return this;
    }
}
