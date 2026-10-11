package com.github.promeg.pinyinhelper;

import com.sunia.HTREnginev2.d4l;
import com.sunia.HTREnginev2.e4l;
import com.sunia.HTREnginev2.f4l;
import com.sunia.HTREnginev2.g4l;
import com.sunia.HTREnginev2.kzn;
import com.sunia.HTREnginev2.sqf;
import com.sunia.HTREnginev2.tdm;
import com.sunia.HTREnginev2.xtg;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.ahocorasick.trie.Trie;

/* loaded from: classes4.dex */
public final class Pinyin {

    /* renamed from: a */
    public static Trie f21774a;

    /* renamed from: b */
    public static tdm f21775b;

    /* renamed from: c */
    public static List<PinyinDict> f21776c;

    /* loaded from: classes4.dex */
    public static final class Config {

        /* renamed from: a */
        public tdm f21777a;

        /* renamed from: b */
        public List<PinyinDict> f21778b;

        /* renamed from: a */
        public List<PinyinDict> m17391a() {
            return this.f21778b;
        }

        /* renamed from: b */
        public tdm m17392b() {
            return this.f21777a;
        }

        /* renamed from: c */
        public boolean m17393c() {
            return (m17391a() == null || m17392b() == null) ? false : true;
        }

        public Config with(PinyinDict pinyinDict) {
            if (pinyinDict != null) {
                List<PinyinDict> list = this.f21778b;
                if (list == null) {
                    ArrayList arrayList = new ArrayList();
                    this.f21778b = arrayList;
                    arrayList.add(pinyinDict);
                } else if (!list.contains(pinyinDict)) {
                    this.f21778b.add(pinyinDict);
                }
            }
            return this;
        }

        public Config(List<PinyinDict> list) {
            if (list != null) {
                this.f21778b = new ArrayList(list);
            }
            this.f21777a = new xtg();
        }
    }

    /* renamed from: a */
    public static short m17389a(byte[] bArr, byte[] bArr2, int i) {
        int i2 = i % 8;
        short s = (short) (bArr2[i] & 255);
        return (bArr[i / 8] & g4l.f70687g[i2]) != 0 ? (short) (s | 256) : s;
    }

    public static void add(PinyinDict pinyinDict) {
        if (pinyinDict == null || pinyinDict.words() == null || pinyinDict.words().size() == 0) {
            return;
        }
        init(new Config(f21776c).with(pinyinDict));
    }

    /* renamed from: b */
    public static int m17390b(char c) {
        int i = c - 19968;
        return (i < 0 || i >= 7000) ? (7000 > i || i >= 14000) ? m17389a(f4l.f69649a, f4l.f69650b, i - 14000) : m17389a(e4l.f68587a, e4l.f68588b, i - 7000) : m17389a(d4l.f67486a, d4l.f67487b, i);
    }

    public static void init(Config config) {
        if (config == null) {
            f21776c = null;
            f21774a = null;
            f21775b = null;
        } else if (config.m17393c()) {
            f21776c = Collections.unmodifiableList(config.m17391a());
            f21774a = kzn.m55353a(config.m17391a());
            f21775b = config.m17392b();
        }
    }

    public static boolean isChinese(char c) {
        return (19968 <= c && c <= 40869 && m17390b(c) > 0) || 12295 == c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Config newConfig() {
        return new Config(null);
    }

    public static String toPinyin(String str, String str2) {
        return sqf.m57229b(str, f21774a, f21776c, str2, f21775b);
    }

    public static String toPinyin(char c) {
        if (isChinese(c)) {
            return c == 12295 ? g4l.f70683c : g4l.f70689i[m17390b(c)];
        }
        return String.valueOf(c);
    }
}
