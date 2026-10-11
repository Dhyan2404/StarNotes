package com.dropbox.core.p006v2.paper;

import com.dropbox.core.p006v2.paper.PaperDocPermissionLevel;
import com.dropbox.core.p006v2.sharing.InviteeInfo;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class InviteeInfoWithPermissionLevel {
    protected final InviteeInfo invitee;
    protected final PaperDocPermissionLevel permissionLevel;

    /* renamed from: com.dropbox.core.v2.paper.InviteeInfoWithPermissionLevel$a */
    /* loaded from: classes4.dex */
    public static class C2742a extends StructSerializer<InviteeInfoWithPermissionLevel> {

        /* renamed from: b */
        public static final C2742a f17574b = new C2742a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public InviteeInfoWithPermissionLevel deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            InviteeInfo inviteeInfo = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            PaperDocPermissionLevel paperDocPermissionLevel = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("invitee".equals(currentName)) {
                    inviteeInfo = InviteeInfo.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("permission_level".equals(currentName)) {
                    paperDocPermissionLevel = PaperDocPermissionLevel.C2765b.f17607b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (inviteeInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"invitee\" missing.");
            }
            if (paperDocPermissionLevel == null) {
                throw new JsonParseException(jsonParser, "Required field \"permission_level\" missing.");
            }
            InviteeInfoWithPermissionLevel inviteeInfoWithPermissionLevel = new InviteeInfoWithPermissionLevel(inviteeInfo, paperDocPermissionLevel);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(inviteeInfoWithPermissionLevel, inviteeInfoWithPermissionLevel.toStringMultiline());
            return inviteeInfoWithPermissionLevel;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(InviteeInfoWithPermissionLevel inviteeInfoWithPermissionLevel, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("invitee");
            InviteeInfo.Serializer.INSTANCE.serialize(inviteeInfoWithPermissionLevel.invitee, jsonGenerator);
            jsonGenerator.writeFieldName("permission_level");
            PaperDocPermissionLevel.C2765b.f17607b.serialize(inviteeInfoWithPermissionLevel.permissionLevel, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public InviteeInfoWithPermissionLevel(InviteeInfo inviteeInfo, PaperDocPermissionLevel paperDocPermissionLevel) {
        if (inviteeInfo == null) {
            throw new IllegalArgumentException("Required value for 'invitee' is null");
        }
        this.invitee = inviteeInfo;
        if (paperDocPermissionLevel == null) {
            throw new IllegalArgumentException("Required value for 'permissionLevel' is null");
        }
        this.permissionLevel = paperDocPermissionLevel;
    }

    public boolean equals(Object obj) {
        PaperDocPermissionLevel paperDocPermissionLevel;
        PaperDocPermissionLevel paperDocPermissionLevel2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        InviteeInfoWithPermissionLevel inviteeInfoWithPermissionLevel = (InviteeInfoWithPermissionLevel) obj;
        InviteeInfo inviteeInfo = this.invitee;
        InviteeInfo inviteeInfo2 = inviteeInfoWithPermissionLevel.invitee;
        return (inviteeInfo == inviteeInfo2 || inviteeInfo.equals(inviteeInfo2)) && ((paperDocPermissionLevel = this.permissionLevel) == (paperDocPermissionLevel2 = inviteeInfoWithPermissionLevel.permissionLevel) || paperDocPermissionLevel.equals(paperDocPermissionLevel2));
    }

    public InviteeInfo getInvitee() {
        return this.invitee;
    }

    public PaperDocPermissionLevel getPermissionLevel() {
        return this.permissionLevel;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.invitee, this.permissionLevel});
    }

    public String toString() {
        return C2742a.f17574b.serialize((C2742a) this, false);
    }

    public String toStringMultiline() {
        return C2742a.f17574b.serialize((C2742a) this, true);
    }
}
