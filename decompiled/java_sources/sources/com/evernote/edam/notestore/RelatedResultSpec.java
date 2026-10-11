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
public class RelatedResultSpec implements TBase<RelatedResultSpec>, Serializable, Cloneable {
    private static final int __INCLUDECONTAININGNOTEBOOKS_ISSET_ID = 4;
    private static final int __MAXNOTEBOOKS_ISSET_ID = 1;
    private static final int __MAXNOTES_ISSET_ID = 0;
    private static final int __MAXTAGS_ISSET_ID = 2;
    private static final int __WRITABLENOTEBOOKSONLY_ISSET_ID = 3;
    private boolean[] __isset_vector;
    private boolean includeContainingNotebooks;
    private int maxNotebooks;
    private int maxNotes;
    private int maxTags;
    private boolean writableNotebooksOnly;
    private static final TStruct STRUCT_DESC = new TStruct("RelatedResultSpec");
    private static final TField MAX_NOTES_FIELD_DESC = new TField("maxNotes", (byte) 8, 1);
    private static final TField MAX_NOTEBOOKS_FIELD_DESC = new TField("maxNotebooks", (byte) 8, 2);
    private static final TField MAX_TAGS_FIELD_DESC = new TField("maxTags", (byte) 8, 3);
    private static final TField WRITABLE_NOTEBOOKS_ONLY_FIELD_DESC = new TField("writableNotebooksOnly", (byte) 2, 4);
    private static final TField INCLUDE_CONTAINING_NOTEBOOKS_FIELD_DESC = new TField("includeContainingNotebooks", (byte) 2, 5);

