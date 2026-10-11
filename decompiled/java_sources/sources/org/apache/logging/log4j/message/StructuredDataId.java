package org.apache.logging.log4j.message;

import java.io.Serializable;
import org.apache.logging.log4j.util.StringBuilderFormattable;
import org.apache.logging.log4j.util.Strings;

/* loaded from: classes12.dex */
public class StructuredDataId implements Serializable, StringBuilderFormattable {
    private static final String AT_SIGN = "@";
    private static final int MAX_LENGTH = 32;
    public static final int RESERVED = -1;
    private static final long serialVersionUID = 9031746276396249990L;
    private final int enterpriseNumber;
    private final String name;
    private final String[] optional;
    private final String[] required;
    public static final StructuredDataId TIME_QUALITY = new StructuredDataId("timeQuality", null, new String[]{"tzKnown", "isSynced", "syncAccuracy"});
    public static final StructuredDataId ORIGIN = new StructuredDataId("origin", null, new String[]{"ip", "enterpriseId", "software", "swVersion"});
    public static final StructuredDataId META = new StructuredDataId("meta", null, new String[]{"sequenceId", "sysUpTime", "language"});

    public StructuredDataId(final String name) {
        this(name, (String[]) null, (String[]) null, 32);
    }

    @Override // org.apache.logging.log4j.util.StringBuilderFormattable
    public void formatTo(final StringBuilder buffer) {
        if (isReserved()) {
            buffer.append(this.name);
            return;
        }
        buffer.append(this.name);
        buffer.append(AT_SIGN);
        buffer.append(this.enterpriseNumber);
    }

    public int getEnterpriseNumber() {
        return this.enterpriseNumber;
    }

    public String getName() {
        return this.name;
    }

    public String[] getOptional() {
        return this.optional;
    }

    public String[] getRequired() {
        return this.required;
    }

    public boolean isReserved() {
        return this.enterpriseNumber <= 0;
    }

    public StructuredDataId makeId(final StructuredDataId id) {
        return id == null ? this : makeId(id.getName(), id.getEnterpriseNumber());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.name.length() + 10);
        formatTo(sb);
        return sb.toString();
    }

    public StructuredDataId(final String name, final int maxLength) {
        this(name, (String[]) null, (String[]) null, maxLength);
    }

    public StructuredDataId makeId(final String defaultId, final int anEnterpriseNumber) {
        String[] strArr;
        String[] strArr2;
        if (anEnterpriseNumber <= 0) {
            return this;
        }
        String str = this.name;
        if (str != null) {
            String[] strArr3 = this.required;
            strArr = this.optional;
            strArr2 = strArr3;
            defaultId = str;
        } else {
            strArr = null;
            strArr2 = null;
        }
        return new StructuredDataId(defaultId, anEnterpriseNumber, strArr2, strArr);
    }

    public StructuredDataId(final String name, final String[] required, final String[] optional) {
        this(name, required, optional, 32);
    }

    public StructuredDataId(final String name, final String[] required, final String[] optional, int maxLength) {
        int i;
        if (name != null) {
            maxLength = maxLength <= 0 ? 32 : maxLength;
            if (name.length() <= maxLength) {
                i = name.indexOf(AT_SIGN);
            } else {
                throw new IllegalArgumentException(String.format("Length of id %s exceeds maximum of %d characters", name, Integer.valueOf(maxLength)));
            }
        } else {
            i = -1;
        }
        if (i > 0) {
            this.name = name.substring(0, i);
            this.enterpriseNumber = Integer.parseInt(name.substring(i + 1));
        } else {
            this.name = name;
            this.enterpriseNumber = -1;
        }
        this.required = required;
        this.optional = optional;
    }

    public StructuredDataId(final String name, final int enterpriseNumber, final String[] required, final String[] optional) {
        this(name, enterpriseNumber, required, optional, 32);
    }

    public StructuredDataId(final String name, final int enterpriseNumber, final String[] required, final String[] optional, final int maxLength) {
        if (name != null) {
            if (name.contains(AT_SIGN)) {
                throw new IllegalArgumentException("Structured id name cannot contain an " + Strings.quote(AT_SIGN));
            }
            if (enterpriseNumber > 0) {
                this.name = name;
                this.enterpriseNumber = enterpriseNumber;
                String str = name + AT_SIGN + enterpriseNumber;
                if (maxLength > 0 && str.length() > maxLength) {
                    throw new IllegalArgumentException("Length of id exceeds maximum of " + maxLength + " characters: " + str);
                }
                this.required = required;
                this.optional = optional;
                return;
            }
            throw new IllegalArgumentException("No enterprise number was supplied");
        }
        throw new IllegalArgumentException("No structured id name was supplied");
    }
}
