.class public final Lnet/sf/saxon/value/StringValue$CharacterIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AtomicIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/value/StringValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharacterIterator"
.end annotation


# instance fields
.field public e:I

.field public final f:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/value/StringValue$CharacterIterator;->e:I

    iput-object p1, p0, Lnet/sf/saxon/value/StringValue$CharacterIterator;->f:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue$CharacterIterator;->next()Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue$CharacterIterator;->next()Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/Int64Value;
    .locals 4

    .line 3
    iget v0, p0, Lnet/sf/saxon/value/StringValue$CharacterIterator;->e:I

    iget-object v1, p0, Lnet/sf/saxon/value/StringValue$CharacterIterator;->f:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/value/StringValue$CharacterIterator;->f:Ljava/lang/CharSequence;

    iget v1, p0, Lnet/sf/saxon/value/StringValue$CharacterIterator;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/saxon/value/StringValue$CharacterIterator;->e:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v1, 0xd800

    if-lt v0, v1, :cond_0

    const v2, 0xdbff

    if-gt v0, v2, :cond_0

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x400

    .line 5
    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/value/StringValue$CharacterIterator;->f:Ljava/lang/CharSequence;

    iget v2, p0, Lnet/sf/saxon/value/StringValue$CharacterIterator;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/sf/saxon/value/StringValue$CharacterIterator;->e:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const v1, 0xdc00

    sub-int/2addr p0, v1

    add-int/2addr v0, p0

    const/high16 p0, 0x10000

    add-int/2addr v0, p0

    goto :goto_0

    .line 6
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid surrogate at end of string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/value/StringValue$CharacterIterator;->f:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringTool;->diagnosticDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 7
    :cond_0
    :goto_0
    new-instance p0, Lnet/sf/saxon/value/Int64Value;

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
