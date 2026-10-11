package com.dropbox.core.p006v2.clouddocs;

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
public enum LockingErrorTag {
    CONFLICT,
    OTHER;

    /* renamed from: com.dropbox.core.v2.clouddocs.LockingErrorTag$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2398a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16846a;

        static {
            int[] iArr = new int[LockingErrorTag.values().length];
            f16846a = iArr;
            try {
                iArr[LockingErrorTag.CONFLICT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.LockingErrorTag$b */
    /* loaded from: classes4.dex */
    public static class C2399b extends UnionSerializer<LockingErrorTag> {

        /* renamed from: b */
        public static final C2399b f16847b = new C2399b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LockingErrorTag deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            LockingErrorTag lockingErrorTag = "conflict".equals(readTag) ? LockingErrorTag.CONFLICT : LockingErrorTag.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return lockingErrorTag;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LockingErrorTag lockingErrorTag, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2398a.f16846a[lockingErrorTag.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("conflict");
            }
        }
    }
}
