package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.SharedLinkSettingsError;
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
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class ModifySharedLinkSettingsError {

    /* renamed from: a */
    public Tag f17874a;

    /* renamed from: b */
    public SharedLinkSettingsError f17875b;
    public static final ModifySharedLinkSettingsError SHARED_LINK_NOT_FOUND = new ModifySharedLinkSettingsError().m11787b(Tag.SHARED_LINK_NOT_FOUND);
    public static final ModifySharedLinkSettingsError SHARED_LINK_ACCESS_DENIED = new ModifySharedLinkSettingsError().m11787b(Tag.SHARED_LINK_ACCESS_DENIED);
    public static final ModifySharedLinkSettingsError UNSUPPORTED_LINK_TYPE = new ModifySharedLinkSettingsError().m11787b(Tag.UNSUPPORTED_LINK_TYPE);
    public static final ModifySharedLinkSettingsError OTHER = new ModifySharedLinkSettingsError().m11787b(Tag.OTHER);
    public static final ModifySharedLinkSettingsError EMAIL_NOT_VERIFIED = new ModifySharedLinkSettingsError().m11787b(Tag.EMAIL_NOT_VERIFIED);

    /* loaded from: classes4.dex */
    public enum Tag {
        SHARED_LINK_NOT_FOUND,
        SHARED_LINK_ACCESS_DENIED,
        UNSUPPORTED_LINK_TYPE,
        OTHER,
        SETTINGS_ERROR,
        EMAIL_NOT_VERIFIED
    }

    /* renamed from: com.dropbox.core.v2.sharing.ModifySharedLinkSettingsError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2898a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17876a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17876a = iArr;
            try {
                iArr[Tag.SHARED_LINK_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17876a[Tag.SHARED_LINK_ACCESS_DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17876a[Tag.UNSUPPORTED_LINK_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17876a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17876a[Tag.SETTINGS_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17876a[Tag.EMAIL_NOT_VERIFIED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ModifySharedLinkSettingsError$b */
    /* loaded from: classes4.dex */
    public static class C2899b extends UnionSerializer<ModifySharedLinkSettingsError> {

        /* renamed from: b */
        public static final C2899b f17877b = new C2899b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ModifySharedLinkSettingsError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ModifySharedLinkSettingsError modifySharedLinkSettingsError;
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
            if ("shared_link_not_found".equals(readTag)) {
                modifySharedLinkSettingsError = ModifySharedLinkSettingsError.SHARED_LINK_NOT_FOUND;
            } else if ("shared_link_access_denied".equals(readTag)) {
                modifySharedLinkSettingsError = ModifySharedLinkSettingsError.SHARED_LINK_ACCESS_DENIED;
            } else if ("unsupported_link_type".equals(readTag)) {
                modifySharedLinkSettingsError = ModifySharedLinkSettingsError.UNSUPPORTED_LINK_TYPE;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                modifySharedLinkSettingsError = ModifySharedLinkSettingsError.OTHER;
            } else if ("settings_error".equals(readTag)) {
                StoneSerializer.expectField("settings_error", jsonParser);
                modifySharedLinkSettingsError = ModifySharedLinkSettingsError.settingsError(SharedLinkSettingsError.C2959b.f17987b.deserialize(jsonParser));
            } else {
                if (!"email_not_verified".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                modifySharedLinkSettingsError = ModifySharedLinkSettingsError.EMAIL_NOT_VERIFIED;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return modifySharedLinkSettingsError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ModifySharedLinkSettingsError modifySharedLinkSettingsError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2898a.f17876a[modifySharedLinkSettingsError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeString("shared_link_not_found");
                    return;
                case 2:
                    jsonGenerator.writeString("shared_link_access_denied");
                    return;
                case 3:
                    jsonGenerator.writeString("unsupported_link_type");
                    return;
                case 4:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                case 5:
                    jsonGenerator.writeStartObject();
                    writeTag("settings_error", jsonGenerator);
                    jsonGenerator.writeFieldName("settings_error");
                    SharedLinkSettingsError.C2959b.f17987b.serialize(modifySharedLinkSettingsError.f17875b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 6:
                    jsonGenerator.writeString("email_not_verified");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + modifySharedLinkSettingsError.tag());
            }
        }
    }

    public static ModifySharedLinkSettingsError settingsError(SharedLinkSettingsError sharedLinkSettingsError) {
        if (sharedLinkSettingsError != null) {
            return new ModifySharedLinkSettingsError().m11788c(Tag.SETTINGS_ERROR, sharedLinkSettingsError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final ModifySharedLinkSettingsError m11787b(Tag tag) {
        ModifySharedLinkSettingsError modifySharedLinkSettingsError = new ModifySharedLinkSettingsError();
        modifySharedLinkSettingsError.f17874a = tag;
        return modifySharedLinkSettingsError;
    }

    /* renamed from: c */
    public final ModifySharedLinkSettingsError m11788c(Tag tag, SharedLinkSettingsError sharedLinkSettingsError) {
        ModifySharedLinkSettingsError modifySharedLinkSettingsError = new ModifySharedLinkSettingsError();
        modifySharedLinkSettingsError.f17874a = tag;
        modifySharedLinkSettingsError.f17875b = sharedLinkSettingsError;
        return modifySharedLinkSettingsError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ModifySharedLinkSettingsError)) {
            return false;
        }
        ModifySharedLinkSettingsError modifySharedLinkSettingsError = (ModifySharedLinkSettingsError) obj;
        Tag tag = this.f17874a;
        if (tag != modifySharedLinkSettingsError.f17874a) {
            return false;
        }
        switch (C2898a.f17876a[tag.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                return true;
            case 5:
                SharedLinkSettingsError sharedLinkSettingsError = this.f17875b;
                SharedLinkSettingsError sharedLinkSettingsError2 = modifySharedLinkSettingsError.f17875b;
                return sharedLinkSettingsError == sharedLinkSettingsError2 || sharedLinkSettingsError.equals(sharedLinkSettingsError2);
            case 6:
                return true;
            default:
                return false;
        }
    }

    public SharedLinkSettingsError getSettingsErrorValue() {
        if (this.f17874a == Tag.SETTINGS_ERROR) {
            return this.f17875b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SETTINGS_ERROR, but was Tag." + this.f17874a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17874a, this.f17875b});
    }

    public boolean isEmailNotVerified() {
        return this.f17874a == Tag.EMAIL_NOT_VERIFIED;
    }

    public boolean isOther() {
        return this.f17874a == Tag.OTHER;
    }

    public boolean isSettingsError() {
        return this.f17874a == Tag.SETTINGS_ERROR;
    }

    public boolean isSharedLinkAccessDenied() {
        return this.f17874a == Tag.SHARED_LINK_ACCESS_DENIED;
    }

    public boolean isSharedLinkNotFound() {
        return this.f17874a == Tag.SHARED_LINK_NOT_FOUND;
    }

    public boolean isUnsupportedLinkType() {
        return this.f17874a == Tag.UNSUPPORTED_LINK_TYPE;
    }

    public Tag tag() {
        return this.f17874a;
    }

    public String toString() {
        return C2899b.f17877b.serialize((C2899b) this, false);
    }

    public String toStringMultiline() {
        return C2899b.f17877b.serialize((C2899b) this, true);
    }
}
