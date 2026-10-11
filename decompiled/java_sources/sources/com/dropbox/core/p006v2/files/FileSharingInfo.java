package com.dropbox.core.p006v2.files;

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
public class FileSharingInfo extends SharingInfo {
    protected final String modifiedBy;
    protected final String parentSharedFolderId;

    /* renamed from: com.dropbox.core.v2.files.FileSharingInfo$a */
    /* loaded from: classes4.dex */
    public static class C2545a extends StructSerializer<FileSharingInfo> {

        /* renamed from: b */
        public static final C2545a f17153b = new C2545a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileSharingInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str2 = null;
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("read_only".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("parent_shared_folder_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("modified_by".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"read_only\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"parent_shared_folder_id\" missing.");
            }
            FileSharingInfo fileSharingInfo = new FileSharingInfo(bool.booleanValue(), str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileSharingInfo, fileSharingInfo.toStringMultiline());
            return fileSharingInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileSharingInfo fileSharingInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("read_only");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(fileSharingInfo.readOnly), jsonGenerator);
            jsonGenerator.writeFieldName("parent_shared_folder_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) fileSharingInfo.parentSharedFolderId, jsonGenerator);
            if (fileSharingInfo.modifiedBy != null) {
                jsonGenerator.writeFieldName("modified_by");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileSharingInfo.modifiedBy, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileSharingInfo(boolean z, String str, String str2) {
        super(z);
        if (str != null) {
            if (Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                this.parentSharedFolderId = str;
                if (str2 != null) {
                    if (str2.length() >= 40) {
                        if (str2.length() > 40) {
                            throw new IllegalArgumentException("String 'modifiedBy' is longer than 40");
                        }
                    } else {
                        throw new IllegalArgumentException("String 'modifiedBy' is shorter than 40");
                    }
                }
                this.modifiedBy = str2;
                return;
            }
            throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'parentSharedFolderId' is null");
    }

    @Override // com.dropbox.core.p006v2.files.SharingInfo
    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileSharingInfo fileSharingInfo = (FileSharingInfo) obj;
        if (this.readOnly == fileSharingInfo.readOnly && ((str = this.parentSharedFolderId) == (str2 = fileSharingInfo.parentSharedFolderId) || str.equals(str2))) {
            String str3 = this.modifiedBy;
            String str4 = fileSharingInfo.modifiedBy;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
                return true;
            }
        }
        return false;
    }

    public String getModifiedBy() {
        return this.modifiedBy;
    }

    public String getParentSharedFolderId() {
        return this.parentSharedFolderId;
    }

    @Override // com.dropbox.core.p006v2.files.SharingInfo
    public boolean getReadOnly() {
        return this.readOnly;
    }

    @Override // com.dropbox.core.p006v2.files.SharingInfo
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.parentSharedFolderId, this.modifiedBy});
    }

    @Override // com.dropbox.core.p006v2.files.SharingInfo
    public String toString() {
        return C2545a.f17153b.serialize((C2545a) this, false);
    }

    @Override // com.dropbox.core.p006v2.files.SharingInfo
    public String toStringMultiline() {
        return C2545a.f17153b.serialize((C2545a) this, true);
    }

    public FileSharingInfo(boolean z, String str) {
        this(z, str, null);
    }
}
