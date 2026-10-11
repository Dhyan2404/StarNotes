package com.dropbox.core.p006v2.files;

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
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* loaded from: classes4.dex */
public class FileLockMetadata {
    protected final Date created;
    protected final Boolean isLockholder;
    protected final String lockholderAccountId;
    protected final String lockholderName;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected Boolean isLockholder = null;
        protected String lockholderName = null;
        protected String lockholderAccountId = null;
        protected Date created = null;

        public FileLockMetadata build() {
            return new FileLockMetadata(this.isLockholder, this.lockholderName, this.lockholderAccountId, this.created);
        }

        public Builder withCreated(Date date) {
            this.created = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withIsLockholder(Boolean bool) {
            this.isLockholder = bool;
            return this;
        }

        public Builder withLockholderAccountId(String str) {
            if (str != null) {
                if (str.length() < 40) {
                    throw new IllegalArgumentException("String 'lockholderAccountId' is shorter than 40");
                }
                if (str.length() > 40) {
                    throw new IllegalArgumentException("String 'lockholderAccountId' is longer than 40");
                }
            }
            this.lockholderAccountId = str;
            return this;
        }

        public Builder withLockholderName(String str) {
            this.lockholderName = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.FileLockMetadata$a */
    /* loaded from: classes4.dex */
    public static class C2542a extends StructSerializer<FileLockMetadata> {

        /* renamed from: b */
        public static final C2542a f17148b = new C2542a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileLockMetadata deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = null;
            String str3 = null;
            Date date = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("is_lockholder".equals(currentName)) {
                    bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else if ("lockholder_name".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("lockholder_account_id".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("created".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            FileLockMetadata fileLockMetadata = new FileLockMetadata(bool, str2, str3, date);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileLockMetadata, fileLockMetadata.toStringMultiline());
            return fileLockMetadata;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileLockMetadata fileLockMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (fileLockMetadata.isLockholder != null) {
                jsonGenerator.writeFieldName("is_lockholder");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) fileLockMetadata.isLockholder, jsonGenerator);
            }
            if (fileLockMetadata.lockholderName != null) {
                jsonGenerator.writeFieldName("lockholder_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileLockMetadata.lockholderName, jsonGenerator);
            }
            if (fileLockMetadata.lockholderAccountId != null) {
                jsonGenerator.writeFieldName("lockholder_account_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileLockMetadata.lockholderAccountId, jsonGenerator);
            }
            if (fileLockMetadata.created != null) {
                jsonGenerator.writeFieldName("created");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) fileLockMetadata.created, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileLockMetadata(Boolean bool, String str, String str2, Date date) {
        this.isLockholder = bool;
        this.lockholderName = str;
        if (str2 != null) {
            if (str2.length() >= 40) {
                if (str2.length() > 40) {
                    throw new IllegalArgumentException("String 'lockholderAccountId' is longer than 40");
                }
            } else {
                throw new IllegalArgumentException("String 'lockholderAccountId' is shorter than 40");
            }
        }
        this.lockholderAccountId = str2;
        this.created = LangUtil.truncateMillis(date);
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileLockMetadata fileLockMetadata = (FileLockMetadata) obj;
        Boolean bool = this.isLockholder;
        Boolean bool2 = fileLockMetadata.isLockholder;
        if ((bool == bool2 || (bool != null && bool.equals(bool2))) && (((str = this.lockholderName) == (str2 = fileLockMetadata.lockholderName) || (str != null && str.equals(str2))) && ((str3 = this.lockholderAccountId) == (str4 = fileLockMetadata.lockholderAccountId) || (str3 != null && str3.equals(str4))))) {
            Date date = this.created;
            Date date2 = fileLockMetadata.created;
            if (date == date2) {
                return true;
            }
            if (date != null && date.equals(date2)) {
                return true;
            }
        }
        return false;
    }

    public Date getCreated() {
        return this.created;
    }

    public Boolean getIsLockholder() {
        return this.isLockholder;
    }

    public String getLockholderAccountId() {
        return this.lockholderAccountId;
    }

    public String getLockholderName() {
        return this.lockholderName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.isLockholder, this.lockholderName, this.lockholderAccountId, this.created});
    }

    public String toString() {
        return C2542a.f17148b.serialize((C2542a) this, false);
    }

    public String toStringMultiline() {
        return C2542a.f17148b.serialize((C2542a) this, true);
    }

    public FileLockMetadata() {
        this(null, null, null, null);
    }
}
