package org.apache.xerces.impl.p117xs.identity;

import org.apache.xerces.impl.xpath.XPath;
import org.apache.xerces.p118xs.AttributePSVI;
import org.apache.xerces.p118xs.ShortList;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.util.IntStack;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;

/* loaded from: classes13.dex */
public class XPathMatcher {
    protected static final boolean DEBUG_ALL = false;
    protected static final boolean DEBUG_ANY = false;
    protected static final boolean DEBUG_MATCH = false;
    protected static final boolean DEBUG_METHODS = false;
    protected static final boolean DEBUG_METHODS2 = false;
    protected static final boolean DEBUG_METHODS3 = false;
    protected static final boolean DEBUG_STACK = false;
    protected static final int MATCHED = 1;
    protected static final int MATCHED_ATTRIBUTE = 3;
    protected static final int MATCHED_DESCENDANT = 5;
    protected static final int MATCHED_DESCENDANT_PREVIOUS = 13;

    /* renamed from: a */
    public final XPath.LocationPath[] f112952a;

    /* renamed from: b */
    public final int[] f112953b;

    /* renamed from: c */
    public final IntStack[] f112954c;

    /* renamed from: d */
    public final int[] f112955d;

    /* renamed from: e */
    public final int[] f112956e;

    /* renamed from: f */
    public final QName f112957f = new QName();
    protected Object fMatchedString;

    public XPathMatcher(XPath xPath) {
        XPath.LocationPath[] locationPaths = xPath.getLocationPaths();
        this.f112952a = locationPaths;
        this.f112954c = new IntStack[locationPaths.length];
        int i = 0;
        while (true) {
            IntStack[] intStackArr = this.f112954c;
            if (i >= intStackArr.length) {
                XPath.LocationPath[] locationPathArr = this.f112952a;
                this.f112955d = new int[locationPathArr.length];
                this.f112956e = new int[locationPathArr.length];
                this.f112953b = new int[locationPathArr.length];
                return;
            }
            intStackArr[i] = new IntStack();
            i++;
        }
    }

    /* renamed from: a */
    public static boolean m70267a(XPath.NodeTest nodeTest, QName qName) {
        short s = nodeTest.type;
        return s == 1 ? nodeTest.name.equals(qName) : s != 4 || nodeTest.name.uri == qName.uri;
    }

