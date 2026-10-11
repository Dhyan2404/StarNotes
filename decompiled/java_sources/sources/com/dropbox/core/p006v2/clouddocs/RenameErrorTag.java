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
public enum RenameErrorTag {
    INVALID_TITLE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.clouddocs.RenameErrorTag$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2404a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16859a;

        static {
            int[] iArr = new int[RenameErrorTag.values().length];
            f16859a = iArr;
            try {
                iArr[RenameErrorTag.INVALID_TITLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.RenameErrorTag$b */
    /* loaded from: classes4.dex */
    public static class C2405b extends UnionSerializer<RenameErrorTag> {

        /* renamed from: b */
        public static final C2405b f16860b = new C2405b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RenameErrorTag deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            RenameErrorTag renameErrorTag = "invalid_title".equals(readTag) ? RenameErrorTag.INVALID_TITLE : RenameErrorTag.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return renameErrorTag;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RenameErrorTag renameErrorTag, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2404a.f16859a[renameErrorTag.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("invalid_title");
            }
        }
    }
}
