package com.dropbox.core.p006v2.teampolicies;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum GroupCreation {
    ADMINS_AND_MEMBERS,
    ADMINS_ONLY;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<GroupCreation> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupCreation deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GroupCreation groupCreation;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if ("admins_and_members".equals(readTag)) {
                    groupCreation = GroupCreation.ADMINS_AND_MEMBERS;
                } else if ("admins_only".equals(readTag)) {
                    groupCreation = GroupCreation.ADMINS_ONLY;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return groupCreation;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupCreation groupCreation, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4416a.f20711a[groupCreation.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("admins_and_members");
            } else {
                if (i == 2) {
                    jsonGenerator.writeString("admins_only");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + groupCreation);
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teampolicies.GroupCreation$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4416a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20711a;

        static {
            int[] iArr = new int[GroupCreation.values().length];
            f20711a = iArr;
            try {
                iArr[GroupCreation.ADMINS_AND_MEMBERS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20711a[GroupCreation.ADMINS_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
