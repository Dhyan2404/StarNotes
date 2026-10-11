package com.dropbox.core.p006v2.paper;

import com.dropbox.core.p006v2.paper.SharingPolicy;
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

/* renamed from: com.dropbox.core.v2.paper.g */
/* loaded from: classes4.dex */
public class C2788g extends C2790i {

    /* renamed from: b */
    public final SharingPolicy f17640b;

    /* renamed from: com.dropbox.core.v2.paper.g$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2788g> {

        /* renamed from: b */
        public static final a f17641b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2788g deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            SharingPolicy sharingPolicy = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (ExcerptConstants.ARGS_DOC_ID.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("sharing_policy".equals(currentName)) {
                    sharingPolicy = SharingPolicy.C2774a.f17619b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"doc_id\" missing.");
            }
            if (sharingPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"sharing_policy\" missing.");
            }
            C2788g c2788g = new C2788g(str2, sharingPolicy);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2788g, c2788g.mo11293b());
            return c2788g;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2788g c2788g, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(ExcerptConstants.ARGS_DOC_ID);
            StoneSerializers.string().serialize((StoneSerializer<String>) c2788g.f17646a, jsonGenerator);
            jsonGenerator.writeFieldName("sharing_policy");
            SharingPolicy.C2774a.f17619b.serialize((SharingPolicy.C2774a) c2788g.f17640b, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2788g(String str, SharingPolicy sharingPolicy) {
        super(str);
        if (sharingPolicy == null) {
            throw new IllegalArgumentException("Required value for 'sharingPolicy' is null");
        }
        this.f17640b = sharingPolicy;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    /* renamed from: a */
    public String mo11292a() {
        return this.f17646a;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    /* renamed from: b */
    public String mo11293b() {
        return a.f17641b.serialize((a) this, true);
    }

    /* renamed from: c */
    public SharingPolicy m11427c() {
        return this.f17640b;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public boolean equals(Object obj) {
        SharingPolicy sharingPolicy;
        SharingPolicy sharingPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2788g c2788g = (C2788g) obj;
        String str = this.f17646a;
        String str2 = c2788g.f17646a;
        return (str == str2 || str.equals(str2)) && ((sharingPolicy = this.f17640b) == (sharingPolicy2 = c2788g.f17640b) || sharingPolicy.equals(sharingPolicy2));
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17640b});
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public String toString() {
        return a.f17641b.serialize((a) this, false);
    }
}
