package com.dropbox.core.p006v2.sharing;

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
public enum SharedLinkPolicy {
    ANYONE,
    TEAM,
    MEMBERS,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<SharedLinkPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharedLinkPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SharedLinkPolicy sharedLinkPolicy;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if ("anyone".equals(readTag)) {
                    sharedLinkPolicy = SharedLinkPolicy.ANYONE;
                } else if ("team".equals(readTag)) {
                    sharedLinkPolicy = SharedLinkPolicy.TEAM;
                } else if ("members".equals(readTag)) {
                    sharedLinkPolicy = SharedLinkPolicy.MEMBERS;
                } else {
                    sharedLinkPolicy = SharedLinkPolicy.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return sharedLinkPolicy;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharedLinkPolicy sharedLinkPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2956a.f17984a[sharedLinkPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("anyone");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("team");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("members");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharedLinkPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2956a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17984a;

        static {
            int[] iArr = new int[SharedLinkPolicy.values().length];
            f17984a = iArr;
            try {
                iArr[SharedLinkPolicy.ANYONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17984a[SharedLinkPolicy.TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17984a[SharedLinkPolicy.MEMBERS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
