package com.sunia.HTREnginev2;

import androidx.fragment.app.Fragment;
import java.util.List;

/* loaded from: classes11.dex */
public final class nug {
    /* renamed from: a */
    public static boolean m55798a(String str, String str2, boolean z) {
        String[] split = str.split("/");
        String[] split2 = str2.split("/");
        if (split.length != 3 || split2.length != 3) {
            return false;
        }
        if (z && !split[0].equals(split2[0])) {
            return false;
        }
        for (int i = 1; i < split.length; i++) {
            if (!split[i].equals(split2[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static String m55799b(Fragment fragment) {
        String m55800c = m55800c(fragment);
        int id = fragment.getId();
        String tag = fragment.getTag();
        if (tag == null) {
            tag = "null";
        }
        return m55800c + '/' + id + '/' + tag;
    }

    /* renamed from: c */
    public static String m55800c(Fragment fragment) {
        String str = fragment.getParentFragment() != null ? m55800c(fragment.getParentFragment()) + "-" : "";
        List<Fragment> fragments = fragment.getFragmentManager().getFragments();
        if (fragments == null) {
            return str;
        }
        for (int i = 0; i < fragments.size(); i++) {
            if (fragment.equals(fragments.get(i))) {
                return str + i;
            }
        }
        return str;
    }
}
