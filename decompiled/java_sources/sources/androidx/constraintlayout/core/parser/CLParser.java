package androidx.constraintlayout.core.parser;

/* loaded from: classes3.dex */
public class CLParser {

    /* renamed from: d */
    public static boolean f3086d;

    /* renamed from: a */
    public String f3087a;

    /* renamed from: b */
    public boolean f3088b = false;

    /* renamed from: c */
    public int f3089c;

    /* loaded from: classes3.dex */
    public enum TYPE {
        UNKNOWN,
        OBJECT,
        ARRAY,
        NUMBER,
        STRING,
        KEY,
        TOKEN
    }

    /* renamed from: androidx.constraintlayout.core.parser.CLParser$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C0407a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3090a;

        static {
            int[] iArr = new int[TYPE.values().length];
            f3090a = iArr;
            try {
                iArr[TYPE.OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3090a[TYPE.ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3090a[TYPE.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3090a[TYPE.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3090a[TYPE.KEY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3090a[TYPE.TOKEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public CLParser(String str) {
        this.f3087a = str;
    }

    public static CLObject parse(String str) throws CLParsingException {
        return new CLParser(str).parse();
    }

    /* renamed from: a */
    public final CLElement m1531a(CLElement cLElement, int i, TYPE type, boolean z, char[] cArr) {
        CLElement allocate;
        if (f3086d) {
            System.out.println("CREATE " + type + " at " + cArr[i]);
        }
        switch (C0407a.f3090a[type.ordinal()]) {
            case 1:
                allocate = CLObject.allocate(cArr);
                i++;
                break;
            case 2:
                allocate = CLArray.allocate(cArr);
                i++;
                break;
            case 3:
                allocate = CLString.allocate(cArr);
                break;
            case 4:
                allocate = CLNumber.allocate(cArr);
                break;
            case 5:
                allocate = CLKey.allocate(cArr);
                break;
            case 6:
                allocate = CLToken.allocate(cArr);
                break;
            default:
                allocate = null;
                break;
        }
        if (allocate == null) {
            return null;
        }
        allocate.setLine(this.f3089c);
        if (z) {
            allocate.setStart(i);
        }
        if (cLElement instanceof CLContainer) {
            allocate.setContainer((CLContainer) cLElement);
        }
        return allocate;
    }

    /* renamed from: b */
    public final CLElement m1532b(int i, char c, CLElement cLElement, char[] cArr) throws CLParsingException {
        if (c == '\t' || c == '\n' || c == '\r' || c == ' ') {
            return cLElement;
        }
        if (c == '\"' || c == '\'') {
            return cLElement instanceof CLObject ? m1531a(cLElement, i, TYPE.KEY, true, cArr) : m1531a(cLElement, i, TYPE.STRING, true, cArr);
        }
        if (c == '[') {
            return m1531a(cLElement, i, TYPE.ARRAY, true, cArr);
        }
        if (c != ']') {
            if (c == '{') {
                return m1531a(cLElement, i, TYPE.OBJECT, true, cArr);
            }
            if (c != '}') {
                switch (c) {
                    case '+':
                    case '-':
                    case '.':
                    case '0':
                    case '1':
                    case '2':
                    case '3':
                    case '4':
                    case '5':
                    case '6':
                    case '7':
                    case '8':
                    case '9':
                        return m1531a(cLElement, i, TYPE.NUMBER, true, cArr);
                    case ',':
                    case ':':
                        return cLElement;
                    case '/':
                        int i2 = i + 1;
                        if (i2 >= cArr.length || cArr[i2] != '/') {
                            return cLElement;
                        }
                        this.f3088b = true;
                        return cLElement;
                    default:
                        if (!(cLElement instanceof CLContainer) || (cLElement instanceof CLObject)) {
                            return m1531a(cLElement, i, TYPE.KEY, true, cArr);
                        }
                        CLElement m1531a = m1531a(cLElement, i, TYPE.TOKEN, true, cArr);
                        CLToken cLToken = (CLToken) m1531a;
                        if (cLToken.validate(c, i)) {
                            return m1531a;
                        }
                        throw new CLParsingException("incorrect token <" + c + "> at line " + this.f3089c, cLToken);
                }
            }
        }
        cLElement.setEnd(i - 1);
        CLElement container = cLElement.getContainer();
        container.setEnd(i);
        return container;
    }

