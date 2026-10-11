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
public enum TrustedNonTeamMemberType {
    MULTI_INSTANCE_ADMIN,
    ENTERPRISE_ADMIN,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.TrustedNonTeamMemberType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4381a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20669a;

        static {
            int[] iArr = new int[TrustedNonTeamMemberType.values().length];
            f20669a = iArr;
            try {
                iArr[TrustedNonTeamMemberType.MULTI_INSTANCE_ADMIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20669a[TrustedNonTeamMemberType.ENTERPRISE_ADMIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.TrustedNonTeamMemberType$b */
    /* loaded from: classes4.dex */
    public static class C4382b extends UnionSerializer<TrustedNonTeamMemberType> {

        /* renamed from: b */
        public static final C4382b f20670b = new C4382b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TrustedNonTeamMemberType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            TrustedNonTeamMemberType trustedNonTeamMemberType = "multi_instance_admin".equals(readTag) ? TrustedNonTeamMemberType.MULTI_INSTANCE_ADMIN : "enterprise_admin".equals(readTag) ? TrustedNonTeamMemberType.ENTERPRISE_ADMIN : TrustedNonTeamMemberType.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return trustedNonTeamMemberType;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TrustedNonTeamMemberType trustedNonTeamMemberType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4381a.f20669a[trustedNonTeamMemberType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("multi_instance_admin");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("enterprise_admin");
            }
        }
    }
}
