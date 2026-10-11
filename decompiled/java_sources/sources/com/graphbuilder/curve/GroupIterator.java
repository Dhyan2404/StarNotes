package com.graphbuilder.curve;

import com.google.android.material.motion.MotionUtils;
import com.graphbuilder.math.Expression;
import com.graphbuilder.math.ExpressionParseException;
import com.graphbuilder.math.ExpressionTree;
import com.graphbuilder.math.FuncMap;
import com.graphbuilder.math.VarMap;

/* loaded from: classes4.dex */
public class GroupIterator {
    protected String controlString;
    protected int[] group;
    protected int index_i = 0;
    protected int count_j = 0;

    public GroupIterator(String str, int i) {
        this.controlString = null;
        this.group = null;
        if (str != null) {
            this.group = parseControlString(str, i);
            this.controlString = str;
            return;
        }
        throw new IllegalArgumentException("control string cannot be null");
    }

    /* renamed from: a */
    public static Expression m30831a(String str, VarMap varMap, int i, int i2, int i3) {
        try {
            Expression parse = ExpressionTree.parse(str.substring(i2, i3));
            if (parse == null) {
                throw new ControlStringParseException("control substring is empty", i2, i3);
            }
            String[] variableNames = parse.getVariableNames();
            if (variableNames.length > 1) {
                throw new ControlStringParseException("too many variables", i2, i3);
            }
            if (variableNames.length == 1) {
                varMap.setValue(variableNames[0], i);
            }
            return parse;
        } catch (ExpressionParseException e) {
            throw new ControlStringParseException("error parsing expression", i2, i3, e);
        }
    }

