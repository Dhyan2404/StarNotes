.class public abstract Lnet/sf/saxon/expr/number/AbstractNumberer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/Numberer;


# static fields
.field public static final LOWER_CASE:I = 0x1

.field public static final TITLE_CASE:I = 0x2

.field public static final UPPER_CASE:I = 0x0

.field public static final c:[Ljava/lang/String;

.field protected static final cyrillicLower:Ljava/lang/String; = "\u0430\u0431\u0432\u0433\u0434\u0435\u0436\u0437\u0438\u043a\u043b\u043c\u043d\u043e\u043f\u0440\u0441\u0441\u0443\u0444\u0445\u0446\u0447\u0448\u0449\u044b\u044d\u044e\u044f"

.field protected static final cyrillicUpper:Ljava/lang/String; = "\u0410\u0411\u0412\u0413\u0414\u0415\u0416\u0417\u0418\u041a\u041b\u041c\u041d\u041e\u041f\u0420\u0421\u0421\u0423\u0424\u0425\u0426\u0427\u0428\u0429\u042b\u042d\u042e\u042f"

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:[I

.field protected static final greekLower:Ljava/lang/String; = "\u03b1\u03b2\u03b3\u03b4\u03b5\u03b6\u03b7\u03b8\u03b9\u03ba\u03bb\u03bc\u03bd\u03be\u03bf\u03c0\u03c1\u03c2\u03c3\u03c4\u03c5\u03c6\u03c7\u03c8\u03c9"

.field protected static final greekUpper:Ljava/lang/String; = "\u0391\u0392\u0393\u0394\u0395\u0396\u0397\u0398\u0399\u039a\u039b\u039c\u039d\u039e\u039f\u03a0\u03a1\u03a2\u03a3\u03a4\u03a5\u03a6\u03a7\u03a8\u03a9"

.field protected static final hebrew:Ljava/lang/String; = "\u05d0\u05d1\u05d2\u05d3\u05d4\u05d5\u05d6\u05d7\u05d8\u05d9\u05db\u05dc\u05de\u05e0\u05e1\u05e2\u05e4\u05e6\u05e7\u05e8\u05e9\u05ea"

.field protected static final hiraganaA:Ljava/lang/String; = "\u3042\u3044\u3046\u3048\u304a\u304b\u304d\u304f\u3051\u3053\u3055\u3057\u3059\u305b\u305d\u305f\u3061\u3064\u3066\u3068\u306a\u306b\u306c\u306d\u306e\u306f\u3072\u3075\u3078\u307b\u307e\u307f\u3080\u3081\u3082\u3084\u3086\u3088\u3089\u308a\u308b\u308c\u308d\u308f\u3092\u3093"

.field protected static final hiraganaI:Ljava/lang/String; = "\u3044\u308d\u306f\u306b\u307b\u3078\u3068\u3061\u308a\u306c\u308b\u3092\u308f\u304b\u3088\u305f\u308c\u305d\u3064\u306d\u306a\u3089\u3080\u3046\u3090\u306e\u304a\u304f\u3084\u307e\u3051\u3075\u3053\u3048\u3066\u3042\u3055\u304d\u3086\u3081\u307f\u3057\u3091\u3072\u3082\u305b\u3059"

.field protected static final katakanaA:Ljava/lang/String; = "\u30a2\u30a4\u30a6\u30a8\u30aa\u30ab\u30ad\u30af\u30b1\u30b3\u30b5\u30b7\u30b9\u30bb\u30bd\u30bf\u30c1\u30c4\u30c6\u30c8\u30ca\u30cb\u30cc\u30cd\u30ce\u30cf\u30d2\u30d5\u30d8\u30db\u30de\u30df\u30e0\u30e1\u30e2\u30e4\u30e6\u30e8\u30e9\u30ea\u30eb\u30ec\u30ed\u30ef\u30f2\u30f3"

.field protected static final katakanaI:Ljava/lang/String; = "\u30a4\u30ed\u30cf\u30cb\u30db\u30d8\u30c8\u30c1\u30ea\u30cc\u30eb\u30f2\u30ef\u30ab\u30e8\u30bf\u30ec\u30bd\u30c4\u30cd\u30ca\u30e9\u30e0\u30a6\u30f0\u30ce\u30aa\u30af\u30e4\u30de\u30b1\u30d5\u30b3\u30a8\u30c6\u30a2\u30b5\u30ad\u30e6\u30e1\u30df\u30b7\u30f1\u30d2\u30e2\u30bb\u30b9"

.field protected static final latinLower:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz"

.field protected static final latinUpper:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field protected static final westernDigits:[I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lnet/sf/saxon/expr/number/AbstractNumberer;->westernDigits:[I

    const-string v2, ""

    const-string v3, "m"

    const-string v4, "mm"

    const-string v5, "mmm"

    const-string v6, "mmmm"

    const-string v7, "mmmmm"

    const-string v8, "mmmmmm"

    const-string v9, "mmmmmmm"

    const-string v10, "mmmmmmmm"

    const-string v11, "mmmmmmmmm"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/expr/number/AbstractNumberer;->c:[Ljava/lang/String;

    const-string v2, ""

    const-string v3, "c"

    const-string v4, "cc"

    const-string v5, "ccc"

    const-string v6, "cd"

    const-string v7, "d"

    const-string v8, "dc"

    const-string v9, "dcc"

    const-string v10, "dccc"

    const-string v11, "cm"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/expr/number/AbstractNumberer;->d:[Ljava/lang/String;

    const-string v2, ""

    const-string v3, "x"

    const-string v4, "xx"

    const-string v5, "xxx"

    const-string v6, "xl"

    const-string v7, "l"

    const-string v8, "lx"

    const-string v9, "lxx"

    const-string v10, "lxxx"

    const-string v11, "xc"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/expr/number/AbstractNumberer;->e:[Ljava/lang/String;

    const-string v2, ""

    const-string v3, "i"

    const-string v4, "ii"

    const-string v5, "iii"

    const-string v6, "iv"

    const-string v7, "v"

    const-string v8, "vi"

    const-string v9, "vii"

    const-string v10, "viii"

    const-string v11, "ix"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/expr/number/AbstractNumberer;->f:[Ljava/lang/String;

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnet/sf/saxon/expr/number/AbstractNumberer;->g:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
    .end array-data

    :array_1
    .array-data 4
        0x3007
        0x4e00
        0x4e8c
        0x4e09
        0x56db
        0x4e94
        0x516d
        0x4e03
        0x516b
        0x4e5d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/StringBuilder;Z)V
    .locals 4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    const/4 v1, 0x1

    if-gt p0, v0, :cond_2

    if-ne p0, v1, :cond_1

    if-nez p2, :cond_6

    :cond_1
    sget-object p2, Lnet/sf/saxon/expr/number/AbstractNumberer;->g:[I

    aget p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 p2, 0x5341

    const/16 v0, 0xa

    if-ne p0, v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v2, 0x63

    const/4 v3, 0x0

    if-gt p0, v2, :cond_4

    div-int/lit8 v2, p0, 0xa

    invoke-static {v2, p1, v1}, Lnet/sf/saxon/expr/number/AbstractNumberer;->a(ILjava/lang/StringBuilder;Z)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    rem-int/2addr p0, v0

    invoke-static {p0, p1, v3}, Lnet/sf/saxon/expr/number/AbstractNumberer;->a(ILjava/lang/StringBuilder;Z)V

    goto :goto_0

    :cond_4
    const/16 p2, 0x3e7

    if-gt p0, p2, :cond_5

    div-int/lit8 p2, p0, 0x64

    invoke-static {p2, p1, v1}, Lnet/sf/saxon/expr/number/AbstractNumberer;->a(ILjava/lang/StringBuilder;Z)V

    const/16 p2, 0x767e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    rem-int/lit8 p0, p0, 0x64

    invoke-static {p0, p1, v3}, Lnet/sf/saxon/expr/number/AbstractNumberer;->a(ILjava/lang/StringBuilder;Z)V

    goto :goto_0

    :cond_5
    const/16 p2, 0x270f

    if-gt p0, p2, :cond_6

    div-int/lit16 p2, p0, 0x3e8

    invoke-static {p2, p1, v1}, Lnet/sf/saxon/expr/number/AbstractNumberer;->a(ILjava/lang/StringBuilder;Z)V

    const/16 p2, 0x5343

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    rem-int/lit16 p0, p0, 0x3e8

    invoke-static {p0, p1, v3}, Lnet/sf/saxon/expr/number/AbstractNumberer;->a(ILjava/lang/StringBuilder;Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static convertDigitSystem(J[II)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, p0, v5

    if-lez v5, :cond_0

    int-to-long v5, v2

    rem-long v7, p0, v5

    long-to-int v7, v7

    aget v7, p2, v7

    invoke-static {v3, v7}, Lnet/sf/saxon/str/StringTool;->prependWideChar(Ljava/lang/StringBuilder;I)V

    add-int/lit8 v4, v4, 0x1

    div-long/2addr p0, v5

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_1
    sub-int p1, p3, v4

    if-ge p0, p1, :cond_1

    aget p1, p2, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toRoman(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    const-wide/16 v0, 0x270f

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/sf/saxon/expr/number/AbstractNumberer;->c:[Ljava/lang/String;

    long-to-int p0, p0

    div-int/lit16 p1, p0, 0x3e8

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lnet/sf/saxon/expr/number/AbstractNumberer;->d:[Ljava/lang/String;

    div-int/lit8 v1, p0, 0x64

    rem-int/lit8 v1, v1, 0xa

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lnet/sf/saxon/expr/number/AbstractNumberer;->e:[Ljava/lang/String;

    div-int/lit8 v1, p0, 0xa

    rem-int/lit8 v1, v1, 0xa

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lnet/sf/saxon/expr/number/AbstractNumberer;->f:[Ljava/lang/String;

    rem-int/lit8 p0, p0, 0xa

    aget-object p0, p1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public alphaDefault(JCLjava/lang/StringBuilder;)V
    .locals 3

    move v0, p3

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-char v2, v1

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toAlpha(JII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b(J[IILnet/sf/saxon/expr/number/NumericGroupFormatter;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lnet/sf/saxon/expr/number/AbstractNumberer;->convertDigitSystem(J[II)Ljava/lang/String;

    move-result-object p0

    if-nez p5, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p5, p0}, Lnet/sf/saxon/expr/number/NumericGroupFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract dayName(III)Ljava/lang/String;
.end method

.method public defaultedLocale()Ljava/util/Locale;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final format(JLnet/sf/saxon/str/UnicodeString;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v4, Lnet/sf/saxon/expr/number/RegularGroupFormatter;

    .line 2
    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v0

    invoke-direct {v4, p4, p5, v0}, Lnet/sf/saxon/expr/number/RegularGroupFormatter;-><init>(ILjava/lang/String;Lnet/sf/saxon/str/UnicodeString;)V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p6

    move-object v6, p7

    .line 3
    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/expr/number/AbstractNumberer;->format(JLnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/number/NumericGroupFormatter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public format(JLnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/number/NumericGroupFormatter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v9, p6

    const-wide/16 v2, 0x0

    cmp-long v4, v7, v2

    const-string v5, ""

    if-gez v4, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_39

    .line 5
    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v10

    cmp-long v10, v10, v2

    if-nez v10, :cond_1

    goto/16 :goto_d

    .line 6
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v10

    .line 7
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v12, 0x10

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v0

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "traditional"

    const/4 v13, 0x0

    const-wide/16 v14, 0x14

    const/4 v3, 0x1

    const-wide/16 v16, 0x1

    const-wide/16 v18, 0xa

    const-string v20, "0"

    sparse-switch v0, :sswitch_data_0

    .line 10
    invoke-static {v0}, Lnet/sf/saxon/expr/number/Alphanumeric;->getDigitValue(I)I

    move-result v1

    if-ltz v1, :cond_36

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    new-array v3, v1, [I

    goto/16 :goto_b

    :sswitch_0
    if-nez v4, :cond_2

    const v0, 0x1f101

    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    cmp-long v0, v7, v18

    if-ltz v0, :cond_3

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const v0, 0x1f102

    long-to-int v1, v7

    add-int/2addr v1, v0

    sub-int/2addr v1, v3

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1
    if-eqz v4, :cond_5

    cmp-long v0, v7, v18

    if-ltz v0, :cond_4

    goto :goto_0

    :cond_4
    const v0, 0x1d360

    long-to-int v1, v7

    add-int/2addr v1, v0

    sub-int/2addr v1, v3

    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 18
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_2
    if-eqz v4, :cond_7

    cmp-long v0, v7, v18

    if-lez v0, :cond_6

    goto :goto_1

    :cond_6
    const v0, 0x11052

    long-to-int v1, v7

    add-int/2addr v1, v0

    sub-int/2addr v1, v3

    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 21
    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_3
    if-eqz v4, :cond_9

    cmp-long v0, v7, v18

    if-lez v0, :cond_8

    goto :goto_2

    :cond_8
    const v0, 0x10e60

    long-to-int v1, v7

    add-int/2addr v1, v0

    sub-int/2addr v1, v3

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24
    :cond_9
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_4
    if-eqz v4, :cond_b

    cmp-long v0, v7, v18

    if-lez v0, :cond_a

    goto :goto_3

    :cond_a
    const v0, 0x10107

    long-to-int v1, v7

    add-int/2addr v1, v0

    sub-int/2addr v1, v3

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 27
    :cond_b
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 28
    :sswitch_5
    invoke-virtual/range {p0 .. p2}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toJapanese(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_6
    if-eqz v4, :cond_d

    cmp-long v0, v7, v18

    if-lez v0, :cond_c

    goto :goto_4

    .line 29
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3280

    add-long/2addr v1, v7

    sub-long v1, v1, v16

    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30
    :cond_d
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_7
    if-eqz v4, :cond_f

    cmp-long v0, v7, v18

    if-lez v0, :cond_e

    goto :goto_5

    .line 31
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3220

    add-long/2addr v1, v7

    sub-long v1, v1, v16

    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 32
    :cond_f
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_8
    if-nez v4, :cond_10

    return-object v20

    :cond_10
    const-string v0, "\u30a4\u30ed\u30cf\u30cb\u30db\u30d8\u30c8\u30c1\u30ea\u30cc\u30eb\u30f2\u30ef\u30ab\u30e8\u30bf\u30ec\u30bd\u30c4\u30cd\u30ca\u30e9\u30e0\u30a6\u30f0\u30ce\u30aa\u30af\u30e4\u30de\u30b1\u30d5\u30b3\u30a8\u30c6\u30a2\u30b5\u30ad\u30e6\u30e1\u30df\u30b7\u30f1\u30d2\u30e2\u30bb\u30b9"

    .line 33
    invoke-virtual {v6, v7, v8, v0}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toAlphaSequence(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_9
    if-nez v4, :cond_11

    return-object v20

    :cond_11
    const-string v0, "\u30a2\u30a4\u30a6\u30a8\u30aa\u30ab\u30ad\u30af\u30b1\u30b3\u30b5\u30b7\u30b9\u30bb\u30bd\u30bf\u30c1\u30c4\u30c6\u30c8\u30ca\u30cb\u30cc\u30cd\u30ce\u30cf\u30d2\u30d5\u30d8\u30db\u30de\u30df\u30e0\u30e1\u30e2\u30e4\u30e6\u30e8\u30e9\u30ea\u30eb\u30ec\u30ed\u30ef\u30f2\u30f3"

    .line 34
    invoke-virtual {v6, v7, v8, v0}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toAlphaSequence(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_a
    if-nez v4, :cond_12

    return-object v20

    :cond_12
    const-string v0, "\u3044\u308d\u306f\u306b\u307b\u3078\u3068\u3061\u308a\u306c\u308b\u3092\u308f\u304b\u3088\u305f\u308c\u305d\u3064\u306d\u306a\u3089\u3080\u3046\u3090\u306e\u304a\u304f\u3084\u307e\u3051\u3075\u3053\u3048\u3066\u3042\u3055\u304d\u3086\u3081\u307f\u3057\u3091\u3072\u3082\u305b\u3059"

    .line 35
    invoke-virtual {v6, v7, v8, v0}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toAlphaSequence(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_b
    if-nez v4, :cond_13

    return-object v20

    :cond_13
    const-string v0, "\u3042\u3044\u3046\u3048\u304a\u304b\u304d\u304f\u3051\u3053\u3055\u3057\u3059\u305b\u305d\u305f\u3061\u3064\u3066\u3068\u306a\u306b\u306c\u306d\u306e\u306f\u3072\u3075\u3078\u307b\u307e\u307f\u3080\u3081\u3082\u3084\u3086\u3088\u3089\u308a\u308b\u308c\u308d\u308f\u3092\u3093"

    .line 36
    invoke-virtual {v6, v7, v8, v0}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toAlphaSequence(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_c
    if-nez v4, :cond_14

    const-string v0, "\ud83c\udd0c"

    return-object v0

    :cond_14
    cmp-long v0, v7, v18

    if-lez v0, :cond_15

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 38
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x278a

    add-long/2addr v1, v7

    sub-long v1, v1, v16

    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_d
    if-nez v4, :cond_16

    const-string v0, "\ud83c\udd0b"

    return-object v0

    :cond_16
    cmp-long v0, v7, v18

    if-lez v0, :cond_17

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 40
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x2780

    add-long/2addr v1, v7

    sub-long v1, v1, v16

    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_e
    if-nez v4, :cond_18

    const-string v0, "\u24ff"

    return-object v0

    :cond_18
    cmp-long v0, v7, v18

    if-lez v0, :cond_19

    cmp-long v0, v7, v14

    if-gtz v0, :cond_19

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x24eb

    add-long/2addr v1, v7

    const-wide/16 v3, 0xb

    sub-long/2addr v1, v3

    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    cmp-long v0, v7, v14

    if-lez v0, :cond_1a

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x2776

    add-long/2addr v1, v7

    sub-long v1, v1, v16

    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_f
    if-eqz v4, :cond_1c

    cmp-long v0, v7, v18

    if-lez v0, :cond_1b

    goto :goto_6

    .line 44
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x24f5

    add-long/2addr v1, v7

    sub-long v1, v1, v16

    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 45
    :cond_1c
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_10
    if-nez v4, :cond_1d

    const-string v0, "\ud83c\udd00"

    return-object v0

    :cond_1d
    cmp-long v0, v7, v14

    if-lez v0, :cond_1e

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x2488

    add-long/2addr v1, v7

    sub-long v1, v1, v16

    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_11
    if-eqz v4, :cond_20

    cmp-long v0, v7, v14

    if-lez v0, :cond_1f

    goto :goto_7

    .line 48
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x2474

    add-long/2addr v1, v7

    sub-long v1, v1, v16

    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 49
    :cond_20
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_12
    if-nez v4, :cond_21

    const-string v0, "\u24ea"

    return-object v0

    :cond_21
    cmp-long v0, v7, v14

    const-wide/16 v1, 0x23

    if-lez v0, :cond_22

    cmp-long v0, v7, v1

    if-gtz v0, :cond_22

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3251

    add-long/2addr v1, v7

    const-wide/16 v3, 0x15

    sub-long/2addr v1, v3

    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    cmp-long v0, v7, v1

    const-wide/16 v1, 0x32

    if-lez v0, :cond_23

    cmp-long v0, v7, v1

    if-gtz v0, :cond_23

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x32b1

    add-long/2addr v1, v7

    const-wide/16 v3, 0x24

    sub-long/2addr v1, v3

    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    cmp-long v0, v7, v1

    if-lez v0, :cond_24

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x2460

    add-long/2addr v1, v7

    sub-long v1, v1, v16

    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_13
    if-nez v4, :cond_25

    return-object v20

    :cond_25
    const-string v0, "\u05d0\u05d1\u05d2\u05d3\u05d4\u05d5\u05d6\u05d7\u05d8\u05d9\u05db\u05dc\u05de\u05e0\u05e1\u05e2\u05e4\u05e6\u05e7\u05e8\u05e9\u05ea"

    .line 54
    invoke-virtual {v6, v7, v8, v0}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toAlphaSequence(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_14
    if-nez v4, :cond_26

    return-object v20

    :cond_26
    const-string v0, "\u0430\u0431\u0432\u0433\u0434\u0435\u0436\u0437\u0438\u043a\u043b\u043c\u043d\u043e\u043f\u0440\u0441\u0441\u0443\u0444\u0445\u0446\u0447\u0448\u0449\u044b\u044d\u044e\u044f"

    .line 55
    invoke-virtual {v6, v7, v8, v0}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toAlphaSequence(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_15
    if-nez v4, :cond_27

    return-object v20

    :cond_27
    const-string v0, "\u0410\u0411\u0412\u0413\u0414\u0415\u0416\u0417\u0418\u041a\u041b\u041c\u041d\u041e\u041f\u0420\u0421\u0421\u0423\u0424\u0425\u0426\u0427\u0428\u0429\u042b\u042d\u042e\u042f"

    .line 56
    invoke-virtual {v6, v7, v8, v0}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toAlphaSequence(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_16
    if-nez v4, :cond_28

    return-object v20

    :cond_28
    const-string v0, "\u03b1\u03b2\u03b3\u03b4\u03b5\u03b6\u03b7\u03b8\u03b9\u03ba\u03bb\u03bc\u03bd\u03be\u03bf\u03c0\u03c1\u03c2\u03c3\u03c4\u03c5\u03c6\u03c7\u03c8\u03c9"

    .line 57
    invoke-virtual {v6, v7, v8, v0}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toAlphaSequence(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_17
    if-nez v4, :cond_29

    return-object v20

    :cond_29
    const-string v0, "\u0391\u0392\u0393\u0394\u0395\u0396\u0397\u0398\u0399\u039a\u039b\u039c\u039d\u039e\u039f\u03a0\u03a1\u03a2\u03a3\u03a4\u03a5\u03a6\u03a7\u03a8\u03a9"

    .line 58
    invoke-virtual {v6, v7, v8, v0}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toAlphaSequence(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_18
    if-nez v4, :cond_2a

    return-object v20

    :cond_2a
    if-eqz v1, :cond_2c

    .line 59
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 60
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_8

    :cond_2b
    const/16 v0, 0x69

    .line 61
    invoke-virtual {v6, v7, v8, v0, v11}, Lnet/sf/saxon/expr/number/AbstractNumberer;->alphaDefault(JCLjava/lang/StringBuilder;)V

    goto/16 :goto_c

    .line 62
    :cond_2c
    :goto_8
    invoke-static/range {p1 .. p2}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toRoman(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_19
    if-nez v4, :cond_2d

    return-object v20

    :cond_2d
    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    .line 63
    invoke-virtual {v6, v7, v8, v0}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toAlphaSequence(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1a
    if-ne v10, v3, :cond_2e

    const/16 v1, 0x57

    if-ne v0, v1, :cond_2f

    move v3, v13

    goto :goto_9

    :cond_2e
    const/4 v3, 0x2

    :cond_2f
    :goto_9
    if-eqz v9, :cond_30

    .line 64
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 65
    invoke-virtual {v6, v9, v7, v8, v3}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toOrdinalWords(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 66
    :cond_30
    invoke-virtual {v6, v7, v8, v3}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toWords(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1b
    if-nez v4, :cond_31

    return-object v20

    :cond_31
    if-eqz v1, :cond_33

    .line 67
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 68
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_a

    :cond_32
    const/16 v0, 0x49

    .line 69
    invoke-virtual {v6, v7, v8, v0, v11}, Lnet/sf/saxon/expr/number/AbstractNumberer;->alphaDefault(JCLjava/lang/StringBuilder;)V

    goto/16 :goto_c

    .line 70
    :cond_33
    :goto_a
    invoke-static/range {p1 .. p2}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toRoman(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1c
    if-nez v4, :cond_34

    return-object v20

    :cond_34
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 71
    invoke-virtual {v6, v7, v8, v0}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toAlphaSequence(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :sswitch_1d
    sget-object v3, Lnet/sf/saxon/expr/number/AbstractNumberer;->westernDigits:[I

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move v4, v10

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/expr/number/AbstractNumberer;->b(J[IILnet/sf/saxon/expr/number/NumericGroupFormatter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_38

    .line 73
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 74
    invoke-virtual {v6, v9, v7, v8}, Lnet/sf/saxon/expr/number/AbstractNumberer;->ordinalSuffix(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :goto_b
    const/16 v1, 0x9

    if-gt v13, v1, :cond_35

    add-int v1, v0, v13

    .line 75
    aput v1, v3, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_35
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move v4, v10

    move-object/from16 v5, p4

    .line 76
    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/expr/number/AbstractNumberer;->b(J[IILnet/sf/saxon/expr/number/NumericGroupFormatter;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_36
    const/16 v1, 0x1100

    if-ge v0, v1, :cond_37

    int-to-char v0, v0

    .line 77
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_37

    if-lez v4, :cond_37

    .line 78
    invoke-virtual {v6, v7, v8, v0, v11}, Lnet/sf/saxon/expr/number/AbstractNumberer;->alphaDefault(JCLjava/lang/StringBuilder;)V

    goto :goto_c

    .line 79
    :cond_37
    sget-object v3, Lnet/sf/saxon/expr/number/AbstractNumberer;->westernDigits:[I

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move v4, v10

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/expr/number/AbstractNumberer;->b(J[IILnet/sf/saxon/expr/number/NumericGroupFormatter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_38

    .line 80
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 81
    invoke-virtual {v6, v9, v7, v8}, Lnet/sf/saxon/expr/number/AbstractNumberer;->ordinalSuffix(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_38
    :goto_c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_39
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1d
        0x31 -> :sswitch_1d
        0x41 -> :sswitch_1c
        0x49 -> :sswitch_1b
        0x57 -> :sswitch_1a
        0x61 -> :sswitch_19
        0x69 -> :sswitch_18
        0x77 -> :sswitch_1a
        0x391 -> :sswitch_17
        0x3b1 -> :sswitch_16
        0x410 -> :sswitch_15
        0x430 -> :sswitch_14
        0x5d0 -> :sswitch_13
        0x2460 -> :sswitch_12
        0x2474 -> :sswitch_11
        0x2488 -> :sswitch_10
        0x24f5 -> :sswitch_f
        0x2776 -> :sswitch_e
        0x2780 -> :sswitch_d
        0x278a -> :sswitch_c
        0x3042 -> :sswitch_b
        0x3044 -> :sswitch_a
        0x30a2 -> :sswitch_9
        0x30a4 -> :sswitch_8
        0x3220 -> :sswitch_7
        0x3280 -> :sswitch_6
        0x4e00 -> :sswitch_5
        0x10107 -> :sswitch_4
        0x10e60 -> :sswitch_3
        0x11052 -> :sswitch_2
        0x1d360 -> :sswitch_1
        0x1f102 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCalendarName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "AD"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Gregorian"

    return-object p0

    :cond_0
    return-object p1
.end method

.method public getCountry()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/number/AbstractNumberer;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getEraName(I)Ljava/lang/String;
    .locals 0

    if-lez p1, :cond_0

    const-string p0, "AD"

    goto :goto_0

    :cond_0
    const-string p0, "BC"

    :goto_0
    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/number/AbstractNumberer;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getOrdinalSuffixForDateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "yes"

    return-object p0
.end method

.method public halfDayName(III)Ljava/lang/String;
    .locals 5

    const-string p2, "gb"

    const/16 v0, 0x8

    if-nez p1, :cond_0

    if-lt p3, v0, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/expr/number/AbstractNumberer;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "Midnight"

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x2d0

    if-ge p1, v4, :cond_3

    if-eq p3, v3, :cond_2

    if-eq p3, v2, :cond_1

    if-eq p3, v1, :cond_1

    const-string p0, "A.M."

    goto :goto_0

    :cond_1
    const-string p0, "Am"

    goto :goto_0

    :cond_2
    const-string p0, "A"

    goto :goto_0

    :cond_3
    if-ne p1, v4, :cond_4

    if-lt p3, v0, :cond_4

    iget-object p0, p0, Lnet/sf/saxon/expr/number/AbstractNumberer;->a:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "Noon"

    goto :goto_0

    :cond_4
    if-eq p3, v3, :cond_6

    if-eq p3, v2, :cond_5

    if-eq p3, v1, :cond_5

    const-string p0, "P.M."

    goto :goto_0

    :cond_5
    const-string p0, "Pm"

    goto :goto_0

    :cond_6
    const-string p0, "P"

    :goto_0
    return-object p0
.end method

.method public abstract monthName(III)Ljava/lang/String;
.end method

.method public ordinalSuffix(Ljava/lang/String;J)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/number/AbstractNumberer;->a:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/number/AbstractNumberer;->b:Ljava/lang/String;

    return-void
.end method

.method public toAlpha(JII)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-string v1, ""

    if-gtz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sub-int v0, p4, p3

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    int-to-long v4, v0

    rem-long v6, v2, v4

    int-to-long v8, p3

    add-long/2addr v6, v8

    long-to-int v0, v6

    int-to-char v0, v0

    cmp-long p1, p1, v4

    if-lez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v2, v4

    invoke-virtual {p0, v2, v3, p3, p4}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toAlpha(JII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toAlphaSequence(JLjava/lang/String;)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-string v1, ""

    if-gtz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    int-to-long v4, v0

    rem-long v6, v2, v4

    long-to-int v0, v6

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    cmp-long p1, p1, v4

    if-lez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v2, v4

    invoke-virtual {p0, v2, v3, p3}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toAlphaSequence(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toJapanese(J)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 p1, 0x3007

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x270f

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    long-to-int p1, p1

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lnet/sf/saxon/expr/number/AbstractNumberer;->a(ILjava/lang/StringBuilder;Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract toOrdinalWords(Ljava/lang/String;JI)Ljava/lang/String;
.end method

.method public abstract toWords(J)Ljava/lang/String;
.end method

.method public toWords(JI)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/number/AbstractNumberer;->zero()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/number/AbstractNumberer;->toWords(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p3, :cond_2

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zero()Ljava/lang/String;
    .locals 0

    const-string p0, "Zero"

    return-object p0
.end method
