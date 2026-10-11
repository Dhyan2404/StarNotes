package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.SearchMode;
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
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class SearchArg {

    /* renamed from: a */
    public final String f17375a;

    /* renamed from: b */
    public final String f17376b;

    /* renamed from: c */
    public final long f17377c;

    /* renamed from: d */
    public final long f17378d;

    /* renamed from: e */
    public final SearchMode f17379e;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected long maxResults;
        protected SearchMode mode;
        protected final String path;
        protected final String query;
        protected long start;

        public Builder(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            if (!Pattern.matches("(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'query' is null");
            }
            this.query = str2;
            this.start = 0L;
            this.maxResults = 100L;
            this.mode = SearchMode.FILENAME;
        }

        public SearchArg build() {
            return new SearchArg(this.path, this.query, this.start, this.maxResults, this.mode);
        }

        public Builder withMaxResults(Long l) {
            if (l.longValue() < 1) {
                throw new IllegalArgumentException("Number 'maxResults' is smaller than 1L");
            }
            if (l.longValue() > 1000) {
                throw new IllegalArgumentException("Number 'maxResults' is larger than 1000L");
            }
            this.maxResults = l.longValue();
            return this;
        }

        public Builder withMode(SearchMode searchMode) {
            if (searchMode != null) {
                this.mode = searchMode;
            } else {
                this.mode = SearchMode.FILENAME;
            }
            return this;
        }

        public Builder withStart(Long l) {
            if (l.longValue() > 9999) {
                throw new IllegalArgumentException("Number 'start' is larger than 9999L");
            }
            this.start = l.longValue();
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.SearchArg$a */
    /* loaded from: classes4.dex */
    public static class C2643a extends StructSerializer<SearchArg> {

        /* renamed from: b */
        public static final C2643a f17380b = new C2643a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SearchArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Long l = 0L;
            Long l2 = 100L;
            String str2 = null;
            String str3 = null;
            SearchMode searchMode = SearchMode.FILENAME;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("path".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if (SearchIntents.EXTRA_QUERY.equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if (gon.f71290o0.equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if ("max_results".equals(currentName)) {
                    l2 = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if (Constants.ATTRNAME_MODE.equals(currentName)) {
                    searchMode = SearchMode.C2652b.f17394b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"query\" missing.");
            }
            SearchArg searchArg = new SearchArg(str2, str3, l.longValue(), l2.longValue(), searchMode);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(searchArg, searchArg.m11048g());
            return searchArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SearchArg searchArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) searchArg.f17375a, jsonGenerator);
            jsonGenerator.writeFieldName(SearchIntents.EXTRA_QUERY);
            StoneSerializers.string().serialize((StoneSerializer<String>) searchArg.f17376b, jsonGenerator);
            jsonGenerator.writeFieldName(gon.f71290o0);
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(searchArg.f17377c), jsonGenerator);
            jsonGenerator.writeFieldName("max_results");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(searchArg.f17378d), jsonGenerator);
            jsonGenerator.writeFieldName(Constants.ATTRNAME_MODE);
            SearchMode.C2652b.f17394b.serialize(searchArg.f17379e, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SearchArg(String str, String str2, long j, long j2, SearchMode searchMode) {
        if (str != null) {
            if (Pattern.matches("(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)", str)) {
                this.f17375a = str;
                if (str2 != null) {
                    this.f17376b = str2;
                    if (j <= 9999) {
                        this.f17377c = j;
                        if (j2 < 1) {
                            throw new IllegalArgumentException("Number 'maxResults' is smaller than 1L");
                        }
                        if (j2 <= 1000) {
                            this.f17378d = j2;
                            if (searchMode != null) {
                                this.f17379e = searchMode;
                                return;
                            }
                            throw new IllegalArgumentException("Required value for 'mode' is null");
                        }
                        throw new IllegalArgumentException("Number 'maxResults' is larger than 1000L");
                    }
                    throw new IllegalArgumentException("Number 'start' is larger than 9999L");
                }
                throw new IllegalArgumentException("Required value for 'query' is null");
            }
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'path' is null");
    }

    /* renamed from: f */
    public static Builder m11042f(String str, String str2) {
        return new Builder(str, str2);
    }

    /* renamed from: a */
    public long m11043a() {
        return this.f17378d;
    }

    /* renamed from: b */
    public SearchMode m11044b() {
        return this.f17379e;
    }

    /* renamed from: c */
    public String m11045c() {
        return this.f17375a;
    }

    /* renamed from: d */
    public String m11046d() {
        return this.f17376b;
    }

    /* renamed from: e */
    public long m11047e() {
        return this.f17377c;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        SearchMode searchMode;
        SearchMode searchMode2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SearchArg searchArg = (SearchArg) obj;
        String str3 = this.f17375a;
        String str4 = searchArg.f17375a;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.f17376b) == (str2 = searchArg.f17376b) || str.equals(str2)) && this.f17377c == searchArg.f17377c && this.f17378d == searchArg.f17378d && ((searchMode = this.f17379e) == (searchMode2 = searchArg.f17379e) || searchMode.equals(searchMode2));
    }

    /* renamed from: g */
    public String m11048g() {
        return C2643a.f17380b.serialize((C2643a) this, true);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17375a, this.f17376b, Long.valueOf(this.f17377c), Long.valueOf(this.f17378d), this.f17379e});
    }

    public String toString() {
        return C2643a.f17380b.serialize((C2643a) this, false);
    }

    public SearchArg(String str, String str2) {
        this(str, str2, 0L, 100L, SearchMode.FILENAME);
    }
}
