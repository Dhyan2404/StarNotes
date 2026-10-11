package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.CollectionLinkMetadata;
import com.dropbox.core.p006v2.sharing.PathLinkMetadata;
import com.dropbox.core.p006v2.sharing.Visibility;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes4.dex */
public class LinkMetadata {
    protected final Date expires;
    protected final String url;
    protected final Visibility visibility;

    /* renamed from: com.dropbox.core.v2.sharing.LinkMetadata$a */
    /* loaded from: classes4.dex */
    public static class C2860a extends StructSerializer<LinkMetadata> {

        /* renamed from: b */
        public static final C2860a f17790b = new C2860a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("".equals(r1) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.sharing.LinkMetadata deserialize(com.fasterxml.jackson.core.JsonParser r5, boolean r6) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                r4 = this;
                java.lang.String r4 = ""
                r0 = 0
                if (r6 != 0) goto L12
                com.dropbox.core.stone.StoneSerializer.expectStartObject(r5)
                java.lang.String r1 = com.dropbox.core.stone.CompositeSerializer.readTag(r5)
                boolean r2 = r4.equals(r1)
                if (r2 == 0) goto L13
            L12:
                r1 = r0
            L13:
                if (r1 != 0) goto L7d
                r4 = r0
                r1 = r4
            L17:
                com.fasterxml.jackson.core.JsonToken r2 = r5.getCurrentToken()
                com.fasterxml.jackson.core.JsonToken r3 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r2 != r3) goto L63
                java.lang.String r2 = r5.getCurrentName()
                r5.nextToken()
                java.lang.String r3 = "url"
                boolean r3 = r3.equals(r2)
                if (r3 == 0) goto L39
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.string()
                java.lang.Object r0 = r0.deserialize(r5)
                java.lang.String r0 = (java.lang.String) r0
                goto L17
            L39:
                java.lang.String r3 = "visibility"
                boolean r3 = r3.equals(r2)
                if (r3 == 0) goto L48
                com.dropbox.core.v2.sharing.Visibility$b r4 = com.dropbox.core.p006v2.sharing.Visibility.C2982b.f18034b
                com.dropbox.core.v2.sharing.Visibility r4 = r4.deserialize(r5)
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
                if (r0 == 0) goto L75
                if (r4 == 0) goto L6d
                com.dropbox.core.v2.sharing.LinkMetadata r2 = new com.dropbox.core.v2.sharing.LinkMetadata
                r2.<init>(r0, r4, r1)
                goto La8
            L6d:
                com.fasterxml.jackson.core.JsonParseException r4 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.String r6 = "Required field \"visibility\" missing."
                r4.<init>(r5, r6)
                throw r4
            L75:
                com.fasterxml.jackson.core.JsonParseException r4 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.String r6 = "Required field \"url\" missing."
                r4.<init>(r5, r6)
                throw r4
            L7d:
                boolean r4 = r4.equals(r1)
                r0 = 1
                if (r4 == 0) goto L8b
                com.dropbox.core.v2.sharing.LinkMetadata$a r4 = com.dropbox.core.p006v2.sharing.LinkMetadata.C2860a.f17790b
                com.dropbox.core.v2.sharing.LinkMetadata r2 = r4.deserialize(r5, r0)
                goto La8
            L8b:
                java.lang.String r4 = "path"
                boolean r4 = r4.equals(r1)
                if (r4 == 0) goto L9a
                com.dropbox.core.v2.sharing.PathLinkMetadata$a r4 = com.dropbox.core.p006v2.sharing.PathLinkMetadata.C2903a.f17884b
                com.dropbox.core.v2.sharing.PathLinkMetadata r2 = r4.deserialize(r5, r0)
                goto La8
            L9a:
                java.lang.String r4 = "collection"
                boolean r4 = r4.equals(r1)
                if (r4 == 0) goto Lb5
                com.dropbox.core.v2.sharing.CollectionLinkMetadata$a r4 = com.dropbox.core.p006v2.sharing.CollectionLinkMetadata.C2809a.f17693b
                com.dropbox.core.v2.sharing.CollectionLinkMetadata r2 = r4.deserialize(r5, r0)
            La8:
                if (r6 != 0) goto Lad
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r5)
            Lad:
                java.lang.String r4 = r2.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r2, r4)
                return r2
            Lb5:
                com.fasterxml.jackson.core.JsonParseException r4 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.StringBuilder r6 = new java.lang.StringBuilder
                r6.<init>()
                java.lang.String r0 = "No subtype found that matches tag: \""
                r6.append(r0)
                r6.append(r1)
                java.lang.String r0 = "\""
                r6.append(r0)
                java.lang.String r6 = r6.toString()
                r4.<init>(r5, r6)
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.sharing.LinkMetadata.C2860a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.sharing.LinkMetadata");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LinkMetadata linkMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (linkMetadata instanceof PathLinkMetadata) {
                PathLinkMetadata.C2903a.f17884b.serialize((PathLinkMetadata) linkMetadata, jsonGenerator, z);
                return;
            }
            if (linkMetadata instanceof CollectionLinkMetadata) {
                CollectionLinkMetadata.C2809a.f17693b.serialize((CollectionLinkMetadata) linkMetadata, jsonGenerator, z);
                return;
            }
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("url");
            StoneSerializers.string().serialize((StoneSerializer<String>) linkMetadata.url, jsonGenerator);
            jsonGenerator.writeFieldName("visibility");
            Visibility.C2982b.f18034b.serialize(linkMetadata.visibility, jsonGenerator);
            if (linkMetadata.expires != null) {
                jsonGenerator.writeFieldName(ClientCookie.EXPIRES_ATTR);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) linkMetadata.expires, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LinkMetadata(String str, Visibility visibility, Date date) {
        if (str != null) {
            this.url = str;
            if (visibility != null) {
                this.visibility = visibility;
                this.expires = LangUtil.truncateMillis(date);
                return;
            }
            throw new IllegalArgumentException("Required value for 'visibility' is null");
        }
        throw new IllegalArgumentException("Required value for 'url' is null");
    }

    public boolean equals(Object obj) {
        Visibility visibility;
        Visibility visibility2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        LinkMetadata linkMetadata = (LinkMetadata) obj;
        String str = this.url;
        String str2 = linkMetadata.url;
        if ((str == str2 || str.equals(str2)) && ((visibility = this.visibility) == (visibility2 = linkMetadata.visibility) || visibility.equals(visibility2))) {
            Date date = this.expires;
            Date date2 = linkMetadata.expires;
            if (date == date2) {
                return true;
            }
            if (date != null && date.equals(date2)) {
                return true;
            }
        }
        return false;
    }

    public Date getExpires() {
        return this.expires;
    }

    public String getUrl() {
        return this.url;
    }

    public Visibility getVisibility() {
        return this.visibility;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.url, this.visibility, this.expires});
    }

    public String toString() {
        return C2860a.f17790b.serialize((C2860a) this, false);
    }

    public String toStringMultiline() {
        return C2860a.f17790b.serialize((C2860a) this, true);
    }

    public LinkMetadata(String str, Visibility visibility) {
        this(str, visibility, null);
    }
}
