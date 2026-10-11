package javax.servlet.http;

import java.text.MessageFormat;
import java.util.ResourceBundle;

/* loaded from: classes5.dex */
public class Cookie implements Cloneable {

    /* renamed from: m */
    public static final String f98003m = "javax.servlet.http.LocalStrings";

    /* renamed from: n */
    public static ResourceBundle f98004n = ResourceBundle.getBundle("javax.servlet.http.LocalStrings");

    /* renamed from: o */
    public static final String f98005o = ",; ";

    /* renamed from: e */
    public String f98006e;

    /* renamed from: f */
    public String f98007f;

    /* renamed from: g */
    public String f98008g;

    /* renamed from: h */
    public String f98009h;

    /* renamed from: j */
    public String f98011j;

    /* renamed from: k */
    public boolean f98012k;

    /* renamed from: i */
    public int f98010i = -1;

    /* renamed from: l */
    public int f98013l = 0;

    public Cookie(String str, String str2) {
        if (!m61502a(str) || str.equalsIgnoreCase("Comment") || str.equalsIgnoreCase("Discard") || str.equalsIgnoreCase("Domain") || str.equalsIgnoreCase("Expires") || str.equalsIgnoreCase("Max-Age") || str.equalsIgnoreCase("Path") || str.equalsIgnoreCase("Secure") || str.equalsIgnoreCase("Version") || str.startsWith("$")) {
            throw new IllegalArgumentException(MessageFormat.format(f98004n.getString("err.cookie_name_is_token"), str));
        }
        this.f98006e = str;
        this.f98007f = str2;
    }

    /* renamed from: a */
    public final boolean m61502a(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt < ' ' || charAt >= 127 || f98005o.indexOf(charAt) != -1) {
                return false;
            }
        }
        return true;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public String getComment() {
        return this.f98008g;
    }

    public String getDomain() {
        return this.f98009h;
    }

    public int getMaxAge() {
        return this.f98010i;
    }

    public String getName() {
        return this.f98006e;
    }

    public String getPath() {
        return this.f98011j;
    }

    public boolean getSecure() {
        return this.f98012k;
    }

    public String getValue() {
        return this.f98007f;
    }

    public int getVersion() {
        return this.f98013l;
    }

    public void setComment(String str) {
        this.f98008g = str;
    }

    public void setDomain(String str) {
        this.f98009h = str.toLowerCase();
    }

    public void setMaxAge(int i) {
        this.f98010i = i;
    }

    public void setPath(String str) {
        this.f98011j = str;
    }

    public void setSecure(boolean z) {
        this.f98012k = z;
    }

    public void setValue(String str) {
        this.f98007f = str;
    }

    public void setVersion(int i) {
        this.f98013l = i;
    }
}
