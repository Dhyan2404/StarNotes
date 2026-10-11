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
public enum SharedFolderMemberPolicy {
    TEAM,
    ANYONE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teampolicies.SharedFolderMemberPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4424a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20719a;

        static {
            int[] iArr = new int[SharedFolderMemberPolicy.values().length];
            f20719a = iArr;
            try {
                iArr[SharedFolderMemberPolicy.TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20719a[SharedFolderMemberPolicy.ANYONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teampolicies.SharedFolderMemberPolicy$b */
    /* loaded from: classes4.dex */
    public static class C4425b extends UnionSerializer<SharedFolderMemberPolicy> {

        /* renamed from: b */
        public static final C4425b f20720b = new C4425b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedFolderMemberPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SharedFolderMemberPolicy sharedFolderMemberPolicy = "team".equals(readTag) ? SharedFolderMemberPolicy.TEAM : "anyone".equals(readTag) ? SharedFolderMemberPolicy.ANYONE : SharedFolderMemberPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sharedFolderMemberPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedFolderMemberPolicy sharedFolderMemberPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4424a.f20719a[sharedFolderMemberPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("team");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("anyone");
            }
        }
    }
}
