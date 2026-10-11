package com.dropbox.core.p006v2.sharing;

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
public enum SharedLinkSettingsError {
    INVALID_SETTINGS,
    NOT_AUTHORIZED;

    /* renamed from: com.dropbox.core.v2.sharing.SharedLinkSettingsError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2958a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17986a;

        static {
            int[] iArr = new int[SharedLinkSettingsError.values().length];
            f17986a = iArr;
            try {
                iArr[SharedLinkSettingsError.INVALID_SETTINGS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17986a[SharedLinkSettingsError.NOT_AUTHORIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharedLinkSettingsError$b */
    /* loaded from: classes4.dex */
    public static class C2959b extends UnionSerializer<SharedLinkSettingsError> {

        /* renamed from: b */
        public static final C2959b f17987b = new C2959b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkSettingsError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SharedLinkSettingsError sharedLinkSettingsError;
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
            if ("invalid_settings".equals(readTag)) {
                sharedLinkSettingsError = SharedLinkSettingsError.INVALID_SETTINGS;
            } else {
                if (!"not_authorized".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                sharedLinkSettingsError = SharedLinkSettingsError.NOT_AUTHORIZED;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sharedLinkSettingsError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkSettingsError sharedLinkSettingsError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2958a.f17986a[sharedLinkSettingsError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_settings");
            } else {
                if (i == 2) {
                    jsonGenerator.writeString("not_authorized");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + sharedLinkSettingsError);
            }
        }
    }
}
