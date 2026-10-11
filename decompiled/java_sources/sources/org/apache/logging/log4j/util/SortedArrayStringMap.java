package org.apache.logging.log4j.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.StreamCorruptedException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import org.apache.commons.math3.dfp.Dfp;
import org.apache.logging.log4j.status.StatusLogger;
import org.apache.logging.log4j.util.StringMap;

/* loaded from: classes12.dex */
public class SortedArrayStringMap implements IndexedStringMap {
    private static final int DEFAULT_INITIAL_CAPACITY = 4;
    private static final String FROZEN = "Frozen collection cannot be modified";
    private static final int HASHVAL = 31;
    private static final Method getObjectInputFilter;
    private static final Method newObjectInputFilter;
    private static final long serialVersionUID = -5748905872274478116L;
    private static final Method setObjectInputFilter;
    private boolean immutable;
    private transient boolean iterating;
    private transient String[] keys;
    private transient int size;
    private int threshold;
    private transient Object[] values;
    private static final TriConsumer<String, Object, StringMap> PUT_ALL = new TriConsumer() { // from class: com.sunia.HTREnginev2.rvm
        @Override // org.apache.logging.log4j.util.TriConsumer
        public final void accept(Object obj, Object obj2, Object obj3) {
            ((StringMap) obj3).putValue((String) obj, obj2);
        }
    };
    private static final String[] EMPTY = new String[0];

