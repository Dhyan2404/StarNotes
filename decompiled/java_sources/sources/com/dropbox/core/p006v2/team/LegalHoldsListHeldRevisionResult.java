package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.LegalHoldHeldRevisionMetadata;
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
public class LegalHoldsListHeldRevisionResult {
    protected final String cursor;
    protected final List<LegalHoldHeldRevisionMetadata> entries;
    protected final boolean hasMore;

    /* renamed from: com.dropbox.core.v2.team.LegalHoldsListHeldRevisionResult$a */
    /* loaded from: classes4.dex */
    public static class C3103a extends StructSerializer<LegalHoldsListHeldRevisionResult> {

        /* renamed from: b */
        public static final C3103a f18268b = new C3103a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldsListHeldRevisionResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            List list = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Boolean bool = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("entries".equals(currentName)) {
                    list = (List) StoneSerializers.list(LegalHoldHeldRevisionMetadata.C3097a.f18258b).deserialize(jsonParser);
                } else if ("has_more".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"entries\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
            }
            LegalHoldsListHeldRevisionResult legalHoldsListHeldRevisionResult = new LegalHoldsListHeldRevisionResult(list, bool.booleanValue(), str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(legalHoldsListHeldRevisionResult, legalHoldsListHeldRevisionResult.toStringMultiline());
            return legalHoldsListHeldRevisionResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldsListHeldRevisionResult legalHoldsListHeldRevisionResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("entries");
            StoneSerializers.list(LegalHoldHeldRevisionMetadata.C3097a.f18258b).serialize((StoneSerializer) legalHoldsListHeldRevisionResult.entries, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(legalHoldsListHeldRevisionResult.hasMore), jsonGenerator);
            if (legalHoldsListHeldRevisionResult.cursor != null) {
                jsonGenerator.writeFieldName("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) legalHoldsListHeldRevisionResult.cursor, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LegalHoldsListHeldRevisionResult(List<LegalHoldHeldRevisionMetadata> list, boolean z, String str) {
        if (list != null) {
            Iterator<LegalHoldHeldRevisionMetadata> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'entries' is null");
                }
            }
            this.entries = list;
            if (str != null && str.length() < 1) {
                throw new IllegalArgumentException("String 'cursor' is shorter than 1");
            }
            this.cursor = str;
            this.hasMore = z;
            return;
        }
        throw new IllegalArgumentException("Required value for 'entries' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        LegalHoldsListHeldRevisionResult legalHoldsListHeldRevisionResult = (LegalHoldsListHeldRevisionResult) obj;
        List<LegalHoldHeldRevisionMetadata> list = this.entries;
        List<LegalHoldHeldRevisionMetadata> list2 = legalHoldsListHeldRevisionResult.entries;
        if ((list == list2 || list.equals(list2)) && this.hasMore == legalHoldsListHeldRevisionResult.hasMore) {
            String str = this.cursor;
            String str2 = legalHoldsListHeldRevisionResult.cursor;
            if (str == str2) {
                return true;
            }
            if (str != null && str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public String getCursor() {
        return this.cursor;
    }

    public List<LegalHoldHeldRevisionMetadata> getEntries() {
        return this.entries;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.entries, this.cursor, Boolean.valueOf(this.hasMore)});
    }

    public String toString() {
        return C3103a.f18268b.serialize((C3103a) this, false);
    }

    public String toStringMultiline() {
        return C3103a.f18268b.serialize((C3103a) this, true);
    }

    public LegalHoldsListHeldRevisionResult(List<LegalHoldHeldRevisionMetadata> list, boolean z) {
        this(list, z, null);
    }
}
