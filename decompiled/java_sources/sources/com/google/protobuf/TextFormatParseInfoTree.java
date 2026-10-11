package com.google.protobuf;

import com.google.protobuf.Descriptors;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes6.dex */
public class TextFormatParseInfoTree {

    /* renamed from: a */
    public Map<Descriptors.FieldDescriptor, List<TextFormatParseLocation>> f37879a;

    /* renamed from: b */
    public Map<Descriptors.FieldDescriptor, List<TextFormatParseInfoTree>> f37880b;

    /* loaded from: classes6.dex */
    public static class Builder {

        /* renamed from: a */
        public Map<Descriptors.FieldDescriptor, List<TextFormatParseLocation>> f37881a;

        /* renamed from: b */
        public Map<Descriptors.FieldDescriptor, List<Builder>> f37882b;

        public TextFormatParseInfoTree build() {
            return new TextFormatParseInfoTree(this.f37881a, this.f37882b);
        }

        public Builder getBuilderForSubMessageField(final Descriptors.FieldDescriptor fieldDescriptor) {
            List<Builder> list = this.f37882b.get(fieldDescriptor);
            if (list == null) {
                list = new ArrayList<>();
                this.f37882b.put(fieldDescriptor, list);
            }
            Builder builder = new Builder();
            list.add(builder);
            return builder;
        }

        public Builder setLocation(final Descriptors.FieldDescriptor fieldDescriptor, TextFormatParseLocation location) {
            List<TextFormatParseLocation> list = this.f37881a.get(fieldDescriptor);
            if (list == null) {
                list = new ArrayList<>();
                this.f37881a.put(fieldDescriptor, list);
            }
            list.add(location);
            return this;
        }

        public Builder() {
            this.f37881a = new HashMap();
            this.f37882b = new HashMap();
        }
    }

    /* renamed from: a */
    public static <T> T m29582a(List<T> list, int index, Descriptors.FieldDescriptor fieldDescriptor) {
        if (index < list.size() && index >= 0) {
            return list.get(index);
        }
        Object[] objArr = new Object[2];
        objArr[0] = fieldDescriptor == null ? "<null>" : fieldDescriptor.getName();
        objArr[1] = Integer.valueOf(index);
        throw new IllegalArgumentException(String.format("Illegal index field: %s, index %d", objArr));
    }

    public static Builder builder() {
        return new Builder();
    }

    public TextFormatParseLocation getLocation(final Descriptors.FieldDescriptor fieldDescriptor, int index) {
        return (TextFormatParseLocation) m29582a(getLocations(fieldDescriptor), index, fieldDescriptor);
    }

    public List<TextFormatParseLocation> getLocations(final Descriptors.FieldDescriptor fieldDescriptor) {
        List<TextFormatParseLocation> list = this.f37879a.get(fieldDescriptor);
        return list == null ? Collections.emptyList() : list;
    }

    public TextFormatParseInfoTree getNestedTree(final Descriptors.FieldDescriptor fieldDescriptor, int index) {
        return (TextFormatParseInfoTree) m29582a(getNestedTrees(fieldDescriptor), index, fieldDescriptor);
    }

    public List<TextFormatParseInfoTree> getNestedTrees(final Descriptors.FieldDescriptor fieldDescriptor) {
        List<TextFormatParseInfoTree> list = this.f37880b.get(fieldDescriptor);
        return list == null ? Collections.emptyList() : list;
    }

    public TextFormatParseInfoTree(Map<Descriptors.FieldDescriptor, List<TextFormatParseLocation>> locationsFromField, Map<Descriptors.FieldDescriptor, List<Builder>> subtreeBuildersFromField) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Descriptors.FieldDescriptor, List<TextFormatParseLocation>> entry : locationsFromField.entrySet()) {
            hashMap.put(entry.getKey(), Collections.unmodifiableList(entry.getValue()));
        }
        this.f37879a = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        for (Map.Entry<Descriptors.FieldDescriptor, List<Builder>> entry2 : subtreeBuildersFromField.entrySet()) {
            ArrayList arrayList = new ArrayList();
            Iterator<Builder> it2 = entry2.getValue().iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().build());
            }
            hashMap2.put(entry2.getKey(), Collections.unmodifiableList(arrayList));
        }
        this.f37880b = Collections.unmodifiableMap(hashMap2);
    }
}
