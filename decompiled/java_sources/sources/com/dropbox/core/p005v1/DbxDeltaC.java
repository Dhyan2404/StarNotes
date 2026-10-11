package com.dropbox.core.p005v1;

import com.dropbox.core.json.JsonArrayReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.Collector;
import com.dropbox.core.util.DumpWriter;
import com.dropbox.core.util.Dumpable;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public class DbxDeltaC<C> extends Dumpable {
    public final String cursor;
    public final C entries;
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
                                throw new JsonReadException("expecting a two-element array of [path, metadata], found more than two elements", expectArrayStart);
                            } catch (JsonReadException e) {
                                throw e.addArrayContext(1);
                            }
                        }
                        throw new JsonReadException("expecting a two-element array of [path, metadata], found a one-element array", expectArrayStart);
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
    public static final class Reader<C, MD extends Dumpable> extends JsonReader<DbxDeltaC<C>> {

        /* renamed from: c */
        public static final int f16725c = 0;

        /* renamed from: d */
        public static final int f16726d = 1;

        /* renamed from: e */
        public static final int f16727e = 2;

        /* renamed from: f */
        public static final int f16728f = 3;

        /* renamed from: g */
        public static final JsonReader.FieldMapping f16729g;
        public final Collector<Entry<MD>, C> entryCollector;
        public final JsonReader<MD> metadataReader;

        static {
            JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
            builder.add(Constants.RESET, 0);
            builder.add("entries", 1);
            builder.add("cursor", 2);
            builder.add("has_more", 3);
            f16729g = builder.build();
        }

        public Reader(JsonReader<MD> jsonReader, Collector<Entry<MD>, C> collector) {
            this.metadataReader = jsonReader;
            this.entryCollector = collector;
        }

        @Override // com.dropbox.core.json.JsonReader
        public DbxDeltaC<C> read(JsonParser jsonParser) throws IOException, JsonReadException {
            return read(jsonParser, this.metadataReader, this.entryCollector);
        }

        public static <C, MD extends Dumpable> DbxDeltaC<C> read(JsonParser jsonParser, JsonReader<MD> jsonReader, Collector<Entry<MD>, C> collector) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            Boolean bool = null;
            Object obj = null;
            String str = null;
            Boolean bool2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                JsonReader.nextToken(jsonParser);
                int i = f16729g.get(currentName);
                if (i == -1) {
                    try {
                        JsonReader.skipValue(jsonParser);
                    } catch (JsonReadException e) {
                        throw e.addFieldContext(currentName);
                    }
                } else if (i == 0) {
                    bool = JsonReader.BooleanReader.readField(jsonParser, currentName, bool);
                } else if (i == 1) {
                    obj = JsonArrayReader.m10073mk(new Entry.Reader(jsonReader), collector).readField(jsonParser, currentName, obj);
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
            if (obj == null) {
                throw new JsonReadException("missing field \"entries\"", expectObjectStart);
            }
            if (str == null) {
                throw new JsonReadException("missing field \"cursor\"", expectObjectStart);
            }
            if (bool2 != null) {
                return new DbxDeltaC<>(bool.booleanValue(), obj, str, bool2.booleanValue());
            }
            throw new JsonReadException("missing field \"has_more\"", expectObjectStart);
        }
    }

    public DbxDeltaC(boolean z, C c, String str, boolean z2) {
        this.reset = z;
        this.entries = c;
        this.cursor = str;
        this.hasMore = z2;
    }

    @Override // com.dropbox.core.util.Dumpable
    public void dumpFields(DumpWriter dumpWriter) {
        dumpWriter.mo10123f(Constants.RESET).m10133v(this.reset);
        dumpWriter.mo10123f("cursor").m10131v(this.cursor);
        dumpWriter.mo10123f("entries").m10133v(this.hasMore);
    }
}