    public CLObject parse() throws CLParsingException {
        char[] charArray = this.f3087a.toCharArray();
        int length = charArray.length;
        int i = 1;
        this.f3089c = 1;
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                i2 = -1;
                break;
            }
            char c = charArray[i2];
            if (c == '{') {
                break;
            }
            if (c == '\n') {
                this.f3089c++;
            }
            i2++;
        }
        if (i2 != -1) {
            CLObject allocate = CLObject.allocate(charArray);
            allocate.setLine(this.f3089c);
            allocate.setStart(i2);
            int i3 = i2 + 1;
            CLElement cLElement = allocate;
            while (i3 < length) {
                char c2 = charArray[i3];
                if (c2 == '\n') {
                    this.f3089c += i;
                }
                if (this.f3088b) {
                    if (c2 == '\n') {
                        this.f3088b = z;
                    } else {
                        continue;
                        i3++;
                        i = 1;
                        z = false;
                    }
                }
                if (cLElement == null) {
                    break;
                }
                if (cLElement.isDone()) {
                    cLElement = m1532b(i3, c2, cLElement, charArray);
                } else if (cLElement instanceof CLObject) {
                    if (c2 == '}') {
                        cLElement.setEnd(i3 - 1);
                    } else {
                        cLElement = m1532b(i3, c2, cLElement, charArray);
                    }
                } else if (!(cLElement instanceof CLArray)) {
                    boolean z2 = cLElement instanceof CLString;
                    if (z2) {
                        long j = cLElement.start;
                        if (charArray[(int) j] == c2) {
                            cLElement.setStart(j + 1);
                            cLElement.setEnd(i3 - 1);
                        }
                    } else {
                        if (cLElement instanceof CLToken) {
                            CLToken cLToken = (CLToken) cLElement;
                            if (!cLToken.validate(c2, i3)) {
                                throw new CLParsingException("parsing incorrect token " + cLToken.content() + " at line " + this.f3089c, cLToken);
                            }
                        }
                        if ((cLElement instanceof CLKey) || z2) {
                            long j2 = cLElement.start;
                            char c3 = charArray[(int) j2];
                            if ((c3 == '\'' || c3 == '\"') && c3 == c2) {
                                cLElement.setStart(j2 + 1);
                                cLElement.setEnd(i3 - 1);
                            }
                        }
                        if (!cLElement.isDone() && (c2 == '}' || c2 == ']' || c2 == ',' || c2 == ' ' || c2 == '\t' || c2 == '\r' || c2 == '\n' || c2 == ':')) {
                            long j3 = i3 - 1;
                            cLElement.setEnd(j3);
                            if (c2 == '}' || c2 == ']') {
                                cLElement = cLElement.getContainer();
                                cLElement.setEnd(j3);
                                if (cLElement instanceof CLKey) {
                                    cLElement = cLElement.getContainer();
                                    cLElement.setEnd(j3);
                                }
                            }
                        }
                    }
                } else if (c2 == ']') {
                    cLElement.setEnd(i3 - 1);
                } else {
                    cLElement = m1532b(i3, c2, cLElement, charArray);
                }
                if (cLElement.isDone() && (!(cLElement instanceof CLKey) || ((CLKey) cLElement).f3078g.size() > 0)) {
                    cLElement = cLElement.getContainer();
                }
                i3++;
                i = 1;
                z = false;
            }
            while (cLElement != null && !cLElement.isDone()) {
                if (cLElement instanceof CLString) {
                    cLElement.setStart(((int) cLElement.start) + 1);
                }
                cLElement.setEnd(length - 1);
                cLElement = cLElement.getContainer();
            }
            if (f3086d) {
                System.out.println("Root: " + allocate.toJSON());
            }
            return allocate;
        }
        throw new CLParsingException("invalid json content", null);
    }
}
