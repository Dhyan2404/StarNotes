package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.FolderAction;
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
public class FolderPermission {
    protected final FolderAction action;
    protected final boolean allow;
    protected final PermissionDeniedReason reason;

    /* renamed from: com.dropbox.core.v2.sharing.FolderPermission$a */
    /* loaded from: classes4.dex */
    public static class C2830a extends StructSerializer<FolderPermission> {

        /* renamed from: b */
        public static final C2830a f17735b = new C2830a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FolderPermission deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            FolderAction folderAction = null;
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
                    folderAction = FolderAction.C2828b.f17733b.deserialize(jsonParser);
                } else if ("allow".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("reason".equals(currentName)) {
                    permissionDeniedReason = (PermissionDeniedReason) StoneSerializers.nullable(PermissionDeniedReason.C2907b.f17890b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (folderAction == null) {
                throw new JsonParseException(jsonParser, "Required field \"action\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"allow\" missing.");
            }
            FolderPermission folderPermission = new FolderPermission(folderAction, bool.booleanValue(), permissionDeniedReason);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(folderPermission, folderPermission.toStringMultiline());
            return folderPermission;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FolderPermission folderPermission, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("action");
            FolderAction.C2828b.f17733b.serialize(folderPermission.action, jsonGenerator);
            jsonGenerator.writeFieldName("allow");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(folderPermission.allow), jsonGenerator);
            if (folderPermission.reason != null) {
                jsonGenerator.writeFieldName("reason");
                StoneSerializers.nullable(PermissionDeniedReason.C2907b.f17890b).serialize((StoneSerializer) folderPermission.reason, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FolderPermission(FolderAction folderAction, boolean z, PermissionDeniedReason permissionDeniedReason) {
        if (folderAction != null) {
            this.action = folderAction;
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
        FolderPermission folderPermission = (FolderPermission) obj;
        FolderAction folderAction = this.action;
        FolderAction folderAction2 = folderPermission.action;
        if ((folderAction == folderAction2 || folderAction.equals(folderAction2)) && this.allow == folderPermission.allow) {
            PermissionDeniedReason permissionDeniedReason = this.reason;
            PermissionDeniedReason permissionDeniedReason2 = folderPermission.reason;
            if (permissionDeniedReason == permissionDeniedReason2) {
                return true;
            }
            if (permissionDeniedReason != null && permissionDeniedReason.equals(permissionDeniedReason2)) {
                return true;
            }
        }
        return false;
    }

    public FolderAction getAction() {
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
        return C2830a.f17735b.serialize((C2830a) this, false);
    }

    public String toStringMultiline() {
        return C2830a.f17735b.serialize((C2830a) this, true);
    }

    public FolderPermission(FolderAction folderAction, boolean z) {
        this(folderAction, z, null);
    }
}
