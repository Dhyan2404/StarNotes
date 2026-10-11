package net.p110sf.saxon.serialize;

import java.io.IOException;
import java.text.Normalizer;
import java.util.Properties;
import java.util.Stack;
import java.util.function.IntPredicate;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.ma.json.JsonReceiver;
import net.p110sf.saxon.serialize.JSONEmitter;
import net.p110sf.saxon.serialize.charcode.CharacterSet;
import net.p110sf.saxon.serialize.charcode.UTF8CharacterSet;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeWriter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.FloatingPointConverter;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.NumericValue;

/* loaded from: classes11.dex */
public class JSONEmitter {

    /* renamed from: p */
    public static final /* synthetic */ boolean f101545p = false;

    /* renamed from: a */
    public Configuration f101546a;

    /* renamed from: b */
    public UnicodeWriter f101547b;

    /* renamed from: c */
    public boolean f101548c;

    /* renamed from: d */
    public Normalizer.Form f101549d;

    /* renamed from: e */
    public CharacterMap f101550e;

    /* renamed from: f */
    public Properties f101551f;

    /* renamed from: g */
    public CharacterSet f101552g;

    /* renamed from: h */
    public boolean f101553h;

    /* renamed from: j */
    public int f101555j;

    /* renamed from: m */
    public int f101558m;

    /* renamed from: i */
    public int f101554i = 2;

    /* renamed from: k */
    public boolean f101556k = true;

    /* renamed from: l */
    public boolean f101557l = false;

    /* renamed from: n */
    public final Stack<Boolean> f101559n = new Stack<>();

    /* renamed from: o */
    public boolean f101560o = false;

