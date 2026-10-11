package com.evernote.edam.type;

import androidx.core.app.NotificationCompat;
import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import java.io.Serializable;

/* loaded from: classes4.dex */
public class ResourceAttributes implements TBase<ResourceAttributes>, Serializable, Cloneable {
    private static final int __ALTITUDE_ISSET_ID = 3;
    private static final int __ATTACHMENT_ISSET_ID = 5;
    private static final int __CLIENTWILLINDEX_ISSET_ID = 4;
    private static final int __LATITUDE_ISSET_ID = 1;
    private static final int __LONGITUDE_ISSET_ID = 2;
    private static final int __TIMESTAMP_ISSET_ID = 0;
    private boolean[] __isset_vector;
    private double altitude;
    private LazyMap applicationData;
    private boolean attachment;
    private String cameraMake;
    private String cameraModel;
    private boolean clientWillIndex;
    private String fileName;
    private double latitude;
    private double longitude;
    private String recoType;
    private String sourceURL;
    private long timestamp;
    private static final TStruct STRUCT_DESC = new TStruct("ResourceAttributes");
    private static final TField SOURCE_URL_FIELD_DESC = new TField("sourceURL", (byte) 11, 1);
    private static final TField TIMESTAMP_FIELD_DESC = new TField(NotificationCompat.CarExtender.f4980p, (byte) 10, 2);
    private static final TField LATITUDE_FIELD_DESC = new TField("latitude", (byte) 4, 3);
    private static final TField LONGITUDE_FIELD_DESC = new TField("longitude", (byte) 4, 4);
    private static final TField ALTITUDE_FIELD_DESC = new TField("altitude", (byte) 4, 5);
    private static final TField CAMERA_MAKE_FIELD_DESC = new TField("cameraMake", (byte) 11, 6);
    private static final TField CAMERA_MODEL_FIELD_DESC = new TField("cameraModel", (byte) 11, 7);
    private static final TField CLIENT_WILL_INDEX_FIELD_DESC = new TField("clientWillIndex", (byte) 2, 8);
    private static final TField RECO_TYPE_FIELD_DESC = new TField("recoType", (byte) 11, 9);
    private static final TField FILE_NAME_FIELD_DESC = new TField(HuaweiYunQueryArgs.FILE_NAME, (byte) 11, 10);
    private static final TField ATTACHMENT_FIELD_DESC = new TField("attachment", (byte) 2, 11);
    private static final TField APPLICATION_DATA_FIELD_DESC = new TField("applicationData", (byte) 12, 12);

