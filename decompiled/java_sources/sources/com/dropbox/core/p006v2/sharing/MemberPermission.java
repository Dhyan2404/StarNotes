package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.MemberAction;
import com.dropbox.core.p006v2.sharing.PermissionDeniedReason;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class MemberPermission {
    protected final MemberAction action;
    protected final boolean allow;
    protected final PermissionDeniedReason reason;

    /* renamed from: com.dropbox.core.v2.sharing.MemberPermission$a */
    /* loaded from: classes4.dex */
    public static class C2894a extends StructSerializer<MemberPermission> {

        /* renamed from: b */
        public static final C2894a f17867b = new C2894a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberPermission deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            MemberAction memberAction = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Boolean bool = null;
            PermissionDeniedReason permissionDeniedReason = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("action".equals(currentName)) {
                    memberAction = MemberAction.C2893b.f17866b.deserialize(jsonParser);
                } else if ("allow".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("reason".equals(currentName)) {
                    permissionDeniedReason = (PermissionDeniedReason) StoneSerializers.nullable(PermissionDeniedReason.C2907b.f17890b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (memberAction == null) {
                throw new JsonParseException(jsonParser, "Required field \"action\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"allow\" missing.");
            }
            MemberPermission memberPermission = new MemberPermission(memberAction, bool.booleanValue(), permissionDeniedReason);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberPermission, memberPermission.toStringMultiline());
            return memberPermission;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberPermission memberPermission, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("action");
            MemberAction.C2893b.f17866b.serialize(memberPermission.action, jsonGenerator);
            jsonGenerator.writeFieldName("allow");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(memberPermission.allow), jsonGenerator);
            if (memberPermission.reason != null) {
                jsonGenerator.writeFieldName("reason");
                StoneSerializers.nullable(PermissionDeniedReason.C2907b.f17890b).serialize((StoneSerializer) memberPermission.reason, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberPermission(MemberAction memberAction, boolean z, PermissionDeniedReason permissionDeniedReason) {
        if (memberAction != null) {
            this.action = memberAction;
            this.allow = z;
            this.reason = permissionDeniedReason;
            return;
        }
        throw new IllegalArgumentException("Required value for 'action' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MemberPermission memberPermission = (MemberPermission) obj;
        MemberAction memberAction = this.action;
        MemberAction memberAction2 = memberPermission.action;
        if ((memberAction == memberAction2 || memberAction.equals(memberAction2)) && this.allow == memberPermission.allow) {
            PermissionDeniedReason permissionDeniedReason = this.reason;
            PermissionDeniedReason permissionDeniedReason2 = memberPermission.reason;
            if (permissionDeniedReason == permissionDeniedReason2) {
                return true;
            }
            if (permissionDeniedReason != null && permissionDeniedReason.equals(permissionDeniedReason2)) {
                return true;
            }
        }
        return false;
    }

    public MemberAction getAction() {
        return this.action;
    }

    public boolean getAllow() {
        return this.allow;
    }

    public PermissionDeniedReason getReason() {
        return this.reason;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.action, Boolean.valueOf(this.allow), this.reason});
    }

    public String toString() {
        return C2894a.f17867b.serialize((C2894a) this, false);
    }

    public String toStringMultiline() {
        return C2894a.f17867b.serialize((C2894a) this, true);
    }

    public MemberPermission(MemberAction memberAction, boolean z) {
        this(memberAction, z, null);
    }
}
