package org.apache.logging.log4j.message;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import org.apache.logging.log4j.util.IndexedStringMap;
import org.apache.logging.log4j.util.PropertiesUtil;
import org.apache.logging.log4j.util.StringBuilderFormattable;
import org.apache.logging.log4j.util.StringBuilders;

/* loaded from: classes12.dex */
enum MapMessageJsonFormatter {
    ;

    private static final char COLON = ':';
    private static final char COMMA = ',';
    private static final char DQUOTE = '\"';
    private static final char LBRACE = '[';
    private static final char LCURLY = '{';
    public static final int MAX_DEPTH = readMaxDepth();
    private static final char RBRACE = ']';
    private static final char RCURLY = '}';

    public static void format(final StringBuilder sb, final Object object) {
        format(sb, object, 0);
    }

    private static void formatBoolean(final StringBuilder sb, final boolean booleanValue) {
        sb.append(booleanValue);
    }

    private static void formatBooleanArray(final StringBuilder sb, final boolean[] items) {
        sb.append(LBRACE);
        for (int i = 0; i < items.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(items[i]);
        }
        sb.append(RBRACE);
    }

    private static void formatByteArray(final StringBuilder sb, final byte[] items) {
        sb.append(LBRACE);
        for (int i = 0; i < items.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append((int) items[i]);
        }
        sb.append(RBRACE);
    }

    private static void formatCharArray(final StringBuilder sb, final char[] items) {
        sb.append(LBRACE);
        for (int i = 0; i < items.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            char c = items[i];
            sb.append('\"');
            int length = sb.length();
            sb.append(c);
            StringBuilders.escapeJson(sb, length);
            sb.append('\"');
        }
        sb.append(RBRACE);
    }

