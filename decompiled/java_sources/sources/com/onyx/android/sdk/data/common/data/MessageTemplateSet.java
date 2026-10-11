package com.onyx.android.sdk.data.common.data;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003`\u0004B\u0005¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/MessageTemplateSet;", "Ljava/util/HashMap;", "", "Lcom/onyx/android/sdk/data/common/data/MessageTemplate;", "Lkotlin/collections/HashMap;", "()V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MessageTemplateSet extends HashMap<String, MessageTemplate> {
    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (obj instanceof String) {
            return containsKey((String) obj);
        }
        return false;
    }

    public /* bridge */ boolean containsValue(MessageTemplate messageTemplate) {
        return super.containsValue((Object) messageTemplate);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<Map.Entry<String, MessageTemplate>> entrySet() {
        return getEntries();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ MessageTemplate get(Object obj) {
        if (obj instanceof String) {
            return get((String) obj);
        }
        return null;
    }

    public /* bridge */ Set<Map.Entry<String, MessageTemplate>> getEntries() {
        return super.entrySet();
    }

    public /* bridge */ Set<String> getKeys() {
        return super.keySet();
    }

    public final /* bridge */ MessageTemplate getOrDefault(Object obj, MessageTemplate messageTemplate) {
        return !(obj instanceof String) ? messageTemplate : getOrDefault((String) obj, messageTemplate);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    public /* bridge */ Collection<MessageTemplate> getValues() {
        return super.values();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<String> keySet() {
        return getKeys();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ MessageTemplate remove(Object obj) {
        if (obj instanceof String) {
            return remove((String) obj);
        }
        return null;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Collection<MessageTemplate> values() {
        return getValues();
    }

    public /* bridge */ boolean containsKey(String str) {
        return super.containsKey((Object) str);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (obj instanceof MessageTemplate) {
            return containsValue((MessageTemplate) obj);
        }
        return false;
    }

    public /* bridge */ MessageTemplate get(String str) {
        return (MessageTemplate) super.get((Object) str);
    }

    public /* bridge */ MessageTemplate getOrDefault(String str, MessageTemplate messageTemplate) {
        return (MessageTemplate) super.getOrDefault((Object) str, (String) messageTemplate);
    }

    public /* bridge */ MessageTemplate remove(String str) {
        return (MessageTemplate) super.remove((Object) str);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object get(Object obj) {
        if (obj instanceof String) {
            return get((String) obj);
        }
        return null;
    }

    @Override // java.util.HashMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
        return !(obj instanceof String) ? obj2 : getOrDefault((String) obj, (MessageTemplate) obj2);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object remove(Object obj) {
        if (obj instanceof String) {
            return remove((String) obj);
        }
        return null;
    }

    @Override // java.util.HashMap, java.util.Map
    public final /* bridge */ boolean remove(Object obj, Object obj2) {
        if ((obj instanceof String) && (obj2 instanceof MessageTemplate)) {
            return remove((String) obj, (MessageTemplate) obj2);
        }
        return false;
    }

    public /* bridge */ boolean remove(String str, MessageTemplate messageTemplate) {
        return super.remove((Object) str, (Object) messageTemplate);
    }
}
