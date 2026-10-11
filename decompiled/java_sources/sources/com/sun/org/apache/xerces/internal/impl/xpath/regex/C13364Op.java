package com.sun.org.apache.xerces.internal.impl.xpath.regex;

import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.sun.org.apache.xerces.internal.impl.xpath.regex.Op */
/* loaded from: classes10.dex */
public class C13364Op {
    static final int ANCHOR = 5;
    static final int BACKREFERENCE = 16;
    static final int CAPTURE = 15;
    static final int CHAR = 1;
    static final int CLOSURE = 7;
    static final int CONDITION = 26;
    static final boolean COUNT = false;
    static final int DOT = 0;
    static final int INDEPENDENT = 24;
    static final int LOOKAHEAD = 20;
    static final int LOOKBEHIND = 22;
    static final int MODIFIER = 25;
    static final int NEGATIVELOOKAHEAD = 21;
    static final int NEGATIVELOOKBEHIND = 23;
    static final int NONGREEDYCLOSURE = 8;
    static final int NONGREEDYQUESTION = 10;
    static final int NRANGE = 4;
    static final int QUESTION = 9;
    static final int RANGE = 3;
    static final int STRING = 6;
    static final int UNION = 11;
    static int nofinstances;
    C13364Op next = null;
    int type;

    /* renamed from: com.sun.org.apache.xerces.internal.impl.xpath.regex.Op$CharOp */
    /* loaded from: classes10.dex */
    public static class CharOp extends C13364Op {
        int charData;

        public CharOp(int i, int i2) {
            super(i);
            this.charData = i2;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.xpath.regex.C13364Op
        public int getData() {
            return this.charData;
        }
    }

    /* renamed from: com.sun.org.apache.xerces.internal.impl.xpath.regex.Op$ChildOp */
    /* loaded from: classes10.dex */
    public static class ChildOp extends C13364Op {
        C13364Op child;

        public ChildOp(int i) {
            super(i);
        }

        @Override // com.sun.org.apache.xerces.internal.impl.xpath.regex.C13364Op
        public C13364Op getChild() {
            return this.child;
        }

        public void setChild(C13364Op c13364Op) {
            this.child = c13364Op;
        }
    }

    /* renamed from: com.sun.org.apache.xerces.internal.impl.xpath.regex.Op$ConditionOp */
    /* loaded from: classes10.dex */
    public static class ConditionOp extends C13364Op {
        C13364Op condition;

        /* renamed from: no */
        C13364Op f64114no;
        int refNumber;
        C13364Op yes;

        public ConditionOp(int i, int i2, C13364Op c13364Op, C13364Op c13364Op2, C13364Op c13364Op3) {
            super(i);
            this.refNumber = i2;
            this.condition = c13364Op;
            this.yes = c13364Op2;
            this.f64114no = c13364Op3;
        }
    }

    /* renamed from: com.sun.org.apache.xerces.internal.impl.xpath.regex.Op$ModifierOp */
    /* loaded from: classes10.dex */
    public static class ModifierOp extends ChildOp {

        /* renamed from: v1 */
        int f64115v1;

        /* renamed from: v2 */
        int f64116v2;

