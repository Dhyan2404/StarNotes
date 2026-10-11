package com.sun.org.apache.xerces.internal.impl.p055xs.identity;

import com.sun.org.apache.xerces.internal.impl.xpath.XPath;
import com.sun.org.apache.xerces.internal.p056xs.AttributePSVI;
import com.sun.org.apache.xerces.internal.p056xs.ShortList;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import com.sun.org.apache.xerces.internal.util.IntStack;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLAttributes;

/* loaded from: classes10.dex */
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
    private int[] fCurrentStep;
    private XPath.LocationPath[] fLocationPaths;
    private int[] fMatched;
    protected Object fMatchedString;
    private int[] fNoMatchDepth;
    final QName fQName = new QName();
    private IntStack[] fStepIndexes;

    public XPathMatcher(XPath xPath) {
        XPath.LocationPath[] locationPaths = xPath.getLocationPaths();
        this.fLocationPaths = locationPaths;
        this.fStepIndexes = new IntStack[locationPaths.length];
        int i = 0;
        while (true) {
            IntStack[] intStackArr = this.fStepIndexes;
            if (i >= intStackArr.length) {
                XPath.LocationPath[] locationPathArr = this.fLocationPaths;
                this.fCurrentStep = new int[locationPathArr.length];
                this.fNoMatchDepth = new int[locationPathArr.length];
                this.fMatched = new int[locationPathArr.length];
                return;
            }
            intStackArr[i] = new IntStack();
            i++;
        }
    }

    private String normalize(String str) {
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
        int i;
        for (int i2 = 0; i2 < this.fLocationPaths.length; i2++) {
            this.fCurrentStep[i2] = this.fStepIndexes[i2].pop();
            int[] iArr = this.fNoMatchDepth;
            int i3 = iArr[i2];
            if (i3 > 0) {
                iArr[i2] = i3 - 1;
            } else {
                int i4 = 0;
                while (i4 < i2 && (this.fMatched[i4] & 1) != 1) {
                    i4++;
                }
                if (i4 >= i2 && (i = this.fMatched[i4]) != 0 && (i & 3) != 3) {
                    handleContent(xSTypeDefinition, z, obj, s, shortList);
                    this.fMatched[i2] = 0;
                }
            }
        }
    }

    public void handleContent(XSTypeDefinition xSTypeDefinition, boolean z, Object obj, short s, ShortList shortList) {
    }

    public boolean isMatched() {
        for (int i = 0; i < this.fLocationPaths.length; i++) {
            int i2 = this.fMatched[i];
            if ((i2 & 1) == 1 && (i2 & 13) != 13 && (this.fNoMatchDepth[i] == 0 || (i2 & 5) == 5)) {
                return true;
            }
        }
        return false;
    }

    public void matched(Object obj, short s, ShortList shortList, boolean z) {
    }

    public void startDocumentFragment() {
        this.fMatchedString = null;
        for (int i = 0; i < this.fLocationPaths.length; i++) {
            this.fStepIndexes[i].clear();
            this.fCurrentStep[i] = 0;
            this.fNoMatchDepth[i] = 0;
            this.fMatched[i] = 0;
        }
    }

    public void startElement(QName qName, XMLAttributes xMLAttributes) {
        int i;
        int i2;
        for (int i3 = 0; i3 < this.fLocationPaths.length; i3++) {
            int i4 = this.fCurrentStep[i3];
            this.fStepIndexes[i3].push(i4);
            int[] iArr = this.fMatched;
            int i5 = iArr[i3];
            if ((i5 & 5) == 1 || this.fNoMatchDepth[i3] > 0) {
                int[] iArr2 = this.fNoMatchDepth;
                iArr2[i3] = iArr2[i3] + 1;
            } else {
                if ((i5 & 5) == 5) {
                    iArr[i3] = 13;
                }
                XPath.Step[] stepArr = this.fLocationPaths[i3].steps;
                while (true) {
                    int[] iArr3 = this.fCurrentStep;
                    i = iArr3[i3];
                    if (i >= stepArr.length || stepArr[i].axis.type != 3) {
                        break;
                    } else {
                        iArr3[i3] = i + 1;
                    }
                }
                if (i == stepArr.length) {
                    this.fMatched[i3] = 1;
                } else {
                    while (true) {
                        int[] iArr4 = this.fCurrentStep;
                        i2 = iArr4[i3];
                        if (i2 >= stepArr.length || stepArr[i2].axis.type != 4) {
                            break;
                        } else {
                            iArr4[i3] = i2 + 1;
                        }
                    }
                    boolean z = i2 > i;
                    if (i2 == stepArr.length) {
                        int[] iArr5 = this.fNoMatchDepth;
                        iArr5[i3] = iArr5[i3] + 1;
                    } else {
                        if (i2 == i4 || i2 > i) {
                            XPath.Step step = stepArr[i2];
                            if (step.axis.type == 1) {
                                XPath.NodeTest nodeTest = step.nodeTest;
                                if (nodeTest.type != 1 || nodeTest.name.equals(qName)) {
                                    int[] iArr6 = this.fCurrentStep;
                                    iArr6[i3] = iArr6[i3] + 1;
                                } else {
                                    int[] iArr7 = this.fCurrentStep;
                                    if (iArr7[i3] > i) {
                                        iArr7[i3] = i;
                                    } else {
                                        int[] iArr8 = this.fNoMatchDepth;
                                        iArr8[i3] = iArr8[i3] + 1;
                                    }
                                }
                            }
                        }
                        int[] iArr9 = this.fCurrentStep;
                        int i6 = iArr9[i3];
                        if (i6 == stepArr.length) {
                            if (z) {
                                iArr9[i3] = i;
                                this.fMatched[i3] = 5;
                            } else {
                                this.fMatched[i3] = 1;
                            }
                        } else if (i6 < stepArr.length && stepArr[i6].axis.type == 2) {
                            int length = xMLAttributes.getLength();
                            if (length > 0) {
                                XPath.NodeTest nodeTest2 = stepArr[this.fCurrentStep[i3]].nodeTest;
                                for (int i7 = 0; i7 < length; i7++) {
                                    xMLAttributes.getName(i7, this.fQName);
                                    if (nodeTest2.type != 1 || nodeTest2.name.equals(this.fQName)) {
                                        int[] iArr10 = this.fCurrentStep;
                                        int i8 = iArr10[i3] + 1;
                                        iArr10[i3] = i8;
                                        if (i8 == stepArr.length) {
                                            this.fMatched[i3] = 3;
                                            int i9 = 0;
                                            while (i9 < i3 && (this.fMatched[i9] & 1) != 1) {
                                                i9++;
                                            }
                                            if (i9 == i3) {
                                                AttributePSVI attributePSVI = (AttributePSVI) xMLAttributes.getAugmentations(i7).getItem("ATTRIBUTE_PSVI");
                                                Object actualNormalizedValue = attributePSVI.getActualNormalizedValue();
                                                this.fMatchedString = actualNormalizedValue;
                                                matched(actualNormalizedValue, attributePSVI.getActualNormalizedValueType(), attributePSVI.getItemValueTypes(), false);
                                            }
                                        }
                                    }
                                }
                            }
                            if ((this.fMatched[i3] & 1) != 1) {
                                int[] iArr11 = this.fCurrentStep;
                                if (iArr11[i3] > i) {
                                    iArr11[i3] = i;
                                } else {
                                    int[] iArr12 = this.fNoMatchDepth;
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
        for (int i = 0; i < this.fLocationPaths.length; i++) {
            stringBuffer.append('[');
            XPath.Step[] stepArr = this.fLocationPaths[i].steps;
            for (int i2 = 0; i2 < stepArr.length; i2++) {
                if (i2 == this.fCurrentStep[i]) {
                    stringBuffer.append('^');
                }
                stringBuffer.append(stepArr[i2].toString());
                if (i2 < stepArr.length - 1) {
                    stringBuffer.append('/');
                }
            }
            if (this.fCurrentStep[i] == stepArr.length) {
                stringBuffer.append('^');
            }
            stringBuffer.append(']');
            stringBuffer.append(',');
        }
        return stringBuffer.toString();
    }
}
