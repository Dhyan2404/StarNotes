package androidx.core.net;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.scribe.model.ParameterList;

/* loaded from: classes3.dex */
public final class MailTo {
    public static final String MAILTO_SCHEME = "mailto:";

    /* renamed from: b */
    public static final String f5524b = "mailto";

    /* renamed from: c */
    public static final String f5525c = "to";

    /* renamed from: d */
    public static final String f5526d = "body";

    /* renamed from: e */
    public static final String f5527e = "cc";

    /* renamed from: f */
    public static final String f5528f = "bcc";

    /* renamed from: g */
    public static final String f5529g = "subject";

    /* renamed from: a */
    public HashMap<String, String> f5530a = new HashMap<>();

    public static boolean isMailTo(@Nullable String str) {
        return str != null && str.startsWith(MAILTO_SCHEME);
    }

    @NonNull
    public static MailTo parse(@NonNull String str) throws ParseException {
        String decode;
        String substring;
        Preconditions.checkNotNull(str);
        if (isMailTo(str)) {
            int indexOf = str.indexOf(35);
            if (indexOf != -1) {
                str = str.substring(0, indexOf);
            }
            int indexOf2 = str.indexOf(63);
            if (indexOf2 == -1) {
                decode = Uri.decode(str.substring(7));
                substring = null;
            } else {
                decode = Uri.decode(str.substring(7, indexOf2));
                substring = str.substring(indexOf2 + 1);
            }
            MailTo mailTo = new MailTo();
            if (substring != null) {
                for (String str2 : substring.split(ParameterList.f115951c)) {
                    String[] split = str2.split("=", 2);
                    if (split.length != 0) {
                        mailTo.f5530a.put(Uri.decode(split[0]).toLowerCase(Locale.ROOT), split.length > 1 ? Uri.decode(split[1]) : null);
                    }
                }
            }
            String to = mailTo.getTo();
            if (to != null) {
                decode = decode + ", " + to;
            }
            mailTo.f5530a.put("to", decode);
            return mailTo;
        }
        throw new ParseException("Not a mailto scheme");
    }

    @Nullable
    public String getBcc() {
        return this.f5530a.get(f5528f);
    }

    @Nullable
    public String getBody() {
        return this.f5530a.get("body");
    }

    @Nullable
    public String getCc() {
        return this.f5530a.get(f5527e);
    }

    @Nullable
    public Map<String, String> getHeaders() {
        return this.f5530a;
    }

    @Nullable
    public String getSubject() {
        return this.f5530a.get(f5529g);
    }

    @Nullable
    public String getTo() {
        return this.f5530a.get("to");
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder(MAILTO_SCHEME);
        sb.append('?');
        for (Map.Entry<String, String> entry : this.f5530a.entrySet()) {
            sb.append(Uri.encode(entry.getKey()));
            sb.append('=');
            sb.append(Uri.encode(entry.getValue()));
            sb.append('&');
        }
        return sb.toString();
    }

    public static boolean isMailTo(@Nullable Uri uri) {
        return uri != null && f5524b.equals(uri.getScheme());
    }

    @NonNull
    public static MailTo parse(@NonNull Uri uri) throws ParseException {
        return parse(uri.toString());
    }
}
