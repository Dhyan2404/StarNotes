package org.jsoup.safety;

import androidx.core.net.MailTo;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.hwr.data.constant.HWRGestureType;
import com.sunia.HTREnginev2.gon;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.poi.util.ExtUnits;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Element;

/* loaded from: classes13.dex */
public class Whitelist {

    /* renamed from: a */
    public Set<C20364d> f114383a = new HashSet();

    /* renamed from: b */
    public Map<C20364d, Set<C20361a>> f114384b = new HashMap();

    /* renamed from: c */
    public Map<C20364d, Map<C20361a, C20362b>> f114385c = new HashMap();

    /* renamed from: d */
    public Map<C20364d, Map<C20361a, Set<C20363c>>> f114386d = new HashMap();

    /* renamed from: e */
    public boolean f114387e = false;

    /* renamed from: org.jsoup.safety.Whitelist$a */
    /* loaded from: classes13.dex */
    public static class C20361a extends AbstractC20365e {
        public C20361a(String str) {
            super(str);
        }

        /* renamed from: a */
        public static C20361a m71408a(String str) {
            return new C20361a(str);
        }
    }

    /* renamed from: org.jsoup.safety.Whitelist$b */
    /* loaded from: classes13.dex */
    public static class C20362b extends AbstractC20365e {
        public C20362b(String str) {
            super(str);
        }

        /* renamed from: a */
        public static C20362b m71409a(String str) {
            return new C20362b(str);
        }
    }

    /* renamed from: org.jsoup.safety.Whitelist$c */
    /* loaded from: classes13.dex */
    public static class C20363c extends AbstractC20365e {
        public C20363c(String str) {
            super(str);
        }

        /* renamed from: a */
        public static C20363c m71410a(String str) {
            return new C20363c(str);
        }
    }

    /* renamed from: org.jsoup.safety.Whitelist$d */
    /* loaded from: classes13.dex */
    public static class C20364d extends AbstractC20365e {
        public C20364d(String str) {
            super(str);
        }

        /* renamed from: a */
        public static C20364d m71411a(String str) {
            return new C20364d(str);
        }
    }

    /* renamed from: org.jsoup.safety.Whitelist$e */
    /* loaded from: classes13.dex */
    public static abstract class AbstractC20365e {

        /* renamed from: a */
        public String f114388a;

        public AbstractC20365e(String str) {
            Validate.notNull(str);
            this.f114388a = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            AbstractC20365e abstractC20365e = (AbstractC20365e) obj;
            String str = this.f114388a;
            return str == null ? abstractC20365e.f114388a == null : str.equals(abstractC20365e.f114388a);
        }

        public int hashCode() {
            String str = this.f114388a;
            return 31 + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return this.f114388a;
        }
    }

    public static Whitelist basic() {
        return new Whitelist().addTags("a", "b", "blockquote", "br", "cite", "code", "dd", "dl", "dt", ExtUnits.UNIT_EM, "i", "li", "ol", "p", "pre", "q", "small", gon.f71297s, HWRGestureType.STRIKE, "strong", "sub", "sup", "u", "ul").addAttributes("a", "href").addAttributes("blockquote", "cite").addAttributes("q", "cite").addProtocols("a", "href", "ftp", "http", "https", MailTo.f5524b).addProtocols("blockquote", "cite", "http", "https").addProtocols("cite", "cite", "http", "https").addEnforcedAttribute("a", "rel", "nofollow");
    }

    public static Whitelist basicWithImages() {
        return basic().addTags("img").addAttributes("img", "align", "alt", "height", Constant.SRC_TAG, "title", "width").addProtocols("img", Constant.SRC_TAG, "http", "https");
    }

    public static Whitelist none() {
        return new Whitelist();
    }

