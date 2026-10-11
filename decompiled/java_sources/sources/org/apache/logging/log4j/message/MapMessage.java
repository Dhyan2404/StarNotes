package org.apache.logging.log4j.message;

import com.sunia.HTREnginev2.pvk;
import java.util.Collections;
import java.util.Map;
import java.util.TreeMap;
import org.apache.logging.log4j.message.MapMessage;
import org.apache.logging.log4j.util.BiConsumer;
import org.apache.logging.log4j.util.EnglishEnums;
import org.apache.logging.log4j.util.IndexedReadOnlyStringMap;
import org.apache.logging.log4j.util.IndexedStringMap;
import org.apache.logging.log4j.util.MultiFormatStringBuilderFormattable;
import org.apache.logging.log4j.util.PerformanceSensitive;
import org.apache.logging.log4j.util.SortedArrayStringMap;
import org.apache.logging.log4j.util.StringBuilders;
import org.apache.logging.log4j.util.TriConsumer;

@AsynchronouslyFormattable
@PerformanceSensitive({"allocation"})
/* loaded from: classes12.dex */
public class MapMessage<M extends MapMessage<M, V>, V> implements MultiFormatStringBuilderFormattable {
    private static final long serialVersionUID = -5031471831131487120L;
    private final IndexedStringMap data;

    /* loaded from: classes12.dex */
    public enum MapFormat {
        XML,
        JSON,
        JAVA,
        JAVA_UNQUOTED;

        public static MapFormat lookupIgnoreCase(final String format) {
            MapFormat mapFormat = XML;
            if (mapFormat.name().equalsIgnoreCase(format)) {
                return mapFormat;
            }
            MapFormat mapFormat2 = JSON;
            if (mapFormat2.name().equalsIgnoreCase(format)) {
                return mapFormat2;
            }
            MapFormat mapFormat3 = JAVA;
            if (mapFormat3.name().equalsIgnoreCase(format)) {
                return mapFormat3;
            }
            MapFormat mapFormat4 = JAVA_UNQUOTED;
            if (mapFormat4.name().equalsIgnoreCase(format)) {
                return mapFormat4;
            }
            return null;
        }

        public static String[] names() {
            return new String[]{XML.name(), JSON.name(), JAVA.name(), JAVA_UNQUOTED.name()};
        }
    }

