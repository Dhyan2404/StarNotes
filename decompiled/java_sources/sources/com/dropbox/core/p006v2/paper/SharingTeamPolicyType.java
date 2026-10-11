package com.dropbox.core.p006v2.paper;

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
public enum SharingTeamPolicyType {
    PEOPLE_WITH_LINK_CAN_EDIT,
    PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT,
    INVITE_ONLY;

    /* renamed from: com.dropbox.core.v2.paper.SharingTeamPolicyType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2777a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17622a;

        static {
            int[] iArr = new int[SharingTeamPolicyType.values().length];
            f17622a = iArr;
            try {
                iArr[SharingTeamPolicyType.PEOPLE_WITH_LINK_CAN_EDIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17622a[SharingTeamPolicyType.PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17622a[SharingTeamPolicyType.INVITE_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.SharingTeamPolicyType$b */
    /* loaded from: classes4.dex */
    public static class C2778b extends UnionSerializer<SharingTeamPolicyType> {

        /* renamed from: b */
        public static final C2778b f17623b = new C2778b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharingTeamPolicyType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SharingTeamPolicyType sharingTeamPolicyType;
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
            if ("people_with_link_can_edit".equals(readTag)) {
                sharingTeamPolicyType = SharingTeamPolicyType.PEOPLE_WITH_LINK_CAN_EDIT;
            } else if ("people_with_link_can_view_and_comment".equals(readTag)) {
                sharingTeamPolicyType = SharingTeamPolicyType.PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT;
            } else {
                if (!"invite_only".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                sharingTeamPolicyType = SharingTeamPolicyType.INVITE_ONLY;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sharingTeamPolicyType;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharingTeamPolicyType sharingTeamPolicyType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2777a.f17622a[sharingTeamPolicyType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("people_with_link_can_edit");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("people_with_link_can_view_and_comment");
            } else {
                if (i == 3) {
                    jsonGenerator.writeString("invite_only");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + sharingTeamPolicyType);
            }
        }
    }
}
