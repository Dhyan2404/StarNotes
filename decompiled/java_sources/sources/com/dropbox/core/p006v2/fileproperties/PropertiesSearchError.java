package com.dropbox.core.p006v2.fileproperties;

import com.dropbox.core.p006v2.fileproperties.LookUpPropertiesError;
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
public final class PropertiesSearchError {
    public static final PropertiesSearchError OTHER = new PropertiesSearchError().m10416b(Tag.OTHER);

    /* renamed from: a */
    public Tag f16926a;

    /* renamed from: b */
    public LookUpPropertiesError f16927b;

    /* loaded from: classes4.dex */
    public enum Tag {
        PROPERTY_GROUP_LOOKUP,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.PropertiesSearchError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2437a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16928a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16928a = iArr;
            try {
                iArr[Tag.PROPERTY_GROUP_LOOKUP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16928a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.PropertiesSearchError$b */
    /* loaded from: classes4.dex */
    public static class C2438b extends UnionSerializer<PropertiesSearchError> {

        /* renamed from: b */
        public static final C2438b f16929b = new C2438b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PropertiesSearchError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PropertiesSearchError propertiesSearchError;
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
            if ("property_group_lookup".equals(readTag)) {
                StoneSerializer.expectField("property_group_lookup", jsonParser);
                propertiesSearchError = PropertiesSearchError.propertyGroupLookup(LookUpPropertiesError.Serializer.INSTANCE.deserialize(jsonParser));
            } else {
                propertiesSearchError = PropertiesSearchError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return propertiesSearchError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PropertiesSearchError propertiesSearchError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2437a.f16928a[propertiesSearchError.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("property_group_lookup", jsonGenerator);
            jsonGenerator.writeFieldName("property_group_lookup");
            LookUpPropertiesError.Serializer.INSTANCE.serialize(propertiesSearchError.f16927b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static PropertiesSearchError propertyGroupLookup(LookUpPropertiesError lookUpPropertiesError) {
        if (lookUpPropertiesError != null) {
            return new PropertiesSearchError().m10417c(Tag.PROPERTY_GROUP_LOOKUP, lookUpPropertiesError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final PropertiesSearchError m10416b(Tag tag) {
        PropertiesSearchError propertiesSearchError = new PropertiesSearchError();
        propertiesSearchError.f16926a = tag;
        return propertiesSearchError;
    }

    /* renamed from: c */
    public final PropertiesSearchError m10417c(Tag tag, LookUpPropertiesError lookUpPropertiesError) {
        PropertiesSearchError propertiesSearchError = new PropertiesSearchError();
        propertiesSearchError.f16926a = tag;
        propertiesSearchError.f16927b = lookUpPropertiesError;
        return propertiesSearchError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof PropertiesSearchError)) {
            return false;
        }
        PropertiesSearchError propertiesSearchError = (PropertiesSearchError) obj;
        Tag tag = this.f16926a;
        if (tag != propertiesSearchError.f16926a) {
            return false;
        }
        int i = C2437a.f16928a[tag.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        LookUpPropertiesError lookUpPropertiesError = this.f16927b;
        LookUpPropertiesError lookUpPropertiesError2 = propertiesSearchError.f16927b;
        return lookUpPropertiesError == lookUpPropertiesError2 || lookUpPropertiesError.equals(lookUpPropertiesError2);
    }

    public LookUpPropertiesError getPropertyGroupLookupValue() {
        if (this.f16926a == Tag.PROPERTY_GROUP_LOOKUP) {
            return this.f16927b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PROPERTY_GROUP_LOOKUP, but was Tag." + this.f16926a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16926a, this.f16927b});
    }

    public boolean isOther() {
        return this.f16926a == Tag.OTHER;
    }

    public boolean isPropertyGroupLookup() {
        return this.f16926a == Tag.PROPERTY_GROUP_LOOKUP;
    }

    public Tag tag() {
        return this.f16926a;
    }

    public String toString() {
        return C2438b.f16929b.serialize((C2438b) this, false);
    }

    public String toStringMultiline() {
        return C2438b.f16929b.serialize((C2438b) this, true);
    }
}
