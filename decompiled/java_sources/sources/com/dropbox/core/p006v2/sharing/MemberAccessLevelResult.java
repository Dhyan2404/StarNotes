package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AccessLevel;
import com.dropbox.core.p006v2.sharing.ParentFolderAccessInfo;
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
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes4.dex */
public class MemberAccessLevelResult {
    protected final List<ParentFolderAccessInfo> accessDetails;
    protected final AccessLevel accessLevel;
    protected final String warning;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected AccessLevel accessLevel = null;
        protected String warning = null;
        protected List<ParentFolderAccessInfo> accessDetails = null;

        public MemberAccessLevelResult build() {
            return new MemberAccessLevelResult(this.accessLevel, this.warning, this.accessDetails);
        }

        public Builder withAccessDetails(List<ParentFolderAccessInfo> list) {
            if (list != null) {
                Iterator<ParentFolderAccessInfo> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'accessDetails' is null");
                    }
                }
            }
            this.accessDetails = list;
            return this;
        }

        public Builder withAccessLevel(AccessLevel accessLevel) {
            this.accessLevel = accessLevel;
            return this;
        }

        public Builder withWarning(String str) {
            this.warning = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.MemberAccessLevelResult$a */
    /* loaded from: classes4.dex */
    public static class C2891a extends StructSerializer<MemberAccessLevelResult> {

        /* renamed from: b */
        public static final C2891a f17864b = new C2891a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberAccessLevelResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("access_level".equals(currentName)) {
                    accessLevel = (AccessLevel) StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(jsonParser);
                } else if (AbstractLogger.WARNING.equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("access_details".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(ParentFolderAccessInfo.C2902a.f17883b)).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            MemberAccessLevelResult memberAccessLevelResult = new MemberAccessLevelResult(accessLevel, str2, list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberAccessLevelResult, memberAccessLevelResult.toStringMultiline());
            return memberAccessLevelResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberAccessLevelResult memberAccessLevelResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (memberAccessLevelResult.accessLevel != null) {
                jsonGenerator.writeFieldName("access_level");
                StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize((StoneSerializer) memberAccessLevelResult.accessLevel, jsonGenerator);
            }
            if (memberAccessLevelResult.warning != null) {
                jsonGenerator.writeFieldName(AbstractLogger.WARNING);
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) memberAccessLevelResult.warning, jsonGenerator);
            }
            if (memberAccessLevelResult.accessDetails != null) {
                jsonGenerator.writeFieldName("access_details");
                StoneSerializers.nullable(StoneSerializers.list(ParentFolderAccessInfo.C2902a.f17883b)).serialize((StoneSerializer) memberAccessLevelResult.accessDetails, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberAccessLevelResult(AccessLevel accessLevel, String str, List<ParentFolderAccessInfo> list) {
        this.accessLevel = accessLevel;
        this.warning = str;
        if (list != null) {
            Iterator<ParentFolderAccessInfo> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'accessDetails' is null");
                }
            }
        }
        this.accessDetails = list;
    }

    public static Builder newBuilder() {
        return new Builder();
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
        MemberAccessLevelResult memberAccessLevelResult = (MemberAccessLevelResult) obj;
        AccessLevel accessLevel = this.accessLevel;
        AccessLevel accessLevel2 = memberAccessLevelResult.accessLevel;
        if ((accessLevel == accessLevel2 || (accessLevel != null && accessLevel.equals(accessLevel2))) && ((str = this.warning) == (str2 = memberAccessLevelResult.warning) || (str != null && str.equals(str2)))) {
            List<ParentFolderAccessInfo> list = this.accessDetails;
            List<ParentFolderAccessInfo> list2 = memberAccessLevelResult.accessDetails;
            if (list == list2) {
                return true;
            }
            if (list != null && list.equals(list2)) {
                return true;
            }
        }
        return false;
    }

    public List<ParentFolderAccessInfo> getAccessDetails() {
        return this.accessDetails;
    }

    public AccessLevel getAccessLevel() {
        return this.accessLevel;
    }

    public String getWarning() {
        return this.warning;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accessLevel, this.warning, this.accessDetails});
    }

    public String toString() {
        return C2891a.f17864b.serialize((C2891a) this, false);
    }

    public String toStringMultiline() {
        return C2891a.f17864b.serialize((C2891a) this, true);
    }

    public MemberAccessLevelResult() {
        this(null, null, null);
    }
}
