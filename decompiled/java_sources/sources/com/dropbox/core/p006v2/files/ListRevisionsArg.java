package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.ListRevisionsMode;
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
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class ListRevisionsArg {

    /* renamed from: a */
    public final String f17228a;

    /* renamed from: b */
    public final ListRevisionsMode f17229b;

    /* renamed from: c */
    public final long f17230c;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected long limit;
        protected ListRevisionsMode mode;
        protected final String path;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            if (!Pattern.matches("/(.|[\\r\\n])*|id:.*|(ns:[0-9]+(/.*)?)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            this.mode = ListRevisionsMode.PATH;
            this.limit = 10L;
        }

        public ListRevisionsArg build() {
            return new ListRevisionsArg(this.path, this.mode, this.limit);
        }

        public Builder withLimit(Long l) {
            if (l.longValue() < 1) {
                throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
            }
            if (l.longValue() > 100) {
                throw new IllegalArgumentException("Number 'limit' is larger than 100L");
            }
            this.limit = l.longValue();
            return this;
        }

        public Builder withMode(ListRevisionsMode listRevisionsMode) {
            if (listRevisionsMode != null) {
                this.mode = listRevisionsMode;
            } else {
                this.mode = ListRevisionsMode.PATH;
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ListRevisionsArg$a */
    /* loaded from: classes4.dex */
    public static class C2578a extends StructSerializer<ListRevisionsArg> {

        /* renamed from: b */
        public static final C2578a f17231b = new C2578a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListRevisionsArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            ListRevisionsMode listRevisionsMode = ListRevisionsMode.PATH;
            Long l = 10L;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("path".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if (Constants.ATTRNAME_MODE.equals(currentName)) {
                    listRevisionsMode = ListRevisionsMode.C2582b.f17240b.deserialize(jsonParser);
                } else if ("limit".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            ListRevisionsArg listRevisionsArg = new ListRevisionsArg(str2, listRevisionsMode, l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listRevisionsArg, listRevisionsArg.m10848e());
            return listRevisionsArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListRevisionsArg listRevisionsArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) listRevisionsArg.f17228a, jsonGenerator);
            jsonGenerator.writeFieldName(Constants.ATTRNAME_MODE);
            ListRevisionsMode.C2582b.f17240b.serialize(listRevisionsArg.f17229b, jsonGenerator);
            jsonGenerator.writeFieldName("limit");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(listRevisionsArg.f17230c), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListRevisionsArg(String str, ListRevisionsMode listRevisionsMode, long j) {
        if (str != null) {
            if (Pattern.matches("/(.|[\\r\\n])*|id:.*|(ns:[0-9]+(/.*)?)", str)) {
                this.f17228a = str;
                if (listRevisionsMode != null) {
                    this.f17229b = listRevisionsMode;
                    if (j < 1) {
                        throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
                    }
                    if (j <= 100) {
                        this.f17230c = j;
                        return;
                    }
                    throw new IllegalArgumentException("Number 'limit' is larger than 100L");
                }
                throw new IllegalArgumentException("Required value for 'mode' is null");
            }
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'path' is null");
    }

    /* renamed from: d */
    public static Builder m10844d(String str) {
        return new Builder(str);
    }

    /* renamed from: a */
    public long m10845a() {
        return this.f17230c;
    }

    /* renamed from: b */
    public ListRevisionsMode m10846b() {
        return this.f17229b;
    }

    /* renamed from: c */
    public String m10847c() {
        return this.f17228a;
    }

    /* renamed from: e */
    public String m10848e() {
        return C2578a.f17231b.serialize((C2578a) this, true);
    }

    public boolean equals(Object obj) {
        ListRevisionsMode listRevisionsMode;
        ListRevisionsMode listRevisionsMode2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListRevisionsArg listRevisionsArg = (ListRevisionsArg) obj;
        String str = this.f17228a;
        String str2 = listRevisionsArg.f17228a;
        return (str == str2 || str.equals(str2)) && ((listRevisionsMode = this.f17229b) == (listRevisionsMode2 = listRevisionsArg.f17229b) || listRevisionsMode.equals(listRevisionsMode2)) && this.f17230c == listRevisionsArg.f17230c;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17228a, this.f17229b, Long.valueOf(this.f17230c)});
    }

    public String toString() {
        return C2578a.f17231b.serialize((C2578a) this, false);
    }

    public ListRevisionsArg(String str) {
        this(str, ListRevisionsMode.PATH, 10L);
    }
}
