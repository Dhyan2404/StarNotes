package com.dropbox.core.p006v2.team;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum MembersDeleteProfilePhotoError {
    USER_NOT_FOUND,
    USER_NOT_IN_TEAM,
    SET_PROFILE_DISALLOWED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.MembersDeleteProfilePhotoError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3149a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18356a;

        static {
            int[] iArr = new int[MembersDeleteProfilePhotoError.values().length];
            f18356a = iArr;
            try {
                iArr[MembersDeleteProfilePhotoError.USER_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18356a[MembersDeleteProfilePhotoError.USER_NOT_IN_TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18356a[MembersDeleteProfilePhotoError.SET_PROFILE_DISALLOWED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MembersDeleteProfilePhotoError$b */
    /* loaded from: classes4.dex */
    public static class C3150b extends UnionSerializer<MembersDeleteProfilePhotoError> {

        /* renamed from: b */
        public static final C3150b f18357b = new C3150b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersDeleteProfilePhotoError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            MembersDeleteProfilePhotoError membersDeleteProfilePhotoError = "user_not_found".equals(readTag) ? MembersDeleteProfilePhotoError.USER_NOT_FOUND : "user_not_in_team".equals(readTag) ? MembersDeleteProfilePhotoError.USER_NOT_IN_TEAM : "set_profile_disallowed".equals(readTag) ? MembersDeleteProfilePhotoError.SET_PROFILE_DISALLOWED : MembersDeleteProfilePhotoError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return membersDeleteProfilePhotoError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersDeleteProfilePhotoError membersDeleteProfilePhotoError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3149a.f18356a[membersDeleteProfilePhotoError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("user_not_found");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("user_not_in_team");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("set_profile_disallowed");
            }
        }
    }
}
