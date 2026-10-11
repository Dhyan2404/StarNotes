package com.google.protobuf;

import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessage.Builder;
import com.google.protobuf.MessageOrBuilder;
import com.sunia.HTREnginev2.bnd;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes6.dex */
public class RepeatedFieldBuilder<MType extends GeneratedMessage, BType extends GeneratedMessage.Builder, IType extends MessageOrBuilder> implements GeneratedMessage.BuilderParent {

    /* renamed from: a */
    public GeneratedMessage.BuilderParent f37756a;

    /* renamed from: b */
    public List<MType> f37757b;

    /* renamed from: c */
    public boolean f37758c;

    /* renamed from: d */
    public List<SingleFieldBuilder<MType, BType, IType>> f37759d;

    /* renamed from: e */
    public boolean f37760e;

    /* renamed from: f */
    public C6809b<MType, BType, IType> f37761f;

    /* renamed from: g */
    public C6808a<MType, BType, IType> f37762g;

    /* renamed from: h */
    public C6810c<MType, BType, IType> f37763h;

    /* renamed from: com.google.protobuf.RepeatedFieldBuilder$a */
    /* loaded from: classes6.dex */
    public static class C6808a<MType extends GeneratedMessage, BType extends GeneratedMessage.Builder, IType extends MessageOrBuilder> extends AbstractList<BType> implements List<BType>, RandomAccess {

        /* renamed from: e */
        public RepeatedFieldBuilder<MType, BType, IType> f37764e;

        public C6808a(RepeatedFieldBuilder<MType, BType, IType> builder) {
            this.f37764e = builder;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public BType get(int index) {
            return this.f37764e.getBuilder(index);
        }

        /* renamed from: b */
        public void m29448b() {
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f37764e.getCount();
        }
    }

    /* renamed from: com.google.protobuf.RepeatedFieldBuilder$b */
    /* loaded from: classes6.dex */
    public static class C6809b<MType extends GeneratedMessage, BType extends GeneratedMessage.Builder, IType extends MessageOrBuilder> extends AbstractList<MType> implements List<MType>, RandomAccess {

        /* renamed from: e */
        public RepeatedFieldBuilder<MType, BType, IType> f37765e;

        public C6809b(RepeatedFieldBuilder<MType, BType, IType> builder) {
            this.f37765e = builder;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MType get(int index) {
            return this.f37765e.getMessage(index);
        }

        /* renamed from: b */
        public void m29450b() {
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f37765e.getCount();
        }
    }

    /* renamed from: com.google.protobuf.RepeatedFieldBuilder$c */
    /* loaded from: classes6.dex */
    public static class C6810c<MType extends GeneratedMessage, BType extends GeneratedMessage.Builder, IType extends MessageOrBuilder> extends AbstractList<IType> implements List<IType>, RandomAccess {

        /* renamed from: e */
        public RepeatedFieldBuilder<MType, BType, IType> f37766e;

        public C6810c(RepeatedFieldBuilder<MType, BType, IType> builder) {
            this.f37766e = builder;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public IType get(int index) {
            return this.f37766e.getMessageOrBuilder(index);
        }

        /* renamed from: b */
        public void m29452b() {
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f37766e.getCount();
        }
    }

    public RepeatedFieldBuilder(List<MType> messages, boolean isMessagesListMutable, GeneratedMessage.BuilderParent parent, boolean isClean) {
        this.f37757b = messages;
        this.f37758c = isMessagesListMutable;
        this.f37756a = parent;
        this.f37760e = isClean;
    }

    /* renamed from: a */
    public final void m29442a() {
        if (this.f37759d == null) {
            this.f37759d = new ArrayList(this.f37757b.size());
            for (int i = 0; i < this.f37757b.size(); i++) {
                this.f37759d.add(null);
            }
        }
    }

