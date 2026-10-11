package org.apache.poi.hpsf;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.collections4.bidimap.TreeBidiMap;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.util.CodePageUtil;

/* loaded from: classes12.dex */
public class CustomProperties implements Map<String, Object> {
    private static final Logger LOG = LogManager.getLogger((Class<?>) CustomProperties.class);
    private final HashMap<Long, CustomProperty> props = new HashMap<>();
    private final TreeBidiMap<Long, String> dictionary = new TreeBidiMap<>();
    private boolean isPure = true;
    private int codepage = -1;

    private void checkCodePage(String str) {
        String str2;
        int codepage = getCodepage();
        if (codepage == -1) {
            codepage = 1252;
        }
        if (codepage == 1200) {
            return;
        }
        try {
            str2 = CodePageUtil.codepageToEncoding(codepage, false);
        } catch (UnsupportedEncodingException unused) {
            LOG.atError().log("Codepage '{}' can't be found.", Unbox.box(codepage));
            str2 = "";
        }
        if (str2.isEmpty() || !Charset.forName(str2).newEncoder().canEncode(str)) {
            LOG.atDebug().log("Charset '{}' can't encode '{}' - switching to unicode.", str2, str);
            setCodepage(1200);
        }
    }

    @Override // java.util.Map
    public void clear() {
        this.props.clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return ((obj instanceof Long) && this.dictionary.containsKey(obj)) || this.dictionary.containsValue(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        if (obj instanceof CustomProperty) {
            return this.props.containsValue(obj);
        }
        Iterator<CustomProperty> it2 = this.props.values().iterator();
        while (it2.hasNext()) {
            if (it2.next().getValue() == obj) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map
    public Set<Map.Entry<String, Object>> entrySet() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.props.size());
        for (CustomProperty customProperty : this.props.values()) {
            linkedHashMap.put(customProperty.getName(), customProperty.getValue());
        }
        return Collections.unmodifiableSet(linkedHashMap.entrySet());
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return (obj instanceof CustomProperties) && this.props.equals(((CustomProperties) obj).props);
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        CustomProperty customProperty = this.props.get(this.dictionary.getKey(obj));
        if (customProperty != null) {
            return customProperty.getValue();
        }
        return null;
    }

    public int getCodepage() {
        return this.codepage;
    }

    public Map<Long, String> getDictionary() {
        return this.dictionary;
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.props.hashCode();
    }

    public Set<Long> idSet() {
        return Collections.unmodifiableSet(this.dictionary.keySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.props.isEmpty();
    }

    public boolean isPure() {
        return this.isPure;
    }

    @Override // java.util.Map
    public Set<String> keySet() {
        return Collections.unmodifiableSet(this.dictionary.values());
    }

    public Set<String> nameSet() {
        return Collections.unmodifiableSet(this.dictionary.values());
    }

    public List<CustomProperty> properties() {
        ArrayList arrayList = new ArrayList(this.props.size());
        arrayList.addAll(this.props.values());
        return Collections.unmodifiableList(arrayList);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends String, ? extends Object> map) {
        for (Map.Entry<? extends String, ? extends Object> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public void setCodepage(int i) {
        this.codepage = i;
    }

    public void setPure(boolean z) {
        this.isPure = z;
    }

    @Override // java.util.Map
    public int size() {
        return this.props.size();
    }

    @Override // java.util.Map
    public Collection<Object> values() {
        ArrayList arrayList = new ArrayList(this.props.size());
        Iterator<CustomProperty> it2 = this.props.values().iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getValue());
        }
        return Collections.unmodifiableCollection(arrayList);
    }

    public CustomProperty put(String str, CustomProperty customProperty) {
        if (str == null) {
            this.isPure = false;
            return null;
        }
        if (str.equals(customProperty.getName())) {
            checkCodePage(str);
            this.props.remove(this.dictionary.getKey((Object) str));
            this.dictionary.put((TreeBidiMap<Long, String>) Long.valueOf(customProperty.getID()), (Long) str);
            return this.props.put(Long.valueOf(customProperty.getID()), customProperty);
        }
        throw new IllegalArgumentException("Parameter \"name\" (" + str + ") and custom property's name (" + customProperty.getName() + ") do not match.");
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        return this.props.remove(this.dictionary.removeValue(obj));
    }

    @Override // java.util.Map
    public Object put(String str, Object obj) {
        int i;
        if (obj instanceof String) {
            i = 30;
        } else if (obj instanceof Short) {
            i = 2;
        } else if (obj instanceof Integer) {
            i = 3;
        } else if (obj instanceof Long) {
            i = 20;
        } else if (obj instanceof Float) {
            i = 4;
        } else if (obj instanceof Double) {
            i = 5;
        } else if (obj instanceof Boolean) {
            i = 11;
        } else {
            if (obj instanceof BigInteger) {
                BigInteger bigInteger = (BigInteger) obj;
                if (bigInteger.bitLength() <= 64 && bigInteger.compareTo(BigInteger.ZERO) >= 0) {
                    i = 21;
                }
            }
            if (!(obj instanceof java.util.Date)) {
                throw new IllegalStateException("unsupported datatype - currently String,Short,Integer,Long,Float,Double,Boolean,BigInteger(unsigned long),Date can be processed.");
            }
            i = 64;
        }
        return put(new CustomProperty(new Property(-1L, i, obj), str));
    }

    private Object put(CustomProperty customProperty) throws ClassCastException {
        String name = customProperty.getName();
        Long key = name == null ? null : this.dictionary.getKey((Object) name);
        if (key != null) {
            customProperty.setID(key.longValue());
        } else {
            customProperty.setID(Math.max(this.dictionary.isEmpty() ? 0L : this.dictionary.lastKey().longValue(), 31L) + 1);
        }
        return put(name, customProperty);
    }
}
