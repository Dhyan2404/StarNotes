package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;

/* loaded from: classes4.dex */
public class TfaAddSecurityKeyDetails {

    /* renamed from: com.dropbox.core.v2.teamlog.TfaAddSecurityKeyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4360a extends StructSerializer<TfaAddSecurityKeyDetails> {

        /* renamed from: b */
        public static final C4360a f20648b = new C4360a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TfaAddSecurityKeyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                TfaAddSecurityKeyDetails tfaAddSecurityKeyDetails = new TfaAddSecurityKeyDetails();
                if (!z) {
                    StoneSerializer.expectEndObject(jsonParser);
                }
                StoneDeserializerLogger.log(tfaAddSecurityKeyDetails, tfaAddSecurityKeyDetails.toStringMultiline());
                return tfaAddSecurityKeyDetails;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TfaAddSecurityKeyDetails tfaAddSecurityKeyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return getClass().toString().hashCode();
    }

    public String toString() {
        return C4360a.f20648b.serialize((C4360a) this, false);
    }

    public String toStringMultiline() {
        return C4360a.f20648b.serialize((C4360a) this, true);
    }
}
