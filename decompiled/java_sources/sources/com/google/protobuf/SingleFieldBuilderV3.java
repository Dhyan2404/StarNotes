package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessage.Builder;
import com.google.protobuf.MessageOrBuilder;
import com.sunia.HTREnginev2.bnd;

/* loaded from: classes6.dex */
public class SingleFieldBuilderV3<MType extends AbstractMessage, BType extends AbstractMessage.Builder, IType extends MessageOrBuilder> implements AbstractMessage.BuilderParent {

    /* renamed from: a */
    public AbstractMessage.BuilderParent f37800a;

    /* renamed from: b */
    public BType f37801b;

    /* renamed from: c */
    public MType f37802c;

    /* renamed from: d */
    public boolean f37803d;

    public SingleFieldBuilderV3(MType message, AbstractMessage.BuilderParent parent, boolean isClean) {
        this.f37802c = (MType) Internal.m29343a(message);
        this.f37800a = parent;
        this.f37803d = isClean;
    }

    /* renamed from: a */
    public final void m29481a() {
        AbstractMessage.BuilderParent builderParent;
        if (this.f37801b != null) {
            this.f37802c = null;
        }
        if (!this.f37803d || (builderParent = this.f37800a) == null) {
            return;
        }
        builderParent.markDirty();
        this.f37803d = false;
    }

    public MType build() {
        this.f37803d = true;
        return getMessage();
    }

    @bnd
    public SingleFieldBuilderV3<MType, BType, IType> clear() {
        MType mtype = this.f37802c;
        this.f37802c = (MType) (mtype != null ? mtype.getDefaultInstanceForType() : this.f37801b.getDefaultInstanceForType());
        BType btype = this.f37801b;
        if (btype != null) {
            btype.mo28602c();
            this.f37801b = null;
        }
        m29481a();
        this.f37803d = true;
        return this;
    }

    public void dispose() {
        this.f37800a = null;
    }

    public BType getBuilder() {
        if (this.f37801b == null) {
            BType btype = (BType) this.f37802c.newBuilderForType(this);
            this.f37801b = btype;
            btype.mergeFrom(this.f37802c);
            this.f37801b.markClean();
        }
        return this.f37801b;
    }

    public MType getMessage() {
        if (this.f37802c == null) {
            this.f37802c = (MType) this.f37801b.buildPartial();
        }
        return this.f37802c;
    }

    public IType getMessageOrBuilder() {
        BType btype = this.f37801b;
        return btype != null ? btype : this.f37802c;
    }

    @Override // com.google.protobuf.AbstractMessage.BuilderParent
    public void markDirty() {
        m29481a();
    }

    @bnd
    public SingleFieldBuilderV3<MType, BType, IType> mergeFrom(MType value) {
        if (this.f37801b == null) {
            Message message = this.f37802c;
            if (message == message.getDefaultInstanceForType()) {
                this.f37802c = value;
                m29481a();
                return this;
            }
        }
        getBuilder().mergeFrom(value);
        m29481a();
        return this;
    }

    @bnd
    public SingleFieldBuilderV3<MType, BType, IType> setMessage(MType message) {
        this.f37802c = (MType) Internal.m29343a(message);
        BType btype = this.f37801b;
        if (btype != null) {
            btype.mo28602c();
            this.f37801b = null;
        }
        m29481a();
        return this;
    }
}
