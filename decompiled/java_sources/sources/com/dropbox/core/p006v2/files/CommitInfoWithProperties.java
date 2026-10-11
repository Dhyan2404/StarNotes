package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.fileproperties.PropertyGroup;
import com.dropbox.core.p006v2.files.CommitInfo;
import com.dropbox.core.p006v2.files.WriteMode;
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
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Date;
import java.util.List;

/* loaded from: classes4.dex */
public class CommitInfoWithProperties extends CommitInfo {

    /* loaded from: classes4.dex */
    public static class Builder extends CommitInfo.Builder {
        public Builder(String str) {
            super(str);
        }

        @Override // com.dropbox.core.v2.files.CommitInfo.Builder
        public /* bridge */ /* synthetic */ CommitInfo.Builder withPropertyGroups(List list) {
            return withPropertyGroups((List<PropertyGroup>) list);
        }

        @Override // com.dropbox.core.v2.files.CommitInfo.Builder
        public CommitInfoWithProperties build() {
            return new CommitInfoWithProperties(this.path, this.mode, this.autorename, this.clientModified, this.mute, this.propertyGroups, this.strictConflict);
        }

        @Override // com.dropbox.core.v2.files.CommitInfo.Builder
        public Builder withAutorename(Boolean bool) {
            super.withAutorename(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.files.CommitInfo.Builder
        public Builder withClientModified(Date date) {
            super.withClientModified(date);
            return this;
        }

        @Override // com.dropbox.core.v2.files.CommitInfo.Builder
        public Builder withMode(WriteMode writeMode) {
            super.withMode(writeMode);
            return this;
        }

        @Override // com.dropbox.core.v2.files.CommitInfo.Builder
        public Builder withMute(Boolean bool) {
            super.withMute(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.files.CommitInfo.Builder
        public Builder withPropertyGroups(List<PropertyGroup> list) {
            super.withPropertyGroups(list);
            return this;
        }

        @Override // com.dropbox.core.v2.files.CommitInfo.Builder
        public Builder withStrictConflict(Boolean bool) {
            super.withStrictConflict(bool);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.CommitInfoWithProperties$a */
    /* loaded from: classes4.dex */
    public static class C2496a extends StructSerializer<CommitInfoWithProperties> {

        /* renamed from: b */
        public static final C2496a f17043b = new C2496a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CommitInfoWithProperties deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            WriteMode writeMode = WriteMode.ADD;
            Boolean bool = Boolean.FALSE;
            String str2 = null;
            Date date = null;
            List list = null;
            WriteMode writeMode2 = writeMode;
            Boolean bool2 = bool;
            Boolean bool3 = bool2;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("path".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if (Constants.ATTRNAME_MODE.equals(currentName)) {
                    writeMode2 = WriteMode.C2704b.f17489b.deserialize(jsonParser);
                } else if ("autorename".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("client_modified".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if ("mute".equals(currentName)) {
                    bool2 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("property_groups".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(PropertyGroup.Serializer.INSTANCE)).deserialize(jsonParser);
                } else if ("strict_conflict".equals(currentName)) {
                    bool3 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            CommitInfoWithProperties commitInfoWithProperties = new CommitInfoWithProperties(str2, writeMode2, bool.booleanValue(), date, bool2.booleanValue(), list, bool3.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(commitInfoWithProperties, commitInfoWithProperties.toStringMultiline());
            return commitInfoWithProperties;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CommitInfoWithProperties commitInfoWithProperties, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) commitInfoWithProperties.path, jsonGenerator);
            jsonGenerator.writeFieldName(Constants.ATTRNAME_MODE);
            WriteMode.C2704b.f17489b.serialize(commitInfoWithProperties.mode, jsonGenerator);
            jsonGenerator.writeFieldName("autorename");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(commitInfoWithProperties.autorename), jsonGenerator);
            if (commitInfoWithProperties.clientModified != null) {
                jsonGenerator.writeFieldName("client_modified");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) commitInfoWithProperties.clientModified, jsonGenerator);
            }
            jsonGenerator.writeFieldName("mute");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(commitInfoWithProperties.mute), jsonGenerator);
            if (commitInfoWithProperties.propertyGroups != null) {
                jsonGenerator.writeFieldName("property_groups");
                StoneSerializers.nullable(StoneSerializers.list(PropertyGroup.Serializer.INSTANCE)).serialize((StoneSerializer) commitInfoWithProperties.propertyGroups, jsonGenerator);
            }
            jsonGenerator.writeFieldName("strict_conflict");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(commitInfoWithProperties.strictConflict), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public CommitInfoWithProperties(String str, WriteMode writeMode, boolean z, Date date, boolean z2, List<PropertyGroup> list, boolean z3) {
        super(str, writeMode, z, date, z2, list, z3);
    }

    /* renamed from: a */
    public static Builder m10574a(String str) {
        return new Builder(str);
    }

    @Override // com.dropbox.core.p006v2.files.CommitInfo
    public boolean equals(Object obj) {
        WriteMode writeMode;
        WriteMode writeMode2;
        Date date;
        Date date2;
        List<PropertyGroup> list;
        List<PropertyGroup> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        CommitInfoWithProperties commitInfoWithProperties = (CommitInfoWithProperties) obj;
        String str = this.path;
        String str2 = commitInfoWithProperties.path;
        return (str == str2 || str.equals(str2)) && ((writeMode = this.mode) == (writeMode2 = commitInfoWithProperties.mode) || writeMode.equals(writeMode2)) && this.autorename == commitInfoWithProperties.autorename && (((date = this.clientModified) == (date2 = commitInfoWithProperties.clientModified) || (date != null && date.equals(date2))) && this.mute == commitInfoWithProperties.mute && (((list = this.propertyGroups) == (list2 = commitInfoWithProperties.propertyGroups) || (list != null && list.equals(list2))) && this.strictConflict == commitInfoWithProperties.strictConflict));
    }

    @Override // com.dropbox.core.p006v2.files.CommitInfo
    public boolean getAutorename() {
        return this.autorename;
    }

    @Override // com.dropbox.core.p006v2.files.CommitInfo
    public Date getClientModified() {
        return this.clientModified;
    }

    @Override // com.dropbox.core.p006v2.files.CommitInfo
    public WriteMode getMode() {
        return this.mode;
    }

    @Override // com.dropbox.core.p006v2.files.CommitInfo
    public boolean getMute() {
        return this.mute;
    }

    @Override // com.dropbox.core.p006v2.files.CommitInfo
    public String getPath() {
        return this.path;
    }

    @Override // com.dropbox.core.p006v2.files.CommitInfo
    public List<PropertyGroup> getPropertyGroups() {
        return this.propertyGroups;
    }

    @Override // com.dropbox.core.p006v2.files.CommitInfo
    public boolean getStrictConflict() {
        return this.strictConflict;
    }

    @Override // com.dropbox.core.p006v2.files.CommitInfo
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.p006v2.files.CommitInfo
    public String toString() {
        return C2496a.f17043b.serialize((C2496a) this, false);
    }

    @Override // com.dropbox.core.p006v2.files.CommitInfo
    public String toStringMultiline() {
        return C2496a.f17043b.serialize((C2496a) this, true);
    }

    public CommitInfoWithProperties(String str) {
        this(str, WriteMode.ADD, false, null, false, null, false);
    }
}
