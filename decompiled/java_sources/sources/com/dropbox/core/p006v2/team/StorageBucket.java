package com.dropbox.core.p006v2.team;

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

/* loaded from: classes4.dex */
public class StorageBucket {
    protected final String bucket;
    protected final long users;

    /* renamed from: com.dropbox.core.v2.team.StorageBucket$a */
    /* loaded from: classes4.dex */
    public static class C3212a extends StructSerializer<StorageBucket> {

        /* renamed from: b */
        public static final C3212a f18464b = new C3212a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public StorageBucket deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Long l = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("bucket".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("users".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"bucket\" missing.");
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"users\" missing.");
            }
            StorageBucket storageBucket = new StorageBucket(str2, l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(storageBucket, storageBucket.toStringMultiline());
            return storageBucket;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(StorageBucket storageBucket, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("bucket");
            StoneSerializers.string().serialize((StoneSerializer<String>) storageBucket.bucket, jsonGenerator);
            jsonGenerator.writeFieldName("users");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(storageBucket.users), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public StorageBucket(String str, long j) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'bucket' is null");
        }
        this.bucket = str;
        this.users = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        StorageBucket storageBucket = (StorageBucket) obj;
        String str = this.bucket;
        String str2 = storageBucket.bucket;
        return (str == str2 || str.equals(str2)) && this.users == storageBucket.users;
    }

    public String getBucket() {
        return this.bucket;
    }

    public long getUsers() {
        return this.users;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.bucket, Long.valueOf(this.users)});
    }

    public String toString() {
        return C3212a.f18464b.serialize((C3212a) this, false);
    }

    public String toStringMultiline() {
        return C3212a.f18464b.serialize((C3212a) this, true);
    }
}
