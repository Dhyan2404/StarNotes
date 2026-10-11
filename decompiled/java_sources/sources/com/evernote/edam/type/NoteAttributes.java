package com.evernote.edam.type;

import androidx.core.app.NotificationCompat;
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
public class NoteAttributes implements TBase<NoteAttributes>, Serializable, Cloneable {
    private static final int __ALTITUDE_ISSET_ID = 3;
    private static final int __CREATORID_ISSET_ID = 8;
    private static final int __LASTEDITORID_ISSET_ID = 9;
    private static final int __LATITUDE_ISSET_ID = 1;
    private static final int __LONGITUDE_ISSET_ID = 2;
    private static final int __REMINDERDONETIME_ISSET_ID = 6;
    private static final int __REMINDERORDER_ISSET_ID = 5;
    private static final int __REMINDERTIME_ISSET_ID = 7;
    private static final int __SHAREDATE_ISSET_ID = 4;
    private static final int __SUBJECTDATE_ISSET_ID = 0;
    private boolean[] __isset_vector;
    private double altitude;
    private LazyMap applicationData;
    private String author;
    private Map<String, String> classifications;
    private String contentClass;
    private int creatorId;
    private String lastEditedBy;
    private int lastEditorId;
    private double latitude;
    private double longitude;
    private String placeName;
    private long reminderDoneTime;
    private long reminderOrder;
    private long reminderTime;
    private long shareDate;
    private String source;
    private String sourceApplication;
    private String sourceURL;
    private long subjectDate;
    private static final TStruct STRUCT_DESC = new TStruct("NoteAttributes");
    private static final TField SUBJECT_DATE_FIELD_DESC = new TField("subjectDate", (byte) 10, 1);
    private static final TField LATITUDE_FIELD_DESC = new TField("latitude", (byte) 4, 10);
    private static final TField LONGITUDE_FIELD_DESC = new TField("longitude", (byte) 4, 11);
    private static final TField ALTITUDE_FIELD_DESC = new TField("altitude", (byte) 4, 12);
    private static final TField AUTHOR_FIELD_DESC = new TField(NotificationCompat.CarExtender.f4973i, (byte) 11, 13);
    private static final TField SOURCE_FIELD_DESC = new TField("source", (byte) 11, 14);
    private static final TField SOURCE_URL_FIELD_DESC = new TField("sourceURL", (byte) 11, 15);
    private static final TField SOURCE_APPLICATION_FIELD_DESC = new TField("sourceApplication", (byte) 11, 16);
    private static final TField SHARE_DATE_FIELD_DESC = new TField("shareDate", (byte) 10, 17);
    private static final TField REMINDER_ORDER_FIELD_DESC = new TField("reminderOrder", (byte) 10, 18);
    private static final TField REMINDER_DONE_TIME_FIELD_DESC = new TField("reminderDoneTime", (byte) 10, 19);
    private static final TField REMINDER_TIME_FIELD_DESC = new TField("reminderTime", (byte) 10, 20);
    private static final TField PLACE_NAME_FIELD_DESC = new TField("placeName", (byte) 11, 21);
    private static final TField CONTENT_CLASS_FIELD_DESC = new TField("contentClass", (byte) 11, 22);
    private static final TField APPLICATION_DATA_FIELD_DESC = new TField("applicationData", (byte) 12, 23);
    private static final TField LAST_EDITED_BY_FIELD_DESC = new TField("lastEditedBy", (byte) 11, 24);
    private static final TField CLASSIFICATIONS_FIELD_DESC = new TField("classifications", (byte) 13, 26);
    private static final TField CREATOR_ID_FIELD_DESC = new TField("creatorId", (byte) 8, 27);
    private static final TField LAST_EDITOR_ID_FIELD_DESC = new TField("lastEditorId", (byte) 8, 28);