    public RelatedResultSpec() {
        this.__isset_vector = new boolean[5];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setMaxNotesIsSet(false);
        this.maxNotes = 0;
        setMaxNotebooksIsSet(false);
        this.maxNotebooks = 0;
        setMaxTagsIsSet(false);
        this.maxTags = 0;
        setWritableNotebooksOnlyIsSet(false);
        this.writableNotebooksOnly = false;
        setIncludeContainingNotebooksIsSet(false);
        this.includeContainingNotebooks = false;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof RelatedResultSpec)) {
            return equals((RelatedResultSpec) obj);
        }
        return false;
    }

    public int getMaxNotebooks() {
        return this.maxNotebooks;
    }

    public int getMaxNotes() {
        return this.maxNotes;
    }

    public int getMaxTags() {
        return this.maxTags;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isIncludeContainingNotebooks() {
        return this.includeContainingNotebooks;
    }

    public boolean isSetIncludeContainingNotebooks() {
        return this.__isset_vector[4];
    }

    public boolean isSetMaxNotebooks() {
        return this.__isset_vector[1];
    }

    public boolean isSetMaxNotes() {
        return this.__isset_vector[0];
    }

    public boolean isSetMaxTags() {
        return this.__isset_vector[2];
    }

    public boolean isSetWritableNotebooksOnly() {
        return this.__isset_vector[3];
    }

    public boolean isWritableNotebooksOnly() {
        return this.writableNotebooksOnly;
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
                            if (s != 5) {
                                TProtocolUtil.skip(tProtocol, b);
                            } else if (b == 2) {
                                this.includeContainingNotebooks = tProtocol.readBool();
                                setIncludeContainingNotebooksIsSet(true);
                            } else {
                                TProtocolUtil.skip(tProtocol, b);
                            }
                        } else if (b == 2) {
                            this.writableNotebooksOnly = tProtocol.readBool();
                            setWritableNotebooksOnlyIsSet(true);
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 8) {
                        this.maxTags = tProtocol.readI32();
                        setMaxTagsIsSet(true);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 8) {
                    this.maxNotebooks = tProtocol.readI32();
                    setMaxNotebooksIsSet(true);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 8) {
                this.maxNotes = tProtocol.readI32();
                setMaxNotesIsSet(true);
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setIncludeContainingNotebooks(boolean z) {
        this.includeContainingNotebooks = z;
        setIncludeContainingNotebooksIsSet(true);
    }

    public void setIncludeContainingNotebooksIsSet(boolean z) {
        this.__isset_vector[4] = z;
    }

    public void setMaxNotebooks(int i) {
        this.maxNotebooks = i;
        setMaxNotebooksIsSet(true);
    }

    public void setMaxNotebooksIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public void setMaxNotes(int i) {
        this.maxNotes = i;
        setMaxNotesIsSet(true);
    }

    public void setMaxNotesIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setMaxTags(int i) {
        this.maxTags = i;
        setMaxTagsIsSet(true);
    }

    public void setMaxTagsIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public void setWritableNotebooksOnly(boolean z) {
        this.writableNotebooksOnly = z;
        setWritableNotebooksOnlyIsSet(true);
    }

    public void setWritableNotebooksOnlyIsSet(boolean z) {
        this.__isset_vector[3] = z;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("RelatedResultSpec(");
        boolean z2 = false;
        if (isSetMaxNotes()) {
            sb.append("maxNotes:");
            sb.append(this.maxNotes);
            z = false;
        } else {
            z = true;
        }
        if (isSetMaxNotebooks()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("maxNotebooks:");
            sb.append(this.maxNotebooks);
            z = false;
        }
        if (isSetMaxTags()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("maxTags:");
            sb.append(this.maxTags);
            z = false;
        }
        if (isSetWritableNotebooksOnly()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("writableNotebooksOnly:");
            sb.append(this.writableNotebooksOnly);
        } else {
            z2 = z;
        }
        if (isSetIncludeContainingNotebooks()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("includeContainingNotebooks:");
            sb.append(this.includeContainingNotebooks);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetIncludeContainingNotebooks() {
        this.__isset_vector[4] = false;
    }

    public void unsetMaxNotebooks() {
        this.__isset_vector[1] = false;
    }

    public void unsetMaxNotes() {
        this.__isset_vector[0] = false;
    }

    public void unsetMaxTags() {
        this.__isset_vector[2] = false;
    }

    public void unsetWritableNotebooksOnly() {
        this.__isset_vector[3] = false;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (isSetMaxNotes()) {
            tProtocol.writeFieldBegin(MAX_NOTES_FIELD_DESC);
            tProtocol.writeI32(this.maxNotes);
            tProtocol.writeFieldEnd();
        }
        if (isSetMaxNotebooks()) {
            tProtocol.writeFieldBegin(MAX_NOTEBOOKS_FIELD_DESC);
            tProtocol.writeI32(this.maxNotebooks);
            tProtocol.writeFieldEnd();
        }
        if (isSetMaxTags()) {
            tProtocol.writeFieldBegin(MAX_TAGS_FIELD_DESC);
            tProtocol.writeI32(this.maxTags);
            tProtocol.writeFieldEnd();
        }
        if (isSetWritableNotebooksOnly()) {
            tProtocol.writeFieldBegin(WRITABLE_NOTEBOOKS_ONLY_FIELD_DESC);
            tProtocol.writeBool(this.writableNotebooksOnly);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeContainingNotebooks()) {
            tProtocol.writeFieldBegin(INCLUDE_CONTAINING_NOTEBOOKS_FIELD_DESC);
            tProtocol.writeBool(this.includeContainingNotebooks);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(RelatedResultSpec relatedResultSpec) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        int compareTo5;
        if (!getClass().equals(relatedResultSpec.getClass())) {
            return getClass().getName().compareTo(relatedResultSpec.getClass().getName());
        }
        int compareTo6 = Boolean.valueOf(isSetMaxNotes()).compareTo(Boolean.valueOf(relatedResultSpec.isSetMaxNotes()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (isSetMaxNotes() && (compareTo5 = TBaseHelper.compareTo(this.maxNotes, relatedResultSpec.maxNotes)) != 0) {
            return compareTo5;
        }
        int compareTo7 = Boolean.valueOf(isSetMaxNotebooks()).compareTo(Boolean.valueOf(relatedResultSpec.isSetMaxNotebooks()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (isSetMaxNotebooks() && (compareTo4 = TBaseHelper.compareTo(this.maxNotebooks, relatedResultSpec.maxNotebooks)) != 0) {
            return compareTo4;
        }
        int compareTo8 = Boolean.valueOf(isSetMaxTags()).compareTo(Boolean.valueOf(relatedResultSpec.isSetMaxTags()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (isSetMaxTags() && (compareTo3 = TBaseHelper.compareTo(this.maxTags, relatedResultSpec.maxTags)) != 0) {
            return compareTo3;
        }
        int compareTo9 = Boolean.valueOf(isSetWritableNotebooksOnly()).compareTo(Boolean.valueOf(relatedResultSpec.isSetWritableNotebooksOnly()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (isSetWritableNotebooksOnly() && (compareTo2 = TBaseHelper.compareTo(this.writableNotebooksOnly, relatedResultSpec.writableNotebooksOnly)) != 0) {
            return compareTo2;
        }
        int compareTo10 = Boolean.valueOf(isSetIncludeContainingNotebooks()).compareTo(Boolean.valueOf(relatedResultSpec.isSetIncludeContainingNotebooks()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (!isSetIncludeContainingNotebooks() || (compareTo = TBaseHelper.compareTo(this.includeContainingNotebooks, relatedResultSpec.includeContainingNotebooks)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<RelatedResultSpec> deepCopy2() {
        return new RelatedResultSpec(this);
    }

    public RelatedResultSpec(RelatedResultSpec relatedResultSpec) {
        boolean[] zArr = new boolean[5];
        this.__isset_vector = zArr;
        boolean[] zArr2 = relatedResultSpec.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.maxNotes = relatedResultSpec.maxNotes;
        this.maxNotebooks = relatedResultSpec.maxNotebooks;
        this.maxTags = relatedResultSpec.maxTags;
        this.writableNotebooksOnly = relatedResultSpec.writableNotebooksOnly;
        this.includeContainingNotebooks = relatedResultSpec.includeContainingNotebooks;
    }

    public boolean equals(RelatedResultSpec relatedResultSpec) {
        if (relatedResultSpec == null) {
            return false;
        }
        boolean isSetMaxNotes = isSetMaxNotes();
        boolean isSetMaxNotes2 = relatedResultSpec.isSetMaxNotes();
        if ((isSetMaxNotes || isSetMaxNotes2) && !(isSetMaxNotes && isSetMaxNotes2 && this.maxNotes == relatedResultSpec.maxNotes)) {
            return false;
        }
        boolean isSetMaxNotebooks = isSetMaxNotebooks();
        boolean isSetMaxNotebooks2 = relatedResultSpec.isSetMaxNotebooks();
        if ((isSetMaxNotebooks || isSetMaxNotebooks2) && !(isSetMaxNotebooks && isSetMaxNotebooks2 && this.maxNotebooks == relatedResultSpec.maxNotebooks)) {
            return false;
        }
        boolean isSetMaxTags = isSetMaxTags();
        boolean isSetMaxTags2 = relatedResultSpec.isSetMaxTags();
        if ((isSetMaxTags || isSetMaxTags2) && !(isSetMaxTags && isSetMaxTags2 && this.maxTags == relatedResultSpec.maxTags)) {
            return false;
        }
        boolean isSetWritableNotebooksOnly = isSetWritableNotebooksOnly();
        boolean isSetWritableNotebooksOnly2 = relatedResultSpec.isSetWritableNotebooksOnly();
        if ((isSetWritableNotebooksOnly || isSetWritableNotebooksOnly2) && !(isSetWritableNotebooksOnly && isSetWritableNotebooksOnly2 && this.writableNotebooksOnly == relatedResultSpec.writableNotebooksOnly)) {
            return false;
        }
        boolean isSetIncludeContainingNotebooks = isSetIncludeContainingNotebooks();
        boolean isSetIncludeContainingNotebooks2 = relatedResultSpec.isSetIncludeContainingNotebooks();
        if (isSetIncludeContainingNotebooks || isSetIncludeContainingNotebooks2) {
            return isSetIncludeContainingNotebooks && isSetIncludeContainingNotebooks2 && this.includeContainingNotebooks == relatedResultSpec.includeContainingNotebooks;
        }
        return true;
    }
}
