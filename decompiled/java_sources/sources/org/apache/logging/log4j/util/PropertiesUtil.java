package org.apache.logging.log4j.util;

import com.sunia.HTREnginev2.c6j;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.time.Duration;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.ResourceBundle;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.lang3.SystemUtils;
import org.apache.logging.log4j.util.PropertiesUtil;
import org.apache.logging.log4j.util.PropertySource;

/* loaded from: classes12.dex */
public final class PropertiesUtil {

    /* renamed from: c */
    public static final String f111277c = "log4j2.system.properties";

    /* renamed from: d */
    public static final String f111278d = "system:";

    /* renamed from: a */
    public final C19408b f111280a;

    /* renamed from: b */
    public static final String f111276b = "log4j2.component.properties";

    /* renamed from: e */
    public static final PropertiesUtil f111279e = new PropertiesUtil(f111276b);

    /* loaded from: classes12.dex */
    public enum TimeUnit {
        NANOS("ns,nano,nanos,nanosecond,nanoseconds", ChronoUnit.NANOS),
        MICROS("us,micro,micros,microsecond,microseconds", ChronoUnit.MICROS),
        MILLIS("ms,milli,millis,millsecond,milliseconds", ChronoUnit.MILLIS),
        SECONDS("s,second,seconds", ChronoUnit.SECONDS),
        MINUTES("m,minute,minutes", ChronoUnit.MINUTES),
        HOURS("h,hour,hours", ChronoUnit.HOURS),
        DAYS("d,day,days", ChronoUnit.DAYS);

        private final String[] descriptions;
        private final ChronoUnit timeUnit;

        TimeUnit(String descriptions, ChronoUnit timeUnit) {
            this.descriptions = descriptions.split(",");
            this.timeUnit = timeUnit;
        }

        public static Duration getDuration(String time) {
            String trim = time.trim();
            ChronoUnit chronoUnit = ChronoUnit.MILLIS;
            long j = 0;
            for (TimeUnit timeUnit : values()) {
                for (String str : timeUnit.descriptions) {
                    if (trim.endsWith(str)) {
                        chronoUnit = timeUnit.timeUnit;
                        j = Long.parseLong(trim.substring(0, trim.length() - str.length()));
                    }
                }
            }
            return Duration.of(j, chronoUnit);
        }

        public ChronoUnit getTimeUnit() {
            return this.timeUnit;
        }
    }

    /* renamed from: org.apache.logging.log4j.util.PropertiesUtil$b */
    /* loaded from: classes12.dex */
    public static class C19408b {

        /* renamed from: a */
        public final Set<PropertySource> f111281a;

        /* renamed from: b */
        public final Map<CharSequence, String> f111282b;

        /* renamed from: c */
        public final Map<CharSequence, String> f111283c;

        /* renamed from: d */
        public final Map<List<CharSequence>, String> f111284d;

        /* renamed from: h */
        public static boolean m68660h(final String key) {
            try {
                return System.getProperties().containsKey(key);
            } catch (SecurityException unused) {
                return false;
            }
        }

        /* renamed from: i */
        public static /* synthetic */ void m68661i(String key, String value) {
            if (System.getProperty(key) == null) {
                System.setProperty(key, value);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: j */
        public /* synthetic */ void m68662j(final PropertySource source, String key, String value) {
            if (key == null || value == null) {
                return;
            }
            this.f111282b.put(key, value);
            List<CharSequence> list = PropertySource.Util.tokenize(key);
            if (list.isEmpty()) {
                this.f111283c.put(source.getNormalForm(Collections.singleton(key)), value);
            } else {
                this.f111283c.put(source.getNormalForm(list), value);
                this.f111284d.put(list, value);
            }
        }

        /* renamed from: f */
        public final boolean m68663f(final String key) {
            return this.f111283c.containsKey(key) || this.f111282b.containsKey(key) || m68660h(key) || this.f111284d.containsKey(PropertySource.Util.tokenize(key));
        }

        /* renamed from: g */
        public final String m68664g(final String key) {
            if (this.f111283c.containsKey(key)) {
                return this.f111283c.get(key);
            }
            if (this.f111282b.containsKey(key)) {
                return this.f111282b.get(key);
            }
            if (m68660h(key)) {
                return System.getProperty(key);
            }
            for (PropertySource propertySource : this.f111281a) {
                if (propertySource.containsProperty(key)) {
                    return propertySource.getProperty(key);
                }
            }
            return this.f111284d.get(PropertySource.Util.tokenize(key));
        }

        /* renamed from: k */
        public final synchronized void m68665k() {
            this.f111282b.clear();
            this.f111283c.clear();
            this.f111284d.clear();
            for (final PropertySource propertySource : this.f111281a) {
                propertySource.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.u8l
                    @Override // org.apache.logging.log4j.util.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        PropertiesUtil.C19408b.this.m68662j(propertySource, (String) obj, (String) obj2);
                    }
                });
            }
        }

