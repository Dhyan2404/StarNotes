package com.sunia.HTREnginev2;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

/* renamed from: com.sunia.HTREnginev2.e0 */
/* loaded from: classes10.dex */
public class C13648e0 {

    /* renamed from: a */
    public static final C14023l1 f68411a = C14023l1.m55362a(-1, "mrow", new C14023l1[0]);

    /* renamed from: a */
    public static List<String> m53881a(String str) {
        ArrayList arrayList = new ArrayList();
        int i = -1;
        int i2 = 0;
        while (true) {
            if (i < 0 && i2 >= str.length()) {
                return m53884c(arrayList);
            }
            if (i < 0) {
                int i3 = i2 + 1;
                char charAt = str.charAt(i2);
                i2 = i3;
                i = charAt;
            }
            if (!Character.isWhitespace(i)) {
                if (i == 92) {
                    int i4 = i2 + 1;
                    int charAt2 = str.charAt(i2);
                    if (Character.isLetter(charAt2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.appendCodePoint(i);
                        i = charAt2;
                        i2 = i4;
                        while (Character.isLetter(i)) {
                            sb.appendCodePoint(i);
                            if (i2 < str.length()) {
                                int i5 = i2 + 1;
                                char charAt3 = str.charAt(i2);
                                i2 = i5;
                                i = charAt3;
                            } else {
                                i = -1;
                            }
                        }
                        arrayList.add(sb.toString());
                    } else {
                        arrayList.add(new String(new int[]{i, charAt2}, 0, 2));
                        i = -1;
                        i2 = i4;
                    }
                } else {
                    arrayList.add(str.substring(i2 - 1, i2));
                }
            }
            i = -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01de A[SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.sunia.HTREnginev2.C14023l1 m53883b(java.util.List<java.lang.String> r10) {
        /*
            Method dump skipped, instructions count: 580
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.C13648e0.m53883b(java.util.List):com.sunia.HTREnginev2.l1");
    }

    /* renamed from: c */
    public static List<String> m53884c(List<String> list) {
        int length;
        ArrayList arrayList = new ArrayList(list.size());
        int i = 0;
        while (i < list.size()) {
            String str = list.get(i);
            if (str.length() == 1) {
                char charAt = str.charAt(0);
                if (Character.isDigit(charAt) || '.' == charAt) {
                    for (int i2 = i + 1; i2 < list.size(); i2++) {
                        String str2 = list.get(i2);
                        if (str2.length() != 1 || (!Character.isDigit(str2.charAt(0)) && '.' != str2.charAt(0))) {
                            break;
                        }
                        str = str + str2;
                    }
                    arrayList.add(str);
                    length = str.length();
                } else if (Character.isLetter(charAt)) {
                    String str3 = null;
                    int i3 = i;
                    String str4 = str;
                    while (true) {
                        String ceilingKey = C14481u.f85928C.ceilingKey(str4);
                        if (str4.equals(ceilingKey)) {
                            str3 = str4;
                        } else {
                            if (ceilingKey == null) {
                                break;
                            }
                            if (!ceilingKey.startsWith(str4)) {
                                break;
                            }
                        }
                        i3++;
                        if (i3 >= list.size()) {
                            break;
                        }
                        String str5 = list.get(i3);
                        if (str5.length() != 1 || !Character.isLetter(str5.charAt(0))) {
                            break;
                        }
                        str4 = str4 + str5;
                    }
                    if (str3 != null) {
                        arrayList.add(str3);
                        length = str3.length();
                    } else {
                        arrayList.add(str);
                    }
                } else {
                    arrayList.add(str);
                }
                i += length - 1;
            } else {
                arrayList.add(str);
            }
            i++;
        }
        return arrayList;
    }

    /* renamed from: a */
    public static C14023l1 m53880a(C14023l1 c14023l1) {
        return "mrow".equals(c14023l1.m55366c()) ? c14023l1 : C14023l1.m55362a(-1, "mrow", c14023l1);
    }

    /* renamed from: b */
    public static C14023l1 m53882b(LinkedList<C14023l1> linkedList) {
        LinkedList linkedList2;
        ListIterator<C14023l1> listIterator = linkedList.listIterator(linkedList.size());
        LinkedList linkedList3 = null;
        loop0: while (true) {
            linkedList2 = null;
            while (true) {
                if (!listIterator.hasPrevious()) {
                    break loop0;
                }
                C14023l1 previous = listIterator.previous();
                if ("msub".equals(previous.m55366c()) && previous.m55365b()[0] == f68411a) {
                    if (linkedList3 == null) {
                        LinkedList linkedList4 = new LinkedList();
                        linkedList4.add(previous.m55365b()[1]);
                        linkedList3 = linkedList4;
                    } else {
                        linkedList3.add(0, previous.m55365b()[1]);
                    }
                    listIterator.remove();
                } else if ("msup".equals(previous.m55366c()) && previous.m55365b()[0] == f68411a) {
                    if (linkedList2 == null) {
                        LinkedList linkedList5 = new LinkedList();
                        linkedList5.add(previous.m55365b()[1]);
                        linkedList2 = linkedList5;
                    } else {
                        linkedList2.add(0, previous.m55365b()[1]);
                    }
                    listIterator.remove();
                } else if (linkedList3 != null) {
                    if (linkedList2 != null) {
                        listIterator.set(C14023l1.m55362a(-1, "msubsup", m53880a(previous), m53882b((LinkedList<C14023l1>) linkedList3), m53882b((LinkedList<C14023l1>) linkedList2)));
                        linkedList2 = null;
                    } else {
                        listIterator.set(C14023l1.m55362a(-1, "msub", m53880a(previous), m53882b((LinkedList<C14023l1>) linkedList3)));
                    }
                    linkedList3 = null;
                } else {
                    if (linkedList2 != null) {
                        break;
                    }
                    if ("mrow".equals(previous.m55366c())) {
                        listIterator.remove();
                        for (C14023l1 c14023l1 : previous.m55365b()) {
                            listIterator.add(c14023l1);
                        }
                    }
                }
            }
            listIterator.next();
            listIterator.add(C14023l1.m55362a(-1, "msup", f68411a, m53882b((LinkedList<C14023l1>) linkedList2)));
            listIterator.previous();
        }
        if (linkedList3 != null) {
            if (linkedList2 != null) {
                linkedList.addFirst(C14023l1.m55362a(-1, "msubsup", f68411a, m53882b((LinkedList<C14023l1>) linkedList3), m53882b((LinkedList<C14023l1>) linkedList2)));
            } else {
                linkedList.addFirst(C14023l1.m55362a(-1, "msub", f68411a, m53882b((LinkedList<C14023l1>) linkedList3)));
            }
        } else if (linkedList2 != null) {
            linkedList.addFirst(C14023l1.m55362a(-1, "msup", f68411a, m53882b((LinkedList<C14023l1>) linkedList2)));
        }
        return C14023l1.m55362a(-1, "mrow", (C14023l1[]) linkedList.toArray(new C14023l1[0]));
    }
}
