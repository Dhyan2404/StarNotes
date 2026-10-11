package com.evernote.edam.type;

import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;

/* loaded from: classes4.dex */
public class Resource implements TBase<Resource>, Serializable, Cloneable {
    private static final int __ACTIVE_ISSET_ID = 3;
    private static final int __DURATION_ISSET_ID = 2;
    private static final int __HEIGHT_ISSET_ID = 1;
    private static final int __UPDATESEQUENCENUM_ISSET_ID = 4;
    private static final int __WIDTH_ISSET_ID = 0;
    private boolean[] __isset_vector;
    private boolean active;
    private Data alternateData;
    private ResourceAttributes attributes;
    private Data data;
    private short duration;
    private String guid;
    private short height;
    private String mime;
    private String noteGuid;
    private Data recognition;
    private int updateSequenceNum;
    private short width;
    private static final TStruct STRUCT_DESC = new TStruct("Resource");
    private static final TField GUID_FIELD_DESC = new TField("guid", (byte) 11, 1);
    private static final TField NOTE_GUID_FIELD_DESC = new TField("noteGuid", (byte) 11, 2);
    private static final TField DATA_FIELD_DESC = new TField("data", (byte) 12, 3);
    private static final TField MIME_FIELD_DESC = new TField("mime", (byte) 11, 4);
    private static final TField WIDTH_FIELD_DESC = new TField("width", (byte) 6, 5);
    private static final TField HEIGHT_FIELD_DESC = new TField("height", (byte) 6, 6);
    private static final TField DURATION_FIELD_DESC = new TField("duration", (byte) 6, 7);
    private static final TField ACTIVE_FIELD_DESC = new TField(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, (byte) 2, 8);
    private static final TField RECOGNITION_FIELD_DESC = new TField("recognition", (byte) 12, 9);
    private static final TField ATTRIBUTES_FIELD_DESC = new TField("attributes", (byte) 12, 11);
    private static final TField UPDATE_SEQUENCE_NUM_FIELD_DESC = new TField("updateSequenceNum", (byte) 8, 12);
    private static final TField ALTERNATE_DATA_FIELD_DESC = new TField("alternateData", (byte) 12, 13);

