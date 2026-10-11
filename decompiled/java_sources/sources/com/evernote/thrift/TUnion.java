package com.evernote.thrift;

import com.evernote.thrift.TFieldIdEnum;
import com.evernote.thrift.TUnion;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolException;
import com.evernote.thrift.protocol.TStruct;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes4.dex */
public abstract class TUnion<T extends TUnion, F extends TFieldIdEnum> implements TReflectionBase<T, F> {
    protected F setField_;
    protected Object value_;

    public TUnion() {
        this.setField_ = null;
        this.value_ = null;
    }

    private static String bytesToStr(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        int min = Math.min(bArr.length, 128);
        for (int i = 0; i < min; i++) {
            if (i != 0) {
                sb.append(" ");
            }
            String hexString = Integer.toHexString(bArr[i] & 255);
            if (hexString.length() <= 1) {
                hexString = "0" + hexString;
            }
            sb.append(hexString);
        }
        if (bArr.length > 128) {
            sb.append(" ...");
        }
        return sb.toString();
    }

    private static List deepCopyList(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(deepCopyObject(it2.next()));
        }
        return arrayList;
    }

    private static Map deepCopyMap(Map<Object, Object> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            hashMap.put(deepCopyObject(entry.getKey()), deepCopyObject(entry.getValue()));
        }
        return hashMap;
    }

    private static Object deepCopyObject(Object obj) {
        if (obj instanceof TBase) {
            return ((TBase) obj).deepCopy2();
        }
        if (!(obj instanceof byte[])) {
            return obj instanceof List ? deepCopyList((List) obj) : obj instanceof Set ? deepCopySet((Set) obj) : obj instanceof Map ? deepCopyMap((Map) obj) : obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private static Set deepCopySet(Set set) {
        HashSet hashSet = new HashSet();
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            hashSet.add(deepCopyObject(it2.next()));
        }
        return hashSet;
    }

    public abstract void checkType(F f, Object obj) throws ClassCastException;

    @Override // com.evernote.thrift.TBase
    public final void clear() {
        this.setField_ = null;
        this.value_ = null;
    }

    public abstract F enumForId(short s);

    public abstract TField getFieldDesc(F f);

    public Object getFieldValue() {
        return this.value_;
    }

    public F getSetField() {
        return this.setField_;
    }

    public abstract TStruct getStructDesc();

    public boolean isSet() {
        return this.setField_ != null;
    }

    @Override // com.evernote.thrift.TBase
    public void read(TProtocol tProtocol) throws TException {
        this.setField_ = null;
        this.value_ = null;
        tProtocol.readStructBegin();
        TField readFieldBegin = tProtocol.readFieldBegin();
        Object readValue = readValue(tProtocol, readFieldBegin);
        this.value_ = readValue;
        if (readValue != null) {
            this.setField_ = enumForId(readFieldBegin.f21203id);
        }
        tProtocol.readFieldEnd();
        tProtocol.readFieldBegin();
        tProtocol.readStructEnd();
    }

    public abstract Object readValue(TProtocol tProtocol, TField tField) throws TException;

    @Override // com.evernote.thrift.TReflectionBase
    public void setFieldValue(F f, Object obj) {
        checkType(f, obj);
        this.setField_ = f;
        this.value_ = obj;
    }

    public String toString() {
        String str = "<" + getClass().getSimpleName() + " ";
        if (getSetField() != null) {
            Object fieldValue = getFieldValue();
            str = str + getFieldDesc(getSetField()).name + ":" + (fieldValue instanceof byte[] ? bytesToStr((byte[]) fieldValue) : fieldValue.toString());
        }
        return str + ">";
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        if (getSetField() == null || getFieldValue() == null) {
            throw new TProtocolException("Cannot write a TUnion with no set value!");
        }
        tProtocol.writeStructBegin(getStructDesc());
        tProtocol.writeFieldBegin(getFieldDesc(this.setField_));
        writeValue(tProtocol);
        tProtocol.writeFieldEnd();
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    public abstract void writeValue(TProtocol tProtocol) throws TException;

    @Override // com.evernote.thrift.TReflectionBase
    public Object getFieldValue(F f) {
        if (f == this.setField_) {
            return getFieldValue();
        }
        throw new IllegalArgumentException("Cannot get the value of field " + f + " because union's set field is " + this.setField_);
    }

    @Override // com.evernote.thrift.TReflectionBase
    public boolean isSet(F f) {
        return this.setField_ == f;
    }

    public boolean isSet(int i) {
        return isSet((TUnion<T, F>) enumForId((short) i));
    }

    public TUnion(F f, Object obj) {
        setFieldValue((TUnion<T, F>) f, obj);
    }

    public void setFieldValue(int i, Object obj) {
        setFieldValue((TUnion<T, F>) enumForId((short) i), obj);
    }

    public Object getFieldValue(int i) {
        return getFieldValue((TUnion<T, F>) enumForId((short) i));
    }

    public TUnion(TUnion<T, F> tUnion) {
        if (tUnion.getClass().equals(getClass())) {
            this.setField_ = tUnion.setField_;
            this.value_ = deepCopyObject(tUnion.value_);
            return;
        }
        throw new ClassCastException();
    }
}
