package com.dropbox.core.p006v2.common;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;

/* loaded from: classes4.dex */
public class UserRootInfo extends RootInfo {

    /* renamed from: com.dropbox.core.v2.common.UserRootInfo$a */
    /* loaded from: classes4.dex */
    public static class C2423a extends StructSerializer<UserRootInfo> {

        /* renamed from: b */
        public static final C2423a f16896b = new C2423a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("user".equals(r0) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.common.UserRootInfo deserialize(com.fasterxml.jackson.core.JsonParser r4, boolean r5) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                r3 = this;
                r3 = 0
                if (r5 != 0) goto L12
                com.dropbox.core.stone.StoneSerializer.expectStartObject(r4)
                java.lang.String r0 = com.dropbox.core.stone.CompositeSerializer.readTag(r4)
                java.lang.String r1 = "user"
                boolean r1 = r1.equals(r0)
                if (r1 == 0) goto L13
            L12:
                r0 = r3
            L13:
                if (r0 != 0) goto L75
                r0 = r3
            L16:
                com.fasterxml.jackson.core.JsonToken r1 = r4.getCurrentToken()
                com.fasterxml.jackson.core.JsonToken r2 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r1 != r2) goto L4f
                java.lang.String r1 = r4.getCurrentName()
                r4.nextToken()
                java.lang.String r2 = "root_namespace_id"
                boolean r2 = r2.equals(r1)
                if (r2 == 0) goto L38
                com.dropbox.core.stone.StoneSerializer r3 = com.dropbox.core.stone.StoneSerializers.string()
                java.lang.Object r3 = r3.deserialize(r4)
                java.lang.String r3 = (java.lang.String) r3
                goto L16
            L38:
                java.lang.String r2 = "home_namespace_id"
                boolean r1 = r2.equals(r1)
                if (r1 == 0) goto L4b
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.string()
                java.lang.Object r0 = r0.deserialize(r4)
                java.lang.String r0 = (java.lang.String) r0
                goto L16
            L4b:
                com.dropbox.core.stone.StoneSerializer.skipValue(r4)
                goto L16
            L4f:
                if (r3 == 0) goto L6d
                if (r0 == 0) goto L65
                com.dropbox.core.v2.common.UserRootInfo r1 = new com.dropbox.core.v2.common.UserRootInfo
                r1.<init>(r3, r0)
                if (r5 != 0) goto L5d
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r4)
            L5d:
                java.lang.String r3 = r1.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r1, r3)
                return r1
            L65:
                com.fasterxml.jackson.core.JsonParseException r3 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.String r5 = "Required field \"home_namespace_id\" missing."
                r3.<init>(r4, r5)
                throw r3
            L6d:
                com.fasterxml.jackson.core.JsonParseException r3 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.String r5 = "Required field \"root_namespace_id\" missing."
                r3.<init>(r4, r5)
                throw r3
            L75:
                com.fasterxml.jackson.core.JsonParseException r3 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>()
                java.lang.String r1 = "No subtype found that matches tag: \""
                r5.append(r1)
                r5.append(r0)
                java.lang.String r0 = "\""
                r5.append(r0)
                java.lang.String r5 = r5.toString()
                r3.<init>(r4, r5)
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.common.UserRootInfo.C2423a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.common.UserRootInfo");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserRootInfo userRootInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("user", jsonGenerator);
            jsonGenerator.writeFieldName("root_namespace_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) userRootInfo.rootNamespaceId, jsonGenerator);
            jsonGenerator.writeFieldName("home_namespace_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) userRootInfo.homeNamespaceId, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UserRootInfo(String str, String str2) {
        super(str, str2);
    }

    @Override // com.dropbox.core.p006v2.common.RootInfo
    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UserRootInfo userRootInfo = (UserRootInfo) obj;
        String str3 = this.rootNamespaceId;
        String str4 = userRootInfo.rootNamespaceId;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.homeNamespaceId) == (str2 = userRootInfo.homeNamespaceId) || str.equals(str2));
    }

    @Override // com.dropbox.core.p006v2.common.RootInfo
    public String getHomeNamespaceId() {
        return this.homeNamespaceId;
    }

    @Override // com.dropbox.core.p006v2.common.RootInfo
    public String getRootNamespaceId() {
        return this.rootNamespaceId;
    }

    @Override // com.dropbox.core.p006v2.common.RootInfo
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.p006v2.common.RootInfo
    public String toString() {
        return C2423a.f16896b.serialize((C2423a) this, false);
    }

    @Override // com.dropbox.core.p006v2.common.RootInfo
    public String toStringMultiline() {
        return C2423a.f16896b.serialize((C2423a) this, true);
    }
}
