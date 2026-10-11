package net.p110sf.saxon.om;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Function;

/* loaded from: classes11.dex */
public interface AttributeMap extends Iterable<AttributeInfo> {
    default AttributeMap apply(Function<AttributeInfo, AttributeInfo> function) {
        ArrayList arrayList = new ArrayList(size());
        Iterator<AttributeInfo> it2 = iterator();
        while (it2.hasNext()) {
            arrayList.add(function.apply(it2.next()));
        }
        return SequenceTool.attributeMapFromList(arrayList);
    }

    default ArrayList<AttributeInfo> asList() {
        ArrayList<AttributeInfo> arrayList = new ArrayList<>(size());
        Iterator<AttributeInfo> it2 = iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        return arrayList;
    }

    default AttributeInfo get(NodeName nodeName) {
        for (AttributeInfo attributeInfo : this) {
            if (attributeInfo.getNodeName().equals(nodeName)) {
                return attributeInfo;
            }
        }
        return null;
    }

    default AttributeInfo getByFingerprint(int i, NamePool namePool) {
        for (AttributeInfo attributeInfo : this) {
            if (attributeInfo.getNodeName().obtainFingerprint(namePool) == i) {
                return attributeInfo;
            }
        }
        return null;
    }

    default String getValue(String str, String str2) {
        AttributeInfo attributeInfo = get(str, str2);
        if (attributeInfo == null) {
            return null;
        }
        return attributeInfo.getValue();
    }

    default AttributeInfo itemAt(int i) {
        return asList().get(i);
    }

    default AttributeMap put(AttributeInfo attributeInfo) {
        ArrayList arrayList = new ArrayList(size() + 1);
        for (AttributeInfo attributeInfo2 : this) {
            if (!attributeInfo2.getNodeName().equals(attributeInfo.getNodeName())) {
                arrayList.add(attributeInfo2);
            }
        }
        arrayList.add(attributeInfo);
        return SequenceTool.attributeMapFromList(arrayList);
    }

    default AttributeMap remove(NodeName nodeName) {
        ArrayList arrayList = new ArrayList(size());
        for (AttributeInfo attributeInfo : this) {
            if (!attributeInfo.getNodeName().equals(nodeName)) {
                arrayList.add(attributeInfo);
            }
        }
        return SequenceTool.attributeMapFromList(arrayList);
    }

    int size();

    default void verify() {
    }

    default AttributeInfo get(String str, String str2) {
        for (AttributeInfo attributeInfo : this) {
            NodeName nodeName = attributeInfo.getNodeName();
            if (nodeName.getLocalPart().equals(str2) && nodeName.hasURI(str)) {
                return attributeInfo;
            }
        }
        return null;
    }

    default String getValue(String str) {
        AttributeInfo attributeInfo = get("", str);
        if (attributeInfo == null) {
            return null;
        }
        return attributeInfo.getValue();
    }
}