    @bnd
    public RepeatedFieldBuilder<MType, BType, IType> addAllMessages(Iterable<? extends MType> values) {
        int i;
        Iterator<? extends MType> it2 = values.iterator();
        while (it2.hasNext()) {
            Internal.m29343a(it2.next());
        }
        if (values instanceof Collection) {
            Collection collection = (Collection) values;
            if (collection.isEmpty()) {
                return this;
            }
            i = collection.size();
        } else {
            i = -1;
        }
        m29443b();
        if (i >= 0) {
            List<MType> list = this.f37757b;
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + i);
            }
        }
        Iterator<? extends MType> it3 = values.iterator();
        while (it3.hasNext()) {
            addMessage(it3.next());
        }
        m29446e();
        m29445d();
        return this;
    }

    public BType addBuilder(MType message) {
        m29443b();
        m29442a();
        SingleFieldBuilder<MType, BType, IType> singleFieldBuilder = new SingleFieldBuilder<>(message, this, this.f37760e);
        this.f37757b.add(null);
        this.f37759d.add(singleFieldBuilder);
        m29446e();
        m29445d();
        return singleFieldBuilder.getBuilder();
    }

    @bnd
    public RepeatedFieldBuilder<MType, BType, IType> addMessage(MType message) {
        Internal.m29343a(message);
        m29443b();
        this.f37757b.add(message);
        List<SingleFieldBuilder<MType, BType, IType>> list = this.f37759d;
        if (list != null) {
            list.add(null);
        }
        m29446e();
        m29445d();
        return this;
    }

    /* renamed from: b */
    public final void m29443b() {
        if (this.f37758c) {
            return;
        }
        this.f37757b = new ArrayList(this.f37757b);
        this.f37758c = true;
    }

    public List<MType> build() {
        boolean z;
        this.f37760e = true;
        boolean z2 = this.f37758c;
        if (!z2 && this.f37759d == null) {
            return this.f37757b;
        }
        if (!z2) {
            int i = 0;
            while (true) {
                if (i >= this.f37757b.size()) {
                    z = true;
                    break;
                }
                MType mtype = this.f37757b.get(i);
                SingleFieldBuilder<MType, BType, IType> singleFieldBuilder = this.f37759d.get(i);
                if (singleFieldBuilder != null && singleFieldBuilder.build() != mtype) {
                    z = false;
                    break;
                }
                i++;
            }
            if (z) {
                return this.f37757b;
            }
        }
        m29443b();
        for (int i2 = 0; i2 < this.f37757b.size(); i2++) {
            this.f37757b.set(i2, m29444c(i2, true));
        }
        List<MType> unmodifiableList = Collections.unmodifiableList(this.f37757b);
        this.f37757b = unmodifiableList;
        this.f37758c = false;
        return unmodifiableList;
    }

    /* renamed from: c */
    public final MType m29444c(int index, boolean forBuild) {
        SingleFieldBuilder<MType, BType, IType> singleFieldBuilder;
        List<SingleFieldBuilder<MType, BType, IType>> list = this.f37759d;
        if (list != null && (singleFieldBuilder = list.get(index)) != null) {
            return forBuild ? singleFieldBuilder.build() : singleFieldBuilder.getMessage();
        }
        return this.f37757b.get(index);
    }

    public void clear() {
        this.f37757b = Collections.emptyList();
        this.f37758c = false;
        List<SingleFieldBuilder<MType, BType, IType>> list = this.f37759d;
        if (list != null) {
            for (SingleFieldBuilder<MType, BType, IType> singleFieldBuilder : list) {
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                }
            }
            this.f37759d = null;
        }
        m29446e();
        m29445d();
    }

    /* renamed from: d */
    public final void m29445d() {
        C6809b<MType, BType, IType> c6809b = this.f37761f;
        if (c6809b != null) {
            c6809b.m29450b();
        }
        C6808a<MType, BType, IType> c6808a = this.f37762g;
        if (c6808a != null) {
            c6808a.m29448b();
        }
        C6810c<MType, BType, IType> c6810c = this.f37763h;
        if (c6810c != null) {
            c6810c.m29452b();
        }
    }

