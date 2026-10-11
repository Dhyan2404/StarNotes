package com.twelvemonkeys.util;

import java.beans.IndexedPropertyDescriptor;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes10.dex */
public final class BeanMap extends AbstractMap<String, Object> implements Serializable, Cloneable {
    private final Object bean;
    private transient Set<PropertyDescriptor> descriptors;

    /* renamed from: com.twelvemonkeys.util.BeanMap$b */
    /* loaded from: classes10.dex */
    public class C16987b implements Map.Entry<String, Object> {

        /* renamed from: e */
        public final PropertyDescriptor f94343e;

        /* renamed from: com.twelvemonkeys.util.BeanMap$b$a */
        /* loaded from: classes10.dex */
        public class a implements InterfaceC16990e {
            public a() {
            }

            @Override // com.twelvemonkeys.util.BeanMap.InterfaceC16990e
            public Object run() throws IllegalAccessException, InvocationTargetException {
                Method readMethod = C16987b.this.f94343e.getReadMethod();
                if (readMethod != null) {
                    return readMethod.invoke(BeanMap.this.bean, new Object[0]);
                }
                throw new UnsupportedOperationException("No getter: " + C16987b.this.f94343e.getName());
            }
        }

        /* renamed from: com.twelvemonkeys.util.BeanMap$b$b */
        /* loaded from: classes10.dex */
        public class b implements InterfaceC16990e {

            /* renamed from: a */
            public final /* synthetic */ Object f94346a;

            public b(Object obj) {
                this.f94346a = obj;
            }

            @Override // com.twelvemonkeys.util.BeanMap.InterfaceC16990e
            public Object run() throws IllegalAccessException, InvocationTargetException {
                Method writeMethod = C16987b.this.f94343e.getWriteMethod();
                if (writeMethod != null) {
                    Object value = C16987b.this.getValue();
                    writeMethod.invoke(BeanMap.this.bean, this.f94346a);
                    return value;
                }
                throw new UnsupportedOperationException("No write method for property: " + C16987b.this.f94343e.getName());
            }
        }

        public C16987b(PropertyDescriptor propertyDescriptor) {
            this.f94343e = propertyDescriptor;
        }

        @Override // java.util.Map.Entry
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public String getKey() {
            return this.f94343e.getName();
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            String key = getKey();
            Object key2 = entry.getKey();
            if (key == key2 || (key != null && key.equals(key2))) {
                Object value = getValue();
                Object value2 = entry.getValue();
                if (value == value2) {
                    return true;
                }
                if (value != null && value.equals(value2)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return BeanMap.unwrap(new a());
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return (getKey() == null ? 0 : getKey().hashCode()) ^ (getValue() != null ? getValue().hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            return BeanMap.unwrap(new b(obj));
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* renamed from: com.twelvemonkeys.util.BeanMap$c */
    /* loaded from: classes10.dex */
    public class C16988c implements Iterator<Map.Entry<String, Object>> {

        /* renamed from: e */
        public final Iterator<PropertyDescriptor> f94348e;

        public C16988c(Iterator<PropertyDescriptor> it2) {
            this.f94348e = it2;
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C16987b next() {
            return new C16987b(this.f94348e.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f94348e.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f94348e.remove();
        }
    }

    /* renamed from: com.twelvemonkeys.util.BeanMap$d */
    /* loaded from: classes10.dex */
    public class C16989d extends AbstractSet<Map.Entry<String, Object>> {
        public C16989d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<String, Object>> iterator() {
            BeanMap beanMap = BeanMap.this;
            return new C16988c(beanMap.descriptors.iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return BeanMap.this.descriptors.size();
        }
    }

    /* renamed from: com.twelvemonkeys.util.BeanMap$e */
    /* loaded from: classes10.dex */
    public interface InterfaceC16990e {
        Object run() throws IllegalAccessException, InvocationTargetException;
    }

    public BeanMap(Object obj) throws IntrospectionException {
        if (obj == null) {
            throw new IllegalArgumentException("bean == null");
        }
        this.bean = obj;
        this.descriptors = initDescriptors(obj);
    }

    private String checkKey(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("key == null");
        }
        String str = (String) obj;
        if (containsKey(str)) {
            return str;
        }
        throw new IllegalArgumentException("Bad key: " + obj);
    }

    private static Set<PropertyDescriptor> initDescriptors(Object obj) throws IntrospectionException {
        HashSet hashSet = new HashSet();
        for (PropertyDescriptor propertyDescriptor : Introspector.getBeanInfo(obj.getClass()).getPropertyDescriptors()) {
            if ((!"class".equals(propertyDescriptor.getName()) || propertyDescriptor.getPropertyType() != Class.class) && !(propertyDescriptor instanceof IndexedPropertyDescriptor)) {
                hashSet.add(propertyDescriptor);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    private Object readResolve() throws IntrospectionException {
        this.descriptors = initDescriptors(this.bean);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object unwrap(InterfaceC16990e interfaceC16990e) {
        try {
            return interfaceC16990e.run();
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw ((RuntimeException) e2.getCause());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<String, Object>> entrySet() {
        return new C16989d();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        return super.get(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        return super.remove(checkKey(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.descriptors.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object put(String str, Object obj) {
        checkKey(str);
        for (Map.Entry<String, Object> entry : entrySet()) {
            if (entry.getKey().equals(str)) {
                return entry.setValue(obj);
            }
        }
        return null;
    }
}