    public static int[] parseControlString(String str, int i) {
        char c;
        char c2;
        char c3;
        int i2;
        int length = str.length();
        int i3 = 1;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            c = ')';
            c2 = '(';
            c3 = ',';
            if (i5 >= length) {
                break;
            }
            char charAt = str.charAt(i5);
            if (charAt == ',' && i6 == 0) {
                i3++;
            } else if (charAt == '(') {
                i6++;
            } else if (charAt == ')') {
                i6--;
            }
            i5++;
        }
        if (i6 != 0) {
            throw new ControlStringParseException("round brackets do not balance");
        }
        int[] iArr = new int[i3 * 2];
        VarMap varMap = new VarMap();
        FuncMap funcMap = new FuncMap();
        funcMap.loadDefaultFunctions();
        int i7 = 0;
        int i8 = i6;
        int i9 = -1;
        int i10 = 0;
        while (i4 <= length) {
            char charAt2 = i4 < length ? str.charAt(i4) : ' ';
            if (i4 == length || (charAt2 == c3 && i8 == 0)) {
                if (i9 == -1) {
                    int round = (int) Math.round(m30831a(str, varMap, i, i10, i4).eval(varMap, funcMap));
                    iArr[i7] = round;
                    iArr[i7 + 1] = round;
                    i7 += 2;
                } else {
                    int i11 = i7 + 1;
                    iArr[i7] = (int) Math.round(m30831a(str, varMap, i, i10, i9).eval(varMap, funcMap));
                    i7 = i11 + 1;
                    iArr[i11] = (int) Math.round(m30831a(str, varMap, i, i9 + 1, i4).eval(varMap, funcMap));
                }
                i2 = i4 + 1;
                i9 = -1;
            } else {
                if (charAt2 == c2) {
                    i8++;
                } else if (charAt2 == c) {
                    i8--;
                } else if (charAt2 == ':') {
                    i9 = i4;
                }
                i2 = i10;
            }
            i4++;
            i10 = i2;
            c = ')';
            c2 = '(';
            c3 = ',';
        }
        return iArr;
    }

    public void copyGroupArray(int[] iArr) {
        if (iArr == null) {
            throw new IllegalArgumentException("specified array cannot be null");
        }
        if (iArr.length < this.group.length) {
            throw new IllegalArgumentException("specified array is too small");
        }
        int i = 0;
        while (true) {
            int[] iArr2 = this.group;
            if (i >= iArr2.length) {
                return;
            }
            iArr[i] = iArr2[i];
            i++;
        }
    }

    public int count_j() {
        return this.count_j;
    }

    public String getControlString() {
        return this.controlString;
    }

    public int getGroupLength() {
        return this.group.length;
    }

    public int getGroupSize() {
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.group;
            if (i >= iArr.length) {
                return i2;
            }
            int i3 = iArr[i] - iArr[i + 1];
            if (i3 < 0) {
                i3 = -i3;
            }
            i2 += i3 + 1;
            i += 2;
        }
    }

    public int getGroupValue(int i) {
        if (i >= 0) {
            int[] iArr = this.group;
            if (i < iArr.length) {
                return iArr[i];
            }
        }
        throw new IllegalArgumentException("required: (index >= 0 && index < group.length) but: (index = " + i + ", group.length = " + this.group.length + MotionUtils.f31762d);
    }

    public boolean hasNext() {
        return this.index_i < this.group.length;
    }

    public int index_i() {
        return this.index_i;
    }

    public boolean isInRange(int i, int i2) {
        int i3 = 0;
        while (true) {
            int[] iArr = this.group;
            if (i3 >= iArr.length) {
                return true;
            }
            int i4 = iArr[i3];
            if (i4 < i || i4 >= i2) {
                break;
            }
            i3++;
        }
        return false;
    }

    public int next() {
        int i;
        int[] iArr = this.group;
        int i2 = this.index_i;
        int i3 = iArr[i2];
        int i4 = iArr[i2 + 1];
        if (i3 <= i4) {
            int i5 = this.count_j;
            i = i3 + i5;
            if (i >= i4) {
                this.count_j = 0;
                this.index_i = i2 + 2;
            } else {
                this.count_j = i5 + 1;
            }
        } else {
            int i6 = this.count_j;
            i = i3 - i6;
            if (i <= i4) {
                this.count_j = 0;
                this.index_i = i2 + 2;
            } else {
                this.count_j = i6 + 1;
            }
        }
        return i;
    }

    public void reset() {
        this.index_i = 0;
        this.count_j = 0;
    }

    public void set(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("index_i >= 0 required");
        }
        if (i % 2 == 1) {
            throw new IllegalArgumentException("index_i must be an even number");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("count_j >= 0 required");
        }
        this.index_i = i;
        this.count_j = i2;
    }

    public GroupIterator(int[] iArr) {
        this.controlString = null;
        this.group = null;
        if (iArr != null) {
            if (iArr.length != 0) {
                if (iArr.length % 2 == 0) {
                    double log = Math.log(10.0d);
                    int length = iArr.length;
                    int[] iArr2 = new int[length];
                    int i = 0;
                    for (int i2 = 0; i2 < length; i2++) {
                        int i3 = iArr[i2];
                        iArr2[i2] = i3;
                        if (i3 < 0) {
                            i++;
                            i3 = -i3;
                        }
                        i += ((int) (Math.log(i3) / log)) + 1;
                    }
                    this.group = iArr2;
                    StringBuffer stringBuffer = new StringBuffer(i + (length / 2) + (length - 1));
                    stringBuffer.append(iArr2[0]);
                    stringBuffer.append(":");
                    stringBuffer.append(iArr2[1]);
                    for (int i4 = 2; i4 < iArr.length; i4 += 2) {
                        stringBuffer.append(",");
                        stringBuffer.append(iArr[i4]);
                        stringBuffer.append(":");
                        stringBuffer.append(iArr[i4 + 1]);
                    }
                    this.controlString = stringBuffer.toString();
                    return;
                }
                throw new IllegalArgumentException("group array must have even length");
            }
            throw new IllegalArgumentException("group array length cannot be 0");
        }
        throw new IllegalArgumentException("group array cannot be null");
    }
}
