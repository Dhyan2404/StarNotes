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
public enum SharingPublicPolicyType {
    PEOPLE_WITH_LINK_CAN_EDIT,
    PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT,
    INVITE_ONLY,
    DISABLED;

    /* renamed from: com.dropbox.core.v2.paper.SharingPublicPolicyType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2775a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17620a;

        static {
            int[] iArr = new int[SharingPublicPolicyType.values().length];
            f17620a = iArr;
            try {
                iArr[SharingPublicPolicyType.PEOPLE_WITH_LINK_CAN_EDIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17620a[SharingPublicPolicyType.PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17620a[SharingPublicPolicyType.INVITE_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17620a[SharingPublicPolicyType.DISABLED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.SharingPublicPolicyType$b */
    /* loaded from: classes4.dex */
    public static class C2776b extends UnionSerializer<SharingPublicPolicyType> {

        /* renamed from: b */
        public static final C2776b f17621b = new C2776b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharingPublicPolicyType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SharingPublicPolicyType sharingPublicPolicyType;
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
                sharingPublicPolicyType = SharingPublicPolicyType.PEOPLE_WITH_LINK_CAN_EDIT;
            } else if ("people_with_link_can_view_and_comment".equals(readTag)) {
                sharingPublicPolicyType = SharingPublicPolicyType.PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT;
            } else if ("invite_only".equals(readTag)) {
                sharingPublicPolicyType = SharingPublicPolicyType.INVITE_ONLY;
            } else {
                if (!"disabled".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                sharingPublicPolicyType = SharingPublicPolicyType.DISABLED;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sharingPublicPolicyType;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharingPublicPolicyType sharingPublicPolicyType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2775a.f17620a[sharingPublicPolicyType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("people_with_link_can_edit");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("people_with_link_can_view_and_comment");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("invite_only");
            } else {
                if (i == 4) {
                    jsonGenerator.writeString("disabled");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + sharingPublicPolicyType);
            }
        }
    }
}
