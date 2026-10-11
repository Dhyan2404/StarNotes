package com.evernote.edam.notestore;

import androidx.core.net.MailTo;
import com.evernote.edam.type.Note;
import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TList;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class NoteEmailParameters implements TBase<NoteEmailParameters>, Serializable, Cloneable {
    private List<String> ccAddresses;
    private String guid;
    private String message;
    private Note note;
    private String subject;
    private List<String> toAddresses;
    private static final TStruct STRUCT_DESC = new TStruct("NoteEmailParameters");
    private static final TField GUID_FIELD_DESC = new TField("guid", (byte) 11, 1);
    private static final TField NOTE_FIELD_DESC = new TField("note", (byte) 12, 2);
    private static final TField TO_ADDRESSES_FIELD_DESC = new TField("toAddresses", (byte) 15, 3);
    private static final TField CC_ADDRESSES_FIELD_DESC = new TField("ccAddresses", (byte) 15, 4);
    private static final TField SUBJECT_FIELD_DESC = new TField(MailTo.f5529g, (byte) 11, 5);
    private static final TField MESSAGE_FIELD_DESC = new TField("message", (byte) 11, 6);

    public NoteEmailParameters() {
    }

    public void addToCcAddresses(String str) {
        if (this.ccAddresses == null) {
            this.ccAddresses = new ArrayList();
        }
        this.ccAddresses.add(str);
    }

    public void addToToAddresses(String str) {
        if (this.toAddresses == null) {
            this.toAddresses = new ArrayList();
        }
        this.toAddresses.add(str);
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.guid = null;
        this.note = null;
        this.toAddresses = null;
        this.ccAddresses = null;
        this.subject = null;
        this.message = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof NoteEmailParameters)) {
            return equals((NoteEmailParameters) obj);
        }
        return false;
    }

    public List<String> getCcAddresses() {
        return this.ccAddresses;
    }

    public Iterator<String> getCcAddressesIterator() {
        List<String> list = this.ccAddresses;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getCcAddressesSize() {
        List<String> list = this.ccAddresses;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public String getGuid() {
        return this.guid;
    }

    public String getMessage() {
        return this.message;
    }

    public Note getNote() {
        return this.note;
    }

    public String getSubject() {
        return this.subject;
    }

    public List<String> getToAddresses() {
        return this.toAddresses;
    }

    public Iterator<String> getToAddressesIterator() {
        List<String> list = this.toAddresses;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getToAddressesSize() {
        List<String> list = this.toAddresses;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetCcAddresses() {
        return this.ccAddresses != null;
    }

    public boolean isSetGuid() {
        return this.guid != null;
    }

    public boolean isSetMessage() {
        return this.message != null;
    }

    public boolean isSetNote() {
        return this.note != null;
    }

    public boolean isSetSubject() {
        return this.subject != null;
    }

    public boolean isSetToAddresses() {
        return this.toAddresses != null;
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
            int i = 0;
            switch (readFieldBegin.f21203id) {
                case 1:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.guid = tProtocol.readString();
                        break;
                    }
                case 2:
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        Note note = new Note();
                        this.note = note;
                        note.read(tProtocol);
                        break;
                    }
                case 3:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin = tProtocol.readListBegin();
                        this.toAddresses = new ArrayList(readListBegin.size);
                        while (i < readListBegin.size) {
                            this.toAddresses.add(tProtocol.readString());
                            i++;
                        }
                        tProtocol.readListEnd();
                        break;
                    }
                case 4:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin2 = tProtocol.readListBegin();
                        this.ccAddresses = new ArrayList(readListBegin2.size);
                        while (i < readListBegin2.size) {
                            this.ccAddresses.add(tProtocol.readString());
                            i++;
                        }
                        tProtocol.readListEnd();
                        break;
                    }
                case 5:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.subject = tProtocol.readString();
                        break;
                    }
                case 6:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.message = tProtocol.readString();
                        break;
                    }
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setCcAddresses(List<String> list) {
        this.ccAddresses = list;
    }

    public void setCcAddressesIsSet(boolean z) {
        if (z) {
            return;
        }
        this.ccAddresses = null;
    }

    public void setGuid(String str) {
        this.guid = str;
    }

    public void setGuidIsSet(boolean z) {
        if (z) {
            return;
        }
        this.guid = null;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setMessageIsSet(boolean z) {
        if (z) {
            return;
        }
        this.message = null;
    }

    public void setNote(Note note) {
        this.note = note;
    }

    public void setNoteIsSet(boolean z) {
        if (z) {
            return;
        }
        this.note = null;
    }

    public void setSubject(String str) {
        this.subject = str;
    }

    public void setSubjectIsSet(boolean z) {
        if (z) {
            return;
        }
        this.subject = null;
    }

    public void setToAddresses(List<String> list) {
        this.toAddresses = list;
    }

    public void setToAddressesIsSet(boolean z) {
        if (z) {
            return;
        }
        this.toAddresses = null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("NoteEmailParameters(");
        boolean z2 = false;
        if (isSetGuid()) {
            sb.append("guid:");
            String str = this.guid;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (isSetNote()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("note:");
            Note note = this.note;
            if (note == null) {
                sb.append("null");
            } else {
                sb.append(note);
            }
            z = false;
        }
        if (isSetToAddresses()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("toAddresses:");
            List<String> list = this.toAddresses;
            if (list == null) {
                sb.append("null");
            } else {
                sb.append(list);
            }
            z = false;
        }
        if (isSetCcAddresses()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("ccAddresses:");
            List<String> list2 = this.ccAddresses;
            if (list2 == null) {
                sb.append("null");
            } else {
                sb.append(list2);
            }
            z = false;
        }
        if (isSetSubject()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("subject:");
            String str2 = this.subject;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        } else {
            z2 = z;
        }
        if (isSetMessage()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("message:");
            String str3 = this.message;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetCcAddresses() {
        this.ccAddresses = null;
    }

    public void unsetGuid() {
        this.guid = null;
    }

    public void unsetMessage() {
        this.message = null;
    }

    public void unsetNote() {
        this.note = null;
    }

    public void unsetSubject() {
        this.subject = null;
    }

    public void unsetToAddresses() {
        this.toAddresses = null;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (this.guid != null && isSetGuid()) {
            tProtocol.writeFieldBegin(GUID_FIELD_DESC);
            tProtocol.writeString(this.guid);
            tProtocol.writeFieldEnd();
        }
        if (this.note != null && isSetNote()) {
            tProtocol.writeFieldBegin(NOTE_FIELD_DESC);
            this.note.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        if (this.toAddresses != null && isSetToAddresses()) {
            tProtocol.writeFieldBegin(TO_ADDRESSES_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 11, this.toAddresses.size()));
            Iterator<String> it2 = this.toAddresses.iterator();
            while (it2.hasNext()) {
                tProtocol.writeString(it2.next());
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.ccAddresses != null && isSetCcAddresses()) {
            tProtocol.writeFieldBegin(CC_ADDRESSES_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 11, this.ccAddresses.size()));
            Iterator<String> it3 = this.ccAddresses.iterator();
            while (it3.hasNext()) {
                tProtocol.writeString(it3.next());
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.subject != null && isSetSubject()) {
            tProtocol.writeFieldBegin(SUBJECT_FIELD_DESC);
            tProtocol.writeString(this.subject);
            tProtocol.writeFieldEnd();
        }
        if (this.message != null && isSetMessage()) {
            tProtocol.writeFieldBegin(MESSAGE_FIELD_DESC);
            tProtocol.writeString(this.message);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    public NoteEmailParameters(NoteEmailParameters noteEmailParameters) {
        if (noteEmailParameters.isSetGuid()) {
            this.guid = noteEmailParameters.guid;
        }
        if (noteEmailParameters.isSetNote()) {
            this.note = new Note(noteEmailParameters.note);
        }
        if (noteEmailParameters.isSetToAddresses()) {
            ArrayList arrayList = new ArrayList();
            Iterator<String> it2 = noteEmailParameters.toAddresses.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            this.toAddresses = arrayList;
        }
        if (noteEmailParameters.isSetCcAddresses()) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<String> it3 = noteEmailParameters.ccAddresses.iterator();
            while (it3.hasNext()) {
                arrayList2.add(it3.next());
            }
            this.ccAddresses = arrayList2;
        }
        if (noteEmailParameters.isSetSubject()) {
            this.subject = noteEmailParameters.subject;
        }
        if (noteEmailParameters.isSetMessage()) {
            this.message = noteEmailParameters.message;
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(NoteEmailParameters noteEmailParameters) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        int compareTo5;
        int compareTo6;
        if (!getClass().equals(noteEmailParameters.getClass())) {
            return getClass().getName().compareTo(noteEmailParameters.getClass().getName());
        }
        int compareTo7 = Boolean.valueOf(isSetGuid()).compareTo(Boolean.valueOf(noteEmailParameters.isSetGuid()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (isSetGuid() && (compareTo6 = TBaseHelper.compareTo(this.guid, noteEmailParameters.guid)) != 0) {
            return compareTo6;
        }
        int compareTo8 = Boolean.valueOf(isSetNote()).compareTo(Boolean.valueOf(noteEmailParameters.isSetNote()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (isSetNote() && (compareTo5 = TBaseHelper.compareTo((Comparable) this.note, (Comparable) noteEmailParameters.note)) != 0) {
            return compareTo5;
        }
        int compareTo9 = Boolean.valueOf(isSetToAddresses()).compareTo(Boolean.valueOf(noteEmailParameters.isSetToAddresses()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (isSetToAddresses() && (compareTo4 = TBaseHelper.compareTo((List) this.toAddresses, (List) noteEmailParameters.toAddresses)) != 0) {
            return compareTo4;
        }
        int compareTo10 = Boolean.valueOf(isSetCcAddresses()).compareTo(Boolean.valueOf(noteEmailParameters.isSetCcAddresses()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (isSetCcAddresses() && (compareTo3 = TBaseHelper.compareTo((List) this.ccAddresses, (List) noteEmailParameters.ccAddresses)) != 0) {
            return compareTo3;
        }
        int compareTo11 = Boolean.valueOf(isSetSubject()).compareTo(Boolean.valueOf(noteEmailParameters.isSetSubject()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (isSetSubject() && (compareTo2 = TBaseHelper.compareTo(this.subject, noteEmailParameters.subject)) != 0) {
            return compareTo2;
        }
        int compareTo12 = Boolean.valueOf(isSetMessage()).compareTo(Boolean.valueOf(noteEmailParameters.isSetMessage()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (!isSetMessage() || (compareTo = TBaseHelper.compareTo(this.message, noteEmailParameters.message)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<NoteEmailParameters> deepCopy2() {
        return new NoteEmailParameters(this);
    }

    public boolean equals(NoteEmailParameters noteEmailParameters) {
        if (noteEmailParameters == null) {
            return false;
        }
        boolean isSetGuid = isSetGuid();
        boolean isSetGuid2 = noteEmailParameters.isSetGuid();
        if ((isSetGuid || isSetGuid2) && !(isSetGuid && isSetGuid2 && this.guid.equals(noteEmailParameters.guid))) {
            return false;
        }
        boolean isSetNote = isSetNote();
        boolean isSetNote2 = noteEmailParameters.isSetNote();
        if ((isSetNote || isSetNote2) && !(isSetNote && isSetNote2 && this.note.equals(noteEmailParameters.note))) {
            return false;
        }
        boolean isSetToAddresses = isSetToAddresses();
        boolean isSetToAddresses2 = noteEmailParameters.isSetToAddresses();
        if ((isSetToAddresses || isSetToAddresses2) && !(isSetToAddresses && isSetToAddresses2 && this.toAddresses.equals(noteEmailParameters.toAddresses))) {
            return false;
        }
        boolean isSetCcAddresses = isSetCcAddresses();
        boolean isSetCcAddresses2 = noteEmailParameters.isSetCcAddresses();
        if ((isSetCcAddresses || isSetCcAddresses2) && !(isSetCcAddresses && isSetCcAddresses2 && this.ccAddresses.equals(noteEmailParameters.ccAddresses))) {
            return false;
        }
        boolean isSetSubject = isSetSubject();
        boolean isSetSubject2 = noteEmailParameters.isSetSubject();
        if ((isSetSubject || isSetSubject2) && !(isSetSubject && isSetSubject2 && this.subject.equals(noteEmailParameters.subject))) {
            return false;
        }
        boolean isSetMessage = isSetMessage();
        boolean isSetMessage2 = noteEmailParameters.isSetMessage();
        if (isSetMessage || isSetMessage2) {
            return isSetMessage && isSetMessage2 && this.message.equals(noteEmailParameters.message);
        }
        return true;
    }
}
