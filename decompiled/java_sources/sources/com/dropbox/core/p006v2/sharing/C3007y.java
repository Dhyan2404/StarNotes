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
import java.util.regex.Pattern;

/* renamed from: com.dropbox.core.v2.sharing.y */
/* loaded from: classes4.dex */
public class C3007y {

    /* renamed from: a */
    public final String f18098a;

    /* renamed from: b */
    public final MemberSelector f18099b;

    /* renamed from: c */
    public final AccessLevel f18100c;

    /* renamed from: com.dropbox.core.v2.sharing.y$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3007y> {

        /* renamed from: b */
        public static final a f18101b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3007y deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            MemberSelector memberSelector = null;
            AccessLevel accessLevel = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("shared_folder_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("member".equals(currentName)) {
                    memberSelector = MemberSelector.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("access_level".equals(currentName)) {
                    accessLevel = AccessLevel.Serializer.INSTANCE.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_folder_id\" missing.");
            }
            if (memberSelector == null) {
                throw new JsonParseException(jsonParser, "Required field \"member\" missing.");
            }
            if (accessLevel == null) {
                throw new JsonParseException(jsonParser, "Required field \"access_level\" missing.");
            }
            C3007y c3007y = new C3007y(str2, memberSelector, accessLevel);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3007y, c3007y.m12103d());
            return c3007y;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3007y c3007y, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_folder_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) c3007y.f18098a, jsonGenerator);
            jsonGenerator.writeFieldName("member");
            MemberSelector.Serializer.INSTANCE.serialize(c3007y.f18099b, jsonGenerator);
            jsonGenerator.writeFieldName("access_level");
            AccessLevel.Serializer.INSTANCE.serialize(c3007y.f18100c, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3007y(String str, MemberSelector memberSelector, AccessLevel accessLevel) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        this.f18098a = str;
        if (memberSelector == null) {
            throw new IllegalArgumentException("Required value for 'member' is null");
        }
        this.f18099b = memberSelector;
        if (accessLevel == null) {
            throw new IllegalArgumentException("Required value for 'accessLevel' is null");
        }
        this.f18100c = accessLevel;
    }

    /* renamed from: a */
    public AccessLevel m12100a() {
        return this.f18100c;
    }

    /* renamed from: b */
    public MemberSelector m12101b() {
        return this.f18099b;
    }

    /* renamed from: c */
    public String m12102c() {
        return this.f18098a;
    }

    /* renamed from: d */
    public String m12103d() {
        return a.f18101b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        MemberSelector memberSelector;
        MemberSelector memberSelector2;
        AccessLevel accessLevel;
        AccessLevel accessLevel2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C3007y c3007y = (C3007y) obj;
        String str = this.f18098a;
        String str2 = c3007y.f18098a;
        return (str == str2 || str.equals(str2)) && ((memberSelector = this.f18099b) == (memberSelector2 = c3007y.f18099b) || memberSelector.equals(memberSelector2)) && ((accessLevel = this.f18100c) == (accessLevel2 = c3007y.f18100c) || accessLevel.equals(accessLevel2));
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18098a, this.f18099b, this.f18100c});
    }

    public String toString() {
        return a.f18101b.serialize((a) this, false);
    }
}
