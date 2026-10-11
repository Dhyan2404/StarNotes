.class public Lonyx/org/apache/commons/io/FilenameUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTENSION_SEPARATOR:C = '.'

.field public static final EXTENSION_SEPARATOR_STR:Ljava/lang/String;

.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/lang/String; = ""

.field public static final c:I = -0x1

.field public static final d:C = '/'

.field public static final e:C = '\\'

.field public static final f:C

.field public static final g:C

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:I = 0xff

.field public static final j:I = 0x8

.field public static final k:I = 0x4

.field public static final l:I = 0xffff

.field public static final m:I = 0x10

.field public static final n:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lonyx/org/apache/commons/io/FilenameUtils;->a:[Ljava/lang/String;

    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lonyx/org/apache/commons/io/FilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;

    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lonyx/org/apache/commons/io/FilenameUtils;->f:C

    invoke-static {v0}, Lonyx/org/apache/commons/io/FilenameUtils;->d(C)C

    move-result v0

    sput-char v0, Lonyx/org/apache/commons/io/FilenameUtils;->g:C

    const-string v0, "^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lonyx/org/apache/commons/io/FilenameUtils;->h:Ljava/util/regex/Pattern;

    const-string v0, "^[a-zA-Z0-9][a-zA-Z0-9-]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lonyx/org/apache/commons/io/FilenameUtils;->n:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_3

    if-eqz p1, :cond_2

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-gez v0, :cond_4

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/2addr v0, p1

    if-nez v0, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    if-ltz v0, :cond_3

    if-lt v1, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static c(Ljava/lang/String;CZ)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-static/range {p0 .. p0}, Lonyx/org/apache/commons/io/FilenameUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    invoke-static/range {p0 .. p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v5, v3, 0x2

    new-array v6, v5, [C

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7, v6, v8}, Ljava/lang/String;->getChars(II[CI)V

    invoke-static/range {p1 .. p1}, Lonyx/org/apache/commons/io/FilenameUtils;->d(C)C

    move-result v0

    move v7, v8

    :goto_0
    if-ge v7, v5, :cond_4

    aget-char v9, v6, v7

    if-ne v9, v0, :cond_3

    aput-char v1, v6, v7

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v3, -0x1

    aget-char v0, v6, v0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_5

    add-int/lit8 v0, v3, 0x1

    aput-char v1, v6, v3

    move v3, v0

    move v0, v8

    goto :goto_1

    :cond_5
    move v0, v5

    :goto_1
    if-eqz v4, :cond_6

    move v7, v4

    goto :goto_2

    :cond_6
    move v7, v5

    :goto_2
    if-ge v7, v3, :cond_8

    aget-char v9, v6, v7

    if-ne v9, v1, :cond_7

    add-int/lit8 v9, v7, -0x1

    aget-char v10, v6, v9

    if-ne v10, v1, :cond_7

    sub-int v10, v3, v7

    invoke-static {v6, v7, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v7, v7, -0x1

    :cond_7
    add-int/2addr v7, v5

    goto :goto_2

    :cond_8
    add-int/lit8 v7, v4, 0x1

    move v9, v7

    :goto_3
    const/16 v10, 0x2e

    if-ge v9, v3, :cond_c

    aget-char v11, v6, v9

    if-ne v11, v1, :cond_b

    add-int/lit8 v11, v9, -0x1

    aget-char v12, v6, v11

    if-ne v12, v10, :cond_b

    if-eq v9, v7, :cond_9

    add-int/lit8 v10, v9, -0x2

    aget-char v10, v6, v10

    if-ne v10, v1, :cond_b

    :cond_9
    add-int/lit8 v10, v3, -0x1

    if-ne v9, v10, :cond_a

    move v0, v5

    :cond_a
    add-int/lit8 v10, v9, 0x1

    sub-int v12, v3, v9

    invoke-static {v6, v10, v6, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v9, v9, -0x1

    :cond_b
    add-int/2addr v9, v5

    goto :goto_3

    :cond_c
    add-int/lit8 v9, v4, 0x2

    move v11, v9

    :goto_4
    if-ge v11, v3, :cond_13

    aget-char v12, v6, v11

    if-ne v12, v1, :cond_12

    add-int/lit8 v12, v11, -0x1

    aget-char v12, v6, v12

    if-ne v12, v10, :cond_12

    add-int/lit8 v12, v11, -0x2

    aget-char v12, v6, v12

    if-ne v12, v10, :cond_12

    if-eq v11, v9, :cond_d

    add-int/lit8 v12, v11, -0x3

    aget-char v12, v6, v12

    if-ne v12, v1, :cond_12

    :cond_d
    if-ne v11, v9, :cond_e

    return-object v2

    :cond_e
    add-int/lit8 v12, v3, -0x1

    if-ne v11, v12, :cond_f

    move v0, v5

    :cond_f
    add-int/lit8 v12, v11, -0x4

    :goto_5
    if-lt v12, v4, :cond_11

    aget-char v13, v6, v12

    if-ne v13, v1, :cond_10

    add-int/lit8 v13, v11, 0x1

    add-int/lit8 v14, v12, 0x1

    sub-int v15, v3, v11

    invoke-static {v6, v13, v6, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v11, v12

    sub-int/2addr v3, v11

    move v11, v14

    goto :goto_6

    :cond_10
    add-int/lit8 v12, v12, -0x1

    goto :goto_5

    :cond_11
    add-int/lit8 v12, v11, 0x1

    sub-int v11, v3, v11

    invoke-static {v6, v12, v6, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v12, v4

    sub-int/2addr v3, v12

    move v11, v7

    :cond_12
    :goto_6
    add-int/2addr v11, v5

    goto :goto_4

    :cond_13
    if-gtz v3, :cond_14

    const-string v0, ""

    return-object v0

    :cond_14
    if-gt v3, v4, :cond_15

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6, v8, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_15
    if-eqz v0, :cond_16

    if-eqz p2, :cond_16

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6, v8, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v3, v5

    invoke-direct {v0, v6, v8, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lonyx/org/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    if-lez v0, :cond_1

    invoke-static {p1}, Lonyx/org/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lonyx/org/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lonyx/org/apache/commons/io/FilenameUtils;->j(C)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(C)C
    .locals 2

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static directoryContains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->f(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Lonyx/org/apache/commons/io/FilenameUtils;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lonyx/org/apache/commons/io/IOCase;->SYSTEM:Lonyx/org/apache/commons/io/IOCase;

    invoke-virtual {v0, p0, p1}, Lonyx/org/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    move v1, v4

    :cond_2
    invoke-static {v1}, Lonyx/org/apache/commons/io/FilenameUtils;->o(Z)C

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p1, p0}, Lonyx/org/apache/commons/io/IOCase;->checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    return v1
.end method

.method public static e(Ljava/lang/String;)I
    .locals 2

    sget-char v0, Lonyx/org/apache/commons/io/FilenameUtils;->f:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    sget-char v1, Lonyx/org/apache/commons/io/FilenameUtils;->g:C

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    if-ne p0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lonyx/org/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLonyx/org/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;ZLonyx/org/apache/commons/io/IOCase;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 2
    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {p1}, Lonyx/org/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 4
    :cond_2
    sget-object p2, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    invoke-static {p3, p2}, Lonyx/org/apache/commons/io/IOCase;->value(Lonyx/org/apache/commons/io/IOCase;Lonyx/org/apache/commons/io/IOCase;)Lonyx/org/apache/commons/io/IOCase;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lonyx/org/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    if-nez p0, :cond_4

    if-nez p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public static equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lonyx/org/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLonyx/org/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method public static equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lonyx/org/apache/commons/io/IOCase;->SYSTEM:Lonyx/org/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lonyx/org/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLonyx/org/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method public static equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lonyx/org/apache/commons/io/IOCase;->SYSTEM:Lonyx/org/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lonyx/org/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLonyx/org/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 7

    sget-object v0, Lonyx/org/apache/commons/io/FilenameUtils;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    move v3, v0

    :goto_0
    if-gt v3, v2, :cond_3

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xff

    if-le v5, v6, :cond_1

    return v1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v0, :cond_2

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFullPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lonyx/org/apache/commons/io/FilenameUtils;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lonyx/org/apache/commons/io/FilenameUtils;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lonyx/org/apache/commons/io/FilenameUtils;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lonyx/org/apache/commons/io/FilenameUtils;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v1, v0, :cond_2

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrefixLength(Ljava/lang/String;)I
    .locals 10

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_2

    return v0

    :cond_2
    const/16 v5, 0x7e

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-ne v1, v6, :cond_4

    if-ne v3, v5, :cond_3

    return v7

    :cond_3
    invoke-static {v3}, Lonyx/org/apache/commons/io/FilenameUtils;->j(C)Z

    move-result p0

    return p0

    :cond_4
    const/16 v8, 0x5c

    const/16 v9, 0x2f

    if-ne v3, v5, :cond_8

    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-ne v2, v0, :cond_5

    if-ne p0, v0, :cond_5

    add-int/2addr v1, v6

    return v1

    :cond_5
    if-ne v2, v0, :cond_6

    move v2, p0

    :cond_6
    if-ne p0, v0, :cond_7

    move p0, v2

    :cond_7
    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/2addr p0, v6

    return p0

    :cond_8
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_e

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_c

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_c

    if-ne v1, v7, :cond_9

    invoke-static {}, Lonyx/org/apache/commons/io/FileSystem;->getCurrent()Lonyx/org/apache/commons/io/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lonyx/org/apache/commons/io/FileSystem;->supportsDriveLetter()Z

    move-result v0

    if-nez v0, :cond_9

    return v2

    :cond_9
    if-eq v1, v7, :cond_b

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->j(C)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 p0, 0x3

    return p0

    :cond_b
    :goto_0
    return v7

    :cond_c
    if-ne v3, v9, :cond_d

    return v6

    :cond_d
    return v0

    :cond_e
    invoke-static {v3}, Lonyx/org/apache/commons/io/FilenameUtils;->j(C)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {v5}, Lonyx/org/apache/commons/io/FilenameUtils;->j(C)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2

    :cond_f
    invoke-virtual {p0, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v1, v0, :cond_10

    if-eq v2, v0, :cond_14

    :cond_10
    if-eq v1, v7, :cond_14

    if-ne v2, v7, :cond_11

    goto :goto_1

    :cond_11
    if-ne v1, v0, :cond_12

    move v1, v2

    :cond_12
    if-ne v2, v0, :cond_13

    move v2, v1

    :cond_13
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, v6

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->l(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    move v0, v1

    :cond_14
    :goto_1
    return v0

    :cond_15
    :goto_2
    invoke-static {v3}, Lonyx/org/apache/commons/io/FilenameUtils;->j(C)Z

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 9

    const-string v0, "::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_0

    return v2

    :cond_0
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p0, ""

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    :goto_0
    sget-object p0, Lonyx/org/apache/commons/io/FilenameUtils;->a:[Ljava/lang/String;

    invoke-interface {v4, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, [Ljava/lang/String;

    :cond_6
    array-length p0, v3

    const/16 v0, 0x8

    if-le p0, v0, :cond_7

    return v2

    :cond_7
    move p0, v2

    move v4, p0

    move v5, v4

    :goto_1
    array-length v6, v3

    const/4 v7, 0x1

    if-ge p0, v6, :cond_f

    aget-object v6, v3, p0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    add-int/2addr v5, v7

    if-le v5, v7, :cond_d

    return v2

    :cond_8
    array-length v5, v3

    sub-int/2addr v5, v7

    if-ne p0, v5, :cond_a

    const-string v5, "."

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v6}, Lonyx/org/apache/commons/io/FilenameUtils;->g(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    return v2

    :cond_9
    add-int/lit8 v4, v4, 0x2

    move v5, v2

    goto :goto_2

    :cond_a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x4

    if-le v5, v7, :cond_b

    return v2

    :cond_b
    const/16 v5, 0x10

    :try_start_0
    invoke-static {v6, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v5, :cond_e

    const v6, 0xffff

    if-le v5, v6, :cond_c

    goto :goto_3

    :cond_c
    move v5, v2

    :cond_d
    add-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :catch_0
    :cond_e
    :goto_3
    return v2

    :cond_f
    if-gt v4, v0, :cond_11

    if-ge v4, v0, :cond_10

    if-eqz v1, :cond_11

    :cond_10
    move v2, v7

    :cond_11
    return v2
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\\."

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    array-length p0, p0

    sub-int/2addr p0, v3

    if-ne v1, p0, :cond_0

    move v0, v3

    :cond_0
    return v0

    :cond_1
    sget-object v2, Lonyx/org/apache/commons/io/FilenameUtils;->n:Ljava/util/regex/Pattern;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public static indexOfExtension(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lonyx/org/apache/commons/io/FilenameUtils;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x3a

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "NTFS ADS separator (\':\') in file name is forbidden."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result p0

    if-le p0, v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public static indexOfLastSeparator(Ljava/lang/String;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x5c

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lonyx/org/apache/commons/io/FilenameUtils;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 8
    :cond_2
    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 4
    :cond_2
    :goto_0
    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static varargs isExtension(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 9
    :cond_0
    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 10
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/vig;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vig;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    .line 13
    :cond_2
    :goto_0
    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static j(C)Z
    .locals 1

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5c

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static k()Z
    .locals 2

    sget-char v0, Lonyx/org/apache/commons/io/FilenameUtils;->f:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->i(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null character present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x2a

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p0

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v4, :cond_6

    aget-char v8, p0, v6

    if-eq v8, v0, :cond_2

    if-ne v8, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_3
    if-ne v8, v0, :cond_4

    const-string v7, "?"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-eq v7, v2, :cond_5

    const-string v7, "*"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object p0, Lonyx/org/apache/commons/io/FilenameUtils;->a:[Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-char v0, Lonyx/org/apache/commons/io/FilenameUtils;->f:C

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lonyx/org/apache/commons/io/FilenameUtils;->c(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {p1}, Lonyx/org/apache/commons/io/FilenameUtils;->o(Z)C

    move-result p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lonyx/org/apache/commons/io/FilenameUtils;->c(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-char v0, Lonyx/org/apache/commons/io/FilenameUtils;->f:C

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lonyx/org/apache/commons/io/FilenameUtils;->c(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {p1}, Lonyx/org/apache/commons/io/FilenameUtils;->o(Z)C

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lonyx/org/apache/commons/io/FilenameUtils;->c(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Z)C
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x2f

    goto :goto_0

    :cond_0
    const/16 p0, 0x5c

    :goto_0
    return p0
.end method

.method public static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lonyx/org/apache/commons/io/FileSystem;->getCurrent()Lonyx/org/apache/commons/io/FileSystem;

    move-result-object v0

    invoke-virtual {v0, p0}, Lonyx/org/apache/commons/io/FileSystem;->normalizeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/FileSystem;->LINUX:Lonyx/org/apache/commons/io/FileSystem;

    invoke-virtual {v0, p0}, Lonyx/org/apache/commons/io/FileSystem;->normalizeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/FileSystem;->WINDOWS:Lonyx/org/apache/commons/io/FileSystem;

    invoke-virtual {v0, p0}, Lonyx/org/apache/commons/io/FileSystem;->normalizeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lonyx/org/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lonyx/org/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lonyx/org/apache/commons/io/IOCase;)Z
    .locals 8

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_d

    if-nez p1, :cond_1

    goto/16 :goto_5

    .line 2
    :cond_1
    sget-object v2, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    invoke-static {p2, v2}, Lonyx/org/apache/commons/io/IOCase;->value(Lonyx/org/apache/commons/io/IOCase;Lonyx/org/apache/commons/io/IOCase;)Lonyx/org/apache/commons/io/IOCase;

    move-result-object p2

    .line 3
    invoke-static {p1}, Lonyx/org/apache/commons/io/FilenameUtils;->n(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v2, Ljava/util/ArrayDeque;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    move v3, v1

    move v4, v3

    move v5, v4

    .line 5
    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 6
    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 7
    aget v5, v3, v1

    .line 8
    aget v4, v3, v0

    move v3, v0

    .line 9
    :cond_3
    :goto_0
    array-length v6, p1

    if-ge v5, v6, :cond_b

    .line 10
    aget-object v6, p1, v5

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v4, v6, :cond_4

    goto :goto_4

    :cond_4
    :goto_1
    move v3, v1

    goto :goto_3

    .line 12
    :cond_5
    aget-object v6, p1, v5

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 13
    array-length v3, p1

    sub-int/2addr v3, v0

    if-ne v5, v3, :cond_6

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v4, v3

    :cond_6
    move v3, v0

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_9

    .line 15
    aget-object v6, p1, v5

    invoke-virtual {p2, p0, v4, v6}, Lonyx/org/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v4, 0x1

    .line 16
    aget-object v6, p1, v5

    invoke-virtual {p2, p0, v3, v6}, Lonyx/org/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_a

    .line 17
    filled-new-array {v5, v3}, [I

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_2

    .line 18
    :cond_9
    aget-object v6, p1, v5

    invoke-virtual {p2, p0, v4, v6}, Lonyx/org/apache/commons/io/IOCase;->checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_4

    .line 19
    :cond_a
    :goto_2
    aget-object v3, p1, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    goto :goto_1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 20
    :cond_b
    :goto_4
    array-length v6, p1

    if-ne v5, v6, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v4, v6, :cond_c

    return v0

    .line 21
    :cond_c
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_d
    :goto_5
    return v1
.end method

.method public static wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/IOCase;->SYSTEM:Lonyx/org/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lonyx/org/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lonyx/org/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method
