package com.dropbox.core.p006v2.paper;

import com.dropbox.core.p006v2.paper.PaperDocPermissionLevel;
import com.dropbox.core.p006v2.sharing.MemberSelector;
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
public class AddMember {
    protected final MemberSelector member;
    protected final PaperDocPermissionLevel permissionLevel;

    /* renamed from: com.dropbox.core.v2.paper.AddMember$a */
    /* loaded from: classes4.dex */
    public static class C2726a extends StructSerializer<AddMember> {

        /* renamed from: b */
        public static final C2726a f17542b = new C2726a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AddMember deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            MemberSelector memberSelector = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            PaperDocPermissionLevel paperDocPermissionLevel = PaperDocPermissionLevel.EDIT;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("member".equals(currentName)) {
                    memberSelector = MemberSelector.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("permission_level".equals(currentName)) {
                    paperDocPermissionLevel = PaperDocPermissionLevel.C2765b.f17607b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (memberSelector == null) {
                throw new JsonParseException(jsonParser, "Required field \"member\" missing.");
            }
            AddMember addMember = new AddMember(memberSelector, paperDocPermissionLevel);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(addMember, addMember.toStringMultiline());
            return addMember;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AddMember addMember, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("member");
            MemberSelector.Serializer.INSTANCE.serialize(addMember.member, jsonGenerator);
            jsonGenerator.writeFieldName("permission_level");
            PaperDocPermissionLevel.C2765b.f17607b.serialize(addMember.permissionLevel, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AddMember(MemberSelector memberSelector, PaperDocPermissionLevel paperDocPermissionLevel) {
        if (paperDocPermissionLevel != null) {
            this.permissionLevel = paperDocPermissionLevel;
            if (memberSelector != null) {
                this.member = memberSelector;
                return;
            }
            throw new IllegalArgumentException("Required value for 'member' is null");
        }
        throw new IllegalArgumentException("Required value for 'permissionLevel' is null");
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
        AddMember addMember = (AddMember) obj;
        MemberSelector memberSelector = this.member;
        MemberSelector memberSelector2 = addMember.member;
        return (memberSelector == memberSelector2 || memberSelector.equals(memberSelector2)) && ((paperDocPermissionLevel = this.permissionLevel) == (paperDocPermissionLevel2 = addMember.permissionLevel) || paperDocPermissionLevel.equals(paperDocPermissionLevel2));
    }

    public MemberSelector getMember() {
        return this.member;
    }

    public PaperDocPermissionLevel getPermissionLevel() {
        return this.permissionLevel;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.permissionLevel, this.member});
    }

    public String toString() {
        return C2726a.f17542b.serialize((C2726a) this, false);
    }

    public String toStringMultiline() {
        return C2726a.f17542b.serialize((C2726a) this, true);
    }

    public AddMember(MemberSelector memberSelector) {
        this(memberSelector, PaperDocPermissionLevel.EDIT);
    }
}
