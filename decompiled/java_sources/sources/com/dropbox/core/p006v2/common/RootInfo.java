package com.dropbox.core.p006v2.common;

import com.dropbox.core.p006v2.common.TeamRootInfo;
import com.dropbox.core.p006v2.common.UserRootInfo;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class RootInfo {
    protected final String homeNamespaceId;
    protected final String rootNamespaceId;

    /* loaded from: classes4.dex */
    public static class Serializer extends StructSerializer<RootInfo> {
        public static final Serializer INSTANCE = new Serializer();

        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("".equals(r1) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.common.RootInfo deserialize(com.fasterxml.jackson.core.JsonParser r4, boolean r5) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                r3 = this;
                java.lang.String r3 = ""
                r0 = 0
                if (r5 != 0) goto L12
                com.dropbox.core.stone.StoneSerializer.expectStartObject(r4)
                java.lang.String r1 = com.dropbox.core.stone.CompositeSerializer.readTag(r4)
                boolean r2 = r3.equals(r1)
                if (r2 == 0) goto L13
            L12:
                r1 = r0
            L13:
                if (r1 != 0) goto L69
                r3 = r0
            L16:
                com.fasterxml.jackson.core.JsonToken r1 = r4.getCurrentToken()
                com.fasterxml.jackson.core.JsonToken r2 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r1 != r2) goto L4f
                java.lang.String r1 = r4.getCurrentName()
                r4.nextToken()
                java.lang.String r2 = "root_namespace_id"
                boolean r2 = r2.equals(r1)
                if (r2 == 0) goto L38
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.string()
                java.lang.Object r0 = r0.deserialize(r4)
                java.lang.String r0 = (java.lang.String) r0
                goto L16
            L38:
                java.lang.String r2 = "home_namespace_id"
                boolean r1 = r2.equals(r1)
                if (r1 == 0) goto L4b
                com.dropbox.core.stone.StoneSerializer r3 = com.dropbox.core.stone.StoneSerializers.string()
                java.lang.Object r3 = r3.deserialize(r4)
                java.lang.String r3 = (java.lang.String) r3
                goto L16
            L4b:
                com.dropbox.core.stone.StoneSerializer.skipValue(r4)
                goto L16
            L4f:
                if (r0 == 0) goto L61
                if (r3 == 0) goto L59
                com.dropbox.core.v2.common.RootInfo r1 = new com.dropbox.core.v2.common.RootInfo
                r1.<init>(r0, r3)
                goto L94
            L59:
                com.fasterxml.jackson.core.JsonParseException r3 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.String r5 = "Required field \"home_namespace_id\" missing."
                r3.<init>(r4, r5)
                throw r3
            L61:
                com.fasterxml.jackson.core.JsonParseException r3 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.String r5 = "Required field \"root_namespace_id\" missing."
                r3.<init>(r4, r5)
                throw r3
            L69:
                boolean r3 = r3.equals(r1)
                r0 = 1
                if (r3 == 0) goto L77
                com.dropbox.core.v2.common.RootInfo$Serializer r3 = com.dropbox.core.v2.common.RootInfo.Serializer.INSTANCE
                com.dropbox.core.v2.common.RootInfo r1 = r3.deserialize(r4, r0)
                goto L94
            L77:
                java.lang.String r3 = "team"
                boolean r3 = r3.equals(r1)
                if (r3 == 0) goto L86
                com.dropbox.core.v2.common.TeamRootInfo$a r3 = com.dropbox.core.p006v2.common.TeamRootInfo.C2422a.f16895b
                com.dropbox.core.v2.common.TeamRootInfo r1 = r3.deserialize(r4, r0)
                goto L94
            L86:
                java.lang.String r3 = "user"
                boolean r3 = r3.equals(r1)
                if (r3 == 0) goto La1
                com.dropbox.core.v2.common.UserRootInfo$a r3 = com.dropbox.core.p006v2.common.UserRootInfo.C2423a.f16896b
                com.dropbox.core.v2.common.UserRootInfo r1 = r3.deserialize(r4, r0)
            L94:
                if (r5 != 0) goto L99
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r4)
            L99:
                java.lang.String r3 = r1.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r1, r3)
                return r1
            La1:
                com.fasterxml.jackson.core.JsonParseException r3 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>()
                java.lang.String r0 = "No subtype found that matches tag: \""
                r5.append(r0)
                r5.append(r1)
                java.lang.String r0 = "\""
                r5.append(r0)
                java.lang.String r5 = r5.toString()
                r3.<init>(r4, r5)
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v2.common.RootInfo.Serializer.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.common.RootInfo");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RootInfo rootInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (rootInfo instanceof TeamRootInfo) {
                TeamRootInfo.C2422a.f16895b.serialize((TeamRootInfo) rootInfo, jsonGenerator, z);
                return;
            }
            if (rootInfo instanceof UserRootInfo) {
                UserRootInfo.C2423a.f16896b.serialize((UserRootInfo) rootInfo, jsonGenerator, z);
                return;
            }
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("root_namespace_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) rootInfo.rootNamespaceId, jsonGenerator);
            jsonGenerator.writeFieldName("home_namespace_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) rootInfo.homeNamespaceId, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RootInfo(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'rootNamespaceId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'rootNamespaceId' does not match pattern");
        }
        this.rootNamespaceId = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'homeNamespaceId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str2)) {
            throw new IllegalArgumentException("String 'homeNamespaceId' does not match pattern");
        }
        this.homeNamespaceId = str2;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        RootInfo rootInfo = (RootInfo) obj;
        String str3 = this.rootNamespaceId;
        String str4 = rootInfo.rootNamespaceId;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.homeNamespaceId) == (str2 = rootInfo.homeNamespaceId) || str.equals(str2));
    }

    public String getHomeNamespaceId() {
        return this.homeNamespaceId;
    }

    public String getRootNamespaceId() {
        return this.rootNamespaceId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.rootNamespaceId, this.homeNamespaceId});
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
