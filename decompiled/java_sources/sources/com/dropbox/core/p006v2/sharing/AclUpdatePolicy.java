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
public enum AclUpdatePolicy {
    OWNER,
    EDITORS,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<AclUpdatePolicy> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public AclUpdatePolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            AclUpdatePolicy aclUpdatePolicy;
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
                if ("owner".equals(readTag)) {
                    aclUpdatePolicy = AclUpdatePolicy.OWNER;
                } else if ("editors".equals(readTag)) {
                    aclUpdatePolicy = AclUpdatePolicy.EDITORS;
                } else {
                    aclUpdatePolicy = AclUpdatePolicy.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return aclUpdatePolicy;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AclUpdatePolicy aclUpdatePolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2796a.f17654a[aclUpdatePolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("owner");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("editors");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.AclUpdatePolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2796a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17654a;

        static {
            int[] iArr = new int[AclUpdatePolicy.values().length];
            f17654a = iArr;
            try {
                iArr[AclUpdatePolicy.OWNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17654a[AclUpdatePolicy.EDITORS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
