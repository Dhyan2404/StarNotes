package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.SyncSettingArg;
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
public class ContentSyncSettingArg {

    /* renamed from: id */
    protected final String f17045id;
    protected final SyncSettingArg syncSetting;

    /* loaded from: classes4.dex */
    public static class Serializer extends StructSerializer<ContentSyncSettingArg> {
        public static final Serializer INSTANCE = new Serializer();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ContentSyncSettingArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                SyncSettingArg syncSettingArg = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("id".equals(currentName)) {
                        str2 = StoneSerializers.string().deserialize(jsonParser);
                    } else if ("sync_setting".equals(currentName)) {
                        syncSettingArg = SyncSettingArg.Serializer.INSTANCE.deserialize(jsonParser);
                    } else {
                        StoneSerializer.skipValue(jsonParser);
                    }
                }
                if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"id\" missing.");
                }
                if (syncSettingArg != null) {
                    ContentSyncSettingArg contentSyncSettingArg = new ContentSyncSettingArg(str2, syncSettingArg);
                    if (!z) {
                        StoneSerializer.expectEndObject(jsonParser);
                    }
                    StoneDeserializerLogger.log(contentSyncSettingArg, contentSyncSettingArg.toStringMultiline());
                    return contentSyncSettingArg;
                }
                throw new JsonParseException(jsonParser, "Required field \"sync_setting\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ContentSyncSettingArg contentSyncSettingArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("id");
            StoneSerializers.string().serialize((StoneSerializer<String>) contentSyncSettingArg.f17045id, jsonGenerator);
            jsonGenerator.writeFieldName("sync_setting");
            SyncSettingArg.Serializer.INSTANCE.serialize(contentSyncSettingArg.syncSetting, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ContentSyncSettingArg(String str, SyncSettingArg syncSettingArg) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'id' is null");
        }
        if (str.length() < 4) {
            throw new IllegalArgumentException("String 'id' is shorter than 4");
        }
        if (!Pattern.matches("id:.+", str)) {
            throw new IllegalArgumentException("String 'id' does not match pattern");
        }
        this.f17045id = str;
        if (syncSettingArg == null) {
            throw new IllegalArgumentException("Required value for 'syncSetting' is null");
        }
        this.syncSetting = syncSettingArg;
    }

    public boolean equals(Object obj) {
        SyncSettingArg syncSettingArg;
        SyncSettingArg syncSettingArg2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ContentSyncSettingArg contentSyncSettingArg = (ContentSyncSettingArg) obj;
        String str = this.f17045id;
        String str2 = contentSyncSettingArg.f17045id;
        return (str == str2 || str.equals(str2)) && ((syncSettingArg = this.syncSetting) == (syncSettingArg2 = contentSyncSettingArg.syncSetting) || syncSettingArg.equals(syncSettingArg2));
    }

    public String getId() {
        return this.f17045id;
    }

    public SyncSettingArg getSyncSetting() {
        return this.syncSetting;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17045id, this.syncSetting});
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
