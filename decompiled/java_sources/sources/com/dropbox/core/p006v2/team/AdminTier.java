package com.dropbox.core.p006v2.team;

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
public enum AdminTier {
    TEAM_ADMIN,
    USER_MANAGEMENT_ADMIN,
    SUPPORT_ADMIN,
    MEMBER_ONLY;

    /* renamed from: com.dropbox.core.v2.team.AdminTier$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3014a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18120a;

        static {
            int[] iArr = new int[AdminTier.values().length];
            f18120a = iArr;
            try {
                iArr[AdminTier.TEAM_ADMIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18120a[AdminTier.USER_MANAGEMENT_ADMIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18120a[AdminTier.SUPPORT_ADMIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18120a[AdminTier.MEMBER_ONLY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.AdminTier$b */
    /* loaded from: classes4.dex */
    public static class C3015b extends UnionSerializer<AdminTier> {

        /* renamed from: b */
        public static final C3015b f18121b = new C3015b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AdminTier deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            AdminTier adminTier;
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
            if ("team_admin".equals(readTag)) {
                adminTier = AdminTier.TEAM_ADMIN;
            } else if ("user_management_admin".equals(readTag)) {
                adminTier = AdminTier.USER_MANAGEMENT_ADMIN;
            } else if ("support_admin".equals(readTag)) {
                adminTier = AdminTier.SUPPORT_ADMIN;
            } else {
                if (!"member_only".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                adminTier = AdminTier.MEMBER_ONLY;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return adminTier;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AdminTier adminTier, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3014a.f18120a[adminTier.ordinal()];
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
            } else {
                if (i == 4) {
                    jsonGenerator.writeString("member_only");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + adminTier);
            }
        }
    }
}
