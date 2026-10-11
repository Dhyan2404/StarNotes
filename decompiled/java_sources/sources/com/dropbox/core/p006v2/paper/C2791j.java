package com.dropbox.core.p006v2.paper;

import com.dropbox.core.p006v2.sharing.MemberSelector;
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
import com.onyx.android.sdk.universal.editor.data.ExcerptConstants;
import java.io.IOException;
import java.util.Arrays;

/* renamed from: com.dropbox.core.v2.paper.j */
/* loaded from: classes4.dex */
public class C2791j extends C2790i {

    /* renamed from: b */
    public final MemberSelector f17648b;

    /* renamed from: com.dropbox.core.v2.paper.j$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2791j> {

        /* renamed from: b */
        public static final a f17649b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2791j deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            MemberSelector memberSelector = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (ExcerptConstants.ARGS_DOC_ID.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("member".equals(currentName)) {
                    memberSelector = MemberSelector.Serializer.INSTANCE.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"doc_id\" missing.");
            }
            if (memberSelector == null) {
                throw new JsonParseException(jsonParser, "Required field \"member\" missing.");
            }
            C2791j c2791j = new C2791j(str2, memberSelector);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2791j, c2791j.mo11293b());
            return c2791j;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2791j c2791j, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(ExcerptConstants.ARGS_DOC_ID);
            StoneSerializers.string().serialize((StoneSerializer<String>) c2791j.f17646a, jsonGenerator);
            jsonGenerator.writeFieldName("member");
            MemberSelector.Serializer.INSTANCE.serialize(c2791j.f17648b, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2791j(String str, MemberSelector memberSelector) {
        super(str);
        if (memberSelector == null) {
            throw new IllegalArgumentException("Required value for 'member' is null");
        }
        this.f17648b = memberSelector;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    /* renamed from: a */
    public String mo11292a() {
        return this.f17646a;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    /* renamed from: b */
    public String mo11293b() {
        return a.f17649b.serialize((a) this, true);
    }

    /* renamed from: c */
    public MemberSelector m11437c() {
        return this.f17648b;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public boolean equals(Object obj) {
        MemberSelector memberSelector;
        MemberSelector memberSelector2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2791j c2791j = (C2791j) obj;
        String str = this.f17646a;
        String str2 = c2791j.f17646a;
        return (str == str2 || str.equals(str2)) && ((memberSelector = this.f17648b) == (memberSelector2 = c2791j.f17648b) || memberSelector.equals(memberSelector2));
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17648b});
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public String toString() {
        return a.f17649b.serialize((a) this, false);
    }
}
