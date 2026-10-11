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
public enum InviteMethod {
    INVITE_LINK,
    AUTO_APPROVE,
    MOVED_FROM_ANOTHER_TEAM,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.InviteMethod$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3689a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19957a;

        static {
            int[] iArr = new int[InviteMethod.values().length];
            f19957a = iArr;
            try {
                iArr[InviteMethod.INVITE_LINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19957a[InviteMethod.AUTO_APPROVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19957a[InviteMethod.MOVED_FROM_ANOTHER_TEAM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.InviteMethod$b */
    /* loaded from: classes4.dex */
    public static class C3690b extends UnionSerializer<InviteMethod> {

        /* renamed from: b */
        public static final C3690b f19958b = new C3690b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public InviteMethod deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            InviteMethod inviteMethod = "invite_link".equals(readTag) ? InviteMethod.INVITE_LINK : "auto_approve".equals(readTag) ? InviteMethod.AUTO_APPROVE : "moved_from_another_team".equals(readTag) ? InviteMethod.MOVED_FROM_ANOTHER_TEAM : InviteMethod.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return inviteMethod;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(InviteMethod inviteMethod, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3689a.f19957a[inviteMethod.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invite_link");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("auto_approve");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("moved_from_another_team");
            }
        }
    }
}