    /* renamed from: org.apache.logging.log4j.message.MapMessage$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19397a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f111209a;

        static {
            int[] iArr = new int[MapFormat.values().length];
            f111209a = iArr;
            try {
                iArr[MapFormat.XML.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111209a[MapFormat.JSON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f111209a[MapFormat.JAVA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f111209a[MapFormat.JAVA_UNQUOTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public MapMessage() {
        this.data = new SortedArrayStringMap();
    }

    private StringBuilder format(final MapFormat format, final StringBuilder sb) {
        if (format == null) {
            appendMap(sb);
        } else {
            int i = C19397a.f111209a[format.ordinal()];
            if (i == 1) {
                asXml(sb);
            } else if (i == 2) {
                asJson(sb);
            } else if (i == 3) {
                asJava(sb);
            } else if (i != 4) {
                appendMap(sb);
            } else {
                asJavaUnquoted(sb);
            }
        }
        return sb;
    }

    public void appendMap(final StringBuilder sb) {
        for (int i = 0; i < this.data.size(); i++) {
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(this.data.getKeyAt(i));
            sb.append('=');
            sb.append('\"');
            pvk.m56393B(this.data.getValueAt(i), sb);
            sb.append('\"');
        }
    }

    public void asJava(final StringBuilder sb) {
        asJava(sb, true);
    }

    public void asJavaUnquoted(final StringBuilder sb) {
        asJava(sb, false);
    }

    public void asJson(final StringBuilder sb) {
        MapMessageJsonFormatter.format(sb, this.data);
    }

    public String asString() {
        return format(null, new StringBuilder()).toString();
    }

    public void asXml(final StringBuilder sb) {
        sb.append("<Map>\n");
        for (int i = 0; i < this.data.size(); i++) {
            sb.append("  <Entry key=\"");
            sb.append(this.data.getKeyAt(i));
            sb.append("\">");
            int length = sb.length();
            pvk.m56393B(this.data.getValueAt(i), sb);
            StringBuilders.escapeXml(sb, length);
            sb.append("</Entry>\n");
        }
        sb.append("</Map>");
    }

    public void clear() {
        this.data.clear();
    }

    public boolean containsKey(final String key) {
        return this.data.containsKey(key);
    }

    public boolean equals(final Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        return this.data.equals(((MapMessage) o).data);
    }

    public <CV> void forEach(final BiConsumer<String, ? super CV> action) {
        this.data.forEach(action);
    }

    @Override // org.apache.logging.log4j.util.StringBuilderFormattable
    public void formatTo(final StringBuilder buffer) {
        format(null, buffer);
    }

    public String get(final String key) {
        return pvk.m56412m(this.data.getValue(key));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Map<String, V> getData() {
        TreeMap treeMap = new TreeMap();
        for (int i = 0; i < this.data.size(); i++) {
            treeMap.put(this.data.getKeyAt(i), this.data.getValueAt(i));
        }
        return Collections.unmodifiableMap(treeMap);
    }

    @Override // org.apache.logging.log4j.message.Message
    public String getFormat() {
        return "";
    }

    @Override // org.apache.logging.log4j.message.MultiformatMessage
    public String[] getFormats() {
        return MapFormat.names();
    }

    @Override // org.apache.logging.log4j.message.Message
    public String getFormattedMessage() {
        return asString();
    }

    public IndexedReadOnlyStringMap getIndexedReadOnlyStringMap() {
        return this.data;
    }

    @Override // org.apache.logging.log4j.message.Message
    public Object[] getParameters() {
        Object[] objArr = new Object[this.data.size()];
        for (int i = 0; i < this.data.size(); i++) {
            objArr[i] = this.data.getValueAt(i);
        }
        return objArr;
    }

    @Override // org.apache.logging.log4j.message.Message
    public Throwable getThrowable() {
        return null;
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public M newInstance(Map<String, V> map) {
        return (M) new MapMessage(map);
    }

    public void put(final String candidateKey, final String value) {
        if (value != null) {
            String key = toKey(candidateKey);
            validate(key, value);
            this.data.putValue(key, value);
        } else {
            throw new IllegalArgumentException("No value provided for key " + candidateKey);
        }
    }

    public void putAll(final Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.data.putValue(entry.getKey(), entry.getValue());
        }
    }

    public String remove(final String key) {
        String str = get(key);
        this.data.remove(key);
        return str;
    }

    public String toKey(final String candidateKey) {
        return candidateKey;
    }

    public String toString() {
        return asString();
    }

    public void validate(final String key, final byte value) {
    }

    public M with(final String candidateKey, final boolean value) {
        String key = toKey(candidateKey);
        validate(key, value);
        this.data.putValue(key, Boolean.valueOf(value));
        return this;
    }

    private void asJava(final StringBuilder sb, boolean quoted) {
        sb.append('{');
        for (int i = 0; i < this.data.size(); i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(this.data.getKeyAt(i));
            sb.append('=');
            if (quoted) {
                sb.append('\"');
            }
            pvk.m56393B(this.data.getValueAt(i), sb);
            if (quoted) {
                sb.append('\"');
            }
        }
        sb.append('}');
    }

    private MapFormat getFormat(final String[] formats) {
        if (formats != null && formats.length != 0) {
            for (String str : formats) {
                MapFormat lookupIgnoreCase = MapFormat.lookupIgnoreCase(str);
                if (lookupIgnoreCase != null) {
                    return lookupIgnoreCase;
                }
            }
        }
        return null;
    }

    public String asString(final String format) {
        try {
            return format((MapFormat) EnglishEnums.valueOf(MapFormat.class, format), new StringBuilder()).toString();
        } catch (IllegalArgumentException unused) {
            return this.asString();
        }
    }

    public <CV, S> void forEach(final TriConsumer<String, ? super CV, S> action, final S state) {
        this.data.forEach(action, state);
    }

    @Override // org.apache.logging.log4j.util.MultiFormatStringBuilderFormattable
    public void formatTo(final String[] formats, final StringBuilder buffer) {
        format(getFormat(formats), buffer);
    }

    @Override // org.apache.logging.log4j.message.MultiformatMessage
    public String getFormattedMessage(final String[] formats) {
        return format(getFormat(formats), new StringBuilder()).toString();
    }

    public void validate(final String key, final char value) {
    }

    public MapMessage(final int initialCapacity) {
        this.data = new SortedArrayStringMap(initialCapacity);
    }

    public void validate(final String key, final double value) {
    }

    public void validate(final String key, final float value) {
    }

    public M with(final String candidateKey, final byte value) {
        String key = toKey(candidateKey);
        validate(key, value);
        this.data.putValue(key, Byte.valueOf(value));
        return this;
    }

    public MapMessage(final Map<String, V> map) {
        this.data = new SortedArrayStringMap((Map<String, ?>) map);
    }

    public void validate(final String key, final int value) {
    }

    public void validate(final String key, final long value) {
    }

    public void validate(final String key, final Object value) {
    }

    public M with(final String candidateKey, final char value) {
        String key = toKey(candidateKey);
        validate(key, value);
        this.data.putValue(key, Character.valueOf(value));
        return this;
    }

    public void validate(final String key, final String value) {
    }

    public void validate(final String key, final short value) {
    }

    public void validate(final String key, final boolean value) {
    }

    public M with(final String candidateKey, final double value) {
        String key = toKey(candidateKey);
        validate(key, value);
        this.data.putValue(key, Double.valueOf(value));
        return this;
    }

    public M with(final String candidateKey, final float value) {
        String key = toKey(candidateKey);
        validate(key, value);
        this.data.putValue(key, Float.valueOf(value));
        return this;
    }

    public M with(final String candidateKey, final int value) {
        String key = toKey(candidateKey);
        validate(key, value);
        this.data.putValue(key, Integer.valueOf(value));
        return this;
    }

    public M with(final String candidateKey, final long value) {
        String key = toKey(candidateKey);
        validate(key, value);
        this.data.putValue(key, Long.valueOf(value));
        return this;
    }

    public M with(final String candidateKey, final Object value) {
        String key = toKey(candidateKey);
        validate(key, value);
        this.data.putValue(key, value);
        return this;
    }

    public M with(final String candidateKey, final short value) {
        String key = toKey(candidateKey);
        validate(key, value);
        this.data.putValue(key, Short.valueOf(value));
        return this;
    }

    public M with(final String candidateKey, final String value) {
        put(toKey(candidateKey), value);
        return this;
    }
}
