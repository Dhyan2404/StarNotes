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
public enum FedHandshakeAction {
    INVITED,
    ACCEPTED_INVITE,
    REJECTED_INVITE,
    CANCELED_INVITE,
    REMOVED_TEAM,
    INVITE_EXPIRED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.FedHandshakeAction$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3530a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19785a;

        static {
            int[] iArr = new int[FedHandshakeAction.values().length];
            f19785a = iArr;
            try {
                iArr[FedHandshakeAction.INVITED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19785a[FedHandshakeAction.ACCEPTED_INVITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19785a[FedHandshakeAction.REJECTED_INVITE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19785a[FedHandshakeAction.CANCELED_INVITE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19785a[FedHandshakeAction.REMOVED_TEAM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19785a[FedHandshakeAction.INVITE_EXPIRED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.FedHandshakeAction$b */
    /* loaded from: classes4.dex */
    public static class C3531b extends UnionSerializer<FedHandshakeAction> {

        /* renamed from: b */
        public static final C3531b f19786b = new C3531b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FedHandshakeAction deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            FedHandshakeAction fedHandshakeAction = "invited".equals(readTag) ? FedHandshakeAction.INVITED : "accepted_invite".equals(readTag) ? FedHandshakeAction.ACCEPTED_INVITE : "rejected_invite".equals(readTag) ? FedHandshakeAction.REJECTED_INVITE : "canceled_invite".equals(readTag) ? FedHandshakeAction.CANCELED_INVITE : "removed_team".equals(readTag) ? FedHandshakeAction.REMOVED_TEAM : "invite_expired".equals(readTag) ? FedHandshakeAction.INVITE_EXPIRED : FedHandshakeAction.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return fedHandshakeAction;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FedHandshakeAction fedHandshakeAction, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3530a.f19785a[fedHandshakeAction.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("invited");
                    return;
                case 2:
                    jsonGenerator.writeString("accepted_invite");
                    return;
                case 3:
                    jsonGenerator.writeString("rejected_invite");
                    return;
                case 4:
                    jsonGenerator.writeString("canceled_invite");
                    return;
                case 5:
                    jsonGenerator.writeString("removed_team");
                    return;
                case 6:
                    jsonGenerator.writeString("invite_expired");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }
}
