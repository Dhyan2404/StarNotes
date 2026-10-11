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
public enum ExportFormat {
    HTML,
    MARKDOWN,
    OTHER;

    /* renamed from: com.dropbox.core.v2.paper.ExportFormat$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2734a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17563a;

        static {
            int[] iArr = new int[ExportFormat.values().length];
            f17563a = iArr;
            try {
                iArr[ExportFormat.HTML.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17563a[ExportFormat.MARKDOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.ExportFormat$b */
    /* loaded from: classes4.dex */
    public static class C2735b extends UnionSerializer<ExportFormat> {

        /* renamed from: b */
        public static final C2735b f17564b = new C2735b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ExportFormat deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ExportFormat exportFormat = "html".equals(readTag) ? ExportFormat.HTML : "markdown".equals(readTag) ? ExportFormat.MARKDOWN : ExportFormat.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return exportFormat;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ExportFormat exportFormat, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2734a.f17563a[exportFormat.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("html");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("markdown");
            }
        }
    }
}
