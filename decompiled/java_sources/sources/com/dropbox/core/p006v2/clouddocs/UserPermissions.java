package com.dropbox.core.p006v2.clouddocs;

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
public class UserPermissions {
    protected final boolean canComment;
    protected final boolean canDownload;
    protected final boolean canEdit;
    protected final boolean canRename;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected boolean canEdit = false;
        protected boolean canRename = false;
        protected boolean canComment = false;
        protected boolean canDownload = false;

        public UserPermissions build() {
            return new UserPermissions(this.canEdit, this.canRename, this.canComment, this.canDownload);
        }

        public Builder withCanComment(Boolean bool) {
            if (bool != null) {
                this.canComment = bool.booleanValue();
            } else {
                this.canComment = false;
            }
            return this;
        }

        public Builder withCanDownload(Boolean bool) {
            if (bool != null) {
                this.canDownload = bool.booleanValue();
            } else {
                this.canDownload = false;
            }
            return this;
        }

        public Builder withCanEdit(Boolean bool) {
            if (bool != null) {
                this.canEdit = bool.booleanValue();
            } else {
                this.canEdit = false;
            }
            return this;
        }

        public Builder withCanRename(Boolean bool) {
            if (bool != null) {
                this.canRename = bool.booleanValue();
            } else {
                this.canRename = false;
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.UserPermissions$a */
    /* loaded from: classes4.dex */
    public static class C2414a extends StructSerializer<UserPermissions> {

        /* renamed from: b */
        public static final C2414a f16875b = new C2414a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserPermissions deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Boolean bool = Boolean.FALSE;
            Boolean bool2 = bool;
            Boolean bool3 = bool2;
            Boolean bool4 = bool3;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("can_edit".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("can_rename".equals(currentName)) {
                    bool2 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("can_comment".equals(currentName)) {
                    bool3 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("can_download".equals(currentName)) {
                    bool4 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            UserPermissions userPermissions = new UserPermissions(bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue(), bool4.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(userPermissions, userPermissions.toStringMultiline());
            return userPermissions;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserPermissions userPermissions, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("can_edit");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(userPermissions.canEdit), jsonGenerator);
            jsonGenerator.writeFieldName("can_rename");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(userPermissions.canRename), jsonGenerator);
            jsonGenerator.writeFieldName("can_comment");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(userPermissions.canComment), jsonGenerator);
            jsonGenerator.writeFieldName("can_download");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(userPermissions.canDownload), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UserPermissions(boolean z, boolean z2, boolean z3, boolean z4) {
        this.canEdit = z;
        this.canRename = z2;
        this.canComment = z3;
        this.canDownload = z4;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UserPermissions userPermissions = (UserPermissions) obj;
        return this.canEdit == userPermissions.canEdit && this.canRename == userPermissions.canRename && this.canComment == userPermissions.canComment && this.canDownload == userPermissions.canDownload;
    }

    public boolean getCanComment() {
        return this.canComment;
    }

    public boolean getCanDownload() {
        return this.canDownload;
    }

    public boolean getCanEdit() {
        return this.canEdit;
    }

    public boolean getCanRename() {
        return this.canRename;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.canEdit), Boolean.valueOf(this.canRename), Boolean.valueOf(this.canComment), Boolean.valueOf(this.canDownload)});
    }

    public String toString() {
        return C2414a.f16875b.serialize((C2414a) this, false);
    }

    public String toStringMultiline() {
        return C2414a.f16875b.serialize((C2414a) this, true);
    }

    public UserPermissions() {
        this(false, false, false, false);
    }
}
