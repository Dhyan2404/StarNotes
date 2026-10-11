package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.TeamMemberStatus;
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
import com.onyx.android.sdk.cloudstorage.constans.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class LegalHoldHeldRevisionMetadata {
    protected final String authorEmail;
    protected final String authorMemberId;
    protected final TeamMemberStatus authorMemberStatus;
    protected final String contentHash;
    protected final String fileType;
    protected final String newFilename;
    protected final String originalFilePath;
    protected final String originalRevisionId;
    protected final Date serverModified;
    protected final long size;

    /* renamed from: com.dropbox.core.v2.team.LegalHoldHeldRevisionMetadata$a */
    /* loaded from: classes4.dex */
    public static class C3097a extends StructSerializer<LegalHoldHeldRevisionMetadata> {

        /* renamed from: b */
        public static final C3097a f18258b = new C3097a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldHeldRevisionMetadata deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Long l = null;
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
            String str4 = null;
            Date date = null;
            String str5 = null;
            TeamMemberStatus teamMemberStatus = null;
            String str6 = null;
            String str7 = null;
            String str8 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_filename".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("original_revision_id".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("original_file_path".equals(currentName)) {
                    str4 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("server_modified".equals(currentName)) {
                    date = StoneSerializers.timestamp().deserialize(jsonParser);
                } else if ("author_member_id".equals(currentName)) {
                    str5 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("author_member_status".equals(currentName)) {
                    teamMemberStatus = TeamMemberStatus.C3248b.f18538b.deserialize(jsonParser);
                } else if ("author_email".equals(currentName)) {
                    str6 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("file_type".equals(currentName)) {
                    str7 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("size".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if (Constants.ALI_YUN_CONTENT_HASH.equals(currentName)) {
                    str8 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_filename\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"original_revision_id\" missing.");
            }
            if (str4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"original_file_path\" missing.");
            }
            if (date == null) {
                throw new JsonParseException(jsonParser, "Required field \"server_modified\" missing.");
            }
            if (str5 == null) {
                throw new JsonParseException(jsonParser, "Required field \"author_member_id\" missing.");
            }
            if (teamMemberStatus == null) {
                throw new JsonParseException(jsonParser, "Required field \"author_member_status\" missing.");
            }
            if (str6 == null) {
                throw new JsonParseException(jsonParser, "Required field \"author_email\" missing.");
            }
            if (str7 == null) {
                throw new JsonParseException(jsonParser, "Required field \"file_type\" missing.");
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"size\" missing.");
            }
            if (str8 == null) {
                throw new JsonParseException(jsonParser, "Required field \"content_hash\" missing.");
            }
            LegalHoldHeldRevisionMetadata legalHoldHeldRevisionMetadata = new LegalHoldHeldRevisionMetadata(str2, str3, str4, date, str5, teamMemberStatus, str6, str7, l.longValue(), str8);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(legalHoldHeldRevisionMetadata, legalHoldHeldRevisionMetadata.toStringMultiline());
            return legalHoldHeldRevisionMetadata;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldHeldRevisionMetadata legalHoldHeldRevisionMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_filename");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldHeldRevisionMetadata.newFilename, jsonGenerator);
            jsonGenerator.writeFieldName("original_revision_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldHeldRevisionMetadata.originalRevisionId, jsonGenerator);
            jsonGenerator.writeFieldName("original_file_path");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldHeldRevisionMetadata.originalFilePath, jsonGenerator);
            jsonGenerator.writeFieldName("server_modified");
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) legalHoldHeldRevisionMetadata.serverModified, jsonGenerator);
            jsonGenerator.writeFieldName("author_member_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldHeldRevisionMetadata.authorMemberId, jsonGenerator);
            jsonGenerator.writeFieldName("author_member_status");
            TeamMemberStatus.C3248b.f18538b.serialize(legalHoldHeldRevisionMetadata.authorMemberStatus, jsonGenerator);
            jsonGenerator.writeFieldName("author_email");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldHeldRevisionMetadata.authorEmail, jsonGenerator);
            jsonGenerator.writeFieldName("file_type");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldHeldRevisionMetadata.fileType, jsonGenerator);
            jsonGenerator.writeFieldName("size");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(legalHoldHeldRevisionMetadata.size), jsonGenerator);
            jsonGenerator.writeFieldName(Constants.ALI_YUN_CONTENT_HASH);
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldHeldRevisionMetadata.contentHash, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LegalHoldHeldRevisionMetadata(String str, String str2, String str3, Date date, String str4, TeamMemberStatus teamMemberStatus, String str5, String str6, long j, String str7) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'newFilename' is null");
        }
        this.newFilename = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'originalRevisionId' is null");
        }
        if (str2.length() < 9) {
            throw new IllegalArgumentException("String 'originalRevisionId' is shorter than 9");
        }
        if (!Pattern.matches("[0-9a-f]+", str2)) {
            throw new IllegalArgumentException("String 'originalRevisionId' does not match pattern");
        }
        this.originalRevisionId = str2;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'originalFilePath' is null");
        }
        if (!Pattern.matches("(/(.|[\\r\\n])*)?", str3)) {
            throw new IllegalArgumentException("String 'originalFilePath' does not match pattern");
        }
        this.originalFilePath = str3;
        if (date == null) {
            throw new IllegalArgumentException("Required value for 'serverModified' is null");
        }
        this.serverModified = LangUtil.truncateMillis(date);
        if (str4 == null) {
            throw new IllegalArgumentException("Required value for 'authorMemberId' is null");
        }
        this.authorMemberId = str4;
        if (teamMemberStatus == null) {
            throw new IllegalArgumentException("Required value for 'authorMemberStatus' is null");
        }
        this.authorMemberStatus = teamMemberStatus;
        if (str5 == null) {
            throw new IllegalArgumentException("Required value for 'authorEmail' is null");
        }
        if (str5.length() > 255) {
            throw new IllegalArgumentException("String 'authorEmail' is longer than 255");
        }
        if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str5)) {
            throw new IllegalArgumentException("String 'authorEmail' does not match pattern");
        }
        this.authorEmail = str5;
        if (str6 == null) {
            throw new IllegalArgumentException("Required value for 'fileType' is null");
        }
        this.fileType = str6;
        this.size = j;
        if (str7 == null) {
            throw new IllegalArgumentException("Required value for 'contentHash' is null");
        }
        if (str7.length() < 64) {
            throw new IllegalArgumentException("String 'contentHash' is shorter than 64");
        }
        if (str7.length() > 64) {
            throw new IllegalArgumentException("String 'contentHash' is longer than 64");
        }
        this.contentHash = str7;
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
        TeamMemberStatus teamMemberStatus;
        TeamMemberStatus teamMemberStatus2;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        LegalHoldHeldRevisionMetadata legalHoldHeldRevisionMetadata = (LegalHoldHeldRevisionMetadata) obj;
        String str13 = this.newFilename;
        String str14 = legalHoldHeldRevisionMetadata.newFilename;
        return (str13 == str14 || str13.equals(str14)) && ((str = this.originalRevisionId) == (str2 = legalHoldHeldRevisionMetadata.originalRevisionId) || str.equals(str2)) && (((str3 = this.originalFilePath) == (str4 = legalHoldHeldRevisionMetadata.originalFilePath) || str3.equals(str4)) && (((date = this.serverModified) == (date2 = legalHoldHeldRevisionMetadata.serverModified) || date.equals(date2)) && (((str5 = this.authorMemberId) == (str6 = legalHoldHeldRevisionMetadata.authorMemberId) || str5.equals(str6)) && (((teamMemberStatus = this.authorMemberStatus) == (teamMemberStatus2 = legalHoldHeldRevisionMetadata.authorMemberStatus) || teamMemberStatus.equals(teamMemberStatus2)) && (((str7 = this.authorEmail) == (str8 = legalHoldHeldRevisionMetadata.authorEmail) || str7.equals(str8)) && (((str9 = this.fileType) == (str10 = legalHoldHeldRevisionMetadata.fileType) || str9.equals(str10)) && this.size == legalHoldHeldRevisionMetadata.size && ((str11 = this.contentHash) == (str12 = legalHoldHeldRevisionMetadata.contentHash) || str11.equals(str12))))))));
    }

    public String getAuthorEmail() {
        return this.authorEmail;
    }

    public String getAuthorMemberId() {
        return this.authorMemberId;
    }

    public TeamMemberStatus getAuthorMemberStatus() {
        return this.authorMemberStatus;
    }

    public String getContentHash() {
        return this.contentHash;
    }

    public String getFileType() {
        return this.fileType;
    }

    public String getNewFilename() {
        return this.newFilename;
    }

    public String getOriginalFilePath() {
        return this.originalFilePath;
    }

    public String getOriginalRevisionId() {
        return this.originalRevisionId;
    }

    public Date getServerModified() {
        return this.serverModified;
    }

    public long getSize() {
        return this.size;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newFilename, this.originalRevisionId, this.originalFilePath, this.serverModified, this.authorMemberId, this.authorMemberStatus, this.authorEmail, this.fileType, Long.valueOf(this.size), this.contentHash});
    }

    public String toString() {
        return C3097a.f18258b.serialize((C3097a) this, false);
    }

    public String toStringMultiline() {
        return C3097a.f18258b.serialize((C3097a) this, true);
    }
}
