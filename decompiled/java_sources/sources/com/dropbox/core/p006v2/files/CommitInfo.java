package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.fileproperties.PropertyGroup;
import com.dropbox.core.p006v2.files.WriteMode;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class CommitInfo {
    protected final boolean autorename;
    protected final Date clientModified;
    protected final WriteMode mode;
    protected final boolean mute;
    protected final String path;
    protected final List<PropertyGroup> propertyGroups;
    protected final boolean strictConflict;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected boolean autorename;
        protected Date clientModified;
        protected WriteMode mode;
        protected boolean mute;
        protected final String path;
        protected List<PropertyGroup> propertyGroups;
        protected boolean strictConflict;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            this.mode = WriteMode.ADD;
            this.autorename = false;
            this.clientModified = null;
            this.mute = false;
            this.propertyGroups = null;
            this.strictConflict = false;
        }

        public CommitInfo build() {
            return new CommitInfo(this.path, this.mode, this.autorename, this.clientModified, this.mute, this.propertyGroups, this.strictConflict);
        }

        public Builder withAutorename(Boolean bool) {
            if (bool != null) {
                this.autorename = bool.booleanValue();
            } else {
                this.autorename = false;
            }
            return this;
        }

        public Builder withClientModified(Date date) {
            this.clientModified = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withMode(WriteMode writeMode) {
            if (writeMode != null) {
                this.mode = writeMode;
            } else {
                this.mode = WriteMode.ADD;
            }
            return this;
        }

        public Builder withMute(Boolean bool) {
            if (bool != null) {
                this.mute = bool.booleanValue();
            } else {
                this.mute = false;
            }
            return this;
        }

        public Builder withPropertyGroups(List<PropertyGroup> list) {
            if (list != null) {
                Iterator<PropertyGroup> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
                    }
                }
            }
            this.propertyGroups = list;
            return this;
        }

        public Builder withStrictConflict(Boolean bool) {
            if (bool != null) {
                this.strictConflict = bool.booleanValue();
            } else {
                this.strictConflict = false;
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.CommitInfo$a */
    /* loaded from: classes4.dex */
    public static class C2495a extends StructSerializer<CommitInfo> {

        /* renamed from: b */
        public static final C2495a f17042b = new C2495a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CommitInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            CommitInfo commitInfo = new CommitInfo(str2, writeMode2, bool.booleanValue(), date, bool2.booleanValue(), list, bool3.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(commitInfo, commitInfo.toStringMultiline());
            return commitInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CommitInfo commitInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) commitInfo.path, jsonGenerator);
            jsonGenerator.writeFieldName(Constants.ATTRNAME_MODE);
            WriteMode.C2704b.f17489b.serialize(commitInfo.mode, jsonGenerator);
            jsonGenerator.writeFieldName("autorename");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(commitInfo.autorename), jsonGenerator);
            if (commitInfo.clientModified != null) {
                jsonGenerator.writeFieldName("client_modified");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) commitInfo.clientModified, jsonGenerator);
            }
            jsonGenerator.writeFieldName("mute");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(commitInfo.mute), jsonGenerator);
            if (commitInfo.propertyGroups != null) {
                jsonGenerator.writeFieldName("property_groups");
                StoneSerializers.nullable(StoneSerializers.list(PropertyGroup.Serializer.INSTANCE)).serialize((StoneSerializer) commitInfo.propertyGroups, jsonGenerator);
            }
            jsonGenerator.writeFieldName("strict_conflict");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(commitInfo.strictConflict), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public CommitInfo(String str, WriteMode writeMode, boolean z, Date date, boolean z2, List<PropertyGroup> list, boolean z3) {
        if (str != null) {
            if (Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", str)) {
                this.path = str;
                if (writeMode != null) {
                    this.mode = writeMode;
                    this.autorename = z;
                    this.clientModified = LangUtil.truncateMillis(date);
                    this.mute = z2;
                    if (list != null) {
                        Iterator<PropertyGroup> it2 = list.iterator();
                        while (it2.hasNext()) {
                            if (it2.next() == null) {
                                throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
                            }
                        }
                    }
                    this.propertyGroups = list;
                    this.strictConflict = z3;
                    return;
                }
                throw new IllegalArgumentException("Required value for 'mode' is null");
            }
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'path' is null");
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

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
        CommitInfo commitInfo = (CommitInfo) obj;
        String str = this.path;
        String str2 = commitInfo.path;
        return (str == str2 || str.equals(str2)) && ((writeMode = this.mode) == (writeMode2 = commitInfo.mode) || writeMode.equals(writeMode2)) && this.autorename == commitInfo.autorename && (((date = this.clientModified) == (date2 = commitInfo.clientModified) || (date != null && date.equals(date2))) && this.mute == commitInfo.mute && (((list = this.propertyGroups) == (list2 = commitInfo.propertyGroups) || (list != null && list.equals(list2))) && this.strictConflict == commitInfo.strictConflict));
    }

    public boolean getAutorename() {
        return this.autorename;
    }

    public Date getClientModified() {
        return this.clientModified;
    }

    public WriteMode getMode() {
        return this.mode;
    }

    public boolean getMute() {
        return this.mute;
    }

    public String getPath() {
        return this.path;
    }

    public List<PropertyGroup> getPropertyGroups() {
        return this.propertyGroups;
    }

    public boolean getStrictConflict() {
        return this.strictConflict;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, this.mode, Boolean.valueOf(this.autorename), this.clientModified, Boolean.valueOf(this.mute), this.propertyGroups, Boolean.valueOf(this.strictConflict)});
    }

    public String toString() {
        return C2495a.f17042b.serialize((C2495a) this, false);
    }

    public String toStringMultiline() {
        return C2495a.f17042b.serialize((C2495a) this, true);
    }

    public CommitInfo(String str) {
        this(str, WriteMode.ADD, false, null, false, null, false);
    }
}
