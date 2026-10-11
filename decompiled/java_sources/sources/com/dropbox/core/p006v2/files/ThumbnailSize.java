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
public enum ThumbnailSize {
    W32H32,
    W64H64,
    W128H128,
    W256H256,
    W480H320,
    W640H480,
    W960H640,
    W1024H768,
    W2048H1536;

    /* renamed from: com.dropbox.core.v2.files.ThumbnailSize$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2672a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17424a;

        static {
            int[] iArr = new int[ThumbnailSize.values().length];
            f17424a = iArr;
            try {
                iArr[ThumbnailSize.W32H32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17424a[ThumbnailSize.W64H64.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17424a[ThumbnailSize.W128H128.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17424a[ThumbnailSize.W256H256.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17424a[ThumbnailSize.W480H320.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17424a[ThumbnailSize.W640H480.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17424a[ThumbnailSize.W960H640.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17424a[ThumbnailSize.W1024H768.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17424a[ThumbnailSize.W2048H1536.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ThumbnailSize$b */
    /* loaded from: classes4.dex */
    public static class C2673b extends UnionSerializer<ThumbnailSize> {

        /* renamed from: b */
        public static final C2673b f17425b = new C2673b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ThumbnailSize deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ThumbnailSize thumbnailSize;
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
            if ("w32h32".equals(readTag)) {
                thumbnailSize = ThumbnailSize.W32H32;
            } else if ("w64h64".equals(readTag)) {
                thumbnailSize = ThumbnailSize.W64H64;
            } else if ("w128h128".equals(readTag)) {
                thumbnailSize = ThumbnailSize.W128H128;
            } else if ("w256h256".equals(readTag)) {
                thumbnailSize = ThumbnailSize.W256H256;
            } else if ("w480h320".equals(readTag)) {
                thumbnailSize = ThumbnailSize.W480H320;
            } else if ("w640h480".equals(readTag)) {
                thumbnailSize = ThumbnailSize.W640H480;
            } else if ("w960h640".equals(readTag)) {
                thumbnailSize = ThumbnailSize.W960H640;
            } else if ("w1024h768".equals(readTag)) {
                thumbnailSize = ThumbnailSize.W1024H768;
            } else {
                if (!"w2048h1536".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                thumbnailSize = ThumbnailSize.W2048H1536;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return thumbnailSize;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ThumbnailSize thumbnailSize, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2672a.f17424a[thumbnailSize.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("w32h32");
                    return;
                case 2:
                    jsonGenerator.writeString("w64h64");
                    return;
                case 3:
                    jsonGenerator.writeString("w128h128");
                    return;
                case 4:
                    jsonGenerator.writeString("w256h256");
                    return;
                case 5:
                    jsonGenerator.writeString("w480h320");
                    return;
                case 6:
                    jsonGenerator.writeString("w640h480");
                    return;
                case 7:
                    jsonGenerator.writeString("w960h640");
                    return;
                case 8:
                    jsonGenerator.writeString("w1024h768");
                    return;
                case 9:
                    jsonGenerator.writeString("w2048h1536");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + thumbnailSize);
            }
        }
    }
}
