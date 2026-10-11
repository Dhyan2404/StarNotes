package com.dropbox.core.p006v2.paper;

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
public enum ImportFormat {
    HTML,
    MARKDOWN,
    PLAIN_TEXT,
    OTHER;

    /* renamed from: com.dropbox.core.v2.paper.ImportFormat$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2740a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17572a;

        static {
            int[] iArr = new int[ImportFormat.values().length];
            f17572a = iArr;
            try {
                iArr[ImportFormat.HTML.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17572a[ImportFormat.MARKDOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17572a[ImportFormat.PLAIN_TEXT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.ImportFormat$b */
    /* loaded from: classes4.dex */
    public static class C2741b extends UnionSerializer<ImportFormat> {

        /* renamed from: b */
        public static final C2741b f17573b = new C2741b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ImportFormat deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ImportFormat importFormat = "html".equals(readTag) ? ImportFormat.HTML : "markdown".equals(readTag) ? ImportFormat.MARKDOWN : "plain_text".equals(readTag) ? ImportFormat.PLAIN_TEXT : ImportFormat.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return importFormat;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ImportFormat importFormat, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2740a.f17572a[importFormat.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("html");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("markdown");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("plain_text");
            }
        }
    }
}
