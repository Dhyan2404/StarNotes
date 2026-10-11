package com.google.protobuf;

import com.google.protobuf.Internal;
import com.sunia.HTREnginev2.dun;
import com.sunia.HTREnginev2.g7l;
import com.sunia.HTREnginev2.htd;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@htd
/* renamed from: com.google.protobuf.o */
/* loaded from: classes6.dex */
public abstract class AbstractC6878o {

    /* renamed from: a */
    public static final AbstractC6878o f38141a;

    /* renamed from: b */
    public static final AbstractC6878o f38142b;

    /* renamed from: com.google.protobuf.o$b */
    /* loaded from: classes6.dex */
    public static final class b extends AbstractC6878o {

        /* renamed from: c */
        public static final Class<?> f38143c = Collections.unmodifiableList(Collections.emptyList()).getClass();

        public b() {
            super();
        }

        /* renamed from: f */
        public static <E> List<E> m30296f(Object message, long offset) {
            return (List) dun.m53726Q(message, offset);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: g */
        public static <L> List<L> m30297g(Object obj, long j, int i) {
            LazyStringArrayList lazyStringArrayList;
            List<L> m30296f = m30296f(obj, j);
            if (m30296f.isEmpty()) {
                List<L> lazyStringArrayList2 = m30296f instanceof LazyStringList ? new LazyStringArrayList(i) : ((m30296f instanceof g7l) && (m30296f instanceof Internal.ProtobufList)) ? ((Internal.ProtobufList) m30296f).mutableCopyWithCapacity2(i) : new ArrayList<>(i);
                dun.m53775t0(obj, j, lazyStringArrayList2);
                return lazyStringArrayList2;
            }
            if (f38143c.isAssignableFrom(m30296f.getClass())) {
                ArrayList arrayList = new ArrayList(m30296f.size() + i);
                arrayList.addAll(m30296f);
                dun.m53775t0(obj, j, arrayList);
                lazyStringArrayList = arrayList;
            } else {
                if (!(m30296f instanceof UnmodifiableLazyStringList)) {
                    if (!(m30296f instanceof g7l) || !(m30296f instanceof Internal.ProtobufList)) {
                        return m30296f;
                    }
                    Internal.ProtobufList protobufList = (Internal.ProtobufList) m30296f;
                    if (protobufList.isModifiable()) {
                        return m30296f;
                    }
                    Internal.ProtobufList mutableCopyWithCapacity2 = protobufList.mutableCopyWithCapacity2(m30296f.size() + i);
                    dun.m53775t0(obj, j, mutableCopyWithCapacity2);
                    return mutableCopyWithCapacity2;
                }
                LazyStringArrayList lazyStringArrayList3 = new LazyStringArrayList(m30296f.size() + i);
                lazyStringArrayList3.addAll((UnmodifiableLazyStringList) m30296f);
                dun.m53775t0(obj, j, lazyStringArrayList3);
                lazyStringArrayList = lazyStringArrayList3;
            }
            return lazyStringArrayList;
        }

        @Override // com.google.protobuf.AbstractC6878o
        /* renamed from: c */
        public void mo30293c(Object message, long offset) {
            Object unmodifiableList;
            List list = (List) dun.m53726Q(message, offset);
            if (list instanceof LazyStringList) {
                unmodifiableList = ((LazyStringList) list).getUnmodifiableView();
            } else {
                if (f38143c.isAssignableFrom(list.getClass())) {
                    return;
                }
                if ((list instanceof g7l) && (list instanceof Internal.ProtobufList)) {
                    Internal.ProtobufList protobufList = (Internal.ProtobufList) list;
                    if (protobufList.isModifiable()) {
                        protobufList.makeImmutable();
                        return;
                    }
                    return;
                }
                unmodifiableList = Collections.unmodifiableList(list);
            }
            dun.m53775t0(message, offset, unmodifiableList);
        }

        @Override // com.google.protobuf.AbstractC6878o
        /* renamed from: d */
        public <E> void mo30294d(Object msg, Object otherMsg, long offset) {
            List m30296f = m30296f(otherMsg, offset);
            List m30297g = m30297g(msg, offset, m30296f.size());
            int size = m30297g.size();
            int size2 = m30296f.size();
            if (size > 0 && size2 > 0) {
                m30297g.addAll(m30296f);
            }
            if (size > 0) {
                m30296f = m30297g;
            }
            dun.m53775t0(msg, offset, m30296f);
        }

        @Override // com.google.protobuf.AbstractC6878o
        /* renamed from: e */
        public <L> List<L> mo30295e(Object message, long offset) {
            return m30297g(message, offset, 10);
        }
    }

    /* renamed from: com.google.protobuf.o$c */
    /* loaded from: classes6.dex */
    public static final class c extends AbstractC6878o {
        public c() {
            super();
        }

        /* renamed from: f */
        public static <E> Internal.ProtobufList<E> m30298f(Object message, long offset) {
            return (Internal.ProtobufList) dun.m53726Q(message, offset);
        }

        @Override // com.google.protobuf.AbstractC6878o
        /* renamed from: c */
        public void mo30293c(Object message, long offset) {
            m30298f(message, offset).makeImmutable();
        }

        @Override // com.google.protobuf.AbstractC6878o
        /* renamed from: d */
        public <E> void mo30294d(Object msg, Object otherMsg, long offset) {
            Internal.ProtobufList m30298f = m30298f(msg, offset);
            Internal.ProtobufList m30298f2 = m30298f(otherMsg, offset);
            int size = m30298f.size();
            int size2 = m30298f2.size();
            if (size > 0 && size2 > 0) {
                if (!m30298f.isModifiable()) {
                    m30298f = m30298f.mutableCopyWithCapacity2(size2 + size);
                }
                m30298f.addAll(m30298f2);
            }
            if (size > 0) {
                m30298f2 = m30298f;
            }
            dun.m53775t0(msg, offset, m30298f2);
        }

        @Override // com.google.protobuf.AbstractC6878o
        /* renamed from: e */
        public <L> List<L> mo30295e(Object message, long offset) {
            Internal.ProtobufList m30298f = m30298f(message, offset);
            if (m30298f.isModifiable()) {
                return m30298f;
            }
            int size = m30298f.size();
            Internal.ProtobufList mutableCopyWithCapacity2 = m30298f.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
            dun.m53775t0(message, offset, mutableCopyWithCapacity2);
            return mutableCopyWithCapacity2;
        }
    }

    static {
        f38141a = new b();
        f38142b = new c();
    }

    /* renamed from: a */
    public static AbstractC6878o m30291a() {
        return f38141a;
    }

    /* renamed from: b */
    public static AbstractC6878o m30292b() {
        return f38142b;
    }

    /* renamed from: c */
    public abstract void mo30293c(Object msg, long offset);

    /* renamed from: d */
    public abstract <L> void mo30294d(Object msg, Object otherMsg, long offset);

    /* renamed from: e */
    public abstract <L> List<L> mo30295e(Object msg, long offset);

    public AbstractC6878o() {
    }
}
