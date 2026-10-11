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
public enum MemberRequestsPolicy {
    AUTO_ACCEPT,
    DISABLED,
    REQUIRE_APPROVAL,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.MemberRequestsPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3755a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20028a;

        static {
            int[] iArr = new int[MemberRequestsPolicy.values().length];
            f20028a = iArr;
            try {
                iArr[MemberRequestsPolicy.AUTO_ACCEPT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20028a[MemberRequestsPolicy.DISABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20028a[MemberRequestsPolicy.REQUIRE_APPROVAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.MemberRequestsPolicy$b */
    /* loaded from: classes4.dex */
    public static class C3756b extends UnionSerializer<MemberRequestsPolicy> {

        /* renamed from: b */
        public static final C3756b f20029b = new C3756b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberRequestsPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            MemberRequestsPolicy memberRequestsPolicy = "auto_accept".equals(readTag) ? MemberRequestsPolicy.AUTO_ACCEPT : "disabled".equals(readTag) ? MemberRequestsPolicy.DISABLED : "require_approval".equals(readTag) ? MemberRequestsPolicy.REQUIRE_APPROVAL : MemberRequestsPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return memberRequestsPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberRequestsPolicy memberRequestsPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3755a.f20028a[memberRequestsPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("auto_accept");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("disabled");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("require_approval");
            }
        }
    }
}
