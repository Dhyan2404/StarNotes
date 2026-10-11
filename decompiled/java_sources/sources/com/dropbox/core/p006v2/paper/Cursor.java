package com.dropbox.core.p006v2.paper;

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
public class Cursor {
    protected final Date expiration;
    protected final String value;

    /* renamed from: com.dropbox.core.v2.paper.Cursor$a */
    /* loaded from: classes4.dex */
    public static class C2731a extends StructSerializer<Cursor> {

        /* renamed from: b */
        public static final C2731a f17550b = new C2731a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Cursor deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Date date = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("value".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("expiration".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"value\" missing.");
            }
            Cursor cursor = new Cursor(str2, date);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(cursor, cursor.toStringMultiline());
            return cursor;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(Cursor cursor, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("value");
            StoneSerializers.string().serialize((StoneSerializer<String>) cursor.value, jsonGenerator);
            if (cursor.expiration != null) {
                jsonGenerator.writeFieldName("expiration");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) cursor.expiration, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public Cursor(String str, Date date) {
        if (str != null) {
            this.value = str;
            this.expiration = LangUtil.truncateMillis(date);
            return;
        }
        throw new IllegalArgumentException("Required value for 'value' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        Cursor cursor = (Cursor) obj;
        String str = this.value;
        String str2 = cursor.value;
        if (str == str2 || str.equals(str2)) {
            Date date = this.expiration;
            Date date2 = cursor.expiration;
            if (date == date2) {
                return true;
            }
            if (date != null && date.equals(date2)) {
                return true;
            }
        }
        return false;
    }

    public Date getExpiration() {
        return this.expiration;
    }

    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.value, this.expiration});
    }

    public String toString() {
        return C2731a.f17550b.serialize((C2731a) this, false);
    }

    public String toStringMultiline() {
        return C2731a.f17550b.serialize((C2731a) this, true);
    }

    public Cursor(String str) {
        this(str, null);
    }
}
