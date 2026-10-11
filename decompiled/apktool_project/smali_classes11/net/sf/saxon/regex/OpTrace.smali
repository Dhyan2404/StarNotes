.class public Lnet/sf/saxon/regex/OpTrace;
.super Lnet/sf/saxon/regex/Operation;
.source "SourceFile"


# static fields
.field public static b:I


# instance fields
.field public a:Lnet/sf/saxon/regex/Operation;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/regex/Operation;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/regex/Operation;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/regex/OpTrace;->a:Lnet/sf/saxon/regex/Operation;

    return-void
.end method


# virtual methods
.method public display()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/OpTrace;->a:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/Operation;->display()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMatchLength()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/OpTrace;->a:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/Operation;->getMatchLength()I

    move-result p0

    return p0
.end method

.method public iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
    .locals 6

    iget-object v0, p0, Lnet/sf/saxon/regex/OpTrace;->a:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/regex/Operation;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    sget v0, Lnet/sf/saxon/regex/OpTrace;->b:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lnet/sf/saxon/regex/OpTrace;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Iterating over "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/sf/saxon/regex/OpTrace;->a:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnet/sf/saxon/regex/OpTrace;->a:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v5}, Lnet/sf/saxon/regex/Operation;->display()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " at position "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " returning "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p2, Lnet/sf/saxon/regex/OpTrace$a;

    invoke-direct {p2, p0, p1, v0}, Lnet/sf/saxon/regex/OpTrace$a;-><init>(Lnet/sf/saxon/regex/OpTrace;Lnet/sf/saxon/z/IntIterator;I)V

    return-object p2
.end method

.method public matchesEmptyString()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/OpTrace;->a:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/Operation;->matchesEmptyString()I

    move-result p0

    return p0
.end method

.method public optimize(Lnet/sf/saxon/regex/REProgram;Lnet/sf/saxon/regex/REFlags;)Lnet/sf/saxon/regex/Operation;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/regex/OpTrace;->a:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/regex/Operation;->optimize(Lnet/sf/saxon/regex/REProgram;Lnet/sf/saxon/regex/REFlags;)Lnet/sf/saxon/regex/Operation;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/regex/OpTrace;->a:Lnet/sf/saxon/regex/Operation;

    return-object p0
.end method
