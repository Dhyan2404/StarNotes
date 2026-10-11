package com.dropbox.core.p006v2.teamlog;

import androidx.core.net.MailTo;
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
public class Certificate {
    protected final String commonName;
    protected final String expirationDate;
    protected final String issueDate;
    protected final String issuer;
    protected final String serialNumber;
    protected final String sha1Fingerprint;
    protected final String subject;

    /* renamed from: com.dropbox.core.v2.teamlog.Certificate$a */
    /* loaded from: classes4.dex */
    public static class C3390a extends StructSerializer<Certificate> {

        /* renamed from: b */
        public static final C3390a f18777b = new C3390a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Certificate deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str4 = null;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            String str8 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (MailTo.f5529g.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("issuer".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("issue_date".equals(currentName)) {
                    str4 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("expiration_date".equals(currentName)) {
                    str5 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("serial_number".equals(currentName)) {
                    str6 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("sha1_fingerprint".equals(currentName)) {
                    str7 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("common_name".equals(currentName)) {
                    str8 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"subject\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"issuer\" missing.");
            }
            if (str4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"issue_date\" missing.");
            }
            if (str5 == null) {
                throw new JsonParseException(jsonParser, "Required field \"expiration_date\" missing.");
            }
            if (str6 == null) {
                throw new JsonParseException(jsonParser, "Required field \"serial_number\" missing.");
            }
            if (str7 == null) {
                throw new JsonParseException(jsonParser, "Required field \"sha1_fingerprint\" missing.");
            }
            Certificate certificate = new Certificate(str2, str3, str4, str5, str6, str7, str8);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(certificate, certificate.toStringMultiline());
            return certificate;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(Certificate certificate, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(MailTo.f5529g);
            StoneSerializers.string().serialize((StoneSerializer<String>) certificate.subject, jsonGenerator);
            jsonGenerator.writeFieldName("issuer");
            StoneSerializers.string().serialize((StoneSerializer<String>) certificate.issuer, jsonGenerator);
            jsonGenerator.writeFieldName("issue_date");
            StoneSerializers.string().serialize((StoneSerializer<String>) certificate.issueDate, jsonGenerator);
            jsonGenerator.writeFieldName("expiration_date");
            StoneSerializers.string().serialize((StoneSerializer<String>) certificate.expirationDate, jsonGenerator);
            jsonGenerator.writeFieldName("serial_number");
            StoneSerializers.string().serialize((StoneSerializer<String>) certificate.serialNumber, jsonGenerator);
            jsonGenerator.writeFieldName("sha1_fingerprint");
            StoneSerializers.string().serialize((StoneSerializer<String>) certificate.sha1Fingerprint, jsonGenerator);
            if (certificate.commonName != null) {
                jsonGenerator.writeFieldName("common_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) certificate.commonName, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public Certificate(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        if (str != null) {
            this.subject = str;
            if (str2 != null) {
                this.issuer = str2;
                if (str3 != null) {
                    this.issueDate = str3;
                    if (str4 != null) {
                        this.expirationDate = str4;
                        if (str5 != null) {
                            this.serialNumber = str5;
                            if (str6 != null) {
                                this.sha1Fingerprint = str6;
                                this.commonName = str7;
                                return;
                            }
                            throw new IllegalArgumentException("Required value for 'sha1Fingerprint' is null");
                        }
                        throw new IllegalArgumentException("Required value for 'serialNumber' is null");
                    }
                    throw new IllegalArgumentException("Required value for 'expirationDate' is null");
                }
                throw new IllegalArgumentException("Required value for 'issueDate' is null");
            }
            throw new IllegalArgumentException("Required value for 'issuer' is null");
        }
        throw new IllegalArgumentException("Required value for 'subject' is null");
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        Certificate certificate = (Certificate) obj;
        String str11 = this.subject;
        String str12 = certificate.subject;
        if ((str11 == str12 || str11.equals(str12)) && (((str = this.issuer) == (str2 = certificate.issuer) || str.equals(str2)) && (((str3 = this.issueDate) == (str4 = certificate.issueDate) || str3.equals(str4)) && (((str5 = this.expirationDate) == (str6 = certificate.expirationDate) || str5.equals(str6)) && (((str7 = this.serialNumber) == (str8 = certificate.serialNumber) || str7.equals(str8)) && ((str9 = this.sha1Fingerprint) == (str10 = certificate.sha1Fingerprint) || str9.equals(str10))))))) {
            String str13 = this.commonName;
            String str14 = certificate.commonName;
            if (str13 == str14) {
                return true;
            }
            if (str13 != null && str13.equals(str14)) {
                return true;
            }
        }
        return false;
    }

    public String getCommonName() {
        return this.commonName;
    }

    public String getExpirationDate() {
        return this.expirationDate;
    }

    public String getIssueDate() {
        return this.issueDate;
    }

    public String getIssuer() {
        return this.issuer;
    }

    public String getSerialNumber() {
        return this.serialNumber;
    }

    public String getSha1Fingerprint() {
        return this.sha1Fingerprint;
    }

    public String getSubject() {
        return this.subject;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.subject, this.issuer, this.issueDate, this.expirationDate, this.serialNumber, this.sha1Fingerprint, this.commonName});
    }

    public String toString() {
        return C3390a.f18777b.serialize((C3390a) this, false);
    }

    public String toStringMultiline() {
        return C3390a.f18777b.serialize((C3390a) this, true);
    }

    public Certificate(String str, String str2, String str3, String str4, String str5, String str6) {
        this(str, str2, str3, str4, str5, str6, null);
    }
}
