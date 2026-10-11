package com.dropbox.core.p006v2.filerequests;

import com.dropbox.core.p006v2.filerequests.GracePeriod;
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
public class FileRequestDeadline {
    protected final GracePeriod allowLateUploads;
    protected final Date deadline;

    /* renamed from: com.dropbox.core.v2.filerequests.FileRequestDeadline$a */
    /* loaded from: classes4.dex */
    public static class C2472a extends StructSerializer<FileRequestDeadline> {

        /* renamed from: b */
        public static final C2472a f16997b = new C2472a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileRequestDeadline deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            GracePeriod gracePeriod = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("deadline".equals(currentName)) {
                    date = StoneSerializers.timestamp().deserialize(jsonParser);
                } else if ("allow_late_uploads".equals(currentName)) {
                    gracePeriod = (GracePeriod) StoneSerializers.nullable(GracePeriod.C2476b.f17001b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (date == null) {
                throw new JsonParseException(jsonParser, "Required field \"deadline\" missing.");
            }
            FileRequestDeadline fileRequestDeadline = new FileRequestDeadline(date, gracePeriod);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileRequestDeadline, fileRequestDeadline.toStringMultiline());
            return fileRequestDeadline;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileRequestDeadline fileRequestDeadline, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("deadline");
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) fileRequestDeadline.deadline, jsonGenerator);
            if (fileRequestDeadline.allowLateUploads != null) {
                jsonGenerator.writeFieldName("allow_late_uploads");
                StoneSerializers.nullable(GracePeriod.C2476b.f17001b).serialize((StoneSerializer) fileRequestDeadline.allowLateUploads, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileRequestDeadline(Date date, GracePeriod gracePeriod) {
        if (date != null) {
            this.deadline = LangUtil.truncateMillis(date);
            this.allowLateUploads = gracePeriod;
            return;
        }
        throw new IllegalArgumentException("Required value for 'deadline' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileRequestDeadline fileRequestDeadline = (FileRequestDeadline) obj;
        Date date = this.deadline;
        Date date2 = fileRequestDeadline.deadline;
        if (date == date2 || date.equals(date2)) {
            GracePeriod gracePeriod = this.allowLateUploads;
            GracePeriod gracePeriod2 = fileRequestDeadline.allowLateUploads;
            if (gracePeriod == gracePeriod2) {
                return true;
            }
            if (gracePeriod != null && gracePeriod.equals(gracePeriod2)) {
                return true;
            }
        }
        return false;
    }

    public GracePeriod getAllowLateUploads() {
        return this.allowLateUploads;
    }

    public Date getDeadline() {
        return this.deadline;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.deadline, this.allowLateUploads});
    }

    public String toString() {
        return C2472a.f16997b.serialize((C2472a) this, false);
    }

    public String toStringMultiline() {
        return C2472a.f16997b.serialize((C2472a) this, true);
    }

    public FileRequestDeadline(Date date) {
        this(date, null);
    }
}
