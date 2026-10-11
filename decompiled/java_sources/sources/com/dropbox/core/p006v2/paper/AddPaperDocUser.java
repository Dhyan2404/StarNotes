package com.dropbox.core.p006v2.paper;

import com.dropbox.core.p006v2.paper.AddMember;
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
import com.onyx.android.sdk.universal.editor.data.ExcerptConstants;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class AddPaperDocUser extends C2790i {

    /* renamed from: b */
    public final List<AddMember> f17543b;

    /* renamed from: c */
    public final String f17544c;

    /* renamed from: d */
    public final boolean f17545d;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String customMessage;
        protected final String docId;
        protected final List<AddMember> members;
        protected boolean quiet;

        public Builder(String str, List<AddMember> list) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'docId' is null");
            }
            this.docId = str;
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'members' is null");
            }
            if (list.size() > 20) {
                throw new IllegalArgumentException("List 'members' has more than 20 items");
            }
            Iterator<AddMember> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'members' is null");
                }
            }
            this.members = list;
            this.customMessage = null;
            this.quiet = false;
        }

        public AddPaperDocUser build() {
            return new AddPaperDocUser(this.docId, this.members, this.customMessage, this.quiet);
        }

        public Builder withCustomMessage(String str) {
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

    /* renamed from: com.dropbox.core.v2.paper.AddPaperDocUser$a */
    /* loaded from: classes4.dex */
    public static class C2727a extends StructSerializer<AddPaperDocUser> {

        /* renamed from: b */
        public static final C2727a f17546b = new C2727a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AddPaperDocUser deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if (ExcerptConstants.ARGS_DOC_ID.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("members".equals(currentName)) {
                    list = (List) StoneSerializers.list(AddMember.C2726a.f17542b).deserialize(jsonParser);
                } else if ("custom_message".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("quiet".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"doc_id\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"members\" missing.");
            }
            AddPaperDocUser addPaperDocUser = new AddPaperDocUser(str2, list, str3, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(addPaperDocUser, addPaperDocUser.mo11293b());
            return addPaperDocUser;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AddPaperDocUser addPaperDocUser, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(ExcerptConstants.ARGS_DOC_ID);
            StoneSerializers.string().serialize((StoneSerializer<String>) addPaperDocUser.f17646a, jsonGenerator);
            jsonGenerator.writeFieldName("members");
            StoneSerializers.list(AddMember.C2726a.f17542b).serialize((StoneSerializer) addPaperDocUser.f17543b, jsonGenerator);
            if (addPaperDocUser.f17544c != null) {
                jsonGenerator.writeFieldName("custom_message");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) addPaperDocUser.f17544c, jsonGenerator);
            }
            jsonGenerator.writeFieldName("quiet");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(addPaperDocUser.f17545d), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AddPaperDocUser(String str, List<AddMember> list, String str2, boolean z) {
        super(str);
        if (list != null) {
            if (list.size() <= 20) {
                Iterator<AddMember> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'members' is null");
                    }
                }
                this.f17543b = list;
                this.f17544c = str2;
                this.f17545d = z;
                return;
            }
            throw new IllegalArgumentException("List 'members' has more than 20 items");
        }
        throw new IllegalArgumentException("Required value for 'members' is null");
    }

    /* renamed from: f */
    public static Builder m11291f(String str, List<AddMember> list) {
        return new Builder(str, list);
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    /* renamed from: a */
    public String mo11292a() {
        return this.f17646a;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    /* renamed from: b */
    public String mo11293b() {
        return C2727a.f17546b.serialize((C2727a) this, true);
    }

    /* renamed from: c */
    public String m11294c() {
        return this.f17544c;
    }

    /* renamed from: d */
    public List<AddMember> m11295d() {
        return this.f17543b;
    }

    /* renamed from: e */
    public boolean m11296e() {
        return this.f17545d;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public boolean equals(Object obj) {
        List<AddMember> list;
        List<AddMember> list2;
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        AddPaperDocUser addPaperDocUser = (AddPaperDocUser) obj;
        String str3 = this.f17646a;
        String str4 = addPaperDocUser.f17646a;
        return (str3 == str4 || str3.equals(str4)) && ((list = this.f17543b) == (list2 = addPaperDocUser.f17543b) || list.equals(list2)) && (((str = this.f17544c) == (str2 = addPaperDocUser.f17544c) || (str != null && str.equals(str2))) && this.f17545d == addPaperDocUser.f17545d);
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17543b, this.f17544c, Boolean.valueOf(this.f17545d)});
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public String toString() {
        return C2727a.f17546b.serialize((C2727a) this, false);
    }

    public AddPaperDocUser(String str, List<AddMember> list) {
        this(str, list, null, false);
    }
}
