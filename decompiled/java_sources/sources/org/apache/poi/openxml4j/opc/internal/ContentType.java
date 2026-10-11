package org.apache.poi.openxml4j.opc.internal;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;

/* loaded from: classes12.dex */
public final class ContentType {
    private static final Pattern patternParams;
    private static final Pattern patternTypeSubType;
    private static final Pattern patternTypeSubTypeParams;
    private final Map<String, String> parameters;
    private final String subType;
    private final String type;

    static {
        String str = MotionUtils.f31761c + "[\\x21-\\x7E&&[^()<>@,;:\\\\/\"\\[\\]?={}\\x20\\x09]]+)=(\"?[\\x21-\\x7E&&[^()<>@,;:\\\\/\"\\[\\]?={}\\x20\\x09]]+\"?)";
        patternTypeSubType = Pattern.compile("^([\\x21-\\x7E&&[^()<>@,;:\\\\/\"\\[\\]?={}\\x20\\x09]]+)/([\\x21-\\x7E&&[^()<>@,;:\\\\/\"\\[\\]?={}\\x20\\x09]]+)$");
        patternTypeSubTypeParams = Pattern.compile("^([\\x21-\\x7E&&[^()<>@,;:\\\\/\"\\[\\]?={}\\x20\\x09]]+)/([\\x21-\\x7E&&[^()<>@,;:\\\\/\"\\[\\]?={}\\x20\\x09]]+)(;" + str + ")*$");
        StringBuilder sb = new StringBuilder();
        sb.append(AndroidTreeView.f47214k);
        sb.append(str);
        patternParams = Pattern.compile(sb.toString());
    }

    public ContentType(String str) throws InvalidFormatException {
        Matcher matcher = patternTypeSubType.matcher(str);
        matcher = matcher.matches() ? matcher : patternTypeSubTypeParams.matcher(str);
        if (!matcher.matches()) {
            throw new InvalidFormatException("The specified content type '" + str + "' is not compliant with RFC 2616: malformed content type.");
        }
        if (matcher.groupCount() < 2) {
            this.type = "";
            this.subType = "";
            this.parameters = Collections.emptyMap();
            return;
        }
        this.type = matcher.group(1);
        this.subType = matcher.group(2);
        this.parameters = new HashMap();
        if (matcher.groupCount() >= 5) {
            Matcher matcher2 = patternParams.matcher(str.substring(matcher.end(2)));
            while (matcher2.find()) {
                this.parameters.put(matcher2.group(1), matcher2.group(2));
            }
        }
    }

    public boolean equals(Object obj) {
        return !(obj instanceof ContentType) || toString().equalsIgnoreCase(obj.toString());
    }

    public String getParameter(String str) {
        return this.parameters.get(str);
    }

    public String[] getParameterKeys() {
        Map<String, String> map = this.parameters;
        return map == null ? new String[0] : (String[]) map.keySet().toArray(new String[0]);
    }

    public String getSubType() {
        return this.subType;
    }

    public String getType() {
        return this.type;
    }

    public boolean hasParameters() {
        Map<String, String> map = this.parameters;
        return (map == null || map.isEmpty()) ? false : true;
    }

    public int hashCode() {
        return Objects.hash(this.type, this.subType, this.parameters);
    }

    public final String toString() {
        return toString(true);
    }

    public final String toString(boolean z) {
        StringBuilder sb = new StringBuilder(64);
        sb.append(getType());
        sb.append('/');
        sb.append(getSubType());
        if (z) {
            for (Map.Entry<String, String> entry : this.parameters.entrySet()) {
                sb.append(';');
                sb.append(entry.getKey());
                sb.append('=');
                sb.append(entry.getValue());
            }
        }
        return sb.toString();
    }
}
