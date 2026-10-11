package com.dropbox.core.p006v2.teamlog;

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
public enum AdminRole {
    TEAM_ADMIN,
    USER_MANAGEMENT_ADMIN,
    SUPPORT_ADMIN,
    LIMITED_ADMIN,
    MEMBER_ONLY,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.AdminRole$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3352a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18733a;

        static {
            int[] iArr = new int[AdminRole.values().length];
            f18733a = iArr;
            try {
                iArr[AdminRole.TEAM_ADMIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18733a[AdminRole.USER_MANAGEMENT_ADMIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18733a[AdminRole.SUPPORT_ADMIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18733a[AdminRole.LIMITED_ADMIN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18733a[AdminRole.MEMBER_ONLY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.AdminRole$b */
    /* loaded from: classes4.dex */
    public static class C3353b extends UnionSerializer<AdminRole> {

        /* renamed from: b */
        public static final C3353b f18734b = new C3353b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AdminRole deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            AdminRole adminRole = "team_admin".equals(readTag) ? AdminRole.TEAM_ADMIN : "user_management_admin".equals(readTag) ? AdminRole.USER_MANAGEMENT_ADMIN : "support_admin".equals(readTag) ? AdminRole.SUPPORT_ADMIN : "limited_admin".equals(readTag) ? AdminRole.LIMITED_ADMIN : "member_only".equals(readTag) ? AdminRole.MEMBER_ONLY : AdminRole.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return adminRole;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AdminRole adminRole, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3352a.f18733a[adminRole.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("team_admin");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("user_management_admin");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("support_admin");
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString("limited_admin");
            } else if (i != 5) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("member_only");
            }
        }
    }
}
