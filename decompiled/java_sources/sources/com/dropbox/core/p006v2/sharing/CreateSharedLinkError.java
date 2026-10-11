package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.files.LookupError;
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
public final class CreateSharedLinkError {
    public static final CreateSharedLinkError OTHER = new CreateSharedLinkError().m11505b(Tag.OTHER);

    /* renamed from: a */
    public Tag f17700a;

    /* renamed from: b */
    public LookupError f17701b;

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.CreateSharedLinkError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2811a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17702a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17702a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17702a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.CreateSharedLinkError$b */
    /* loaded from: classes4.dex */
    public static class C2812b extends UnionSerializer<CreateSharedLinkError> {

        /* renamed from: b */
        public static final C2812b f17703b = new C2812b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CreateSharedLinkError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            CreateSharedLinkError createSharedLinkError;
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
                createSharedLinkError = CreateSharedLinkError.path(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else {
                createSharedLinkError = CreateSharedLinkError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return createSharedLinkError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CreateSharedLinkError createSharedLinkError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2811a.f17702a[createSharedLinkError.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            LookupError.Serializer.INSTANCE.serialize(createSharedLinkError.f17701b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static CreateSharedLinkError path(LookupError lookupError) {
        if (lookupError != null) {
            return new CreateSharedLinkError().m11506c(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final CreateSharedLinkError m11505b(Tag tag) {
        CreateSharedLinkError createSharedLinkError = new CreateSharedLinkError();
        createSharedLinkError.f17700a = tag;
        return createSharedLinkError;
    }

    /* renamed from: c */
    public final CreateSharedLinkError m11506c(Tag tag, LookupError lookupError) {
        CreateSharedLinkError createSharedLinkError = new CreateSharedLinkError();
        createSharedLinkError.f17700a = tag;
        createSharedLinkError.f17701b = lookupError;
        return createSharedLinkError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateSharedLinkError)) {
            return false;
        }
        CreateSharedLinkError createSharedLinkError = (CreateSharedLinkError) obj;
        Tag tag = this.f17700a;
        if (tag != createSharedLinkError.f17700a) {
            return false;
        }
        int i = C2811a.f17702a[tag.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        LookupError lookupError = this.f17701b;
        LookupError lookupError2 = createSharedLinkError.f17701b;
        return lookupError == lookupError2 || lookupError.equals(lookupError2);
    }

    public LookupError getPathValue() {
        if (this.f17700a == Tag.PATH) {
            return this.f17701b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17700a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17700a, this.f17701b});
    }

    public boolean isOther() {
        return this.f17700a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17700a == Tag.PATH;
    }

    public Tag tag() {
        return this.f17700a;
    }

    public String toString() {
        return C2812b.f17703b.serialize((C2812b) this, false);
    }

    public String toStringMultiline() {
        return C2812b.f17703b.serialize((C2812b) this, true);
    }
}
