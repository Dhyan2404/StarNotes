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
public class DirectoryRestrictionsRemoveMembersDetails {

    /* renamed from: com.dropbox.core.v2.teamlog.DirectoryRestrictionsRemoveMembersDetails$a */
    /* loaded from: classes4.dex */
    public static class C3457a extends StructSerializer<DirectoryRestrictionsRemoveMembersDetails> {

        /* renamed from: b */
        public static final C3457a f18850b = new C3457a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DirectoryRestrictionsRemoveMembersDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                DirectoryRestrictionsRemoveMembersDetails directoryRestrictionsRemoveMembersDetails = new DirectoryRestrictionsRemoveMembersDetails();
                if (!z) {
                    StoneSerializer.expectEndObject(jsonParser);
                }
                StoneDeserializerLogger.log(directoryRestrictionsRemoveMembersDetails, directoryRestrictionsRemoveMembersDetails.toStringMultiline());
                return directoryRestrictionsRemoveMembersDetails;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DirectoryRestrictionsRemoveMembersDetails directoryRestrictionsRemoveMembersDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
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
        return C3457a.f18850b.serialize((C3457a) this, false);
    }

    public String toStringMultiline() {
        return C3457a.f18850b.serialize((C3457a) this, true);
    }
}