    public static Whitelist relaxed() {
        return new Whitelist().addTags("a", "b", "blockquote", "br", "caption", "cite", "code", "col", "colgroup", "dd", gon.f71293q, "dl", "dt", ExtUnits.UNIT_EM, "h1", "h2", "h3", "h4", "h5", "h6", "i", "img", "li", "ol", "p", "pre", "q", "small", gon.f71297s, HWRGestureType.STRIKE, "strong", "sub", "sup", "table", "tbody", "td", "tfoot", "th", "thead", "tr", "u", "ul").addAttributes("a", "href", "title").addAttributes("blockquote", "cite").addAttributes("col", gon.f71297s, "width").addAttributes("colgroup", gon.f71297s, "width").addAttributes("img", "align", "alt", "height", Constant.SRC_TAG, "title", "width").addAttributes("ol", gon.f71290o0, "type").addAttributes("q", "cite").addAttributes("table", "summary", "width").addAttributes("td", "abbr", "axis", "colspan", "rowspan", "width").addAttributes("th", "abbr", "axis", "colspan", "rowspan", "scope", "width").addAttributes("ul", "type").addProtocols("a", "href", "ftp", "http", "https", MailTo.f5524b).addProtocols("blockquote", "cite", "http", "https").addProtocols("cite", "cite", "http", "https").addProtocols("img", Constant.SRC_TAG, "http", "https").addProtocols("q", "cite", "http", "https");
    }

    public static Whitelist simpleText() {
        return new Whitelist().addTags("b", ExtUnits.UNIT_EM, "i", "strong", "u");
    }

    /* renamed from: a */
    public final boolean m71405a(String str) {
        return str.startsWith("#") && !str.matches(".*\\s.*");
    }

    public Whitelist addAttributes(String str, String... strArr) {
        Validate.notEmpty(str);
        Validate.notNull(strArr);
        Validate.isTrue(strArr.length > 0, "No attribute names supplied.");
        C20364d m71411a = C20364d.m71411a(str);
        this.f114383a.add(m71411a);
        HashSet hashSet = new HashSet();
        for (String str2 : strArr) {
            Validate.notEmpty(str2);
            hashSet.add(C20361a.m71408a(str2));
        }
        if (this.f114384b.containsKey(m71411a)) {
            this.f114384b.get(m71411a).addAll(hashSet);
        } else {
            this.f114384b.put(m71411a, hashSet);
        }
        return this;
    }

    public Whitelist addEnforcedAttribute(String str, String str2, String str3) {
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        Validate.notEmpty(str3);
        C20364d m71411a = C20364d.m71411a(str);
        this.f114383a.add(m71411a);
        C20361a m71408a = C20361a.m71408a(str2);
        C20362b m71409a = C20362b.m71409a(str3);
        if (this.f114385c.containsKey(m71411a)) {
            this.f114385c.get(m71411a).put(m71408a, m71409a);
        } else {
            HashMap hashMap = new HashMap();
            hashMap.put(m71408a, m71409a);
            this.f114385c.put(m71411a, hashMap);
        }
        return this;
    }

    public Whitelist addProtocols(String str, String str2, String... strArr) {
        Map<C20361a, Set<C20363c>> map;
        Set<C20363c> set;
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        Validate.notNull(strArr);
        C20364d m71411a = C20364d.m71411a(str);
        C20361a m71408a = C20361a.m71408a(str2);
        if (this.f114386d.containsKey(m71411a)) {
            map = this.f114386d.get(m71411a);
        } else {
            HashMap hashMap = new HashMap();
            this.f114386d.put(m71411a, hashMap);
            map = hashMap;
        }
        if (map.containsKey(m71408a)) {
            set = map.get(m71408a);
        } else {
            HashSet hashSet = new HashSet();
            map.put(m71408a, hashSet);
            set = hashSet;
        }
        for (String str3 : strArr) {
            Validate.notEmpty(str3);
            set.add(C20363c.m71410a(str3));
        }
        return this;
    }

    public Whitelist addTags(String... strArr) {
        Validate.notNull(strArr);
        for (String str : strArr) {
            Validate.notEmpty(str);
            this.f114383a.add(C20364d.m71411a(str));
        }
        return this;
    }

