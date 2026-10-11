.class public final Lcom/sunia/HTREnginev2/qui$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/qui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sunia/HTREnginev2/qui$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final i:Lcom/sunia/HTREnginev2/qui$c;


# instance fields
.field public final e:Lcom/sunia/HTREnginev2/qui$c;

.field public final f:I

.field public final g:B

.field public final h:B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sunia/HTREnginev2/qui$c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/sunia/HTREnginev2/qui$c;-><init>(BBILcom/sunia/HTREnginev2/qui$c;)V

    sput-object v0, Lcom/sunia/HTREnginev2/qui$c;->i:Lcom/sunia/HTREnginev2/qui$c;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p1, v0, v1}, Lcom/sunia/HTREnginev2/qui$c;-><init>(BBILcom/sunia/HTREnginev2/qui$c;)V

    return-void
.end method

.method public constructor <init>(BBILcom/sunia/HTREnginev2/qui$c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-byte p1, p0, Lcom/sunia/HTREnginev2/qui$c;->g:B

    .line 4
    iput-byte p2, p0, Lcom/sunia/HTREnginev2/qui$c;->h:B

    .line 5
    iput p3, p0, Lcom/sunia/HTREnginev2/qui$c;->f:I

    .line 6
    iput-object p4, p0, Lcom/sunia/HTREnginev2/qui$c;->e:Lcom/sunia/HTREnginev2/qui$c;

    return-void
.end method


# virtual methods
.method public a(Lcom/sunia/HTREnginev2/qui$c;)I
    .locals 4

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/sunia/HTREnginev2/qui$c;->f:I

    iget v2, p1, Lcom/sunia/HTREnginev2/qui$c;->f:I

    if-eq v1, v2, :cond_1

    sub-int/2addr v2, v1

    return v2

    :cond_1
    iget-byte v2, p0, Lcom/sunia/HTREnginev2/qui$c;->h:B

    iget-byte v3, p1, Lcom/sunia/HTREnginev2/qui$c;->h:B

    if-eq v2, v3, :cond_2

    sub-int/2addr v3, v2

    return v3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_4

    iget-byte v2, p0, Lcom/sunia/HTREnginev2/qui$c;->g:B

    iget-byte v3, p1, Lcom/sunia/HTREnginev2/qui$c;->g:B

    if-eq v2, v3, :cond_3

    sub-int/2addr v3, v2

    return v3

    :cond_3
    iget-object p0, p0, Lcom/sunia/HTREnginev2/qui$c;->e:Lcom/sunia/HTREnginev2/qui$c;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/qui$c;->e:Lcom/sunia/HTREnginev2/qui$c;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final b(B)Lcom/sunia/HTREnginev2/qui$c;
    .locals 3

    sget-object v0, Lcom/sunia/HTREnginev2/qui$c;->i:Lcom/sunia/HTREnginev2/qui$c;

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/sunia/HTREnginev2/qui$c;

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/qui$c;-><init>(B)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/qui$c;

    iget-byte v1, p0, Lcom/sunia/HTREnginev2/qui$c;->h:B

    iget v2, p0, Lcom/sunia/HTREnginev2/qui$c;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/sunia/HTREnginev2/qui$c;-><init>(BBILcom/sunia/HTREnginev2/qui$c;)V

    return-object v0
.end method

.method public final c(Ljava/nio/ByteBuffer;)V
    .locals 5

    iget v0, p0, Lcom/sunia/HTREnginev2/qui$c;->f:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-byte p0, p0, Lcom/sunia/HTREnginev2/qui$c;->g:B

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v2, p0, Lcom/sunia/HTREnginev2/qui$c;->f:I

    sub-int/2addr v2, v1

    move-object v1, p0

    :goto_0
    if-ltz v2, :cond_2

    add-int v3, v0, v2

    iget-byte v4, v1, Lcom/sunia/HTREnginev2/qui$c;->g:B

    invoke-virtual {p1, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/qui$c;->e:Lcom/sunia/HTREnginev2/qui$c;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/sunia/HTREnginev2/qui$c;->f:I

    add-int/2addr v0, p0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sunia/HTREnginev2/qui$c;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/qui$c;->a(Lcom/sunia/HTREnginev2/qui$c;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lcom/sunia/HTREnginev2/qui$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/sunia/HTREnginev2/qui$c;

    iget-byte v2, p0, Lcom/sunia/HTREnginev2/qui$c;->h:B

    iget-byte v3, p1, Lcom/sunia/HTREnginev2/qui$c;->h:B

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/sunia/HTREnginev2/qui$c;->f:I

    iget v3, p1, Lcom/sunia/HTREnginev2/qui$c;->f:I

    if-ne v2, v3, :cond_2

    iget-byte v2, p0, Lcom/sunia/HTREnginev2/qui$c;->g:B

    iget-byte v3, p1, Lcom/sunia/HTREnginev2/qui$c;->g:B

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qui$c;->e:Lcom/sunia/HTREnginev2/qui$c;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/qui$c;->e:Lcom/sunia/HTREnginev2/qui$c;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qui$c;->e:Lcom/sunia/HTREnginev2/qui$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/qui$c;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/sunia/HTREnginev2/qui$c;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/sunia/HTREnginev2/qui$c;->g:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-byte p0, p0, Lcom/sunia/HTREnginev2/qui$c;->h:B

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZLWString["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget v2, p0, Lcom/sunia/HTREnginev2/qui$c;->f:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-byte v3, p0, Lcom/sunia/HTREnginev2/qui$c;->g:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%2x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qui$c;->e:Lcom/sunia/HTREnginev2/qui$c;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
