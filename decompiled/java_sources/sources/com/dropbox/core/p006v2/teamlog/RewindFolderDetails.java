package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* loaded from: classes4.dex */
public class RewindFolderDetails {
    protected final Date rewindFolderTargetTsMs;

    /* renamed from: com.dropbox.core.v2.teamlog.RewindFolderDetails$a */
    /* loaded from: classes4.dex */
    public static class C3979a extends StructSerializer<RewindFolderDetails> {

        /* renamed from: b */
        public static final C3979a f20255b = new C3979a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RewindFolderDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Date date = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("rewind_folder_target_ts_ms".equals(currentName)) {
                    date = StoneSerializers.timestamp().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (date == null) {
                throw new JsonParseException(jsonParser, "Required field \"rewind_folder_target_ts_ms\" missing.");
            }
            RewindFolderDetails rewindFolderDetails = new RewindFolderDetails(date);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(rewindFolderDetails, rewindFolderDetails.toStringMultiline());
            return rewindFolderDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RewindFolderDetails rewindFolderDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("rewind_folder_target_ts_ms");
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) rewindFolderDetails.rewindFolderTargetTsMs, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RewindFolderDetails(Date date) {
        if (date == null) {
            throw new IllegalArgumentException("Required value for 'rewindFolderTargetTsMs' is null");
        }
        this.rewindFolderTargetTsMs = LangUtil.truncateMillis(date);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        Date date = this.rewindFolderTargetTsMs;
        Date date2 = ((RewindFolderDetails) obj).rewindFolderTargetTsMs;
        return date == date2 || date.equals(date2);
    }

    public Date getRewindFolderTargetTsMs() {
        return this.rewindFolderTargetTsMs;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.rewindFolderTargetTsMs});
    }

    public String toString() {
        return C3979a.f20255b.serialize((C3979a) this, false);
    }

    public String toStringMultiline() {
        return C3979a.f20255b.serialize((C3979a) this, true);
    }
}
