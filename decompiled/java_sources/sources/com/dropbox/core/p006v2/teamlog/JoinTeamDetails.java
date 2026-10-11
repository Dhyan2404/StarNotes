package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.FolderLogInfo;
import com.dropbox.core.p006v2.teamlog.LinkedDeviceLogInfo;
import com.dropbox.core.p006v2.teamlog.UserLinkedAppLogInfo;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class JoinTeamDetails {
    protected final Boolean hasLinkedApps;
    protected final Boolean hasLinkedDevices;
    protected final Boolean hasLinkedSharedFolders;
    protected final List<UserLinkedAppLogInfo> linkedApps;
    protected final List<LinkedDeviceLogInfo> linkedDevices;
    protected final List<FolderLogInfo> linkedSharedFolders;
    protected final Boolean wasLinkedAppsTruncated;
    protected final Boolean wasLinkedDevicesTruncated;
    protected final Boolean wasLinkedSharedFoldersTruncated;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected Boolean hasLinkedApps;
        protected Boolean hasLinkedDevices;
        protected Boolean hasLinkedSharedFolders;
        protected final List<UserLinkedAppLogInfo> linkedApps;
        protected final List<LinkedDeviceLogInfo> linkedDevices;
        protected final List<FolderLogInfo> linkedSharedFolders;
        protected Boolean wasLinkedAppsTruncated;
        protected Boolean wasLinkedDevicesTruncated;
        protected Boolean wasLinkedSharedFoldersTruncated;

        public Builder(List<UserLinkedAppLogInfo> list, List<LinkedDeviceLogInfo> list2, List<FolderLogInfo> list3) {
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'linkedApps' is null");
            }
            Iterator<UserLinkedAppLogInfo> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'linkedApps' is null");
                }
            }
            this.linkedApps = list;
            if (list2 == null) {
                throw new IllegalArgumentException("Required value for 'linkedDevices' is null");
            }
            Iterator<LinkedDeviceLogInfo> it3 = list2.iterator();
            while (it3.hasNext()) {
                if (it3.next() == null) {
                    throw new IllegalArgumentException("An item in list 'linkedDevices' is null");
                }
            }
            this.linkedDevices = list2;
            if (list3 == null) {
                throw new IllegalArgumentException("Required value for 'linkedSharedFolders' is null");
            }
            Iterator<FolderLogInfo> it4 = list3.iterator();
            while (it4.hasNext()) {
                if (it4.next() == null) {
                    throw new IllegalArgumentException("An item in list 'linkedSharedFolders' is null");
                }
            }
            this.linkedSharedFolders = list3;
            this.wasLinkedAppsTruncated = null;
            this.wasLinkedDevicesTruncated = null;
            this.wasLinkedSharedFoldersTruncated = null;
            this.hasLinkedApps = null;
            this.hasLinkedDevices = null;
            this.hasLinkedSharedFolders = null;
        }

        public JoinTeamDetails build() {
            return new JoinTeamDetails(this.linkedApps, this.linkedDevices, this.linkedSharedFolders, this.wasLinkedAppsTruncated, this.wasLinkedDevicesTruncated, this.wasLinkedSharedFoldersTruncated, this.hasLinkedApps, this.hasLinkedDevices, this.hasLinkedSharedFolders);
        }

        public Builder withHasLinkedApps(Boolean bool) {
            this.hasLinkedApps = bool;
            return this;
        }

        public Builder withHasLinkedDevices(Boolean bool) {
            this.hasLinkedDevices = bool;
            return this;
        }

        public Builder withHasLinkedSharedFolders(Boolean bool) {
            this.hasLinkedSharedFolders = bool;
            return this;
        }

        public Builder withWasLinkedAppsTruncated(Boolean bool) {
            this.wasLinkedAppsTruncated = bool;
            return this;
        }

        public Builder withWasLinkedDevicesTruncated(Boolean bool) {
            this.wasLinkedDevicesTruncated = bool;
            return this;
        }

        public Builder withWasLinkedSharedFoldersTruncated(Boolean bool) {
            this.wasLinkedSharedFoldersTruncated = bool;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.JoinTeamDetails$a */
    /* loaded from: classes4.dex */
    public static class C3691a extends StructSerializer<JoinTeamDetails> {

        /* renamed from: b */
        public static final C3691a f19959b = new C3691a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public JoinTeamDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            List list = null;
            List list2 = null;
            List list3 = null;
            Boolean bool = null;
            Boolean bool2 = null;
            Boolean bool3 = null;
            Boolean bool4 = null;
            Boolean bool5 = null;
            Boolean bool6 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("linked_apps".equals(currentName)) {
                    list = (List) StoneSerializers.list(UserLinkedAppLogInfo.C4391a.f20679b).deserialize(jsonParser);
                } else if ("linked_devices".equals(currentName)) {
                    list2 = (List) StoneSerializers.list(LinkedDeviceLogInfo.C3716b.f19989b).deserialize(jsonParser);
                } else if ("linked_shared_folders".equals(currentName)) {
                    list3 = (List) StoneSerializers.list(FolderLogInfo.C3624a.f19883b).deserialize(jsonParser);
                } else if ("was_linked_apps_truncated".equals(currentName)) {
                    bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else if ("was_linked_devices_truncated".equals(currentName)) {
                    bool2 = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else if ("was_linked_shared_folders_truncated".equals(currentName)) {
                    bool3 = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else if ("has_linked_apps".equals(currentName)) {
                    bool4 = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else if ("has_linked_devices".equals(currentName)) {
                    bool5 = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else if ("has_linked_shared_folders".equals(currentName)) {
                    bool6 = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"linked_apps\" missing.");
            }
            if (list2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"linked_devices\" missing.");
            }
            if (list3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"linked_shared_folders\" missing.");
            }
            JoinTeamDetails joinTeamDetails = new JoinTeamDetails(list, list2, list3, bool, bool2, bool3, bool4, bool5, bool6);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(joinTeamDetails, joinTeamDetails.toStringMultiline());
            return joinTeamDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(JoinTeamDetails joinTeamDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("linked_apps");
            StoneSerializers.list(UserLinkedAppLogInfo.C4391a.f20679b).serialize((StoneSerializer) joinTeamDetails.linkedApps, jsonGenerator);
            jsonGenerator.writeFieldName("linked_devices");
            StoneSerializers.list(LinkedDeviceLogInfo.C3716b.f19989b).serialize((StoneSerializer) joinTeamDetails.linkedDevices, jsonGenerator);
            jsonGenerator.writeFieldName("linked_shared_folders");
            StoneSerializers.list(FolderLogInfo.C3624a.f19883b).serialize((StoneSerializer) joinTeamDetails.linkedSharedFolders, jsonGenerator);
            if (joinTeamDetails.wasLinkedAppsTruncated != null) {
                jsonGenerator.writeFieldName("was_linked_apps_truncated");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) joinTeamDetails.wasLinkedAppsTruncated, jsonGenerator);
            }
            if (joinTeamDetails.wasLinkedDevicesTruncated != null) {
                jsonGenerator.writeFieldName("was_linked_devices_truncated");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) joinTeamDetails.wasLinkedDevicesTruncated, jsonGenerator);
            }
            if (joinTeamDetails.wasLinkedSharedFoldersTruncated != null) {
                jsonGenerator.writeFieldName("was_linked_shared_folders_truncated");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) joinTeamDetails.wasLinkedSharedFoldersTruncated, jsonGenerator);
            }
            if (joinTeamDetails.hasLinkedApps != null) {
                jsonGenerator.writeFieldName("has_linked_apps");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) joinTeamDetails.hasLinkedApps, jsonGenerator);
            }
            if (joinTeamDetails.hasLinkedDevices != null) {
                jsonGenerator.writeFieldName("has_linked_devices");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) joinTeamDetails.hasLinkedDevices, jsonGenerator);
            }
            if (joinTeamDetails.hasLinkedSharedFolders != null) {
                jsonGenerator.writeFieldName("has_linked_shared_folders");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) joinTeamDetails.hasLinkedSharedFolders, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public JoinTeamDetails(List<UserLinkedAppLogInfo> list, List<LinkedDeviceLogInfo> list2, List<FolderLogInfo> list3, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6) {
        if (list != null) {
            Iterator<UserLinkedAppLogInfo> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'linkedApps' is null");
                }
            }
            this.linkedApps = list;
            if (list2 != null) {
                Iterator<LinkedDeviceLogInfo> it3 = list2.iterator();
                while (it3.hasNext()) {
                    if (it3.next() == null) {
                        throw new IllegalArgumentException("An item in list 'linkedDevices' is null");
                    }
                }
                this.linkedDevices = list2;
                if (list3 != null) {
                    Iterator<FolderLogInfo> it4 = list3.iterator();
                    while (it4.hasNext()) {
                        if (it4.next() == null) {
                            throw new IllegalArgumentException("An item in list 'linkedSharedFolders' is null");
                        }
                    }
                    this.linkedSharedFolders = list3;
                    this.wasLinkedAppsTruncated = bool;
                    this.wasLinkedDevicesTruncated = bool2;
                    this.wasLinkedSharedFoldersTruncated = bool3;
                    this.hasLinkedApps = bool4;
                    this.hasLinkedDevices = bool5;
                    this.hasLinkedSharedFolders = bool6;
                    return;
                }
                throw new IllegalArgumentException("Required value for 'linkedSharedFolders' is null");
            }
            throw new IllegalArgumentException("Required value for 'linkedDevices' is null");
        }
        throw new IllegalArgumentException("Required value for 'linkedApps' is null");
    }

    public static Builder newBuilder(List<UserLinkedAppLogInfo> list, List<LinkedDeviceLogInfo> list2, List<FolderLogInfo> list3) {
        return new Builder(list, list2, list3);
    }

    public boolean equals(Object obj) {
        List<LinkedDeviceLogInfo> list;
        List<LinkedDeviceLogInfo> list2;
        List<FolderLogInfo> list3;
        List<FolderLogInfo> list4;
        Boolean bool;
        Boolean bool2;
        Boolean bool3;
        Boolean bool4;
        Boolean bool5;
        Boolean bool6;
        Boolean bool7;
        Boolean bool8;
        Boolean bool9;
        Boolean bool10;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        JoinTeamDetails joinTeamDetails = (JoinTeamDetails) obj;
        List<UserLinkedAppLogInfo> list5 = this.linkedApps;
        List<UserLinkedAppLogInfo> list6 = joinTeamDetails.linkedApps;
        if ((list5 == list6 || list5.equals(list6)) && (((list = this.linkedDevices) == (list2 = joinTeamDetails.linkedDevices) || list.equals(list2)) && (((list3 = this.linkedSharedFolders) == (list4 = joinTeamDetails.linkedSharedFolders) || list3.equals(list4)) && (((bool = this.wasLinkedAppsTruncated) == (bool2 = joinTeamDetails.wasLinkedAppsTruncated) || (bool != null && bool.equals(bool2))) && (((bool3 = this.wasLinkedDevicesTruncated) == (bool4 = joinTeamDetails.wasLinkedDevicesTruncated) || (bool3 != null && bool3.equals(bool4))) && (((bool5 = this.wasLinkedSharedFoldersTruncated) == (bool6 = joinTeamDetails.wasLinkedSharedFoldersTruncated) || (bool5 != null && bool5.equals(bool6))) && (((bool7 = this.hasLinkedApps) == (bool8 = joinTeamDetails.hasLinkedApps) || (bool7 != null && bool7.equals(bool8))) && ((bool9 = this.hasLinkedDevices) == (bool10 = joinTeamDetails.hasLinkedDevices) || (bool9 != null && bool9.equals(bool10)))))))))) {
            Boolean bool11 = this.hasLinkedSharedFolders;
            Boolean bool12 = joinTeamDetails.hasLinkedSharedFolders;
            if (bool11 == bool12) {
                return true;
            }
            if (bool11 != null && bool11.equals(bool12)) {
                return true;
            }
        }
        return false;
    }

    public Boolean getHasLinkedApps() {
        return this.hasLinkedApps;
    }

    public Boolean getHasLinkedDevices() {
        return this.hasLinkedDevices;
    }

    public Boolean getHasLinkedSharedFolders() {
        return this.hasLinkedSharedFolders;
    }

    public List<UserLinkedAppLogInfo> getLinkedApps() {
        return this.linkedApps;
    }

    public List<LinkedDeviceLogInfo> getLinkedDevices() {
        return this.linkedDevices;
    }

    public List<FolderLogInfo> getLinkedSharedFolders() {
        return this.linkedSharedFolders;
    }

    public Boolean getWasLinkedAppsTruncated() {
        return this.wasLinkedAppsTruncated;
    }

    public Boolean getWasLinkedDevicesTruncated() {
        return this.wasLinkedDevicesTruncated;
    }

    public Boolean getWasLinkedSharedFoldersTruncated() {
        return this.wasLinkedSharedFoldersTruncated;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.linkedApps, this.linkedDevices, this.linkedSharedFolders, this.wasLinkedAppsTruncated, this.wasLinkedDevicesTruncated, this.wasLinkedSharedFoldersTruncated, this.hasLinkedApps, this.hasLinkedDevices, this.hasLinkedSharedFolders});
    }

    public String toString() {
        return C3691a.f19959b.serialize((C3691a) this, false);
    }

    public String toStringMultiline() {
        return C3691a.f19959b.serialize((C3691a) this, true);
    }

    public JoinTeamDetails(List<UserLinkedAppLogInfo> list, List<LinkedDeviceLogInfo> list2, List<FolderLogInfo> list3) {
        this(list, list2, list3, null, null, null, null, null, null);
    }
}
