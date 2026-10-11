package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.data.common.cloud.Constant;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum PendingUploadMode {
    FILE,
    FOLDER;

    /* renamed from: com.dropbox.core.v2.sharing.PendingUploadMode$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2904a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17885a;

        static {
            int[] iArr = new int[PendingUploadMode.values().length];
            f17885a = iArr;
            try {
                iArr[PendingUploadMode.FILE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17885a[PendingUploadMode.FOLDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.PendingUploadMode$b */
    /* loaded from: classes4.dex */
    public static class C2905b extends UnionSerializer<PendingUploadMode> {

        /* renamed from: b */
        public static final C2905b f17886b = new C2905b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PendingUploadMode deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PendingUploadMode pendingUploadMode;
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
            if ("file".equals(readTag)) {
                pendingUploadMode = PendingUploadMode.FILE;
            } else {
                if (!Constant.FOLDER.equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                pendingUploadMode = PendingUploadMode.FOLDER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return pendingUploadMode;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PendingUploadMode pendingUploadMode, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2904a.f17885a[pendingUploadMode.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("file");
            } else {
                if (i == 2) {
                    jsonGenerator.writeString(Constant.FOLDER);
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + pendingUploadMode);
            }
        }
    }
}
