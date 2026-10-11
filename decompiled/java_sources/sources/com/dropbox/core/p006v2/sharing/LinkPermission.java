package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.LinkAction;
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
public class LinkPermission {
    protected final LinkAction action;
    protected final boolean allow;
    protected final PermissionDeniedReason reason;

    /* renamed from: com.dropbox.core.v2.sharing.LinkPermission$a */
    /* loaded from: classes4.dex */
    public static class C2863a extends StructSerializer<LinkPermission> {

        /* renamed from: b */
        public static final C2863a f17795b = new C2863a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LinkPermission deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            LinkAction linkAction = null;
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
                    linkAction = LinkAction.C2856b.f17784b.deserialize(jsonParser);
                } else if ("allow".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("reason".equals(currentName)) {
                    permissionDeniedReason = (PermissionDeniedReason) StoneSerializers.nullable(PermissionDeniedReason.C2907b.f17890b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (linkAction == null) {
                throw new JsonParseException(jsonParser, "Required field \"action\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"allow\" missing.");
            }
            LinkPermission linkPermission = new LinkPermission(linkAction, bool.booleanValue(), permissionDeniedReason);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(linkPermission, linkPermission.toStringMultiline());
            return linkPermission;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LinkPermission linkPermission, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("action");
            LinkAction.C2856b.f17784b.serialize(linkPermission.action, jsonGenerator);
            jsonGenerator.writeFieldName("allow");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(linkPermission.allow), jsonGenerator);
            if (linkPermission.reason != null) {
                jsonGenerator.writeFieldName("reason");
                StoneSerializers.nullable(PermissionDeniedReason.C2907b.f17890b).serialize((StoneSerializer) linkPermission.reason, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LinkPermission(LinkAction linkAction, boolean z, PermissionDeniedReason permissionDeniedReason) {
        if (linkAction != null) {
            this.action = linkAction;
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
        LinkPermission linkPermission = (LinkPermission) obj;
        LinkAction linkAction = this.action;
        LinkAction linkAction2 = linkPermission.action;
        if ((linkAction == linkAction2 || linkAction.equals(linkAction2)) && this.allow == linkPermission.allow) {
            PermissionDeniedReason permissionDeniedReason = this.reason;
            PermissionDeniedReason permissionDeniedReason2 = linkPermission.reason;
            if (permissionDeniedReason == permissionDeniedReason2) {
                return true;
            }
            if (permissionDeniedReason != null && permissionDeniedReason.equals(permissionDeniedReason2)) {
                return true;
            }
        }
        return false;
    }

    public LinkAction getAction() {
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
        return C2863a.f17795b.serialize((C2863a) this, false);
    }

    public String toStringMultiline() {
        return C2863a.f17795b.serialize((C2863a) this, true);
    }

    public LinkPermission(LinkAction linkAction, boolean z) {
        this(linkAction, z, null);
    }
}
