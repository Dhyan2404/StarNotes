package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.Visibility;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Date;
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes4.dex */
public class CollectionLinkMetadata extends LinkMetadata {

    /* renamed from: com.dropbox.core.v2.sharing.CollectionLinkMetadata$a */
    /* loaded from: classes4.dex */
    public static class C2809a extends StructSerializer<CollectionLinkMetadata> {

        /* renamed from: b */
        public static final C2809a f17693b = new C2809a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("collection".equals(r0) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.sharing.CollectionLinkMetadata deserialize(com.fasterxml.jackson.core.JsonParser r5, boolean r6) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                r4 = this;
                r4 = 0
                if (r6 != 0) goto L12
                com.dropbox.core.stone.StoneSerializer.expectStartObject(r5)
                java.lang.String r0 = com.dropbox.core.stone.CompositeSerializer.readTag(r5)
                java.lang.String r1 = "collection"
                boolean r1 = r1.equals(r0)
                if (r1 == 0) goto L13
            L12:
                r0 = r4
            L13:
                if (r0 != 0) goto L89
                r0 = r4
                r1 = r0
            L17:
                com.fasterxml.jackson.core.JsonToken r2 = r5.getCurrentToken()
                com.fasterxml.jackson.core.JsonToken r3 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r2 != r3) goto L63
                java.lang.String r2 = r5.getCurrentName()
                r5.nextToken()
                java.lang.String r3 = "url"
                boolean r3 = r3.equals(r2)
                if (r3 == 0) goto L39
                com.dropbox.core.stone.StoneSerializer r4 = com.dropbox.core.stone.StoneSerializers.string()
                java.lang.Object r4 = r4.deserialize(r5)
                java.lang.String r4 = (java.lang.String) r4
                goto L17
            L39:
                java.lang.String r3 = "visibility"
                boolean r3 = r3.equals(r2)
                if (r3 == 0) goto L48
                com.dropbox.core.v2.sharing.Visibility$b r0 = com.dropbox.core.p006v2.sharing.Visibility.C2982b.f18034b
                com.dropbox.core.v2.sharing.Visibility r0 = r0.deserialize(r5)
                goto L17
            L48:
                java.lang.String r3 = "expires"
                boolean r2 = r3.equals(r2)
                if (r2 == 0) goto L5f
                com.dropbox.core.stone.StoneSerializer r1 = com.dropbox.core.stone.StoneSerializers.timestamp()
                com.dropbox.core.stone.StoneSerializer r1 = com.dropbox.core.stone.StoneSerializers.nullable(r1)
                java.lang.Object r1 = r1.deserialize(r5)
                java.util.Date r1 = (java.util.Date) r1
                goto L17
            L5f:
                com.dropbox.core.stone.StoneSerializer.skipValue(r5)
                goto L17
            L63:
                if (r4 == 0) goto L81
                if (r0 == 0) goto L79
                com.dropbox.core.v2.sharing.CollectionLinkMetadata r2 = new com.dropbox.core.v2.sharing.CollectionLinkMetadata
                r2.<init>(r4, r0, r1)
                if (r6 != 0) goto L71
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r5)
            L71:
                java.lang.String r4 = r2.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r2, r4)
                return r2
            L79:
                com.fasterxml.jackson.core.JsonParseException r4 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.String r6 = "Required field \"visibility\" missing."
                r4.<init>(r5, r6)
                throw r4
            L81:
                com.fasterxml.jackson.core.JsonParseException r4 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.String r6 = "Required field \"url\" missing."
                r4.<init>(r5, r6)
                throw r4
            L89:
                com.fasterxml.jackson.core.JsonParseException r4 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.StringBuilder r6 = new java.lang.StringBuilder
                r6.<init>()
                java.lang.String r1 = "No subtype found that matches tag: \""
                r6.append(r1)
                r6.append(r0)
                java.lang.String r0 = "\""
                r6.append(r0)
                java.lang.String r6 = r6.toString()
                r4.<init>(r5, r6)
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.sharing.CollectionLinkMetadata.C2809a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.sharing.CollectionLinkMetadata");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CollectionLinkMetadata collectionLinkMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("collection", jsonGenerator);
            jsonGenerator.writeFieldName("url");
            StoneSerializers.string().serialize((StoneSerializer<String>) collectionLinkMetadata.url, jsonGenerator);
            jsonGenerator.writeFieldName("visibility");
            Visibility.C2982b.f18034b.serialize(collectionLinkMetadata.visibility, jsonGenerator);
            if (collectionLinkMetadata.expires != null) {
                jsonGenerator.writeFieldName(ClientCookie.EXPIRES_ATTR);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) collectionLinkMetadata.expires, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public CollectionLinkMetadata(String str, Visibility visibility, Date date) {
        super(str, visibility, date);
    }

    @Override // com.dropbox.core.p006v2.sharing.LinkMetadata
    public boolean equals(Object obj) {
        Visibility visibility;
        Visibility visibility2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        CollectionLinkMetadata collectionLinkMetadata = (CollectionLinkMetadata) obj;
        String str = this.url;
        String str2 = collectionLinkMetadata.url;
        if ((str == str2 || str.equals(str2)) && ((visibility = this.visibility) == (visibility2 = collectionLinkMetadata.visibility) || visibility.equals(visibility2))) {
            Date date = this.expires;
            Date date2 = collectionLinkMetadata.expires;
            if (date == date2) {
                return true;
            }
            if (date != null && date.equals(date2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.sharing.LinkMetadata
    public Date getExpires() {
        return this.expires;
    }

    @Override // com.dropbox.core.p006v2.sharing.LinkMetadata
    public String getUrl() {
        return this.url;
    }

    @Override // com.dropbox.core.p006v2.sharing.LinkMetadata
    public Visibility getVisibility() {
        return this.visibility;
    }

    @Override // com.dropbox.core.p006v2.sharing.LinkMetadata
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.p006v2.sharing.LinkMetadata
    public String toString() {
        return C2809a.f17693b.serialize((C2809a) this, false);
    }

    @Override // com.dropbox.core.p006v2.sharing.LinkMetadata
    public String toStringMultiline() {
        return C2809a.f17693b.serialize((C2809a) this, true);
    }

    public CollectionLinkMetadata(String str, Visibility visibility) {
        this(str, visibility, null);
    }
}
