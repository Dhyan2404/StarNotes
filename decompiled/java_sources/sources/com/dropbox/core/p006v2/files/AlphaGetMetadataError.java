package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.fileproperties.LookUpPropertiesError;
import com.dropbox.core.p006v2.files.LookupError;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class AlphaGetMetadataError {

    /* renamed from: a */
    public Tag f17035a;

    /* renamed from: b */
    public LookupError f17036b;

    /* renamed from: c */
    public LookUpPropertiesError f17037c;

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        PROPERTIES_ERROR
    }

    /* renamed from: com.dropbox.core.v2.files.AlphaGetMetadataError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2493a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17038a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17038a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17038a[Tag.PROPERTIES_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.AlphaGetMetadataError$b */
    /* loaded from: classes4.dex */
    public static class C2494b extends UnionSerializer<AlphaGetMetadataError> {

        /* renamed from: b */
        public static final C2494b f17039b = new C2494b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AlphaGetMetadataError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            AlphaGetMetadataError propertiesError;
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
                propertiesError = AlphaGetMetadataError.path(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else {
                if (!"properties_error".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("properties_error", jsonParser);
                propertiesError = AlphaGetMetadataError.propertiesError(LookUpPropertiesError.Serializer.INSTANCE.deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return propertiesError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AlphaGetMetadataError alphaGetMetadataError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2493a.f17038a[alphaGetMetadataError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                LookupError.Serializer.INSTANCE.serialize(alphaGetMetadataError.f17036b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + alphaGetMetadataError.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("properties_error", jsonGenerator);
            jsonGenerator.writeFieldName("properties_error");
            LookUpPropertiesError.Serializer.INSTANCE.serialize(alphaGetMetadataError.f17037c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static AlphaGetMetadataError path(LookupError lookupError) {
        if (lookupError != null) {
            return new AlphaGetMetadataError().m10568d(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static AlphaGetMetadataError propertiesError(LookUpPropertiesError lookUpPropertiesError) {
        if (lookUpPropertiesError != null) {
            return new AlphaGetMetadataError().m10569e(Tag.PROPERTIES_ERROR, lookUpPropertiesError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final AlphaGetMetadataError m10567c(Tag tag) {
        AlphaGetMetadataError alphaGetMetadataError = new AlphaGetMetadataError();
        alphaGetMetadataError.f17035a = tag;
        return alphaGetMetadataError;
    }

    /* renamed from: d */
    public final AlphaGetMetadataError m10568d(Tag tag, LookupError lookupError) {
        AlphaGetMetadataError alphaGetMetadataError = new AlphaGetMetadataError();
        alphaGetMetadataError.f17035a = tag;
        alphaGetMetadataError.f17036b = lookupError;
        return alphaGetMetadataError;
    }

    /* renamed from: e */
    public final AlphaGetMetadataError m10569e(Tag tag, LookUpPropertiesError lookUpPropertiesError) {
        AlphaGetMetadataError alphaGetMetadataError = new AlphaGetMetadataError();
        alphaGetMetadataError.f17035a = tag;
        alphaGetMetadataError.f17037c = lookUpPropertiesError;
        return alphaGetMetadataError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof AlphaGetMetadataError)) {
            return false;
        }
        AlphaGetMetadataError alphaGetMetadataError = (AlphaGetMetadataError) obj;
        Tag tag = this.f17035a;
        if (tag != alphaGetMetadataError.f17035a) {
            return false;
        }
        int i = C2493a.f17038a[tag.ordinal()];
        if (i == 1) {
            LookupError lookupError = this.f17036b;
            LookupError lookupError2 = alphaGetMetadataError.f17036b;
            return lookupError == lookupError2 || lookupError.equals(lookupError2);
        }
        if (i != 2) {
            return false;
        }
        LookUpPropertiesError lookUpPropertiesError = this.f17037c;
        LookUpPropertiesError lookUpPropertiesError2 = alphaGetMetadataError.f17037c;
        return lookUpPropertiesError == lookUpPropertiesError2 || lookUpPropertiesError.equals(lookUpPropertiesError2);
    }

    public LookupError getPathValue() {
        if (this.f17035a == Tag.PATH) {
            return this.f17036b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17035a.name());
    }

    public LookUpPropertiesError getPropertiesErrorValue() {
        if (this.f17035a == Tag.PROPERTIES_ERROR) {
            return this.f17037c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PROPERTIES_ERROR, but was Tag." + this.f17035a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17035a, this.f17036b, this.f17037c});
    }

    public boolean isPath() {
        return this.f17035a == Tag.PATH;
    }

    public boolean isPropertiesError() {
        return this.f17035a == Tag.PROPERTIES_ERROR;
    }

    public Tag tag() {
        return this.f17035a;
    }

    public String toString() {
        return C2494b.f17039b.serialize((C2494b) this, false);
    }

    public String toStringMultiline() {
        return C2494b.f17039b.serialize((C2494b) this, true);
    }
}
