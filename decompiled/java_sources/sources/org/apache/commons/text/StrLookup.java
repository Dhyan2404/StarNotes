package org.apache.commons.text;

import java.util.Map;
import java.util.ResourceBundle;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.text.lookup.StringLookup;

@Deprecated
/* loaded from: classes12.dex */
public abstract class StrLookup<V> implements StringLookup {

    /* renamed from: a */
    public static final StrLookup<String> f109960a = new C19316b(null);

    /* renamed from: b */
    public static final StrLookup<String> f109961b = new C19318d();

    /* renamed from: org.apache.commons.text.StrLookup$b */
    /* loaded from: classes12.dex */
    public static class C19316b<V> extends StrLookup<V> {

        /* renamed from: c */
        public final Map<String, V> f109962c;

        public C19316b(Map<String, V> map) {
            this.f109962c = map;
        }

        @Override // org.apache.commons.text.lookup.StringLookup
        public String lookup(String str) {
            V v;
            Map<String, V> map = this.f109962c;
            if (map == null || (v = map.get(str)) == null) {
                return null;
            }
            return v.toString();
        }

        public String toString() {
            return super.toString() + " [map=" + this.f109962c + IteratorUtils.f104924b;
        }
    }

    /* renamed from: org.apache.commons.text.StrLookup$c */
    /* loaded from: classes12.dex */
    public static final class C19317c extends StrLookup<String> {

        /* renamed from: c */
        public final ResourceBundle f109963c;

        @Override // org.apache.commons.text.lookup.StringLookup
        public String lookup(String str) {
            ResourceBundle resourceBundle = this.f109963c;
            if (resourceBundle == null || str == null || !resourceBundle.containsKey(str)) {
                return null;
            }
            return this.f109963c.getString(str);
        }

        public String toString() {
            return super.toString() + " [resourceBundle=" + this.f109963c + IteratorUtils.f104924b;
        }

        public C19317c(ResourceBundle resourceBundle) {
            this.f109963c = resourceBundle;
        }
    }

    /* renamed from: org.apache.commons.text.StrLookup$d */
    /* loaded from: classes12.dex */
    public static final class C19318d extends StrLookup<String> {
        public C19318d() {
        }

        @Override // org.apache.commons.text.lookup.StringLookup
        public String lookup(String str) {
            if (str.length() > 0) {
                try {
                    return System.getProperty(str);
                } catch (SecurityException unused) {
                }
            }
            return null;
        }
    }

    public static <V> StrLookup<V> mapLookup(Map<String, V> map) {
        return new C19316b(map);
    }

    public static StrLookup<?> noneLookup() {
        return f109960a;
    }

    public static StrLookup<String> resourceBundleLookup(ResourceBundle resourceBundle) {
        return new C19317c(resourceBundle);
    }

    public static StrLookup<String> systemPropertiesLookup() {
        return f109961b;
    }
}
