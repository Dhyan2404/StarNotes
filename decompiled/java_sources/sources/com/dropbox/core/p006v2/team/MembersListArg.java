package com.dropbox.core.p006v2.team;

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
public class MembersListArg {

    /* renamed from: a */
    public final long f18366a;

    /* renamed from: b */
    public final boolean f18367b;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected long limit = 1000;
        protected boolean includeRemoved = false;

        public MembersListArg build() {
            return new MembersListArg(this.limit, this.includeRemoved);
        }

        public Builder withIncludeRemoved(Boolean bool) {
            if (bool != null) {
                this.includeRemoved = bool.booleanValue();
            } else {
                this.includeRemoved = false;
            }
            return this;
        }

        public Builder withLimit(Long l) {
            if (l.longValue() < 1) {
                throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
            }
            if (l.longValue() > 1000) {
                throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
            }
            this.limit = l.longValue();
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MembersListArg$a */
    /* loaded from: classes4.dex */
    public static class C3156a extends StructSerializer<MembersListArg> {

        /* renamed from: b */
        public static final C3156a f18368b = new C3156a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersListArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Long l = 1000L;
            Boolean bool = Boolean.FALSE;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("limit".equals(currentName)) {
                    l = StoneSerializers.uInt32().deserialize(jsonParser);
                } else if ("include_removed".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            MembersListArg membersListArg = new MembersListArg(l.longValue(), bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(membersListArg, membersListArg.m12542d());
            return membersListArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersListArg membersListArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("limit");
            StoneSerializers.uInt32().serialize((StoneSerializer<Long>) Long.valueOf(membersListArg.f18366a), jsonGenerator);
            jsonGenerator.writeFieldName("include_removed");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(membersListArg.f18367b), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MembersListArg(long j, boolean z) {
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j <= 1000) {
            this.f18366a = j;
            this.f18367b = z;
            return;
        }
        throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
    }

    /* renamed from: c */
    public static Builder m12539c() {
        return new Builder();
    }

    /* renamed from: a */
    public boolean m12540a() {
        return this.f18367b;
    }

    /* renamed from: b */
    public long m12541b() {
        return this.f18366a;
    }

    /* renamed from: d */
    public String m12542d() {
        return C3156a.f18368b.serialize((C3156a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MembersListArg membersListArg = (MembersListArg) obj;
        return this.f18366a == membersListArg.f18366a && this.f18367b == membersListArg.f18367b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f18366a), Boolean.valueOf(this.f18367b)});
    }

    public String toString() {
        return C3156a.f18368b.serialize((C3156a) this, false);
    }

    public MembersListArg() {
        this(1000L, false);
    }
}
