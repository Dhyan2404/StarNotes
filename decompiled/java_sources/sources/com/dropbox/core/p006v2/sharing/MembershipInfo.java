package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AccessLevel;
import com.dropbox.core.p006v2.sharing.MemberPermission;
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
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class MembershipInfo {
    protected final AccessLevel accessType;
    protected final String initials;
    protected final boolean isInherited;
    protected final List<MemberPermission> permissions;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final AccessLevel accessType;
        protected String initials;
        protected boolean isInherited;
        protected List<MemberPermission> permissions;

        public Builder(AccessLevel accessLevel) {
            if (accessLevel == null) {
                throw new IllegalArgumentException("Required value for 'accessType' is null");
            }
            this.accessType = accessLevel;
            this.permissions = null;
            this.initials = null;
            this.isInherited = false;
        }

        public MembershipInfo build() {
            return new MembershipInfo(this.accessType, this.permissions, this.initials, this.isInherited);
        }

        public Builder withInitials(String str) {
            this.initials = str;
            return this;
        }

        public Builder withIsInherited(Boolean bool) {
            if (bool != null) {
                this.isInherited = bool.booleanValue();
            } else {
                this.isInherited = false;
            }
            return this;
        }

        public Builder withPermissions(List<MemberPermission> list) {
            if (list != null) {
                Iterator<MemberPermission> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'permissions' is null");
                    }
                }
            }
            this.permissions = list;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.MembershipInfo$a */
    /* loaded from: classes4.dex */
    public static class C2897a extends StructSerializer<MembershipInfo> {

        /* renamed from: b */
        public static final C2897a f17873b = new C2897a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembershipInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            AccessLevel accessLevel = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = null;
            Boolean bool = Boolean.FALSE;
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("access_type".equals(currentName)) {
                    accessLevel = AccessLevel.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("permissions".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(MemberPermission.C2894a.f17867b)).deserialize(jsonParser);
                } else if ("initials".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("is_inherited".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (accessLevel == null) {
                throw new JsonParseException(jsonParser, "Required field \"access_type\" missing.");
            }
            MembershipInfo membershipInfo = new MembershipInfo(accessLevel, list, str2, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(membershipInfo, membershipInfo.toStringMultiline());
            return membershipInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembershipInfo membershipInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("access_type");
            AccessLevel.Serializer.INSTANCE.serialize(membershipInfo.accessType, jsonGenerator);
            if (membershipInfo.permissions != null) {
                jsonGenerator.writeFieldName("permissions");
                StoneSerializers.nullable(StoneSerializers.list(MemberPermission.C2894a.f17867b)).serialize((StoneSerializer) membershipInfo.permissions, jsonGenerator);
            }
            if (membershipInfo.initials != null) {
                jsonGenerator.writeFieldName("initials");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) membershipInfo.initials, jsonGenerator);
            }
            jsonGenerator.writeFieldName("is_inherited");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(membershipInfo.isInherited), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MembershipInfo(AccessLevel accessLevel, List<MemberPermission> list, String str, boolean z) {
        if (accessLevel != null) {
            this.accessType = accessLevel;
            if (list != null) {
                Iterator<MemberPermission> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'permissions' is null");
                    }
                }
            }
            this.permissions = list;
            this.initials = str;
            this.isInherited = z;
            return;
        }
        throw new IllegalArgumentException("Required value for 'accessType' is null");
    }

    public static Builder newBuilder(AccessLevel accessLevel) {
        return new Builder(accessLevel);
    }

    public boolean equals(Object obj) {
        List<MemberPermission> list;
        List<MemberPermission> list2;
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MembershipInfo membershipInfo = (MembershipInfo) obj;
        AccessLevel accessLevel = this.accessType;
        AccessLevel accessLevel2 = membershipInfo.accessType;
        return (accessLevel == accessLevel2 || accessLevel.equals(accessLevel2)) && ((list = this.permissions) == (list2 = membershipInfo.permissions) || (list != null && list.equals(list2))) && (((str = this.initials) == (str2 = membershipInfo.initials) || (str != null && str.equals(str2))) && this.isInherited == membershipInfo.isInherited);
    }

    public AccessLevel getAccessType() {
        return this.accessType;
    }

    public String getInitials() {
        return this.initials;
    }

    public boolean getIsInherited() {
        return this.isInherited;
    }

    public List<MemberPermission> getPermissions() {
        return this.permissions;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accessType, this.permissions, this.initials, Boolean.valueOf(this.isInherited)});
    }

    public String toString() {
        return C2897a.f17873b.serialize((C2897a) this, false);
    }

    public String toStringMultiline() {
        return C2897a.f17873b.serialize((C2897a) this, true);
    }

    public MembershipInfo(AccessLevel accessLevel) {
        this(accessLevel, null, null, false);
    }
}
