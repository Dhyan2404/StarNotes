package com.dropbox.core.p006v2.teamlog;

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
public class EnterpriseSettingsLockingDetails {
    protected final String newSettingsPageLockingState;
    protected final String previousSettingsPageLockingState;
    protected final String settingsPageName;
    protected final String teamName;

    /* renamed from: com.dropbox.core.v2.teamlog.EnterpriseSettingsLockingDetails$a */
    /* loaded from: classes4.dex */
    public static class C3502a extends StructSerializer<EnterpriseSettingsLockingDetails> {

        /* renamed from: b */
        public static final C3502a f18895b = new C3502a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public EnterpriseSettingsLockingDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str4 = null;
            String str5 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("team_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("settings_page_name".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("previous_settings_page_locking_state".equals(currentName)) {
                    str4 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("new_settings_page_locking_state".equals(currentName)) {
                    str5 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_name\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"settings_page_name\" missing.");
            }
            if (str4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_settings_page_locking_state\" missing.");
            }
            if (str5 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_settings_page_locking_state\" missing.");
            }
            EnterpriseSettingsLockingDetails enterpriseSettingsLockingDetails = new EnterpriseSettingsLockingDetails(str2, str3, str4, str5);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(enterpriseSettingsLockingDetails, enterpriseSettingsLockingDetails.toStringMultiline());
            return enterpriseSettingsLockingDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(EnterpriseSettingsLockingDetails enterpriseSettingsLockingDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) enterpriseSettingsLockingDetails.teamName, jsonGenerator);
            jsonGenerator.writeFieldName("settings_page_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) enterpriseSettingsLockingDetails.settingsPageName, jsonGenerator);
            jsonGenerator.writeFieldName("previous_settings_page_locking_state");
            StoneSerializers.string().serialize((StoneSerializer<String>) enterpriseSettingsLockingDetails.previousSettingsPageLockingState, jsonGenerator);
            jsonGenerator.writeFieldName("new_settings_page_locking_state");
            StoneSerializers.string().serialize((StoneSerializer<String>) enterpriseSettingsLockingDetails.newSettingsPageLockingState, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public EnterpriseSettingsLockingDetails(String str, String str2, String str3, String str4) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'teamName' is null");
        }
        this.teamName = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'settingsPageName' is null");
        }
        this.settingsPageName = str2;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'previousSettingsPageLockingState' is null");
        }
        this.previousSettingsPageLockingState = str3;
        if (str4 == null) {
            throw new IllegalArgumentException("Required value for 'newSettingsPageLockingState' is null");
        }
        this.newSettingsPageLockingState = str4;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        EnterpriseSettingsLockingDetails enterpriseSettingsLockingDetails = (EnterpriseSettingsLockingDetails) obj;
        String str7 = this.teamName;
        String str8 = enterpriseSettingsLockingDetails.teamName;
        return (str7 == str8 || str7.equals(str8)) && ((str = this.settingsPageName) == (str2 = enterpriseSettingsLockingDetails.settingsPageName) || str.equals(str2)) && (((str3 = this.previousSettingsPageLockingState) == (str4 = enterpriseSettingsLockingDetails.previousSettingsPageLockingState) || str3.equals(str4)) && ((str5 = this.newSettingsPageLockingState) == (str6 = enterpriseSettingsLockingDetails.newSettingsPageLockingState) || str5.equals(str6)));
    }

    public String getNewSettingsPageLockingState() {
        return this.newSettingsPageLockingState;
    }

    public String getPreviousSettingsPageLockingState() {
        return this.previousSettingsPageLockingState;
    }

    public String getSettingsPageName() {
        return this.settingsPageName;
    }

    public String getTeamName() {
        return this.teamName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamName, this.settingsPageName, this.previousSettingsPageLockingState, this.newSettingsPageLockingState});
    }

    public String toString() {
        return C3502a.f18895b.serialize((C3502a) this, false);
    }

    public String toStringMultiline() {
        return C3502a.f18895b.serialize((C3502a) this, true);
    }
}
