package com.evernote.edam.notestore;

import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;

/* loaded from: classes4.dex */
public class RelatedQuery implements TBase<RelatedQuery>, Serializable, Cloneable {
    private NoteFilter filter;
    private String noteGuid;
    private String plainText;
    private String referenceUri;
    private static final TStruct STRUCT_DESC = new TStruct("RelatedQuery");
    private static final TField NOTE_GUID_FIELD_DESC = new TField("noteGuid", (byte) 11, 1);
    private static final TField PLAIN_TEXT_FIELD_DESC = new TField("plainText", (byte) 11, 2);
    private static final TField FILTER_FIELD_DESC = new TField("filter", (byte) 12, 3);
    private static final TField REFERENCE_URI_FIELD_DESC = new TField("referenceUri", (byte) 11, 4);

    public RelatedQuery() {
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.noteGuid = null;
        this.plainText = null;
        this.filter = null;
        this.referenceUri = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof RelatedQuery)) {
            return equals((RelatedQuery) obj);
        }
        return false;
    }

    public NoteFilter getFilter() {
        return this.filter;
    }

    public String getNoteGuid() {
        return this.noteGuid;
    }

    public String getPlainText() {
        return this.plainText;
    }

    public String getReferenceUri() {
        return this.referenceUri;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetFilter() {
        return this.filter != null;
    }

    public boolean isSetNoteGuid() {
        return this.noteGuid != null;
    }

    public boolean isSetPlainText() {
        return this.plainText != null;
    }

    public boolean isSetReferenceUri() {
        return this.referenceUri != null;
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
            if (s != 1) {
                if (s != 2) {
                    if (s != 3) {
                        if (s != 4) {
                            TProtocolUtil.skip(tProtocol, b);
                        } else if (b == 11) {
                            this.referenceUri = tProtocol.readString();
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 12) {
                        NoteFilter noteFilter = new NoteFilter();
                        this.filter = noteFilter;
                        noteFilter.read(tProtocol);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 11) {
                    this.plainText = tProtocol.readString();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 11) {
                this.noteGuid = tProtocol.readString();
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setFilter(NoteFilter noteFilter) {
        this.filter = noteFilter;
    }

    public void setFilterIsSet(boolean z) {
        if (z) {
            return;
        }
        this.filter = null;
    }

    public void setNoteGuid(String str) {
        this.noteGuid = str;
    }

    public void setNoteGuidIsSet(boolean z) {
        if (z) {
            return;
        }
        this.noteGuid = null;
    }

    public void setPlainText(String str) {
        this.plainText = str;
    }

    public void setPlainTextIsSet(boolean z) {
        if (z) {
            return;
        }
        this.plainText = null;
    }

    public void setReferenceUri(String str) {
        this.referenceUri = str;
    }

    public void setReferenceUriIsSet(boolean z) {
        if (z) {
            return;
        }
        this.referenceUri = null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("RelatedQuery(");
        boolean z2 = false;
        if (isSetNoteGuid()) {
            sb.append("noteGuid:");
            String str = this.noteGuid;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (isSetPlainText()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("plainText:");
            String str2 = this.plainText;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
            z = false;
        }
        if (isSetFilter()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("filter:");
            NoteFilter noteFilter = this.filter;
            if (noteFilter == null) {
                sb.append("null");
            } else {
                sb.append(noteFilter);
            }
        } else {
            z2 = z;
        }
        if (isSetReferenceUri()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("referenceUri:");
            String str3 = this.referenceUri;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetFilter() {
        this.filter = null;
    }

    public void unsetNoteGuid() {
        this.noteGuid = null;
    }

    public void unsetPlainText() {
        this.plainText = null;
    }

    public void unsetReferenceUri() {
        this.referenceUri = null;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (this.noteGuid != null && isSetNoteGuid()) {
            tProtocol.writeFieldBegin(NOTE_GUID_FIELD_DESC);
            tProtocol.writeString(this.noteGuid);
            tProtocol.writeFieldEnd();
        }
        if (this.plainText != null && isSetPlainText()) {
            tProtocol.writeFieldBegin(PLAIN_TEXT_FIELD_DESC);
            tProtocol.writeString(this.plainText);
            tProtocol.writeFieldEnd();
        }
        if (this.filter != null && isSetFilter()) {
            tProtocol.writeFieldBegin(FILTER_FIELD_DESC);
            this.filter.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        if (this.referenceUri != null && isSetReferenceUri()) {
            tProtocol.writeFieldBegin(REFERENCE_URI_FIELD_DESC);
            tProtocol.writeString(this.referenceUri);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    public RelatedQuery(RelatedQuery relatedQuery) {
        if (relatedQuery.isSetNoteGuid()) {
            this.noteGuid = relatedQuery.noteGuid;
        }
        if (relatedQuery.isSetPlainText()) {
            this.plainText = relatedQuery.plainText;
        }
        if (relatedQuery.isSetFilter()) {
            this.filter = new NoteFilter(relatedQuery.filter);
        }
        if (relatedQuery.isSetReferenceUri()) {
            this.referenceUri = relatedQuery.referenceUri;
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(RelatedQuery relatedQuery) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        if (!getClass().equals(relatedQuery.getClass())) {
            return getClass().getName().compareTo(relatedQuery.getClass().getName());
        }
        int compareTo5 = Boolean.valueOf(isSetNoteGuid()).compareTo(Boolean.valueOf(relatedQuery.isSetNoteGuid()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (isSetNoteGuid() && (compareTo4 = TBaseHelper.compareTo(this.noteGuid, relatedQuery.noteGuid)) != 0) {
            return compareTo4;
        }
        int compareTo6 = Boolean.valueOf(isSetPlainText()).compareTo(Boolean.valueOf(relatedQuery.isSetPlainText()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (isSetPlainText() && (compareTo3 = TBaseHelper.compareTo(this.plainText, relatedQuery.plainText)) != 0) {
            return compareTo3;
        }
        int compareTo7 = Boolean.valueOf(isSetFilter()).compareTo(Boolean.valueOf(relatedQuery.isSetFilter()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (isSetFilter() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.filter, (Comparable) relatedQuery.filter)) != 0) {
            return compareTo2;
        }
        int compareTo8 = Boolean.valueOf(isSetReferenceUri()).compareTo(Boolean.valueOf(relatedQuery.isSetReferenceUri()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (!isSetReferenceUri() || (compareTo = TBaseHelper.compareTo(this.referenceUri, relatedQuery.referenceUri)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<RelatedQuery> deepCopy2() {
        return new RelatedQuery(this);
    }

    public boolean equals(RelatedQuery relatedQuery) {
        if (relatedQuery == null) {
            return false;
        }
        boolean isSetNoteGuid = isSetNoteGuid();
        boolean isSetNoteGuid2 = relatedQuery.isSetNoteGuid();
        if ((isSetNoteGuid || isSetNoteGuid2) && !(isSetNoteGuid && isSetNoteGuid2 && this.noteGuid.equals(relatedQuery.noteGuid))) {
            return false;
        }
        boolean isSetPlainText = isSetPlainText();
        boolean isSetPlainText2 = relatedQuery.isSetPlainText();
        if ((isSetPlainText || isSetPlainText2) && !(isSetPlainText && isSetPlainText2 && this.plainText.equals(relatedQuery.plainText))) {
            return false;
        }
        boolean isSetFilter = isSetFilter();
        boolean isSetFilter2 = relatedQuery.isSetFilter();
        if ((isSetFilter || isSetFilter2) && !(isSetFilter && isSetFilter2 && this.filter.equals(relatedQuery.filter))) {
            return false;
        }
        boolean isSetReferenceUri = isSetReferenceUri();
        boolean isSetReferenceUri2 = relatedQuery.isSetReferenceUri();
        if (isSetReferenceUri || isSetReferenceUri2) {
            return isSetReferenceUri && isSetReferenceUri2 && this.referenceUri.equals(relatedQuery.referenceUri);
        }
        return true;
    }
}
