package org.apache.logging.log4j.message;

import java.util.Map;
import org.apache.logging.log4j.util.EnglishEnums;
import org.apache.logging.log4j.util.StringBuilders;

@AsynchronouslyFormattable
/* loaded from: classes12.dex */
public class StructuredDataMessage extends MapMessage<StructuredDataMessage, String> {
    private static final int HASHVAL = 31;
    private static final int MAX_LENGTH = 32;
    private static final long serialVersionUID = 1703221292892071920L;

    /* renamed from: id */
    private StructuredDataId f111210id;
    private final int maxLength;
    private String message;
    private String type;

    /* loaded from: classes12.dex */
    public enum Format {
        XML,
        FULL
    }

    public StructuredDataMessage(final String id, final String msg, final String type) {
        this(id, msg, type, 32);
    }

    private void asXml(final StructuredDataId structuredDataId, final StringBuilder sb) {
        sb.append("<StructuredData>\n");
        sb.append("<type>");
        sb.append(this.type);
        sb.append("</type>\n");
        sb.append("<id>");
        sb.append(structuredDataId);
        sb.append("</id>\n");
        super.asXml(sb);
        sb.append("\n</StructuredData>\n");
    }

    @Override // org.apache.logging.log4j.message.MapMessage
    public String asString() {
        return asString(Format.FULL, null);
    }

    @Override // org.apache.logging.log4j.message.MapMessage
    public boolean equals(final Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        StructuredDataMessage structuredDataMessage = (StructuredDataMessage) o;
        if (!super.equals(o)) {
            return false;
        }
        String str = this.type;
        if (str == null ? structuredDataMessage.type != null : !str.equals(structuredDataMessage.type)) {
            return false;
        }
        StructuredDataId structuredDataId = this.f111210id;
        if (structuredDataId == null ? structuredDataMessage.f111210id != null : !structuredDataId.equals(structuredDataMessage.f111210id)) {
            return false;
        }
        String str2 = this.message;
        return str2 == null ? structuredDataMessage.message == null : str2.equals(structuredDataMessage.message);
    }

    @Override // org.apache.logging.log4j.message.MapMessage, org.apache.logging.log4j.util.StringBuilderFormattable
    public void formatTo(final StringBuilder buffer) {
        asString(Format.FULL, null, buffer);
    }

    @Override // org.apache.logging.log4j.message.MapMessage, org.apache.logging.log4j.message.Message
    public String getFormat() {
        return this.message;
    }

