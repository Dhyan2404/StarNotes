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
public class NotesMetadataResultSpec implements TBase<NotesMetadataResultSpec>, Serializable, Cloneable {
    private static final int __INCLUDEATTRIBUTES_ISSET_ID = 8;
    private static final int __INCLUDECONTENTLENGTH_ISSET_ID = 1;
    private static final int __INCLUDECREATED_ISSET_ID = 2;
    private static final int __INCLUDEDELETED_ISSET_ID = 4;
    private static final int __INCLUDELARGESTRESOURCEMIME_ISSET_ID = 9;
    private static final int __INCLUDELARGESTRESOURCESIZE_ISSET_ID = 10;
    private static final int __INCLUDENOTEBOOKGUID_ISSET_ID = 6;
    private static final int __INCLUDETAGGUIDS_ISSET_ID = 7;
    private static final int __INCLUDETITLE_ISSET_ID = 0;
    private static final int __INCLUDEUPDATED_ISSET_ID = 3;
    private static final int __INCLUDEUPDATESEQUENCENUM_ISSET_ID = 5;
    private boolean[] __isset_vector;
    private boolean includeAttributes;
    private boolean includeContentLength;
    private boolean includeCreated;
    private boolean includeDeleted;
    private boolean includeLargestResourceMime;
    private boolean includeLargestResourceSize;
    private boolean includeNotebookGuid;
    private boolean includeTagGuids;
    private boolean includeTitle;
    private boolean includeUpdateSequenceNum;
    private boolean includeUpdated;
    private static final TStruct STRUCT_DESC = new TStruct("NotesMetadataResultSpec");
    private static final TField INCLUDE_TITLE_FIELD_DESC = new TField("includeTitle", (byte) 2, 2);
    private static final TField INCLUDE_CONTENT_LENGTH_FIELD_DESC = new TField("includeContentLength", (byte) 2, 5);
    private static final TField INCLUDE_CREATED_FIELD_DESC = new TField("includeCreated", (byte) 2, 6);
    private static final TField INCLUDE_UPDATED_FIELD_DESC = new TField("includeUpdated", (byte) 2, 7);
    private static final TField INCLUDE_DELETED_FIELD_DESC = new TField("includeDeleted", (byte) 2, 8);
    private static final TField INCLUDE_UPDATE_SEQUENCE_NUM_FIELD_DESC = new TField("includeUpdateSequenceNum", (byte) 2, 10);
    private static final TField INCLUDE_NOTEBOOK_GUID_FIELD_DESC = new TField("includeNotebookGuid", (byte) 2, 11);
    private static final TField INCLUDE_TAG_GUIDS_FIELD_DESC = new TField("includeTagGuids", (byte) 2, 12);
    private static final TField INCLUDE_ATTRIBUTES_FIELD_DESC = new TField("includeAttributes", (byte) 2, 14);
    private static final TField INCLUDE_LARGEST_RESOURCE_MIME_FIELD_DESC = new TField("includeLargestResourceMime", (byte) 2, 20);
    private static final TField INCLUDE_LARGEST_RESOURCE_SIZE_FIELD_DESC = new TField("includeLargestResourceSize", (byte) 2, 21);

