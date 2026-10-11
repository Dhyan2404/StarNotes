package com.sun.org.apache.xalan.internal.xsltc.dom;

import androidx.core.net.MailTo;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xalan.internal.xsltc.DOM;
import com.sun.org.apache.xalan.internal.xsltc.Translet;
import com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
import java.util.Vector;

/* loaded from: classes10.dex */
public abstract class NodeCounter {
    public static final int END = -1;
    public final DOM _document;
    protected String _format;
    protected String _groupSep;
    protected int _groupSize;
    public final DTMAxisIterator _iterator;
    protected String _lang;
    protected String _letterValue;
    public final Translet _translet;
    private static final String[] Thousands = {"", "m", "mm", "mmm"};
    private static final String[] Hundreds = {"", "c", MailTo.f5527e, "ccc", "cd", "d", "dc", "dcc", "dccc", "cm"};
    private static final String[] Tens = {"", "x", "xx", "xxx", "xl", "l", "lx", "lxx", "lxxx", "xc"};
    private static final String[] Ones = {"", "i", "ii", "iii", "iv", "v", "vi", "vii", "viii", "ix"};
    protected int _node = -1;
    protected int _nodeType = -1;
    protected double _value = -2.147483648E9d;
    private boolean _separFirst = true;
    private boolean _separLast = false;
    private Vector _separToks = new Vector();
    private Vector _formatToks = new Vector();
    private int _nSepars = 0;
    private int _nFormats = 0;
    private StringBuffer _tempBuffer = new StringBuffer();

    public NodeCounter(Translet translet, DOM dom, DTMAxisIterator dTMAxisIterator) {
        this._translet = translet;
        this._document = dom;
        this._iterator = dTMAxisIterator;
    }

