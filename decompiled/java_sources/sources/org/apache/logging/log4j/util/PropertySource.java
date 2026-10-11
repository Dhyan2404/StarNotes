package org.apache.logging.log4j.util;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes12.dex */
public interface PropertySource {

    /* loaded from: classes12.dex */
    public static class Comparator implements java.util.Comparator<PropertySource>, Serializable {
        private static final long serialVersionUID = 1;

        @Override // java.util.Comparator
        public int compare(final PropertySource o1, final PropertySource o2) {
            Objects.requireNonNull(o1);
            int priority = o1.getPriority();
            Objects.requireNonNull(o2);
            return Integer.compare(priority, o2.getPriority());
        }
    }

    /* loaded from: classes12.dex */
    public static final class Util {

        /* renamed from: a */
        public static final String f111285a = "(?i:^log4j2?[-._/]?|^org\\.apache\\.logging\\.log4j\\.)?";

        /* renamed from: b */
        public static final Pattern f111286b = Pattern.compile("(?i:^log4j2?[-._/]?|^org\\.apache\\.logging\\.log4j\\.)?([A-Z]*[a-z0-9]+|[A-Z0-9]+)[-._/]?");

        /* renamed from: c */
        public static final Map<CharSequence, List<CharSequence>> f111287c = new ConcurrentHashMap();

        public static CharSequence joinAsCamelCase(final Iterable<? extends CharSequence> tokens) {
            StringBuilder sb = new StringBuilder();
            boolean z = true;
            for (CharSequence charSequence : tokens) {
                if (z) {
                    sb.append(charSequence);
                } else {
                    sb.append(Character.toUpperCase(charSequence.charAt(0)));
                    if (charSequence.length() > 1) {
                        sb.append(charSequence.subSequence(1, charSequence.length()));
                    }
                }
                z = false;
            }
            return sb.toString();
        }

        public static List<CharSequence> tokenize(final CharSequence value) {
            Map<CharSequence, List<CharSequence>> map = f111287c;
            if (map.containsKey(value)) {
                return map.get(value);
            }
            ArrayList arrayList = new ArrayList();
            Matcher matcher = f111286b.matcher(value);
            while (matcher.find()) {
                arrayList.add(matcher.group(1).toLowerCase());
            }
            f111287c.put(value, arrayList);
            return arrayList;
        }
    }

    default boolean containsProperty(String key) {
        return false;
    }

    default void forEach(BiConsumer<String, String> action) {
    }

    default CharSequence getNormalForm(Iterable<? extends CharSequence> tokens) {
        return null;
    }

    int getPriority();

    default String getProperty(String key) {
        return null;
    }
}
