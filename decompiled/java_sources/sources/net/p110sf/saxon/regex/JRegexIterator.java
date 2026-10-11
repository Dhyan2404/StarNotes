package net.p110sf.saxon.regex;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.functions.Count;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.p111z.IntToIntHashMap;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class JRegexIterator implements RegexIterator, LastPositionFinder {

    /* renamed from: e */
    public final String f101147e;

    /* renamed from: f */
    public final Pattern f101148f;

    /* renamed from: g */
    public final Matcher f101149g;

    /* renamed from: h */
    public String f101150h;

    /* renamed from: j */
    public int f101152j = 0;

    /* renamed from: k */
    public IntToIntHashMap f101153k = null;

    /* renamed from: i */
    public String f101151i = null;

    public JRegexIterator(String str, Pattern pattern) {
        this.f101147e = str;
        this.f101148f = pattern;
        this.f101149g = pattern.matcher(str);
    }

    /* renamed from: f */
    public final void m63570f() {
        this.f101153k = new IntToIntHashMap(16);
        String pattern = this.f101148f.pattern();
        int[] iArr = new int[pattern.length()];
        int i = 0;
        iArr[0] = 0;
        int i2 = 0;
        int i3 = 1;
        int i4 = 1;
        while (i < pattern.length()) {
            char charAt = pattern.charAt(i);
            if (charAt == '\'') {
                i++;
            } else if (charAt == '[') {
                i2++;
            } else if (charAt == ']') {
                i2--;
            } else if (charAt == '(' && pattern.charAt(i + 1) != '?' && i2 == 0) {
                this.f101153k.put(i4, iArr[i3 - 1]);
                iArr[i3] = i4;
                i3++;
                i4++;
            } else if (charAt == ')' && i2 == 0) {
                i3--;
            }
            i++;
        }
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        return Count.steppingCount(new JRegexIterator(this.f101147e, this.f101148f));
    }

    @Override // net.p110sf.saxon.regex.RegexIterator
    public int getNumberOfGroups() {
        return this.f101149g.groupCount();
    }

    @Override // net.p110sf.saxon.regex.RegexIterator
    public UnicodeString getRegexGroup(int i) {
        if (!isMatching()) {
            return null;
        }
        if (i > this.f101149g.groupCount() || i < 0) {
            return EmptyUnicodeString.getInstance();
        }
        String group = this.f101149g.group(i);
        return group == null ? EmptyUnicodeString.getInstance() : StringView.m63901of(group).tidy();
    }

    @Override // net.p110sf.saxon.regex.RegexIterator
    public boolean isMatching() {
        return this.f101151i == null && this.f101152j >= 0;
    }

    @Override // net.p110sf.saxon.regex.RegexIterator
    public void processMatchingSubstring(RegexMatchHandler regexMatchHandler) throws XPathException {
        int i;
        int groupCount = this.f101149g.groupCount();
        if (groupCount == 0) {
            regexMatchHandler.characters(StringView.m63901of(this.f101150h));
            return;
        }
        IntHashMap intHashMap = new IntHashMap(groupCount);
        int i2 = 1;
        while (true) {
            i = 0;
            if (i2 > groupCount) {
                break;
            }
            int start = this.f101149g.start(i2) - this.f101149g.start();
            if (start != -1) {
                int end = this.f101149g.end(i2) - this.f101149g.start();
                if (start < end) {
                    List list = (List) intHashMap.get(start);
                    if (list == null) {
                        list = new ArrayList(4);
                        intHashMap.put(start, list);
                    }
                    list.add(Integer.valueOf(i2));
                    List list2 = (List) intHashMap.get(end);
                    if (list2 == null) {
                        list2 = new ArrayList(4);
                        intHashMap.put(end, list2);
                    }
                    list2.add(0, Integer.valueOf(-i2));
                } else {
                    if (this.f101153k == null) {
                        m63570f();
                    }
                    int i3 = this.f101153k.get(i2);
                    List list3 = (List) intHashMap.get(start);
                    if (list3 == null) {
                        ArrayList arrayList = new ArrayList(4);
                        intHashMap.put(start, arrayList);
                        arrayList.add(Integer.valueOf(i2));
                        arrayList.add(Integer.valueOf(-i2));
                    } else {
                        int size = list3.size();
                        while (true) {
                            if (i >= list3.size()) {
                                break;
                            }
                            if (((Integer) list3.get(i)).intValue() == (-i3)) {
                                size = i;
                                break;
                            }
                            i++;
                        }
                        list3.add(size, Integer.valueOf(-i2));
                        list3.add(size, Integer.valueOf(i2));
                    }
                }
            }
            i2++;
        }
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        while (i < this.f101150h.length() + 1) {
            List list4 = (List) intHashMap.get(i);
            if (list4 != null) {
                if (unicodeBuilder.length() > 0) {
                    regexMatchHandler.characters(unicodeBuilder.toUnicodeString());
                    unicodeBuilder.clear();
                }
                Iterator it2 = list4.iterator();
                while (it2.hasNext()) {
                    int intValue = ((Integer) it2.next()).intValue();
                    if (intValue > 0) {
                        regexMatchHandler.onGroupStart(intValue);
                    } else {
                        regexMatchHandler.onGroupEnd(-intValue);
                    }
                }
            }
            if (i < this.f101150h.length()) {
                unicodeBuilder.append(this.f101150h.charAt(i));
            }
            i++;
        }
        if (unicodeBuilder.length() > 0) {
            regexMatchHandler.characters(unicodeBuilder.toUnicodeString());
        }
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public boolean supportsGetLength() {
        return true;
    }

    @Override // net.p110sf.saxon.regex.RegexIterator, net.p110sf.saxon.om.SequenceIterator
    public StringValue next() {
        String str = this.f101151i;
        if (str == null && this.f101152j >= 0) {
            if (this.f101149g.find()) {
                int start = this.f101149g.start();
                int end = this.f101149g.end();
                int i = this.f101152j;
                if (i == start) {
                    this.f101151i = null;
                    this.f101150h = this.f101147e.substring(start, end);
                    this.f101152j = end;
                } else {
                    this.f101150h = this.f101147e.substring(i, start);
                    this.f101151i = this.f101147e.substring(start, end);
                }
            } else if (this.f101152j < this.f101147e.length()) {
                this.f101150h = this.f101147e.substring(this.f101152j);
                this.f101151i = null;
                this.f101152j = -1;
            } else {
                this.f101150h = null;
                this.f101152j = -1;
                return null;
            }
        } else if (this.f101152j >= 0) {
            this.f101150h = str;
            this.f101151i = null;
            this.f101152j = this.f101149g.end();
        } else {
            this.f101150h = null;
            return null;
        }
        return StringValue.makeStringValue(this.f101150h);
    }
}
