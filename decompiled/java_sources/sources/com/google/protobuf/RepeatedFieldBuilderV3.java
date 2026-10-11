package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessage.Builder;
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
public class RepeatedFieldBuilderV3<MType extends AbstractMessage, BType extends AbstractMessage.Builder, IType extends MessageOrBuilder> implements AbstractMessage.BuilderParent {

    /* renamed from: a */
    public AbstractMessage.BuilderParent f37767a;

    /* renamed from: b */
    public List<MType> f37768b;

    /* renamed from: c */
    public boolean f37769c;

    /* renamed from: d */
    public List<SingleFieldBuilderV3<MType, BType, IType>> f37770d;

    /* renamed from: e */
    public boolean f37771e;

    /* renamed from: f */
    public C6812b<MType, BType, IType> f37772f;

    /* renamed from: g */
    public C6811a<MType, BType, IType> f37773g;

    /* renamed from: h */
    public C6813c<MType, BType, IType> f37774h;

    /* renamed from: com.google.protobuf.RepeatedFieldBuilderV3$a */
    /* loaded from: classes6.dex */
    public static class C6811a<MType extends AbstractMessage, BType extends AbstractMessage.Builder, IType extends MessageOrBuilder> extends AbstractList<BType> implements List<BType>, RandomAccess {

        /* renamed from: e */
        public RepeatedFieldBuilderV3<MType, BType, IType> f37775e;

        public C6811a(RepeatedFieldBuilderV3<MType, BType, IType> builder) {
            this.f37775e = builder;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public BType get(int index) {
            return this.f37775e.getBuilder(index);
        }

        /* renamed from: b */
        public void m29459b() {
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f37775e.getCount();
        }
    }

    /* renamed from: com.google.protobuf.RepeatedFieldBuilderV3$b */
    /* loaded from: classes6.dex */
    public static class C6812b<MType extends AbstractMessage, BType extends AbstractMessage.Builder, IType extends MessageOrBuilder> extends AbstractList<MType> implements List<MType>, RandomAccess {

        /* renamed from: e */
        public RepeatedFieldBuilderV3<MType, BType, IType> f37776e;

        public C6812b(RepeatedFieldBuilderV3<MType, BType, IType> builder) {
            this.f37776e = builder;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MType get(int index) {
            return this.f37776e.getMessage(index);
        }

        /* renamed from: b */
        public void m29461b() {
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f37776e.getCount();
        }
    }

    /* renamed from: com.google.protobuf.RepeatedFieldBuilderV3$c */
    /* loaded from: classes6.dex */
    public static class C6813c<MType extends AbstractMessage, BType extends AbstractMessage.Builder, IType extends MessageOrBuilder> extends AbstractList<IType> implements List<IType>, RandomAccess {

        /* renamed from: e */
        public RepeatedFieldBuilderV3<MType, BType, IType> f37777e;

        public C6813c(RepeatedFieldBuilderV3<MType, BType, IType> builder) {
            this.f37777e = builder;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public IType get(int index) {
            return this.f37777e.getMessageOrBuilder(index);
        }

        /* renamed from: b */
        public void m29463b() {
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f37777e.getCount();
        }
    }

    public RepeatedFieldBuilderV3(List<MType> messages, boolean isMessagesListMutable, AbstractMessage.BuilderParent parent, boolean isClean) {
        this.f37768b = messages;
        this.f37769c = isMessagesListMutable;
        this.f37767a = parent;
        this.f37771e = isClean;
    }

    /* renamed from: a */
    public final void m29453a() {
        if (this.f37770d == null) {
            this.f37770d = new ArrayList(this.f37768b.size());
            for (int i = 0; i < this.f37768b.size(); i++) {
                this.f37770d.add(null);
            }
        }
    }

