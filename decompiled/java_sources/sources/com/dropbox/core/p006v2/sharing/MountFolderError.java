package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.InsufficientQuotaAmounts;
import com.dropbox.core.p006v2.sharing.SharedFolderAccessError;
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
public final class MountFolderError {

    /* renamed from: a */
    public Tag f17878a;

    /* renamed from: b */
    public SharedFolderAccessError f17879b;

    /* renamed from: c */
    public InsufficientQuotaAmounts f17880c;
    public static final MountFolderError INSIDE_SHARED_FOLDER = new MountFolderError().m11793c(Tag.INSIDE_SHARED_FOLDER);
    public static final MountFolderError ALREADY_MOUNTED = new MountFolderError().m11793c(Tag.ALREADY_MOUNTED);
    public static final MountFolderError NO_PERMISSION = new MountFolderError().m11793c(Tag.NO_PERMISSION);
    public static final MountFolderError NOT_MOUNTABLE = new MountFolderError().m11793c(Tag.NOT_MOUNTABLE);
    public static final MountFolderError OTHER = new MountFolderError().m11793c(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        ACCESS_ERROR,
        INSIDE_SHARED_FOLDER,
        INSUFFICIENT_QUOTA,
        ALREADY_MOUNTED,
        NO_PERMISSION,
        NOT_MOUNTABLE,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.MountFolderError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2900a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17881a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17881a = iArr;
            try {
                iArr[Tag.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17881a[Tag.INSIDE_SHARED_FOLDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17881a[Tag.INSUFFICIENT_QUOTA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17881a[Tag.ALREADY_MOUNTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17881a[Tag.NO_PERMISSION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17881a[Tag.NOT_MOUNTABLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17881a[Tag.OTHER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.MountFolderError$b */
    /* loaded from: classes4.dex */
    public static class C2901b extends UnionSerializer<MountFolderError> {

        /* renamed from: b */
        public static final C2901b f17882b = new C2901b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MountFolderError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            MountFolderError insufficientQuota;
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
            if ("access_error".equals(readTag)) {
                StoneSerializer.expectField("access_error", jsonParser);
                insufficientQuota = MountFolderError.accessError(SharedFolderAccessError.C2943b.f17965b.deserialize(jsonParser));
            } else {
                insufficientQuota = "inside_shared_folder".equals(readTag) ? MountFolderError.INSIDE_SHARED_FOLDER : "insufficient_quota".equals(readTag) ? MountFolderError.insufficientQuota(InsufficientQuotaAmounts.C2846a.f17766b.deserialize(jsonParser, true)) : "already_mounted".equals(readTag) ? MountFolderError.ALREADY_MOUNTED : "no_permission".equals(readTag) ? MountFolderError.NO_PERMISSION : "not_mountable".equals(readTag) ? MountFolderError.NOT_MOUNTABLE : MountFolderError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return insufficientQuota;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MountFolderError mountFolderError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2900a.f17881a[mountFolderError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    SharedFolderAccessError.C2943b.f17965b.serialize(mountFolderError.f17879b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("inside_shared_folder");
                    return;
                case 3:
                    jsonGenerator.writeStartObject();
                    writeTag("insufficient_quota", jsonGenerator);
                    InsufficientQuotaAmounts.C2846a.f17766b.serialize(mountFolderError.f17880c, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 4:
                    jsonGenerator.writeString("already_mounted");
                    return;
                case 5:
                    jsonGenerator.writeString("no_permission");
                    return;
                case 6:
                    jsonGenerator.writeString("not_mountable");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    public static MountFolderError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError != null) {
            return new MountFolderError().m11794d(Tag.ACCESS_ERROR, sharedFolderAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static MountFolderError insufficientQuota(InsufficientQuotaAmounts insufficientQuotaAmounts) {
        if (insufficientQuotaAmounts != null) {
            return new MountFolderError().m11795e(Tag.INSUFFICIENT_QUOTA, insufficientQuotaAmounts);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final MountFolderError m11793c(Tag tag) {
        MountFolderError mountFolderError = new MountFolderError();
        mountFolderError.f17878a = tag;
        return mountFolderError;
    }

    /* renamed from: d */
    public final MountFolderError m11794d(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        MountFolderError mountFolderError = new MountFolderError();
        mountFolderError.f17878a = tag;
        mountFolderError.f17879b = sharedFolderAccessError;
        return mountFolderError;
    }

    /* renamed from: e */
    public final MountFolderError m11795e(Tag tag, InsufficientQuotaAmounts insufficientQuotaAmounts) {
        MountFolderError mountFolderError = new MountFolderError();
        mountFolderError.f17878a = tag;
        mountFolderError.f17880c = insufficientQuotaAmounts;
        return mountFolderError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof MountFolderError)) {
            return false;
        }
        MountFolderError mountFolderError = (MountFolderError) obj;
        Tag tag = this.f17878a;
        if (tag != mountFolderError.f17878a) {
            return false;
        }
        switch (C2900a.f17881a[tag.ordinal()]) {
            case 1:
                SharedFolderAccessError sharedFolderAccessError = this.f17879b;
                SharedFolderAccessError sharedFolderAccessError2 = mountFolderError.f17879b;
                return sharedFolderAccessError == sharedFolderAccessError2 || sharedFolderAccessError.equals(sharedFolderAccessError2);
            case 2:
                return true;
            case 3:
                InsufficientQuotaAmounts insufficientQuotaAmounts = this.f17880c;
                InsufficientQuotaAmounts insufficientQuotaAmounts2 = mountFolderError.f17880c;
                return insufficientQuotaAmounts == insufficientQuotaAmounts2 || insufficientQuotaAmounts.equals(insufficientQuotaAmounts2);
            case 4:
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    public SharedFolderAccessError getAccessErrorValue() {
        if (this.f17878a == Tag.ACCESS_ERROR) {
            return this.f17879b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f17878a.name());
    }

    public InsufficientQuotaAmounts getInsufficientQuotaValue() {
        if (this.f17878a == Tag.INSUFFICIENT_QUOTA) {
            return this.f17880c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.INSUFFICIENT_QUOTA, but was Tag." + this.f17878a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17878a, this.f17879b, this.f17880c});
    }

    public boolean isAccessError() {
        return this.f17878a == Tag.ACCESS_ERROR;
    }

    public boolean isAlreadyMounted() {
        return this.f17878a == Tag.ALREADY_MOUNTED;
    }

    public boolean isInsideSharedFolder() {
        return this.f17878a == Tag.INSIDE_SHARED_FOLDER;
    }

    public boolean isInsufficientQuota() {
        return this.f17878a == Tag.INSUFFICIENT_QUOTA;
    }

    public boolean isNoPermission() {
        return this.f17878a == Tag.NO_PERMISSION;
    }

    public boolean isNotMountable() {
        return this.f17878a == Tag.NOT_MOUNTABLE;
    }

    public boolean isOther() {
        return this.f17878a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17878a;
    }

    public String toString() {
        return C2901b.f17882b.serialize((C2901b) this, false);
    }

    public String toStringMultiline() {
        return C2901b.f17882b.serialize((C2901b) this, true);
    }
}