    private static void formatCollection(final StringBuilder sb, final Collection<Object> items, final int depth) {
        sb.append(LBRACE);
        final int i = depth + 1;
        final boolean[] zArr = {true};
        items.forEach(new Consumer() { // from class: org.apache.logging.log4j.message.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                MapMessageJsonFormatter.lambda$formatCollection$1(zArr, sb, i, obj);
            }
        });
        sb.append(RBRACE);
    }

    private static void formatDoubleArray(final StringBuilder sb, final double[] items) {
        sb.append(LBRACE);
        for (int i = 0; i < items.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(items[i]);
        }
        sb.append(RBRACE);
    }

    private static void formatFloatArray(final StringBuilder sb, final float[] items) {
        sb.append(LBRACE);
        for (int i = 0; i < items.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(items[i]);
        }
        sb.append(RBRACE);
    }

    private static void formatFormattable(final StringBuilder sb, final StringBuilderFormattable formattable) {
        sb.append('\"');
        int length = sb.length();
        formattable.formatTo(sb);
        StringBuilders.escapeJson(sb, length);
        sb.append('\"');
    }

    private static void formatIndexedStringMap(final StringBuilder sb, final IndexedStringMap map, final int depth) {
        sb.append('{');
        int i = depth + 1;
        for (int i2 = 0; i2 < map.size(); i2++) {
            String keyAt = map.getKeyAt(i2);
            Object valueAt = map.getValueAt(i2);
            if (i2 > 0) {
                sb.append(',');
            }
            sb.append('\"');
            int length = sb.length();
            sb.append(keyAt);
            StringBuilders.escapeJson(sb, length);
            sb.append('\"');
            sb.append(':');
            format(sb, valueAt, i);
        }
        sb.append('}');
    }

    private static void formatIntArray(final StringBuilder sb, final int[] items) {
        sb.append(LBRACE);
        for (int i = 0; i < items.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(items[i]);
        }
        sb.append(RBRACE);
    }

    private static void formatList(final StringBuilder sb, final List<Object> items, final int depth) {
        sb.append(LBRACE);
        int i = depth + 1;
        for (int i2 = 0; i2 < items.size(); i2++) {
            if (i2 > 0) {
                sb.append(',');
            }
            format(sb, items.get(i2), i);
        }
        sb.append(RBRACE);
    }

    private static void formatLongArray(final StringBuilder sb, final long[] items) {
        sb.append(LBRACE);
        for (int i = 0; i < items.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(items[i]);
        }
        sb.append(RBRACE);
    }

    private static void formatMap(final StringBuilder sb, final Map<Object, Object> map, final int depth) {
        sb.append('{');
        final int i = depth + 1;
        final boolean[] zArr = {true};
        map.forEach(new BiConsumer() { // from class: org.apache.logging.log4j.message.b
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                MapMessageJsonFormatter.lambda$formatMap$0(zArr, sb, i, obj, obj2);
            }
        });
        sb.append('}');
    }

    private static void formatNumber(final StringBuilder sb, final Number number) {
        if (number instanceof BigDecimal) {
            sb.append(((BigDecimal) number).toString());
            return;
        }
        if (number instanceof Double) {
            sb.append(((Double) number).doubleValue());
            return;
        }
        if (number instanceof Float) {
            sb.append(((Float) number).floatValue());
            return;
        }
        if ((number instanceof Byte) || (number instanceof Short) || (number instanceof Integer) || (number instanceof Long)) {
            sb.append(number.longValue());
            return;
        }
        long longValue = number.longValue();
        double doubleValue = number.doubleValue();
        if (Double.compare(longValue, doubleValue) == 0) {
            sb.append(longValue);
        } else {
            sb.append(doubleValue);
        }
    }

    private static void formatObjectArray(final StringBuilder sb, final Object[] items, final int depth) {
        sb.append(LBRACE);
        int i = depth + 1;
        for (int i2 = 0; i2 < items.length; i2++) {
            if (i2 > 0) {
                sb.append(',');
            }
            format(sb, items[i2], i);
        }
        sb.append(RBRACE);
    }

    private static void formatShortArray(final StringBuilder sb, final short[] items) {
        sb.append(LBRACE);
        for (int i = 0; i < items.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append((int) items[i]);
        }
        sb.append(RBRACE);
    }

    private static void formatString(final StringBuilder sb, final Object value) {
        sb.append('\"');
        int length = sb.length();
        sb.append(String.valueOf(value));
        StringBuilders.escapeJson(sb, length);
        sb.append('\"');
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$formatCollection$1(final boolean[] firstItem, final StringBuilder sb, final int nextDepth, final Object item) {
        if (firstItem[0]) {
            firstItem[0] = false;
        } else {
            sb.append(',');
        }
        format(sb, item, nextDepth);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$formatMap$0(final boolean[] firstEntry, final StringBuilder sb, final int nextDepth, final Object key, final Object value) {
        if (key == null) {
            throw new IllegalArgumentException("null keys are not allowed");
        }
        if (firstEntry[0]) {
            firstEntry[0] = false;
        } else {
            sb.append(',');
        }
        sb.append('\"');
        String valueOf = String.valueOf(key);
        int length = sb.length();
        sb.append(valueOf);
        StringBuilders.escapeJson(sb, length);
        sb.append('\"');
        sb.append(':');
        format(sb, value, nextDepth);
    }

    private static int readMaxDepth() {
        int integerProperty = PropertiesUtil.getProperties().getIntegerProperty("log4j2.mapMessage.jsonFormatter.maxDepth", 8);
        if (integerProperty >= 0) {
            return integerProperty;
        }
        throw new IllegalArgumentException("was expecting a positive maxDepth, found: " + integerProperty);
    }

    private static void format(final StringBuilder sb, final Object object, final int depth) {
        if (depth >= MAX_DEPTH) {
            throw new IllegalArgumentException("maxDepth has been exceeded");
        }
        if (object == null) {
            sb.append("null");
            return;
        }
        if (object instanceof IndexedStringMap) {
            formatIndexedStringMap(sb, (IndexedStringMap) object, depth);
            return;
        }
        if (object instanceof Map) {
            formatMap(sb, (Map) object, depth);
            return;
        }
        if (object instanceof List) {
            formatList(sb, (List) object, depth);
            return;
        }
        if (object instanceof Collection) {
            formatCollection(sb, (Collection) object, depth);
            return;
        }
        if (object instanceof Number) {
            formatNumber(sb, (Number) object);
            return;
        }
        if (object instanceof Boolean) {
            formatBoolean(sb, ((Boolean) object).booleanValue());
            return;
        }
        if (object instanceof StringBuilderFormattable) {
            formatFormattable(sb, (StringBuilderFormattable) object);
            return;
        }
        if (object instanceof char[]) {
            formatCharArray(sb, (char[]) object);
            return;
        }
        if (object instanceof boolean[]) {
            formatBooleanArray(sb, (boolean[]) object);
            return;
        }
        if (object instanceof byte[]) {
            formatByteArray(sb, (byte[]) object);
            return;
        }
        if (object instanceof short[]) {
            formatShortArray(sb, (short[]) object);
            return;
        }
        if (object instanceof int[]) {
            formatIntArray(sb, (int[]) object);
            return;
        }
        if (object instanceof long[]) {
            formatLongArray(sb, (long[]) object);
            return;
        }
        if (object instanceof float[]) {
            formatFloatArray(sb, (float[]) object);
            return;
        }
        if (object instanceof double[]) {
            formatDoubleArray(sb, (double[]) object);
        } else if (object instanceof Object[]) {
            formatObjectArray(sb, (Object[]) object, depth);
        } else {
            formatString(sb, object);
        }
    }
}