    @Override // org.apache.logging.log4j.message.MapMessage, org.apache.logging.log4j.message.MultiformatMessage
    public String[] getFormats() {
        String[] strArr = new String[Format.values().length];
        Format[] values = Format.values();
        int length = values.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            strArr[i2] = values[i].name();
            i++;
            i2++;
        }
        return strArr;
    }

    @Override // org.apache.logging.log4j.message.MapMessage, org.apache.logging.log4j.message.Message
    public String getFormattedMessage() {
        return asString(Format.FULL, null);
    }

    public StructuredDataId getId() {
        return this.f111210id;
    }

    public String getType() {
        return this.type;
    }

    @Override // org.apache.logging.log4j.message.MapMessage
    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        String str = this.type;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        StructuredDataId structuredDataId = this.f111210id;
        int hashCode3 = (hashCode2 + (structuredDataId != null ? structuredDataId.hashCode() : 0)) * 31;
        String str2 = this.message;
        return hashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public void setId(final String id) {
        this.f111210id = new StructuredDataId(id, null, null);
    }

    public void setMessageFormat(final String msg) {
        this.message = msg;
    }

    public void setType(final String type) {
        if (type.length() <= 32) {
            this.type = type;
            return;
        }
        throw new IllegalArgumentException("structured data type exceeds maximum length of 32 characters: " + type);
    }

    @Override // org.apache.logging.log4j.message.MapMessage
    public String toString() {
        return asString(null, null);
    }

    @Override // org.apache.logging.log4j.message.MapMessage
    public void validate(final String key, final boolean value) {
        validateKey(key);
    }

    public void validateKey(final String key) {
        if (this.maxLength > 0 && key.length() > this.maxLength) {
            throw new IllegalArgumentException("Structured data keys are limited to " + this.maxLength + " characters. key: " + key);
        }
        for (int i = 0; i < key.length(); i++) {
            char charAt = key.charAt(i);
            if (charAt < '!' || charAt > '~' || charAt == '=' || charAt == ']' || charAt == '\"') {
                throw new IllegalArgumentException("Structured data keys must contain printable US ASCII charactersand may not contain a space, =, ], or \"");
            }
        }
    }

    public StructuredDataMessage(final String id, final String msg, final String type, final int maxLength) {
        this.f111210id = new StructuredDataId(id, (String[]) null, (String[]) null, maxLength);
        this.message = msg;
        this.type = type;
        this.maxLength = maxLength;
    }

    private Format getFormat(final String[] formats) {
        if (formats != null && formats.length > 0) {
            for (String str : formats) {
                Format format = Format.XML;
                if (format.name().equalsIgnoreCase(str)) {
                    return format;
                }
                Format format2 = Format.FULL;
                if (format2.name().equalsIgnoreCase(str)) {
                    return format2;
                }
            }
            return null;
        }
        return Format.FULL;
    }

    @Override // org.apache.logging.log4j.message.MapMessage
    public String asString(final String format) {
        try {
            return asString((Format) EnglishEnums.valueOf(Format.class, format), null);
        } catch (IllegalArgumentException unused) {
            return this.asString();
        }
    }

    @Override // org.apache.logging.log4j.message.MapMessage, org.apache.logging.log4j.util.MultiFormatStringBuilderFormattable
    public void formatTo(final String[] formats, final StringBuilder buffer) {
        asString(getFormat(formats), null, buffer);
    }

    @Override // org.apache.logging.log4j.message.MapMessage, org.apache.logging.log4j.message.MultiformatMessage
    public String getFormattedMessage(final String[] formats) {
        return asString(getFormat(formats), null);
    }

    @Override // org.apache.logging.log4j.message.MapMessage
    public StructuredDataMessage newInstance(final Map<String, String> map) {
        return new StructuredDataMessage(this, map);
    }

    public void setId(final StructuredDataId id) {
        this.f111210id = id;
    }

    @Override // org.apache.logging.log4j.message.MapMessage
    public void validate(final String key, final byte value) {
        validateKey(key);
    }

    @Override // org.apache.logging.log4j.message.MapMessage
    public void validate(final String key, final char value) {
        validateKey(key);
    }

    public final String asString(final Format format, final StructuredDataId structuredDataId) {
        StringBuilder sb = new StringBuilder();
        asString(format, structuredDataId, sb);
        return sb.toString();
    }

    @Override // org.apache.logging.log4j.message.MapMessage
    public void validate(final String key, final double value) {
        validateKey(key);
    }

    @Override // org.apache.logging.log4j.message.MapMessage
    public void validate(final String key, final float value) {
        validateKey(key);
    }

    @Override // org.apache.logging.log4j.message.MapMessage
    public void validate(final String key, final int value) {
        validateKey(key);
    }

    public StructuredDataMessage(final String id, final String msg, final String type, final Map<String, String> data) {
        this(id, msg, type, data, 32);
    }

    public final void asString(final Format format, final StructuredDataId structuredDataId, final StringBuilder sb) {
        String format2;
        boolean equals = Format.FULL.equals(format);
        if (equals) {
            if (getType() == null) {
                return;
            }
            sb.append(getType());
            sb.append(' ');
        }
        StructuredDataId id = getId();
        if (id != null) {
            structuredDataId = id.makeId(structuredDataId);
        }
        if (structuredDataId == null || structuredDataId.getName() == null) {
            return;
        }
        if (Format.XML.equals(format)) {
            asXml(structuredDataId, sb);
            return;
        }
        sb.append('[');
        StringBuilders.appendValue(sb, structuredDataId);
        sb.append(' ');
        appendMap(sb);
        sb.append(']');
        if (!equals || (format2 = getFormat()) == null) {
            return;
        }
        sb.append(' ');
        sb.append(format2);
    }

    @Override // org.apache.logging.log4j.message.MapMessage
    public void validate(final String key, final long value) {
        validateKey(key);
    }

    public StructuredDataMessage(final String id, final String msg, final String type, final Map<String, String> data, final int maxLength) {
        super(data);
        this.f111210id = new StructuredDataId(id, (String[]) null, (String[]) null, maxLength);
        this.message = msg;
        this.type = type;
        this.maxLength = maxLength;
    }

    @Override // org.apache.logging.log4j.message.MapMessage
    public void validate(final String key, final Object value) {
        validateKey(key);
    }

    @Override // org.apache.logging.log4j.message.MapMessage
    public void validate(final String key, final short value) {
        validateKey(key);
    }

    @Override // org.apache.logging.log4j.message.MapMessage
    public void validate(final String key, final String value) {
        validateKey(key);
    }

    public StructuredDataMessage(final StructuredDataId id, final String msg, final String type) {
        this(id, msg, type, 32);
    }

    public StructuredDataMessage(final StructuredDataId id, final String msg, final String type, final int maxLength) {
        this.f111210id = id;
        this.message = msg;
        this.type = type;
        this.maxLength = maxLength;
    }

    public StructuredDataMessage(final StructuredDataId id, final String msg, final String type, final Map<String, String> data) {
        this(id, msg, type, data, 32);
    }

    public StructuredDataMessage(final StructuredDataId id, final String msg, final String type, final Map<String, String> data, final int maxLength) {
        super(data);
        this.f111210id = id;
        this.message = msg;
        this.type = type;
        this.maxLength = maxLength;
    }

    private StructuredDataMessage(final StructuredDataMessage msg, final Map<String, String> map) {
        super(map);
        this.f111210id = msg.f111210id;
        this.message = msg.message;
        this.type = msg.type;
        this.maxLength = 32;
    }

    public StructuredDataMessage() {
        this.maxLength = 32;
    }
}