    static {
        int i = 0;
        Method method = null;
        Method method2 = null;
        Method method3 = null;
        for (Method method4 : ObjectInputStream.class.getMethods()) {
            if (method4.getName().equals("setObjectInputFilter")) {
                method2 = method4;
            } else if (method4.getName().equals("getObjectInputFilter")) {
                method3 = method4;
            }
        }
        if (method2 != null) {
            try {
                Method[] methods = Class.forName("org.apache.logging.log4j.util.internal.DefaultObjectInputFilter").getMethods();
                int length = methods.length;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    Method method5 = methods[i];
                    if (method5.getName().equals(Dfp.f108018r) && Modifier.isStatic(method5.getModifiers())) {
                        method = method5;
                        break;
                    }
                    i++;
                }
            } catch (ClassNotFoundException unused) {
            }
        }
        newObjectInputFilter = method;
        setObjectInputFilter = method2;
        getObjectInputFilter = method3;
    }

    public SortedArrayStringMap() {
        this(4);
    }

    private void assertNoConcurrentModification() {
        if (this.iterating) {
            throw new ConcurrentModificationException();
        }
    }

    private void assertNotFrozen() {
        if (this.immutable) {
            throw new UnsupportedOperationException(FROZEN);
        }
    }

    private static int ceilingNextPowerOfTwo(final int x) {
        return 1 << (32 - Integer.numberOfLeadingZeros(x - 1));
    }

    private void ensureCapacity() {
        int i = this.size;
        int i2 = this.threshold;
        if (i >= i2) {
            resize(i2 * 2);
        }
    }

    private void handleSerializationException(final Throwable t, final int i, final String key) {
        StatusLogger.getLogger().warn("Ignoring {} for key[{}] ('{}')", String.valueOf(t), Integer.valueOf(i), this.keys[i]);
    }

    private void inflateTable(final int toSize) {
        this.threshold = toSize;
        this.keys = new String[toSize];
        this.values = new Object[toSize];
    }

    private void initFrom0(final SortedArrayStringMap other) {
        int length = this.keys.length;
        int i = other.size;
        if (length < i) {
            int i2 = other.threshold;
            this.keys = new String[i2];
            this.values = new Object[i2];
        }
        System.arraycopy(other.keys, 0, this.keys, 0, i);
        System.arraycopy(other.values, 0, this.values, 0, other.size);
        this.size = other.size;
        this.threshold = other.threshold;
    }

    private void insertAt(final int index, final String key, final Object value) {
        ensureCapacity();
        String[] strArr = this.keys;
        int i = index + 1;
        System.arraycopy(strArr, index, strArr, i, this.size - index);
        Object[] objArr = this.values;
        System.arraycopy(objArr, index, objArr, i, this.size - index);
        this.keys[index] = key;
        this.values[index] = value;
        this.size++;
    }

    private static byte[] marshall(final Object obj) throws IOException {
        if (obj == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        try {
            objectOutputStream.writeObject(obj);
            objectOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            objectOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    objectOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private void merge(final SortedArrayStringMap other) {
        String[] strArr = this.keys;
        Object[] objArr = this.values;
        int i = other.size + this.size;
        int ceilingNextPowerOfTwo = ceilingNextPowerOfTwo(i);
        this.threshold = ceilingNextPowerOfTwo;
        if (this.keys.length < ceilingNextPowerOfTwo) {
            this.keys = new String[ceilingNextPowerOfTwo];
            this.values = new Object[ceilingNextPowerOfTwo];
        }
        boolean z = false;
        if (other.size() > size()) {
            System.arraycopy(strArr, 0, this.keys, other.size, this.size);
            System.arraycopy(objArr, 0, this.values, other.size, this.size);
            System.arraycopy(other.keys, 0, this.keys, 0, other.size);
            System.arraycopy(other.values, 0, this.values, 0, other.size);
            this.size = other.size;
        } else {
            System.arraycopy(strArr, 0, this.keys, 0, this.size);
            System.arraycopy(objArr, 0, this.values, 0, this.size);
            System.arraycopy(other.keys, 0, this.keys, this.size, other.size);
            System.arraycopy(other.values, 0, this.values, this.size, other.size);
            z = true;
        }
        for (int i2 = this.size; i2 < i; i2++) {
            int indexOfKey = indexOfKey(this.keys[i2]);
            if (indexOfKey < 0) {
                insertAt(~indexOfKey, this.keys[i2], this.values[i2]);
            } else if (z) {
                String[] strArr2 = this.keys;
                strArr2[indexOfKey] = strArr2[i2];
                Object[] objArr2 = this.values;
                objArr2[indexOfKey] = objArr2[i2];
            }
        }
        Arrays.fill(this.keys, this.size, i, (Object) null);
        Arrays.fill(this.values, this.size, i, (Object) null);
    }

    private int nullKeyIndex() {
        return (this.size <= 0 || this.keys[0] != null) ? -1 : 0;
    }

    private void readObject(final ObjectInputStream s) throws IOException, ClassNotFoundException {
        if (!(s instanceof FilteredObjectInputStream) && setObjectInputFilter == null) {
            throw new IllegalArgumentException("readObject requires a FilteredObjectInputStream or an ObjectInputStream that accepts an ObjectInputFilter");
        }
        s.defaultReadObject();
        String[] strArr = EMPTY;
        this.keys = strArr;
        this.values = strArr;
        int readInt = s.readInt();
        if (readInt < 0) {
            throw new InvalidObjectException("Illegal capacity: " + readInt);
        }
        int readInt2 = s.readInt();
        if (readInt2 < 0) {
            throw new InvalidObjectException("Illegal mappings count: " + readInt2);
        }
        if (readInt2 > 0) {
            inflateTable(readInt);
        } else {
            this.threshold = readInt;
        }
        for (int i = 0; i < readInt2; i++) {
            this.keys[i] = (String) s.readObject();
            try {
                byte[] bArr = (byte[]) s.readObject();
                this.values[i] = bArr == null ? null : unmarshall(bArr, s);
            } catch (Exception | LinkageError e) {
                handleSerializationException(e, i, this.keys[i]);
                this.values[i] = null;
            }
        }
        this.size = readInt2;
    }

    private void resize(final int newCapacity) {
        String[] strArr = this.keys;
        Object[] objArr = this.values;
        String[] strArr2 = new String[newCapacity];
        this.keys = strArr2;
        this.values = new Object[newCapacity];
        System.arraycopy(strArr, 0, strArr2, 0, this.size);
        System.arraycopy(objArr, 0, this.values, 0, this.size);
        this.threshold = newCapacity;
    }

    private static Object unmarshall(final byte[] data, final ObjectInputStream inputStream) throws IOException, ClassNotFoundException {
        ObjectInputStream objectInputStream;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(data);
        if (inputStream instanceof FilteredObjectInputStream) {
            objectInputStream = new FilteredObjectInputStream(byteArrayInputStream, ((FilteredObjectInputStream) inputStream).getAllowedClasses());
        } else {
            try {
                Object invoke = newObjectInputFilter.invoke(null, getObjectInputFilter.invoke(inputStream, new Object[0]));
                objectInputStream = new ObjectInputStream(byteArrayInputStream);
                setObjectInputFilter.invoke(objectInputStream, invoke);
            } catch (IllegalAccessException | InvocationTargetException unused) {
                throw new StreamCorruptedException("Unable to set ObjectInputFilter on stream");
            }
        }
        try {
            return objectInputStream.readObject();
        } finally {
            objectInputStream.close();
        }
    }

    private void writeObject(final ObjectOutputStream s) throws IOException {
        s.defaultWriteObject();
        String[] strArr = this.keys;
        if (strArr == EMPTY) {
            s.writeInt(ceilingNextPowerOfTwo(this.threshold));
        } else {
            s.writeInt(strArr.length);
        }
        s.writeInt(this.size);
        if (this.size > 0) {
            for (int i = 0; i < this.size; i++) {
                s.writeObject(this.keys[i]);
                try {
                    s.writeObject(marshall(this.values[i]));
                } catch (Exception e) {
                    handleSerializationException(e, i, this.keys[i]);
                    s.writeObject(null);
                }
            }
        }
    }

    @Override // org.apache.logging.log4j.util.StringMap
    public void clear() {
        if (this.keys == EMPTY) {
            return;
        }
        assertNotFrozen();
        assertNoConcurrentModification();
        Arrays.fill(this.keys, 0, this.size, (Object) null);
        Arrays.fill(this.values, 0, this.size, (Object) null);
        this.size = 0;
    }

    @Override // org.apache.logging.log4j.util.ReadOnlyStringMap
    public boolean containsKey(final String key) {
        return indexOfKey(key) >= 0;
    }

    @Override // org.apache.logging.log4j.util.StringMap
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SortedArrayStringMap)) {
            return false;
        }
        SortedArrayStringMap sortedArrayStringMap = (SortedArrayStringMap) obj;
        if (size() != sortedArrayStringMap.size()) {
            return false;
        }
        for (int i = 0; i < size(); i++) {
            if (!Objects.equals(this.keys[i], sortedArrayStringMap.keys[i]) || !Objects.equals(this.values[i], sortedArrayStringMap.values[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.logging.log4j.util.ReadOnlyStringMap
    public <V> void forEach(final BiConsumer<String, ? super V> action) {
        this.iterating = true;
        for (int i = 0; i < this.size; i++) {
            try {
                action.accept(this.keys[i], this.values[i]);
            } finally {
                this.iterating = false;
            }
        }
    }

    @Override // org.apache.logging.log4j.util.StringMap
    public void freeze() {
        this.immutable = true;
    }

    @Override // org.apache.logging.log4j.util.IndexedReadOnlyStringMap
    public String getKeyAt(final int index) {
        if (index < 0 || index >= this.size) {
            return null;
        }
        return this.keys[index];
    }

    @Override // org.apache.logging.log4j.util.ReadOnlyStringMap
    public <V> V getValue(String str) {
        int indexOfKey = indexOfKey(str);
        if (indexOfKey < 0) {
            return null;
        }
        return (V) this.values[indexOfKey];
    }

    @Override // org.apache.logging.log4j.util.IndexedReadOnlyStringMap
    public <V> V getValueAt(int i) {
        if (i < 0 || i >= this.size) {
            return null;
        }
        return (V) this.values[i];
    }

    @Override // org.apache.logging.log4j.util.StringMap
    public int hashCode() {
        int i = this.size;
        return ((((1147 + i) * 31) + hashCode(this.keys, i)) * 31) + hashCode(this.values, this.size);
    }

    @Override // org.apache.logging.log4j.util.IndexedReadOnlyStringMap
    public int indexOfKey(final String key) {
        String[] strArr = this.keys;
        if (strArr == EMPTY) {
            return -1;
        }
        if (key == null) {
            return nullKeyIndex();
        }
        int i = this.size;
        int i2 = 0;
        if (i > 0 && strArr[0] == null) {
            i2 = 1;
        }
        return Arrays.binarySearch(strArr, i2, i, key);
    }

    @Override // org.apache.logging.log4j.util.ReadOnlyStringMap
    public boolean isEmpty() {
        return this.size == 0;
    }

    @Override // org.apache.logging.log4j.util.StringMap
    public boolean isFrozen() {
        return this.immutable;
    }

    @Override // org.apache.logging.log4j.util.StringMap
    public void putAll(final ReadOnlyStringMap source) {
        if (source == this || source == null || source.isEmpty()) {
            return;
        }
        assertNotFrozen();
        assertNoConcurrentModification();
        if (!(source instanceof SortedArrayStringMap)) {
            source.forEach(PUT_ALL, this);
        } else if (this.size == 0) {
            initFrom0((SortedArrayStringMap) source);
        } else {
            merge((SortedArrayStringMap) source);
        }
    }

    @Override // org.apache.logging.log4j.util.StringMap
    public void putValue(final String key, final Object value) {
        assertNotFrozen();
        assertNoConcurrentModification();
        if (this.keys == EMPTY) {
            inflateTable(this.threshold);
        }
        int indexOfKey = indexOfKey(key);
        if (indexOfKey < 0) {
            insertAt(~indexOfKey, key, value);
        } else {
            this.keys[indexOfKey] = key;
            this.values[indexOfKey] = value;
        }
    }

    @Override // org.apache.logging.log4j.util.StringMap
    public void remove(final String key) {
        int indexOfKey;
        if (this.keys != EMPTY && (indexOfKey = indexOfKey(key)) >= 0) {
            assertNotFrozen();
            assertNoConcurrentModification();
            String[] strArr = this.keys;
            int i = indexOfKey + 1;
            System.arraycopy(strArr, i, strArr, indexOfKey, (this.size - 1) - indexOfKey);
            Object[] objArr = this.values;
            System.arraycopy(objArr, i, objArr, indexOfKey, (this.size - 1) - indexOfKey);
            String[] strArr2 = this.keys;
            int i2 = this.size;
            strArr2[i2 - 1] = null;
            this.values[i2 - 1] = null;
            this.size = i2 - 1;
        }
    }

    @Override // org.apache.logging.log4j.util.ReadOnlyStringMap
    public int size() {
        return this.size;
    }

    @Override // org.apache.logging.log4j.util.ReadOnlyStringMap
    public Map<String, String> toMap() {
        HashMap hashMap = new HashMap(size());
        for (int i = 0; i < size(); i++) {
            Object valueAt = getValueAt(i);
            hashMap.put(getKeyAt(i), valueAt == null ? null : String.valueOf(valueAt));
        }
        return hashMap;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(256);
        sb.append('{');
        for (int i = 0; i < this.size; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(this.keys[i]);
            sb.append('=');
            Object obj = this.values[i];
            if (obj == this) {
                obj = "(this map)";
            }
            sb.append(obj);
        }
        sb.append('}');
        return sb.toString();
    }

    public SortedArrayStringMap(final int initialCapacity) {
        String[] strArr = EMPTY;
        this.keys = strArr;
        this.values = strArr;
        if (initialCapacity >= 0) {
            this.threshold = ceilingNextPowerOfTwo(initialCapacity == 0 ? 1 : initialCapacity);
            return;
        }
        throw new IllegalArgumentException("Initial capacity must be at least zero but was " + initialCapacity);
    }

    private static int hashCode(final Object[] values, final int length) {
        int i = 1;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i * 31;
            Object obj = values[i2];
            i = i3 + (obj == null ? 0 : obj.hashCode());
        }
        return i;
    }

    @Override // org.apache.logging.log4j.util.ReadOnlyStringMap
    public <V, T> void forEach(final TriConsumer<String, ? super V, T> action, final T state) {
        this.iterating = true;
        for (int i = 0; i < this.size; i++) {
            try {
                action.accept(this.keys[i], this.values[i], state);
            } finally {
                this.iterating = false;
            }
        }
    }

    public SortedArrayStringMap(final ReadOnlyStringMap other) {
        String[] strArr = EMPTY;
        this.keys = strArr;
        this.values = strArr;
        if (other instanceof SortedArrayStringMap) {
            initFrom0((SortedArrayStringMap) other);
        } else if (other != null) {
            resize(ceilingNextPowerOfTwo(other.size()));
            other.forEach(PUT_ALL, this);
        }
    }

    public SortedArrayStringMap(final Map<String, ?> map) {
        String[] strArr = EMPTY;
        this.keys = strArr;
        this.values = strArr;
        resize(ceilingNextPowerOfTwo(map.size()));
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            putValue(entry.getKey(), entry.getValue());
        }
    }
}
