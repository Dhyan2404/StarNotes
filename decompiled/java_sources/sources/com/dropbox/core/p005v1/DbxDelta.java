package com.dropbox.core.p005v1;

import com.dropbox.core.json.JsonArrayReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.DumpWriter;
import com.dropbox.core.util.Dumpable;
import com.dropbox.core.util.StringUtil;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import java.util.List;

/* loaded from: classes4.dex */
public final class DbxDelta<MD extends Dumpable> extends Dumpable {
    public final String cursor;
    public final List<Entry<MD>> entries;
    public final boolean hasMore;
    public final boolean reset;

    /* loaded from: classes4.dex */
    public static final class Entry<MD extends Dumpable> extends Dumpable {
        public final String lcPath;
        public final MD metadata;

        /* loaded from: classes4.dex */
        public static final class Reader<MD extends Dumpable> extends JsonReader<Entry<MD>> {
            public final JsonReader<MD> metadataReader;

            public Reader(JsonReader<MD> jsonReader) {
                this.metadataReader = jsonReader;
            }

            @Override // com.dropbox.core.json.JsonReader
            public Entry<MD> read(JsonParser jsonParser) throws IOException, JsonReadException {
                return read(jsonParser, this.metadataReader);
            }

            public static <MD extends Dumpable> Entry<MD> read(JsonParser jsonParser, JsonReader<MD> jsonReader) throws IOException, JsonReadException {
                JsonLocation expectArrayStart = JsonReader.expectArrayStart(jsonParser);
                if (!JsonReader.isArrayEnd(jsonParser)) {
                    try {
                        String read = JsonReader.StringReader.read(jsonParser);
                        if (!JsonReader.isArrayEnd(jsonParser)) {
                            try {
                                MD readOptional = jsonReader.readOptional(jsonParser);
                                if (JsonReader.isArrayEnd(jsonParser)) {
                                    jsonParser.nextToken();
                                    return new Entry<>(read, readOptional);
                                }
                                throw new JsonReadException("expecting a two-element array of [path, metadata], found non \"]\" token after the two elements: " + jsonParser.getCurrentToken(), expectArrayStart);
                            } catch (JsonReadException e) {
                                throw e.addArrayContext(1);
                            }
                        }
                        throw new JsonReadException("expecting a two-element array of [path, metadata], found a one-element array: " + StringUtil.m10140jq(read), expectArrayStart);
                    } catch (JsonReadException e2) {
                        throw e2.addArrayContext(0);
                    }
                }
                throw new JsonReadException("expecting a two-element array of [path, metadata], found a zero-element array", expectArrayStart);
            }
        }

        public Entry(String str, MD md) {
            this.lcPath = str;
            this.metadata = md;
        }

        @Override // com.dropbox.core.util.Dumpable
        public void dumpFields(DumpWriter dumpWriter) {
            dumpWriter.mo10123f("lcPath").m10131v(this.lcPath);
            dumpWriter.mo10123f("metadata").m10128v(this.metadata);
        }
    }

    /* loaded from: classes4.dex */
    public static final class Reader<MD extends Dumpable> extends JsonReader<DbxDelta<MD>> {

        /* renamed from: c */
        public static final int f16720c = 0;

        /* renamed from: d */
        public static final int f16721d = 1;

        /* renamed from: e */
        public static final int f16722e = 2;

        /* renamed from: f */
        public static final int f16723f = 3;

        /* renamed from: g */
        public static final JsonReader.FieldMapping f16724g;
        public final JsonReader<MD> metadataReader;

        static {
            JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
            builder.add(Constants.RESET, 0);
            builder.add("entries", 1);
            builder.add("cursor", 2);
            builder.add("has_more", 3);
            f16724g = builder.build();
        }

        public Reader(JsonReader<MD> jsonReader) {
            this.metadataReader = jsonReader;
        }

        @Override // com.dropbox.core.json.JsonReader
        public DbxDelta<MD> read(JsonParser jsonParser) throws IOException, JsonReadException {
            return read(jsonParser, this.metadataReader);
        }

        public static <MD extends Dumpable> DbxDelta<MD> read(JsonParser jsonParser, JsonReader<MD> jsonReader) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            Boolean bool = null;
            List list = null;
            String str = null;
            Boolean bool2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                JsonReader.nextToken(jsonParser);
                int i = f16724g.get(currentName);
                if (i == -1) {
                    try {
                        JsonReader.skipValue(jsonParser);
                    } catch (JsonReadException e) {
                        throw e.addFieldContext(currentName);
                    }
                } else if (i == 0) {
                    bool = JsonReader.BooleanReader.readField(jsonParser, currentName, bool);
                } else if (i == 1) {
                    list = (List) JsonArrayReader.m10072mk(new Entry.Reader(jsonReader)).readField(jsonParser, currentName, list);
                } else if (i == 2) {
                    str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                } else if (i == 3) {
                    bool2 = JsonReader.BooleanReader.readField(jsonParser, currentName, bool2);
                } else {
                    throw new AssertionError("bad index: " + i + ", field = \"" + currentName + "\"");
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (bool == null) {
                throw new JsonReadException("missing field \"path\"", expectObjectStart);
            }
            if (list == null) {
                throw new JsonReadException("missing field \"entries\"", expectObjectStart);
            }
            if (str == null) {
                throw new JsonReadException("missing field \"cursor\"", expectObjectStart);
            }
            if (bool2 != null) {
                return new DbxDelta<>(bool.booleanValue(), list, str, bool2.booleanValue());
            }
            throw new JsonReadException("missing field \"has_more\"", expectObjectStart);
        }
    }

    public DbxDelta(boolean z, List<Entry<MD>> list, String str, boolean z2) {
        this.reset = z;
        this.entries = list;
        this.cursor = str;
        this.hasMore = z2;
    }

    @Override // com.dropbox.core.util.Dumpable
    public void dumpFields(DumpWriter dumpWriter) {
        dumpWriter.mo10123f(Constants.RESET).m10133v(this.reset);
        dumpWriter.mo10123f("hasMore").m10133v(this.hasMore);
        dumpWriter.mo10123f("cursor").m10131v(this.cursor);
        dumpWriter.mo10123f("entries").m10129v(this.entries);
    }
}
