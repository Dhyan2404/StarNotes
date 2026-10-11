package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.LinkAudience;
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

/* loaded from: classes4.dex */
public class AudienceRestrictingSharedFolder {
    protected final LinkAudience audience;
    protected final String name;
    protected final String sharedFolderId;

    /* renamed from: com.dropbox.core.v2.sharing.AudienceRestrictingSharedFolder$a */
    /* loaded from: classes4.dex */
    public static class C2808a extends StructSerializer<AudienceRestrictingSharedFolder> {

        /* renamed from: b */
        public static final C2808a f17692b = new C2808a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AudienceRestrictingSharedFolder deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            LinkAudience linkAudience = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("shared_folder_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("name".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("audience".equals(currentName)) {
                    linkAudience = LinkAudience.Serializer.INSTANCE.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_folder_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            if (linkAudience == null) {
                throw new JsonParseException(jsonParser, "Required field \"audience\" missing.");
            }
            AudienceRestrictingSharedFolder audienceRestrictingSharedFolder = new AudienceRestrictingSharedFolder(str2, str3, linkAudience);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(audienceRestrictingSharedFolder, audienceRestrictingSharedFolder.toStringMultiline());
            return audienceRestrictingSharedFolder;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AudienceRestrictingSharedFolder audienceRestrictingSharedFolder, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_folder_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) audienceRestrictingSharedFolder.sharedFolderId, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) audienceRestrictingSharedFolder.name, jsonGenerator);
            jsonGenerator.writeFieldName("audience");
            LinkAudience.Serializer.INSTANCE.serialize(audienceRestrictingSharedFolder.audience, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AudienceRestrictingSharedFolder(String str, String str2, LinkAudience linkAudience) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        this.sharedFolderId = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str2;
        if (linkAudience == null) {
            throw new IllegalArgumentException("Required value for 'audience' is null");
        }
        this.audience = linkAudience;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        LinkAudience linkAudience;
        LinkAudience linkAudience2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        AudienceRestrictingSharedFolder audienceRestrictingSharedFolder = (AudienceRestrictingSharedFolder) obj;
        String str3 = this.sharedFolderId;
        String str4 = audienceRestrictingSharedFolder.sharedFolderId;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.name) == (str2 = audienceRestrictingSharedFolder.name) || str.equals(str2)) && ((linkAudience = this.audience) == (linkAudience2 = audienceRestrictingSharedFolder.audience) || linkAudience.equals(linkAudience2));
    }

    public LinkAudience getAudience() {
        return this.audience;
    }

    public String getName() {
        return this.name;
    }

    public String getSharedFolderId() {
        return this.sharedFolderId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedFolderId, this.name, this.audience});
    }

    public String toString() {
        return C2808a.f17692b.serialize((C2808a) this, false);
    }

    public String toStringMultiline() {
        return C2808a.f17692b.serialize((C2808a) this, true);
    }
}