    private String alphaValue(int i, int i2, int i3) {
        if (i <= 0) {
            return "" + i;
        }
        int i4 = (i3 - i2) + 1;
        int i5 = i - 1;
        char c = (char) ((i5 % i4) + i2);
        if (i > i4) {
            return alphaValue(i5 / i4, i2, i3) + c;
        }
        return "" + c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a4, code lost:
    
        if (r1 <= 969) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void formatValue(int r7, java.lang.String r8, java.lang.StringBuffer r9) {
        /*
            r6 = this;
            r0 = 0
            char r1 = r8.charAt(r0)
            boolean r2 = java.lang.Character.isDigit(r1)
            if (r2 == 0) goto L70
            int r2 = java.lang.Character.getNumericValue(r1)
            int r1 = r1 - r2
            char r1 = (char) r1
            int r2 = r6._groupSize
            if (r2 <= 0) goto L1b
            java.lang.StringBuffer r2 = new java.lang.StringBuffer
            r2.<init>()
            goto L1c
        L1b:
            r2 = r9
        L1c:
            java.lang.String r3 = ""
        L1e:
            if (r7 <= 0) goto L36
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            int r5 = r7 % 10
            int r5 = r5 + r1
            char r5 = (char) r5
            r4.append(r5)
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            int r7 = r7 / 10
            goto L1e
        L36:
            r7 = r0
        L37:
            int r4 = r8.length()
            int r5 = r3.length()
            int r4 = r4 - r5
            if (r7 >= r4) goto L48
            r2.append(r1)
            int r7 = r7 + 1
            goto L37
        L48:
            r2.append(r3)
            int r7 = r6._groupSize
            if (r7 <= 0) goto Lba
        L4f:
            int r7 = r2.length()
            if (r0 >= r7) goto Lba
            if (r0 == 0) goto L66
            int r7 = r2.length()
            int r7 = r7 - r0
            int r8 = r6._groupSize
            int r7 = r7 % r8
            if (r7 != 0) goto L66
            java.lang.String r7 = r6._groupSep
            r9.append(r7)
        L66:
            char r7 = r2.charAt(r0)
            r9.append(r7)
            int r0 = r0 + 1
            goto L4f
        L70:
            r8 = 105(0x69, float:1.47E-43)
            java.lang.String r0 = "alphabetic"
            if (r1 != r8) goto L86
            java.lang.String r8 = r6._letterValue
            boolean r8 = r8.equals(r0)
            if (r8 != 0) goto L86
            java.lang.String r6 = r6.romanValue(r7)
            r9.append(r6)
            goto Lba
        L86:
            r8 = 73
            if (r1 != r8) goto L9e
            java.lang.String r8 = r6._letterValue
            boolean r8 = r8.equals(r0)
            if (r8 != 0) goto L9e
            java.lang.String r6 = r6.romanValue(r7)
            java.lang.String r6 = r6.toUpperCase()
            r9.append(r6)
            goto Lba
        L9e:
            r8 = 945(0x3b1, float:1.324E-42)
            if (r1 < r8) goto La7
            r8 = 969(0x3c9, float:1.358E-42)
            if (r1 > r8) goto La7
            goto Lb3
        La7:
            r8 = r1
        La8:
            int r0 = r8 + 1
            char r2 = (char) r0
            boolean r2 = java.lang.Character.isLetterOrDigit(r2)
            if (r2 == 0) goto Lb3
            r8 = r0
            goto La8
        Lb3:
            java.lang.String r6 = r6.alphaValue(r7, r1, r8)
            r9.append(r6)
        Lba:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter.formatValue(int, java.lang.String, java.lang.StringBuffer):void");
    }

    private String romanValue(int i) {
        if (i <= 0 || i > 4000) {
            return "" + i;
        }
        return Thousands[i / 1000] + Hundreds[(i / 100) % 10] + Tens[(i / 10) % 10] + Ones[i % 10];
    }

    private final void setTokens(String str) {
        String str2 = this._format;
        if (str2 == null || !str.equals(str2)) {
            this._format = str;
            int length = str.length();
            this._separFirst = true;
            this._separLast = false;
            this._nSepars = 0;
            this._nFormats = 0;
            this._separToks.clear();
            this._formatToks.clear();
            boolean z = true;
            int i = 0;
            while (i < length) {
                char charAt = str.charAt(i);
                int i2 = i;
                while (Character.isLetterOrDigit(charAt) && (i2 = i2 + 1) != length) {
                    charAt = str.charAt(i2);
                }
                if (i2 > i) {
                    if (z) {
                        this._separToks.addElement(".");
                        this._separFirst = false;
                        z = false;
                    }
                    this._formatToks.addElement(str.substring(i, i2));
                }
                if (i2 == length) {
                    break;
                }
                char charAt2 = str.charAt(i2);
                int i3 = i2;
                while (!Character.isLetterOrDigit(charAt2) && (i3 = i3 + 1) != length) {
                    charAt2 = str.charAt(i3);
                    z = false;
                }
                i = i3;
                if (i > i2) {
                    this._separToks.addElement(str.substring(i2, i));
                }
            }
            this._nSepars = this._separToks.size();
            int size = this._formatToks.size();
            this._nFormats = size;
            int i4 = this._nSepars;
            if (i4 > size) {
                this._separLast = true;
            }
            if (this._separFirst) {
                this._nSepars = i4 - 1;
            }
            if (this._separLast) {
                this._nSepars--;
            }
            if (this._nSepars == 0) {
                this._separToks.insertElementAt(".", 1);
                this._nSepars++;
            }
            if (this._separFirst) {
                this._nSepars++;
            }
        }
    }

    public String formatNumbers(int i) {
        return formatNumbers(new int[]{i});
    }

    public abstract String getCounter();

    public String getCounter(String str, String str2, String str3, String str4, String str5) {
        setFormatting(str, str2, str3, str4, str5);
        return getCounter();
    }

    public boolean matchesCount(int i) {
        return this._nodeType == this._document.getExpandedTypeID(i);
    }

    public boolean matchesFrom(int i) {
        return false;
    }

    public NodeCounter setDefaultFormatting() {
        setFormatting("1", "en", Constants.ATTRVAL_ALPHABETIC, null, null);
        return this;
    }

    public void setFormatting(String str, String str2, String str3, String str4, String str5) {
        this._lang = str2;
        this._groupSep = str4;
        this._letterValue = str3;
        try {
            this._groupSize = Integer.parseInt(str5);
        } catch (NumberFormatException unused) {
            this._groupSize = 0;
        }
        setTokens(str);
    }

    public abstract NodeCounter setStartNode(int i);

    public NodeCounter setValue(double d) {
        this._value = d;
        return this;
    }

    public String formatNumbers(int[] iArr) {
        this._format.length();
        boolean z = true;
        boolean z2 = true;
        for (int i : iArr) {
            if (i != Integer.MIN_VALUE) {
                z2 = false;
            }
        }
        if (z2) {
            return "";
        }
        this._tempBuffer.setLength(0);
        StringBuffer stringBuffer = this._tempBuffer;
        if (this._separFirst) {
            stringBuffer.append((String) this._separToks.elementAt(0));
        }
        int i2 = 1;
        int i3 = 0;
        for (int i4 : iArr) {
            if (i4 != Integer.MIN_VALUE) {
                if (!z) {
                    stringBuffer.append((String) this._separToks.elementAt(i2));
                    i2++;
                }
                int i5 = i3 + 1;
                formatValue(i4, (String) this._formatToks.elementAt(i3), stringBuffer);
                if (i5 == this._nFormats) {
                    i5--;
                }
                i3 = i5;
                if (i2 >= this._nSepars) {
                    i2--;
                }
                z = false;
            }
        }
        if (this._separLast) {
            stringBuffer.append((String) this._separToks.lastElement());
        }
        return stringBuffer.toString();
    }
}
