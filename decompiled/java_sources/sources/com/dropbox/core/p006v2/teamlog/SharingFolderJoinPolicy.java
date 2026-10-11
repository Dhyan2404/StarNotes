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
public enum SharingFolderJoinPolicy {
    FROM_ANYONE,
    FROM_TEAM_ONLY,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.SharingFolderJoinPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4148a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20424a;

        static {
            int[] iArr = new int[SharingFolderJoinPolicy.values().length];
            f20424a = iArr;
            try {
                iArr[SharingFolderJoinPolicy.FROM_ANYONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20424a[SharingFolderJoinPolicy.FROM_TEAM_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SharingFolderJoinPolicy$b */
    /* loaded from: classes4.dex */
    public static class C4149b extends UnionSerializer<SharingFolderJoinPolicy> {

        /* renamed from: b */
        public static final C4149b f20425b = new C4149b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharingFolderJoinPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SharingFolderJoinPolicy sharingFolderJoinPolicy = "from_anyone".equals(readTag) ? SharingFolderJoinPolicy.FROM_ANYONE : "from_team_only".equals(readTag) ? SharingFolderJoinPolicy.FROM_TEAM_ONLY : SharingFolderJoinPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sharingFolderJoinPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharingFolderJoinPolicy sharingFolderJoinPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4148a.f20424a[sharingFolderJoinPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("from_anyone");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("from_team_only");
            }
        }
    }
}
