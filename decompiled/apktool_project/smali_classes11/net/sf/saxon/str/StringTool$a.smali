.class public final Lnet/sf/saxon/str/StringTool$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public final synthetic c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/str/StringTool$a;->c:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/str/StringTool$a;->a:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lnet/sf/saxon/str/StringTool$a;->a:I

    iget-object p0, p0, Lnet/sf/saxon/str/StringTool$a;->c:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()I
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/str/StringTool$a;->c:Ljava/lang/CharSequence;

    iget v1, p0, Lnet/sf/saxon/str/StringTool$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/saxon/str/StringTool$a;->a:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->isHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/str/StringTool$a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/str/StringTool$a;->c:Ljava/lang/CharSequence;

    iget v2, p0, Lnet/sf/saxon/str/StringTool$a;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/sf/saxon/str/StringTool$a;->a:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->isLowSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_1

    int-to-char p0, v0

    int-to-char v0, v1

    invoke-static {p0, v0}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->combinePair(CC)I

    move-result p0

    return p0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unmatched surrogate code value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " at position "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/str/StringTool$a;->a:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid surrogate at end of string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return v0
.end method