    /* renamed from: b */
    public final String m70268b(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != '\n') {
                stringBuffer.append(charAt);
            } else {
                stringBuffer.append("\\n");
            }
        }
        return stringBuffer.toString();
    }

    public void endElement(QName qName, XSTypeDefinition xSTypeDefinition, boolean z, Object obj, short s, ShortList shortList) {
        int[] iArr;
        int i;
        for (int i2 = 0; i2 < this.f112952a.length; i2++) {
            this.f112955d[i2] = this.f112954c[i2].pop();
            int[] iArr2 = this.f112956e;
            int i3 = iArr2[i2];
            if (i3 > 0) {
                iArr2[i2] = i3 - 1;
            } else {
                int i4 = 0;
                while (i4 < i2 && (this.f112953b[i4] & 1) != 1) {
                    i4++;
                }
                if (i4 >= i2 && (i = (iArr = this.f112953b)[i4]) != 0) {
                    if ((i & 3) == 3) {
                        iArr[i2] = 0;
                    } else {
                        handleContent(xSTypeDefinition, z, obj, s, shortList);
                        this.f112953b[i2] = 0;
                    }
                }
            }
        }
    }

    public void handleContent(XSTypeDefinition xSTypeDefinition, boolean z, Object obj, short s, ShortList shortList) {
    }

    public boolean isMatched() {
        for (int i = 0; i < this.f112952a.length; i++) {
            int i2 = this.f112953b[i];
            if ((i2 & 1) == 1 && (i2 & 13) != 13 && (this.f112956e[i] == 0 || (i2 & 5) == 5)) {
                return true;
            }
        }
        return false;
    }

    public void matched(Object obj, short s, ShortList shortList, boolean z) {
    }

    public void startDocumentFragment() {
        this.fMatchedString = null;
        for (int i = 0; i < this.f112952a.length; i++) {
            this.f112954c[i].clear();
            this.f112955d[i] = 0;
            this.f112956e[i] = 0;
            this.f112953b[i] = 0;
        }
    }

    public void startElement(QName qName, XMLAttributes xMLAttributes) {
        int i;
        int i2;
        for (int i3 = 0; i3 < this.f112952a.length; i3++) {
            int i4 = this.f112955d[i3];
            this.f112954c[i3].push(i4);
            int[] iArr = this.f112953b;
            int i5 = iArr[i3];
            if ((i5 & 5) == 1 || this.f112956e[i3] > 0) {
                int[] iArr2 = this.f112956e;
                iArr2[i3] = iArr2[i3] + 1;
            } else {
                if ((i5 & 5) == 5) {
                    iArr[i3] = 13;
                }
                XPath.Step[] stepArr = this.f112952a[i3].steps;
                while (true) {
                    int[] iArr3 = this.f112955d;
                    i = iArr3[i3];
                    if (i >= stepArr.length || stepArr[i].axis.type != 3) {
                        break;
                    } else {
                        iArr3[i3] = i + 1;
                    }
                }
                if (i == stepArr.length) {
                    this.f112953b[i3] = 1;
                } else {
                    while (true) {
                        int[] iArr4 = this.f112955d;
                        i2 = iArr4[i3];
                        if (i2 >= stepArr.length || stepArr[i2].axis.type != 4) {
                            break;
                        } else {
                            iArr4[i3] = i2 + 1;
                        }
                    }
                    boolean z = i2 > i;
                    if (i2 == stepArr.length) {
                        int[] iArr5 = this.f112956e;
                        iArr5[i3] = iArr5[i3] + 1;
                    } else {
                        if (i2 == i4 || i2 > i) {
                            XPath.Step step = stepArr[i2];
                            if (step.axis.type == 1) {
                                if (m70267a(step.nodeTest, qName)) {
                                    int[] iArr6 = this.f112955d;
                                    iArr6[i3] = iArr6[i3] + 1;
                                } else {
                                    int[] iArr7 = this.f112955d;
                                    if (iArr7[i3] > i) {
                                        iArr7[i3] = i;
                                    } else {
                                        int[] iArr8 = this.f112956e;
                                        iArr8[i3] = iArr8[i3] + 1;
                                    }
                                }
                            }
                        }
                        int[] iArr9 = this.f112955d;
                        int i6 = iArr9[i3];
                        if (i6 == stepArr.length) {
                            if (z) {
                                iArr9[i3] = i;
                                this.f112953b[i3] = 5;
                            } else {
                                this.f112953b[i3] = 1;
                            }
                        } else if (i6 < stepArr.length && stepArr[i6].axis.type == 2) {
                            int length = xMLAttributes.getLength();
                            if (length > 0) {
                                XPath.NodeTest nodeTest = stepArr[this.f112955d[i3]].nodeTest;
                                int i7 = 0;
                                while (true) {
                                    if (i7 >= length) {
                                        break;
                                    }
                                    xMLAttributes.getName(i7, this.f112957f);
                                    if (m70267a(nodeTest, this.f112957f)) {
                                        int[] iArr10 = this.f112955d;
                                        int i8 = iArr10[i3] + 1;
                                        iArr10[i3] = i8;
                                        if (i8 == stepArr.length) {
                                            this.f112953b[i3] = 3;
                                            int i9 = 0;
                                            while (i9 < i3 && (this.f112953b[i9] & 1) != 1) {
                                                i9++;
                                            }
                                            if (i9 == i3) {
                                                AttributePSVI attributePSVI = (AttributePSVI) xMLAttributes.getAugmentations(i7).getItem("ATTRIBUTE_PSVI");
                                                Object actualNormalizedValue = attributePSVI.getActualNormalizedValue();
                                                this.fMatchedString = actualNormalizedValue;
                                                matched(actualNormalizedValue, attributePSVI.getActualNormalizedValueType(), attributePSVI.getItemValueTypes(), false);
                                            }
                                        }
                                    } else {
                                        i7++;
                                    }
                                }
                            }
                            if ((this.f112953b[i3] & 1) != 1) {
                                int[] iArr11 = this.f112955d;
                                if (iArr11[i3] > i) {
                                    iArr11[i3] = i;
                                } else {
                                    int[] iArr12 = this.f112956e;
                                    iArr12[i3] = iArr12[i3] + 1;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String obj = super.toString();
        int lastIndexOf = obj.lastIndexOf(46);
        if (lastIndexOf != -1) {
            obj = obj.substring(lastIndexOf + 1);
        }
        stringBuffer.append(obj);
        for (int i = 0; i < this.f112952a.length; i++) {
            stringBuffer.append('[');
            XPath.Step[] stepArr = this.f112952a[i].steps;
            for (int i2 = 0; i2 < stepArr.length; i2++) {
                if (i2 == this.f112955d[i]) {
                    stringBuffer.append('^');
                }
                stringBuffer.append(stepArr[i2].toString());
                if (i2 < stepArr.length - 1) {
                    stringBuffer.append('/');
                }
            }
            if (this.f112955d[i] == stepArr.length) {
                stringBuffer.append('^');
            }
            stringBuffer.append(']');
            stringBuffer.append(',');
        }
        return stringBuffer.toString();
    }
}
