package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AddMember;
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
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class AddFolderMemberArg {

    /* renamed from: a */
    public final String f17669a;

    /* renamed from: b */
    public final List<AddMember> f17670b;

    /* renamed from: c */
    public final boolean f17671c;

    /* renamed from: d */
    public final String f17672d;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String customMessage;
        protected final List<AddMember> members;
        protected boolean quiet;
        protected final String sharedFolderId;

        public Builder(String str, List<AddMember> list) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            this.sharedFolderId = str;
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'members' is null");
            }
            Iterator<AddMember> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'members' is null");
                }
            }
            this.members = list;
            this.quiet = false;
            this.customMessage = null;
        }

        public AddFolderMemberArg build() {
            return new AddFolderMemberArg(this.sharedFolderId, this.members, this.quiet, this.customMessage);
        }

        public Builder withCustomMessage(String str) {
            if (str != null && str.length() < 1) {
                throw new IllegalArgumentException("String 'customMessage' is shorter than 1");
            }
            this.customMessage = str;
            return this;
        }

        public Builder withQuiet(Boolean bool) {
            if (bool != null) {
                this.quiet = bool.booleanValue();
            } else {
                this.quiet = false;
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.AddFolderMemberArg$a */
    /* loaded from: classes4.dex */
    public static class C2800a extends StructSerializer<AddFolderMemberArg> {

        /* renamed from: b */
        public static final C2800a f17673b = new C2800a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AddFolderMemberArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str3 = null;
            Boolean bool = Boolean.FALSE;
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("shared_folder_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("members".equals(currentName)) {
                    list = (List) StoneSerializers.list(AddMember.C2803a.f17683b).deserialize(jsonParser);
                } else if ("quiet".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("custom_message".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_folder_id\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"members\" missing.");
            }
            AddFolderMemberArg addFolderMemberArg = new AddFolderMemberArg(str2, list, bool.booleanValue(), str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(addFolderMemberArg, addFolderMemberArg.m11464f());
            return addFolderMemberArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AddFolderMemberArg addFolderMemberArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_folder_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) addFolderMemberArg.f17669a, jsonGenerator);
            jsonGenerator.writeFieldName("members");
            StoneSerializers.list(AddMember.C2803a.f17683b).serialize((StoneSerializer) addFolderMemberArg.f17670b, jsonGenerator);
            jsonGenerator.writeFieldName("quiet");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(addFolderMemberArg.f17671c), jsonGenerator);
            if (addFolderMemberArg.f17672d != null) {
                jsonGenerator.writeFieldName("custom_message");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) addFolderMemberArg.f17672d, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AddFolderMemberArg(String str, List<AddMember> list, boolean z, String str2) {
        if (str != null) {
            if (Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                this.f17669a = str;
                if (list != null) {
                    Iterator<AddMember> it2 = list.iterator();
                    while (it2.hasNext()) {
                        if (it2.next() == null) {
                            throw new IllegalArgumentException("An item in list 'members' is null");
                        }
                    }
                    this.f17670b = list;
                    this.f17671c = z;
                    if (str2 != null && str2.length() < 1) {
                        throw new IllegalArgumentException("String 'customMessage' is shorter than 1");
                    }
                    this.f17672d = str2;
                    return;
                }
                throw new IllegalArgumentException("Required value for 'members' is null");
            }
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
    }

    /* renamed from: e */
    public static Builder m11459e(String str, List<AddMember> list) {
        return new Builder(str, list);
    }

    /* renamed from: a */
    public String m11460a() {
        return this.f17672d;
    }

    /* renamed from: b */
    public List<AddMember> m11461b() {
        return this.f17670b;
    }

    /* renamed from: c */
    public boolean m11462c() {
        return this.f17671c;
    }

    /* renamed from: d */
    public String m11463d() {
        return this.f17669a;
    }

    public boolean equals(Object obj) {
        List<AddMember> list;
        List<AddMember> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        AddFolderMemberArg addFolderMemberArg = (AddFolderMemberArg) obj;
        String str = this.f17669a;
        String str2 = addFolderMemberArg.f17669a;
        if ((str == str2 || str.equals(str2)) && (((list = this.f17670b) == (list2 = addFolderMemberArg.f17670b) || list.equals(list2)) && this.f17671c == addFolderMemberArg.f17671c)) {
            String str3 = this.f17672d;
            String str4 = addFolderMemberArg.f17672d;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public String m11464f() {
        return C2800a.f17673b.serialize((C2800a) this, true);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17669a, this.f17670b, Boolean.valueOf(this.f17671c), this.f17672d});
    }

    public String toString() {
        return C2800a.f17673b.serialize((C2800a) this, false);
    }

    public AddFolderMemberArg(String str, List<AddMember> list) {
        this(str, list, false, null);
    }
}