    public NoteAttributes() {
        this.__isset_vector = new boolean[10];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setSubjectDateIsSet(false);
        this.subjectDate = 0L;
        setLatitudeIsSet(false);
        this.latitude = 0.0d;
        setLongitudeIsSet(false);
        this.longitude = 0.0d;
        setAltitudeIsSet(false);
        this.altitude = 0.0d;
        this.author = null;
        this.source = null;
        this.sourceURL = null;
        this.sourceApplication = null;
        setShareDateIsSet(false);
        this.shareDate = 0L;
        setReminderOrderIsSet(false);
        this.reminderOrder = 0L;
        setReminderDoneTimeIsSet(false);
        this.reminderDoneTime = 0L;
        setReminderTimeIsSet(false);
        this.reminderTime = 0L;
        this.placeName = null;
        this.contentClass = null;
        this.applicationData = null;
        this.lastEditedBy = null;
        this.classifications = null;
        setCreatorIdIsSet(false);
        this.creatorId = 0;
        setLastEditorIdIsSet(false);
        this.lastEditorId = 0;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof NoteAttributes)) {
            return equals((NoteAttributes) obj);
        }
        return false;
    }

    public double getAltitude() {
        return this.altitude;
    }

    public LazyMap getApplicationData() {
        return this.applicationData;
    }

    public String getAuthor() {
        return this.author;
    }

    public Map<String, String> getClassifications() {
        return this.classifications;
    }

    public int getClassificationsSize() {
        Map<String, String> map = this.classifications;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public String getContentClass() {
        return this.contentClass;
    }

    public int getCreatorId() {
        return this.creatorId;
    }

    public String getLastEditedBy() {
        return this.lastEditedBy;
    }

    public int getLastEditorId() {
        return this.lastEditorId;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public String getPlaceName() {
        return this.placeName;
    }

    public long getReminderDoneTime() {
        return this.reminderDoneTime;
    }

    public long getReminderOrder() {
        return this.reminderOrder;
    }

    public long getReminderTime() {
        return this.reminderTime;
    }

    public long getShareDate() {
        return this.shareDate;
    }

    public String getSource() {
        return this.source;
    }

    public String getSourceApplication() {
        return this.sourceApplication;
    }

    public String getSourceURL() {
        return this.sourceURL;
    }

    public long getSubjectDate() {
        return this.subjectDate;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetAltitude() {
        return this.__isset_vector[3];
    }

    public boolean isSetApplicationData() {
        return this.applicationData != null;
    }

    public boolean isSetAuthor() {
        return this.author != null;
    }

    public boolean isSetClassifications() {
        return this.classifications != null;
    }

    public boolean isSetContentClass() {
        return this.contentClass != null;
    }

    public boolean isSetCreatorId() {
        return this.__isset_vector[8];
    }

    public boolean isSetLastEditedBy() {
        return this.lastEditedBy != null;
    }

    public boolean isSetLastEditorId() {
        return this.__isset_vector[9];
    }

    public boolean isSetLatitude() {
        return this.__isset_vector[1];
    }

    public boolean isSetLongitude() {
        return this.__isset_vector[2];
    }

    public boolean isSetPlaceName() {
        return this.placeName != null;
    }

    public boolean isSetReminderDoneTime() {
        return this.__isset_vector[6];
    }

    public boolean isSetReminderOrder() {
        return this.__isset_vector[5];
    }

    public boolean isSetReminderTime() {
        return this.__isset_vector[7];
    }

    public boolean isSetShareDate() {
        return this.__isset_vector[4];
    }

    public boolean isSetSource() {
        return this.source != null;
    }

    public boolean isSetSourceApplication() {
        return this.sourceApplication != null;
    }

    public boolean isSetSourceURL() {
        return this.sourceURL != null;
    }

    public boolean isSetSubjectDate() {
        return this.__isset_vector[0];
    }

    public void putToClassifications(String str, String str2) {
        if (this.classifications == null) {
            this.classifications = new HashMap();
        }
        this.classifications.put(str, str2);
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
                switch (s) {
                    case 10:
                        if (b == 4) {
                            this.latitude = tProtocol.readDouble();
                            setLatitudeIsSet(true);
                            break;
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        }
                    case 11:
                        if (b == 4) {
                            this.longitude = tProtocol.readDouble();
                            setLongitudeIsSet(true);
                            break;
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        }
                    case 12:
                        if (b == 4) {
                            this.altitude = tProtocol.readDouble();
                            setAltitudeIsSet(true);
                            break;
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        }
                    case 13:
                        if (b == 11) {
                            this.author = tProtocol.readString();
                            break;
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        }
                    case 14:
                        if (b == 11) {
                            this.source = tProtocol.readString();
                            break;
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        }
                    case 15:
                        if (b == 11) {
                            this.sourceURL = tProtocol.readString();
                            break;
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        }
                    case 16:
                        if (b == 11) {
                            this.sourceApplication = tProtocol.readString();
                            break;
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        }
                    case 17:
                        if (b == 10) {
                            this.shareDate = tProtocol.readI64();
                            setShareDateIsSet(true);
                            break;
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        }
                    case 18:
                        if (b == 10) {
                            this.reminderOrder = tProtocol.readI64();
                            setReminderOrderIsSet(true);
                            break;
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        }
                    case 19:
                        if (b == 10) {
                            this.reminderDoneTime = tProtocol.readI64();
                            setReminderDoneTimeIsSet(true);
                            break;
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        }
                    case 20:
                        if (b == 10) {
                            this.reminderTime = tProtocol.readI64();
                            setReminderTimeIsSet(true);
                            break;
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        }
                    case 21:
                        if (b == 11) {
                            this.placeName = tProtocol.readString();
                            break;
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        }
                    case 22:
                        if (b == 11) {
                            this.contentClass = tProtocol.readString();
                            break;
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        }
                    case 23:
                        if (b == 12) {
                            LazyMap lazyMap = new LazyMap();
                            this.applicationData = lazyMap;
                            lazyMap.read(tProtocol);
                            break;
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        }
                    case 24:
                        if (b == 11) {
                            this.lastEditedBy = tProtocol.readString();
                            break;
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        }
                    default:
                        switch (s) {
                            case 26:
                                if (b == 13) {
                                    TMap readMapBegin = tProtocol.readMapBegin();
                                    this.classifications = new HashMap(readMapBegin.size * 2);
                                    for (int i = 0; i < readMapBegin.size; i++) {
                                        this.classifications.put(tProtocol.readString(), tProtocol.readString());
                                    }
                                    tProtocol.readMapEnd();
                                    break;
                                } else {
                                    TProtocolUtil.skip(tProtocol, b);
                                    break;
                                }
                            case 27:
                                if (b == 8) {
                                    this.creatorId = tProtocol.readI32();
                                    setCreatorIdIsSet(true);
                                    break;
                                } else {
                                    TProtocolUtil.skip(tProtocol, b);
                                    break;
                                }
                            case 28:
                                if (b == 8) {
                                    this.lastEditorId = tProtocol.readI32();
                                    setLastEditorIdIsSet(true);
                                    break;
                                } else {
                                    TProtocolUtil.skip(tProtocol, b);
                                    break;
                                }
                            default:
                                TProtocolUtil.skip(tProtocol, b);
                                break;
                        }
                }
            } else if (b == 10) {
                this.subjectDate = tProtocol.readI64();
                setSubjectDateIsSet(true);
            } else {
                TProtocolUtil.skip(tProtocol, b);
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

    public void setAuthor(String str) {
        this.author = str;
    }

    public void setAuthorIsSet(boolean z) {
        if (z) {
            return;
        }
        this.author = null;
    }

    public void setClassifications(Map<String, String> map) {
        this.classifications = map;
    }

    public void setClassificationsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.classifications = null;
    }

    public void setContentClass(String str) {
        this.contentClass = str;
    }

    public void setContentClassIsSet(boolean z) {
        if (z) {
            return;
        }
        this.contentClass = null;
    }

    public void setCreatorId(int i) {
        this.creatorId = i;
        setCreatorIdIsSet(true);
    }

    public void setCreatorIdIsSet(boolean z) {
        this.__isset_vector[8] = z;
    }

    public void setLastEditedBy(String str) {
        this.lastEditedBy = str;
    }

    public void setLastEditedByIsSet(boolean z) {
        if (z) {
            return;
        }
        this.lastEditedBy = null;
    }

    public void setLastEditorId(int i) {
        this.lastEditorId = i;
        setLastEditorIdIsSet(true);
    }

    public void setLastEditorIdIsSet(boolean z) {
        this.__isset_vector[9] = z;
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

    public void setPlaceName(String str) {
        this.placeName = str;
    }

    public void setPlaceNameIsSet(boolean z) {
        if (z) {
            return;
        }
        this.placeName = null;
    }

    public void setReminderDoneTime(long j) {
        this.reminderDoneTime = j;
        setReminderDoneTimeIsSet(true);
    }

    public void setReminderDoneTimeIsSet(boolean z) {
        this.__isset_vector[6] = z;
    }

    public void setReminderOrder(long j) {
        this.reminderOrder = j;
        setReminderOrderIsSet(true);
    }

    public void setReminderOrderIsSet(boolean z) {
        this.__isset_vector[5] = z;
    }

    public void setReminderTime(long j) {
        this.reminderTime = j;
        setReminderTimeIsSet(true);
    }

    public void setReminderTimeIsSet(boolean z) {
        this.__isset_vector[7] = z;
    }

    public void setShareDate(long j) {
        this.shareDate = j;
        setShareDateIsSet(true);
    }

    public void setShareDateIsSet(boolean z) {
        this.__isset_vector[4] = z;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public void setSourceApplication(String str) {
        this.sourceApplication = str;
    }

    public void setSourceApplicationIsSet(boolean z) {
        if (z) {
            return;
        }
        this.sourceApplication = null;
    }

    public void setSourceIsSet(boolean z) {
        if (z) {
            return;
        }
        this.source = null;
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

    public void setSubjectDate(long j) {
        this.subjectDate = j;
        setSubjectDateIsSet(true);
    }

    public void setSubjectDateIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("NoteAttributes(");
        boolean z2 = false;
        if (isSetSubjectDate()) {
            sb.append("subjectDate:");
            sb.append(this.subjectDate);
            z = false;
        } else {
            z = true;
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
        if (isSetAuthor()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("author:");
            String str = this.author;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        }
        if (isSetSource()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("source:");
            String str2 = this.source;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
            z = false;
        }
        if (isSetSourceURL()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("sourceURL:");
            String str3 = this.sourceURL;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
            z = false;
        }
        if (isSetSourceApplication()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("sourceApplication:");
            String str4 = this.sourceApplication;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
            z = false;
        }
        if (isSetShareDate()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("shareDate:");
            sb.append(this.shareDate);
            z = false;
        }
        if (isSetReminderOrder()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("reminderOrder:");
            sb.append(this.reminderOrder);
            z = false;
        }
        if (isSetReminderDoneTime()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("reminderDoneTime:");
            sb.append(this.reminderDoneTime);
            z = false;
        }
        if (isSetReminderTime()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("reminderTime:");
            sb.append(this.reminderTime);
            z = false;
        }
        if (isSetPlaceName()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("placeName:");
            String str5 = this.placeName;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
            z = false;
        }
        if (isSetContentClass()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("contentClass:");
            String str6 = this.contentClass;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
            z = false;
        }
        if (isSetApplicationData()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("applicationData:");
            LazyMap lazyMap = this.applicationData;
            if (lazyMap == null) {
                sb.append("null");
            } else {
                sb.append(lazyMap);
            }
            z = false;
        }
        if (isSetLastEditedBy()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("lastEditedBy:");
            String str7 = this.lastEditedBy;
            if (str7 == null) {
                sb.append("null");
            } else {
                sb.append(str7);
            }
            z = false;
        }
        if (isSetClassifications()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("classifications:");
            Map<String, String> map = this.classifications;
            if (map == null) {
                sb.append("null");
            } else {
                sb.append(map);
            }
            z = false;
        }
        if (isSetCreatorId()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("creatorId:");
            sb.append(this.creatorId);
        } else {
            z2 = z;
        }
        if (isSetLastEditorId()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("lastEditorId:");
            sb.append(this.lastEditorId);
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

    public void unsetAuthor() {
        this.author = null;
    }

    public void unsetClassifications() {
        this.classifications = null;
    }

    public void unsetContentClass() {
        this.contentClass = null;
    }

    public void unsetCreatorId() {
        this.__isset_vector[8] = false;
    }

    public void unsetLastEditedBy() {
        this.lastEditedBy = null;
    }

    public void unsetLastEditorId() {
        this.__isset_vector[9] = false;
    }

    public void unsetLatitude() {
        this.__isset_vector[1] = false;
    }

    public void unsetLongitude() {
        this.__isset_vector[2] = false;
    }

    public void unsetPlaceName() {
        this.placeName = null;
    }

    public void unsetReminderDoneTime() {
        this.__isset_vector[6] = false;
    }

    public void unsetReminderOrder() {
        this.__isset_vector[5] = false;
    }

    public void unsetReminderTime() {
        this.__isset_vector[7] = false;
    }

    public void unsetShareDate() {
        this.__isset_vector[4] = false;
    }

    public void unsetSource() {
        this.source = null;
    }

    public void unsetSourceApplication() {
        this.sourceApplication = null;
    }

    public void unsetSourceURL() {
        this.sourceURL = null;
    }

    public void unsetSubjectDate() {
        this.__isset_vector[0] = false;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (isSetSubjectDate()) {
            tProtocol.writeFieldBegin(SUBJECT_DATE_FIELD_DESC);
            tProtocol.writeI64(this.subjectDate);
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
        if (this.author != null && isSetAuthor()) {
            tProtocol.writeFieldBegin(AUTHOR_FIELD_DESC);
            tProtocol.writeString(this.author);
            tProtocol.writeFieldEnd();
        }
        if (this.source != null && isSetSource()) {
            tProtocol.writeFieldBegin(SOURCE_FIELD_DESC);
            tProtocol.writeString(this.source);
            tProtocol.writeFieldEnd();
        }
        if (this.sourceURL != null && isSetSourceURL()) {
            tProtocol.writeFieldBegin(SOURCE_URL_FIELD_DESC);
            tProtocol.writeString(this.sourceURL);
            tProtocol.writeFieldEnd();
        }
        if (this.sourceApplication != null && isSetSourceApplication()) {
            tProtocol.writeFieldBegin(SOURCE_APPLICATION_FIELD_DESC);
            tProtocol.writeString(this.sourceApplication);
            tProtocol.writeFieldEnd();
        }
        if (isSetShareDate()) {
            tProtocol.writeFieldBegin(SHARE_DATE_FIELD_DESC);
            tProtocol.writeI64(this.shareDate);
            tProtocol.writeFieldEnd();
        }
        if (isSetReminderOrder()) {
            tProtocol.writeFieldBegin(REMINDER_ORDER_FIELD_DESC);
            tProtocol.writeI64(this.reminderOrder);
            tProtocol.writeFieldEnd();
        }
        if (isSetReminderDoneTime()) {
            tProtocol.writeFieldBegin(REMINDER_DONE_TIME_FIELD_DESC);
            tProtocol.writeI64(this.reminderDoneTime);
            tProtocol.writeFieldEnd();
        }
        if (isSetReminderTime()) {
            tProtocol.writeFieldBegin(REMINDER_TIME_FIELD_DESC);
            tProtocol.writeI64(this.reminderTime);
            tProtocol.writeFieldEnd();
        }
        if (this.placeName != null && isSetPlaceName()) {
            tProtocol.writeFieldBegin(PLACE_NAME_FIELD_DESC);
            tProtocol.writeString(this.placeName);
            tProtocol.writeFieldEnd();
        }
        if (this.contentClass != null && isSetContentClass()) {
            tProtocol.writeFieldBegin(CONTENT_CLASS_FIELD_DESC);
            tProtocol.writeString(this.contentClass);
            tProtocol.writeFieldEnd();
        }
        if (this.applicationData != null && isSetApplicationData()) {
            tProtocol.writeFieldBegin(APPLICATION_DATA_FIELD_DESC);
            this.applicationData.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        if (this.lastEditedBy != null && isSetLastEditedBy()) {
            tProtocol.writeFieldBegin(LAST_EDITED_BY_FIELD_DESC);
            tProtocol.writeString(this.lastEditedBy);
            tProtocol.writeFieldEnd();
        }
        if (this.classifications != null && isSetClassifications()) {
            tProtocol.writeFieldBegin(CLASSIFICATIONS_FIELD_DESC);
            tProtocol.writeMapBegin(new TMap((byte) 11, (byte) 11, this.classifications.size()));
            for (Map.Entry<String, String> entry : this.classifications.entrySet()) {
                tProtocol.writeString(entry.getKey());
                tProtocol.writeString(entry.getValue());
            }
            tProtocol.writeMapEnd();
            tProtocol.writeFieldEnd();
        }
        if (isSetCreatorId()) {
            tProtocol.writeFieldBegin(CREATOR_ID_FIELD_DESC);
            tProtocol.writeI32(this.creatorId);
            tProtocol.writeFieldEnd();
        }
        if (isSetLastEditorId()) {
            tProtocol.writeFieldBegin(LAST_EDITOR_ID_FIELD_DESC);
            tProtocol.writeI32(this.lastEditorId);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(NoteAttributes noteAttributes) {
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
        int compareTo13;
        int compareTo14;
        int compareTo15;
        int compareTo16;
        int compareTo17;
        int compareTo18;
        int compareTo19;
        if (!getClass().equals(noteAttributes.getClass())) {
            return getClass().getName().compareTo(noteAttributes.getClass().getName());
        }
        int compareTo20 = Boolean.valueOf(isSetSubjectDate()).compareTo(Boolean.valueOf(noteAttributes.isSetSubjectDate()));
        if (compareTo20 != 0) {
            return compareTo20;
        }
        if (isSetSubjectDate() && (compareTo19 = TBaseHelper.compareTo(this.subjectDate, noteAttributes.subjectDate)) != 0) {
            return compareTo19;
        }
        int compareTo21 = Boolean.valueOf(isSetLatitude()).compareTo(Boolean.valueOf(noteAttributes.isSetLatitude()));
        if (compareTo21 != 0) {
            return compareTo21;
        }
        if (isSetLatitude() && (compareTo18 = TBaseHelper.compareTo(this.latitude, noteAttributes.latitude)) != 0) {
            return compareTo18;
        }
        int compareTo22 = Boolean.valueOf(isSetLongitude()).compareTo(Boolean.valueOf(noteAttributes.isSetLongitude()));
        if (compareTo22 != 0) {
            return compareTo22;
        }
        if (isSetLongitude() && (compareTo17 = TBaseHelper.compareTo(this.longitude, noteAttributes.longitude)) != 0) {
            return compareTo17;
        }
        int compareTo23 = Boolean.valueOf(isSetAltitude()).compareTo(Boolean.valueOf(noteAttributes.isSetAltitude()));
        if (compareTo23 != 0) {
            return compareTo23;
        }
        if (isSetAltitude() && (compareTo16 = TBaseHelper.compareTo(this.altitude, noteAttributes.altitude)) != 0) {
            return compareTo16;
        }
        int compareTo24 = Boolean.valueOf(isSetAuthor()).compareTo(Boolean.valueOf(noteAttributes.isSetAuthor()));
        if (compareTo24 != 0) {
            return compareTo24;
        }
        if (isSetAuthor() && (compareTo15 = TBaseHelper.compareTo(this.author, noteAttributes.author)) != 0) {
            return compareTo15;
        }
        int compareTo25 = Boolean.valueOf(isSetSource()).compareTo(Boolean.valueOf(noteAttributes.isSetSource()));
        if (compareTo25 != 0) {
            return compareTo25;
        }
        if (isSetSource() && (compareTo14 = TBaseHelper.compareTo(this.source, noteAttributes.source)) != 0) {
            return compareTo14;
        }
        int compareTo26 = Boolean.valueOf(isSetSourceURL()).compareTo(Boolean.valueOf(noteAttributes.isSetSourceURL()));
        if (compareTo26 != 0) {
            return compareTo26;
        }
        if (isSetSourceURL() && (compareTo13 = TBaseHelper.compareTo(this.sourceURL, noteAttributes.sourceURL)) != 0) {
            return compareTo13;
        }
        int compareTo27 = Boolean.valueOf(isSetSourceApplication()).compareTo(Boolean.valueOf(noteAttributes.isSetSourceApplication()));
        if (compareTo27 != 0) {
            return compareTo27;
        }
        if (isSetSourceApplication() && (compareTo12 = TBaseHelper.compareTo(this.sourceApplication, noteAttributes.sourceApplication)) != 0) {
            return compareTo12;
        }
        int compareTo28 = Boolean.valueOf(isSetShareDate()).compareTo(Boolean.valueOf(noteAttributes.isSetShareDate()));
        if (compareTo28 != 0) {
            return compareTo28;
        }
        if (isSetShareDate() && (compareTo11 = TBaseHelper.compareTo(this.shareDate, noteAttributes.shareDate)) != 0) {
            return compareTo11;
        }
        int compareTo29 = Boolean.valueOf(isSetReminderOrder()).compareTo(Boolean.valueOf(noteAttributes.isSetReminderOrder()));
        if (compareTo29 != 0) {
            return compareTo29;
        }
        if (isSetReminderOrder() && (compareTo10 = TBaseHelper.compareTo(this.reminderOrder, noteAttributes.reminderOrder)) != 0) {
            return compareTo10;
        }
        int compareTo30 = Boolean.valueOf(isSetReminderDoneTime()).compareTo(Boolean.valueOf(noteAttributes.isSetReminderDoneTime()));
        if (compareTo30 != 0) {
            return compareTo30;
        }
        if (isSetReminderDoneTime() && (compareTo9 = TBaseHelper.compareTo(this.reminderDoneTime, noteAttributes.reminderDoneTime)) != 0) {
            return compareTo9;
        }
        int compareTo31 = Boolean.valueOf(isSetReminderTime()).compareTo(Boolean.valueOf(noteAttributes.isSetReminderTime()));
        if (compareTo31 != 0) {
            return compareTo31;
        }
        if (isSetReminderTime() && (compareTo8 = TBaseHelper.compareTo(this.reminderTime, noteAttributes.reminderTime)) != 0) {
            return compareTo8;
        }
        int compareTo32 = Boolean.valueOf(isSetPlaceName()).compareTo(Boolean.valueOf(noteAttributes.isSetPlaceName()));
        if (compareTo32 != 0) {
            return compareTo32;
        }
        if (isSetPlaceName() && (compareTo7 = TBaseHelper.compareTo(this.placeName, noteAttributes.placeName)) != 0) {
            return compareTo7;
        }
        int compareTo33 = Boolean.valueOf(isSetContentClass()).compareTo(Boolean.valueOf(noteAttributes.isSetContentClass()));
        if (compareTo33 != 0) {
            return compareTo33;
        }
        if (isSetContentClass() && (compareTo6 = TBaseHelper.compareTo(this.contentClass, noteAttributes.contentClass)) != 0) {
            return compareTo6;
        }
        int compareTo34 = Boolean.valueOf(isSetApplicationData()).compareTo(Boolean.valueOf(noteAttributes.isSetApplicationData()));
        if (compareTo34 != 0) {
            return compareTo34;
        }
        if (isSetApplicationData() && (compareTo5 = TBaseHelper.compareTo((Comparable) this.applicationData, (Comparable) noteAttributes.applicationData)) != 0) {
            return compareTo5;
        }
        int compareTo35 = Boolean.valueOf(isSetLastEditedBy()).compareTo(Boolean.valueOf(noteAttributes.isSetLastEditedBy()));
        if (compareTo35 != 0) {
            return compareTo35;
        }
        if (isSetLastEditedBy() && (compareTo4 = TBaseHelper.compareTo(this.lastEditedBy, noteAttributes.lastEditedBy)) != 0) {
            return compareTo4;
        }
        int compareTo36 = Boolean.valueOf(isSetClassifications()).compareTo(Boolean.valueOf(noteAttributes.isSetClassifications()));
        if (compareTo36 != 0) {
            return compareTo36;
        }
        if (isSetClassifications() && (compareTo3 = TBaseHelper.compareTo((Map) this.classifications, (Map) noteAttributes.classifications)) != 0) {
            return compareTo3;
        }
        int compareTo37 = Boolean.valueOf(isSetCreatorId()).compareTo(Boolean.valueOf(noteAttributes.isSetCreatorId()));
        if (compareTo37 != 0) {
            return compareTo37;
        }
        if (isSetCreatorId() && (compareTo2 = TBaseHelper.compareTo(this.creatorId, noteAttributes.creatorId)) != 0) {
            return compareTo2;
        }
        int compareTo38 = Boolean.valueOf(isSetLastEditorId()).compareTo(Boolean.valueOf(noteAttributes.isSetLastEditorId()));
        if (compareTo38 != 0) {
            return compareTo38;
        }
        if (!isSetLastEditorId() || (compareTo = TBaseHelper.compareTo(this.lastEditorId, noteAttributes.lastEditorId)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<NoteAttributes> deepCopy2() {
        return new NoteAttributes(this);
    }

    public NoteAttributes(NoteAttributes noteAttributes) {
        boolean[] zArr = new boolean[10];
        this.__isset_vector = zArr;
        boolean[] zArr2 = noteAttributes.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.subjectDate = noteAttributes.subjectDate;
        this.latitude = noteAttributes.latitude;
        this.longitude = noteAttributes.longitude;
        this.altitude = noteAttributes.altitude;
        if (noteAttributes.isSetAuthor()) {
            this.author = noteAttributes.author;
        }
        if (noteAttributes.isSetSource()) {
            this.source = noteAttributes.source;
        }
        if (noteAttributes.isSetSourceURL()) {
            this.sourceURL = noteAttributes.sourceURL;
        }
        if (noteAttributes.isSetSourceApplication()) {
            this.sourceApplication = noteAttributes.sourceApplication;
        }
        this.shareDate = noteAttributes.shareDate;
        this.reminderOrder = noteAttributes.reminderOrder;
        this.reminderDoneTime = noteAttributes.reminderDoneTime;
        this.reminderTime = noteAttributes.reminderTime;
        if (noteAttributes.isSetPlaceName()) {
            this.placeName = noteAttributes.placeName;
        }
        if (noteAttributes.isSetContentClass()) {
            this.contentClass = noteAttributes.contentClass;
        }
        if (noteAttributes.isSetApplicationData()) {
            this.applicationData = new LazyMap(noteAttributes.applicationData);
        }
        if (noteAttributes.isSetLastEditedBy()) {
            this.lastEditedBy = noteAttributes.lastEditedBy;
        }
        if (noteAttributes.isSetClassifications()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, String> entry : noteAttributes.classifications.entrySet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            this.classifications = hashMap;
        }
        this.creatorId = noteAttributes.creatorId;
        this.lastEditorId = noteAttributes.lastEditorId;
    }

    public boolean equals(NoteAttributes noteAttributes) {
        if (noteAttributes == null) {
            return false;
        }
        boolean isSetSubjectDate = isSetSubjectDate();
        boolean isSetSubjectDate2 = noteAttributes.isSetSubjectDate();
        if ((isSetSubjectDate || isSetSubjectDate2) && !(isSetSubjectDate && isSetSubjectDate2 && this.subjectDate == noteAttributes.subjectDate)) {
            return false;
        }
        boolean isSetLatitude = isSetLatitude();
        boolean isSetLatitude2 = noteAttributes.isSetLatitude();
        if ((isSetLatitude || isSetLatitude2) && !(isSetLatitude && isSetLatitude2 && this.latitude == noteAttributes.latitude)) {
            return false;
        }
        boolean isSetLongitude = isSetLongitude();
        boolean isSetLongitude2 = noteAttributes.isSetLongitude();
        if ((isSetLongitude || isSetLongitude2) && !(isSetLongitude && isSetLongitude2 && this.longitude == noteAttributes.longitude)) {
            return false;
        }
        boolean isSetAltitude = isSetAltitude();
        boolean isSetAltitude2 = noteAttributes.isSetAltitude();
        if ((isSetAltitude || isSetAltitude2) && !(isSetAltitude && isSetAltitude2 && this.altitude == noteAttributes.altitude)) {
            return false;
        }
        boolean isSetAuthor = isSetAuthor();
        boolean isSetAuthor2 = noteAttributes.isSetAuthor();
        if ((isSetAuthor || isSetAuthor2) && !(isSetAuthor && isSetAuthor2 && this.author.equals(noteAttributes.author))) {
            return false;
        }
        boolean isSetSource = isSetSource();
        boolean isSetSource2 = noteAttributes.isSetSource();
        if ((isSetSource || isSetSource2) && !(isSetSource && isSetSource2 && this.source.equals(noteAttributes.source))) {
            return false;
        }
        boolean isSetSourceURL = isSetSourceURL();
        boolean isSetSourceURL2 = noteAttributes.isSetSourceURL();
        if ((isSetSourceURL || isSetSourceURL2) && !(isSetSourceURL && isSetSourceURL2 && this.sourceURL.equals(noteAttributes.sourceURL))) {
            return false;
        }
        boolean isSetSourceApplication = isSetSourceApplication();
        boolean isSetSourceApplication2 = noteAttributes.isSetSourceApplication();
        if ((isSetSourceApplication || isSetSourceApplication2) && !(isSetSourceApplication && isSetSourceApplication2 && this.sourceApplication.equals(noteAttributes.sourceApplication))) {
            return false;
        }
        boolean isSetShareDate = isSetShareDate();
        boolean isSetShareDate2 = noteAttributes.isSetShareDate();
        if ((isSetShareDate || isSetShareDate2) && !(isSetShareDate && isSetShareDate2 && this.shareDate == noteAttributes.shareDate)) {
            return false;
        }
        boolean isSetReminderOrder = isSetReminderOrder();
        boolean isSetReminderOrder2 = noteAttributes.isSetReminderOrder();
        if ((isSetReminderOrder || isSetReminderOrder2) && !(isSetReminderOrder && isSetReminderOrder2 && this.reminderOrder == noteAttributes.reminderOrder)) {
            return false;
        }
        boolean isSetReminderDoneTime = isSetReminderDoneTime();
        boolean isSetReminderDoneTime2 = noteAttributes.isSetReminderDoneTime();
        if ((isSetReminderDoneTime || isSetReminderDoneTime2) && !(isSetReminderDoneTime && isSetReminderDoneTime2 && this.reminderDoneTime == noteAttributes.reminderDoneTime)) {
            return false;
        }
        boolean isSetReminderTime = isSetReminderTime();
        boolean isSetReminderTime2 = noteAttributes.isSetReminderTime();
        if ((isSetReminderTime || isSetReminderTime2) && !(isSetReminderTime && isSetReminderTime2 && this.reminderTime == noteAttributes.reminderTime)) {
            return false;
        }
        boolean isSetPlaceName = isSetPlaceName();
        boolean isSetPlaceName2 = noteAttributes.isSetPlaceName();
        if ((isSetPlaceName || isSetPlaceName2) && !(isSetPlaceName && isSetPlaceName2 && this.placeName.equals(noteAttributes.placeName))) {
            return false;
        }
        boolean isSetContentClass = isSetContentClass();
        boolean isSetContentClass2 = noteAttributes.isSetContentClass();
        if ((isSetContentClass || isSetContentClass2) && !(isSetContentClass && isSetContentClass2 && this.contentClass.equals(noteAttributes.contentClass))) {
            return false;
        }
        boolean isSetApplicationData = isSetApplicationData();
        boolean isSetApplicationData2 = noteAttributes.isSetApplicationData();
        if ((isSetApplicationData || isSetApplicationData2) && !(isSetApplicationData && isSetApplicationData2 && this.applicationData.equals(noteAttributes.applicationData))) {
            return false;
        }
        boolean isSetLastEditedBy = isSetLastEditedBy();
        boolean isSetLastEditedBy2 = noteAttributes.isSetLastEditedBy();
        if ((isSetLastEditedBy || isSetLastEditedBy2) && !(isSetLastEditedBy && isSetLastEditedBy2 && this.lastEditedBy.equals(noteAttributes.lastEditedBy))) {
            return false;
        }
        boolean isSetClassifications = isSetClassifications();
        boolean isSetClassifications2 = noteAttributes.isSetClassifications();
        if ((isSetClassifications || isSetClassifications2) && !(isSetClassifications && isSetClassifications2 && this.classifications.equals(noteAttributes.classifications))) {
            return false;
        }
        boolean isSetCreatorId = isSetCreatorId();
        boolean isSetCreatorId2 = noteAttributes.isSetCreatorId();
        if ((isSetCreatorId || isSetCreatorId2) && !(isSetCreatorId && isSetCreatorId2 && this.creatorId == noteAttributes.creatorId)) {
            return false;
        }
        boolean isSetLastEditorId = isSetLastEditorId();
        boolean isSetLastEditorId2 = noteAttributes.isSetLastEditorId();
        if (isSetLastEditorId || isSetLastEditorId2) {
            return isSetLastEditorId && isSetLastEditorId2 && this.lastEditorId == noteAttributes.lastEditorId;
        }
        return true;
    }
}
