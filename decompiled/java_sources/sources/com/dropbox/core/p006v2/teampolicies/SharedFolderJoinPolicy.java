package com.dropbox.core.p006v2.teampolicies;

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
public enum SharedFolderJoinPolicy {
    FROM_TEAM_ONLY,
    FROM_ANYONE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teampolicies.SharedFolderJoinPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4422a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20717a;

        static {
            int[] iArr = new int[SharedFolderJoinPolicy.values().length];
            f20717a = iArr;
            try {
                iArr[SharedFolderJoinPolicy.FROM_TEAM_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20717a[SharedFolderJoinPolicy.FROM_ANYONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teampolicies.SharedFolderJoinPolicy$b */
    /* loaded from: classes4.dex */
    public static class C4423b extends UnionSerializer<SharedFolderJoinPolicy> {

        /* renamed from: b */
        public static final C4423b f20718b = new C4423b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedFolderJoinPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SharedFolderJoinPolicy sharedFolderJoinPolicy = "from_team_only".equals(readTag) ? SharedFolderJoinPolicy.FROM_TEAM_ONLY : "from_anyone".equals(readTag) ? SharedFolderJoinPolicy.FROM_ANYONE : SharedFolderJoinPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sharedFolderJoinPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedFolderJoinPolicy sharedFolderJoinPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4422a.f20717a[sharedFolderJoinPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("from_team_only");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("from_anyone");
            }
        }
    }
}
