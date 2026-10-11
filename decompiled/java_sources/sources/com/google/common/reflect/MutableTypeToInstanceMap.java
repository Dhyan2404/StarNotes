package com.google.common.reflect;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ForwardingMap;
import com.google.common.collect.ForwardingMapEntry;
import com.google.common.collect.ForwardingSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.common.reflect.MutableTypeToInstanceMap;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotCall;
import com.sunia.HTREnginev2.onf;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@onf
/* loaded from: classes6.dex */
public final class MutableTypeToInstanceMap<B> extends ForwardingMap<TypeToken<? extends B>, B> implements TypeToInstanceMap<B> {

    /* renamed from: e */
    public final Map<TypeToken<? extends B>, B> f35094e = Maps.newHashMap();

    /* renamed from: com.google.common.reflect.MutableTypeToInstanceMap$a */
    /* loaded from: classes6.dex */
    public static final class C6263a<K, V> extends ForwardingMapEntry<K, V> {

        /* renamed from: e */
        public final Map.Entry<K, V> f35095e;

        /* renamed from: com.google.common.reflect.MutableTypeToInstanceMap$a$a */
        /* loaded from: classes6.dex */
        public class a extends ForwardingSet<Map.Entry<K, V>> {

            /* renamed from: e */
            public final /* synthetic */ Set f35096e;

            public a(Set set) {
                this.f35096e = set;
            }

            @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return C6263a.m27460h(super.iterator());
            }

            @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
            public Object[] toArray() {
                return standardToArray();
            }

            @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
            public <T> T[] toArray(T[] tArr) {
                return (T[]) standardToArray(tArr);
            }

            @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
            public Set<Map.Entry<K, V>> delegate() {
                return this.f35096e;
            }
        }

        public C6263a(Map.Entry<K, V> entry) {
            this.f35095e = (Map.Entry) Preconditions.checkNotNull(entry);
        }

        /* renamed from: e */
        public static /* synthetic */ C6263a m27458e(Map.Entry entry) {
            return new C6263a(entry);
        }

        /* renamed from: h */
        public static <K, V> Iterator<Map.Entry<K, V>> m27460h(Iterator<Map.Entry<K, V>> it2) {
            return Iterators.transform(it2, new Function() { // from class: com.sunia.HTREnginev2.tqj
                @Override // com.google.common.base.Function, java.util.function.Function
                public final Object apply(Object obj) {
                    return MutableTypeToInstanceMap.C6263a.m27458e((Map.Entry) obj);
                }
            });
        }

        /* renamed from: i */
        public static <K, V> Set<Map.Entry<K, V>> m27461i(Set<Map.Entry<K, V>> set) {
            return new a(set);
        }

        @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMapEntry, com.google.common.collect.ForwardingObject
        public Map.Entry<K, V> delegate() {
            return this.f35095e;
        }
    }

    @CheckForNull
    /* renamed from: e */
    public final <T extends B> T m27456e(TypeToken<T> typeToken) {
        return this.f35094e.get(typeToken);
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public Set<Map.Entry<TypeToken<? extends B>, B>> entrySet() {
        return C6263a.m27461i(super.entrySet());
    }

    @CheckForNull
    /* renamed from: g */
    public final <T extends B> T m27457g(TypeToken<T> typeToken, T t) {
        return this.f35094e.put(typeToken, t);
    }

    @Override // com.google.common.reflect.TypeToInstanceMap
    @CheckForNull
    public <T extends B> T getInstance(Class<T> cls) {
        return (T) m27456e(TypeToken.m27494of((Class) cls));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    @CheckForNull
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return put((TypeToken<? extends TypeToken<? extends B>>) obj, (TypeToken<? extends B>) obj2);
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    public void putAll(Map<? extends TypeToken<? extends B>, ? extends B> map) {
        throw new UnsupportedOperationException("Please use putInstance() instead.");
    }

    @Override // com.google.common.reflect.TypeToInstanceMap
    @CanIgnoreReturnValue
    @CheckForNull
    public <T extends B> T putInstance(Class<T> cls, T t) {
        return (T) m27457g(TypeToken.m27494of((Class) cls), t);
    }

    @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
    public Map<TypeToken<? extends B>, B> delegate() {
        return this.f35094e;
    }

    @Override // com.google.common.reflect.TypeToInstanceMap
    @CheckForNull
    public <T extends B> T getInstance(TypeToken<T> typeToken) {
        return (T) m27456e(typeToken.rejectTypeVariables());
    }

    @CheckForNull
    @DoNotCall("Always throws UnsupportedOperationException")
    @Deprecated
    @CanIgnoreReturnValue
    public B put(TypeToken<? extends B> typeToken, B b) {
        throw new UnsupportedOperationException("Please use putInstance() instead.");
    }

    @Override // com.google.common.reflect.TypeToInstanceMap
    @CanIgnoreReturnValue
    @CheckForNull
    public <T extends B> T putInstance(TypeToken<T> typeToken, T t) {
        return (T) m27457g(typeToken.rejectTypeVariables(), t);
    }
}
