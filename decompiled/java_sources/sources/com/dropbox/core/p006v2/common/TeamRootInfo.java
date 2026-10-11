package com.dropbox.core.p006v2.common;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class TeamRootInfo extends RootInfo {
    protected final String homePath;

    /* renamed from: com.dropbox.core.v2.common.TeamRootInfo$a */
    /* loaded from: classes4.dex */
    public static class C2422a extends StructSerializer<TeamRootInfo> {

        /* renamed from: b */
        public static final C2422a f16895b = new C2422a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("team".equals(r0) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.common.TeamRootInfo deserialize(com.fasterxml.jackson.core.JsonParser r5, boolean r6) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                r4 = this;
                r4 = 0
                if (r6 != 0) goto L12
                com.dropbox.core.stone.StoneSerializer.expectStartObject(r5)
                java.lang.String r0 = com.dropbox.core.stone.CompositeSerializer.readTag(r5)
                java.lang.String r1 = "team"
                boolean r1 = r1.equals(r0)
                if (r1 == 0) goto L13
            L12:
                r0 = r4
            L13:
                if (r0 != 0) goto L93
                r0 = r4
                r1 = r0
            L17:
                com.fasterxml.jackson.core.JsonToken r2 = r5.getCurrentToken()
                com.fasterxml.jackson.core.JsonToken r3 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r2 != r3) goto L63
                java.lang.String r2 = r5.getCurrentName()
                r5.nextToken()
                java.lang.String r3 = "root_namespace_id"
                boolean r3 = r3.equals(r2)
                if (r3 == 0) goto L39
                com.dropbox.core.stone.StoneSerializer r4 = com.dropbox.core.stone.StoneSerializers.string()
                java.lang.Object r4 = r4.deserialize(r5)
                java.lang.String r4 = (java.lang.String) r4
                goto L17
            L39:
                java.lang.String r3 = "home_namespace_id"
                boolean r3 = r3.equals(r2)
                if (r3 == 0) goto L4c
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.string()
                java.lang.Object r0 = r0.deserialize(r5)
                java.lang.String r0 = (java.lang.String) r0
                goto L17
            L4c:
                java.lang.String r3 = "home_path"
                boolean r2 = r3.equals(r2)
                if (r2 == 0) goto L5f
                com.dropbox.core.stone.StoneSerializer r1 = com.dropbox.core.stone.StoneSerializers.string()
                java.lang.Object r1 = r1.deserialize(r5)
                java.lang.String r1 = (java.lang.String) r1
                goto L17
            L5f:
                com.dropbox.core.stone.StoneSerializer.skipValue(r5)
                goto L17
            L63:
                if (r4 == 0) goto L8b
                if (r0 == 0) goto L83
                if (r1 == 0) goto L7b
                com.dropbox.core.v2.common.TeamRootInfo r2 = new com.dropbox.core.v2.common.TeamRootInfo
                r2.<init>(r4, r0, r1)
                if (r6 != 0) goto L73
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r5)
            L73:
                java.lang.String r4 = r2.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r2, r4)
                return r2
            L7b:
                com.fasterxml.jackson.core.JsonParseException r4 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.String r6 = "Required field \"home_path\" missing."
                r4.<init>(r5, r6)
                throw r4
            L83:
                com.fasterxml.jackson.core.JsonParseException r4 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.String r6 = "Required field \"home_namespace_id\" missing."
                r4.<init>(r5, r6)
                throw r4
            L8b:
                com.fasterxml.jackson.core.JsonParseException r4 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.String r6 = "Required field \"root_namespace_id\" missing."
                r4.<init>(r5, r6)
                throw r4
            L93:
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
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.common.TeamRootInfo.C2422a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.common.TeamRootInfo");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamRootInfo teamRootInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("team", jsonGenerator);
            jsonGenerator.writeFieldName("root_namespace_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamRootInfo.rootNamespaceId, jsonGenerator);
            jsonGenerator.writeFieldName("home_namespace_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamRootInfo.homeNamespaceId, jsonGenerator);
            jsonGenerator.writeFieldName("home_path");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamRootInfo.homePath, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamRootInfo(String str, String str2, String str3) {
        super(str, str2);
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'homePath' is null");
        }
        this.homePath = str3;
    }

    @Override // com.dropbox.core.p006v2.common.RootInfo
    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamRootInfo teamRootInfo = (TeamRootInfo) obj;
        String str5 = this.rootNamespaceId;
        String str6 = teamRootInfo.rootNamespaceId;
        return (str5 == str6 || str5.equals(str6)) && ((str = this.homeNamespaceId) == (str2 = teamRootInfo.homeNamespaceId) || str.equals(str2)) && ((str3 = this.homePath) == (str4 = teamRootInfo.homePath) || str3.equals(str4));
    }

    @Override // com.dropbox.core.p006v2.common.RootInfo
    public String getHomeNamespaceId() {
        return this.homeNamespaceId;
    }

    public String getHomePath() {
        return this.homePath;
    }

    @Override // com.dropbox.core.p006v2.common.RootInfo
    public String getRootNamespaceId() {
        return this.rootNamespaceId;
    }

    @Override // com.dropbox.core.p006v2.common.RootInfo
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.homePath});
    }

    @Override // com.dropbox.core.p006v2.common.RootInfo
    public String toString() {
        return C2422a.f16895b.serialize((C2422a) this, false);
    }

    @Override // com.dropbox.core.p006v2.common.RootInfo
    public String toStringMultiline() {
        return C2422a.f16895b.serialize((C2422a) this, true);
    }
}
