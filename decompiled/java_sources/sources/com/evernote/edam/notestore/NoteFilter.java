package com.evernote.edam.notestore;

import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TList;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class NoteFilter implements TBase<NoteFilter>, Serializable, Cloneable {
    private static final int __ASCENDING_ISSET_ID = 1;
    private static final int __INACTIVE_ISSET_ID = 2;
    private static final int __ORDER_ISSET_ID = 0;
    private boolean[] __isset_vector;
    private boolean ascending;
    private String emphasized;
    private boolean inactive;
    private String notebookGuid;
    private int order;
    private List<String> tagGuids;
    private String timeZone;
    private String words;
    private static final TStruct STRUCT_DESC = new TStruct("NoteFilter");
    private static final TField ORDER_FIELD_DESC = new TField(Constants.ATTRNAME_ORDER, (byte) 8, 1);
    private static final TField ASCENDING_FIELD_DESC = new TField(Constants.ATTRVAL_ORDER_ASCENDING, (byte) 2, 2);
    private static final TField WORDS_FIELD_DESC = new TField("words", (byte) 11, 3);
    private static final TField NOTEBOOK_GUID_FIELD_DESC = new TField("notebookGuid", (byte) 11, 4);
    private static final TField TAG_GUIDS_FIELD_DESC = new TField("tagGuids", (byte) 15, 5);
    private static final TField TIME_ZONE_FIELD_DESC = new TField("timeZone", (byte) 11, 6);
    private static final TField INACTIVE_FIELD_DESC = new TField("inactive", (byte) 2, 7);
    private static final TField EMPHASIZED_FIELD_DESC = new TField("emphasized", (byte) 11, 8);

    public NoteFilter() {
        this.__isset_vector = new boolean[3];
    }

    public void addToTagGuids(String str) {
        if (this.tagGuids == null) {
            this.tagGuids = new ArrayList();
        }
        this.tagGuids.add(str);
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setOrderIsSet(false);
        this.order = 0;
        setAscendingIsSet(false);
        this.ascending = false;
        this.words = null;
        this.notebookGuid = null;
        this.tagGuids = null;
        this.timeZone = null;
        setInactiveIsSet(false);
        this.inactive = false;
        this.emphasized = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof NoteFilter)) {
            return equals((NoteFilter) obj);
        }
        return false;
    }

    public String getEmphasized() {
        return this.emphasized;
    }

    public String getNotebookGuid() {
        return this.notebookGuid;
    }

    public int getOrder() {
        return this.order;
    }

    public List<String> getTagGuids() {
        return this.tagGuids;
    }

    public Iterator<String> getTagGuidsIterator() {
        List<String> list = this.tagGuids;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getTagGuidsSize() {
        List<String> list = this.tagGuids;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public String getTimeZone() {
        return this.timeZone;
    }

    public String getWords() {
        return this.words;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isAscending() {
        return this.ascending;
    }

    public boolean isInactive() {
        return this.inactive;
    }

    public boolean isSetAscending() {
        return this.__isset_vector[1];
    }

    public boolean isSetEmphasized() {
        return this.emphasized != null;
    }

    public boolean isSetInactive() {
        return this.__isset_vector[2];
    }

    public boolean isSetNotebookGuid() {
        return this.notebookGuid != null;
    }

    public boolean isSetOrder() {
        return this.__isset_vector[0];
    }

    public boolean isSetTagGuids() {
        return this.tagGuids != null;
    }

    public boolean isSetTimeZone() {
        return this.timeZone != null;
    }

    public boolean isSetWords() {
        return this.words != null;
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
            switch (readFieldBegin.f21203id) {
                case 1:
                    if (b == 8) {
                        this.order = tProtocol.readI32();
                        setOrderIsSet(true);
                        break;
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    }
                case 2:
                    if (b == 2) {
                        this.ascending = tProtocol.readBool();
                        setAscendingIsSet(true);
                        break;
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    }
                case 3:
                    if (b == 11) {
                        this.words = tProtocol.readString();
                        break;
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    }
                case 4:
                    if (b == 11) {
                        this.notebookGuid = tProtocol.readString();
                        break;
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    }
                case 5:
                    if (b == 15) {
                        TList readListBegin = tProtocol.readListBegin();
                        this.tagGuids = new ArrayList(readListBegin.size);
                        for (int i = 0; i < readListBegin.size; i++) {
                            this.tagGuids.add(tProtocol.readString());
                        }
                        tProtocol.readListEnd();
                        break;
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    }
                case 6:
                    if (b == 11) {
                        this.timeZone = tProtocol.readString();
                        break;
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    }
                case 7:
                    if (b == 2) {
                        this.inactive = tProtocol.readBool();
                        setInactiveIsSet(true);
                        break;
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    }
                case 8:
                    if (b == 11) {
                        this.emphasized = tProtocol.readString();
                        break;
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    }
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setAscending(boolean z) {
        this.ascending = z;
        setAscendingIsSet(true);
    }

    public void setAscendingIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public void setEmphasized(String str) {
        this.emphasized = str;
    }

    public void setEmphasizedIsSet(boolean z) {
        if (z) {
            return;
        }
        this.emphasized = null;
    }

    public void setInactive(boolean z) {
        this.inactive = z;
        setInactiveIsSet(true);
    }

    public void setInactiveIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public void setNotebookGuid(String str) {
        this.notebookGuid = str;
    }

    public void setNotebookGuidIsSet(boolean z) {
        if (z) {
            return;
        }
        this.notebookGuid = null;
    }

    public void setOrder(int i) {
        this.order = i;
        setOrderIsSet(true);
    }

    public void setOrderIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setTagGuids(List<String> list) {
        this.tagGuids = list;
    }

    public void setTagGuidsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.tagGuids = null;
    }

    public void setTimeZone(String str) {
        this.timeZone = str;
    }

    public void setTimeZoneIsSet(boolean z) {
        if (z) {
            return;
        }
        this.timeZone = null;
    }

    public void setWords(String str) {
        this.words = str;
    }

    public void setWordsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.words = null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("NoteFilter(");
        boolean z2 = false;
        if (isSetOrder()) {
            sb.append("order:");
            sb.append(this.order);
            z = false;
        } else {
            z = true;
        }
        if (isSetAscending()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("ascending:");
            sb.append(this.ascending);
            z = false;
        }
        if (isSetWords()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("words:");
            String str = this.words;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        }
        if (isSetNotebookGuid()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("notebookGuid:");
            String str2 = this.notebookGuid;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
            z = false;
        }
        if (isSetTagGuids()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("tagGuids:");
            List<String> list = this.tagGuids;
            if (list == null) {
                sb.append("null");
            } else {
                sb.append(list);
            }
            z = false;
        }
        if (isSetTimeZone()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("timeZone:");
            String str3 = this.timeZone;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
            z = false;
        }
        if (isSetInactive()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("inactive:");
            sb.append(this.inactive);
        } else {
            z2 = z;
        }
        if (isSetEmphasized()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("emphasized:");
            String str4 = this.emphasized;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetAscending() {
        this.__isset_vector[1] = false;
    }

    public void unsetEmphasized() {
        this.emphasized = null;
    }

    public void unsetInactive() {
        this.__isset_vector[2] = false;
    }

    public void unsetNotebookGuid() {
        this.notebookGuid = null;
    }

    public void unsetOrder() {
        this.__isset_vector[0] = false;
    }

    public void unsetTagGuids() {
        this.tagGuids = null;
    }

    public void unsetTimeZone() {
        this.timeZone = null;
    }

    public void unsetWords() {
        this.words = null;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (isSetOrder()) {
            tProtocol.writeFieldBegin(ORDER_FIELD_DESC);
            tProtocol.writeI32(this.order);
            tProtocol.writeFieldEnd();
        }
        if (isSetAscending()) {
            tProtocol.writeFieldBegin(ASCENDING_FIELD_DESC);
            tProtocol.writeBool(this.ascending);
            tProtocol.writeFieldEnd();
        }
        if (this.words != null && isSetWords()) {
            tProtocol.writeFieldBegin(WORDS_FIELD_DESC);
            tProtocol.writeString(this.words);
            tProtocol.writeFieldEnd();
        }
        if (this.notebookGuid != null && isSetNotebookGuid()) {
            tProtocol.writeFieldBegin(NOTEBOOK_GUID_FIELD_DESC);
            tProtocol.writeString(this.notebookGuid);
            tProtocol.writeFieldEnd();
        }
        if (this.tagGuids != null && isSetTagGuids()) {
            tProtocol.writeFieldBegin(TAG_GUIDS_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 11, this.tagGuids.size()));
            Iterator<String> it2 = this.tagGuids.iterator();
            while (it2.hasNext()) {
                tProtocol.writeString(it2.next());
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.timeZone != null && isSetTimeZone()) {
            tProtocol.writeFieldBegin(TIME_ZONE_FIELD_DESC);
            tProtocol.writeString(this.timeZone);
            tProtocol.writeFieldEnd();
        }
        if (isSetInactive()) {
            tProtocol.writeFieldBegin(INACTIVE_FIELD_DESC);
            tProtocol.writeBool(this.inactive);
            tProtocol.writeFieldEnd();
        }
        if (this.emphasized != null && isSetEmphasized()) {
            tProtocol.writeFieldBegin(EMPHASIZED_FIELD_DESC);
            tProtocol.writeString(this.emphasized);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(NoteFilter noteFilter) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        int compareTo5;
        int compareTo6;
        int compareTo7;
        int compareTo8;
        if (!getClass().equals(noteFilter.getClass())) {
            return getClass().getName().compareTo(noteFilter.getClass().getName());
        }
        int compareTo9 = Boolean.valueOf(isSetOrder()).compareTo(Boolean.valueOf(noteFilter.isSetOrder()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (isSetOrder() && (compareTo8 = TBaseHelper.compareTo(this.order, noteFilter.order)) != 0) {
            return compareTo8;
        }
        int compareTo10 = Boolean.valueOf(isSetAscending()).compareTo(Boolean.valueOf(noteFilter.isSetAscending()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (isSetAscending() && (compareTo7 = TBaseHelper.compareTo(this.ascending, noteFilter.ascending)) != 0) {
            return compareTo7;
        }
        int compareTo11 = Boolean.valueOf(isSetWords()).compareTo(Boolean.valueOf(noteFilter.isSetWords()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (isSetWords() && (compareTo6 = TBaseHelper.compareTo(this.words, noteFilter.words)) != 0) {
            return compareTo6;
        }
        int compareTo12 = Boolean.valueOf(isSetNotebookGuid()).compareTo(Boolean.valueOf(noteFilter.isSetNotebookGuid()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (isSetNotebookGuid() && (compareTo5 = TBaseHelper.compareTo(this.notebookGuid, noteFilter.notebookGuid)) != 0) {
            return compareTo5;
        }
        int compareTo13 = Boolean.valueOf(isSetTagGuids()).compareTo(Boolean.valueOf(noteFilter.isSetTagGuids()));
        if (compareTo13 != 0) {
            return compareTo13;
        }
        if (isSetTagGuids() && (compareTo4 = TBaseHelper.compareTo((List) this.tagGuids, (List) noteFilter.tagGuids)) != 0) {
            return compareTo4;
        }
        int compareTo14 = Boolean.valueOf(isSetTimeZone()).compareTo(Boolean.valueOf(noteFilter.isSetTimeZone()));
        if (compareTo14 != 0) {
            return compareTo14;
        }
        if (isSetTimeZone() && (compareTo3 = TBaseHelper.compareTo(this.timeZone, noteFilter.timeZone)) != 0) {
            return compareTo3;
        }
        int compareTo15 = Boolean.valueOf(isSetInactive()).compareTo(Boolean.valueOf(noteFilter.isSetInactive()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (isSetInactive() && (compareTo2 = TBaseHelper.compareTo(this.inactive, noteFilter.inactive)) != 0) {
            return compareTo2;
        }
        int compareTo16 = Boolean.valueOf(isSetEmphasized()).compareTo(Boolean.valueOf(noteFilter.isSetEmphasized()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (!isSetEmphasized() || (compareTo = TBaseHelper.compareTo(this.emphasized, noteFilter.emphasized)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<NoteFilter> deepCopy2() {
        return new NoteFilter(this);
    }

    public NoteFilter(NoteFilter noteFilter) {
        boolean[] zArr = new boolean[3];
        this.__isset_vector = zArr;
        boolean[] zArr2 = noteFilter.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.order = noteFilter.order;
        this.ascending = noteFilter.ascending;
        if (noteFilter.isSetWords()) {
            this.words = noteFilter.words;
        }
        if (noteFilter.isSetNotebookGuid()) {
            this.notebookGuid = noteFilter.notebookGuid;
        }
        if (noteFilter.isSetTagGuids()) {
            ArrayList arrayList = new ArrayList();
            Iterator<String> it2 = noteFilter.tagGuids.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            this.tagGuids = arrayList;
        }
        if (noteFilter.isSetTimeZone()) {
            this.timeZone = noteFilter.timeZone;
        }
        this.inactive = noteFilter.inactive;
        if (noteFilter.isSetEmphasized()) {
            this.emphasized = noteFilter.emphasized;
        }
    }

    public boolean equals(NoteFilter noteFilter) {
        if (noteFilter == null) {
            return false;
        }
        boolean isSetOrder = isSetOrder();
        boolean isSetOrder2 = noteFilter.isSetOrder();
        if ((isSetOrder || isSetOrder2) && !(isSetOrder && isSetOrder2 && this.order == noteFilter.order)) {
            return false;
        }
        boolean isSetAscending = isSetAscending();
        boolean isSetAscending2 = noteFilter.isSetAscending();
        if ((isSetAscending || isSetAscending2) && !(isSetAscending && isSetAscending2 && this.ascending == noteFilter.ascending)) {
            return false;
        }
        boolean isSetWords = isSetWords();
        boolean isSetWords2 = noteFilter.isSetWords();
        if ((isSetWords || isSetWords2) && !(isSetWords && isSetWords2 && this.words.equals(noteFilter.words))) {
            return false;
        }
        boolean isSetNotebookGuid = isSetNotebookGuid();
        boolean isSetNotebookGuid2 = noteFilter.isSetNotebookGuid();
        if ((isSetNotebookGuid || isSetNotebookGuid2) && !(isSetNotebookGuid && isSetNotebookGuid2 && this.notebookGuid.equals(noteFilter.notebookGuid))) {
            return false;
        }
        boolean isSetTagGuids = isSetTagGuids();
        boolean isSetTagGuids2 = noteFilter.isSetTagGuids();
        if ((isSetTagGuids || isSetTagGuids2) && !(isSetTagGuids && isSetTagGuids2 && this.tagGuids.equals(noteFilter.tagGuids))) {
            return false;
        }
        boolean isSetTimeZone = isSetTimeZone();
        boolean isSetTimeZone2 = noteFilter.isSetTimeZone();
        if ((isSetTimeZone || isSetTimeZone2) && !(isSetTimeZone && isSetTimeZone2 && this.timeZone.equals(noteFilter.timeZone))) {
            return false;
        }
        boolean isSetInactive = isSetInactive();
        boolean isSetInactive2 = noteFilter.isSetInactive();
        if ((isSetInactive || isSetInactive2) && !(isSetInactive && isSetInactive2 && this.inactive == noteFilter.inactive)) {
            return false;
        }
        boolean isSetEmphasized = isSetEmphasized();
        boolean isSetEmphasized2 = noteFilter.isSetEmphasized();
        if (isSetEmphasized || isSetEmphasized2) {
            return isSetEmphasized && isSetEmphasized2 && this.emphasized.equals(noteFilter.emphasized);
        }
        return true;
    }
}