        public ModifierOp(int i, int i2, int i3) {
            super(i);
            this.f64115v1 = i2;
            this.f64116v2 = i3;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.xpath.regex.C13364Op
        public int getData() {
            return this.f64115v1;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.xpath.regex.C13364Op
        public int getData2() {
            return this.f64116v2;
        }
    }

    /* renamed from: com.sun.org.apache.xerces.internal.impl.xpath.regex.Op$RangeOp */
    /* loaded from: classes10.dex */
    public static class RangeOp extends C13364Op {
        Token tok;

        public RangeOp(int i, Token token) {
            super(i);
            this.tok = token;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.xpath.regex.C13364Op
        public RangeToken getToken() {
            return (RangeToken) this.tok;
        }
    }

    /* renamed from: com.sun.org.apache.xerces.internal.impl.xpath.regex.Op$StringOp */
    /* loaded from: classes10.dex */
    public static class StringOp extends C13364Op {
        String string;

        public StringOp(int i, String str) {
            super(i);
            this.string = str;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.xpath.regex.C13364Op
        public String getString() {
            return this.string;
        }
    }

    /* renamed from: com.sun.org.apache.xerces.internal.impl.xpath.regex.Op$UnionOp */
    /* loaded from: classes10.dex */
    public static class UnionOp extends C13364Op {
        Vector branches;

        public UnionOp(int i, int i2) {
            super(i);
            this.branches = new Vector(i2);
        }

        public void addElement(C13364Op c13364Op) {
            this.branches.addElement(c13364Op);
        }

        @Override // com.sun.org.apache.xerces.internal.impl.xpath.regex.C13364Op
        public C13364Op elementAt(int i) {
            return (C13364Op) this.branches.elementAt(i);
        }

        @Override // com.sun.org.apache.xerces.internal.impl.xpath.regex.C13364Op
        public int size() {
            return this.branches.size();
        }
    }

    public C13364Op(int i) {
        this.type = i;
    }

    public static CharOp createAnchor(int i) {
        return new CharOp(5, i);
    }

    public static CharOp createBackReference(int i) {
        return new CharOp(16, i);
    }

    public static CharOp createCapture(int i, C13364Op c13364Op) {
        CharOp charOp = new CharOp(15, i);
        charOp.next = c13364Op;
        return charOp;
    }

    public static CharOp createChar(int i) {
        return new CharOp(1, i);
    }

    public static ChildOp createClosure(int i) {
        return new ModifierOp(7, i, -1);
    }

    public static ConditionOp createCondition(C13364Op c13364Op, int i, C13364Op c13364Op2, C13364Op c13364Op3, C13364Op c13364Op4) {
        ConditionOp conditionOp = new ConditionOp(26, i, c13364Op2, c13364Op3, c13364Op4);
        conditionOp.next = c13364Op;
        return conditionOp;
    }

    public static C13364Op createDot() {
        return new C13364Op(0);
    }

    public static ChildOp createIndependent(C13364Op c13364Op, C13364Op c13364Op2) {
        ChildOp childOp = new ChildOp(24);
        childOp.setChild(c13364Op2);
        childOp.next = c13364Op;
        return childOp;
    }

    public static ChildOp createLook(int i, C13364Op c13364Op, C13364Op c13364Op2) {
        ChildOp childOp = new ChildOp(i);
        childOp.setChild(c13364Op2);
        childOp.next = c13364Op;
        return childOp;
    }

    public static ModifierOp createModifier(C13364Op c13364Op, C13364Op c13364Op2, int i, int i2) {
        ModifierOp modifierOp = new ModifierOp(25, i, i2);
        modifierOp.setChild(c13364Op2);
        modifierOp.next = c13364Op;
        return modifierOp;
    }

    public static ChildOp createNonGreedyClosure() {
        return new ChildOp(8);
    }

    public static ChildOp createQuestion(boolean z) {
        return new ChildOp(z ? 10 : 9);
    }

    public static RangeOp createRange(Token token) {
        return new RangeOp(3, token);
    }

    public static StringOp createString(String str) {
        return new StringOp(6, str);
    }

    public static UnionOp createUnion(int i) {
        return new UnionOp(11, i);
    }

    public C13364Op elementAt(int i) {
        throw new RuntimeException("Internal Error: type=" + this.type);
    }

    public C13364Op getChild() {
        throw new RuntimeException("Internal Error: type=" + this.type);
    }

    public int getData() {
        throw new RuntimeException("Internal Error: type=" + this.type);
    }

    public int getData2() {
        throw new RuntimeException("Internal Error: type=" + this.type);
    }

    public String getString() {
        throw new RuntimeException("Internal Error: type=" + this.type);
    }

    public RangeToken getToken() {
        throw new RuntimeException("Internal Error: type=" + this.type);
    }

    public int size() {
        return 0;
    }
}
