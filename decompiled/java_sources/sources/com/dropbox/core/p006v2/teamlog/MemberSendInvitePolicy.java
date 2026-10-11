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
public enum MemberSendInvitePolicy {
    DISABLED,
    SPECIFIC_MEMBERS,
    EVERYONE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.MemberSendInvitePolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3757a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20030a;

        static {
            int[] iArr = new int[MemberSendInvitePolicy.values().length];
            f20030a = iArr;
            try {
                iArr[MemberSendInvitePolicy.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20030a[MemberSendInvitePolicy.SPECIFIC_MEMBERS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20030a[MemberSendInvitePolicy.EVERYONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.MemberSendInvitePolicy$b */
    /* loaded from: classes4.dex */
    public static class C3758b extends UnionSerializer<MemberSendInvitePolicy> {

        /* renamed from: b */
        public static final C3758b f20031b = new C3758b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberSendInvitePolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            MemberSendInvitePolicy memberSendInvitePolicy = "disabled".equals(readTag) ? MemberSendInvitePolicy.DISABLED : "specific_members".equals(readTag) ? MemberSendInvitePolicy.SPECIFIC_MEMBERS : "everyone".equals(readTag) ? MemberSendInvitePolicy.EVERYONE : MemberSendInvitePolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return memberSendInvitePolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberSendInvitePolicy memberSendInvitePolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3757a.f20030a[memberSendInvitePolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("disabled");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("specific_members");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("everyone");
            }
        }
    }
}
