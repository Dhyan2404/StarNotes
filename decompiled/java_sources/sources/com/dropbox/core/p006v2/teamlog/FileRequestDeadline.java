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
public class FileRequestDeadline {
    protected final String allowLateUploads;
    protected final Date deadline;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected Date deadline = null;
        protected String allowLateUploads = null;

        public FileRequestDeadline build() {
            return new FileRequestDeadline(this.deadline, this.allowLateUploads);
        }

        public Builder withAllowLateUploads(String str) {
            this.allowLateUploads = str;
            return this;
        }

        public Builder withDeadline(Date date) {
            this.deadline = LangUtil.truncateMillis(date);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.FileRequestDeadline$a */
    /* loaded from: classes4.dex */
    public static class C3582a extends StructSerializer<FileRequestDeadline> {

        /* renamed from: b */
        public static final C3582a f19841b = new C3582a();

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
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("deadline".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if ("allow_late_uploads".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            FileRequestDeadline fileRequestDeadline = new FileRequestDeadline(date, str2);
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
            if (fileRequestDeadline.deadline != null) {
                jsonGenerator.writeFieldName("deadline");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) fileRequestDeadline.deadline, jsonGenerator);
            }
            if (fileRequestDeadline.allowLateUploads != null) {
                jsonGenerator.writeFieldName("allow_late_uploads");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileRequestDeadline.allowLateUploads, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileRequestDeadline(Date date, String str) {
        this.deadline = LangUtil.truncateMillis(date);
        this.allowLateUploads = str;
    }

    public static Builder newBuilder() {
        return new Builder();
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
        if (date == date2 || (date != null && date.equals(date2))) {
            String str = this.allowLateUploads;
            String str2 = fileRequestDeadline.allowLateUploads;
            if (str == str2) {
                return true;
            }
            if (str != null && str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public String getAllowLateUploads() {
        return this.allowLateUploads;
    }

    public Date getDeadline() {
        return this.deadline;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.deadline, this.allowLateUploads});
    }

    public String toString() {
        return C3582a.f19841b.serialize((C3582a) this, false);
    }

    public String toStringMultiline() {
        return C3582a.f19841b.serialize((C3582a) this, true);
    }

    public FileRequestDeadline() {
        this(null, null);
    }
}
