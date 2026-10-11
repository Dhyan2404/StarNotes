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
public class SingleUserLock {
    protected final Date created;
    protected final String lockHolderAccountId;
    protected final String lockHolderTeamId;

    /* renamed from: com.dropbox.core.v2.files.SingleUserLock$a */
    /* loaded from: classes4.dex */
    public static class C2660a extends StructSerializer<SingleUserLock> {

        /* renamed from: b */
        public static final C2660a f17408b = new C2660a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SingleUserLock deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Date date = null;
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("created".equals(currentName)) {
                    date = StoneSerializers.timestamp().deserialize(jsonParser);
                } else if ("lock_holder_account_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("lock_holder_team_id".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (date == null) {
                throw new JsonParseException(jsonParser, "Required field \"created\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"lock_holder_account_id\" missing.");
            }
            SingleUserLock singleUserLock = new SingleUserLock(date, str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(singleUserLock, singleUserLock.toStringMultiline());
            return singleUserLock;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SingleUserLock singleUserLock, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("created");
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) singleUserLock.created, jsonGenerator);
            jsonGenerator.writeFieldName("lock_holder_account_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) singleUserLock.lockHolderAccountId, jsonGenerator);
            if (singleUserLock.lockHolderTeamId != null) {
                jsonGenerator.writeFieldName("lock_holder_team_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) singleUserLock.lockHolderTeamId, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SingleUserLock(Date date, String str, String str2) {
        if (date != null) {
            this.created = LangUtil.truncateMillis(date);
            if (str != null) {
                if (str.length() >= 40) {
                    if (str.length() <= 40) {
                        this.lockHolderAccountId = str;
                        this.lockHolderTeamId = str2;
                        return;
                    }
                    throw new IllegalArgumentException("String 'lockHolderAccountId' is longer than 40");
                }
                throw new IllegalArgumentException("String 'lockHolderAccountId' is shorter than 40");
            }
            throw new IllegalArgumentException("Required value for 'lockHolderAccountId' is null");
        }
        throw new IllegalArgumentException("Required value for 'created' is null");
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SingleUserLock singleUserLock = (SingleUserLock) obj;
        Date date = this.created;
        Date date2 = singleUserLock.created;
        if ((date == date2 || date.equals(date2)) && ((str = this.lockHolderAccountId) == (str2 = singleUserLock.lockHolderAccountId) || str.equals(str2))) {
            String str3 = this.lockHolderTeamId;
            String str4 = singleUserLock.lockHolderTeamId;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
                return true;
            }
        }
        return false;
    }

    public Date getCreated() {
        return this.created;
    }

    public String getLockHolderAccountId() {
        return this.lockHolderAccountId;
    }

    public String getLockHolderTeamId() {
        return this.lockHolderTeamId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.created, this.lockHolderAccountId, this.lockHolderTeamId});
    }

    public String toString() {
        return C2660a.f17408b.serialize((C2660a) this, false);
    }

    public String toStringMultiline() {
        return C2660a.f17408b.serialize((C2660a) this, true);
    }

    public SingleUserLock(Date date, String str) {
        this(date, str, null);
    }
}
