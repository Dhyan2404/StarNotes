package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum PaperDownloadFormat {
    DOCX,
    HTML,
    MARKDOWN,
    PDF,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperDownloadFormat$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3915a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20188a;

        static {
            int[] iArr = new int[PaperDownloadFormat.values().length];
            f20188a = iArr;
            try {
                iArr[PaperDownloadFormat.DOCX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20188a[PaperDownloadFormat.HTML.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20188a[PaperDownloadFormat.MARKDOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20188a[PaperDownloadFormat.PDF.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.PaperDownloadFormat$b */
    /* loaded from: classes4.dex */
    public static class C3916b extends UnionSerializer<PaperDownloadFormat> {

        /* renamed from: b */
        public static final C3916b f20189b = new C3916b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperDownloadFormat deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            PaperDownloadFormat paperDownloadFormat = FileTypeConstant.DOCX.equals(readTag) ? PaperDownloadFormat.DOCX : "html".equals(readTag) ? PaperDownloadFormat.HTML : "markdown".equals(readTag) ? PaperDownloadFormat.MARKDOWN : "pdf".equals(readTag) ? PaperDownloadFormat.PDF : PaperDownloadFormat.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return paperDownloadFormat;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperDownloadFormat paperDownloadFormat, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3915a.f20188a[paperDownloadFormat.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString(FileTypeConstant.DOCX);
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("html");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("markdown");
            } else if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("pdf");
            }
        }
    }
}