    public void dispose() {
        this.f37756a = null;
    }

    /* renamed from: e */
    public final void m29446e() {
        GeneratedMessage.BuilderParent builderParent;
        if (!this.f37760e || (builderParent = this.f37756a) == null) {
            return;
        }
        builderParent.markDirty();
        this.f37760e = false;
    }

    public BType getBuilder(int index) {
        m29442a();
        SingleFieldBuilder<MType, BType, IType> singleFieldBuilder = this.f37759d.get(index);
        if (singleFieldBuilder == null) {
            SingleFieldBuilder<MType, BType, IType> singleFieldBuilder2 = new SingleFieldBuilder<>(this.f37757b.get(index), this, this.f37760e);
            this.f37759d.set(index, singleFieldBuilder2);
            singleFieldBuilder = singleFieldBuilder2;
        }
        return singleFieldBuilder.getBuilder();
    }

    public List<BType> getBuilderList() {
        if (this.f37762g == null) {
            this.f37762g = new C6808a<>(this);
        }
        return this.f37762g;
    }

    public int getCount() {
        return this.f37757b.size();
    }

    public MType getMessage(int index) {
        return m29444c(index, false);
    }

    public List<MType> getMessageList() {
        if (this.f37761f == null) {
            this.f37761f = new C6809b<>(this);
        }
        return this.f37761f;
    }

    public IType getMessageOrBuilder(int i) {
        SingleFieldBuilder<MType, BType, IType> singleFieldBuilder;
        List<SingleFieldBuilder<MType, BType, IType>> list = this.f37759d;
        if (list != null && (singleFieldBuilder = list.get(i)) != null) {
            return singleFieldBuilder.getMessageOrBuilder();
        }
        return this.f37757b.get(i);
    }

    public List<IType> getMessageOrBuilderList() {
        if (this.f37763h == null) {
            this.f37763h = new C6810c<>(this);
        }
        return this.f37763h;
    }

    public boolean isEmpty() {
        return this.f37757b.isEmpty();
    }

    @Override // com.google.protobuf.AbstractMessage.BuilderParent
    public void markDirty() {
        m29446e();
    }

    public void remove(int index) {
        SingleFieldBuilder<MType, BType, IType> remove;
        m29443b();
        this.f37757b.remove(index);
        List<SingleFieldBuilder<MType, BType, IType>> list = this.f37759d;
        if (list != null && (remove = list.remove(index)) != null) {
            remove.dispose();
        }
        m29446e();
        m29445d();
    }

    @bnd
    public RepeatedFieldBuilder<MType, BType, IType> setMessage(int index, MType message) {
        SingleFieldBuilder<MType, BType, IType> singleFieldBuilder;
        Internal.m29343a(message);
        m29443b();
        this.f37757b.set(index, message);
        List<SingleFieldBuilder<MType, BType, IType>> list = this.f37759d;
        if (list != null && (singleFieldBuilder = list.set(index, null)) != null) {
            singleFieldBuilder.dispose();
        }
        m29446e();
        m29445d();
        return this;
    }

    @bnd
    public RepeatedFieldBuilder<MType, BType, IType> addMessage(int index, MType message) {
        Internal.m29343a(message);
        m29443b();
        this.f37757b.add(index, message);
        List<SingleFieldBuilder<MType, BType, IType>> list = this.f37759d;
        if (list != null) {
            list.add(index, null);
        }
        m29446e();
        m29445d();
        return this;
    }

    public BType addBuilder(int index, MType message) {
        m29443b();
        m29442a();
        SingleFieldBuilder<MType, BType, IType> singleFieldBuilder = new SingleFieldBuilder<>(message, this, this.f37760e);
        this.f37757b.add(index, null);
        this.f37759d.add(index, singleFieldBuilder);
        m29446e();
        m29445d();
        return singleFieldBuilder.getBuilder();
    }
}
