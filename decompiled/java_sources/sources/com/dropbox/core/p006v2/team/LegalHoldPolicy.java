package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.LegalHoldStatus;
import com.dropbox.core.p006v2.team.MembersInfo;
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
public class LegalHoldPolicy {
    protected final Date activationTime;
    protected final String description;
    protected final Date endDate;

    /* renamed from: id */
    protected final String f18259id;
    protected final MembersInfo members;
    protected final String name;
    protected final Date startDate;
    protected final LegalHoldStatus status;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected Date activationTime;
        protected String description;
        protected Date endDate;

        /* renamed from: id */
        protected final String f18260id;
        protected final MembersInfo members;
        protected final String name;
        protected final Date startDate;
        protected final LegalHoldStatus status;

        public Builder(String str, String str2, MembersInfo membersInfo, LegalHoldStatus legalHoldStatus, Date date) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'id' is null");
            }
            if (!Pattern.matches("^pid_dbhid:.+", str)) {
                throw new IllegalArgumentException("String 'id' does not match pattern");
            }
            this.f18260id = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            if (str2.length() > 140) {
                throw new IllegalArgumentException("String 'name' is longer than 140");
            }
            this.name = str2;
            if (membersInfo == null) {
                throw new IllegalArgumentException("Required value for 'members' is null");
            }
            this.members = membersInfo;
            if (legalHoldStatus == null) {
                throw new IllegalArgumentException("Required value for 'status' is null");
            }
            this.status = legalHoldStatus;
            if (date == null) {
                throw new IllegalArgumentException("Required value for 'startDate' is null");
            }
            this.startDate = LangUtil.truncateMillis(date);
            this.description = null;
            this.activationTime = null;
            this.endDate = null;
        }

        public LegalHoldPolicy build() {
            return new LegalHoldPolicy(this.f18260id, this.name, this.members, this.status, this.startDate, this.description, this.activationTime, this.endDate);
        }

        public Builder withActivationTime(Date date) {
            this.activationTime = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withDescription(String str) {
            if (str != null && str.length() > 501) {
                throw new IllegalArgumentException("String 'description' is longer than 501");
            }
            this.description = str;
            return this;
        }

        public Builder withEndDate(Date date) {
            this.endDate = LangUtil.truncateMillis(date);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.LegalHoldPolicy$a */
    /* loaded from: classes4.dex */
    public static class C3098a extends StructSerializer<LegalHoldPolicy> {

        /* renamed from: b */
        public static final C3098a f18261b = new C3098a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldPolicy deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
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
            MembersInfo membersInfo = null;
            LegalHoldStatus legalHoldStatus = null;
            Date date = null;
            String str4 = null;
            Date date2 = null;
            Date date3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("name".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("members".equals(currentName)) {
                    membersInfo = MembersInfo.C3155a.f18365b.deserialize(jsonParser);
                } else if ("status".equals(currentName)) {
                    legalHoldStatus = LegalHoldStatus.C3100b.f18263b.deserialize(jsonParser);
                } else if (FirebaseAnalytics.Param.START_DATE.equals(currentName)) {
                    date = StoneSerializers.timestamp().deserialize(jsonParser);
                } else if ("description".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("activation_time".equals(currentName)) {
                    date2 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if (FirebaseAnalytics.Param.END_DATE.equals(currentName)) {
                    date3 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            if (membersInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"members\" missing.");
            }
            if (legalHoldStatus == null) {
                throw new JsonParseException(jsonParser, "Required field \"status\" missing.");
            }
            if (date == null) {
                throw new JsonParseException(jsonParser, "Required field \"start_date\" missing.");
            }
            LegalHoldPolicy legalHoldPolicy = new LegalHoldPolicy(str2, str3, membersInfo, legalHoldStatus, date, str4, date2, date3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(legalHoldPolicy, legalHoldPolicy.toStringMultiline());
            return legalHoldPolicy;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldPolicy legalHoldPolicy, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("id");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldPolicy.f18259id, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldPolicy.name, jsonGenerator);
            jsonGenerator.writeFieldName("members");
            MembersInfo.C3155a.f18365b.serialize((MembersInfo.C3155a) legalHoldPolicy.members, jsonGenerator);
            jsonGenerator.writeFieldName("status");
            LegalHoldStatus.C3100b.f18263b.serialize(legalHoldPolicy.status, jsonGenerator);
            jsonGenerator.writeFieldName(FirebaseAnalytics.Param.START_DATE);
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) legalHoldPolicy.startDate, jsonGenerator);
            if (legalHoldPolicy.description != null) {
                jsonGenerator.writeFieldName("description");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) legalHoldPolicy.description, jsonGenerator);
            }
            if (legalHoldPolicy.activationTime != null) {
                jsonGenerator.writeFieldName("activation_time");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) legalHoldPolicy.activationTime, jsonGenerator);
            }
            if (legalHoldPolicy.endDate != null) {
                jsonGenerator.writeFieldName(FirebaseAnalytics.Param.END_DATE);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) legalHoldPolicy.endDate, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LegalHoldPolicy(String str, String str2, MembersInfo membersInfo, LegalHoldStatus legalHoldStatus, Date date, String str3, Date date2, Date date3) {
        if (str != null) {
            if (Pattern.matches("^pid_dbhid:.+", str)) {
                this.f18259id = str;
                if (str2 != null) {
                    if (str2.length() <= 140) {
                        this.name = str2;
                        if (str3 != null && str3.length() > 501) {
                            throw new IllegalArgumentException("String 'description' is longer than 501");
                        }
                        this.description = str3;
                        this.activationTime = LangUtil.truncateMillis(date2);
                        if (membersInfo != null) {
                            this.members = membersInfo;
                            if (legalHoldStatus != null) {
                                this.status = legalHoldStatus;
                                if (date != null) {
                                    this.startDate = LangUtil.truncateMillis(date);
                                    this.endDate = LangUtil.truncateMillis(date3);
                                    return;
                                }
                                throw new IllegalArgumentException("Required value for 'startDate' is null");
                            }
                            throw new IllegalArgumentException("Required value for 'status' is null");
                        }
                        throw new IllegalArgumentException("Required value for 'members' is null");
                    }
                    throw new IllegalArgumentException("String 'name' is longer than 140");
                }
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            throw new IllegalArgumentException("String 'id' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'id' is null");
    }

    public static Builder newBuilder(String str, String str2, MembersInfo membersInfo, LegalHoldStatus legalHoldStatus, Date date) {
        return new Builder(str, str2, membersInfo, legalHoldStatus, date);
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        MembersInfo membersInfo;
        MembersInfo membersInfo2;
        LegalHoldStatus legalHoldStatus;
        LegalHoldStatus legalHoldStatus2;
        Date date;
        Date date2;
        String str3;
        String str4;
        Date date3;
        Date date4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        LegalHoldPolicy legalHoldPolicy = (LegalHoldPolicy) obj;
        String str5 = this.f18259id;
        String str6 = legalHoldPolicy.f18259id;
        if ((str5 == str6 || str5.equals(str6)) && (((str = this.name) == (str2 = legalHoldPolicy.name) || str.equals(str2)) && (((membersInfo = this.members) == (membersInfo2 = legalHoldPolicy.members) || membersInfo.equals(membersInfo2)) && (((legalHoldStatus = this.status) == (legalHoldStatus2 = legalHoldPolicy.status) || legalHoldStatus.equals(legalHoldStatus2)) && (((date = this.startDate) == (date2 = legalHoldPolicy.startDate) || date.equals(date2)) && (((str3 = this.description) == (str4 = legalHoldPolicy.description) || (str3 != null && str3.equals(str4))) && ((date3 = this.activationTime) == (date4 = legalHoldPolicy.activationTime) || (date3 != null && date3.equals(date4))))))))) {
            Date date5 = this.endDate;
            Date date6 = legalHoldPolicy.endDate;
            if (date5 == date6) {
                return true;
            }
            if (date5 != null && date5.equals(date6)) {
                return true;
            }
        }
        return false;
    }

    public Date getActivationTime() {
        return this.activationTime;
    }

    public String getDescription() {
        return this.description;
    }

    public Date getEndDate() {
        return this.endDate;
    }

    public String getId() {
        return this.f18259id;
    }

    public MembersInfo getMembers() {
        return this.members;
    }

    public String getName() {
        return this.name;
    }

    public Date getStartDate() {
        return this.startDate;
    }

    public LegalHoldStatus getStatus() {
        return this.status;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18259id, this.name, this.description, this.activationTime, this.members, this.status, this.startDate, this.endDate});
    }

    public String toString() {
        return C3098a.f18261b.serialize((C3098a) this, false);
    }

    public String toStringMultiline() {
        return C3098a.f18261b.serialize((C3098a) this, true);
    }

    public LegalHoldPolicy(String str, String str2, MembersInfo membersInfo, LegalHoldStatus legalHoldStatus, Date date) {
        this(str, str2, membersInfo, legalHoldStatus, date, null, null, null);
    }
}
