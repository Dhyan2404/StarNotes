package com.dropbox.core.p006v2.files;

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
public class SearchMatchFieldOptions {
    protected final boolean includeHighlights;

    /* renamed from: com.dropbox.core.v2.files.SearchMatchFieldOptions$a */
    /* loaded from: classes4.dex */
    public static class C2647a extends StructSerializer<SearchMatchFieldOptions> {

        /* renamed from: b */
        public static final C2647a f17389b = new C2647a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SearchMatchFieldOptions deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = Boolean.FALSE;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("include_highlights".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            SearchMatchFieldOptions searchMatchFieldOptions = new SearchMatchFieldOptions(bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(searchMatchFieldOptions, searchMatchFieldOptions.toStringMultiline());
            return searchMatchFieldOptions;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SearchMatchFieldOptions searchMatchFieldOptions, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("include_highlights");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(searchMatchFieldOptions.includeHighlights), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SearchMatchFieldOptions(boolean z) {
        this.includeHighlights = z;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.includeHighlights == ((SearchMatchFieldOptions) obj).includeHighlights;
    }

    public boolean getIncludeHighlights() {
        return this.includeHighlights;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.includeHighlights)});
    }

    public String toString() {
        return C2647a.f17389b.serialize((C2647a) this, false);
    }

    public String toStringMultiline() {
        return C2647a.f17389b.serialize((C2647a) this, true);
    }

    public SearchMatchFieldOptions() {
        this(false);
    }
}
