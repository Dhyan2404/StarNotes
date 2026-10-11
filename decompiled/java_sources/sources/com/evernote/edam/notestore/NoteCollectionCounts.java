package com.evernote.edam.notestore;

import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TMap;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public class NoteCollectionCounts implements TBase<NoteCollectionCounts>, Serializable, Cloneable {
    private static final int __TRASHCOUNT_ISSET_ID = 0;
    private boolean[] __isset_vector;
    private Map<String, Integer> notebookCounts;
    private Map<String, Integer> tagCounts;
    private int trashCount;
    private static final TStruct STRUCT_DESC = new TStruct("NoteCollectionCounts");
    private static final TField NOTEBOOK_COUNTS_FIELD_DESC = new TField("notebookCounts", (byte) 13, 1);
    private static final TField TAG_COUNTS_FIELD_DESC = new TField("tagCounts", (byte) 13, 2);
    private static final TField TRASH_COUNT_FIELD_DESC = new TField("trashCount", (byte) 8, 3);

    public NoteCollectionCounts() {
        this.__isset_vector = new boolean[1];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.notebookCounts = null;
        this.tagCounts = null;
        setTrashCountIsSet(false);
        this.trashCount = 0;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof NoteCollectionCounts)) {
            return equals((NoteCollectionCounts) obj);
        }
        return false;
    }

    public Map<String, Integer> getNotebookCounts() {
        return this.notebookCounts;
    }

    public int getNotebookCountsSize() {
        Map<String, Integer> map = this.notebookCounts;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public Map<String, Integer> getTagCounts() {
        return this.tagCounts;
    }

    public int getTagCountsSize() {
        Map<String, Integer> map = this.tagCounts;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public int getTrashCount() {
        return this.trashCount;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetNotebookCounts() {
        return this.notebookCounts != null;
    }

    public boolean isSetTagCounts() {
        return this.tagCounts != null;
    }

    public boolean isSetTrashCount() {
        return this.__isset_vector[0];
    }

    public void putToNotebookCounts(String str, int i) {
        if (this.notebookCounts == null) {
            this.notebookCounts = new HashMap();
        }
        this.notebookCounts.put(str, Integer.valueOf(i));
    }

    public void putToTagCounts(String str, int i) {
        if (this.tagCounts == null) {
            this.tagCounts = new HashMap();
        }
        this.tagCounts.put(str, Integer.valueOf(i));
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
                    if (s != 3) {
                        TProtocolUtil.skip(tProtocol, b);
                    } else if (b == 8) {
                        this.trashCount = tProtocol.readI32();
                        setTrashCountIsSet(true);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 13) {
                    TMap readMapBegin = tProtocol.readMapBegin();
                    this.tagCounts = new HashMap(readMapBegin.size * 2);
                    while (i < readMapBegin.size) {
                        this.tagCounts.put(tProtocol.readString(), Integer.valueOf(tProtocol.readI32()));
                        i++;
                    }
                    tProtocol.readMapEnd();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 13) {
                TMap readMapBegin2 = tProtocol.readMapBegin();
                this.notebookCounts = new HashMap(readMapBegin2.size * 2);
                while (i < readMapBegin2.size) {
                    this.notebookCounts.put(tProtocol.readString(), Integer.valueOf(tProtocol.readI32()));
                    i++;
                }
                tProtocol.readMapEnd();
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setNotebookCounts(Map<String, Integer> map) {
        this.notebookCounts = map;
    }

    public void setNotebookCountsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.notebookCounts = null;
    }

    public void setTagCounts(Map<String, Integer> map) {
        this.tagCounts = map;
    }

    public void setTagCountsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.tagCounts = null;
    }

    public void setTrashCount(int i) {
        this.trashCount = i;
        setTrashCountIsSet(true);
    }

    public void setTrashCountIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("NoteCollectionCounts(");
        boolean z2 = false;
        if (isSetNotebookCounts()) {
            sb.append("notebookCounts:");
            Map<String, Integer> map = this.notebookCounts;
            if (map == null) {
                sb.append("null");
            } else {
                sb.append(map);
            }
            z = false;
        } else {
            z = true;
        }
        if (isSetTagCounts()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("tagCounts:");
            Map<String, Integer> map2 = this.tagCounts;
            if (map2 == null) {
                sb.append("null");
            } else {
                sb.append(map2);
            }
        } else {
            z2 = z;
        }
        if (isSetTrashCount()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("trashCount:");
            sb.append(this.trashCount);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetNotebookCounts() {
        this.notebookCounts = null;
    }

    public void unsetTagCounts() {
        this.tagCounts = null;
    }

    public void unsetTrashCount() {
        this.__isset_vector[0] = false;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (this.notebookCounts != null && isSetNotebookCounts()) {
            tProtocol.writeFieldBegin(NOTEBOOK_COUNTS_FIELD_DESC);
            tProtocol.writeMapBegin(new TMap((byte) 11, (byte) 8, this.notebookCounts.size()));
            for (Map.Entry<String, Integer> entry : this.notebookCounts.entrySet()) {
                tProtocol.writeString(entry.getKey());
                tProtocol.writeI32(entry.getValue().intValue());
            }
            tProtocol.writeMapEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.tagCounts != null && isSetTagCounts()) {
            tProtocol.writeFieldBegin(TAG_COUNTS_FIELD_DESC);
            tProtocol.writeMapBegin(new TMap((byte) 11, (byte) 8, this.tagCounts.size()));
            for (Map.Entry<String, Integer> entry2 : this.tagCounts.entrySet()) {
                tProtocol.writeString(entry2.getKey());
                tProtocol.writeI32(entry2.getValue().intValue());
            }
            tProtocol.writeMapEnd();
            tProtocol.writeFieldEnd();
        }
        if (isSetTrashCount()) {
            tProtocol.writeFieldBegin(TRASH_COUNT_FIELD_DESC);
            tProtocol.writeI32(this.trashCount);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(NoteCollectionCounts noteCollectionCounts) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        if (!getClass().equals(noteCollectionCounts.getClass())) {
            return getClass().getName().compareTo(noteCollectionCounts.getClass().getName());
        }
        int compareTo4 = Boolean.valueOf(isSetNotebookCounts()).compareTo(Boolean.valueOf(noteCollectionCounts.isSetNotebookCounts()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (isSetNotebookCounts() && (compareTo3 = TBaseHelper.compareTo((Map) this.notebookCounts, (Map) noteCollectionCounts.notebookCounts)) != 0) {
            return compareTo3;
        }
        int compareTo5 = Boolean.valueOf(isSetTagCounts()).compareTo(Boolean.valueOf(noteCollectionCounts.isSetTagCounts()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (isSetTagCounts() && (compareTo2 = TBaseHelper.compareTo((Map) this.tagCounts, (Map) noteCollectionCounts.tagCounts)) != 0) {
            return compareTo2;
        }
        int compareTo6 = Boolean.valueOf(isSetTrashCount()).compareTo(Boolean.valueOf(noteCollectionCounts.isSetTrashCount()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (!isSetTrashCount() || (compareTo = TBaseHelper.compareTo(this.trashCount, noteCollectionCounts.trashCount)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<NoteCollectionCounts> deepCopy2() {
        return new NoteCollectionCounts(this);
    }

    public NoteCollectionCounts(NoteCollectionCounts noteCollectionCounts) {
        boolean[] zArr = new boolean[1];
        this.__isset_vector = zArr;
        boolean[] zArr2 = noteCollectionCounts.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        if (noteCollectionCounts.isSetNotebookCounts()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, Integer> entry : noteCollectionCounts.notebookCounts.entrySet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            this.notebookCounts = hashMap;
        }
        if (noteCollectionCounts.isSetTagCounts()) {
            HashMap hashMap2 = new HashMap();
            for (Map.Entry<String, Integer> entry2 : noteCollectionCounts.tagCounts.entrySet()) {
                hashMap2.put(entry2.getKey(), entry2.getValue());
            }
            this.tagCounts = hashMap2;
        }
        this.trashCount = noteCollectionCounts.trashCount;
    }

    public boolean equals(NoteCollectionCounts noteCollectionCounts) {
        if (noteCollectionCounts == null) {
            return false;
        }
        boolean isSetNotebookCounts = isSetNotebookCounts();
        boolean isSetNotebookCounts2 = noteCollectionCounts.isSetNotebookCounts();
        if ((isSetNotebookCounts || isSetNotebookCounts2) && !(isSetNotebookCounts && isSetNotebookCounts2 && this.notebookCounts.equals(noteCollectionCounts.notebookCounts))) {
            return false;
        }
        boolean isSetTagCounts = isSetTagCounts();
        boolean isSetTagCounts2 = noteCollectionCounts.isSetTagCounts();
        if ((isSetTagCounts || isSetTagCounts2) && !(isSetTagCounts && isSetTagCounts2 && this.tagCounts.equals(noteCollectionCounts.tagCounts))) {
            return false;
        }
        boolean isSetTrashCount = isSetTrashCount();
        boolean isSetTrashCount2 = noteCollectionCounts.isSetTrashCount();
        if (isSetTrashCount || isSetTrashCount2) {
            return isSetTrashCount && isSetTrashCount2 && this.trashCount == noteCollectionCounts.trashCount;
        }
        return true;
    }
}
