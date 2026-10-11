package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AccessLevel;
import com.dropbox.core.p006v2.sharing.MemberSelector;
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
public class AddFileMemberArgs {

    /* renamed from: a */
    public final String f17655a;

    /* renamed from: b */
    public final List<MemberSelector> f17656b;

    /* renamed from: c */
    public final String f17657c;

    /* renamed from: d */
    public final boolean f17658d;

    /* renamed from: e */
    public final AccessLevel f17659e;

    /* renamed from: f */
    public final boolean f17660f;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected AccessLevel accessLevel;
        protected boolean addMessageAsComment;
        protected String customMessage;
        protected final String file;
        protected final List<MemberSelector> members;
        protected boolean quiet;

        public Builder(String str, List<MemberSelector> list) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'file' is null");
            }
            if (str.length() < 1) {
                throw new IllegalArgumentException("String 'file' is shorter than 1");
            }
            if (!Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", str)) {
                throw new IllegalArgumentException("String 'file' does not match pattern");
            }
            this.file = str;
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'members' is null");
            }
            Iterator<MemberSelector> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'members' is null");
                }
            }
            this.members = list;
            this.customMessage = null;
            this.quiet = false;
            this.accessLevel = AccessLevel.VIEWER;
            this.addMessageAsComment = false;
        }

        public AddFileMemberArgs build() {
            return new AddFileMemberArgs(this.file, this.members, this.customMessage, this.quiet, this.accessLevel, this.addMessageAsComment);
        }

        public Builder withAccessLevel(AccessLevel accessLevel) {
            if (accessLevel != null) {
                this.accessLevel = accessLevel;
            } else {
                this.accessLevel = AccessLevel.VIEWER;
            }
            return this;
        }

        public Builder withAddMessageAsComment(Boolean bool) {
            if (bool != null) {
                this.addMessageAsComment = bool.booleanValue();
            } else {
                this.addMessageAsComment = false;
            }
            return this;
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

    /* renamed from: com.dropbox.core.v2.sharing.AddFileMemberArgs$a */
    /* loaded from: classes4.dex */
    public static class C2797a extends StructSerializer<AddFileMemberArgs> {

        /* renamed from: b */
        public static final C2797a f17661b = new C2797a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AddFileMemberArgs deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            AccessLevel accessLevel;
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
            AccessLevel accessLevel2 = AccessLevel.VIEWER;
            String str2 = null;
            List list = null;
            String str3 = null;
            Boolean bool2 = bool;
            loop0: while (true) {
                accessLevel = accessLevel2;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("file".equals(currentName)) {
                        str2 = StoneSerializers.string().deserialize(jsonParser);
                    } else if ("members".equals(currentName)) {
                        list = (List) StoneSerializers.list(MemberSelector.Serializer.INSTANCE).deserialize(jsonParser);
                    } else if ("custom_message".equals(currentName)) {
                        str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                    } else if ("quiet".equals(currentName)) {
                        bool = StoneSerializers.boolean_().deserialize(jsonParser);
                    } else {
                        if ("access_level".equals(currentName)) {
                            break;
                        }
                        if ("add_message_as_comment".equals(currentName)) {
                            bool2 = StoneSerializers.boolean_().deserialize(jsonParser);
                        } else {
                            StoneSerializer.skipValue(jsonParser);
                        }
                    }
                }
                accessLevel2 = AccessLevel.Serializer.INSTANCE.deserialize(jsonParser);
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"file\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"members\" missing.");
            }
            AddFileMemberArgs addFileMemberArgs = new AddFileMemberArgs(str2, list, str3, bool.booleanValue(), accessLevel, bool2.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(addFileMemberArgs, addFileMemberArgs.m11449h());
            return addFileMemberArgs;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AddFileMemberArgs addFileMemberArgs, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("file");
            StoneSerializers.string().serialize((StoneSerializer<String>) addFileMemberArgs.f17655a, jsonGenerator);
            jsonGenerator.writeFieldName("members");
            StoneSerializers.list(MemberSelector.Serializer.INSTANCE).serialize((StoneSerializer) addFileMemberArgs.f17656b, jsonGenerator);
            if (addFileMemberArgs.f17657c != null) {
                jsonGenerator.writeFieldName("custom_message");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) addFileMemberArgs.f17657c, jsonGenerator);
            }
            jsonGenerator.writeFieldName("quiet");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(addFileMemberArgs.f17658d), jsonGenerator);
            jsonGenerator.writeFieldName("access_level");
            AccessLevel.Serializer.INSTANCE.serialize(addFileMemberArgs.f17659e, jsonGenerator);
            jsonGenerator.writeFieldName("add_message_as_comment");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(addFileMemberArgs.f17660f), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AddFileMemberArgs(String str, List<MemberSelector> list, String str2, boolean z, AccessLevel accessLevel, boolean z2) {
        if (str != null) {
            if (str.length() >= 1) {
                if (Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", str)) {
                    this.f17655a = str;
                    if (list != null) {
                        Iterator<MemberSelector> it2 = list.iterator();
                        while (it2.hasNext()) {
                            if (it2.next() == null) {
                                throw new IllegalArgumentException("An item in list 'members' is null");
                            }
                        }
                        this.f17656b = list;
                        this.f17657c = str2;
                        this.f17658d = z;
                        if (accessLevel != null) {
                            this.f17659e = accessLevel;
                            this.f17660f = z2;
                            return;
                        }
                        throw new IllegalArgumentException("Required value for 'accessLevel' is null");
                    }
                    throw new IllegalArgumentException("Required value for 'members' is null");
                }
                throw new IllegalArgumentException("String 'file' does not match pattern");
            }
            throw new IllegalArgumentException("String 'file' is shorter than 1");
        }
        throw new IllegalArgumentException("Required value for 'file' is null");
    }

    /* renamed from: g */
    public static Builder m11442g(String str, List<MemberSelector> list) {
        return new Builder(str, list);
    }

    /* renamed from: a */
    public AccessLevel m11443a() {
        return this.f17659e;
    }

    /* renamed from: b */
    public boolean m11444b() {
        return this.f17660f;
    }

    /* renamed from: c */
    public String m11445c() {
        return this.f17657c;
    }

    /* renamed from: d */
    public String m11446d() {
        return this.f17655a;
    }

    /* renamed from: e */
    public List<MemberSelector> m11447e() {
        return this.f17656b;
    }

    public boolean equals(Object obj) {
        List<MemberSelector> list;
        List<MemberSelector> list2;
        String str;
        String str2;
        AccessLevel accessLevel;
        AccessLevel accessLevel2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        AddFileMemberArgs addFileMemberArgs = (AddFileMemberArgs) obj;
        String str3 = this.f17655a;
        String str4 = addFileMemberArgs.f17655a;
        return (str3 == str4 || str3.equals(str4)) && ((list = this.f17656b) == (list2 = addFileMemberArgs.f17656b) || list.equals(list2)) && (((str = this.f17657c) == (str2 = addFileMemberArgs.f17657c) || (str != null && str.equals(str2))) && this.f17658d == addFileMemberArgs.f17658d && (((accessLevel = this.f17659e) == (accessLevel2 = addFileMemberArgs.f17659e) || accessLevel.equals(accessLevel2)) && this.f17660f == addFileMemberArgs.f17660f));
    }

    /* renamed from: f */
    public boolean m11448f() {
        return this.f17658d;
    }

    /* renamed from: h */
    public String m11449h() {
        return C2797a.f17661b.serialize((C2797a) this, true);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17655a, this.f17656b, this.f17657c, Boolean.valueOf(this.f17658d), this.f17659e, Boolean.valueOf(this.f17660f)});
    }

    public String toString() {
        return C2797a.f17661b.serialize((C2797a) this, false);
    }

    public AddFileMemberArgs(String str, List<MemberSelector> list) {
        this(str, list, null, false, AccessLevel.VIEWER, false);
    }
}
