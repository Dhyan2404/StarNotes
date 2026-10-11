package org.apache.poi.hsmf.dev;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import org.apache.poi.hsmf.datatypes.MAPIProperty;
import org.apache.poi.hsmf.dev.TypesLister;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public class TypesLister {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$listById$1(MAPIProperty mAPIProperty, MAPIProperty mAPIProperty2) {
        return Integer.compare(mAPIProperty.f111389id, mAPIProperty2.f111389id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$listByName$0(MAPIProperty mAPIProperty, MAPIProperty mAPIProperty2) {
        return mAPIProperty.name.compareTo(mAPIProperty2.name);
    }

    private void list(ArrayList<MAPIProperty> arrayList, PrintStream printStream) {
        Iterator<MAPIProperty> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            MAPIProperty next = it2.next();
            StringBuilder sb = new StringBuilder(Integer.toHexString(next.f111389id));
            int length = 4 - sb.length();
            if (length > 0) {
                sb.insert(0, StringUtil.repeat('0', length));
            }
            int id = next.usualType.getId();
            String num = Integer.toString(id);
            if (id > 0) {
                num = num + " / 0x" + Integer.toHexString(id);
            }
            printStream.println("0x" + ((Object) sb) + " - " + next.name);
            printStream.println("   " + next.f111389id + " - " + next.usualType.getName() + " (" + num + ") - " + next.mapiProperty);
        }
    }

    public static void main(String[] strArr) {
        TypesLister typesLister = new TypesLister();
        typesLister.listByName(System.out);
        System.out.println();
        typesLister.listById(System.out);
    }

    public void listById(PrintStream printStream) {
        ArrayList<MAPIProperty> arrayList = new ArrayList<>(MAPIProperty.getAll());
        arrayList.sort(new Comparator() { // from class: com.sunia.HTREnginev2.ipn
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$listById$1;
                lambda$listById$1 = TypesLister.lambda$listById$1((MAPIProperty) obj, (MAPIProperty) obj2);
                return lambda$listById$1;
            }
        });
        list(arrayList, printStream);
    }

    public void listByName(PrintStream printStream) {
        ArrayList<MAPIProperty> arrayList = new ArrayList<>(MAPIProperty.getAll());
        arrayList.sort(new Comparator() { // from class: com.sunia.HTREnginev2.hpn
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$listByName$0;
                lambda$listByName$0 = TypesLister.lambda$listByName$0((MAPIProperty) obj, (MAPIProperty) obj2);
                return lambda$listByName$0;
            }
        });
        list(arrayList, printStream);
    }
}
