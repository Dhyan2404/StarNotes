package com.twelvemonkeys.util.regex;

import com.twelvemonkeys.util.AbstractTokenIterator;
import java.util.NoSuchElementException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes10.dex */
public class RegExTokenIterator extends AbstractTokenIterator {

    /* renamed from: e */
    public final Matcher f94395e;

    /* renamed from: f */
    public boolean f94396f;

    public RegExTokenIterator(String str) {
        this(str, "\\S+");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (!this.f94396f) {
            boolean find = this.f94395e.find();
            this.f94396f = find;
            if (!find) {
                return false;
            }
        }
        return true;
    }

    @Override // com.twelvemonkeys.util.TokenIterator
    public void reset() {
        this.f94395e.reset();
    }

    public RegExTokenIterator(String str, String str2) {
        this.f94396f = false;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (str2 != null) {
            this.f94395e = Pattern.compile(str2).matcher(str);
            return;
        }
        throw new IllegalArgumentException("pattern == null");
    }

    @Override // java.util.Iterator
    public String next() {
        if (hasNext()) {
            this.f94396f = false;
            return this.f94395e.group();
        }
        throw new NoSuchElementException();
    }
}
