package net.p110sf.saxon.regex;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.IntPredicate;
import net.p110sf.saxon.p111z.IntExceptPredicate;
import net.p110sf.saxon.p111z.IntHashSet;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntPredicateLambda;
import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.p111z.IntSetPredicate;
import net.p110sf.saxon.p111z.IntSingletonSet;
import net.p110sf.saxon.regex.RECompiler;
import net.p110sf.saxon.regex.charclass.Categories;
import net.p110sf.saxon.regex.charclass.CharacterClass;
import net.p110sf.saxon.regex.charclass.EmptyCharacterClass;
import net.p110sf.saxon.regex.charclass.IntSetCharacterClass;
import net.p110sf.saxon.regex.charclass.InverseCharacterClass;
import net.p110sf.saxon.regex.charclass.PredicateCharacterClass;
import net.p110sf.saxon.regex.charclass.SingletonCharacterClass;
import net.p110sf.saxon.str.StringConstants;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class RECompiler {

    /* renamed from: n */
    public static final int f101216n = 0;

    /* renamed from: o */
    public static final int f101217o = 2;

    /* renamed from: p */
    public static final boolean f101218p = false;

    /* renamed from: a */
    public UnicodeString f101219a;

    /* renamed from: b */
    public int f101220b;

    /* renamed from: c */
    public int f101221c;

    /* renamed from: d */
    public int f101222d;

    /* renamed from: e */
    public int f101223e;

    /* renamed from: f */
    public int f101224f;

    /* renamed from: g */
    public boolean f101225g = true;

    /* renamed from: h */
    public boolean f101226h = true;

    /* renamed from: i */
    public boolean f101227i = false;

    /* renamed from: j */
    public IntHashSet f101228j = new IntHashSet();

    /* renamed from: k */
    public boolean f101229k = false;

    /* renamed from: l */
    public REFlags f101230l;

    /* renamed from: m */
    public List<String> f101231m;

    /* renamed from: net.sf.saxon.regex.RECompiler$a */
    /* loaded from: classes11.dex */
    public class C18449a extends SingletonCharacterClass {
        public C18449a(int i) {
            super(i);
        }
    }

    /* renamed from: g */
    public static boolean m63579g(int i) {
        return i >= 48 && i <= 57;
    }

    /* renamed from: h */
    public static /* synthetic */ boolean m63580h(CharacterClass characterClass, CharacterClass characterClass2, int i) {
        return IntExceptPredicate.makeDifference(characterClass, characterClass2).test(i);
    }

    /* renamed from: i */
    public static /* synthetic */ boolean m63581i(CharacterClass characterClass, CharacterClass characterClass2, int i) {
        return characterClass.test(i) || characterClass2.test(i);
    }

    /* renamed from: j */
    public static /* synthetic */ boolean m63582j(int i) {
        return (i == 10 || i == 13) ? false : true;
    }

    /* renamed from: k */
    public static Operation m63583k(Operation operation, Operation operation2) {
        if (operation instanceof OpSequence) {
            if (operation2 instanceof OpSequence) {
                ((OpSequence) operation).getOperations().addAll(((OpSequence) operation2).getOperations());
                return operation;
            }
            ((OpSequence) operation).getOperations().add(operation2);
            return operation;
        }
        if (operation2 instanceof OpSequence) {
            ((OpSequence) operation2).getOperations().add(0, operation);
            return operation2;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(operation);
        arrayList.add(operation2);
        return m63584t(new OpSequence(arrayList));
    }

    public static CharacterClass makeComplement(CharacterClass characterClass) {
        return characterClass instanceof InverseCharacterClass ? ((InverseCharacterClass) characterClass).getComplement() : new InverseCharacterClass(characterClass);
    }

    public static CharacterClass makeDifference(final CharacterClass characterClass, final CharacterClass characterClass2) {
        if (characterClass == EmptyCharacterClass.getInstance() || characterClass2 == EmptyCharacterClass.getInstance()) {
            return characterClass;
        }
        IntSet intSet = characterClass.getIntSet();
        IntSet intSet2 = characterClass2.getIntSet();
        return (intSet == null || intSet2 == null) ? new PredicateCharacterClass(new IntPredicate() { // from class: com.sunia.HTREnginev2.xbl
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m63580h;
                m63580h = RECompiler.m63580h(CharacterClass.this, characterClass2, i);
                return m63580h;
            }
        }) : new IntSetCharacterClass(intSet.except(intSet2));
    }

    public static CharacterClass makeUnion(final CharacterClass characterClass, final CharacterClass characterClass2) {
        if (characterClass == EmptyCharacterClass.getInstance()) {
            return characterClass2;
        }
        if (characterClass2 == EmptyCharacterClass.getInstance()) {
            return characterClass;
        }
        IntSet intSet = characterClass.getIntSet();
        IntSet intSet2 = characterClass2.getIntSet();
        return (intSet == null || intSet2 == null) ? new PredicateCharacterClass(new IntPredicate() { // from class: com.sunia.HTREnginev2.ybl
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m63581i;
                m63581i = RECompiler.m63581i(CharacterClass.this, characterClass2, i);
                return m63581i;
            }
        }) : new IntSetCharacterClass(intSet.union(intSet2));
    }

    public static boolean noAmbiguity(Operation operation, Operation operation2, boolean z, boolean z2) {
        if (operation2 instanceof OpEndProgram) {
            return !z2;
        }
        if ((operation2 instanceof OpBOL) || (operation2 instanceof OpEOL)) {
            return true;
        }
        if ((operation2 instanceof OpRepeat) && ((OpRepeat) operation2).min == 0) {
            return false;
        }
        return operation.getInitialCharacterClass(z).isDisjoint(operation2.getInitialCharacterClass(z));
    }

    /* renamed from: t */
    public static Operation m63584t(Operation operation) {
        return operation;
    }

    public REProgram compile(UnicodeString unicodeString) throws RESyntaxException {
        this.f101219a = unicodeString;
        this.f101220b = unicodeString.length32();
        this.f101221c = 0;
        this.f101222d = 1;
        if (this.f101230l.isLiteral()) {
            return new REProgram(m63583k(new OpAtom(this.f101219a), new OpEndProgram()), this.f101222d, this.f101230l);
        }
        if (this.f101230l.isAllowWhitespace()) {
            UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
            IntIterator codePoints = unicodeString.codePoints();
            boolean z = false;
            int i = 0;
            while (codePoints.hasNext()) {
                int next = codePoints.next();
                if (next != 92 || z) {
                    if (next == 91 && !z) {
                        i++;
                        unicodeBuilder.append(next);
                    } else if (next == 93 && !z) {
                        i--;
                        unicodeBuilder.append(next);
                    } else if (i != 0 || !Whitespace.isWhite(next)) {
                        unicodeBuilder.append(next);
                    }
                    z = false;
                } else {
                    unicodeBuilder.append(next);
                    z = true;
                }
            }
            UnicodeString unicodeString2 = unicodeBuilder.toUnicodeString();
            this.f101219a = unicodeString2;
            this.f101220b = unicodeString2.length32();
        }
        Operation m63591o = m63591o(new int[]{2});
        int i2 = this.f101221c;
        if (i2 != this.f101220b) {
            if (unicodeString.codePointAt(i2) == 41) {
                m63594r("Unmatched close paren");
            }
            m63594r("Unexpected input remains");
        }
        REProgram rEProgram = new REProgram(m63591o, this.f101222d, this.f101230l);
        if (this.f101229k) {
            rEProgram.optimizationFlags |= 1;
        }
        return rEProgram;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a1, code lost:
    
        if (r6.codePointAt(r2) != 44) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0015, code lost:
    
        if (r2.codePointAt(r1) != 123) goto L6;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m63585d() throws net.p110sf.saxon.regex.RESyntaxException {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.regex.RECompiler.m63585d():void");
    }

    /* renamed from: e */
    public CharacterClass m63586e(boolean z) throws RESyntaxException {
        int indexOf;
        int i;
        if (this.f101219a.codePointAt(this.f101221c) != 92) {
            m63587f();
        }
        if (this.f101221c + 1 == this.f101220b) {
            m63594r("Escape terminates string");
        }
        this.f101221c = this.f101221c + 2;
        int codePointAt = this.f101219a.codePointAt(r0 - 1);
        if (codePointAt == 36) {
            if (this.f101225g) {
                return new SingletonCharacterClass(codePointAt);
            }
            m63594r("In XSD, '$' must not be escaped");
            return null;
        }
        if (codePointAt != 63) {
            if (codePointAt == 73) {
                return Categories.ESCAPE_I;
            }
            if (codePointAt != 80) {
                if (codePointAt == 83) {
                    return Categories.ESCAPE_S;
                }
                if (codePointAt == 87) {
                    return Categories.ESCAPE_W;
                }
                if (codePointAt == 105) {
                    return Categories.ESCAPE_i;
                }
                if (codePointAt == 110) {
                    return new SingletonCharacterClass(10);
                }
                if (codePointAt != 112) {
                    if (codePointAt == 119) {
                        return Categories.ESCAPE_w;
                    }
                    if (codePointAt != 45 && codePointAt != 46) {
                        if (codePointAt == 67) {
                            return Categories.ESCAPE_C;
                        }
                        if (codePointAt == 68) {
                            return Categories.ESCAPE_D;
                        }
                        if (codePointAt == 99) {
                            return Categories.ESCAPE_c;
                        }
                        if (codePointAt == 100) {
                            return Categories.ESCAPE_d;
                        }
                        switch (codePointAt) {
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                                break;
                            default:
                                switch (codePointAt) {
                                    case 48:
                                        m63594r("Octal escapes not allowed");
                                        return null;
                                    case 49:
                                    case 50:
                                    case 51:
                                    case 52:
                                    case 53:
                                    case 54:
                                    case 55:
                                    case 56:
                                    case 57:
                                        if (z) {
                                            m63594r("Backreference not allowed within character class");
                                            return null;
                                        }
                                        if (!this.f101225g) {
                                            m63594r("digit not allowed after \\");
                                            return null;
                                        }
                                        int i2 = codePointAt - 48;
                                        while (true) {
                                            int i3 = this.f101221c;
                                            if (i3 < this.f101220b && (indexOf = (int) StringConstants.ZERO_TO_NINE.indexOf(this.f101219a.codePointAt(i3))) >= 0 && (i = indexOf + (i2 * 10)) <= this.f101222d - 1) {
                                                this.f101221c++;
                                                i2 = i;
                                            }
                                        }
                                        if (!this.f101228j.contains(i2)) {
                                            m63594r("invalid backreference \\" + i2 + " " + (i2 > this.f101222d - 1 ? "(no such group)" : "(group not yet closed)"));
                                        }
                                        this.f101229k = true;
                                        return new C18449a(i2);
                                    default:
                                        switch (codePointAt) {
                                            case 91:
                                            case 92:
                                            case 93:
                                            case 94:
                                                break;
                                            default:
                                                switch (codePointAt) {
                                                    case 114:
                                                        return new SingletonCharacterClass(13);
                                                    case 115:
                                                        return Categories.ESCAPE_s;
                                                    case 116:
                                                        return new SingletonCharacterClass(9);
                                                    default:
                                                        switch (codePointAt) {
                                                            case 123:
                                                            case 124:
                                                            case 125:
                                                                break;
                                                            default:
                                                                m63594r("Escape character '" + ((char) codePointAt) + "' not allowed");
                                                                return null;
                                                        }
                                                }
                                        }
                                }
                        }
                    }
                }
            }
            if (this.f101221c == this.f101220b) {
                m63594r("Expected '{' after \\" + codePointAt);
            }
            if (this.f101219a.codePointAt(this.f101221c) != 123) {
                m63594r("Expected '{' after \\" + codePointAt);
            }
            int i4 = this.f101221c;
            this.f101221c = i4 + 1;
            int indexOf2 = (int) this.f101219a.indexOf(125, i4);
            if (indexOf2 == -1) {
                m63594r("No closing '}' after \\" + codePointAt);
            }
            String obj = this.f101219a.substring(this.f101221c, indexOf2).toString();
            if (obj.length() == 1 || obj.length() == 2) {
                Categories.Category category = Categories.getCategory(obj);
                if (category == null) {
                    m63594r("Unknown character category " + obj);
                }
                this.f101221c = indexOf2 + 1;
                return codePointAt == 112 ? category : makeComplement(category);
            }
            if (!obj.startsWith("Is")) {
                m63594r("Unknown character category: " + obj);
                return null;
            }
            String substring = obj.substring(2);
            IntSet block = UnicodeBlocks.getBlock(substring);
            if (block == null) {
                if (this.f101230l.isAllowUnknownBlockNames()) {
                    m63596u("Unknown Unicode block: " + substring);
                    this.f101221c = indexOf2 + 1;
                    return EmptyCharacterClass.getComplement();
                }
                m63594r("Unknown Unicode block: " + substring);
            }
            this.f101221c = indexOf2 + 1;
            IntSetCharacterClass intSetCharacterClass = new IntSetCharacterClass(block);
            return codePointAt == 112 ? intSetCharacterClass : makeComplement(intSetCharacterClass);
        }
        return new SingletonCharacterClass(codePointAt);
    }

    /* renamed from: f */
    public void m63587f() throws Error {
        throw new AssertionError("Internal error!");
    }

    public List<String> getWarnings() {
        List<String> list = this.f101231m;
        return list == null ? Collections.emptyList() : list;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:27:0x0067. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x006a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:29:0x006d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bb  */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.regex.Operation m63588l() throws net.p110sf.saxon.regex.RESyntaxException {
        /*
            r11 = this;
            net.sf.saxon.str.UnicodeBuilder r0 = new net.sf.saxon.str.UnicodeBuilder
            r0.<init>()
            r1 = 0
            r2 = r1
            r3 = r2
        L8:
            int r4 = r11.f101221c
            int r5 = r11.f101220b
            if (r4 >= r5) goto Lb5
            int r6 = r4 + 1
            r7 = 63
            r8 = 1
            if (r6 >= r5) goto L51
            net.sf.saxon.str.UnicodeString r5 = r11.f101219a
            int r4 = r4 + 1
            long r9 = (long) r4
            int r4 = r5.codePointAt(r9)
            net.sf.saxon.str.UnicodeString r5 = r11.f101219a
            int r6 = r11.f101221c
            long r9 = (long) r6
            int r5 = r5.codePointAt(r9)
            r6 = 92
            if (r5 != r6) goto L3f
            int r5 = r11.f101221c
            r11.m63586e(r1)
            int r6 = r11.f101221c
            int r9 = r11.f101220b
            if (r6 >= r9) goto L3d
            net.sf.saxon.str.UnicodeString r4 = r11.f101219a
            long r9 = (long) r6
            int r4 = r4.codePointAt(r9)
        L3d:
            r11.f101221c = r5
        L3f:
            r5 = 42
            if (r4 == r5) goto L4e
            r5 = 43
            if (r4 == r5) goto L4e
            if (r4 == r7) goto L4e
            r5 = 123(0x7b, float:1.72E-43)
            if (r4 == r5) goto L4e
            goto L51
        L4e:
            if (r2 == 0) goto L51
            r3 = r8
        L51:
            if (r3 == 0) goto L54
            goto Lb5
        L54:
            net.sf.saxon.str.UnicodeString r4 = r11.f101219a
            int r5 = r11.f101221c
            long r5 = (long) r5
            int r4 = r4.codePointAt(r5)
            r5 = 36
            if (r4 == r5) goto L97
            r5 = 46
            if (r4 == r5) goto L95
            if (r4 == r7) goto L8e
            switch(r4) {
                case 40: goto L95;
                case 41: goto L95;
                case 42: goto L8e;
                case 43: goto L8e;
                default: goto L6a;
            }
        L6a:
            switch(r4) {
                case 91: goto L95;
                case 92: goto L77;
                case 93: goto L95;
                case 94: goto L97;
                default: goto L6d;
            }
        L6d:
            switch(r4) {
                case 123: goto L8e;
                case 124: goto L95;
                case 125: goto L71;
                default: goto L70;
            }
        L70:
            goto La1
        L71:
            java.lang.String r3 = "Unescaped right curly brace"
            r11.m63594r(r3)
            goto L95
        L77:
            int r4 = r11.f101221c
            net.sf.saxon.regex.charclass.CharacterClass r5 = r11.m63586e(r1)
            boolean r6 = r5 instanceof net.p110sf.saxon.p111z.IntValuePredicate
            if (r6 != 0) goto L84
            r11.f101221c = r4
            goto L95
        L84:
            net.sf.saxon.z.IntValuePredicate r5 = (net.p110sf.saxon.p111z.IntValuePredicate) r5
            int r4 = r5.getTarget()
            r0.append(r4)
            goto Lb1
        L8e:
            if (r2 != 0) goto L95
            java.lang.String r3 = "No expression before quantifier"
            r11.m63594r(r3)
        L95:
            r3 = r8
            goto Lb3
        L97:
            boolean r4 = r11.f101225g
            if (r4 == 0) goto L9c
            goto L95
        L9c:
            java.lang.String r4 = "goto default;"
            net.p110sf.saxon.transpile.CSharp.emitCode(r4)
        La1:
            int r4 = r11.f101221c
            int r5 = r4 + 1
            r11.f101221c = r5
            net.sf.saxon.str.UnicodeString r5 = r11.f101219a
            long r6 = (long) r4
            int r4 = r5.codePointAt(r6)
            r0.append(r4)
        Lb1:
            int r2 = r2 + 1
        Lb3:
            if (r3 == 0) goto L8
        Lb5:
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto Lbe
            r11.m63587f()
        Lbe:
            net.sf.saxon.regex.OpAtom r11 = new net.sf.saxon.regex.OpAtom
            net.sf.saxon.str.UnicodeString r0 = r0.toUnicodeString()
            r11.<init>(r0)
            net.sf.saxon.regex.Operation r11 = m63584t(r11)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.regex.RECompiler.m63588l():net.sf.saxon.regex.Operation");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0039, code lost:
    
        return new net.p110sf.saxon.regex.OpNothing();
     */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.regex.Operation m63589m() throws net.p110sf.saxon.regex.RESyntaxException {
        /*
            r6 = this;
            r0 = 1
            int[] r0 = new int[r0]
            r1 = 0
        L4:
            int r2 = r6.f101221c
            int r3 = r6.f101220b
            if (r2 >= r3) goto L32
            net.sf.saxon.str.UnicodeString r3 = r6.f101219a
            long r4 = (long) r2
            int r2 = r3.codePointAt(r4)
            r3 = 124(0x7c, float:1.74E-43)
            if (r2 == r3) goto L32
            net.sf.saxon.str.UnicodeString r2 = r6.f101219a
            int r3 = r6.f101221c
            long r3 = (long) r3
            int r2 = r2.codePointAt(r3)
            r3 = 41
            if (r2 == r3) goto L32
            r2 = 0
            r0[r2] = r2
            net.sf.saxon.regex.Operation r2 = r6.m63593q(r0)
            if (r1 != 0) goto L2d
            r1 = r2
            goto L4
        L2d:
            net.sf.saxon.regex.Operation r1 = m63583k(r1, r2)
            goto L4
        L32:
            if (r1 != 0) goto L3a
            net.sf.saxon.regex.OpNothing r6 = new net.sf.saxon.regex.OpNothing
            r6.<init>()
            return r6
        L3a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.regex.RECompiler.m63589m():net.sf.saxon.regex.Operation");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01a5, code lost:
    
        if (r9 >= r10.length) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01a7, code lost:
    
        r1.add(r10[r9]);
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0189, code lost:
    
        r1.addRange(65, 90);
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x018d, code lost:
    
        r10 = net.p110sf.saxon.regex.CaseVariants.ROMAN_VARIANTS;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0190, code lost:
    
        if (r9 >= r10.length) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0192, code lost:
    
        r1.add(r10[r9]);
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x016b, code lost:
    
        if (r13 <= r9) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x016d, code lost:
    
        m63594r("Bad character range: start > end");
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0172, code lost:
    
        r1.addRange(r13, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x017b, code lost:
    
        if (r16.f101230l.isCaseIndependent() == false) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0185, code lost:
    
        if (r13 != 97) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0187, code lost:
    
        if (r9 != 122) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x019a, code lost:
    
        if (r13 != 65) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x019c, code lost:
    
        if (r9 != 90) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01af, code lost:
    
        if (r13 > r9) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01b1, code lost:
    
        r10 = net.p110sf.saxon.regex.CaseVariants.getCaseVariants(r13);
        r12 = r10.length;
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01b7, code lost:
    
        if (r14 >= r12) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01b9, code lost:
    
        r1.add(r10[r14]);
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01c1, code lost:
    
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x019e, code lost:
    
        r1.addRange(97, 122);
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01a2, code lost:
    
        r10 = net.p110sf.saxon.regex.CaseVariants.ROMAN_VARIANTS;
     */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:174:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x016b A[EDGE_INSN: B:75:0x016b->B:76:0x016b BREAK  A[LOOP:1: B:16:0x007b->B:31:0x007b], SYNTHETIC] */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.regex.charclass.CharacterClass m63590n() throws net.p110sf.saxon.regex.RESyntaxException {
        /*
            Method dump skipped, instructions count: 594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.regex.RECompiler.m63590n():net.sf.saxon.regex.charclass.CharacterClass");
    }

    /* renamed from: o */
    public final Operation m63591o(int[] iArr) throws RESyntaxException {
        int i;
        boolean z;
        ArrayList arrayList = new ArrayList();
        int i2 = this.f101222d;
        char c = 2;
        if ((iArr[0] & 2) == 0 && this.f101219a.codePointAt(this.f101221c) == 40) {
            if (this.f101221c + 2 < this.f101220b && this.f101219a.codePointAt(r3 + 1) == 63 && this.f101219a.codePointAt(this.f101221c + 2) == 58) {
                if (!this.f101226h) {
                    m63594r("Non-capturing groups allowed only in XPath3.0");
                }
                this.f101221c += 3;
                i = 0;
                z = false;
            } else {
                this.f101221c++;
                i = this.f101222d;
                this.f101222d = i + 1;
                c = 1;
                z = true;
            }
        } else {
            c = 65535;
            i = 0;
            z = true;
        }
        iArr[0] = iArr[0] & (-3);
        arrayList.add(m63589m());
        while (true) {
            int i3 = this.f101221c;
            if (i3 >= this.f101220b || this.f101219a.codePointAt(i3) != 124) {
                break;
            }
            this.f101221c++;
            arrayList.add(m63589m());
        }
        Operation opChoice = arrayList.size() == 1 ? (Operation) arrayList.get(0) : new OpChoice(arrayList);
        if (c <= 0) {
            return m63583k(opChoice, new OpEndProgram());
        }
        int i4 = this.f101221c;
        if (i4 >= this.f101220b || this.f101219a.codePointAt(i4) != 41) {
            m63594r("Missing close paren");
        } else {
            this.f101221c++;
        }
        if (!z) {
            return opChoice;
        }
        OpCapture opCapture = new OpCapture(opChoice, i);
        this.f101228j.add(i2);
        return opCapture;
    }

    /* renamed from: p */
    public Operation m63592p(int[] iArr) throws RESyntaxException {
        int codePointAt = this.f101219a.codePointAt(this.f101221c);
        if (codePointAt == 0) {
            m63594r("Unexpected end of input");
        } else if (codePointAt != 36) {
            if (codePointAt == 46) {
                this.f101221c++;
                return m63584t(new OpCharClass(this.f101230l.isSingleLine() ? IntSetPredicate.ALWAYS_TRUE : IntPredicateLambda.m64716of(new IntPredicate() { // from class: com.sunia.HTREnginev2.wbl
                    @Override // java.util.function.IntPredicate
                    public final boolean test(int i) {
                        boolean m63582j;
                        m63582j = RECompiler.m63582j(i);
                        return m63582j;
                    }
                })));
            }
            if (codePointAt != 63 && codePointAt != 123) {
                if (codePointAt != 124) {
                    switch (codePointAt) {
                        case 40:
                            return m63591o(iArr);
                        case 41:
                            m63594r("Unexpected closing ')'");
                            break;
                        case 42:
                        case 43:
                            break;
                        default:
                            switch (codePointAt) {
                                case 91:
                                    return m63584t(new OpCharClass(m63590n()));
                                case 92:
                                    int i = this.f101221c;
                                    CharacterClass m63586e = m63586e(false);
                                    if (m63586e instanceof C18449a) {
                                        int codepoint = ((C18449a) m63586e).getCodepoint();
                                        if (this.f101222d <= codepoint) {
                                            m63594r("Bad backreference");
                                        }
                                        return m63584t(new OpBackReference(codepoint));
                                    }
                                    if (!(m63586e instanceof IntSingletonSet)) {
                                        return m63584t(new OpCharClass(m63586e));
                                    }
                                    this.f101221c = i;
                                    break;
                                case 93:
                                    m63594r("Unexpected closing ']'");
                                    break;
                                case 94:
                                    if (this.f101225g) {
                                        this.f101221c++;
                                        return m63584t(new OpBOL());
                                    }
                                    break;
                            }
                    }
                } else {
                    m63587f();
                }
            }
            m63594r("No expression before quantifier");
        } else if (this.f101225g) {
            this.f101221c++;
            return m63584t(new OpEOL());
        }
        return m63588l();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002d, code lost:
    
        if (r12 != 123) goto L33;
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.regex.Operation m63593q(int[] r12) throws net.p110sf.saxon.regex.RESyntaxException {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.regex.RECompiler.m63593q(int[]):net.sf.saxon.regex.Operation");
    }

    /* renamed from: r */
    public void m63594r(String str) throws RESyntaxException {
        throw new RESyntaxException(str, this.f101221c);
    }

    /* renamed from: s */
    public final boolean m63595s(int... iArr) {
        if (this.f101221c + iArr.length > this.f101220b) {
            return false;
        }
        for (int i = 0; i < iArr.length; i++) {
            if (this.f101219a.codePointAt(this.f101221c + i) != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    public void setFlags(REFlags rEFlags) {
        this.f101230l = rEFlags;
        this.f101225g = rEFlags.isAllowsXPath20Extensions();
        this.f101226h = rEFlags.isAllowsXPath30Extensions();
        this.f101227i = rEFlags.isAllowsXSD11Syntax();
    }

    /* renamed from: u */
    public final void m63596u(String str) {
        if (this.f101231m == null) {
            this.f101231m = new ArrayList(4);
        }
        this.f101231m.add(str);
    }
}
