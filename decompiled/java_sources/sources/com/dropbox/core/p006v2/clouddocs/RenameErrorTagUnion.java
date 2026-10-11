package com.dropbox.core.p006v2.clouddocs;

import com.dropbox.core.p006v2.clouddocs.GenericErrorTag;
import com.dropbox.core.p006v2.clouddocs.LockingErrorTag;
import com.dropbox.core.p006v2.clouddocs.RenameErrorTag;
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
public final class RenameErrorTagUnion {
    public static final RenameErrorTagUnion OTHER = new RenameErrorTagUnion().m10317d(Tag.OTHER);

    /* renamed from: a */
    public Tag f16861a;

    /* renamed from: b */
    public RenameErrorTag f16862b;

    /* renamed from: c */
    public GenericErrorTag f16863c;

    /* renamed from: d */
    public LockingErrorTag f16864d;

    /* loaded from: classes4.dex */
    public enum Tag {
        RENAME_ERROR,
        GENERIC_ERROR,
        LOCKING_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.RenameErrorTagUnion$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2406a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16865a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16865a = iArr;
            try {
                iArr[Tag.RENAME_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16865a[Tag.GENERIC_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16865a[Tag.LOCKING_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16865a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.RenameErrorTagUnion$b */
    /* loaded from: classes4.dex */
    public static class C2407b extends UnionSerializer<RenameErrorTagUnion> {

        /* renamed from: b */
        public static final C2407b f16866b = new C2407b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RenameErrorTagUnion deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RenameErrorTagUnion renameErrorTagUnion;
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
            if ("rename_error".equals(readTag)) {
                StoneSerializer.expectField("rename_error", jsonParser);
                renameErrorTagUnion = RenameErrorTagUnion.renameError(RenameErrorTag.C2405b.f16860b.deserialize(jsonParser));
            } else if ("generic_error".equals(readTag)) {
                StoneSerializer.expectField("generic_error", jsonParser);
                renameErrorTagUnion = RenameErrorTagUnion.genericError(GenericErrorTag.C2391b.f16835b.deserialize(jsonParser));
            } else if ("locking_error".equals(readTag)) {
                StoneSerializer.expectField("locking_error", jsonParser);
                renameErrorTagUnion = RenameErrorTagUnion.lockingError(LockingErrorTag.C2399b.f16847b.deserialize(jsonParser));
            } else {
                renameErrorTagUnion = RenameErrorTagUnion.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return renameErrorTagUnion;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RenameErrorTagUnion renameErrorTagUnion, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2406a.f16865a[renameErrorTagUnion.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("rename_error", jsonGenerator);
                jsonGenerator.writeFieldName("rename_error");
                RenameErrorTag.C2405b.f16860b.serialize(renameErrorTagUnion.f16862b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("generic_error", jsonGenerator);
                jsonGenerator.writeFieldName("generic_error");
                GenericErrorTag.C2391b.f16835b.serialize(renameErrorTagUnion.f16863c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("locking_error", jsonGenerator);
            jsonGenerator.writeFieldName("locking_error");
            LockingErrorTag.C2399b.f16847b.serialize(renameErrorTagUnion.f16864d, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static RenameErrorTagUnion genericError(GenericErrorTag genericErrorTag) {
        if (genericErrorTag != null) {
            return new RenameErrorTagUnion().m10318e(Tag.GENERIC_ERROR, genericErrorTag);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static RenameErrorTagUnion lockingError(LockingErrorTag lockingErrorTag) {
        if (lockingErrorTag != null) {
            return new RenameErrorTagUnion().m10319f(Tag.LOCKING_ERROR, lockingErrorTag);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static RenameErrorTagUnion renameError(RenameErrorTag renameErrorTag) {
        if (renameErrorTag != null) {
            return new RenameErrorTagUnion().m10320g(Tag.RENAME_ERROR, renameErrorTag);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: d */
    public final RenameErrorTagUnion m10317d(Tag tag) {
        RenameErrorTagUnion renameErrorTagUnion = new RenameErrorTagUnion();
        renameErrorTagUnion.f16861a = tag;
        return renameErrorTagUnion;
    }

    /* renamed from: e */
    public final RenameErrorTagUnion m10318e(Tag tag, GenericErrorTag genericErrorTag) {
        RenameErrorTagUnion renameErrorTagUnion = new RenameErrorTagUnion();
        renameErrorTagUnion.f16861a = tag;
        renameErrorTagUnion.f16863c = genericErrorTag;
        return renameErrorTagUnion;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RenameErrorTagUnion)) {
            return false;
        }
        RenameErrorTagUnion renameErrorTagUnion = (RenameErrorTagUnion) obj;
        Tag tag = this.f16861a;
        if (tag != renameErrorTagUnion.f16861a) {
            return false;
        }
        int i = C2406a.f16865a[tag.ordinal()];
        if (i == 1) {
            RenameErrorTag renameErrorTag = this.f16862b;
            RenameErrorTag renameErrorTag2 = renameErrorTagUnion.f16862b;
            return renameErrorTag == renameErrorTag2 || renameErrorTag.equals(renameErrorTag2);
        }
        if (i == 2) {
            GenericErrorTag genericErrorTag = this.f16863c;
            GenericErrorTag genericErrorTag2 = renameErrorTagUnion.f16863c;
            return genericErrorTag == genericErrorTag2 || genericErrorTag.equals(genericErrorTag2);
        }
        if (i != 3) {
            return i == 4;
        }
        LockingErrorTag lockingErrorTag = this.f16864d;
        LockingErrorTag lockingErrorTag2 = renameErrorTagUnion.f16864d;
        return lockingErrorTag == lockingErrorTag2 || lockingErrorTag.equals(lockingErrorTag2);
    }

    /* renamed from: f */
    public final RenameErrorTagUnion m10319f(Tag tag, LockingErrorTag lockingErrorTag) {
        RenameErrorTagUnion renameErrorTagUnion = new RenameErrorTagUnion();
        renameErrorTagUnion.f16861a = tag;
        renameErrorTagUnion.f16864d = lockingErrorTag;
        return renameErrorTagUnion;
    }

    /* renamed from: g */
    public final RenameErrorTagUnion m10320g(Tag tag, RenameErrorTag renameErrorTag) {
        RenameErrorTagUnion renameErrorTagUnion = new RenameErrorTagUnion();
        renameErrorTagUnion.f16861a = tag;
        renameErrorTagUnion.f16862b = renameErrorTag;
        return renameErrorTagUnion;
    }

    public GenericErrorTag getGenericErrorValue() {
        if (this.f16861a == Tag.GENERIC_ERROR) {
            return this.f16863c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GENERIC_ERROR, but was Tag." + this.f16861a.name());
    }

    public LockingErrorTag getLockingErrorValue() {
        if (this.f16861a == Tag.LOCKING_ERROR) {
            return this.f16864d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LOCKING_ERROR, but was Tag." + this.f16861a.name());
    }

    public RenameErrorTag getRenameErrorValue() {
        if (this.f16861a == Tag.RENAME_ERROR) {
            return this.f16862b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.RENAME_ERROR, but was Tag." + this.f16861a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16861a, this.f16862b, this.f16863c, this.f16864d});
    }

    public boolean isGenericError() {
        return this.f16861a == Tag.GENERIC_ERROR;
    }

    public boolean isLockingError() {
        return this.f16861a == Tag.LOCKING_ERROR;
    }

    public boolean isOther() {
        return this.f16861a == Tag.OTHER;
    }

    public boolean isRenameError() {
        return this.f16861a == Tag.RENAME_ERROR;
    }

    public Tag tag() {
        return this.f16861a;
    }

    public String toString() {
        return C2407b.f16866b.serialize((C2407b) this, false);
    }

    public String toStringMultiline() {
        return C2407b.f16866b.serialize((C2407b) this, true);
    }
}
