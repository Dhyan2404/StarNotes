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
public enum SharedLinkAccessLevel {
    NONE,
    READER,
    WRITER,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedLinkAccessLevel$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4098a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20374a;

        static {
            int[] iArr = new int[SharedLinkAccessLevel.values().length];
            f20374a = iArr;
            try {
                iArr[SharedLinkAccessLevel.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20374a[SharedLinkAccessLevel.READER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20374a[SharedLinkAccessLevel.WRITER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SharedLinkAccessLevel$b */
    /* loaded from: classes4.dex */
    public static class C4099b extends UnionSerializer<SharedLinkAccessLevel> {

        /* renamed from: b */
        public static final C4099b f20375b = new C4099b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkAccessLevel deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SharedLinkAccessLevel sharedLinkAccessLevel = "none".equals(readTag) ? SharedLinkAccessLevel.NONE : "reader".equals(readTag) ? SharedLinkAccessLevel.READER : "writer".equals(readTag) ? SharedLinkAccessLevel.WRITER : SharedLinkAccessLevel.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sharedLinkAccessLevel;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkAccessLevel sharedLinkAccessLevel, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4098a.f20374a[sharedLinkAccessLevel.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("none");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("reader");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("writer");
            }
        }
    }
}
