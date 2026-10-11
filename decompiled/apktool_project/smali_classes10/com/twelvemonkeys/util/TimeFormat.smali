.class public Lcom/twelvemonkeys/util/TimeFormat;
.super Ljava/text/Format;
.source "SourceFile"


# static fields
.field private static final DEFAULT_FORMAT:Lcom/twelvemonkeys/util/TimeFormat;

.field static final ESCAPE:Ljava/lang/String; = "\\"

.field static final MINUTE:Ljava/lang/String; = "m"

.field static final SECOND:Ljava/lang/String; = "s"

.field static final TIME:Ljava/lang/String; = "S"


# instance fields
.field protected formatString:Ljava/lang/String;

.field protected formatter:[Lcom/sunia/HTREnginev2/cin;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/twelvemonkeys/util/TimeFormat;

    const-string v1, "m:ss"

    invoke-direct {v0, v1}, Lcom/twelvemonkeys/util/TimeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/twelvemonkeys/util/TimeFormat;->DEFAULT_FORMAT:Lcom/twelvemonkeys/util/TimeFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 12

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    iput-object p1, p0, Lcom/twelvemonkeys/util/TimeFormat;->formatString:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\\msS"

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    const/4 v2, 0x0

    move-object v4, p1

    move v5, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    const/4 v7, -0x1

    const-string v8, "S"

    const-string v9, "s"

    const-string v10, "m"

    if-eqz v6, :cond_8

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_2

    const-string v11, "\\"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move-object v6, v5

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v5, v2

    move-object v6, v4

    move-object v4, p1

    :cond_2
    if-eqz v4, :cond_7

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v4, Lcom/sunia/HTREnginev2/xnj;

    invoke-direct {v4, v5}, Lcom/sunia/HTREnginev2/xnj;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v4, Lcom/sunia/HTREnginev2/z8m;

    invoke-direct {v4, v5}, Lcom/sunia/HTREnginev2/z8m;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v4, Lcom/sunia/HTREnginev2/z8m;

    invoke-direct {v4, v7}, Lcom/sunia/HTREnginev2/z8m;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v5, Lcom/sunia/HTREnginev2/pcn;

    invoke-direct {v5, v4}, Lcom/sunia/HTREnginev2/pcn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_2
    move v5, v3

    goto :goto_4

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    :goto_4
    move-object v4, v6

    goto/16 :goto_0

    :cond_8
    if-eqz v4, :cond_c

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Lcom/sunia/HTREnginev2/xnj;

    invoke-direct {p1, v5}, Lcom/sunia/HTREnginev2/xnj;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Lcom/sunia/HTREnginev2/z8m;

    invoke-direct {p1, v5}, Lcom/sunia/HTREnginev2/z8m;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lcom/sunia/HTREnginev2/z8m;

    invoke-direct {p1, v7}, Lcom/sunia/HTREnginev2/z8m;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    new-instance p1, Lcom/sunia/HTREnginev2/pcn;

    invoke-direct {p1, v4}, Lcom/sunia/HTREnginev2/pcn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sunia/HTREnginev2/cin;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sunia/HTREnginev2/cin;

    iput-object p1, p0, Lcom/twelvemonkeys/util/TimeFormat;->formatter:[Lcom/sunia/HTREnginev2/cin;

    return-void
.end method

.method public static getInstance()Lcom/twelvemonkeys/util/TimeFormat;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/util/TimeFormat;->DEFAULT_FORMAT:Lcom/twelvemonkeys/util/TimeFormat;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7

    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const-string v3, "\""

    if-lt v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating out TimeFormat: \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/twelvemonkeys/util/TimeFormat;

    aget-object v1, p0, v2

    invoke-direct {v0, v1}, Lcom/twelvemonkeys/util/TimeFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating in TimeFormat: \""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lcom/twelvemonkeys/util/TimeFormat;

    aget-object v2, p0, v4

    invoke-direct {v1, v2}, Lcom/twelvemonkeys/util/TimeFormat;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Using default format for in"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/twelvemonkeys/util/TimeFormat;->DEFAULT_FORMAT:Lcom/twelvemonkeys/util/TimeFormat;

    :goto_1
    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    array-length v2, p0

    if-lt v2, v4, :cond_3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget-object v6, p0, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" with format \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/twelvemonkeys/util/TimeFormat;->formatString:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    aget-object p0, p0, v5

    invoke-virtual {v1, p0}, Lcom/twelvemonkeys/util/TimeFormat;->parse(Ljava/lang/String;)Lcom/twelvemonkeys/util/Time;

    move-result-object p0

    goto :goto_2

    :cond_3
    new-instance p0, Lcom/twelvemonkeys/util/Time;

    invoke-direct {p0}, Lcom/twelvemonkeys/util/Time;-><init>()V

    :goto_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time is \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Lcom/twelvemonkeys/util/TimeFormat;->format(Lcom/twelvemonkeys/util/Time;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" according to format \""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/twelvemonkeys/util/TimeFormat;->formatString:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public format(Lcom/twelvemonkeys/util/Time;)Ljava/lang/String;
    .locals 4

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/twelvemonkeys/util/TimeFormat;->formatter:[Lcom/sunia/HTREnginev2/cin;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 6
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/sunia/HTREnginev2/cin;->a(Lcom/twelvemonkeys/util/Time;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 1
    instance-of p3, p1, Lcom/twelvemonkeys/util/Time;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Must be instance of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lcom/twelvemonkeys/util/Time;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFormatString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/TimeFormat;->formatString:Ljava/lang/String;

    return-object p0
.end method

.method public parse(Ljava/lang/String;)Lcom/twelvemonkeys/util/Time;
    .locals 11

    new-instance v0, Lcom/twelvemonkeys/util/Time;

    invoke-direct {v0}, Lcom/twelvemonkeys/util/Time;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    iget-object v7, p0, Lcom/twelvemonkeys/util/TimeFormat;->formatter:[Lcom/sunia/HTREnginev2/cin;

    array-length v7, v7

    if-ge v2, v7, :cond_b

    add-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_b

    iget-object v7, p0, Lcom/twelvemonkeys/util/TimeFormat;->formatter:[Lcom/sunia/HTREnginev2/cin;

    aget-object v8, v7, v2

    instance-of v9, v8, Lcom/sunia/HTREnginev2/xnj;

    if-eqz v9, :cond_3

    add-int/lit8 v4, v2, 0x1

    array-length v9, v7

    if-ge v4, v9, :cond_0

    aget-object v9, v7, v4

    instance-of v10, v9, Lcom/sunia/HTREnginev2/pcn;

    if-eqz v10, :cond_0

    check-cast v9, Lcom/sunia/HTREnginev2/pcn;

    iget-object v4, v9, Lcom/sunia/HTREnginev2/pcn;->b:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1

    :cond_0
    array-length v7, v7

    if-lt v4, v7, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1

    :cond_1
    iget v4, v8, Lcom/sunia/HTREnginev2/cin;->a:I

    :cond_2
    :goto_1
    if-le v4, v3, :cond_a

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_4

    :cond_3
    instance-of v9, v8, Lcom/sunia/HTREnginev2/z8m;

    if-eqz v9, :cond_9

    iget v4, v8, Lcom/sunia/HTREnginev2/cin;->a:I

    const/4 v8, -0x1

    if-ne v4, v8, :cond_6

    add-int/lit8 v4, v2, 0x1

    array-length v8, v7

    if-ge v4, v8, :cond_4

    aget-object v8, v7, v4

    instance-of v9, v8, Lcom/sunia/HTREnginev2/pcn;

    if-eqz v9, :cond_4

    check-cast v8, Lcom/sunia/HTREnginev2/pcn;

    iget-object p0, v8, Lcom/sunia/HTREnginev2/pcn;->b:Ljava/lang/String;

    invoke-virtual {p1, p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    goto :goto_2

    :cond_4
    array-length v7, v7

    if-lt v4, v7, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    :goto_2
    invoke-virtual {p1, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    move v4, v1

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v2, 0x1

    array-length v8, v7

    if-ge v5, v8, :cond_7

    aget-object v8, v7, v5

    instance-of v9, v8, Lcom/sunia/HTREnginev2/pcn;

    if-eqz v9, :cond_7

    check-cast v8, Lcom/sunia/HTREnginev2/pcn;

    iget-object v4, v8, Lcom/sunia/HTREnginev2/pcn;->b:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    goto :goto_3

    :cond_7
    array-length v7, v7

    if-lt v5, v7, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :cond_8
    :goto_3
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_4

    :cond_9
    instance-of v7, v8, Lcom/sunia/HTREnginev2/pcn;

    if-eqz v7, :cond_a

    iget v4, v8, Lcom/sunia/HTREnginev2/cin;->a:I

    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_5
    if-nez v1, :cond_c

    invoke-virtual {v0, v6}, Lcom/twelvemonkeys/util/Time;->setMinutes(I)V

    :cond_c
    invoke-virtual {v0, v5}, Lcom/twelvemonkeys/util/Time;->setSeconds(I)V

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/TimeFormat;->parse(Ljava/lang/String;)Lcom/twelvemonkeys/util/Time;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object p0
.end method
