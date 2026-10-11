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
public enum ThumbnailMode {
    STRICT,
    BESTFIT,
    FITONE_BESTFIT;

    /* renamed from: com.dropbox.core.v2.files.ThumbnailMode$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2670a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17422a;

        static {
            int[] iArr = new int[ThumbnailMode.values().length];
            f17422a = iArr;
            try {
                iArr[ThumbnailMode.STRICT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17422a[ThumbnailMode.BESTFIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17422a[ThumbnailMode.FITONE_BESTFIT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ThumbnailMode$b */
    /* loaded from: classes4.dex */
    public static class C2671b extends UnionSerializer<ThumbnailMode> {

        /* renamed from: b */
        public static final C2671b f17423b = new C2671b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ThumbnailMode deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ThumbnailMode thumbnailMode;
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
            if ("strict".equals(readTag)) {
                thumbnailMode = ThumbnailMode.STRICT;
            } else if ("bestfit".equals(readTag)) {
                thumbnailMode = ThumbnailMode.BESTFIT;
            } else {
                if (!"fitone_bestfit".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                thumbnailMode = ThumbnailMode.FITONE_BESTFIT;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return thumbnailMode;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ThumbnailMode thumbnailMode, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2670a.f17422a[thumbnailMode.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("strict");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("bestfit");
            } else {
                if (i == 3) {
                    jsonGenerator.writeString("fitone_bestfit");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + thumbnailMode);
            }
        }
    }
}
