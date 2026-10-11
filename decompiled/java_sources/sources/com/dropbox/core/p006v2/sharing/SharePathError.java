package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.SharedFolderMetadata;
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
public final class SharePathError {

    /* renamed from: a */
    public Tag f17954a;

    /* renamed from: b */
    public SharedFolderMetadata f17955b;
    public static final SharePathError IS_FILE = new SharePathError().m11891b(Tag.IS_FILE);
    public static final SharePathError INSIDE_SHARED_FOLDER = new SharePathError().m11891b(Tag.INSIDE_SHARED_FOLDER);
    public static final SharePathError CONTAINS_SHARED_FOLDER = new SharePathError().m11891b(Tag.CONTAINS_SHARED_FOLDER);
    public static final SharePathError CONTAINS_APP_FOLDER = new SharePathError().m11891b(Tag.CONTAINS_APP_FOLDER);
    public static final SharePathError CONTAINS_TEAM_FOLDER = new SharePathError().m11891b(Tag.CONTAINS_TEAM_FOLDER);
    public static final SharePathError IS_APP_FOLDER = new SharePathError().m11891b(Tag.IS_APP_FOLDER);
    public static final SharePathError INSIDE_APP_FOLDER = new SharePathError().m11891b(Tag.INSIDE_APP_FOLDER);
    public static final SharePathError IS_PUBLIC_FOLDER = new SharePathError().m11891b(Tag.IS_PUBLIC_FOLDER);
    public static final SharePathError INSIDE_PUBLIC_FOLDER = new SharePathError().m11891b(Tag.INSIDE_PUBLIC_FOLDER);
    public static final SharePathError INVALID_PATH = new SharePathError().m11891b(Tag.INVALID_PATH);
    public static final SharePathError IS_OSX_PACKAGE = new SharePathError().m11891b(Tag.IS_OSX_PACKAGE);
    public static final SharePathError INSIDE_OSX_PACKAGE = new SharePathError().m11891b(Tag.INSIDE_OSX_PACKAGE);
    public static final SharePathError IS_VAULT = new SharePathError().m11891b(Tag.IS_VAULT);
    public static final SharePathError OTHER = new SharePathError().m11891b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        IS_FILE,
        INSIDE_SHARED_FOLDER,
        CONTAINS_SHARED_FOLDER,
        CONTAINS_APP_FOLDER,
        CONTAINS_TEAM_FOLDER,
        IS_APP_FOLDER,
        INSIDE_APP_FOLDER,
        IS_PUBLIC_FOLDER,
        INSIDE_PUBLIC_FOLDER,
        ALREADY_SHARED,
        INVALID_PATH,
        IS_OSX_PACKAGE,
        INSIDE_OSX_PACKAGE,
        IS_VAULT,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharePathError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2936a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17956a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17956a = iArr;
            try {
                iArr[Tag.IS_FILE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17956a[Tag.INSIDE_SHARED_FOLDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17956a[Tag.CONTAINS_SHARED_FOLDER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17956a[Tag.CONTAINS_APP_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17956a[Tag.CONTAINS_TEAM_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17956a[Tag.IS_APP_FOLDER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17956a[Tag.INSIDE_APP_FOLDER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17956a[Tag.IS_PUBLIC_FOLDER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17956a[Tag.INSIDE_PUBLIC_FOLDER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17956a[Tag.ALREADY_SHARED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f17956a[Tag.INVALID_PATH.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f17956a[Tag.IS_OSX_PACKAGE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f17956a[Tag.INSIDE_OSX_PACKAGE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f17956a[Tag.IS_VAULT.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f17956a[Tag.OTHER.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharePathError$b */
    /* loaded from: classes4.dex */
    public static class C2937b extends UnionSerializer<SharePathError> {

        /* renamed from: b */
        public static final C2937b f17957b = new C2937b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharePathError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SharePathError alreadyShared = "is_file".equals(readTag) ? SharePathError.IS_FILE : "inside_shared_folder".equals(readTag) ? SharePathError.INSIDE_SHARED_FOLDER : "contains_shared_folder".equals(readTag) ? SharePathError.CONTAINS_SHARED_FOLDER : "contains_app_folder".equals(readTag) ? SharePathError.CONTAINS_APP_FOLDER : "contains_team_folder".equals(readTag) ? SharePathError.CONTAINS_TEAM_FOLDER : "is_app_folder".equals(readTag) ? SharePathError.IS_APP_FOLDER : "inside_app_folder".equals(readTag) ? SharePathError.INSIDE_APP_FOLDER : "is_public_folder".equals(readTag) ? SharePathError.IS_PUBLIC_FOLDER : "inside_public_folder".equals(readTag) ? SharePathError.INSIDE_PUBLIC_FOLDER : "already_shared".equals(readTag) ? SharePathError.alreadyShared(SharedFolderMetadata.C2947a.f17971b.deserialize(jsonParser, true)) : "invalid_path".equals(readTag) ? SharePathError.INVALID_PATH : "is_osx_package".equals(readTag) ? SharePathError.IS_OSX_PACKAGE : "inside_osx_package".equals(readTag) ? SharePathError.INSIDE_OSX_PACKAGE : "is_vault".equals(readTag) ? SharePathError.IS_VAULT : SharePathError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return alreadyShared;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharePathError sharePathError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2936a.f17956a[sharePathError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeString("is_file");
                    return;
                case 2:
                    jsonGenerator.writeString("inside_shared_folder");
                    return;
                case 3:
                    jsonGenerator.writeString("contains_shared_folder");
                    return;
                case 4:
                    jsonGenerator.writeString("contains_app_folder");
                    return;
                case 5:
                    jsonGenerator.writeString("contains_team_folder");
                    return;
                case 6:
                    jsonGenerator.writeString("is_app_folder");
                    return;
                case 7:
                    jsonGenerator.writeString("inside_app_folder");
                    return;
                case 8:
                    jsonGenerator.writeString("is_public_folder");
                    return;
                case 9:
                    jsonGenerator.writeString("inside_public_folder");
                    return;
                case 10:
                    jsonGenerator.writeStartObject();
                    writeTag("already_shared", jsonGenerator);
                    SharedFolderMetadata.C2947a.f17971b.serialize(sharePathError.f17955b, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 11:
                    jsonGenerator.writeString("invalid_path");
                    return;
                case 12:
                    jsonGenerator.writeString("is_osx_package");
                    return;
                case 13:
                    jsonGenerator.writeString("inside_osx_package");
                    return;
                case 14:
                    jsonGenerator.writeString("is_vault");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    public static SharePathError alreadyShared(SharedFolderMetadata sharedFolderMetadata) {
        if (sharedFolderMetadata != null) {
            return new SharePathError().m11892c(Tag.ALREADY_SHARED, sharedFolderMetadata);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final SharePathError m11891b(Tag tag) {
        SharePathError sharePathError = new SharePathError();
        sharePathError.f17954a = tag;
        return sharePathError;
    }

    /* renamed from: c */
    public final SharePathError m11892c(Tag tag, SharedFolderMetadata sharedFolderMetadata) {
        SharePathError sharePathError = new SharePathError();
        sharePathError.f17954a = tag;
        sharePathError.f17955b = sharedFolderMetadata;
        return sharePathError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof SharePathError)) {
            return false;
        }
        SharePathError sharePathError = (SharePathError) obj;
        Tag tag = this.f17954a;
        if (tag != sharePathError.f17954a) {
            return false;
        }
        switch (C2936a.f17956a[tag.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            case 10:
                SharedFolderMetadata sharedFolderMetadata = this.f17955b;
                SharedFolderMetadata sharedFolderMetadata2 = sharePathError.f17955b;
                return sharedFolderMetadata == sharedFolderMetadata2 || sharedFolderMetadata.equals(sharedFolderMetadata2);
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return true;
            default:
                return false;
        }
    }

    public SharedFolderMetadata getAlreadySharedValue() {
        if (this.f17954a == Tag.ALREADY_SHARED) {
            return this.f17955b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ALREADY_SHARED, but was Tag." + this.f17954a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17954a, this.f17955b});
    }

    public boolean isAlreadyShared() {
        return this.f17954a == Tag.ALREADY_SHARED;
    }

    public boolean isContainsAppFolder() {
        return this.f17954a == Tag.CONTAINS_APP_FOLDER;
    }

    public boolean isContainsSharedFolder() {
        return this.f17954a == Tag.CONTAINS_SHARED_FOLDER;
    }

    public boolean isContainsTeamFolder() {
        return this.f17954a == Tag.CONTAINS_TEAM_FOLDER;
    }

    public boolean isInsideAppFolder() {
        return this.f17954a == Tag.INSIDE_APP_FOLDER;
    }

    public boolean isInsideOsxPackage() {
        return this.f17954a == Tag.INSIDE_OSX_PACKAGE;
    }

    public boolean isInsidePublicFolder() {
        return this.f17954a == Tag.INSIDE_PUBLIC_FOLDER;
    }

    public boolean isInsideSharedFolder() {
        return this.f17954a == Tag.INSIDE_SHARED_FOLDER;
    }

    public boolean isInvalidPath() {
        return this.f17954a == Tag.INVALID_PATH;
    }

    public boolean isIsAppFolder() {
        return this.f17954a == Tag.IS_APP_FOLDER;
    }

    public boolean isIsFile() {
        return this.f17954a == Tag.IS_FILE;
    }

    public boolean isIsOsxPackage() {
        return this.f17954a == Tag.IS_OSX_PACKAGE;
    }

    public boolean isIsPublicFolder() {
        return this.f17954a == Tag.IS_PUBLIC_FOLDER;
    }

    public boolean isIsVault() {
        return this.f17954a == Tag.IS_VAULT;
    }

    public boolean isOther() {
        return this.f17954a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17954a;
    }

    public String toString() {
        return C2937b.f17957b.serialize((C2937b) this, false);
    }

    public String toStringMultiline() {
        return C2937b.f17957b.serialize((C2937b) this, true);
    }
}