    public ResourceAttributes() {
        this.__isset_vector = new boolean[6];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.sourceURL = null;
        setTimestampIsSet(false);
        this.timestamp = 0L;
        setLatitudeIsSet(false);
        this.latitude = 0.0d;
        setLongitudeIsSet(false);
        this.longitude = 0.0d;
        setAltitudeIsSet(false);
        this.altitude = 0.0d;
        this.cameraMake = null;
        this.cameraModel = null;
        setClientWillIndexIsSet(false);
        this.clientWillIndex = false;
        this.recoType = null;
        this.fileName = null;
        setAttachmentIsSet(false);
        this.attachment = false;
        this.applicationData = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ResourceAttributes)) {
            return equals((ResourceAttributes) obj);
        }
        return false;
    }

    public double getAltitude() {
        return this.altitude;
    }

    public LazyMap getApplicationData() {
        return this.applicationData;
    }

    public String getCameraMake() {
        return this.cameraMake;
    }

    public String getCameraModel() {
        return this.cameraModel;
    }

    public String getFileName() {
        return this.fileName;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public String getRecoType() {
        return this.recoType;
    }

    public String getSourceURL() {
        return this.sourceURL;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isAttachment() {
        return this.attachment;
    }

    public boolean isClientWillIndex() {
        return this.clientWillIndex;
    }

    public boolean isSetAltitude() {
        return this.__isset_vector[3];
    }

    public boolean isSetApplicationData() {
        return this.applicationData != null;
    }

    public boolean isSetAttachment() {
        return this.__isset_vector[5];
    }

    public boolean isSetCameraMake() {
        return this.cameraMake != null;
    }

    public boolean isSetCameraModel() {
        return this.cameraModel != null;
    }

    public boolean isSetClientWillIndex() {
        return this.__isset_vector[4];
    }

    public boolean isSetFileName() {
        return this.fileName != null;
    }

    public boolean isSetLatitude() {
        return this.__isset_vector[1];
    }

    public boolean isSetLongitude() {
        return this.__isset_vector[2];
    }

    public boolean isSetRecoType() {
        return this.recoType != null;
    }

    public boolean isSetSourceURL() {
        return this.sourceURL != null;
    }

    public boolean isSetTimestamp() {
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
                        this.sourceURL = tProtocol.readString();
                        break;
                    }
                case 2:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.timestamp = tProtocol.readI64();
                        setTimestampIsSet(true);
                        break;
                    }
                case 3:
                    if (b != 4) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.latitude = tProtocol.readDouble();
                        setLatitudeIsSet(true);
                        break;
                    }
                case 4:
                    if (b != 4) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.longitude = tProtocol.readDouble();
                        setLongitudeIsSet(true);
                        break;
                    }
                case 5:
                    if (b != 4) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.altitude = tProtocol.readDouble();
                        setAltitudeIsSet(true);
                        break;
                    }
                case 6:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.cameraMake = tProtocol.readString();
                        break;
                    }
                case 7:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.cameraModel = tProtocol.readString();
                        break;
                    }
                case 8:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.clientWillIndex = tProtocol.readBool();
                        setClientWillIndexIsSet(true);
                        break;
                    }
                case 9:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.recoType = tProtocol.readString();
                        break;
                    }
                case 10:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.fileName = tProtocol.readString();
                        break;
                    }
                case 11:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.attachment = tProtocol.readBool();
                        setAttachmentIsSet(true);
                        break;
                    }
                case 12:
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        LazyMap lazyMap = new LazyMap();
                        this.applicationData = lazyMap;
                        lazyMap.read(tProtocol);
                        break;
                    }
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setAltitude(double d) {
        this.altitude = d;
        setAltitudeIsSet(true);
    }

    public void setAltitudeIsSet(boolean z) {
        this.__isset_vector[3] = z;
    }

    public void setApplicationData(LazyMap lazyMap) {
        this.applicationData = lazyMap;
    }

    public void setApplicationDataIsSet(boolean z) {
        if (z) {
            return;
        }
        this.applicationData = null;
    }

    public void setAttachment(boolean z) {
        this.attachment = z;
        setAttachmentIsSet(true);
    }

    public void setAttachmentIsSet(boolean z) {
        this.__isset_vector[5] = z;
    }

    public void setCameraMake(String str) {
        this.cameraMake = str;
    }

    public void setCameraMakeIsSet(boolean z) {
        if (z) {
            return;
        }
        this.cameraMake = null;
    }

    public void setCameraModel(String str) {
        this.cameraModel = str;
    }

    public void setCameraModelIsSet(boolean z) {
        if (z) {
            return;
        }
        this.cameraModel = null;
    }

    public void setClientWillIndex(boolean z) {
        this.clientWillIndex = z;
        setClientWillIndexIsSet(true);
    }

    public void setClientWillIndexIsSet(boolean z) {
        this.__isset_vector[4] = z;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public void setFileNameIsSet(boolean z) {
        if (z) {
            return;
        }
        this.fileName = null;
    }

    public void setLatitude(double d) {
        this.latitude = d;
        setLatitudeIsSet(true);
    }

    public void setLatitudeIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public void setLongitude(double d) {
        this.longitude = d;
        setLongitudeIsSet(true);
    }

    public void setLongitudeIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public void setRecoType(String str) {
        this.recoType = str;
    }

    public void setRecoTypeIsSet(boolean z) {
        if (z) {
            return;
        }
        this.recoType = null;
    }

    public void setSourceURL(String str) {
        this.sourceURL = str;
    }

    public void setSourceURLIsSet(boolean z) {
        if (z) {
            return;
        }
        this.sourceURL = null;
    }

    public void setTimestamp(long j) {
        this.timestamp = j;
        setTimestampIsSet(true);
    }

    public void setTimestampIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("ResourceAttributes(");
        boolean z2 = false;
        if (isSetSourceURL()) {
            sb.append("sourceURL:");
            String str = this.sourceURL;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (isSetTimestamp()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("timestamp:");
            sb.append(this.timestamp);
            z = false;
        }
        if (isSetLatitude()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("latitude:");
            sb.append(this.latitude);
            z = false;
        }
        if (isSetLongitude()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("longitude:");
            sb.append(this.longitude);
            z = false;
        }
        if (isSetAltitude()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("altitude:");
            sb.append(this.altitude);
            z = false;
        }
        if (isSetCameraMake()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("cameraMake:");
            String str2 = this.cameraMake;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
            z = false;
        }
        if (isSetCameraModel()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("cameraModel:");
            String str3 = this.cameraModel;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
            z = false;
        }
        if (isSetClientWillIndex()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("clientWillIndex:");
            sb.append(this.clientWillIndex);
            z = false;
        }
        if (isSetRecoType()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("recoType:");
            String str4 = this.recoType;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
            z = false;
        }
        if (isSetFileName()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("fileName:");
            String str5 = this.fileName;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
            z = false;
        }
        if (isSetAttachment()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("attachment:");
            sb.append(this.attachment);
        } else {
            z2 = z;
        }
        if (isSetApplicationData()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("applicationData:");
            LazyMap lazyMap = this.applicationData;
            if (lazyMap == null) {
                sb.append("null");
            } else {
                sb.append(lazyMap);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetAltitude() {
        this.__isset_vector[3] = false;
    }

    public void unsetApplicationData() {
        this.applicationData = null;
    }

    public void unsetAttachment() {
        this.__isset_vector[5] = false;
    }

    public void unsetCameraMake() {
        this.cameraMake = null;
    }

    public void unsetCameraModel() {
        this.cameraModel = null;
    }

    public void unsetClientWillIndex() {
        this.__isset_vector[4] = false;
    }

    public void unsetFileName() {
        this.fileName = null;
    }

    public void unsetLatitude() {
        this.__isset_vector[1] = false;
    }

    public void unsetLongitude() {
        this.__isset_vector[2] = false;
    }

    public void unsetRecoType() {
        this.recoType = null;
    }

    public void unsetSourceURL() {
        this.sourceURL = null;
    }

    public void unsetTimestamp() {
        this.__isset_vector[0] = false;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (this.sourceURL != null && isSetSourceURL()) {
            tProtocol.writeFieldBegin(SOURCE_URL_FIELD_DESC);
            tProtocol.writeString(this.sourceURL);
            tProtocol.writeFieldEnd();
        }
        if (isSetTimestamp()) {
            tProtocol.writeFieldBegin(TIMESTAMP_FIELD_DESC);
            tProtocol.writeI64(this.timestamp);
            tProtocol.writeFieldEnd();
        }
        if (isSetLatitude()) {
            tProtocol.writeFieldBegin(LATITUDE_FIELD_DESC);
            tProtocol.writeDouble(this.latitude);
            tProtocol.writeFieldEnd();
        }
        if (isSetLongitude()) {
            tProtocol.writeFieldBegin(LONGITUDE_FIELD_DESC);
            tProtocol.writeDouble(this.longitude);
            tProtocol.writeFieldEnd();
        }
        if (isSetAltitude()) {
            tProtocol.writeFieldBegin(ALTITUDE_FIELD_DESC);
            tProtocol.writeDouble(this.altitude);
            tProtocol.writeFieldEnd();
        }
        if (this.cameraMake != null && isSetCameraMake()) {
            tProtocol.writeFieldBegin(CAMERA_MAKE_FIELD_DESC);
            tProtocol.writeString(this.cameraMake);
            tProtocol.writeFieldEnd();
        }
        if (this.cameraModel != null && isSetCameraModel()) {
            tProtocol.writeFieldBegin(CAMERA_MODEL_FIELD_DESC);
            tProtocol.writeString(this.cameraModel);
            tProtocol.writeFieldEnd();
        }
        if (isSetClientWillIndex()) {
            tProtocol.writeFieldBegin(CLIENT_WILL_INDEX_FIELD_DESC);
            tProtocol.writeBool(this.clientWillIndex);
            tProtocol.writeFieldEnd();
        }
        if (this.recoType != null && isSetRecoType()) {
            tProtocol.writeFieldBegin(RECO_TYPE_FIELD_DESC);
            tProtocol.writeString(this.recoType);
            tProtocol.writeFieldEnd();
        }
        if (this.fileName != null && isSetFileName()) {
            tProtocol.writeFieldBegin(FILE_NAME_FIELD_DESC);
            tProtocol.writeString(this.fileName);
            tProtocol.writeFieldEnd();
        }
        if (isSetAttachment()) {
            tProtocol.writeFieldBegin(ATTACHMENT_FIELD_DESC);
            tProtocol.writeBool(this.attachment);
            tProtocol.writeFieldEnd();
        }
        if (this.applicationData != null && isSetApplicationData()) {
            tProtocol.writeFieldBegin(APPLICATION_DATA_FIELD_DESC);
            this.applicationData.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(ResourceAttributes resourceAttributes) {
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
        if (!getClass().equals(resourceAttributes.getClass())) {
            return getClass().getName().compareTo(resourceAttributes.getClass().getName());
        }
        int compareTo13 = Boolean.valueOf(isSetSourceURL()).compareTo(Boolean.valueOf(resourceAttributes.isSetSourceURL()));
        if (compareTo13 != 0) {
            return compareTo13;
        }
        if (isSetSourceURL() && (compareTo12 = TBaseHelper.compareTo(this.sourceURL, resourceAttributes.sourceURL)) != 0) {
            return compareTo12;
        }
        int compareTo14 = Boolean.valueOf(isSetTimestamp()).compareTo(Boolean.valueOf(resourceAttributes.isSetTimestamp()));
        if (compareTo14 != 0) {
            return compareTo14;
        }
        if (isSetTimestamp() && (compareTo11 = TBaseHelper.compareTo(this.timestamp, resourceAttributes.timestamp)) != 0) {
            return compareTo11;
        }
        int compareTo15 = Boolean.valueOf(isSetLatitude()).compareTo(Boolean.valueOf(resourceAttributes.isSetLatitude()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (isSetLatitude() && (compareTo10 = TBaseHelper.compareTo(this.latitude, resourceAttributes.latitude)) != 0) {
            return compareTo10;
        }
        int compareTo16 = Boolean.valueOf(isSetLongitude()).compareTo(Boolean.valueOf(resourceAttributes.isSetLongitude()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (isSetLongitude() && (compareTo9 = TBaseHelper.compareTo(this.longitude, resourceAttributes.longitude)) != 0) {
            return compareTo9;
        }
        int compareTo17 = Boolean.valueOf(isSetAltitude()).compareTo(Boolean.valueOf(resourceAttributes.isSetAltitude()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (isSetAltitude() && (compareTo8 = TBaseHelper.compareTo(this.altitude, resourceAttributes.altitude)) != 0) {
            return compareTo8;
        }
        int compareTo18 = Boolean.valueOf(isSetCameraMake()).compareTo(Boolean.valueOf(resourceAttributes.isSetCameraMake()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (isSetCameraMake() && (compareTo7 = TBaseHelper.compareTo(this.cameraMake, resourceAttributes.cameraMake)) != 0) {
            return compareTo7;
        }
        int compareTo19 = Boolean.valueOf(isSetCameraModel()).compareTo(Boolean.valueOf(resourceAttributes.isSetCameraModel()));
        if (compareTo19 != 0) {
            return compareTo19;
        }
        if (isSetCameraModel() && (compareTo6 = TBaseHelper.compareTo(this.cameraModel, resourceAttributes.cameraModel)) != 0) {
            return compareTo6;
        }
        int compareTo20 = Boolean.valueOf(isSetClientWillIndex()).compareTo(Boolean.valueOf(resourceAttributes.isSetClientWillIndex()));
        if (compareTo20 != 0) {
            return compareTo20;
        }
        if (isSetClientWillIndex() && (compareTo5 = TBaseHelper.compareTo(this.clientWillIndex, resourceAttributes.clientWillIndex)) != 0) {
            return compareTo5;
        }
        int compareTo21 = Boolean.valueOf(isSetRecoType()).compareTo(Boolean.valueOf(resourceAttributes.isSetRecoType()));
        if (compareTo21 != 0) {
            return compareTo21;
        }
        if (isSetRecoType() && (compareTo4 = TBaseHelper.compareTo(this.recoType, resourceAttributes.recoType)) != 0) {
            return compareTo4;
        }
        int compareTo22 = Boolean.valueOf(isSetFileName()).compareTo(Boolean.valueOf(resourceAttributes.isSetFileName()));
        if (compareTo22 != 0) {
            return compareTo22;
        }
        if (isSetFileName() && (compareTo3 = TBaseHelper.compareTo(this.fileName, resourceAttributes.fileName)) != 0) {
            return compareTo3;
        }
        int compareTo23 = Boolean.valueOf(isSetAttachment()).compareTo(Boolean.valueOf(resourceAttributes.isSetAttachment()));
        if (compareTo23 != 0) {
            return compareTo23;
        }
        if (isSetAttachment() && (compareTo2 = TBaseHelper.compareTo(this.attachment, resourceAttributes.attachment)) != 0) {
            return compareTo2;
        }
        int compareTo24 = Boolean.valueOf(isSetApplicationData()).compareTo(Boolean.valueOf(resourceAttributes.isSetApplicationData()));
        if (compareTo24 != 0) {
            return compareTo24;
        }
        if (!isSetApplicationData() || (compareTo = TBaseHelper.compareTo((Comparable) this.applicationData, (Comparable) resourceAttributes.applicationData)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<ResourceAttributes> deepCopy2() {
        return new ResourceAttributes(this);
    }

    public ResourceAttributes(ResourceAttributes resourceAttributes) {
        boolean[] zArr = new boolean[6];
        this.__isset_vector = zArr;
        boolean[] zArr2 = resourceAttributes.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        if (resourceAttributes.isSetSourceURL()) {
            this.sourceURL = resourceAttributes.sourceURL;
        }
        this.timestamp = resourceAttributes.timestamp;
        this.latitude = resourceAttributes.latitude;
        this.longitude = resourceAttributes.longitude;
        this.altitude = resourceAttributes.altitude;
        if (resourceAttributes.isSetCameraMake()) {
            this.cameraMake = resourceAttributes.cameraMake;
        }
        if (resourceAttributes.isSetCameraModel()) {
            this.cameraModel = resourceAttributes.cameraModel;
        }
        this.clientWillIndex = resourceAttributes.clientWillIndex;
        if (resourceAttributes.isSetRecoType()) {
            this.recoType = resourceAttributes.recoType;
        }
        if (resourceAttributes.isSetFileName()) {
            this.fileName = resourceAttributes.fileName;
        }
        this.attachment = resourceAttributes.attachment;
        if (resourceAttributes.isSetApplicationData()) {
            this.applicationData = new LazyMap(resourceAttributes.applicationData);
        }
    }

    public boolean equals(ResourceAttributes resourceAttributes) {
        if (resourceAttributes == null) {
            return false;
        }
        boolean isSetSourceURL = isSetSourceURL();
        boolean isSetSourceURL2 = resourceAttributes.isSetSourceURL();
        if ((isSetSourceURL || isSetSourceURL2) && !(isSetSourceURL && isSetSourceURL2 && this.sourceURL.equals(resourceAttributes.sourceURL))) {
            return false;
        }
        boolean isSetTimestamp = isSetTimestamp();
        boolean isSetTimestamp2 = resourceAttributes.isSetTimestamp();
        if ((isSetTimestamp || isSetTimestamp2) && !(isSetTimestamp && isSetTimestamp2 && this.timestamp == resourceAttributes.timestamp)) {
            return false;
        }
        boolean isSetLatitude = isSetLatitude();
        boolean isSetLatitude2 = resourceAttributes.isSetLatitude();
        if ((isSetLatitude || isSetLatitude2) && !(isSetLatitude && isSetLatitude2 && this.latitude == resourceAttributes.latitude)) {
            return false;
        }
        boolean isSetLongitude = isSetLongitude();
        boolean isSetLongitude2 = resourceAttributes.isSetLongitude();
        if ((isSetLongitude || isSetLongitude2) && !(isSetLongitude && isSetLongitude2 && this.longitude == resourceAttributes.longitude)) {
            return false;
        }
        boolean isSetAltitude = isSetAltitude();
        boolean isSetAltitude2 = resourceAttributes.isSetAltitude();
        if ((isSetAltitude || isSetAltitude2) && !(isSetAltitude && isSetAltitude2 && this.altitude == resourceAttributes.altitude)) {
            return false;
        }
        boolean isSetCameraMake = isSetCameraMake();
        boolean isSetCameraMake2 = resourceAttributes.isSetCameraMake();
        if ((isSetCameraMake || isSetCameraMake2) && !(isSetCameraMake && isSetCameraMake2 && this.cameraMake.equals(resourceAttributes.cameraMake))) {
            return false;
        }
        boolean isSetCameraModel = isSetCameraModel();
        boolean isSetCameraModel2 = resourceAttributes.isSetCameraModel();
        if ((isSetCameraModel || isSetCameraModel2) && !(isSetCameraModel && isSetCameraModel2 && this.cameraModel.equals(resourceAttributes.cameraModel))) {
            return false;
        }
        boolean isSetClientWillIndex = isSetClientWillIndex();
        boolean isSetClientWillIndex2 = resourceAttributes.isSetClientWillIndex();
        if ((isSetClientWillIndex || isSetClientWillIndex2) && !(isSetClientWillIndex && isSetClientWillIndex2 && this.clientWillIndex == resourceAttributes.clientWillIndex)) {
            return false;
        }
        boolean isSetRecoType = isSetRecoType();
        boolean isSetRecoType2 = resourceAttributes.isSetRecoType();
        if ((isSetRecoType || isSetRecoType2) && !(isSetRecoType && isSetRecoType2 && this.recoType.equals(resourceAttributes.recoType))) {
            return false;
        }
        boolean isSetFileName = isSetFileName();
        boolean isSetFileName2 = resourceAttributes.isSetFileName();
        if ((isSetFileName || isSetFileName2) && !(isSetFileName && isSetFileName2 && this.fileName.equals(resourceAttributes.fileName))) {
            return false;
        }
        boolean isSetAttachment = isSetAttachment();
        boolean isSetAttachment2 = resourceAttributes.isSetAttachment();
        if ((isSetAttachment || isSetAttachment2) && !(isSetAttachment && isSetAttachment2 && this.attachment == resourceAttributes.attachment)) {
            return false;
        }
        boolean isSetApplicationData = isSetApplicationData();
        boolean isSetApplicationData2 = resourceAttributes.isSetApplicationData();
        if (isSetApplicationData || isSetApplicationData2) {
            return isSetApplicationData && isSetApplicationData2 && this.applicationData.equals(resourceAttributes.applicationData);
        }
        return true;
    }
}
