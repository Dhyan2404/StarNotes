package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.Visibility;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes4.dex */
public class PathLinkMetadata extends LinkMetadata {
    protected final String path;

    /* renamed from: com.dropbox.core.v2.sharing.PathLinkMetadata$a */
    /* loaded from: classes4.dex */
    public static class C2903a extends StructSerializer<PathLinkMetadata> {

        /* renamed from: b */
        public static final C2903a f17884b = new C2903a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("path".equals(r1) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.sharing.PathLinkMetadata deserialize(com.fasterxml.jackson.core.JsonParser r7, boolean r8) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                r6 = this;
                java.lang.String r6 = "path"
                r0 = 0
                if (r8 != 0) goto L12
                com.dropbox.core.stone.StoneSerializer.expectStartObject(r7)
                java.lang.String r1 = com.dropbox.core.stone.CompositeSerializer.readTag(r7)
                boolean r2 = r6.equals(r1)
                if (r2 == 0) goto L13
            L12:
                r1 = r0
            L13:
                if (r1 != 0) goto La5
                r1 = r0
                r2 = r1
                r3 = r2
            L18:
                com.fasterxml.jackson.core.JsonToken r4 = r7.getCurrentToken()
                com.fasterxml.jackson.core.JsonToken r5 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r4 != r5) goto L75
                java.lang.String r4 = r7.getCurrentName()
                r7.nextToken()
                java.lang.String r5 = "url"
                boolean r5 = r5.equals(r4)
                if (r5 == 0) goto L3a
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.string()
                java.lang.Object r0 = r0.deserialize(r7)
                java.lang.String r0 = (java.lang.String) r0
                goto L18
            L3a:
                java.lang.String r5 = "visibility"
                boolean r5 = r5.equals(r4)
                if (r5 == 0) goto L49
                com.dropbox.core.v2.sharing.Visibility$b r1 = com.dropbox.core.p006v2.sharing.Visibility.C2982b.f18034b
                com.dropbox.core.v2.sharing.Visibility r1 = r1.deserialize(r7)
                goto L18
            L49:
                boolean r5 = r6.equals(r4)
                if (r5 == 0) goto L5a
                com.dropbox.core.stone.StoneSerializer r2 = com.dropbox.core.stone.StoneSerializers.string()
                java.lang.Object r2 = r2.deserialize(r7)
                java.lang.String r2 = (java.lang.String) r2
                goto L18
            L5a:
                java.lang.String r5 = "expires"
                boolean r4 = r5.equals(r4)
                if (r4 == 0) goto L71
                com.dropbox.core.stone.StoneSerializer r3 = com.dropbox.core.stone.StoneSerializers.timestamp()
                com.dropbox.core.stone.StoneSerializer r3 = com.dropbox.core.stone.StoneSerializers.nullable(r3)
                java.lang.Object r3 = r3.deserialize(r7)
                java.util.Date r3 = (java.util.Date) r3
                goto L18
            L71:
                com.dropbox.core.stone.StoneSerializer.skipValue(r7)
                goto L18
            L75:
                if (r0 == 0) goto L9d
                if (r1 == 0) goto L95
                if (r2 == 0) goto L8d
                com.dropbox.core.v2.sharing.PathLinkMetadata r6 = new com.dropbox.core.v2.sharing.PathLinkMetadata
                r6.<init>(r0, r1, r2, r3)
                if (r8 != 0) goto L85
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r7)
            L85:
                java.lang.String r7 = r6.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r6, r7)
                return r6
            L8d:
                com.fasterxml.jackson.core.JsonParseException r6 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.String r8 = "Required field \"path\" missing."
                r6.<init>(r7, r8)
                throw r6
            L95:
                com.fasterxml.jackson.core.JsonParseException r6 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.String r8 = "Required field \"visibility\" missing."
                r6.<init>(r7, r8)
                throw r6
            L9d:
                com.fasterxml.jackson.core.JsonParseException r6 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.String r8 = "Required field \"url\" missing."
                r6.<init>(r7, r8)
                throw r6
            La5:
                com.fasterxml.jackson.core.JsonParseException r6 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.StringBuilder r8 = new java.lang.StringBuilder
                r8.<init>()
                java.lang.String r0 = "No subtype found that matches tag: \""
                r8.append(r0)
                r8.append(r1)
                java.lang.String r0 = "\""
                r8.append(r0)
                java.lang.String r8 = r8.toString()
                r6.<init>(r7, r8)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.sharing.PathLinkMetadata.C2903a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.sharing.PathLinkMetadata");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PathLinkMetadata pathLinkMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("url");
            StoneSerializers.string().serialize((StoneSerializer<String>) pathLinkMetadata.url, jsonGenerator);
            jsonGenerator.writeFieldName("visibility");
            Visibility.C2982b.f18034b.serialize(pathLinkMetadata.visibility, jsonGenerator);
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) pathLinkMetadata.path, jsonGenerator);
            if (pathLinkMetadata.expires != null) {
                jsonGenerator.writeFieldName(ClientCookie.EXPIRES_ATTR);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) pathLinkMetadata.expires, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PathLinkMetadata(String str, Visibility visibility, String str2, Date date) {
        super(str, visibility, date);
        if (str2 != null) {
            this.path = str2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'path' is null");
    }

    @Override // com.dropbox.core.p006v2.sharing.LinkMetadata
    public boolean equals(Object obj) {
        Visibility visibility;
        Visibility visibility2;
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PathLinkMetadata pathLinkMetadata = (PathLinkMetadata) obj;
        String str3 = this.url;
        String str4 = pathLinkMetadata.url;
        if ((str3 == str4 || str3.equals(str4)) && (((visibility = this.visibility) == (visibility2 = pathLinkMetadata.visibility) || visibility.equals(visibility2)) && ((str = this.path) == (str2 = pathLinkMetadata.path) || str.equals(str2)))) {
            Date date = this.expires;
            Date date2 = pathLinkMetadata.expires;
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

    public String getPath() {
        return this.path;
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
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.path});
    }

    @Override // com.dropbox.core.p006v2.sharing.LinkMetadata
    public String toString() {
        return C2903a.f17884b.serialize((C2903a) this, false);
    }

    @Override // com.dropbox.core.p006v2.sharing.LinkMetadata
    public String toStringMultiline() {
        return C2903a.f17884b.serialize((C2903a) this, true);
    }

    public PathLinkMetadata(String str, Visibility visibility, String str2) {
        this(str, visibility, str2, null);
    }
}