    @bnd
    public RepeatedFieldBuilderV3<MType, BType, IType> addAllMessages(Iterable<? extends MType> values) {
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
        m29454b();
        if (i >= 0) {
            List<MType> list = this.f37768b;
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + i);
            }
        }
        Iterator<? extends MType> it3 = values.iterator();
        while (it3.hasNext()) {
            addMessage(it3.next());
        }
        m29457e();
        m29456d();
        return this;
    }

    public BType addBuilder(MType message) {
        m29454b();
        m29453a();
        SingleFieldBuilderV3<MType, BType, IType> singleFieldBuilderV3 = new SingleFieldBuilderV3<>(message, this, this.f37771e);
        this.f37768b.add(null);
        this.f37770d.add(singleFieldBuilderV3);
        m29457e();
        m29456d();
        return singleFieldBuilderV3.getBuilder();
    }

    @bnd
    public RepeatedFieldBuilderV3<MType, BType, IType> addMessage(MType message) {
        Internal.m29343a(message);
        m29454b();
        this.f37768b.add(message);
        List<SingleFieldBuilderV3<MType, BType, IType>> list = this.f37770d;
        if (list != null) {
            list.add(null);
        }
        m29457e();
        m29456d();
        return this;
    }

    /* renamed from: b */
    public final void m29454b() {
        if (this.f37769c) {
            return;
        }
        this.f37768b = new ArrayList(this.f37768b);
        this.f37769c = true;
    }

    public List<MType> build() {
        boolean z;
        this.f37771e = true;
        boolean z2 = this.f37769c;
        if (!z2 && this.f37770d == null) {
            return this.f37768b;
        }
        if (!z2) {
            int i = 0;
            while (true) {
                if (i >= this.f37768b.size()) {
                    z = true;
                    break;
                }
                MType mtype = this.f37768b.get(i);
                SingleFieldBuilderV3<MType, BType, IType> singleFieldBuilderV3 = this.f37770d.get(i);
                if (singleFieldBuilderV3 != null && singleFieldBuilderV3.build() != mtype) {
                    z = false;
                    break;
                }
                i++;
            }
            if (z) {
                return this.f37768b;
            }
        }
        m29454b();
        for (int i2 = 0; i2 < this.f37768b.size(); i2++) {
            this.f37768b.set(i2, m29455c(i2, true));
        }
        List<MType> unmodifiableList = Collections.unmodifiableList(this.f37768b);
        this.f37768b = unmodifiableList;
        this.f37769c = false;
        return unmodifiableList;
    }

    /* renamed from: c */
    public final MType m29455c(int index, boolean forBuild) {
        SingleFieldBuilderV3<MType, BType, IType> singleFieldBuilderV3;
        List<SingleFieldBuilderV3<MType, BType, IType>> list = this.f37770d;
        if (list != null && (singleFieldBuilderV3 = list.get(index)) != null) {
            return forBuild ? singleFieldBuilderV3.build() : singleFieldBuilderV3.getMessage();
        }
        return this.f37768b.get(index);
    }

    public void clear() {
        this.f37768b = Collections.emptyList();
        this.f37769c = false;
        List<SingleFieldBuilderV3<MType, BType, IType>> list = this.f37770d;
        if (list != null) {
            for (SingleFieldBuilderV3<MType, BType, IType> singleFieldBuilderV3 : list) {
                if (singleFieldBuilderV3 != null) {
                    singleFieldBuilderV3.dispose();
                }
            }
            this.f37770d = null;
        }
        m29457e();
        m29456d();
    }

    /* renamed from: d */
    public final void m29456d() {
        C6812b<MType, BType, IType> c6812b = this.f37772f;
        if (c6812b != null) {
            c6812b.m29461b();
        }
        C6811a<MType, BType, IType> c6811a = this.f37773g;
        if (c6811a != null) {
            c6811a.m29459b();
        }
        C6813c<MType, BType, IType> c6813c = this.f37774h;
        if (c6813c != null) {
            c6813c.m29463b();
        }
    }

    public void dispose() {
        this.f37767a = null;
    }

