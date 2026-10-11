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
public enum MemberPolicy {
    TEAM,
    ANYONE,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<MemberPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public MemberPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            MemberPolicy memberPolicy;
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
                if ("team".equals(readTag)) {
                    memberPolicy = MemberPolicy.TEAM;
                } else if ("anyone".equals(readTag)) {
                    memberPolicy = MemberPolicy.ANYONE;
                } else {
                    memberPolicy = MemberPolicy.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return memberPolicy;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MemberPolicy memberPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2895a.f17868a[memberPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("team");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("anyone");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.MemberPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2895a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17868a;

        static {
            int[] iArr = new int[MemberPolicy.values().length];
            f17868a = iArr;
            try {
                iArr[MemberPolicy.TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17868a[MemberPolicy.ANYONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
