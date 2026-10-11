package com.dropbox.core.p006v2.paper;

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
public class PaperFolderCreateArg {

    /* renamed from: a */
    public final String f17612a;

    /* renamed from: b */
    public final String f17613b;

    /* renamed from: c */
    public final Boolean f17614c;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected Boolean isTeamFolder;
        protected final String name;
        protected String parentFolderId;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.name = str;
            this.parentFolderId = null;
            this.isTeamFolder = null;
        }

        public PaperFolderCreateArg build() {
            return new PaperFolderCreateArg(this.name, this.parentFolderId, this.isTeamFolder);
        }

        public Builder withIsTeamFolder(Boolean bool) {
            this.isTeamFolder = bool;
            return this;
        }

        public Builder withParentFolderId(String str) {
            this.parentFolderId = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.PaperFolderCreateArg$a */
    /* loaded from: classes4.dex */
    public static class C2770a extends StructSerializer<PaperFolderCreateArg> {

        /* renamed from: b */
        public static final C2770a f17615b = new C2770a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperFolderCreateArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("parent_folder_id".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("is_team_folder".equals(currentName)) {
                    bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            PaperFolderCreateArg paperFolderCreateArg = new PaperFolderCreateArg(str2, str3, bool);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperFolderCreateArg, paperFolderCreateArg.m11389e());
            return paperFolderCreateArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperFolderCreateArg paperFolderCreateArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperFolderCreateArg.f17612a, jsonGenerator);
            if (paperFolderCreateArg.f17613b != null) {
                jsonGenerator.writeFieldName("parent_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) paperFolderCreateArg.f17613b, jsonGenerator);
            }
            if (paperFolderCreateArg.f17614c != null) {
                jsonGenerator.writeFieldName("is_team_folder");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) paperFolderCreateArg.f17614c, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperFolderCreateArg(String str, String str2, Boolean bool) {
        if (str != null) {
            this.f17612a = str;
            this.f17613b = str2;
            this.f17614c = bool;
            return;
        }
        throw new IllegalArgumentException("Required value for 'name' is null");
    }

    /* renamed from: d */
    public static Builder m11385d(String str) {
        return new Builder(str);
    }

    /* renamed from: a */
    public Boolean m11386a() {
        return this.f17614c;
    }

    /* renamed from: b */
    public String m11387b() {
        return this.f17612a;
    }

    /* renamed from: c */
    public String m11388c() {
        return this.f17613b;
    }

    /* renamed from: e */
    public String m11389e() {
        return C2770a.f17615b.serialize((C2770a) this, true);
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
        PaperFolderCreateArg paperFolderCreateArg = (PaperFolderCreateArg) obj;
        String str3 = this.f17612a;
        String str4 = paperFolderCreateArg.f17612a;
        if ((str3 == str4 || str3.equals(str4)) && ((str = this.f17613b) == (str2 = paperFolderCreateArg.f17613b) || (str != null && str.equals(str2)))) {
            Boolean bool = this.f17614c;
            Boolean bool2 = paperFolderCreateArg.f17614c;
            if (bool == bool2) {
                return true;
            }
            if (bool != null && bool.equals(bool2)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17612a, this.f17613b, this.f17614c});
    }

    public String toString() {
        return C2770a.f17615b.serialize((C2770a) this, false);
    }

    public PaperFolderCreateArg(String str) {
        this(str, null, null);
    }
}
