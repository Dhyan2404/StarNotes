package org.apache.xmlbeans.impl.regex;

import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.apache.xmlbeans.impl.regex.Op */
/* loaded from: classes13.dex */
public class C20123Op {
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
    C20123Op next = null;
    int type;

    /* renamed from: org.apache.xmlbeans.impl.regex.Op$CharOp */
    /* loaded from: classes13.dex */
    public static class CharOp extends C20123Op {
        int charData;

        public CharOp(int i, int i2) {
            super(i);
            this.charData = i2;
        }

        @Override // org.apache.xmlbeans.impl.regex.C20123Op
        public int getData() {
            return this.charData;
        }
    }

    /* renamed from: org.apache.xmlbeans.impl.regex.Op$ChildOp */
    /* loaded from: classes13.dex */
    public static class ChildOp extends C20123Op {
        C20123Op child;

        public ChildOp(int i) {
            super(i);
        }

        @Override // org.apache.xmlbeans.impl.regex.C20123Op
        public C20123Op getChild() {
            return this.child;
        }

        public void setChild(C20123Op c20123Op) {
            this.child = c20123Op;
        }
    }

    /* renamed from: org.apache.xmlbeans.impl.regex.Op$ConditionOp */
    /* loaded from: classes13.dex */
    public static class ConditionOp extends C20123Op {
        C20123Op condition;

        /* renamed from: no */
        C20123Op f113745no;
        int refNumber;
        C20123Op yes;

        public ConditionOp(int i, int i2, C20123Op c20123Op, C20123Op c20123Op2, C20123Op c20123Op3) {
            super(i);
            this.refNumber = i2;
            this.condition = c20123Op;
            this.yes = c20123Op2;
            this.f113745no = c20123Op3;
        }
    }

    /* renamed from: org.apache.xmlbeans.impl.regex.Op$ModifierOp */
    /* loaded from: classes13.dex */
    public static class ModifierOp extends ChildOp {

        /* renamed from: v1 */
        int f113746v1;

        /* renamed from: v2 */
        int f113747v2;

        public ModifierOp(int i, int i2, int i3) {
            super(i);
            this.f113746v1 = i2;
            this.f113747v2 = i3;
        }

        @Override // org.apache.xmlbeans.impl.regex.C20123Op
        public int getData() {
            return this.f113746v1;
        }

        @Override // org.apache.xmlbeans.impl.regex.C20123Op
        public int getData2() {
            return this.f113747v2;
        }
    }

    /* renamed from: org.apache.xmlbeans.impl.regex.Op$RangeOp */
    /* loaded from: classes13.dex */
    public static class RangeOp extends C20123Op {
        Token tok;

        public RangeOp(int i, Token token) {
            super(i);
            this.tok = token;
        }

        @Override // org.apache.xmlbeans.impl.regex.C20123Op
        public RangeToken getToken() {
            return (RangeToken) this.tok;
        }
    }

    /* renamed from: org.apache.xmlbeans.impl.regex.Op$StringOp */
    /* loaded from: classes13.dex */
    public static class StringOp extends C20123Op {
        String string;

        public StringOp(int i, String str) {
            super(i);
            this.string = str;
        }

        @Override // org.apache.xmlbeans.impl.regex.C20123Op
        public String getString() {
            return this.string;
        }
    }

    /* renamed from: org.apache.xmlbeans.impl.regex.Op$UnionOp */
    /* loaded from: classes13.dex */
    public static class UnionOp extends C20123Op {
        Vector branches;

        public UnionOp(int i, int i2) {
            super(i);
            this.branches = new Vector(i2);
        }

        public void addElement(C20123Op c20123Op) {
            this.branches.addElement(c20123Op);
        }

        @Override // org.apache.xmlbeans.impl.regex.C20123Op
        public C20123Op elementAt(int i) {
            return (C20123Op) this.branches.elementAt(i);
        }

        @Override // org.apache.xmlbeans.impl.regex.C20123Op
        public int size() {
            return this.branches.size();
        }
    }

    public C20123Op(int i) {
        this.type = i;
    }

    public static CharOp createAnchor(int i) {
        return new CharOp(5, i);
    }

    public static CharOp createBackReference(int i) {
        return new CharOp(16, i);
    }

    public static CharOp createCapture(int i, C20123Op c20123Op) {
        CharOp charOp = new CharOp(15, i);
        charOp.next = c20123Op;
        return charOp;
    }

    public static CharOp createChar(int i) {
        return new CharOp(1, i);
    }

    public static ChildOp createClosure(int i) {
        return new ModifierOp(7, i, -1);
    }

    public static ConditionOp createCondition(C20123Op c20123Op, int i, C20123Op c20123Op2, C20123Op c20123Op3, C20123Op c20123Op4) {
        ConditionOp conditionOp = new ConditionOp(26, i, c20123Op2, c20123Op3, c20123Op4);
        conditionOp.next = c20123Op;
        return conditionOp;
    }

    public static C20123Op createDot() {
        return new C20123Op(0);
    }

    public static ChildOp createIndependent(C20123Op c20123Op, C20123Op c20123Op2) {
        ChildOp childOp = new ChildOp(24);
        childOp.setChild(c20123Op2);
        childOp.next = c20123Op;
        return childOp;
    }

    public static ChildOp createLook(int i, C20123Op c20123Op, C20123Op c20123Op2) {
        ChildOp childOp = new ChildOp(i);
        childOp.setChild(c20123Op2);
        childOp.next = c20123Op;
        return childOp;
    }

    public static ModifierOp createModifier(C20123Op c20123Op, C20123Op c20123Op2, int i, int i2) {
        ModifierOp modifierOp = new ModifierOp(25, i, i2);
        modifierOp.setChild(c20123Op2);
        modifierOp.next = c20123Op;
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

    public C20123Op elementAt(int i) {
        throw new RuntimeException("Internal Error: type=" + this.type);
    }

    public C20123Op getChild() {
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
