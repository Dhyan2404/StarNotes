package com.dropbox.core.p006v2.teamlog;

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
public class DomainInvitesEmailExistingUsersDetails {
    protected final String domainName;
    protected final long numRecipients;

    /* renamed from: com.dropbox.core.v2.teamlog.DomainInvitesEmailExistingUsersDetails$a */
    /* loaded from: classes4.dex */
    public static class C3465a extends StructSerializer<DomainInvitesEmailExistingUsersDetails> {

        /* renamed from: b */
        public static final C3465a f18858b = new C3465a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DomainInvitesEmailExistingUsersDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Long l = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("domain_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("num_recipients".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"domain_name\" missing.");
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"num_recipients\" missing.");
            }
            DomainInvitesEmailExistingUsersDetails domainInvitesEmailExistingUsersDetails = new DomainInvitesEmailExistingUsersDetails(str2, l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(domainInvitesEmailExistingUsersDetails, domainInvitesEmailExistingUsersDetails.toStringMultiline());
            return domainInvitesEmailExistingUsersDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DomainInvitesEmailExistingUsersDetails domainInvitesEmailExistingUsersDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("domain_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) domainInvitesEmailExistingUsersDetails.domainName, jsonGenerator);
            jsonGenerator.writeFieldName("num_recipients");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(domainInvitesEmailExistingUsersDetails.numRecipients), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DomainInvitesEmailExistingUsersDetails(String str, long j) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'domainName' is null");
        }
        this.domainName = str;
        this.numRecipients = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DomainInvitesEmailExistingUsersDetails domainInvitesEmailExistingUsersDetails = (DomainInvitesEmailExistingUsersDetails) obj;
        String str = this.domainName;
        String str2 = domainInvitesEmailExistingUsersDetails.domainName;
        return (str == str2 || str.equals(str2)) && this.numRecipients == domainInvitesEmailExistingUsersDetails.numRecipients;
    }

    public String getDomainName() {
        return this.domainName;
    }

    public long getNumRecipients() {
        return this.numRecipients;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.domainName, Long.valueOf(this.numRecipients)});
    }

    public String toString() {
        return C3465a.f18858b.serialize((C3465a) this, false);
    }

    public String toStringMultiline() {
        return C3465a.f18858b.serialize((C3465a) this, true);
    }
}
