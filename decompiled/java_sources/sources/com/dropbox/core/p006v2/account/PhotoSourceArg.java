package com.dropbox.core.p006v2.account;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
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
public final class PhotoSourceArg {
    public static final PhotoSourceArg OTHER = new PhotoSourceArg().m10228b(Tag.OTHER);

    /* renamed from: a */
    public Tag f16789a;

    /* renamed from: b */
    public String f16790b;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<PhotoSourceArg> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public PhotoSourceArg deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PhotoSourceArg photoSourceArg;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if ("base64_data".equals(readTag)) {
                    StoneSerializer.expectField("base64_data", jsonParser);
                    photoSourceArg = PhotoSourceArg.base64Data(StoneSerializers.string().deserialize(jsonParser));
                } else {
                    photoSourceArg = PhotoSourceArg.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return photoSourceArg;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PhotoSourceArg photoSourceArg, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2366a.f16791a[photoSourceArg.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("base64_data", jsonGenerator);
            jsonGenerator.writeFieldName("base64_data");
            StoneSerializers.string().serialize((StoneSerializer<String>) photoSourceArg.f16790b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* loaded from: classes4.dex */
    public enum Tag {
        BASE64_DATA,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.account.PhotoSourceArg$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2366a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16791a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16791a = iArr;
            try {
                iArr[Tag.BASE64_DATA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16791a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static PhotoSourceArg base64Data(String str) {
        if (str != null) {
            return new PhotoSourceArg().m10229c(Tag.BASE64_DATA, str);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final PhotoSourceArg m10228b(Tag tag) {
        PhotoSourceArg photoSourceArg = new PhotoSourceArg();
        photoSourceArg.f16789a = tag;
        return photoSourceArg;
    }

    /* renamed from: c */
    public final PhotoSourceArg m10229c(Tag tag, String str) {
        PhotoSourceArg photoSourceArg = new PhotoSourceArg();
        photoSourceArg.f16789a = tag;
        photoSourceArg.f16790b = str;
        return photoSourceArg;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof PhotoSourceArg)) {
            return false;
        }
        PhotoSourceArg photoSourceArg = (PhotoSourceArg) obj;
        Tag tag = this.f16789a;
        if (tag != photoSourceArg.f16789a) {
            return false;
        }
        int i = C2366a.f16791a[tag.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        String str = this.f16790b;
        String str2 = photoSourceArg.f16790b;
        return str == str2 || str.equals(str2);
    }

    public String getBase64DataValue() {
        if (this.f16789a == Tag.BASE64_DATA) {
            return this.f16790b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.BASE64_DATA, but was Tag." + this.f16789a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16789a, this.f16790b});
    }

    public boolean isBase64Data() {
        return this.f16789a == Tag.BASE64_DATA;
    }

    public boolean isOther() {
        return this.f16789a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f16789a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
