package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.files.LookupError;
import com.dropbox.core.p006v2.sharing.SharedLinkAlreadyExistsMetadata;
import com.dropbox.core.p006v2.sharing.SharedLinkSettingsError;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class CreateSharedLinkWithSettingsError {

    /* renamed from: a */
    public Tag f17704a;

    /* renamed from: b */
    public LookupError f17705b;

    /* renamed from: c */
    public SharedLinkAlreadyExistsMetadata f17706c;

    /* renamed from: d */
    public SharedLinkSettingsError f17707d;
    public static final CreateSharedLinkWithSettingsError EMAIL_NOT_VERIFIED = new CreateSharedLinkWithSettingsError().m11512d(Tag.EMAIL_NOT_VERIFIED);
    public static final CreateSharedLinkWithSettingsError ACCESS_DENIED = new CreateSharedLinkWithSettingsError().m11512d(Tag.ACCESS_DENIED);

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        EMAIL_NOT_VERIFIED,
        SHARED_LINK_ALREADY_EXISTS,
        SETTINGS_ERROR,
        ACCESS_DENIED
    }

    /* renamed from: com.dropbox.core.v2.sharing.CreateSharedLinkWithSettingsError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2813a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17708a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17708a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17708a[Tag.EMAIL_NOT_VERIFIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17708a[Tag.SHARED_LINK_ALREADY_EXISTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17708a[Tag.SETTINGS_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17708a[Tag.ACCESS_DENIED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.CreateSharedLinkWithSettingsError$b */
    /* loaded from: classes4.dex */
    public static class C2814b extends UnionSerializer<CreateSharedLinkWithSettingsError> {

        /* renamed from: b */
        public static final C2814b f17709b = new C2814b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CreateSharedLinkWithSettingsError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            CreateSharedLinkWithSettingsError createSharedLinkWithSettingsError;
            SharedLinkAlreadyExistsMetadata sharedLinkAlreadyExistsMetadata;
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
            if ("path".equals(readTag)) {
                StoneSerializer.expectField("path", jsonParser);
                createSharedLinkWithSettingsError = CreateSharedLinkWithSettingsError.path(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else if ("email_not_verified".equals(readTag)) {
                createSharedLinkWithSettingsError = CreateSharedLinkWithSettingsError.EMAIL_NOT_VERIFIED;
            } else if ("shared_link_already_exists".equals(readTag)) {
                if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                    StoneSerializer.expectField("shared_link_already_exists", jsonParser);
                    sharedLinkAlreadyExistsMetadata = (SharedLinkAlreadyExistsMetadata) StoneSerializers.nullable(SharedLinkAlreadyExistsMetadata.C2952b.f17978b).deserialize(jsonParser);
                } else {
                    sharedLinkAlreadyExistsMetadata = null;
                }
                createSharedLinkWithSettingsError = sharedLinkAlreadyExistsMetadata == null ? CreateSharedLinkWithSettingsError.sharedLinkAlreadyExists() : CreateSharedLinkWithSettingsError.sharedLinkAlreadyExists(sharedLinkAlreadyExistsMetadata);
            } else if ("settings_error".equals(readTag)) {
                StoneSerializer.expectField("settings_error", jsonParser);
                createSharedLinkWithSettingsError = CreateSharedLinkWithSettingsError.settingsError(SharedLinkSettingsError.C2959b.f17987b.deserialize(jsonParser));
            } else {
                if (!"access_denied".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                createSharedLinkWithSettingsError = CreateSharedLinkWithSettingsError.ACCESS_DENIED;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return createSharedLinkWithSettingsError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CreateSharedLinkWithSettingsError createSharedLinkWithSettingsError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2813a.f17708a[createSharedLinkWithSettingsError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                LookupError.Serializer.INSTANCE.serialize(createSharedLinkWithSettingsError.f17705b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("email_not_verified");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("shared_link_already_exists", jsonGenerator);
                jsonGenerator.writeFieldName("shared_link_already_exists");
                StoneSerializers.nullable(SharedLinkAlreadyExistsMetadata.C2952b.f17978b).serialize((StoneSerializer) createSharedLinkWithSettingsError.f17706c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 4) {
                jsonGenerator.writeStartObject();
                writeTag("settings_error", jsonGenerator);
                jsonGenerator.writeFieldName("settings_error");
                SharedLinkSettingsError.C2959b.f17987b.serialize(createSharedLinkWithSettingsError.f17707d, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 5) {
                jsonGenerator.writeString("access_denied");
                return;
            }
            throw new IllegalArgumentException("Unrecognized tag: " + createSharedLinkWithSettingsError.tag());
        }
    }

    public static CreateSharedLinkWithSettingsError path(LookupError lookupError) {
        if (lookupError != null) {
            return new CreateSharedLinkWithSettingsError().m11513e(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static CreateSharedLinkWithSettingsError settingsError(SharedLinkSettingsError sharedLinkSettingsError) {
        if (sharedLinkSettingsError != null) {
            return new CreateSharedLinkWithSettingsError().m11514f(Tag.SETTINGS_ERROR, sharedLinkSettingsError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static CreateSharedLinkWithSettingsError sharedLinkAlreadyExists(SharedLinkAlreadyExistsMetadata sharedLinkAlreadyExistsMetadata) {
        return new CreateSharedLinkWithSettingsError().m11515g(Tag.SHARED_LINK_ALREADY_EXISTS, sharedLinkAlreadyExistsMetadata);
    }

    /* renamed from: d */
    public final CreateSharedLinkWithSettingsError m11512d(Tag tag) {
        CreateSharedLinkWithSettingsError createSharedLinkWithSettingsError = new CreateSharedLinkWithSettingsError();
        createSharedLinkWithSettingsError.f17704a = tag;
        return createSharedLinkWithSettingsError;
    }

    /* renamed from: e */
    public final CreateSharedLinkWithSettingsError m11513e(Tag tag, LookupError lookupError) {
        CreateSharedLinkWithSettingsError createSharedLinkWithSettingsError = new CreateSharedLinkWithSettingsError();
        createSharedLinkWithSettingsError.f17704a = tag;
        createSharedLinkWithSettingsError.f17705b = lookupError;
        return createSharedLinkWithSettingsError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateSharedLinkWithSettingsError)) {
            return false;
        }
        CreateSharedLinkWithSettingsError createSharedLinkWithSettingsError = (CreateSharedLinkWithSettingsError) obj;
        Tag tag = this.f17704a;
        if (tag != createSharedLinkWithSettingsError.f17704a) {
            return false;
        }
        int i = C2813a.f17708a[tag.ordinal()];
        if (i == 1) {
            LookupError lookupError = this.f17705b;
            LookupError lookupError2 = createSharedLinkWithSettingsError.f17705b;
            return lookupError == lookupError2 || lookupError.equals(lookupError2);
        }
        if (i == 2) {
            return true;
        }
        if (i != 3) {
            if (i != 4) {
                return i == 5;
            }
            SharedLinkSettingsError sharedLinkSettingsError = this.f17707d;
            SharedLinkSettingsError sharedLinkSettingsError2 = createSharedLinkWithSettingsError.f17707d;
            return sharedLinkSettingsError == sharedLinkSettingsError2 || sharedLinkSettingsError.equals(sharedLinkSettingsError2);
        }
        SharedLinkAlreadyExistsMetadata sharedLinkAlreadyExistsMetadata = this.f17706c;
        SharedLinkAlreadyExistsMetadata sharedLinkAlreadyExistsMetadata2 = createSharedLinkWithSettingsError.f17706c;
        if (sharedLinkAlreadyExistsMetadata != sharedLinkAlreadyExistsMetadata2) {
            return sharedLinkAlreadyExistsMetadata != null && sharedLinkAlreadyExistsMetadata.equals(sharedLinkAlreadyExistsMetadata2);
        }
        return true;
    }

    /* renamed from: f */
    public final CreateSharedLinkWithSettingsError m11514f(Tag tag, SharedLinkSettingsError sharedLinkSettingsError) {
        CreateSharedLinkWithSettingsError createSharedLinkWithSettingsError = new CreateSharedLinkWithSettingsError();
        createSharedLinkWithSettingsError.f17704a = tag;
        createSharedLinkWithSettingsError.f17707d = sharedLinkSettingsError;
        return createSharedLinkWithSettingsError;
    }

    /* renamed from: g */
    public final CreateSharedLinkWithSettingsError m11515g(Tag tag, SharedLinkAlreadyExistsMetadata sharedLinkAlreadyExistsMetadata) {
        CreateSharedLinkWithSettingsError createSharedLinkWithSettingsError = new CreateSharedLinkWithSettingsError();
        createSharedLinkWithSettingsError.f17704a = tag;
        createSharedLinkWithSettingsError.f17706c = sharedLinkAlreadyExistsMetadata;
        return createSharedLinkWithSettingsError;
    }

    public LookupError getPathValue() {
        if (this.f17704a == Tag.PATH) {
            return this.f17705b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17704a.name());
    }

    public SharedLinkSettingsError getSettingsErrorValue() {
        if (this.f17704a == Tag.SETTINGS_ERROR) {
            return this.f17707d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SETTINGS_ERROR, but was Tag." + this.f17704a.name());
    }

    public SharedLinkAlreadyExistsMetadata getSharedLinkAlreadyExistsValue() {
        if (this.f17704a == Tag.SHARED_LINK_ALREADY_EXISTS) {
            return this.f17706c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SHARED_LINK_ALREADY_EXISTS, but was Tag." + this.f17704a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17704a, this.f17705b, this.f17706c, this.f17707d});
    }

    public boolean isAccessDenied() {
        return this.f17704a == Tag.ACCESS_DENIED;
    }

    public boolean isEmailNotVerified() {
        return this.f17704a == Tag.EMAIL_NOT_VERIFIED;
    }

    public boolean isPath() {
        return this.f17704a == Tag.PATH;
    }

    public boolean isSettingsError() {
        return this.f17704a == Tag.SETTINGS_ERROR;
    }

    public boolean isSharedLinkAlreadyExists() {
        return this.f17704a == Tag.SHARED_LINK_ALREADY_EXISTS;
    }

    public Tag tag() {
        return this.f17704a;
    }

    public String toString() {
        return C2814b.f17709b.serialize((C2814b) this, false);
    }

    public String toStringMultiline() {
        return C2814b.f17709b.serialize((C2814b) this, true);
    }

    public static CreateSharedLinkWithSettingsError sharedLinkAlreadyExists() {
        return sharedLinkAlreadyExists(null);
    }
}
