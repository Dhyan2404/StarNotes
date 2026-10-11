package com.dropbox.core.p006v2.clouddocs;

import com.dropbox.core.p006v2.clouddocs.GenericErrorTag;
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
public final class GetMetadataErrorTagUnion {
    public static final GetMetadataErrorTagUnion OTHER = new GetMetadataErrorTagUnion().m10285b(Tag.OTHER);

    /* renamed from: a */
    public Tag f16839a;

    /* renamed from: b */
    public GenericErrorTag f16840b;

    /* loaded from: classes4.dex */
    public enum Tag {
        GENERIC_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.GetMetadataErrorTagUnion$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2393a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16841a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16841a = iArr;
            try {
                iArr[Tag.GENERIC_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16841a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.GetMetadataErrorTagUnion$b */
    /* loaded from: classes4.dex */
    public static class C2394b extends UnionSerializer<GetMetadataErrorTagUnion> {

        /* renamed from: b */
        public static final C2394b f16842b = new C2394b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetMetadataErrorTagUnion deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GetMetadataErrorTagUnion getMetadataErrorTagUnion;
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
            if ("generic_error".equals(readTag)) {
                StoneSerializer.expectField("generic_error", jsonParser);
                getMetadataErrorTagUnion = GetMetadataErrorTagUnion.genericError(GenericErrorTag.C2391b.f16835b.deserialize(jsonParser));
            } else {
                getMetadataErrorTagUnion = GetMetadataErrorTagUnion.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return getMetadataErrorTagUnion;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetMetadataErrorTagUnion getMetadataErrorTagUnion, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2393a.f16841a[getMetadataErrorTagUnion.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("generic_error", jsonGenerator);
            jsonGenerator.writeFieldName("generic_error");
            GenericErrorTag.C2391b.f16835b.serialize(getMetadataErrorTagUnion.f16840b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static GetMetadataErrorTagUnion genericError(GenericErrorTag genericErrorTag) {
        if (genericErrorTag != null) {
            return new GetMetadataErrorTagUnion().m10286c(Tag.GENERIC_ERROR, genericErrorTag);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final GetMetadataErrorTagUnion m10285b(Tag tag) {
        GetMetadataErrorTagUnion getMetadataErrorTagUnion = new GetMetadataErrorTagUnion();
        getMetadataErrorTagUnion.f16839a = tag;
        return getMetadataErrorTagUnion;
    }

    /* renamed from: c */
    public final GetMetadataErrorTagUnion m10286c(Tag tag, GenericErrorTag genericErrorTag) {
        GetMetadataErrorTagUnion getMetadataErrorTagUnion = new GetMetadataErrorTagUnion();
        getMetadataErrorTagUnion.f16839a = tag;
        getMetadataErrorTagUnion.f16840b = genericErrorTag;
        return getMetadataErrorTagUnion;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GetMetadataErrorTagUnion)) {
            return false;
        }
        GetMetadataErrorTagUnion getMetadataErrorTagUnion = (GetMetadataErrorTagUnion) obj;
        Tag tag = this.f16839a;
        if (tag != getMetadataErrorTagUnion.f16839a) {
            return false;
        }
        int i = C2393a.f16841a[tag.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        GenericErrorTag genericErrorTag = this.f16840b;
        GenericErrorTag genericErrorTag2 = getMetadataErrorTagUnion.f16840b;
        return genericErrorTag == genericErrorTag2 || genericErrorTag.equals(genericErrorTag2);
    }

    public GenericErrorTag getGenericErrorValue() {
        if (this.f16839a == Tag.GENERIC_ERROR) {
            return this.f16840b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.GENERIC_ERROR, but was Tag." + this.f16839a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16839a, this.f16840b});
    }

    public boolean isGenericError() {
        return this.f16839a == Tag.GENERIC_ERROR;
    }

    public boolean isOther() {
        return this.f16839a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f16839a;
    }

    public String toString() {
        return C2394b.f16842b.serialize((C2394b) this, false);
    }

    public String toStringMultiline() {
        return C2394b.f16842b.serialize((C2394b) this, true);
    }
}
