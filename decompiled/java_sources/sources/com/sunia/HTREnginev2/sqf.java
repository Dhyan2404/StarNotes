package com.sunia.HTREnginev2;

import com.github.promeg.pinyinhelper.Pinyin;
import com.github.promeg.pinyinhelper.PinyinDict;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.ahocorasick.trie.Emit;
import org.ahocorasick.trie.Trie;

/* loaded from: classes4.dex */
public final class sqf {

    /* renamed from: a */
    public static final C14413a f84460a = new C14413a();

    /* renamed from: com.sunia.HTREnginev2.sqf$a */
    /* loaded from: classes4.dex */
    public static final class C14413a implements Comparator<Emit> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Emit emit, Emit emit2) {
            if (emit.getStart() == emit2.getStart()) {
                if (emit.size() < emit2.size()) {
                    return 1;
                }
                return emit.size() == emit2.size() ? 0 : -1;
            }
            if (emit.getStart() < emit2.getStart()) {
                return -1;
            }
            return emit.getStart() == emit2.getStart() ? 0 : 1;
        }
    }

    /* renamed from: a */
    public static String[] m57228a(String str, List<PinyinDict> list) {
        if (list != null) {
            for (PinyinDict pinyinDict : list) {
                if (pinyinDict != null && pinyinDict.words() != null && pinyinDict.words().contains(str)) {
                    return pinyinDict.toPinyin(str);
                }
            }
        }
        throw new IllegalArgumentException("No pinyin dict contains word: " + str);
    }

    /* renamed from: b */
    public static String m57229b(String str, Trie trie, List<PinyinDict> list, String str2, tdm tdmVar) {
        if (str == null || str.length() == 0) {
            return str;
        }
        if (trie == null || tdmVar == null) {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < str.length(); i++) {
                stringBuffer.append(Pinyin.toPinyin(str.charAt(i)));
                if (i != str.length() - 1) {
                    stringBuffer.append(str2);
                }
            }
            return stringBuffer.toString();
        }
        List<Emit> mo57365a = tdmVar.mo57365a(trie.parseText(str));
        Collections.sort(mo57365a, f84460a);
        StringBuffer stringBuffer2 = new StringBuffer();
        int i2 = 0;
        int i3 = 0;
        while (i2 < str.length()) {
            if (i3 >= mo57365a.size() || i2 != mo57365a.get(i3).getStart()) {
                stringBuffer2.append(Pinyin.toPinyin(str.charAt(i2)));
                i2++;
            } else {
                String[] m57228a = m57228a(mo57365a.get(i3).getKeyword(), list);
                for (int i4 = 0; i4 < m57228a.length; i4++) {
                    stringBuffer2.append(m57228a[i4].toUpperCase());
                    if (i4 != m57228a.length - 1) {
                        stringBuffer2.append(str2);
                    }
                }
                i2 += mo57365a.get(i3).size();
                i3++;
            }
            if (i2 != str.length()) {
                stringBuffer2.append(str2);
            }
        }
        return stringBuffer2.toString();
    }
}
