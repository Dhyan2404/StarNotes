package com.sun.org.apache.xerces.internal.impl.p055xs;

import com.sun.org.apache.xerces.internal.impl.p055xs.util.StringListImpl;
import com.sun.org.apache.xerces.internal.p056xs.StringList;
import com.sun.org.apache.xerces.internal.p056xs.XSAnnotation;
import com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem;
import com.sun.org.apache.xerces.internal.p056xs.XSWildcard;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public class XSWildcardDecl implements XSWildcard {
    public static final String ABSENT = null;
    public String[] fNamespaceList;
    public short fType = 1;
    public short fProcessContents = 1;
    public XSAnnotationImpl fAnnotation = null;
    private String fDescription = null;

    private boolean areSame(XSWildcardDecl xSWildcardDecl) {
        short s = this.fType;
        if (s == xSWildcardDecl.fType) {
            if (s == 1) {
                return true;
            }
            if (s == 2) {
                return this.fNamespaceList[0] == xSWildcardDecl.fNamespaceList[0];
            }
            if (this.fNamespaceList.length == xSWildcardDecl.fNamespaceList.length) {
                int i = 0;
                while (true) {
                    String[] strArr = this.fNamespaceList;
                    if (i >= strArr.length) {
                        return true;
                    }
                    if (!elementInSet(strArr[i], xSWildcardDecl.fNamespaceList)) {
                        return false;
                    }
                    i++;
                }
            }
        }
        return false;
    }

    public boolean allowNamespace(String str) {
        short s = this.fType;
        if (s == 1) {
            return true;
        }
        if (s == 2) {
            int length = this.fNamespaceList.length;
            boolean z = false;
            for (int i = 0; i < length && !z; i++) {
                if (str == this.fNamespaceList[i]) {
                    z = true;
                }
            }
            if (!z) {
                return true;
            }
        }
        if (this.fType == 3) {
            int length2 = this.fNamespaceList.length;
            for (int i2 = 0; i2 < length2; i2++) {
                if (str == this.fNamespaceList[i2]) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean elementInSet(String str, String[] strArr) {
        boolean z = false;
        for (int i = 0; i < strArr.length && !z; i++) {
            if (str == strArr[i]) {
                z = true;
            }
        }
        return z;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSWildcard
    public XSAnnotation getAnnotation() {
        return this.fAnnotation;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSWildcard
    public short getConstraintType() {
        return this.fType;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public String getName() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public String getNamespace() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public XSNamespaceItem getNamespaceItem() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSWildcard
    public StringList getNsConstraintList() {
        String[] strArr = this.fNamespaceList;
        return new StringListImpl(strArr, strArr == null ? 0 : strArr.length);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSWildcard
    public short getProcessContents() {
        return this.fProcessContents;
    }

    public String getProcessContentsAsString() {
        short s = this.fProcessContents;
        return s != 1 ? s != 2 ? s != 3 ? "invalid value" : "lax" : "skip" : "strict";
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public short getType() {
        return (short) 9;
    }

    public String[] intersect2sets(String[] strArr, String[] strArr2) {
        String[] strArr3 = new String[Math.min(strArr.length, strArr2.length)];
        int i = 0;
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (elementInSet(strArr[i2], strArr2)) {
                strArr3[i] = strArr[i2];
                i++;
            }
        }
        String[] strArr4 = new String[i];
        System.arraycopy(strArr3, 0, strArr4, 0, i);
        return strArr4;
    }

    public boolean isSubsetOf(XSWildcardDecl xSWildcardDecl) {
        if (xSWildcardDecl == null) {
            return false;
        }
        short s = xSWildcardDecl.fType;
        if (s == 1) {
            return true;
        }
        short s2 = this.fType;
        if (s2 == 2 && s == 2 && this.fNamespaceList[0] == xSWildcardDecl.fNamespaceList[0]) {
            return true;
        }
        if (s2 == 3) {
            if (s == 3 && subset2sets(this.fNamespaceList, xSWildcardDecl.fNamespaceList)) {
                return true;
            }
            if (xSWildcardDecl.fType == 2 && !elementInSet(xSWildcardDecl.fNamespaceList[0], this.fNamespaceList) && !elementInSet(ABSENT, this.fNamespaceList)) {
                return true;
            }
        }
        return false;
    }

    public XSWildcardDecl performIntersectionWith(XSWildcardDecl xSWildcardDecl, short s) {
        short s2;
        String[] strArr;
        String[] strArr2;
        if (xSWildcardDecl == null) {
            return null;
        }
        XSWildcardDecl xSWildcardDecl2 = new XSWildcardDecl();
        xSWildcardDecl2.fProcessContents = s;
        if (areSame(xSWildcardDecl)) {
            xSWildcardDecl2.fType = this.fType;
            xSWildcardDecl2.fNamespaceList = this.fNamespaceList;
        } else {
            short s3 = this.fType;
            if (s3 == 1 || (s2 = xSWildcardDecl.fType) == 1) {
                if (s3 == 1) {
                    this = xSWildcardDecl;
                }
                xSWildcardDecl2.fType = this.fType;
                xSWildcardDecl2.fNamespaceList = this.fNamespaceList;
            } else if ((s3 == 2 && s2 == 3) || (s3 == 3 && s2 == 2)) {
                if (s3 == 2) {
                    strArr2 = this.fNamespaceList;
                    strArr = xSWildcardDecl.fNamespaceList;
                } else {
                    String[] strArr3 = xSWildcardDecl.fNamespaceList;
                    strArr = this.fNamespaceList;
                    strArr2 = strArr3;
                }
                String[] strArr4 = new String[strArr.length];
                int i = 0;
                for (String str : strArr) {
                    if (str != strArr2[0] && str != ABSENT) {
                        strArr4[i] = str;
                        i++;
                    }
                }
                xSWildcardDecl2.fType = (short) 3;
                String[] strArr5 = new String[i];
                xSWildcardDecl2.fNamespaceList = strArr5;
                System.arraycopy(strArr4, 0, strArr5, 0, i);
            } else if (s3 == 3 && s2 == 3) {
                xSWildcardDecl2.fType = (short) 3;
                xSWildcardDecl2.fNamespaceList = intersect2sets(this.fNamespaceList, xSWildcardDecl.fNamespaceList);
            } else if (s3 == 2 && s2 == 2) {
                String str2 = this.fNamespaceList[0];
                String str3 = ABSENT;
                if (str2 != str3 && xSWildcardDecl.fNamespaceList[0] != str3) {
                    return null;
                }
                if (str2 == str3) {
                    this = xSWildcardDecl;
                }
                xSWildcardDecl2.fType = this.fType;
                xSWildcardDecl2.fNamespaceList = this.fNamespaceList;
            }
        }
        return xSWildcardDecl2;
    }

    public XSWildcardDecl performUnionWith(XSWildcardDecl xSWildcardDecl, short s) {
        short s2;
        String[] strArr;
        String[] strArr2;
        if (xSWildcardDecl == null) {
            return null;
        }
        XSWildcardDecl xSWildcardDecl2 = new XSWildcardDecl();
        xSWildcardDecl2.fProcessContents = s;
        if (areSame(xSWildcardDecl)) {
            xSWildcardDecl2.fType = this.fType;
            xSWildcardDecl2.fNamespaceList = this.fNamespaceList;
        } else {
            short s3 = this.fType;
            if (s3 == 1 || (s2 = xSWildcardDecl.fType) == 1) {
                xSWildcardDecl2.fType = (short) 1;
            } else if (s3 == 3 && s2 == 3) {
                xSWildcardDecl2.fType = (short) 3;
                xSWildcardDecl2.fNamespaceList = union2sets(this.fNamespaceList, xSWildcardDecl.fNamespaceList);
            } else if (s3 == 2 && s2 == 2) {
                xSWildcardDecl2.fType = (short) 2;
                xSWildcardDecl2.fNamespaceList = r8;
                String str = ABSENT;
                String[] strArr3 = {str, str};
            } else if ((s3 == 2 && s2 == 3) || (s3 == 3 && s2 == 2)) {
                if (s3 == 2) {
                    strArr = this.fNamespaceList;
                    strArr2 = xSWildcardDecl.fNamespaceList;
                } else {
                    strArr = xSWildcardDecl.fNamespaceList;
                    strArr2 = this.fNamespaceList;
                }
                String str2 = ABSENT;
                boolean elementInSet = elementInSet(str2, strArr2);
                String str3 = strArr[0];
                if (str3 != str2) {
                    boolean elementInSet2 = elementInSet(str3, strArr2);
                    if (elementInSet2 && elementInSet) {
                        xSWildcardDecl2.fType = (short) 1;
                    } else if (elementInSet2 && !elementInSet) {
                        xSWildcardDecl2.fType = (short) 2;
                        xSWildcardDecl2.fNamespaceList = r8;
                        String[] strArr4 = {str2, str2};
                    } else {
                        if (!elementInSet2 && elementInSet) {
                            return null;
                        }
                        xSWildcardDecl2.fType = (short) 2;
                        xSWildcardDecl2.fNamespaceList = strArr;
                    }
                } else if (elementInSet) {
                    xSWildcardDecl2.fType = (short) 1;
                } else {
                    xSWildcardDecl2.fType = (short) 2;
                    xSWildcardDecl2.fNamespaceList = strArr;
                }
            }
        }
        return xSWildcardDecl2;
    }

    public boolean subset2sets(String[] strArr, String[] strArr2) {
        for (String str : strArr) {
            if (!elementInSet(str, strArr2)) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        if (this.fDescription == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("WC[");
            short s = this.fType;
            if (s == 1) {
                stringBuffer.append("##any");
            } else if (s == 2) {
                stringBuffer.append("##other");
                stringBuffer.append(":\"");
                String str = this.fNamespaceList[0];
                if (str != null) {
                    stringBuffer.append(str);
                }
                stringBuffer.append("\"");
            } else if (s == 3 && this.fNamespaceList.length != 0) {
                stringBuffer.append("\"");
                String str2 = this.fNamespaceList[0];
                if (str2 != null) {
                    stringBuffer.append(str2);
                }
                stringBuffer.append("\"");
                for (int i = 1; i < this.fNamespaceList.length; i++) {
                    stringBuffer.append(",\"");
                    String str3 = this.fNamespaceList[i];
                    if (str3 != null) {
                        stringBuffer.append(str3);
                    }
                    stringBuffer.append("\"");
                }
            }
            stringBuffer.append(IteratorUtils.f104924b);
            this.fDescription = stringBuffer.toString();
        }
        return this.fDescription;
    }

    public String[] union2sets(String[] strArr, String[] strArr2) {
        String[] strArr3 = new String[strArr.length];
        int i = 0;
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (!elementInSet(strArr[i2], strArr2)) {
                strArr3[i] = strArr[i2];
                i++;
            }
        }
        String[] strArr4 = new String[strArr2.length + i];
        System.arraycopy(strArr3, 0, strArr4, 0, i);
        System.arraycopy(strArr2, 0, strArr4, i, strArr2.length);
        return strArr4;
    }

    public boolean weakerProcessContents(XSWildcardDecl xSWildcardDecl) {
        short s = this.fProcessContents;
        if (s == 3 && xSWildcardDecl.fProcessContents == 1) {
            return true;
        }
        return s == 2 && xSWildcardDecl.fProcessContents != 2;
    }
}
