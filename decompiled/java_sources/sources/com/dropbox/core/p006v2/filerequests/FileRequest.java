package com.dropbox.core.p006v2.filerequests;

import com.dropbox.core.p006v2.filerequests.FileRequestDeadline;
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
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class FileRequest {
    protected final Date created;
    protected final FileRequestDeadline deadline;
    protected final String destination;
    protected final long fileCount;

    /* renamed from: id */
    protected final String f16994id;
    protected final boolean isOpen;
    protected final String title;
    protected final String url;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final Date created;
        protected FileRequestDeadline deadline;
        protected String destination;
        protected final long fileCount;

        /* renamed from: id */
        protected final String f16995id;
        protected final boolean isOpen;
        protected final String title;
        protected final String url;

        public Builder(String str, String str2, String str3, Date date, boolean z, long j) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'id' is null");
            }
            if (str.length() < 1) {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z]+", str)) {
                throw new IllegalArgumentException("String 'id' does not match pattern");
            }
            this.f16995id = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'url' is null");
            }
            if (str2.length() < 1) {
                throw new IllegalArgumentException("String 'url' is shorter than 1");
            }
            this.url = str2;
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'title' is null");
            }
            if (str3.length() < 1) {
                throw new IllegalArgumentException("String 'title' is shorter than 1");
            }
            this.title = str3;
            if (date == null) {
                throw new IllegalArgumentException("Required value for 'created' is null");
            }
            this.created = LangUtil.truncateMillis(date);
            this.isOpen = z;
            this.fileCount = j;
            this.destination = null;
            this.deadline = null;
        }

        public FileRequest build() {
            return new FileRequest(this.f16995id, this.url, this.title, this.created, this.isOpen, this.fileCount, this.destination, this.deadline);
        }

        public Builder withDeadline(FileRequestDeadline fileRequestDeadline) {
            this.deadline = fileRequestDeadline;
            return this;
        }

        public Builder withDestination(String str) {
            if (str != null && !Pattern.matches("/(.|[\\r\\n])*", str)) {
                throw new IllegalArgumentException("String 'destination' does not match pattern");
            }
            this.destination = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.filerequests.FileRequest$a */
    /* loaded from: classes4.dex */
    public static class C2471a extends StructSerializer<FileRequest> {

        /* renamed from: b */
        public static final C2471a f16996b = new C2471a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileRequest deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Long l = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            Date date = null;
            String str5 = null;
            FileRequestDeadline fileRequestDeadline = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("url".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("title".equals(currentName)) {
                    str4 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("created".equals(currentName)) {
                    date = StoneSerializers.timestamp().deserialize(jsonParser);
                } else if ("is_open".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("file_count".equals(currentName)) {
                    l = StoneSerializers.int64().deserialize(jsonParser);
                } else if (FirebaseAnalytics.Param.DESTINATION.equals(currentName)) {
                    str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("deadline".equals(currentName)) {
                    fileRequestDeadline = (FileRequestDeadline) StoneSerializers.nullableStruct(FileRequestDeadline.C2472a.f16997b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"url\" missing.");
            }
            if (str4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"title\" missing.");
            }
            if (date == null) {
                throw new JsonParseException(jsonParser, "Required field \"created\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_open\" missing.");
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"file_count\" missing.");
            }
            FileRequest fileRequest = new FileRequest(str2, str3, str4, date, bool.booleanValue(), l.longValue(), str5, fileRequestDeadline);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileRequest, fileRequest.toStringMultiline());
            return fileRequest;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileRequest fileRequest, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("id");
            StoneSerializers.string().serialize((StoneSerializer<String>) fileRequest.f16994id, jsonGenerator);
            jsonGenerator.writeFieldName("url");
            StoneSerializers.string().serialize((StoneSerializer<String>) fileRequest.url, jsonGenerator);
            jsonGenerator.writeFieldName("title");
            StoneSerializers.string().serialize((StoneSerializer<String>) fileRequest.title, jsonGenerator);
            jsonGenerator.writeFieldName("created");
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) fileRequest.created, jsonGenerator);
            jsonGenerator.writeFieldName("is_open");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(fileRequest.isOpen), jsonGenerator);
            jsonGenerator.writeFieldName("file_count");
            StoneSerializers.int64().serialize((StoneSerializer<Long>) Long.valueOf(fileRequest.fileCount), jsonGenerator);
            if (fileRequest.destination != null) {
                jsonGenerator.writeFieldName(FirebaseAnalytics.Param.DESTINATION);
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileRequest.destination, jsonGenerator);
            }
            if (fileRequest.deadline != null) {
                jsonGenerator.writeFieldName("deadline");
                StoneSerializers.nullableStruct(FileRequestDeadline.C2472a.f16997b).serialize((StructSerializer) fileRequest.deadline, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileRequest(String str, String str2, String str3, Date date, boolean z, long j, String str4, FileRequestDeadline fileRequestDeadline) {
        if (str != null) {
            if (str.length() >= 1) {
                if (Pattern.matches("[-_0-9a-zA-Z]+", str)) {
                    this.f16994id = str;
                    if (str2 != null) {
                        if (str2.length() >= 1) {
                            this.url = str2;
                            if (str3 != null) {
                                if (str3.length() >= 1) {
                                    this.title = str3;
                                    if (str4 != null && !Pattern.matches("/(.|[\\r\\n])*", str4)) {
                                        throw new IllegalArgumentException("String 'destination' does not match pattern");
                                    }
                                    this.destination = str4;
                                    if (date != null) {
                                        this.created = LangUtil.truncateMillis(date);
                                        this.deadline = fileRequestDeadline;
                                        this.isOpen = z;
                                        this.fileCount = j;
                                        return;
                                    }
                                    throw new IllegalArgumentException("Required value for 'created' is null");
                                }
                                throw new IllegalArgumentException("String 'title' is shorter than 1");
                            }
                            throw new IllegalArgumentException("Required value for 'title' is null");
                        }
                        throw new IllegalArgumentException("String 'url' is shorter than 1");
                    }
                    throw new IllegalArgumentException("Required value for 'url' is null");
                }
                throw new IllegalArgumentException("String 'id' does not match pattern");
            }
            throw new IllegalArgumentException("String 'id' is shorter than 1");
        }
        throw new IllegalArgumentException("Required value for 'id' is null");
    }

    public static Builder newBuilder(String str, String str2, String str3, Date date, boolean z, long j) {
        return new Builder(str, str2, str3, date, z, j);
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        Date date;
        Date date2;
        String str5;
        String str6;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileRequest fileRequest = (FileRequest) obj;
        String str7 = this.f16994id;
        String str8 = fileRequest.f16994id;
        if ((str7 == str8 || str7.equals(str8)) && (((str = this.url) == (str2 = fileRequest.url) || str.equals(str2)) && (((str3 = this.title) == (str4 = fileRequest.title) || str3.equals(str4)) && (((date = this.created) == (date2 = fileRequest.created) || date.equals(date2)) && this.isOpen == fileRequest.isOpen && this.fileCount == fileRequest.fileCount && ((str5 = this.destination) == (str6 = fileRequest.destination) || (str5 != null && str5.equals(str6))))))) {
            FileRequestDeadline fileRequestDeadline = this.deadline;
            FileRequestDeadline fileRequestDeadline2 = fileRequest.deadline;
            if (fileRequestDeadline == fileRequestDeadline2) {
                return true;
            }
            if (fileRequestDeadline != null && fileRequestDeadline.equals(fileRequestDeadline2)) {
                return true;
            }
        }
        return false;
    }

    public Date getCreated() {
        return this.created;
    }

    public FileRequestDeadline getDeadline() {
        return this.deadline;
    }

    public String getDestination() {
        return this.destination;
    }

    public long getFileCount() {
        return this.fileCount;
    }

    public String getId() {
        return this.f16994id;
    }

    public boolean getIsOpen() {
        return this.isOpen;
    }

    public String getTitle() {
        return this.title;
    }

    public String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16994id, this.url, this.title, this.destination, this.created, this.deadline, Boolean.valueOf(this.isOpen), Long.valueOf(this.fileCount)});
    }

    public String toString() {
        return C2471a.f16996b.serialize((C2471a) this, false);
    }

    public String toStringMultiline() {
        return C2471a.f16996b.serialize((C2471a) this, true);
    }

    public FileRequest(String str, String str2, String str3, Date date, boolean z, long j) {
        this(str, str2, str3, date, z, j, null, null);
    }
}
