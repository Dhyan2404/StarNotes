package com.dropbox.core.p006v2.clouddocs;

import com.dropbox.core.p006v2.clouddocs.GenericErrorTag;
import com.dropbox.core.p006v2.clouddocs.LockingErrorTag;
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
public final class LockingErrorTagUnion {
    public static final LockingErrorTagUnion OTHER = new LockingErrorTagUnion().m10299c(Tag.OTHER);

    /* renamed from: a */
    public Tag f16848a;

    /* renamed from: b */
    public LockingErrorTag f16849b;

    /* renamed from: c */
    public GenericErrorTag f16850c;

    /* loaded from: classes4.dex */
    public enum Tag {
        LOCKING_ERROR,
        GENERIC_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.LockingErrorTagUnion$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2400a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16851a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16851a = iArr;
            try {
                iArr[Tag.LOCKING_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16851a[Tag.GENERIC_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16851a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.LockingErrorTagUnion$b */
    /* loaded from: classes4.dex */
    public static class C2401b extends UnionSerializer<LockingErrorTagUnion> {

        /* renamed from: b */
        public static final C2401b f16852b = new C2401b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LockingErrorTagUnion deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            LockingErrorTagUnion lockingErrorTagUnion;
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
            if ("locking_error".equals(readTag)) {
                StoneSerializer.expectField("locking_error", jsonParser);
                lockingErrorTagUnion = LockingErrorTagUnion.lockingError(LockingErrorTag.C2399b.f16847b.deserialize(jsonParser));
            } else if ("generic_error".equals(readTag)) {
                StoneSerializer.expectField("generic_error", jsonParser);
                lockingErrorTagUnion = LockingErrorTagUnion.genericError(GenericErrorTag.C2391b.f16835b.deserialize(jsonParser));
            } else {
                lockingErrorTagUnion = LockingErrorTagUnion.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return lockingErrorTagUnion;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LockingErrorTagUnion lockingErrorTagUnion, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2400a.f16851a[lockingErrorTagUnion.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("locking_error", jsonGenerator);
                jsonGenerator.writeFieldName("locking_error");
                LockingErrorTag.C2399b.f16847b.serialize(lockingErrorTagUnion.f16849b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("generic_error", jsonGenerator);
            jsonGenerator.writeFieldName("generic_error");
            GenericErrorTag.C2391b.f16835b.serialize(lockingErrorTagUnion.f16850c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static LockingErrorTagUnion genericError(GenericErrorTag genericErrorTag) {
        if (genericErrorTag != null) {
            return new LockingErrorTagUnion().m10300d(Tag.GENERIC_ERROR, genericErrorTag);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static LockingErrorTagUnion lockingError(LockingErrorTag lockingErrorTag) {
        if (lockingErrorTag != null) {
            return new LockingErrorTagUnion().m10301e(Tag.LOCKING_ERROR, lockingErrorTag);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final LockingErrorTagUnion m10299c(Tag tag) {
        LockingErrorTagUnion lockingErrorTagUnion = new LockingErrorTagUnion();
        lockingErrorTagUnion.f16848a = tag;
        return lockingErrorTagUnion;
    }

    /* renamed from: d */
    public final LockingErrorTagUnion m10300d(Tag tag, GenericErrorTag genericErrorTag) {
        LockingErrorTagUnion lockingErrorTagUnion = new LockingErrorTagUnion();
        lockingErrorTagUnion.f16848a = tag;
        lockingErrorTagUnion.f16850c = genericErrorTag;
        return lockingErrorTagUnion;
    }

    /* renamed from: e */
    public final LockingErrorTagUnion m10301e(Tag tag, LockingErrorTag lockingErrorTag) {
        LockingErrorTagUnion lockingErrorTagUnion = new LockingErrorTagUnion();
        lockingErrorTagUnion.f16848a = tag;
        lockingErrorTagUnion.f16849b = lockingErrorTag;
        return lockingErrorTagUnion;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof LockingErrorTagUnion)) {
            return false;
        }
        LockingErrorTagUnion lockingErrorTagUnion = (LockingErrorTagUnion) obj;
        Tag tag = this.f16848a;
        if (tag != lockingErrorTagUnion.f16848a) {
            return false;
        }
        int i = C2400a.f16851a[tag.ordinal()];
        if (i == 1) {
            LockingErrorTag lockingErrorTag = this.f16849b;
            LockingErrorTag lockingErrorTag2 = lockingErrorTagUnion.f16849b;
            return lockingErrorTag == lockingErrorTag2 || lockingErrorTag.equals(lockingErrorTag2);
        }
        if (i != 2) {
            return i == 3;
        }
        GenericErrorTag genericErrorTag = this.f16850c;
        GenericErrorTag genericErrorTag2 = lockingErrorTagUnion.f16850c;
        return genericErrorTag == genericErrorTag2 || genericErrorTag.equals(genericErrorTag2);
    }

    public GenericErrorTag getGenericErrorValue() {
        if (this.f16848a == Tag.GENERIC_ERROR) {
            return this.f16850c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GENERIC_ERROR, but was Tag." + this.f16848a.name());
    }

    public LockingErrorTag getLockingErrorValue() {
        if (this.f16848a == Tag.LOCKING_ERROR) {
            return this.f16849b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LOCKING_ERROR, but was Tag." + this.f16848a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16848a, this.f16849b, this.f16850c});
    }

    public boolean isGenericError() {
        return this.f16848a == Tag.GENERIC_ERROR;
    }

    public boolean isLockingError() {
        return this.f16848a == Tag.LOCKING_ERROR;
    }

    public boolean isOther() {
        return this.f16848a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f16848a;
    }

    public String toString() {
        return C2401b.f16852b.serialize((C2401b) this, false);
    }

    public String toStringMultiline() {
        return C2401b.f16852b.serialize((C2401b) this, true);
    }
}
