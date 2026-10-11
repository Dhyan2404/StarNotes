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
public enum MembersSetPermissionsError {
    USER_NOT_FOUND,
    LAST_ADMIN,
    USER_NOT_IN_TEAM,
    CANNOT_SET_PERMISSIONS,
    TEAM_LICENSE_LIMIT,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.MembersSetPermissionsError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3169a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18389a;

        static {
            int[] iArr = new int[MembersSetPermissionsError.values().length];
            f18389a = iArr;
            try {
                iArr[MembersSetPermissionsError.USER_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18389a[MembersSetPermissionsError.LAST_ADMIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18389a[MembersSetPermissionsError.USER_NOT_IN_TEAM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18389a[MembersSetPermissionsError.CANNOT_SET_PERMISSIONS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18389a[MembersSetPermissionsError.TEAM_LICENSE_LIMIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MembersSetPermissionsError$b */
    /* loaded from: classes4.dex */
    public static class C3170b extends UnionSerializer<MembersSetPermissionsError> {

        /* renamed from: b */
        public static final C3170b f18390b = new C3170b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersSetPermissionsError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            MembersSetPermissionsError membersSetPermissionsError = "user_not_found".equals(readTag) ? MembersSetPermissionsError.USER_NOT_FOUND : "last_admin".equals(readTag) ? MembersSetPermissionsError.LAST_ADMIN : "user_not_in_team".equals(readTag) ? MembersSetPermissionsError.USER_NOT_IN_TEAM : "cannot_set_permissions".equals(readTag) ? MembersSetPermissionsError.CANNOT_SET_PERMISSIONS : "team_license_limit".equals(readTag) ? MembersSetPermissionsError.TEAM_LICENSE_LIMIT : MembersSetPermissionsError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return membersSetPermissionsError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersSetPermissionsError membersSetPermissionsError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3169a.f18389a[membersSetPermissionsError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("user_not_found");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("last_admin");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("user_not_in_team");
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString("cannot_set_permissions");
            } else if (i != 5) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("team_license_limit");
            }
        }
    }
}