        public C19408b(final PropertySource propertySource) {
            this.f111281a = new TreeSet(new PropertySource.Comparator());
            this.f111282b = new ConcurrentHashMap();
            this.f111283c = new ConcurrentHashMap();
            this.f111284d = new ConcurrentHashMap();
            try {
                new PropertyFilePropertySource(PropertiesUtil.f111277c).forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.v8l
                    @Override // org.apache.logging.log4j.util.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        PropertiesUtil.C19408b.m68661i((String) obj, (String) obj2);
                    }
                });
            } catch (SecurityException unused) {
            }
            this.f111281a.add(propertySource);
            for (ClassLoader classLoader : LoaderUtil.getClassLoaders()) {
                try {
                    Iterator it2 = ServiceLoader.load(PropertySource.class, classLoader).iterator();
                    while (it2.hasNext()) {
                        this.f111281a.add((PropertySource) it2.next());
                    }
                } catch (Throwable unused2) {
                }
            }
            m68665k();
        }
    }

    public PropertiesUtil(final Properties props) {
        this.f111280a = new C19408b(new PropertiesPropertySource(props));
    }

    /* renamed from: a */
    public static ResourceBundle m68653a() {
        return ResourceBundle.getBundle("Log4j-charsets");
    }

    /* renamed from: b */
    public static Properties m68654b(final InputStream in, final Object source) {
        StringBuilder sb;
        Properties properties = new Properties();
        try {
            if (in != null) {
                try {
                    properties.load(in);
                } catch (IOException e) {
                    c6j.m53395b("Unable to read " + source, e);
                    try {
                        in.close();
                    } catch (IOException e2) {
                        e = e2;
                        sb = new StringBuilder();
                        sb.append("Unable to close ");
                        sb.append(source);
                        c6j.m53395b(sb.toString(), e);
                        return properties;
                    }
                }
                try {
                    in.close();
                } catch (IOException e3) {
                    e = e3;
                    sb = new StringBuilder();
                    sb.append("Unable to close ");
                    sb.append(source);
                    c6j.m53395b(sb.toString(), e);
                    return properties;
                }
            }
            return properties;
        } catch (Throwable th) {
            try {
                in.close();
            } catch (IOException e4) {
                c6j.m53395b("Unable to close " + source, e4);
            }
            throw th;
        }
    }

    public static Properties extractSubset(final Properties properties, final String prefix) {
        Properties properties2 = new Properties();
        if (prefix != null && prefix.length() != 0) {
            if (prefix.charAt(prefix.length() - 1) != '.') {
                prefix = prefix + '.';
            }
            ArrayList arrayList = new ArrayList();
            for (String str : properties.stringPropertyNames()) {
                if (str.startsWith(prefix)) {
                    properties2.setProperty(str.substring(prefix.length()), properties.getProperty(str));
                    arrayList.add(str);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                properties.remove((String) it2.next());
            }
        }
        return properties2;
    }

    public static PropertiesUtil getProperties() {
        return f111279e;
    }

    public static Properties getSystemProperties() {
        try {
            return new Properties(System.getProperties());
        } catch (SecurityException e) {
            c6j.m53395b("Unable to access system properties.", e);
            return new Properties();
        }
    }

    public static Map<String, Properties> partitionOnCommonPrefixes(final Properties properties) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        for (String str : properties.stringPropertyNames()) {
            String substring = str.substring(0, str.indexOf(46));
            if (!concurrentHashMap.containsKey(substring)) {
                concurrentHashMap.put(substring, new Properties());
            }
            ((Properties) concurrentHashMap.get(substring)).setProperty(str.substring(str.indexOf(46) + 1), properties.getProperty(str));
        }
        return concurrentHashMap;
    }

    public boolean getBooleanProperty(final String name) {
        return getBooleanProperty(name, false);
    }

    public Charset getCharsetProperty(final String name) {
        return getCharsetProperty(name, Charset.defaultCharset());
    }

    public double getDoubleProperty(final String name, final double defaultValue) {
        String stringProperty = getStringProperty(name);
        if (stringProperty != null) {
            try {
                return Double.parseDouble(stringProperty);
            } catch (Exception unused) {
            }
        }
        return defaultValue;
    }

    public Duration getDurationProperty(final String name, Duration defaultValue) {
        String stringProperty = getStringProperty(name);
        return stringProperty != null ? TimeUnit.getDuration(stringProperty) : defaultValue;
    }

    public int getIntegerProperty(final String name, final int defaultValue) {
        String stringProperty = getStringProperty(name);
        if (stringProperty != null) {
            try {
                return Integer.parseInt(stringProperty);
            } catch (Exception unused) {
            }
        }
        return defaultValue;
    }

    public long getLongProperty(final String name, final long defaultValue) {
        String stringProperty = getStringProperty(name);
        if (stringProperty != null) {
            try {
                return Long.parseLong(stringProperty);
            } catch (Exception unused) {
            }
        }
        return defaultValue;
    }

    public String getStringProperty(final String[] prefixes, String key, Supplier<String> supplier) {
        for (String str : prefixes) {
            String stringProperty = getStringProperty(str + key);
            if (stringProperty != null) {
                return stringProperty;
            }
        }
        if (supplier != null) {
            return supplier.get();
        }
        return null;
    }

    public boolean hasProperty(final String name) {
        return this.f111280a.m68663f(name);
    }

    public boolean isOsWindows() {
        return getStringProperty("os.name", "").startsWith(SystemUtils.f107420a);
    }

    public void reload() {
        this.f111280a.m68665k();
    }

    public boolean getBooleanProperty(final String name, final boolean defaultValue) {
        String stringProperty = getStringProperty(name);
        return stringProperty == null ? defaultValue : "true".equalsIgnoreCase(stringProperty);
    }

    public Charset getCharsetProperty(final String name, final Charset defaultValue) {
        String stringProperty = getStringProperty(name);
        if (stringProperty == null) {
            return defaultValue;
        }
        if (Charset.isSupported(stringProperty)) {
            return Charset.forName(stringProperty);
        }
        ResourceBundle m68653a = m68653a();
        if (m68653a.containsKey(name)) {
            String string = m68653a.getString(name);
            if (Charset.isSupported(string)) {
                return Charset.forName(string);
            }
        }
        c6j.m53394a("Unable to get Charset '" + stringProperty + "' for property '" + name + "', using default " + defaultValue + " and continuing.");
        return defaultValue;
    }

    public PropertiesUtil(final String propertiesFileName) {
        this.f111280a = new C19408b(new PropertyFilePropertySource(propertiesFileName));
    }

    public Duration getDurationProperty(final String[] prefixes, String key, Supplier<Duration> supplier) {
        for (String str : prefixes) {
            if (hasProperty(str + key)) {
                return getDurationProperty(str + key, null);
            }
        }
        if (supplier != null) {
            return supplier.get();
        }
        return null;
    }

    public Integer getIntegerProperty(final String[] prefixes, String key, Supplier<Integer> supplier) {
        for (String str : prefixes) {
            if (hasProperty(str + key)) {
                return Integer.valueOf(getIntegerProperty(str + key, 0));
            }
        }
        if (supplier != null) {
            return supplier.get();
        }
        return null;
    }

    public Long getLongProperty(final String[] prefixes, String key, Supplier<Long> supplier) {
        for (String str : prefixes) {
            if (hasProperty(str + key)) {
                return Long.valueOf(getLongProperty(str + key, 0L));
            }
        }
        if (supplier != null) {
            return supplier.get();
        }
        return null;
    }

    public boolean getBooleanProperty(final String name, final boolean defaultValueIfAbsent, final boolean defaultValueIfPresent) {
        String stringProperty = getStringProperty(name);
        return stringProperty == null ? defaultValueIfAbsent : stringProperty.isEmpty() ? defaultValueIfPresent : "true".equalsIgnoreCase(stringProperty);
    }

    public String getStringProperty(final String name) {
        return this.f111280a.m68664g(name);
    }

    public String getStringProperty(final String name, final String defaultValue) {
        String stringProperty = getStringProperty(name);
        return stringProperty == null ? defaultValue : stringProperty;
    }

    public Boolean getBooleanProperty(final String[] prefixes, String key, Supplier<Boolean> supplier) {
        for (String str : prefixes) {
            if (hasProperty(str + key)) {
                return Boolean.valueOf(getBooleanProperty(str + key));
            }
        }
        if (supplier != null) {
            return supplier.get();
        }
        return null;
    }
}
