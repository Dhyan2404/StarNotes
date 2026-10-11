package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.FileAction;
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
public class FilePermission {
    protected final FileAction action;
    protected final boolean allow;
    protected final PermissionDeniedReason reason;

    /* renamed from: com.dropbox.core.v2.sharing.FilePermission$a */
    /* loaded from: classes4.dex */
    public static class C2826a extends StructSerializer<FilePermission> {

        /* renamed from: b */
        public static final C2826a f17731b = new C2826a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FilePermission deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            FileAction fileAction = null;
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
                    fileAction = FileAction.C2817b.f17713b.deserialize(jsonParser);
                } else if ("allow".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("reason".equals(currentName)) {
                    permissionDeniedReason = (PermissionDeniedReason) StoneSerializers.nullable(PermissionDeniedReason.C2907b.f17890b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (fileAction == null) {
                throw new JsonParseException(jsonParser, "Required field \"action\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"allow\" missing.");
            }
            FilePermission filePermission = new FilePermission(fileAction, bool.booleanValue(), permissionDeniedReason);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(filePermission, filePermission.toStringMultiline());
            return filePermission;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FilePermission filePermission, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("action");
            FileAction.C2817b.f17713b.serialize(filePermission.action, jsonGenerator);
            jsonGenerator.writeFieldName("allow");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(filePermission.allow), jsonGenerator);
            if (filePermission.reason != null) {
                jsonGenerator.writeFieldName("reason");
                StoneSerializers.nullable(PermissionDeniedReason.C2907b.f17890b).serialize((StoneSerializer) filePermission.reason, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FilePermission(FileAction fileAction, boolean z, PermissionDeniedReason permissionDeniedReason) {
        if (fileAction != null) {
            this.action = fileAction;
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
        FilePermission filePermission = (FilePermission) obj;
        FileAction fileAction = this.action;
        FileAction fileAction2 = filePermission.action;
        if ((fileAction == fileAction2 || fileAction.equals(fileAction2)) && this.allow == filePermission.allow) {
            PermissionDeniedReason permissionDeniedReason = this.reason;
            PermissionDeniedReason permissionDeniedReason2 = filePermission.reason;
            if (permissionDeniedReason == permissionDeniedReason2) {
                return true;
            }
            if (permissionDeniedReason != null && permissionDeniedReason.equals(permissionDeniedReason2)) {
                return true;
            }
        }
        return false;
    }

    public FileAction getAction() {
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
        return C2826a.f17731b.serialize((C2826a) this, false);
    }

    public String toStringMultiline() {
        return C2826a.f17731b.serialize((C2826a) this, true);
    }

    public FilePermission(FileAction fileAction, boolean z) {
        this(fileAction, z, null);
    }
}
