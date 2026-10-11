package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AccessLevel;
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
    protected final AccessLevel accessLevel;
    protected final MemberSelector member;

    /* renamed from: com.dropbox.core.v2.sharing.AddMember$a */
    /* loaded from: classes4.dex */
    public static class C2803a extends StructSerializer<AddMember> {

        /* renamed from: b */
        public static final C2803a f17683b = new C2803a();

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
            AccessLevel accessLevel = AccessLevel.VIEWER;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("member".equals(currentName)) {
                    memberSelector = MemberSelector.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("access_level".equals(currentName)) {
                    accessLevel = AccessLevel.Serializer.INSTANCE.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (memberSelector == null) {
                throw new JsonParseException(jsonParser, "Required field \"member\" missing.");
            }
            AddMember addMember = new AddMember(memberSelector, accessLevel);
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
            jsonGenerator.writeFieldName("access_level");
            AccessLevel.Serializer.INSTANCE.serialize(addMember.accessLevel, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AddMember(MemberSelector memberSelector, AccessLevel accessLevel) {
        if (memberSelector != null) {
            this.member = memberSelector;
            if (accessLevel != null) {
                this.accessLevel = accessLevel;
                return;
            }
            throw new IllegalArgumentException("Required value for 'accessLevel' is null");
        }
        throw new IllegalArgumentException("Required value for 'member' is null");
    }

    public boolean equals(Object obj) {
        AccessLevel accessLevel;
        AccessLevel accessLevel2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        AddMember addMember = (AddMember) obj;
        MemberSelector memberSelector = this.member;
        MemberSelector memberSelector2 = addMember.member;
        return (memberSelector == memberSelector2 || memberSelector.equals(memberSelector2)) && ((accessLevel = this.accessLevel) == (accessLevel2 = addMember.accessLevel) || accessLevel.equals(accessLevel2));
    }

    public AccessLevel getAccessLevel() {
        return this.accessLevel;
    }

    public MemberSelector getMember() {
        return this.member;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.member, this.accessLevel});
    }

    public String toString() {
        return C2803a.f17683b.serialize((C2803a) this, false);
    }

    public String toStringMultiline() {
        return C2803a.f17683b.serialize((C2803a) this, true);
    }

    public AddMember(MemberSelector memberSelector) {
        this(memberSelector, AccessLevel.VIEWER);
    }
}
