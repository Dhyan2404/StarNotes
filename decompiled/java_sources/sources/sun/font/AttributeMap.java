package sun.font;

import java.awt.font.TextAttribute;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes16.dex */
public final class AttributeMap extends AbstractMap<TextAttribute, Object> {
    private static boolean first;
    private Map<TextAttribute, Object> delegateMap;
    private AttributeValues values;

    public AttributeMap(AttributeValues attributeValues) {
        this.values = attributeValues;
    }

    private Map<TextAttribute, Object> delegate() {
        if (this.delegateMap == null) {
            if (first) {
                first = false;
                Thread.dumpStack();
            }
            this.delegateMap = this.values.toMap(new HashMap(27));
            this.values = null;
        }
        return this.delegateMap;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<TextAttribute, Object>> entrySet() {
        return delegate().entrySet();
    }

    public AttributeValues getValues() {
        return this.values;
    }

    @Override // java.util.AbstractMap
    public String toString() {
        if (this.values == null) {
            return super.toString();
        }
        return "map of " + this.values.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object put(TextAttribute textAttribute, Object obj) {
        return delegate().put(textAttribute, obj);
    }
}
