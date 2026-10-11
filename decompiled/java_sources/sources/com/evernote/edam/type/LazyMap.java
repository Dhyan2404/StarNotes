package com.evernote.edam.type;

import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TMap;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TSet;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes4.dex */
public class LazyMap implements TBase<LazyMap>, Serializable, Cloneable {
    private Map<String, String> fullMap;
    private Set<String> keysOnly;
    private static final TStruct STRUCT_DESC = new TStruct("LazyMap");
    private static final TField KEYS_ONLY_FIELD_DESC = new TField("keysOnly", (byte) 14, 1);
    private static final TField FULL_MAP_FIELD_DESC = new TField("fullMap", (byte) 13, 2);

    public LazyMap() {
    }

    public void addToKeysOnly(String str) {
        if (this.keysOnly == null) {
            this.keysOnly = new HashSet();
        }
        this.keysOnly.add(str);
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.keysOnly = null;
        this.fullMap = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof LazyMap)) {
            return equals((LazyMap) obj);
        }
        return false;
    }

    public Map<String, String> getFullMap() {
        return this.fullMap;
    }

    public int getFullMapSize() {
        Map<String, String> map = this.fullMap;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public Set<String> getKeysOnly() {
        return this.keysOnly;
    }

    public Iterator<String> getKeysOnlyIterator() {
        Set<String> set = this.keysOnly;
        if (set == null) {
            return null;
        }
        return set.iterator();
    }

    public int getKeysOnlySize() {
        Set<String> set = this.keysOnly;
        if (set == null) {
            return 0;
        }
        return set.size();
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetFullMap() {
        return this.fullMap != null;
    }

    public boolean isSetKeysOnly() {
        return this.keysOnly != null;
    }

    public void putToFullMap(String str, String str2) {
        if (this.fullMap == null) {
            this.fullMap = new HashMap();
        }
        this.fullMap.put(str, str2);
    }

    @Override // com.evernote.thrift.TBase
    public void read(TProtocol tProtocol) throws TException {
        tProtocol.readStructBegin();
        while (true) {
            TField readFieldBegin = tProtocol.readFieldBegin();
            byte b = readFieldBegin.type;
            if (b == 0) {
                tProtocol.readStructEnd();
                validate();
                return;
            }
            short s = readFieldBegin.f21203id;
            int i = 0;
            if (s != 1) {
                if (s != 2) {
                    TProtocolUtil.skip(tProtocol, b);
                } else if (b == 13) {
                    TMap readMapBegin = tProtocol.readMapBegin();
                    this.fullMap = new HashMap(readMapBegin.size * 2);
                    while (i < readMapBegin.size) {
                        this.fullMap.put(tProtocol.readString(), tProtocol.readString());
                        i++;
                    }
                    tProtocol.readMapEnd();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 14) {
                TSet readSetBegin = tProtocol.readSetBegin();
                this.keysOnly = new HashSet(readSetBegin.size * 2);
                while (i < readSetBegin.size) {
                    this.keysOnly.add(tProtocol.readString());
                    i++;
                }
                tProtocol.readSetEnd();
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setFullMap(Map<String, String> map) {
        this.fullMap = map;
    }

    public void setFullMapIsSet(boolean z) {
        if (z) {
            return;
        }
        this.fullMap = null;
    }

    public void setKeysOnly(Set<String> set) {
        this.keysOnly = set;
    }

    public void setKeysOnlyIsSet(boolean z) {
        if (z) {
            return;
        }
        this.keysOnly = null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("LazyMap(");
        if (isSetKeysOnly()) {
            sb.append("keysOnly:");
            Set<String> set = this.keysOnly;
            if (set == null) {
                sb.append("null");
            } else {
                sb.append(set);
            }
            z = false;
        } else {
            z = true;
        }
        if (isSetFullMap()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("fullMap:");
            Map<String, String> map = this.fullMap;
            if (map == null) {
                sb.append("null");
            } else {
                sb.append(map);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetFullMap() {
        this.fullMap = null;
    }

    public void unsetKeysOnly() {
        this.keysOnly = null;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (this.keysOnly != null && isSetKeysOnly()) {
            tProtocol.writeFieldBegin(KEYS_ONLY_FIELD_DESC);
            tProtocol.writeSetBegin(new TSet((byte) 11, this.keysOnly.size()));
            Iterator<String> it2 = this.keysOnly.iterator();
            while (it2.hasNext()) {
                tProtocol.writeString(it2.next());
            }
            tProtocol.writeSetEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.fullMap != null && isSetFullMap()) {
            tProtocol.writeFieldBegin(FULL_MAP_FIELD_DESC);
            tProtocol.writeMapBegin(new TMap((byte) 11, (byte) 11, this.fullMap.size()));
            for (Map.Entry<String, String> entry : this.fullMap.entrySet()) {
                tProtocol.writeString(entry.getKey());
                tProtocol.writeString(entry.getValue());
            }
            tProtocol.writeMapEnd();
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    public LazyMap(LazyMap lazyMap) {
        if (lazyMap.isSetKeysOnly()) {
            HashSet hashSet = new HashSet();
            Iterator<String> it2 = lazyMap.keysOnly.iterator();
            while (it2.hasNext()) {
                hashSet.add(it2.next());
            }
            this.keysOnly = hashSet;
        }
        if (lazyMap.isSetFullMap()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, String> entry : lazyMap.fullMap.entrySet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            this.fullMap = hashMap;
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(LazyMap lazyMap) {
        int compareTo;
        int compareTo2;
        if (!getClass().equals(lazyMap.getClass())) {
            return getClass().getName().compareTo(lazyMap.getClass().getName());
        }
        int compareTo3 = Boolean.valueOf(isSetKeysOnly()).compareTo(Boolean.valueOf(lazyMap.isSetKeysOnly()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (isSetKeysOnly() && (compareTo2 = TBaseHelper.compareTo((Set) this.keysOnly, (Set) lazyMap.keysOnly)) != 0) {
            return compareTo2;
        }
        int compareTo4 = Boolean.valueOf(isSetFullMap()).compareTo(Boolean.valueOf(lazyMap.isSetFullMap()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (!isSetFullMap() || (compareTo = TBaseHelper.compareTo((Map) this.fullMap, (Map) lazyMap.fullMap)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<LazyMap> deepCopy2() {
        return new LazyMap(this);
    }

    public boolean equals(LazyMap lazyMap) {
        if (lazyMap == null) {
            return false;
        }
        boolean isSetKeysOnly = isSetKeysOnly();
        boolean isSetKeysOnly2 = lazyMap.isSetKeysOnly();
        if ((isSetKeysOnly || isSetKeysOnly2) && !(isSetKeysOnly && isSetKeysOnly2 && this.keysOnly.equals(lazyMap.keysOnly))) {
            return false;
        }
        boolean isSetFullMap = isSetFullMap();
        boolean isSetFullMap2 = lazyMap.isSetFullMap();
        if (isSetFullMap || isSetFullMap2) {
            return isSetFullMap && isSetFullMap2 && this.fullMap.equals(lazyMap.fullMap);
        }
        return true;
    }
}