    public NotesMetadataResultSpec() {
        this.__isset_vector = new boolean[11];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setIncludeTitleIsSet(false);
        this.includeTitle = false;
        setIncludeContentLengthIsSet(false);
        this.includeContentLength = false;
        setIncludeCreatedIsSet(false);
        this.includeCreated = false;
        setIncludeUpdatedIsSet(false);
        this.includeUpdated = false;
        setIncludeDeletedIsSet(false);
        this.includeDeleted = false;
        setIncludeUpdateSequenceNumIsSet(false);
        this.includeUpdateSequenceNum = false;
        setIncludeNotebookGuidIsSet(false);
        this.includeNotebookGuid = false;
        setIncludeTagGuidsIsSet(false);
        this.includeTagGuids = false;
        setIncludeAttributesIsSet(false);
        this.includeAttributes = false;
        setIncludeLargestResourceMimeIsSet(false);
        this.includeLargestResourceMime = false;
        setIncludeLargestResourceSizeIsSet(false);
        this.includeLargestResourceSize = false;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof NotesMetadataResultSpec)) {
            return equals((NotesMetadataResultSpec) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isIncludeAttributes() {
        return this.includeAttributes;
    }

    public boolean isIncludeContentLength() {
        return this.includeContentLength;
    }

    public boolean isIncludeCreated() {
        return this.includeCreated;
    }

    public boolean isIncludeDeleted() {
        return this.includeDeleted;
    }

    public boolean isIncludeLargestResourceMime() {
        return this.includeLargestResourceMime;
    }

    public boolean isIncludeLargestResourceSize() {
        return this.includeLargestResourceSize;
    }

    public boolean isIncludeNotebookGuid() {
        return this.includeNotebookGuid;
    }

    public boolean isIncludeTagGuids() {
        return this.includeTagGuids;
    }

    public boolean isIncludeTitle() {
        return this.includeTitle;
    }

    public boolean isIncludeUpdateSequenceNum() {
        return this.includeUpdateSequenceNum;
    }

    public boolean isIncludeUpdated() {
        return this.includeUpdated;
    }

    public boolean isSetIncludeAttributes() {
        return this.__isset_vector[8];
    }

    public boolean isSetIncludeContentLength() {
        return this.__isset_vector[1];
    }

    public boolean isSetIncludeCreated() {
        return this.__isset_vector[2];
    }

    public boolean isSetIncludeDeleted() {
        return this.__isset_vector[4];
    }

    public boolean isSetIncludeLargestResourceMime() {
        return this.__isset_vector[9];
    }

    public boolean isSetIncludeLargestResourceSize() {
        return this.__isset_vector[10];
    }

    public boolean isSetIncludeNotebookGuid() {
        return this.__isset_vector[6];
    }

    public boolean isSetIncludeTagGuids() {
        return this.__isset_vector[7];
    }

    public boolean isSetIncludeTitle() {
        return this.__isset_vector[0];
    }

    public boolean isSetIncludeUpdateSequenceNum() {
        return this.__isset_vector[5];
    }

    public boolean isSetIncludeUpdated() {
        return this.__isset_vector[3];
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
            if (s != 2) {
                if (s != 14) {
                    if (s != 5) {
                        if (s != 6) {
                            if (s != 7) {
                                if (s != 8) {
                                    if (s != 20) {
                                        if (s != 21) {
                                            switch (s) {
                                                case 10:
                                                    if (b != 2) {
                                                        TProtocolUtil.skip(tProtocol, b);
                                                        break;
                                                    } else {
                                                        this.includeUpdateSequenceNum = tProtocol.readBool();
                                                        setIncludeUpdateSequenceNumIsSet(true);
                                                        break;
                                                    }
                                                case 11:
                                                    if (b != 2) {
                                                        TProtocolUtil.skip(tProtocol, b);
                                                        break;
                                                    } else {
                                                        this.includeNotebookGuid = tProtocol.readBool();
                                                        setIncludeNotebookGuidIsSet(true);
                                                        break;
                                                    }
                                                case 12:
                                                    if (b != 2) {
                                                        TProtocolUtil.skip(tProtocol, b);
                                                        break;
                                                    } else {
                                                        this.includeTagGuids = tProtocol.readBool();
                                                        setIncludeTagGuidsIsSet(true);
                                                        break;
                                                    }
                                                default:
                                                    TProtocolUtil.skip(tProtocol, b);
                                                    break;
                                            }
                                        } else if (b == 2) {
                                            this.includeLargestResourceSize = tProtocol.readBool();
                                            setIncludeLargestResourceSizeIsSet(true);
                                        } else {
                                            TProtocolUtil.skip(tProtocol, b);
                                        }
                                    } else if (b == 2) {
                                        this.includeLargestResourceMime = tProtocol.readBool();
                                        setIncludeLargestResourceMimeIsSet(true);
                                    } else {
                                        TProtocolUtil.skip(tProtocol, b);
                                    }
                                } else if (b == 2) {
                                    this.includeDeleted = tProtocol.readBool();
                                    setIncludeDeletedIsSet(true);
                                } else {
                                    TProtocolUtil.skip(tProtocol, b);
                                }
                            } else if (b == 2) {
                                this.includeUpdated = tProtocol.readBool();
                                setIncludeUpdatedIsSet(true);
                            } else {
                                TProtocolUtil.skip(tProtocol, b);
                            }
                        } else if (b == 2) {
                            this.includeCreated = tProtocol.readBool();
                            setIncludeCreatedIsSet(true);
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 2) {
                        this.includeContentLength = tProtocol.readBool();
                        setIncludeContentLengthIsSet(true);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 2) {
                    this.includeAttributes = tProtocol.readBool();
                    setIncludeAttributesIsSet(true);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 2) {
                this.includeTitle = tProtocol.readBool();
                setIncludeTitleIsSet(true);
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setIncludeAttributes(boolean z) {
        this.includeAttributes = z;
        setIncludeAttributesIsSet(true);
    }

    public void setIncludeAttributesIsSet(boolean z) {
        this.__isset_vector[8] = z;
    }

    public void setIncludeContentLength(boolean z) {
        this.includeContentLength = z;
        setIncludeContentLengthIsSet(true);
    }

    public void setIncludeContentLengthIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public void setIncludeCreated(boolean z) {
        this.includeCreated = z;
        setIncludeCreatedIsSet(true);
    }

    public void setIncludeCreatedIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public void setIncludeDeleted(boolean z) {
        this.includeDeleted = z;
        setIncludeDeletedIsSet(true);
    }

    public void setIncludeDeletedIsSet(boolean z) {
        this.__isset_vector[4] = z;
    }

    public void setIncludeLargestResourceMime(boolean z) {
        this.includeLargestResourceMime = z;
        setIncludeLargestResourceMimeIsSet(true);
    }

    public void setIncludeLargestResourceMimeIsSet(boolean z) {
        this.__isset_vector[9] = z;
    }

    public void setIncludeLargestResourceSize(boolean z) {
        this.includeLargestResourceSize = z;
        setIncludeLargestResourceSizeIsSet(true);
    }

    public void setIncludeLargestResourceSizeIsSet(boolean z) {
        this.__isset_vector[10] = z;
    }

    public void setIncludeNotebookGuid(boolean z) {
        this.includeNotebookGuid = z;
        setIncludeNotebookGuidIsSet(true);
    }

    public void setIncludeNotebookGuidIsSet(boolean z) {
        this.__isset_vector[6] = z;
    }

    public void setIncludeTagGuids(boolean z) {
        this.includeTagGuids = z;
        setIncludeTagGuidsIsSet(true);
    }

    public void setIncludeTagGuidsIsSet(boolean z) {
        this.__isset_vector[7] = z;
    }

    public void setIncludeTitle(boolean z) {
        this.includeTitle = z;
        setIncludeTitleIsSet(true);
    }

    public void setIncludeTitleIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setIncludeUpdateSequenceNum(boolean z) {
        this.includeUpdateSequenceNum = z;
        setIncludeUpdateSequenceNumIsSet(true);
    }

    public void setIncludeUpdateSequenceNumIsSet(boolean z) {
        this.__isset_vector[5] = z;
    }

    public void setIncludeUpdated(boolean z) {
        this.includeUpdated = z;
        setIncludeUpdatedIsSet(true);
    }

    public void setIncludeUpdatedIsSet(boolean z) {
        this.__isset_vector[3] = z;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("NotesMetadataResultSpec(");
        boolean z2 = false;
        if (isSetIncludeTitle()) {
            sb.append("includeTitle:");
            sb.append(this.includeTitle);
            z = false;
        } else {
            z = true;
        }
        if (isSetIncludeContentLength()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeContentLength:");
            sb.append(this.includeContentLength);
            z = false;
        }
        if (isSetIncludeCreated()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeCreated:");
            sb.append(this.includeCreated);
            z = false;
        }
        if (isSetIncludeUpdated()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeUpdated:");
            sb.append(this.includeUpdated);
            z = false;
        }
        if (isSetIncludeDeleted()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeDeleted:");
            sb.append(this.includeDeleted);
            z = false;
        }
        if (isSetIncludeUpdateSequenceNum()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeUpdateSequenceNum:");
            sb.append(this.includeUpdateSequenceNum);
            z = false;
        }
        if (isSetIncludeNotebookGuid()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeNotebookGuid:");
            sb.append(this.includeNotebookGuid);
            z = false;
        }
        if (isSetIncludeTagGuids()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeTagGuids:");
            sb.append(this.includeTagGuids);
            z = false;
        }
        if (isSetIncludeAttributes()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeAttributes:");
            sb.append(this.includeAttributes);
            z = false;
        }
        if (isSetIncludeLargestResourceMime()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeLargestResourceMime:");
            sb.append(this.includeLargestResourceMime);
        } else {
            z2 = z;
        }
        if (isSetIncludeLargestResourceSize()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("includeLargestResourceSize:");
            sb.append(this.includeLargestResourceSize);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetIncludeAttributes() {
        this.__isset_vector[8] = false;
    }

    public void unsetIncludeContentLength() {
        this.__isset_vector[1] = false;
    }

    public void unsetIncludeCreated() {
        this.__isset_vector[2] = false;
    }

    public void unsetIncludeDeleted() {
        this.__isset_vector[4] = false;
    }

    public void unsetIncludeLargestResourceMime() {
        this.__isset_vector[9] = false;
    }

    public void unsetIncludeLargestResourceSize() {
        this.__isset_vector[10] = false;
    }

    public void unsetIncludeNotebookGuid() {
        this.__isset_vector[6] = false;
    }

    public void unsetIncludeTagGuids() {
        this.__isset_vector[7] = false;
    }

    public void unsetIncludeTitle() {
        this.__isset_vector[0] = false;
    }

    public void unsetIncludeUpdateSequenceNum() {
        this.__isset_vector[5] = false;
    }

    public void unsetIncludeUpdated() {
        this.__isset_vector[3] = false;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (isSetIncludeTitle()) {
            tProtocol.writeFieldBegin(INCLUDE_TITLE_FIELD_DESC);
            tProtocol.writeBool(this.includeTitle);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeContentLength()) {
            tProtocol.writeFieldBegin(INCLUDE_CONTENT_LENGTH_FIELD_DESC);
            tProtocol.writeBool(this.includeContentLength);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeCreated()) {
            tProtocol.writeFieldBegin(INCLUDE_CREATED_FIELD_DESC);
            tProtocol.writeBool(this.includeCreated);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeUpdated()) {
            tProtocol.writeFieldBegin(INCLUDE_UPDATED_FIELD_DESC);
            tProtocol.writeBool(this.includeUpdated);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeDeleted()) {
            tProtocol.writeFieldBegin(INCLUDE_DELETED_FIELD_DESC);
            tProtocol.writeBool(this.includeDeleted);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeUpdateSequenceNum()) {
            tProtocol.writeFieldBegin(INCLUDE_UPDATE_SEQUENCE_NUM_FIELD_DESC);
            tProtocol.writeBool(this.includeUpdateSequenceNum);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeNotebookGuid()) {
            tProtocol.writeFieldBegin(INCLUDE_NOTEBOOK_GUID_FIELD_DESC);
            tProtocol.writeBool(this.includeNotebookGuid);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeTagGuids()) {
            tProtocol.writeFieldBegin(INCLUDE_TAG_GUIDS_FIELD_DESC);
            tProtocol.writeBool(this.includeTagGuids);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeAttributes()) {
            tProtocol.writeFieldBegin(INCLUDE_ATTRIBUTES_FIELD_DESC);
            tProtocol.writeBool(this.includeAttributes);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeLargestResourceMime()) {
            tProtocol.writeFieldBegin(INCLUDE_LARGEST_RESOURCE_MIME_FIELD_DESC);
            tProtocol.writeBool(this.includeLargestResourceMime);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeLargestResourceSize()) {
            tProtocol.writeFieldBegin(INCLUDE_LARGEST_RESOURCE_SIZE_FIELD_DESC);
            tProtocol.writeBool(this.includeLargestResourceSize);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(NotesMetadataResultSpec notesMetadataResultSpec) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        int compareTo5;
        int compareTo6;
        int compareTo7;
        int compareTo8;
        int compareTo9;
        int compareTo10;
        int compareTo11;
        if (!getClass().equals(notesMetadataResultSpec.getClass())) {
            return getClass().getName().compareTo(notesMetadataResultSpec.getClass().getName());
        }
        int compareTo12 = Boolean.valueOf(isSetIncludeTitle()).compareTo(Boolean.valueOf(notesMetadataResultSpec.isSetIncludeTitle()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (isSetIncludeTitle() && (compareTo11 = TBaseHelper.compareTo(this.includeTitle, notesMetadataResultSpec.includeTitle)) != 0) {
            return compareTo11;
        }
        int compareTo13 = Boolean.valueOf(isSetIncludeContentLength()).compareTo(Boolean.valueOf(notesMetadataResultSpec.isSetIncludeContentLength()));
        if (compareTo13 != 0) {
            return compareTo13;
        }
        if (isSetIncludeContentLength() && (compareTo10 = TBaseHelper.compareTo(this.includeContentLength, notesMetadataResultSpec.includeContentLength)) != 0) {
            return compareTo10;
        }
        int compareTo14 = Boolean.valueOf(isSetIncludeCreated()).compareTo(Boolean.valueOf(notesMetadataResultSpec.isSetIncludeCreated()));
        if (compareTo14 != 0) {
            return compareTo14;
        }
        if (isSetIncludeCreated() && (compareTo9 = TBaseHelper.compareTo(this.includeCreated, notesMetadataResultSpec.includeCreated)) != 0) {
            return compareTo9;
        }
        int compareTo15 = Boolean.valueOf(isSetIncludeUpdated()).compareTo(Boolean.valueOf(notesMetadataResultSpec.isSetIncludeUpdated()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (isSetIncludeUpdated() && (compareTo8 = TBaseHelper.compareTo(this.includeUpdated, notesMetadataResultSpec.includeUpdated)) != 0) {
            return compareTo8;
        }
        int compareTo16 = Boolean.valueOf(isSetIncludeDeleted()).compareTo(Boolean.valueOf(notesMetadataResultSpec.isSetIncludeDeleted()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (isSetIncludeDeleted() && (compareTo7 = TBaseHelper.compareTo(this.includeDeleted, notesMetadataResultSpec.includeDeleted)) != 0) {
            return compareTo7;
        }
        int compareTo17 = Boolean.valueOf(isSetIncludeUpdateSequenceNum()).compareTo(Boolean.valueOf(notesMetadataResultSpec.isSetIncludeUpdateSequenceNum()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (isSetIncludeUpdateSequenceNum() && (compareTo6 = TBaseHelper.compareTo(this.includeUpdateSequenceNum, notesMetadataResultSpec.includeUpdateSequenceNum)) != 0) {
            return compareTo6;
        }
        int compareTo18 = Boolean.valueOf(isSetIncludeNotebookGuid()).compareTo(Boolean.valueOf(notesMetadataResultSpec.isSetIncludeNotebookGuid()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (isSetIncludeNotebookGuid() && (compareTo5 = TBaseHelper.compareTo(this.includeNotebookGuid, notesMetadataResultSpec.includeNotebookGuid)) != 0) {
            return compareTo5;
        }
        int compareTo19 = Boolean.valueOf(isSetIncludeTagGuids()).compareTo(Boolean.valueOf(notesMetadataResultSpec.isSetIncludeTagGuids()));
        if (compareTo19 != 0) {
            return compareTo19;
        }
        if (isSetIncludeTagGuids() && (compareTo4 = TBaseHelper.compareTo(this.includeTagGuids, notesMetadataResultSpec.includeTagGuids)) != 0) {
            return compareTo4;
        }
        int compareTo20 = Boolean.valueOf(isSetIncludeAttributes()).compareTo(Boolean.valueOf(notesMetadataResultSpec.isSetIncludeAttributes()));
        if (compareTo20 != 0) {
            return compareTo20;
        }
        if (isSetIncludeAttributes() && (compareTo3 = TBaseHelper.compareTo(this.includeAttributes, notesMetadataResultSpec.includeAttributes)) != 0) {
            return compareTo3;
        }
        int compareTo21 = Boolean.valueOf(isSetIncludeLargestResourceMime()).compareTo(Boolean.valueOf(notesMetadataResultSpec.isSetIncludeLargestResourceMime()));
        if (compareTo21 != 0) {
            return compareTo21;
        }
        if (isSetIncludeLargestResourceMime() && (compareTo2 = TBaseHelper.compareTo(this.includeLargestResourceMime, notesMetadataResultSpec.includeLargestResourceMime)) != 0) {
            return compareTo2;
        }
        int compareTo22 = Boolean.valueOf(isSetIncludeLargestResourceSize()).compareTo(Boolean.valueOf(notesMetadataResultSpec.isSetIncludeLargestResourceSize()));
        if (compareTo22 != 0) {
            return compareTo22;
        }
        if (!isSetIncludeLargestResourceSize() || (compareTo = TBaseHelper.compareTo(this.includeLargestResourceSize, notesMetadataResultSpec.includeLargestResourceSize)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<NotesMetadataResultSpec> deepCopy2() {
        return new NotesMetadataResultSpec(this);
    }

    public NotesMetadataResultSpec(NotesMetadataResultSpec notesMetadataResultSpec) {
        boolean[] zArr = new boolean[11];
        this.__isset_vector = zArr;
        boolean[] zArr2 = notesMetadataResultSpec.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.includeTitle = notesMetadataResultSpec.includeTitle;
        this.includeContentLength = notesMetadataResultSpec.includeContentLength;
        this.includeCreated = notesMetadataResultSpec.includeCreated;
        this.includeUpdated = notesMetadataResultSpec.includeUpdated;
        this.includeDeleted = notesMetadataResultSpec.includeDeleted;
        this.includeUpdateSequenceNum = notesMetadataResultSpec.includeUpdateSequenceNum;
        this.includeNotebookGuid = notesMetadataResultSpec.includeNotebookGuid;
        this.includeTagGuids = notesMetadataResultSpec.includeTagGuids;
        this.includeAttributes = notesMetadataResultSpec.includeAttributes;
        this.includeLargestResourceMime = notesMetadataResultSpec.includeLargestResourceMime;
        this.includeLargestResourceSize = notesMetadataResultSpec.includeLargestResourceSize;
    }

    public boolean equals(NotesMetadataResultSpec notesMetadataResultSpec) {
        if (notesMetadataResultSpec == null) {
            return false;
        }
        boolean isSetIncludeTitle = isSetIncludeTitle();
        boolean isSetIncludeTitle2 = notesMetadataResultSpec.isSetIncludeTitle();
        if ((isSetIncludeTitle || isSetIncludeTitle2) && !(isSetIncludeTitle && isSetIncludeTitle2 && this.includeTitle == notesMetadataResultSpec.includeTitle)) {
            return false;
        }
        boolean isSetIncludeContentLength = isSetIncludeContentLength();
        boolean isSetIncludeContentLength2 = notesMetadataResultSpec.isSetIncludeContentLength();
        if ((isSetIncludeContentLength || isSetIncludeContentLength2) && !(isSetIncludeContentLength && isSetIncludeContentLength2 && this.includeContentLength == notesMetadataResultSpec.includeContentLength)) {
            return false;
        }
        boolean isSetIncludeCreated = isSetIncludeCreated();
        boolean isSetIncludeCreated2 = notesMetadataResultSpec.isSetIncludeCreated();
        if ((isSetIncludeCreated || isSetIncludeCreated2) && !(isSetIncludeCreated && isSetIncludeCreated2 && this.includeCreated == notesMetadataResultSpec.includeCreated)) {
            return false;
        }
        boolean isSetIncludeUpdated = isSetIncludeUpdated();
        boolean isSetIncludeUpdated2 = notesMetadataResultSpec.isSetIncludeUpdated();
        if ((isSetIncludeUpdated || isSetIncludeUpdated2) && !(isSetIncludeUpdated && isSetIncludeUpdated2 && this.includeUpdated == notesMetadataResultSpec.includeUpdated)) {
            return false;
        }
        boolean isSetIncludeDeleted = isSetIncludeDeleted();
        boolean isSetIncludeDeleted2 = notesMetadataResultSpec.isSetIncludeDeleted();
        if ((isSetIncludeDeleted || isSetIncludeDeleted2) && !(isSetIncludeDeleted && isSetIncludeDeleted2 && this.includeDeleted == notesMetadataResultSpec.includeDeleted)) {
            return false;
        }
        boolean isSetIncludeUpdateSequenceNum = isSetIncludeUpdateSequenceNum();
        boolean isSetIncludeUpdateSequenceNum2 = notesMetadataResultSpec.isSetIncludeUpdateSequenceNum();
        if ((isSetIncludeUpdateSequenceNum || isSetIncludeUpdateSequenceNum2) && !(isSetIncludeUpdateSequenceNum && isSetIncludeUpdateSequenceNum2 && this.includeUpdateSequenceNum == notesMetadataResultSpec.includeUpdateSequenceNum)) {
            return false;
        }
        boolean isSetIncludeNotebookGuid = isSetIncludeNotebookGuid();
        boolean isSetIncludeNotebookGuid2 = notesMetadataResultSpec.isSetIncludeNotebookGuid();
        if ((isSetIncludeNotebookGuid || isSetIncludeNotebookGuid2) && !(isSetIncludeNotebookGuid && isSetIncludeNotebookGuid2 && this.includeNotebookGuid == notesMetadataResultSpec.includeNotebookGuid)) {
            return false;
        }
        boolean isSetIncludeTagGuids = isSetIncludeTagGuids();
        boolean isSetIncludeTagGuids2 = notesMetadataResultSpec.isSetIncludeTagGuids();
        if ((isSetIncludeTagGuids || isSetIncludeTagGuids2) && !(isSetIncludeTagGuids && isSetIncludeTagGuids2 && this.includeTagGuids == notesMetadataResultSpec.includeTagGuids)) {
            return false;
        }
        boolean isSetIncludeAttributes = isSetIncludeAttributes();
        boolean isSetIncludeAttributes2 = notesMetadataResultSpec.isSetIncludeAttributes();
        if ((isSetIncludeAttributes || isSetIncludeAttributes2) && !(isSetIncludeAttributes && isSetIncludeAttributes2 && this.includeAttributes == notesMetadataResultSpec.includeAttributes)) {
            return false;
        }
        boolean isSetIncludeLargestResourceMime = isSetIncludeLargestResourceMime();
        boolean isSetIncludeLargestResourceMime2 = notesMetadataResultSpec.isSetIncludeLargestResourceMime();
        if ((isSetIncludeLargestResourceMime || isSetIncludeLargestResourceMime2) && !(isSetIncludeLargestResourceMime && isSetIncludeLargestResourceMime2 && this.includeLargestResourceMime == notesMetadataResultSpec.includeLargestResourceMime)) {
            return false;
        }
        boolean isSetIncludeLargestResourceSize = isSetIncludeLargestResourceSize();
        boolean isSetIncludeLargestResourceSize2 = notesMetadataResultSpec.isSetIncludeLargestResourceSize();
        if (isSetIncludeLargestResourceSize || isSetIncludeLargestResourceSize2) {
            return isSetIncludeLargestResourceSize && isSetIncludeLargestResourceSize2 && this.includeLargestResourceSize == notesMetadataResultSpec.includeLargestResourceSize;
        }
        return true;
    }
}
