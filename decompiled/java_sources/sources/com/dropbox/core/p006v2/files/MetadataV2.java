package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.Metadata;
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
public final class MetadataV2 {
    public static final MetadataV2 OTHER = new MetadataV2().m10895b(Tag.OTHER);

    /* renamed from: a */
    public Tag f17265a;

    /* renamed from: b */
    public Metadata f17266b;

    /* loaded from: classes4.dex */
    public enum Tag {
        METADATA,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.MetadataV2$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2597a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17267a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17267a = iArr;
            try {
                iArr[Tag.METADATA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17267a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.MetadataV2$b */
    /* loaded from: classes4.dex */
    public static class C2598b extends UnionSerializer<MetadataV2> {

        /* renamed from: b */
        public static final C2598b f17268b = new C2598b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MetadataV2 deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            MetadataV2 metadataV2;
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
            if ("metadata".equals(readTag)) {
                StoneSerializer.expectField("metadata", jsonParser);
                metadataV2 = MetadataV2.metadata(Metadata.C2596a.f17264b.deserialize(jsonParser));
            } else {
                metadataV2 = MetadataV2.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return metadataV2;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MetadataV2 metadataV2, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2597a.f17267a[metadataV2.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("metadata", jsonGenerator);
            jsonGenerator.writeFieldName("metadata");
            Metadata.C2596a.f17264b.serialize((Metadata.C2596a) metadataV2.f17266b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static MetadataV2 metadata(Metadata metadata) {
        if (metadata != null) {
            return new MetadataV2().m10896c(Tag.METADATA, metadata);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final MetadataV2 m10895b(Tag tag) {
        MetadataV2 metadataV2 = new MetadataV2();
        metadataV2.f17265a = tag;
        return metadataV2;
    }

    /* renamed from: c */
    public final MetadataV2 m10896c(Tag tag, Metadata metadata) {
        MetadataV2 metadataV2 = new MetadataV2();
        metadataV2.f17265a = tag;
        metadataV2.f17266b = metadata;
        return metadataV2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof MetadataV2)) {
            return false;
        }
        MetadataV2 metadataV2 = (MetadataV2) obj;
        Tag tag = this.f17265a;
        if (tag != metadataV2.f17265a) {
            return false;
        }
        int i = C2597a.f17267a[tag.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        Metadata metadata = this.f17266b;
        Metadata metadata2 = metadataV2.f17266b;
        return metadata == metadata2 || metadata.equals(metadata2);
    }

    public Metadata getMetadataValue() {
        if (this.f17265a == Tag.METADATA) {
            return this.f17266b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.METADATA, but was Tag." + this.f17265a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17265a, this.f17266b});
    }

    public boolean isMetadata() {
        return this.f17265a == Tag.METADATA;
    }

    public boolean isOther() {
        return this.f17265a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17265a;
    }

    public String toString() {
        return C2598b.f17268b.serialize((C2598b) this, false);
    }

    public String toStringMultiline() {
        return C2598b.f17268b.serialize((C2598b) this, true);
    }
}
