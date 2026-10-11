package org.jsoup.nodes;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import org.apache.poi.ss.util.CellUtil;
import org.jsoup.SerializationException;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;

/* loaded from: classes13.dex */
public class Attribute implements Cloneable, Map.Entry<String, String> {

    /* renamed from: h */
    public static final String[] f114039h = {"allowfullscreen", "async", "autofocus", "checked", "compact", "declare", "default", "defer", "disabled", "formnovalidate", CellUtil.HIDDEN, "inert", "ismap", "itemscope", Constants.ATTRVAL_MULTI, "muted", "nohref", "noresize", "noshade", "novalidate", "nowrap", "open", "readonly", "required", "reversed", "seamless", "selected", "sortable", "truespeed", "typemustmatch"};

    /* renamed from: e */
    public String f114040e;

    /* renamed from: f */
    public String f114041f;

    /* renamed from: g */
    public Attributes f114042g;

    public Attribute(String str, String str2) {
        this(str, str2, null);
    }

    public static Attribute createFromEncoded(String str, String str2) {
        return new Attribute(str, Entities.m71148f(str2, true), null);
    }

    public static boolean isBooleanAttribute(String str) {
        return Arrays.binarySearch(f114039h, str) >= 0;
    }

    public static boolean shouldCollapseAttribute(String str, String str2, Document.OutputSettings outputSettings) {
        return outputSettings.syntax() == Document.OutputSettings.Syntax.html && (str2 == null || (("".equals(str2) || str2.equalsIgnoreCase(str)) && isBooleanAttribute(str)));
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Attribute attribute = (Attribute) obj;
        String str = this.f114040e;
        if (str == null ? attribute.f114040e != null : !str.equals(attribute.f114040e)) {
            return false;
        }
        String str2 = this.f114041f;
        return str2 != null ? str2.equals(attribute.f114041f) : attribute.f114041f == null;
    }

    public boolean hasDeclaredValue() {
        return this.f114041f != null;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        String str = this.f114040e;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f114041f;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String html() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        try {
            html(borrowBuilder, new Document("").outputSettings());
            return StringUtil.releaseBuilder(borrowBuilder);
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    public boolean isDataAttribute() {
        return isDataAttribute(this.f114040e);
    }

    public void setKey(String str) {
        int m71110n;
        Validate.notNull(str);
        String trim = str.trim();
        Validate.notEmpty(trim);
        Attributes attributes = this.f114042g;
        if (attributes != null && (m71110n = attributes.m71110n(this.f114040e)) != -1) {
            this.f114042g.f114050f[m71110n] = trim;
        }
        this.f114040e = trim;
    }

    public String toString() {
        return html();
    }

    public Attribute(String str, String str2, Attributes attributes) {
        Validate.notNull(str);
        String trim = str.trim();
        Validate.notEmpty(trim);
        this.f114040e = trim;
        this.f114041f = str2;
        this.f114042g = attributes;
    }

    public static boolean isDataAttribute(String str) {
        return str.startsWith("data-") && str.length() > 5;
    }

    public Attribute clone() {
        try {
            return (Attribute) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // java.util.Map.Entry
    public String getKey() {
        return this.f114040e;
    }

    @Override // java.util.Map.Entry
    public String getValue() {
        return Attributes.m71103l(this.f114041f);
    }

    public void html(Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        html(this.f114040e, this.f114041f, appendable, outputSettings);
    }

    @Override // java.util.Map.Entry
    public String setValue(String str) {
        String str2 = this.f114041f;
        Attributes attributes = this.f114042g;
        if (attributes != null) {
            str2 = attributes.get(this.f114040e);
            int m71110n = this.f114042g.m71110n(this.f114040e);
            if (m71110n != -1) {
                this.f114042g.f114051g[m71110n] = str;
            }
        }
        this.f114041f = str;
        return Attributes.m71103l(str2);
    }

    public final boolean shouldCollapseAttribute(Document.OutputSettings outputSettings) {
        return shouldCollapseAttribute(this.f114040e, this.f114041f, outputSettings);
    }

    public static void html(String str, String str2, Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        appendable.append(str);
        if (shouldCollapseAttribute(str, str2, outputSettings)) {
            return;
        }
        appendable.append("=\"");
        Entities.m71147e(appendable, Attributes.m71103l(str2), outputSettings, true, false, false);
        appendable.append('\"');
    }
}
