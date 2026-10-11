package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.SearchMatchFieldOptions;
import com.dropbox.core.p006v2.files.SearchOptions;
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
import com.google.android.gms.actions.SearchIntents;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class SearchV2Arg {

    /* renamed from: a */
    public final String f17397a;

    /* renamed from: b */
    public final SearchOptions f17398b;

    /* renamed from: c */
    public final SearchMatchFieldOptions f17399c;

    /* renamed from: d */
    public final boolean f17400d;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected boolean includeHighlights;
        protected SearchMatchFieldOptions matchFieldOptions;
        protected SearchOptions options;
        protected final String query;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'query' is null");
            }
            this.query = str;
            this.options = null;
            this.matchFieldOptions = null;
            this.includeHighlights = false;
        }

        public SearchV2Arg build() {
            return new SearchV2Arg(this.query, this.options, this.matchFieldOptions, this.includeHighlights);
        }

        public Builder withIncludeHighlights(Boolean bool) {
            if (bool != null) {
                this.includeHighlights = bool.booleanValue();
            } else {
                this.includeHighlights = false;
            }
            return this;
        }

        public Builder withMatchFieldOptions(SearchMatchFieldOptions searchMatchFieldOptions) {
            this.matchFieldOptions = searchMatchFieldOptions;
            return this;
        }

        public Builder withOptions(SearchOptions searchOptions) {
            this.options = searchOptions;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.SearchV2Arg$a */
    /* loaded from: classes4.dex */
    public static class C2655a extends StructSerializer<SearchV2Arg> {

        /* renamed from: b */
        public static final C2655a f17401b = new C2655a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SearchV2Arg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            SearchMatchFieldOptions searchMatchFieldOptions = null;
            Boolean bool = Boolean.FALSE;
            SearchOptions searchOptions = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (SearchIntents.EXTRA_QUERY.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("options".equals(currentName)) {
                    searchOptions = (SearchOptions) StoneSerializers.nullableStruct(SearchOptions.C2653a.f17395b).deserialize(jsonParser);
                } else if ("match_field_options".equals(currentName)) {
                    searchMatchFieldOptions = (SearchMatchFieldOptions) StoneSerializers.nullableStruct(SearchMatchFieldOptions.C2647a.f17389b).deserialize(jsonParser);
                } else if ("include_highlights".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"query\" missing.");
            }
            SearchV2Arg searchV2Arg = new SearchV2Arg(str2, searchOptions, searchMatchFieldOptions, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(searchV2Arg, searchV2Arg.m11077f());
            return searchV2Arg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SearchV2Arg searchV2Arg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(SearchIntents.EXTRA_QUERY);
            StoneSerializers.string().serialize((StoneSerializer<String>) searchV2Arg.f17397a, jsonGenerator);
            if (searchV2Arg.f17398b != null) {
                jsonGenerator.writeFieldName("options");
                StoneSerializers.nullableStruct(SearchOptions.C2653a.f17395b).serialize((StructSerializer) searchV2Arg.f17398b, jsonGenerator);
            }
            if (searchV2Arg.f17399c != null) {
                jsonGenerator.writeFieldName("match_field_options");
                StoneSerializers.nullableStruct(SearchMatchFieldOptions.C2647a.f17389b).serialize((StructSerializer) searchV2Arg.f17399c, jsonGenerator);
            }
            jsonGenerator.writeFieldName("include_highlights");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(searchV2Arg.f17400d), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SearchV2Arg(String str, SearchOptions searchOptions, SearchMatchFieldOptions searchMatchFieldOptions, boolean z) {
        if (str != null) {
            this.f17397a = str;
            this.f17398b = searchOptions;
            this.f17399c = searchMatchFieldOptions;
            this.f17400d = z;
            return;
        }
        throw new IllegalArgumentException("Required value for 'query' is null");
    }

    /* renamed from: e */
    public static Builder m11072e(String str) {
        return new Builder(str);
    }

    /* renamed from: a */
    public boolean m11073a() {
        return this.f17400d;
    }

    /* renamed from: b */
    public SearchMatchFieldOptions m11074b() {
        return this.f17399c;
    }

    /* renamed from: c */
    public SearchOptions m11075c() {
        return this.f17398b;
    }

    /* renamed from: d */
    public String m11076d() {
        return this.f17397a;
    }

    public boolean equals(Object obj) {
        SearchOptions searchOptions;
        SearchOptions searchOptions2;
        SearchMatchFieldOptions searchMatchFieldOptions;
        SearchMatchFieldOptions searchMatchFieldOptions2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SearchV2Arg searchV2Arg = (SearchV2Arg) obj;
        String str = this.f17397a;
        String str2 = searchV2Arg.f17397a;
        return (str == str2 || str.equals(str2)) && ((searchOptions = this.f17398b) == (searchOptions2 = searchV2Arg.f17398b) || (searchOptions != null && searchOptions.equals(searchOptions2))) && (((searchMatchFieldOptions = this.f17399c) == (searchMatchFieldOptions2 = searchV2Arg.f17399c) || (searchMatchFieldOptions != null && searchMatchFieldOptions.equals(searchMatchFieldOptions2))) && this.f17400d == searchV2Arg.f17400d);
    }

    /* renamed from: f */
    public String m11077f() {
        return C2655a.f17401b.serialize((C2655a) this, true);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17397a, this.f17398b, this.f17399c, Boolean.valueOf(this.f17400d)});
    }

    public String toString() {
        return C2655a.f17401b.serialize((C2655a) this, false);
    }

    public SearchV2Arg(String str) {
        this(str, null, null, false);
    }
}