    /* renamed from: e */
    public final void m29457e() {
        AbstractMessage.BuilderParent builderParent;
        if (!this.f37771e || (builderParent = this.f37767a) == null) {
            return;
        }
        builderParent.markDirty();
        this.f37771e = false;
    }

    public BType getBuilder(int index) {
        m29453a();
        SingleFieldBuilderV3<MType, BType, IType> singleFieldBuilderV3 = this.f37770d.get(index);
        if (singleFieldBuilderV3 == null) {
            SingleFieldBuilderV3<MType, BType, IType> singleFieldBuilderV32 = new SingleFieldBuilderV3<>(this.f37768b.get(index), this, this.f37771e);
            this.f37770d.set(index, singleFieldBuilderV32);
            singleFieldBuilderV3 = singleFieldBuilderV32;
        }
        return singleFieldBuilderV3.getBuilder();
    }

    public List<BType> getBuilderList() {
        if (this.f37773g == null) {
            this.f37773g = new C6811a<>(this);
        }
        return this.f37773g;
    }

    public int getCount() {
        return this.f37768b.size();
    }

    public MType getMessage(int index) {
        return m29455c(index, false);
    }

    public List<MType> getMessageList() {
        if (this.f37772f == null) {
            this.f37772f = new C6812b<>(this);
        }
        return this.f37772f;
    }

    public IType getMessageOrBuilder(int i) {
        SingleFieldBuilderV3<MType, BType, IType> singleFieldBuilderV3;
        List<SingleFieldBuilderV3<MType, BType, IType>> list = this.f37770d;
        if (list != null && (singleFieldBuilderV3 = list.get(i)) != null) {
            return singleFieldBuilderV3.getMessageOrBuilder();
        }
        return this.f37768b.get(i);
    }

    public List<IType> getMessageOrBuilderList() {
        if (this.f37774h == null) {
            this.f37774h = new C6813c<>(this);
        }
        return this.f37774h;
    }

    public boolean isEmpty() {
        return this.f37768b.isEmpty();
    }

    @Override // com.google.protobuf.AbstractMessage.BuilderParent
    public void markDirty() {
        m29457e();
    }

    public void remove(int index) {
        SingleFieldBuilderV3<MType, BType, IType> remove;
        m29454b();
        this.f37768b.remove(index);
        List<SingleFieldBuilderV3<MType, BType, IType>> list = this.f37770d;
        if (list != null && (remove = list.remove(index)) != null) {
            remove.dispose();
        }
        m29457e();
        m29456d();
    }

    @bnd
    public RepeatedFieldBuilderV3<MType, BType, IType> setMessage(int index, MType message) {
        SingleFieldBuilderV3<MType, BType, IType> singleFieldBuilderV3;
        Internal.m29343a(message);
        m29454b();
        this.f37768b.set(index, message);
        List<SingleFieldBuilderV3<MType, BType, IType>> list = this.f37770d;
        if (list != null && (singleFieldBuilderV3 = list.set(index, null)) != null) {
            singleFieldBuilderV3.dispose();
        }
        m29457e();
        m29456d();
        return this;
    }

    @bnd
    public RepeatedFieldBuilderV3<MType, BType, IType> addMessage(int index, MType message) {
        Internal.m29343a(message);
        m29454b();
        this.f37768b.add(index, message);
        List<SingleFieldBuilderV3<MType, BType, IType>> list = this.f37770d;
        if (list != null) {
            list.add(index, null);
        }
        m29457e();
        m29456d();
        return this;
    }

    public BType addBuilder(int index, MType message) {
        m29454b();
        m29453a();
        SingleFieldBuilderV3<MType, BType, IType> singleFieldBuilderV3 = new SingleFieldBuilderV3<>(message, this, this.f37771e);
        this.f37768b.add(index, null);
        this.f37770d.add(index, singleFieldBuilderV3);
        m29457e();
        m29456d();
        return singleFieldBuilderV3.getBuilder();
    }
}
