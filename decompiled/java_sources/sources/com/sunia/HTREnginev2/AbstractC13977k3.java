package com.sunia.HTREnginev2;

import java.io.File;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* renamed from: com.sunia.HTREnginev2.k3 */
/* loaded from: classes11.dex */
public abstract class AbstractC13977k3 implements Comparator<File> {
    public File[] sort(File... fileArr) {
        if (fileArr != null) {
            Arrays.sort(fileArr, this);
        }
        return fileArr;
    }

    public String toString() {
        return getClass().getSimpleName();
    }

    public List<File> sort(List<File> list) {
        if (list != null) {
            list.sort(this);
        }
        return list;
    }
}
