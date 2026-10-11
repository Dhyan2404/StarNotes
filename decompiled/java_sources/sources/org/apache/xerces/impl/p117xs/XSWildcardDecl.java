package org.apache.xerces.impl.p117xs;

import org.apache.xerces.impl.p117xs.util.StringListImpl;
import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.p118xs.StringList;
import org.apache.xerces.p118xs.XSAnnotation;
import org.apache.xerces.p118xs.XSNamespaceItem;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSWildcard;

/* loaded from: classes13.dex */
public class XSWildcardDecl implements XSWildcard {
    public static final String ABSENT = null;
    public String[] fNamespaceList;
    public short fType = 1;
    public short fProcessContents = 1;
    public XSObjectList fAnnotations = null;

    /* renamed from: e */
    public String f112949e = null;

    /* renamed from: a */
    public final boolean m70256a(XSWildcardDecl xSWildcardDecl) {
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
                    if (!m70257b(strArr[i], xSWildcardDecl.fNamespaceList)) {
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

    /* renamed from: b */
    public boolean m70257b(String str, String[] strArr) {
        boolean z = false;
        for (int i = 0; i < strArr.length && !z; i++) {
            if (str == strArr[i]) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: c */
    public String[] m70258c(String[] strArr, String[] strArr2) {
        String[] strArr3 = new String[Math.min(strArr.length, strArr2.length)];
        int i = 0;
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (m70257b(strArr[i2], strArr2)) {
                strArr3[i] = strArr[i2];
                i++;
            }
        }
        String[] strArr4 = new String[i];
        System.arraycopy(strArr3, 0, strArr4, 0, i);
        return strArr4;
    }

    /* renamed from: d */
    public boolean m70259d(String[] strArr, String[] strArr2) {
        for (String str : strArr) {
            if (!m70257b(str, strArr2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: e */
    public String[] m70260e(String[] strArr, String[] strArr2) {
        String[] strArr3 = new String[strArr.length];
        int i = 0;
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (!m70257b(strArr[i2], strArr2)) {
                strArr3[i] = strArr[i2];
                i++;
            }
        }
        String[] strArr4 = new String[strArr2.length + i];
        System.arraycopy(strArr3, 0, strArr4, 0, i);
        System.arraycopy(strArr2, 0, strArr4, i, strArr2.length);
        return strArr4;
    }

    @Override // org.apache.xerces.p118xs.XSWildcard
    public XSAnnotation getAnnotation() {
        XSObjectList xSObjectList = this.fAnnotations;
        if (xSObjectList != null) {
            return (XSAnnotation) xSObjectList.item(0);
        }
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSWildcard
    public XSObjectList getAnnotations() {
        XSObjectList xSObjectList = this.fAnnotations;
        return xSObjectList != null ? xSObjectList : XSObjectListImpl.EMPTY_LIST;
    }

    @Override // org.apache.xerces.p118xs.XSWildcard
    public short getConstraintType() {
        return this.fType;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getName() {
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getNamespace() {
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public XSNamespaceItem getNamespaceItem() {
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSWildcard
    public StringList getNsConstraintList() {
        String[] strArr = this.fNamespaceList;
        return new StringListImpl(strArr, strArr == null ? 0 : strArr.length);
    }

    @Override // org.apache.xerces.p118xs.XSWildcard
    public short getProcessContents() {
        return this.fProcessContents;
    }

    public String getProcessContentsAsString() {
        short s = this.fProcessContents;
        return s != 1 ? s != 2 ? s != 3 ? "invalid value" : "lax" : "skip" : "strict";
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public short getType() {
        return (short) 9;
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
            if (s == 3 && m70259d(this.fNamespaceList, xSWildcardDecl.fNamespaceList)) {
                return true;
            }
            if (xSWildcardDecl.fType == 2 && !m70257b(xSWildcardDecl.fNamespaceList[0], this.fNamespaceList) && !m70257b(ABSENT, this.fNamespaceList)) {
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
        if (m70256a(xSWildcardDecl)) {
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
                xSWildcardDecl2.fNamespaceList = m70258c(this.fNamespaceList, xSWildcardDecl.fNamespaceList);
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

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0085, code lost:
    
        if (r4 != false) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xerces.impl.p117xs.XSWildcardDecl performUnionWith(org.apache.xerces.impl.p117xs.XSWildcardDecl r9, short r10) {
        /*
            r8 = this;
            r0 = 0
            if (r9 != 0) goto L4
            return r0
        L4:
            org.apache.xerces.impl.xs.XSWildcardDecl r1 = new org.apache.xerces.impl.xs.XSWildcardDecl
            r1.<init>()
            r1.fProcessContents = r10
            boolean r10 = r8.m70256a(r9)
            if (r10 == 0) goto L1b
            short r9 = r8.fType
            r1.fType = r9
            java.lang.String[] r8 = r8.fNamespaceList
            r1.fNamespaceList = r8
            goto L8f
        L1b:
            short r10 = r8.fType
            r2 = 1
            if (r10 == r2) goto L8d
            short r3 = r9.fType
            if (r3 != r2) goto L26
            goto L8d
        L26:
            r4 = 3
            if (r10 != r4) goto L38
            if (r3 != r4) goto L38
            r1.fType = r4
            java.lang.String[] r10 = r8.fNamespaceList
            java.lang.String[] r9 = r9.fNamespaceList
            java.lang.String[] r8 = r8.m70260e(r10, r9)
            r1.fNamespaceList = r8
            goto L8f
        L38:
            r5 = 0
            r6 = 2
            if (r10 != r6) goto L4b
            if (r3 != r6) goto L4b
            r1.fType = r6
            java.lang.String[] r8 = new java.lang.String[r6]
            r1.fNamespaceList = r8
            java.lang.String r9 = org.apache.xerces.impl.p117xs.XSWildcardDecl.ABSENT
            r8[r5] = r9
            r8[r2] = r9
            goto L8f
        L4b:
            if (r10 != r6) goto L4f
            if (r3 == r4) goto L53
        L4f:
            if (r10 != r4) goto L8f
            if (r3 != r6) goto L8f
        L53:
            if (r10 != r6) goto L5a
            java.lang.String[] r10 = r8.fNamespaceList
            java.lang.String[] r9 = r9.fNamespaceList
            goto L5e
        L5a:
            java.lang.String[] r10 = r9.fNamespaceList
            java.lang.String[] r9 = r8.fNamespaceList
        L5e:
            java.lang.String r3 = org.apache.xerces.impl.p117xs.XSWildcardDecl.ABSENT
            boolean r4 = r8.m70257b(r3, r9)
            r7 = r10[r5]
            if (r7 == r3) goto L85
            boolean r8 = r8.m70257b(r7, r9)
            if (r8 == 0) goto L71
            if (r4 == 0) goto L71
            goto L8d
        L71:
            if (r8 == 0) goto L80
            if (r4 != 0) goto L80
            r1.fType = r6
            java.lang.String[] r8 = new java.lang.String[r6]
            r1.fNamespaceList = r8
            r8[r5] = r3
            r8[r2] = r3
            goto L8f
        L80:
            if (r8 != 0) goto L88
            if (r4 == 0) goto L88
            return r0
        L85:
            if (r4 == 0) goto L88
            goto L8d
        L88:
            r1.fType = r6
            r1.fNamespaceList = r10
            goto L8f
        L8d:
            r1.fType = r2
        L8f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.XSWildcardDecl.performUnionWith(org.apache.xerces.impl.xs.XSWildcardDecl, short):org.apache.xerces.impl.xs.XSWildcardDecl");
    }

    public String toString() {
        if (this.f112949e == null) {
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
            stringBuffer.append(']');
            this.f112949e = stringBuffer.toString();
        }
        return this.f112949e;
    }

    public boolean weakerProcessContents(XSWildcardDecl xSWildcardDecl) {
        short s = this.fProcessContents;
        if (s == 3 && xSWildcardDecl.fProcessContents == 1) {
            return true;
        }
        return s == 2 && xSWildcardDecl.fProcessContents != 2;
    }
}
