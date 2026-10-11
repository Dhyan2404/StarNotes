package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.CommitInfo;
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

/* renamed from: com.dropbox.core.v2.files.g */
/* loaded from: classes4.dex */
public class C2711g {

    /* renamed from: a */
    public final CommitInfo f17504a;

    /* renamed from: b */
    public final double f17505b;

    /* renamed from: com.dropbox.core.v2.files.g$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2711g> {

        /* renamed from: b */
        public static final a f17506b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2711g deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            CommitInfo commitInfo = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Double valueOf = Double.valueOf(14400.0d);
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("commit_info".equals(currentName)) {
                    commitInfo = CommitInfo.C2495a.f17042b.deserialize(jsonParser);
                } else if ("duration".equals(currentName)) {
                    valueOf = StoneSerializers.float64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (commitInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"commit_info\" missing.");
            }
            C2711g c2711g = new C2711g(commitInfo, valueOf.doubleValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2711g, c2711g.m11226c());
            return c2711g;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2711g c2711g, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("commit_info");
            CommitInfo.C2495a.f17042b.serialize((CommitInfo.C2495a) c2711g.f17504a, jsonGenerator);
            jsonGenerator.writeFieldName("duration");
            StoneSerializers.float64().serialize((StoneSerializer<Double>) Double.valueOf(c2711g.f17505b), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2711g(CommitInfo commitInfo, double d) {
        if (commitInfo != null) {
            this.f17504a = commitInfo;
            if (d < 60.0d) {
                throw new IllegalArgumentException("Number 'duration' is smaller than 60.0");
            }
            if (d <= 14400.0d) {
                this.f17505b = d;
                return;
            }
            throw new IllegalArgumentException("Number 'duration' is larger than 14400.0");
        }
        throw new IllegalArgumentException("Required value for 'commitInfo' is null");
    }

    /* renamed from: a */
    public CommitInfo m11224a() {
        return this.f17504a;
    }

    /* renamed from: b */
    public double m11225b() {
        return this.f17505b;
    }

    /* renamed from: c */
    public String m11226c() {
        return a.f17506b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2711g c2711g = (C2711g) obj;
        CommitInfo commitInfo = this.f17504a;
        CommitInfo commitInfo2 = c2711g.f17504a;
        return (commitInfo == commitInfo2 || commitInfo.equals(commitInfo2)) && this.f17505b == c2711g.f17505b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17504a, Double.valueOf(this.f17505b)});
    }

    public String toString() {
        return a.f17506b.serialize((a) this, false);
    }

    public C2711g(CommitInfo commitInfo) {
        this(commitInfo, 14400.0d);
    }
}