    /* renamed from: b */
    public final boolean m71406b(Element element, Attribute attribute, Set<C20363c> set) {
        String absUrl = element.absUrl(attribute.getKey());
        if (absUrl.length() == 0) {
            absUrl = attribute.getValue();
        }
        if (!this.f114387e) {
            attribute.setValue(absUrl);
        }
        Iterator<C20363c> it2 = set.iterator();
        while (it2.hasNext()) {
            String abstractC20365e = it2.next().toString();
            if (!abstractC20365e.equals("#")) {
                if (Normalizer.lowerCase(absUrl).startsWith(abstractC20365e + ":")) {
                    return true;
                }
            } else if (m71405a(absUrl)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public Attributes m71407c(String str) {
        Attributes attributes = new Attributes();
        C20364d m71411a = C20364d.m71411a(str);
        if (this.f114385c.containsKey(m71411a)) {
            for (Map.Entry<C20361a, C20362b> entry : this.f114385c.get(m71411a).entrySet()) {
                attributes.put(entry.getKey().toString(), entry.getValue().toString());
            }
        }
        return attributes;
    }

    public boolean isSafeAttribute(String str, Element element, Attribute attribute) {
        C20364d m71411a = C20364d.m71411a(str);
        C20361a m71408a = C20361a.m71408a(attribute.getKey());
        Set<C20361a> set = this.f114384b.get(m71411a);
        if (set != null && set.contains(m71408a)) {
            if (!this.f114386d.containsKey(m71411a)) {
                return true;
            }
            Map<C20361a, Set<C20363c>> map = this.f114386d.get(m71411a);
            return !map.containsKey(m71408a) || m71406b(element, attribute, map.get(m71408a));
        }
        if (this.f114385c.get(m71411a) != null) {
            Attributes m71407c = m71407c(str);
            String key = attribute.getKey();
            if (m71407c.hasKeyIgnoreCase(key)) {
                return m71407c.getIgnoreCase(key).equals(attribute.getValue());
            }
        }
        return !str.equals(":all") && isSafeAttribute(":all", element, attribute);
    }

    public boolean isSafeTag(String str) {
        return this.f114383a.contains(C20364d.m71411a(str));
    }

    public Whitelist preserveRelativeLinks(boolean z) {
        this.f114387e = z;
        return this;
    }

    public Whitelist removeAttributes(String str, String... strArr) {
        Validate.notEmpty(str);
        Validate.notNull(strArr);
        Validate.isTrue(strArr.length > 0, "No attribute names supplied.");
        C20364d m71411a = C20364d.m71411a(str);
        HashSet hashSet = new HashSet();
        for (String str2 : strArr) {
            Validate.notEmpty(str2);
            hashSet.add(C20361a.m71408a(str2));
        }
        if (this.f114383a.contains(m71411a) && this.f114384b.containsKey(m71411a)) {
            Set<C20361a> set = this.f114384b.get(m71411a);
            set.removeAll(hashSet);
            if (set.isEmpty()) {
                this.f114384b.remove(m71411a);
            }
        }
        if (str.equals(":all")) {
            for (C20364d c20364d : this.f114384b.keySet()) {
                Set<C20361a> set2 = this.f114384b.get(c20364d);
                set2.removeAll(hashSet);
                if (set2.isEmpty()) {
                    this.f114384b.remove(c20364d);
                }
            }
        }
        return this;
    }

    public Whitelist removeEnforcedAttribute(String str, String str2) {
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        C20364d m71411a = C20364d.m71411a(str);
        if (this.f114383a.contains(m71411a) && this.f114385c.containsKey(m71411a)) {
            C20361a m71408a = C20361a.m71408a(str2);
            Map<C20361a, C20362b> map = this.f114385c.get(m71411a);
            map.remove(m71408a);
            if (map.isEmpty()) {
                this.f114385c.remove(m71411a);
            }
        }
        return this;
    }

    public Whitelist removeProtocols(String str, String str2, String... strArr) {
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        Validate.notNull(strArr);
        C20364d m71411a = C20364d.m71411a(str);
        C20361a m71408a = C20361a.m71408a(str2);
        Validate.isTrue(this.f114386d.containsKey(m71411a), "Cannot remove a protocol that is not set.");
        Map<C20361a, Set<C20363c>> map = this.f114386d.get(m71411a);
        Validate.isTrue(map.containsKey(m71408a), "Cannot remove a protocol that is not set.");
        Set<C20363c> set = map.get(m71408a);
        for (String str3 : strArr) {
            Validate.notEmpty(str3);
            set.remove(C20363c.m71410a(str3));
        }
        if (set.isEmpty()) {
            map.remove(m71408a);
            if (map.isEmpty()) {
                this.f114386d.remove(m71411a);
            }
        }
        return this;
    }

    public Whitelist removeTags(String... strArr) {
        Validate.notNull(strArr);
        for (String str : strArr) {
            Validate.notEmpty(str);
            C20364d m71411a = C20364d.m71411a(str);
            if (this.f114383a.remove(m71411a)) {
                this.f114384b.remove(m71411a);
                this.f114385c.remove(m71411a);
                this.f114386d.remove(m71411a);
            }
        }
        return this;
    }
}