    public Resource() {
        this.__isset_vector = new boolean[5];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.guid = null;
        this.noteGuid = null;
        this.data = null;
        this.mime = null;
        setWidthIsSet(false);
        this.width = (short) 0;
        setHeightIsSet(false);
        this.height = (short) 0;
        setDurationIsSet(false);
        this.duration = (short) 0;
        setActiveIsSet(false);
        this.active = false;
        this.recognition = null;
        this.attributes = null;
        setUpdateSequenceNumIsSet(false);
        this.updateSequenceNum = 0;
        this.alternateData = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof Resource)) {
            return equals((Resource) obj);
        }
        return false;
    }

    public Data getAlternateData() {
        return this.alternateData;
    }

    public ResourceAttributes getAttributes() {
        return this.attributes;
    }

    public Data getData() {
        return this.data;
    }

    public short getDuration() {
        return this.duration;
    }

    public String getGuid() {
        return this.guid;
    }

    public short getHeight() {
        return this.height;
    }

    public String getMime() {
        return this.mime;
    }

    public String getNoteGuid() {
        return this.noteGuid;
    }

    public Data getRecognition() {
        return this.recognition;
    }

    public int getUpdateSequenceNum() {
        return this.updateSequenceNum;
    }

    public short getWidth() {
        return this.width;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isActive() {
        return this.active;
    }

    public boolean isSetActive() {
        return this.__isset_vector[3];
    }

    public boolean isSetAlternateData() {
        return this.alternateData != null;
    }

    public boolean isSetAttributes() {
        return this.attributes != null;
    }

    public boolean isSetData() {
        return this.data != null;
    }

    public boolean isSetDuration() {
        return this.__isset_vector[2];
    }

    public boolean isSetGuid() {
        return this.guid != null;
    }

    public boolean isSetHeight() {
        return this.__isset_vector[1];
    }

    public boolean isSetMime() {
        return this.mime != null;
    }

    public boolean isSetNoteGuid() {
        return this.noteGuid != null;
    }

    public boolean isSetRecognition() {
        return this.recognition != null;
    }

    public boolean isSetUpdateSequenceNum() {
        return this.__isset_vector[4];
    }

    public boolean isSetWidth() {
        return this.__isset_vector[0];
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
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.guid = tProtocol.readString();
                        break;
                    }
                case 2:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noteGuid = tProtocol.readString();
                        break;
                    }
                case 3:
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        Data data = new Data();
                        this.data = data;
                        data.read(tProtocol);
                        break;
                    }
                case 4:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.mime = tProtocol.readString();
                        break;
                    }
                case 5:
                    if (b != 6) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.width = tProtocol.readI16();
                        setWidthIsSet(true);
                        break;
                    }
                case 6:
                    if (b != 6) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.height = tProtocol.readI16();
                        setHeightIsSet(true);
                        break;
                    }
                case 7:
                    if (b != 6) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.duration = tProtocol.readI16();
                        setDurationIsSet(true);
                        break;
                    }
                case 8:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.active = tProtocol.readBool();
                        setActiveIsSet(true);
                        break;
                    }
                case 9:
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        Data data2 = new Data();
                        this.recognition = data2;
                        data2.read(tProtocol);
                        break;
                    }
                case 10:
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
                case 11:
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        ResourceAttributes resourceAttributes = new ResourceAttributes();
                        this.attributes = resourceAttributes;
                        resourceAttributes.read(tProtocol);
                        break;
                    }
                case 12:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.updateSequenceNum = tProtocol.readI32();
                        setUpdateSequenceNumIsSet(true);
                        break;
                    }
                case 13:
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        Data data3 = new Data();
                        this.alternateData = data3;
                        data3.read(tProtocol);
                        break;
                    }
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setActive(boolean z) {
        this.active = z;
        setActiveIsSet(true);
    }

    public void setActiveIsSet(boolean z) {
        this.__isset_vector[3] = z;
    }

    public void setAlternateData(Data data) {
        this.alternateData = data;
    }

    public void setAlternateDataIsSet(boolean z) {
        if (z) {
            return;
        }
        this.alternateData = null;
    }

    public void setAttributes(ResourceAttributes resourceAttributes) {
        this.attributes = resourceAttributes;
    }

    public void setAttributesIsSet(boolean z) {
        if (z) {
            return;
        }
        this.attributes = null;
    }

    public void setData(Data data) {
        this.data = data;
    }

    public void setDataIsSet(boolean z) {
        if (z) {
            return;
        }
        this.data = null;
    }

    public void setDuration(short s) {
        this.duration = s;
        setDurationIsSet(true);
    }

    public void setDurationIsSet(boolean z) {
        this.__isset_vector[2] = z;
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

    public void setHeight(short s) {
        this.height = s;
        setHeightIsSet(true);
    }

    public void setHeightIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public void setMime(String str) {
        this.mime = str;
    }

    public void setMimeIsSet(boolean z) {
        if (z) {
            return;
        }
        this.mime = null;
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

    public void setRecognition(Data data) {
        this.recognition = data;
    }

    public void setRecognitionIsSet(boolean z) {
        if (z) {
            return;
        }
        this.recognition = null;
    }

    public void setUpdateSequenceNum(int i) {
        this.updateSequenceNum = i;
        setUpdateSequenceNumIsSet(true);
    }

    public void setUpdateSequenceNumIsSet(boolean z) {
        this.__isset_vector[4] = z;
    }

    public void setWidth(short s) {
        this.width = s;
        setWidthIsSet(true);
    }

    public void setWidthIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("Resource(");
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
        if (isSetNoteGuid()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noteGuid:");
            String str2 = this.noteGuid;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
            z = false;
        }
        if (isSetData()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("data:");
            Data data = this.data;
            if (data == null) {
                sb.append("null");
            } else {
                sb.append(data);
            }
            z = false;
        }
        if (isSetMime()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("mime:");
            String str3 = this.mime;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
            z = false;
        }
        if (isSetWidth()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("width:");
            sb.append((int) this.width);
            z = false;
        }
        if (isSetHeight()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("height:");
            sb.append((int) this.height);
            z = false;
        }
        if (isSetDuration()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("duration:");
            sb.append((int) this.duration);
            z = false;
        }
        if (isSetActive()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("active:");
            sb.append(this.active);
            z = false;
        }
        if (isSetRecognition()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("recognition:");
            Data data2 = this.recognition;
            if (data2 == null) {
                sb.append("null");
            } else {
                sb.append(data2);
            }
            z = false;
        }
        if (isSetAttributes()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("attributes:");
            ResourceAttributes resourceAttributes = this.attributes;
            if (resourceAttributes == null) {
                sb.append("null");
            } else {
                sb.append(resourceAttributes);
            }
            z = false;
        }
        if (isSetUpdateSequenceNum()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("updateSequenceNum:");
            sb.append(this.updateSequenceNum);
        } else {
            z2 = z;
        }
        if (isSetAlternateData()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("alternateData:");
            Data data3 = this.alternateData;
            if (data3 == null) {
                sb.append("null");
            } else {
                sb.append(data3);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetActive() {
        this.__isset_vector[3] = false;
    }

    public void unsetAlternateData() {
        this.alternateData = null;
    }

    public void unsetAttributes() {
        this.attributes = null;
    }

    public void unsetData() {
        this.data = null;
    }

    public void unsetDuration() {
        this.__isset_vector[2] = false;
    }

    public void unsetGuid() {
        this.guid = null;
    }

    public void unsetHeight() {
        this.__isset_vector[1] = false;
    }

    public void unsetMime() {
        this.mime = null;
    }

    public void unsetNoteGuid() {
        this.noteGuid = null;
    }

    public void unsetRecognition() {
        this.recognition = null;
    }

    public void unsetUpdateSequenceNum() {
        this.__isset_vector[4] = false;
    }

    public void unsetWidth() {
        this.__isset_vector[0] = false;
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
        if (this.noteGuid != null && isSetNoteGuid()) {
            tProtocol.writeFieldBegin(NOTE_GUID_FIELD_DESC);
            tProtocol.writeString(this.noteGuid);
            tProtocol.writeFieldEnd();
        }
        if (this.data != null && isSetData()) {
            tProtocol.writeFieldBegin(DATA_FIELD_DESC);
            this.data.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        if (this.mime != null && isSetMime()) {
            tProtocol.writeFieldBegin(MIME_FIELD_DESC);
            tProtocol.writeString(this.mime);
            tProtocol.writeFieldEnd();
        }
        if (isSetWidth()) {
            tProtocol.writeFieldBegin(WIDTH_FIELD_DESC);
            tProtocol.writeI16(this.width);
            tProtocol.writeFieldEnd();
        }
        if (isSetHeight()) {
            tProtocol.writeFieldBegin(HEIGHT_FIELD_DESC);
            tProtocol.writeI16(this.height);
            tProtocol.writeFieldEnd();
        }
        if (isSetDuration()) {
            tProtocol.writeFieldBegin(DURATION_FIELD_DESC);
            tProtocol.writeI16(this.duration);
            tProtocol.writeFieldEnd();
        }
        if (isSetActive()) {
            tProtocol.writeFieldBegin(ACTIVE_FIELD_DESC);
            tProtocol.writeBool(this.active);
            tProtocol.writeFieldEnd();
        }
        if (this.recognition != null && isSetRecognition()) {
            tProtocol.writeFieldBegin(RECOGNITION_FIELD_DESC);
            this.recognition.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        if (this.attributes != null && isSetAttributes()) {
            tProtocol.writeFieldBegin(ATTRIBUTES_FIELD_DESC);
            this.attributes.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        if (isSetUpdateSequenceNum()) {
            tProtocol.writeFieldBegin(UPDATE_SEQUENCE_NUM_FIELD_DESC);
            tProtocol.writeI32(this.updateSequenceNum);
            tProtocol.writeFieldEnd();
        }
        if (this.alternateData != null && isSetAlternateData()) {
            tProtocol.writeFieldBegin(ALTERNATE_DATA_FIELD_DESC);
            this.alternateData.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(Resource resource) {
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
        int compareTo12;
        if (!getClass().equals(resource.getClass())) {
            return getClass().getName().compareTo(resource.getClass().getName());
        }
        int compareTo13 = Boolean.valueOf(isSetGuid()).compareTo(Boolean.valueOf(resource.isSetGuid()));
        if (compareTo13 != 0) {
            return compareTo13;
        }
        if (isSetGuid() && (compareTo12 = TBaseHelper.compareTo(this.guid, resource.guid)) != 0) {
            return compareTo12;
        }
        int compareTo14 = Boolean.valueOf(isSetNoteGuid()).compareTo(Boolean.valueOf(resource.isSetNoteGuid()));
        if (compareTo14 != 0) {
            return compareTo14;
        }
        if (isSetNoteGuid() && (compareTo11 = TBaseHelper.compareTo(this.noteGuid, resource.noteGuid)) != 0) {
            return compareTo11;
        }
        int compareTo15 = Boolean.valueOf(isSetData()).compareTo(Boolean.valueOf(resource.isSetData()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (isSetData() && (compareTo10 = TBaseHelper.compareTo((Comparable) this.data, (Comparable) resource.data)) != 0) {
            return compareTo10;
        }
        int compareTo16 = Boolean.valueOf(isSetMime()).compareTo(Boolean.valueOf(resource.isSetMime()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (isSetMime() && (compareTo9 = TBaseHelper.compareTo(this.mime, resource.mime)) != 0) {
            return compareTo9;
        }
        int compareTo17 = Boolean.valueOf(isSetWidth()).compareTo(Boolean.valueOf(resource.isSetWidth()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (isSetWidth() && (compareTo8 = TBaseHelper.compareTo(this.width, resource.width)) != 0) {
            return compareTo8;
        }
        int compareTo18 = Boolean.valueOf(isSetHeight()).compareTo(Boolean.valueOf(resource.isSetHeight()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (isSetHeight() && (compareTo7 = TBaseHelper.compareTo(this.height, resource.height)) != 0) {
            return compareTo7;
        }
        int compareTo19 = Boolean.valueOf(isSetDuration()).compareTo(Boolean.valueOf(resource.isSetDuration()));
        if (compareTo19 != 0) {
            return compareTo19;
        }
        if (isSetDuration() && (compareTo6 = TBaseHelper.compareTo(this.duration, resource.duration)) != 0) {
            return compareTo6;
        }
        int compareTo20 = Boolean.valueOf(isSetActive()).compareTo(Boolean.valueOf(resource.isSetActive()));
        if (compareTo20 != 0) {
            return compareTo20;
        }
        if (isSetActive() && (compareTo5 = TBaseHelper.compareTo(this.active, resource.active)) != 0) {
            return compareTo5;
        }
        int compareTo21 = Boolean.valueOf(isSetRecognition()).compareTo(Boolean.valueOf(resource.isSetRecognition()));
        if (compareTo21 != 0) {
            return compareTo21;
        }
        if (isSetRecognition() && (compareTo4 = TBaseHelper.compareTo((Comparable) this.recognition, (Comparable) resource.recognition)) != 0) {
            return compareTo4;
        }
        int compareTo22 = Boolean.valueOf(isSetAttributes()).compareTo(Boolean.valueOf(resource.isSetAttributes()));
        if (compareTo22 != 0) {
            return compareTo22;
        }
        if (isSetAttributes() && (compareTo3 = TBaseHelper.compareTo((Comparable) this.attributes, (Comparable) resource.attributes)) != 0) {
            return compareTo3;
        }
        int compareTo23 = Boolean.valueOf(isSetUpdateSequenceNum()).compareTo(Boolean.valueOf(resource.isSetUpdateSequenceNum()));
        if (compareTo23 != 0) {
            return compareTo23;
        }
        if (isSetUpdateSequenceNum() && (compareTo2 = TBaseHelper.compareTo(this.updateSequenceNum, resource.updateSequenceNum)) != 0) {
            return compareTo2;
        }
        int compareTo24 = Boolean.valueOf(isSetAlternateData()).compareTo(Boolean.valueOf(resource.isSetAlternateData()));
        if (compareTo24 != 0) {
            return compareTo24;
        }
        if (!isSetAlternateData() || (compareTo = TBaseHelper.compareTo((Comparable) this.alternateData, (Comparable) resource.alternateData)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<Resource> deepCopy2() {
        return new Resource(this);
    }

    public Resource(Resource resource) {
        boolean[] zArr = new boolean[5];
        this.__isset_vector = zArr;
        boolean[] zArr2 = resource.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        if (resource.isSetGuid()) {
            this.guid = resource.guid;
        }
        if (resource.isSetNoteGuid()) {
            this.noteGuid = resource.noteGuid;
        }
        if (resource.isSetData()) {
            this.data = new Data(resource.data);
        }
        if (resource.isSetMime()) {
            this.mime = resource.mime;
        }
        this.width = resource.width;
        this.height = resource.height;
        this.duration = resource.duration;
        this.active = resource.active;
        if (resource.isSetRecognition()) {
            this.recognition = new Data(resource.recognition);
        }
        if (resource.isSetAttributes()) {
            this.attributes = new ResourceAttributes(resource.attributes);
        }
        this.updateSequenceNum = resource.updateSequenceNum;
        if (resource.isSetAlternateData()) {
            this.alternateData = new Data(resource.alternateData);
        }
    }

    public boolean equals(Resource resource) {
        if (resource == null) {
            return false;
        }
        boolean isSetGuid = isSetGuid();
        boolean isSetGuid2 = resource.isSetGuid();
        if ((isSetGuid || isSetGuid2) && !(isSetGuid && isSetGuid2 && this.guid.equals(resource.guid))) {
            return false;
        }
        boolean isSetNoteGuid = isSetNoteGuid();
        boolean isSetNoteGuid2 = resource.isSetNoteGuid();
        if ((isSetNoteGuid || isSetNoteGuid2) && !(isSetNoteGuid && isSetNoteGuid2 && this.noteGuid.equals(resource.noteGuid))) {
            return false;
        }
        boolean isSetData = isSetData();
        boolean isSetData2 = resource.isSetData();
        if ((isSetData || isSetData2) && !(isSetData && isSetData2 && this.data.equals(resource.data))) {
            return false;
        }
        boolean isSetMime = isSetMime();
        boolean isSetMime2 = resource.isSetMime();
        if ((isSetMime || isSetMime2) && !(isSetMime && isSetMime2 && this.mime.equals(resource.mime))) {
            return false;
        }
        boolean isSetWidth = isSetWidth();
        boolean isSetWidth2 = resource.isSetWidth();
        if ((isSetWidth || isSetWidth2) && !(isSetWidth && isSetWidth2 && this.width == resource.width)) {
            return false;
        }
        boolean isSetHeight = isSetHeight();
        boolean isSetHeight2 = resource.isSetHeight();
        if ((isSetHeight || isSetHeight2) && !(isSetHeight && isSetHeight2 && this.height == resource.height)) {
            return false;
        }
        boolean isSetDuration = isSetDuration();
        boolean isSetDuration2 = resource.isSetDuration();
        if ((isSetDuration || isSetDuration2) && !(isSetDuration && isSetDuration2 && this.duration == resource.duration)) {
            return false;
        }
        boolean isSetActive = isSetActive();
        boolean isSetActive2 = resource.isSetActive();
        if ((isSetActive || isSetActive2) && !(isSetActive && isSetActive2 && this.active == resource.active)) {
            return false;
        }
        boolean isSetRecognition = isSetRecognition();
        boolean isSetRecognition2 = resource.isSetRecognition();
        if ((isSetRecognition || isSetRecognition2) && !(isSetRecognition && isSetRecognition2 && this.recognition.equals(resource.recognition))) {
            return false;
        }
        boolean isSetAttributes = isSetAttributes();
        boolean isSetAttributes2 = resource.isSetAttributes();
        if ((isSetAttributes || isSetAttributes2) && !(isSetAttributes && isSetAttributes2 && this.attributes.equals(resource.attributes))) {
            return false;
        }
        boolean isSetUpdateSequenceNum = isSetUpdateSequenceNum();
        boolean isSetUpdateSequenceNum2 = resource.isSetUpdateSequenceNum();
        if ((isSetUpdateSequenceNum || isSetUpdateSequenceNum2) && !(isSetUpdateSequenceNum && isSetUpdateSequenceNum2 && this.updateSequenceNum == resource.updateSequenceNum)) {
            return false;
        }
        boolean isSetAlternateData = isSetAlternateData();
        boolean isSetAlternateData2 = resource.isSetAlternateData();
        if (isSetAlternateData || isSetAlternateData2) {
            return isSetAlternateData && isSetAlternateData2 && this.alternateData.equals(resource.alternateData);
        }
        return true;
    }
}
