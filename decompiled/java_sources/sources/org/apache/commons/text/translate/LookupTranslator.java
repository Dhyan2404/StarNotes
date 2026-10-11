package org.apache.commons.text.translate;

import java.io.IOException;
import java.io.Writer;
import java.security.InvalidParameterException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* loaded from: classes12.dex */
public class LookupTranslator extends CharSequenceTranslator {

    /* renamed from: b */
    public final Map<String, String> f110074b;

    /* renamed from: c */
    public final HashSet<Character> f110075c;

    /* renamed from: d */
    public final int f110076d;

    /* renamed from: e */
    public final int f110077e;

    public LookupTranslator(Map<CharSequence, CharSequence> map) {
        if (map == null) {
            throw new InvalidParameterException("lookupMap cannot be null");
        }
        this.f110074b = new HashMap();
        this.f110075c = new HashSet<>();
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        for (Map.Entry<CharSequence, CharSequence> entry : map.entrySet()) {
            this.f110074b.put(entry.getKey().toString(), entry.getValue().toString());
            this.f110075c.add(Character.valueOf(entry.getKey().charAt(0)));
            int length = entry.getKey().length();
            i = length < i ? length : i;
            if (length > i2) {
                i2 = length;
            }
        }
        this.f110076d = i;
        this.f110077e = i2;
    }

    @Override // org.apache.commons.text.translate.CharSequenceTranslator
    public int translate(CharSequence charSequence, int i, Writer writer) throws IOException {
        if (!this.f110075c.contains(Character.valueOf(charSequence.charAt(i)))) {
            return 0;
        }
        int i2 = this.f110077e;
        if (i + i2 > charSequence.length()) {
            i2 = charSequence.length() - i;
        }
        while (i2 >= this.f110076d) {
            String str = this.f110074b.get(charSequence.subSequence(i, i + i2).toString());
            if (str != null) {
                writer.write(str);
                return i2;
            }
            i2--;
        }
        return 0;
    }
}
