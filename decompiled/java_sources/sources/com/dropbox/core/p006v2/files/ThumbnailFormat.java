package com.dropbox.core.p006v2.files;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum ThumbnailFormat {
    JPEG,
    PNG;

    /* renamed from: com.dropbox.core.v2.files.ThumbnailFormat$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2668a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17420a;

        static {
            int[] iArr = new int[ThumbnailFormat.values().length];
            f17420a = iArr;
            try {
                iArr[ThumbnailFormat.JPEG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17420a[ThumbnailFormat.PNG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ThumbnailFormat$b */
    /* loaded from: classes4.dex */
    public static class C2669b extends UnionSerializer<ThumbnailFormat> {

        /* renamed from: b */
        public static final C2669b f17421b = new C2669b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ThumbnailFormat deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ThumbnailFormat thumbnailFormat;
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
            if ("jpeg".equals(readTag)) {
                thumbnailFormat = ThumbnailFormat.JPEG;
            } else {
                if (!"png".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                thumbnailFormat = ThumbnailFormat.PNG;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return thumbnailFormat;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ThumbnailFormat thumbnailFormat, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2668a.f17420a[thumbnailFormat.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("jpeg");
            } else {
                if (i == 2) {
                    jsonGenerator.writeString("png");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + thumbnailFormat);
            }
        }
    }
}
