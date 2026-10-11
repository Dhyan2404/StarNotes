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
public enum FolderSharingPolicyType {
    TEAM,
    INVITE_ONLY;

    /* renamed from: com.dropbox.core.v2.paper.FolderSharingPolicyType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2737a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17567a;

        static {
            int[] iArr = new int[FolderSharingPolicyType.values().length];
            f17567a = iArr;
            try {
                iArr[FolderSharingPolicyType.TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17567a[FolderSharingPolicyType.INVITE_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.FolderSharingPolicyType$b */
    /* loaded from: classes4.dex */
    public static class C2738b extends UnionSerializer<FolderSharingPolicyType> {

        /* renamed from: b */
        public static final C2738b f17568b = new C2738b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FolderSharingPolicyType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            FolderSharingPolicyType folderSharingPolicyType;
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
            if ("team".equals(readTag)) {
                folderSharingPolicyType = FolderSharingPolicyType.TEAM;
            } else {
                if (!"invite_only".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                folderSharingPolicyType = FolderSharingPolicyType.INVITE_ONLY;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return folderSharingPolicyType;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FolderSharingPolicyType folderSharingPolicyType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2737a.f17567a[folderSharingPolicyType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("team");
            } else {
                if (i == 2) {
                    jsonGenerator.writeString("invite_only");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + folderSharingPolicyType);
            }
        }
    }
}
