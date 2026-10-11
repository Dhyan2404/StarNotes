package com.onyx.engine.sdk;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes8.dex */
public class Utils {
    public static List<TableCell> copyTableCellList(List<TableCell> list, boolean z) {
        if (list == null || list.isEmpty()) {
            return Collections.emptyList();
        }
        if (!z) {
            return new ArrayList(list);
        }
        ArrayList arrayList = new ArrayList();
        Iterator<TableCell> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().copy(true));
        }
        return arrayList;
    }

    public static List<TableRow> copyTableRowList(List<TableRow> list, boolean z) {
        if (list == null || list.isEmpty()) {
            return Collections.emptyList();
        }
        if (!z) {
            return new ArrayList(list);
        }
        ArrayList arrayList = new ArrayList();
        Iterator<TableRow> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().copy(true));
        }
        return arrayList;
    }

    public static List<Integer> copyXpath(List<Integer> list) {
        return list == null ? Collections.emptyList() : new ArrayList(list);
    }

    public static boolean equals(List<Integer> list, List<Integer> list2) {
        return Objects.equals(list, list2);
    }

    public static String getTableCellXpath(List<TableCell> list) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (TableCell tableCell : list) {
            if (sb.length() == 0) {
                sb.append(",");
            }
            sb.append(tableCell.getPin().getXpathString());
        }
        return sb.toString();
    }

    public static String getTableRowXpath(List<TableRow> list) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (TableRow tableRow : list) {
            if (sb.length() == 0) {
                sb.append(",");
            }
            sb.append(tableRow.getPin().getXpathString());
        }
        return sb.toString();
    }

    public static <T> void safelyAdd(Collection<T> collection, T t) {
        if (collection == null || t == null) {
            return;
        }
        collection.add(t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void safelyAddAll(Collection<T> collection, Collection<T> collection2) {
        if (collection == null || collection2 == 0) {
            return;
        }
        collection.addAll(collection2);
    }

    public static boolean startWith(List<Integer> list, List<Integer> list2) {
        if (list == null || list2 == null || list.size() < list2.size()) {
            return false;
        }
        for (int i = 0; i < list2.size(); i++) {
            if (!Objects.equals(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    public static List<Integer> toIntXpath(String str) {
        ArrayList arrayList = new ArrayList();
        if (str != null && !str.isEmpty()) {
            for (String str2 : str.split("/")) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str2)));
            }
        }
        return arrayList;
    }

    public static String toXpathString(List<Integer> list) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Integer num : list) {
            if (sb.length() > 0) {
                sb.append('/');
            }
            sb.append(num);
        }
        return sb.toString();
    }
}
