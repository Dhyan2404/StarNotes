package com.dropbox.core.p006v2.fileproperties;

import com.dropbox.core.p006v2.fileproperties.PropertiesSearchMatch;
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
public class PropertiesSearchResult {
    protected final String cursor;
    protected final List<PropertiesSearchMatch> matches;

    /* renamed from: com.dropbox.core.v2.fileproperties.PropertiesSearchResult$a */
    /* loaded from: classes4.dex */
    public static class C2443a extends StructSerializer<PropertiesSearchResult> {

        /* renamed from: b */
        public static final C2443a f16937b = new C2443a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PropertiesSearchResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("matches".equals(currentName)) {
                    list = (List) StoneSerializers.list(PropertiesSearchMatch.C2439a.f16931b).deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"matches\" missing.");
            }
            PropertiesSearchResult propertiesSearchResult = new PropertiesSearchResult(list, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(propertiesSearchResult, propertiesSearchResult.toStringMultiline());
            return propertiesSearchResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PropertiesSearchResult propertiesSearchResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("matches");
            StoneSerializers.list(PropertiesSearchMatch.C2439a.f16931b).serialize((StoneSerializer) propertiesSearchResult.matches, jsonGenerator);
            if (propertiesSearchResult.cursor != null) {
                jsonGenerator.writeFieldName("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) propertiesSearchResult.cursor, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PropertiesSearchResult(List<PropertiesSearchMatch> list, String str) {
        if (list != null) {
            Iterator<PropertiesSearchMatch> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'matches' is null");
                }
            }
            this.matches = list;
            if (str != null && str.length() < 1) {
                throw new IllegalArgumentException("String 'cursor' is shorter than 1");
            }
            this.cursor = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'matches' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PropertiesSearchResult propertiesSearchResult = (PropertiesSearchResult) obj;
        List<PropertiesSearchMatch> list = this.matches;
        List<PropertiesSearchMatch> list2 = propertiesSearchResult.matches;
        if (list == list2 || list.equals(list2)) {
            String str = this.cursor;
            String str2 = propertiesSearchResult.cursor;
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

    public List<PropertiesSearchMatch> getMatches() {
        return this.matches;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.matches, this.cursor});
    }

    public String toString() {
        return C2443a.f16937b.serialize((C2443a) this, false);
    }

    public String toStringMultiline() {
        return C2443a.f16937b.serialize((C2443a) this, true);
    }

    public PropertiesSearchResult(List<PropertiesSearchMatch> list) {
        this(list, null);
    }
}