    public JSONEmitter(PipelineConfiguration pipelineConfiguration, UnicodeWriter unicodeWriter, Properties properties) {
        this.f101546a = pipelineConfiguration.getConfiguration();
        setOutputProperties(properties);
        this.f101547b = unicodeWriter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ boolean m63831i(int i) {
        return i < 31 || (i >= 127 && i <= 159) || !this.f101552g.inCharset(i);
    }

    /* renamed from: b */
    public final void m63832b(boolean z) throws XPathException {
        boolean z2 = this.f101556k;
        boolean z3 = !this.f101559n.isEmpty() && this.f101559n.peek().booleanValue();
        boolean z4 = (!this.f101553h || this.f101558m == 0 || z3) ? false : true;
        if (this.f101556k) {
            this.f101556k = false;
        } else if (!this.f101557l) {
            m63833c(',');
            if (z3 && this.f101553h) {
                m63833c(' ');
            }
        }
        if (z2 && this.f101557l) {
            m63833c(' ');
        } else if (z4 && !this.f101557l) {
            m63833c('\n');
            for (int i = 0; i < this.f101554i * this.f101558m; i++) {
                m63833c(' ');
            }
        }
        this.f101557l = false;
    }

    /* renamed from: c */
    public final void m63833c(char c) throws XPathException {
        try {
            this.f101547b.writeCodePoint(c);
        } catch (IOException e) {
            throw new XPathException(e);
        }
    }

    public void close() throws XPathException {
        if (this.f101556k) {
            m63834d("null");
        }
        UnicodeWriter unicodeWriter = this.f101547b;
        if (unicodeWriter != null) {
            try {
                unicodeWriter.close();
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: d */
    public final void m63834d(String str) throws XPathException {
        try {
            this.f101547b.write(str);
        } catch (IOException e) {
            throw new XPathException(e);
        }
    }

    /* renamed from: e */
    public final void m63835e(char c, int i) throws XPathException {
        boolean booleanValue = this.f101559n.pop().booleanValue();
        if (this.f101553h) {
            if (booleanValue) {
                m63833c(' ');
            } else {
                m63838h(i - 1);
            }
        }
        m63833c(c);
        this.f101556k = false;
    }

    public void endArray() throws XPathException {
        int i = this.f101558m;
        this.f101558m = i - 1;
        m63835e(']', i);
    }

    public void endMap() throws XPathException {
        int i = this.f101558m;
        this.f101558m = i - 1;
        m63835e('}', i);
    }

    /* renamed from: f */
    public final void m63836f(char c, boolean z) throws XPathException {
        m63832b(true);
        this.f101559n.push(Boolean.valueOf(z));
        m63833c(c);
        this.f101556k = true;
        if (this.f101553h && z) {
            m63833c(' ');
        }
    }

    /* renamed from: g */
    public final String m63837g(String str) throws XPathException {
        if (this.f101550e == null) {
            return m63839j(str);
        }
        StringBuilder sb = new StringBuilder(str.length());
        String obj = this.f101550e.map(StringView.m63901of(str).tidy(), true).toString();
        int i = 0;
        while (true) {
            int indexOf = obj.indexOf(0, i);
            if (indexOf < 0) {
                sb.append(m63839j(obj.substring(i)));
                return sb.toString();
            }
            sb.append(m63839j(obj.substring(i, indexOf)));
            int i2 = indexOf + 1;
            int indexOf2 = obj.indexOf(0, i2);
            sb.append((CharSequence) obj, i2, indexOf2);
            i = indexOf2 + 1;
        }
    }

    public Properties getOutputProperties() {
        return this.f101551f;
    }

    /* renamed from: h */
    public final void m63838h(int i) throws XPathException {
        m63833c('\n');
        for (int i2 = 0; i2 < this.f101554i * i; i2++) {
            m63833c(' ');
        }
    }

    /* renamed from: j */
    public final String m63839j(String str) throws XPathException {
        if (this.f101548c) {
            str = Normalizer.normalize(str, this.f101549d);
        }
        return JsonReceiver.escape(str, false, new IntPredicate() { // from class: com.sunia.HTREnginev2.cri
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m63831i;
                m63831i = JSONEmitter.this.m63831i(i);
                return m63831i;
            }
        });
    }

    public void setCharacterMap(CharacterMap characterMap) {
        this.f101550e = characterMap;
    }

    public void setNormalizationForm(Normalizer.Form form) {
        this.f101548c = true;
        this.f101549d = form;
    }

    public void setOutputProperties(Properties properties) {
        this.f101551f = properties;
        if ("yes".equals(properties.getProperty("indent"))) {
            this.f101553h = true;
        }
        if ("yes".equals(properties.getProperty(SaxonOutputKeys.UNFAILING))) {
            this.f101560o = true;
        }
        String property = properties.getProperty(SaxonOutputKeys.LINE_LENGTH);
        if (property != null) {
            try {
                this.f101555j = Integer.parseInt(property);
            } catch (NumberFormatException unused) {
            }
        }
        String property2 = properties.getProperty(SaxonOutputKeys.INDENT_SPACES);
        if (property2 != null) {
            try {
                this.f101554i = Integer.parseInt(property2);
            } catch (NumberFormatException unused2) {
            }
        }
        try {
            this.f101552g = this.f101546a.getCharacterSetFactory().getCharacterSet(properties.getProperty("encoding"));
        } catch (XPathException unused3) {
            this.f101552g = UTF8CharacterSet.getInstance();
        }
    }

    public void startArray(boolean z) throws XPathException {
        m63836f('[', z);
        this.f101558m++;
    }

    public void startMap(boolean z) throws XPathException {
        m63836f('{', z);
        this.f101558m++;
    }

    public void writeAtomicValue(AtomicValue atomicValue) throws XPathException {
        m63832b(false);
        if (atomicValue == null) {
            m63834d("null");
            return;
        }
        if (!(atomicValue instanceof NumericValue)) {
            if (atomicValue instanceof BooleanValue) {
                m63834d(atomicValue.getStringValue());
                return;
            }
            m63833c('\"');
            m63834d(m63837g(atomicValue.getStringValue()));
            m63833c('\"');
            return;
        }
        NumericValue numericValue = (NumericValue) atomicValue;
        if (numericValue.isNaN()) {
            if (!this.f101560o) {
                throw new XPathException("JSON has no way of representing NaN", "SERE0020");
            }
            m63834d("NaN");
            return;
        }
        if (Double.isInfinite(numericValue.getDoubleValue())) {
            if (!this.f101560o) {
                throw new XPathException("JSON has no way of representing Infinity", "SERE0020");
            }
            m63834d(numericValue.getDoubleValue() < 0.0d ? FloatingPointConverter.f102869a : FloatingPointConverter.f102870b);
            return;
        }
        if (atomicValue instanceof IntegerValue) {
            m63834d(numericValue.longValue() + "");
            return;
        }
        if (!numericValue.isWholeNumber() || numericValue.isNegativeZero() || numericValue.abs().compareTo(1000000000000000000L) >= 0) {
            m63834d(numericValue.getStringValue());
            return;
        }
        m63834d(numericValue.longValue() + "");
    }

    public void writeKey(String str) throws XPathException {
        boolean booleanValue = this.f101559n.peek().booleanValue();
        m63832b(false);
        m63833c('\"');
        m63834d(m63837g(str));
        m63834d("\":");
        if (this.f101553h && !booleanValue) {
            m63834d(" ");
        }
        this.f101557l = true;
    }
}
