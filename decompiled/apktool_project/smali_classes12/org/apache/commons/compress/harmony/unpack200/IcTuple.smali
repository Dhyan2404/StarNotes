.class public Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NESTED_CLASS_FLAG:I = 0x10000

.field public static final q:[Ljava/lang/String;

.field public static final r:[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;


# instance fields
.field protected C:Ljava/lang/String;

.field protected C2:Ljava/lang/String;

.field protected F:I

.field protected N:Ljava/lang/String;

.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:Z

.field public p:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->q:[Ljava/lang/String;

    new-array v0, v0, [Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    sput-object v0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->r:[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->l:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->m:I

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->n:I

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C:Ljava/lang/String;

    iput p2, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->F:I

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C2:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->N:Ljava/lang/String;

    iput p5, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->a:I

    iput p6, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->b:I

    iput p7, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->c:I

    iput p8, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->d:I

    if-nez p4, :cond_0

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->e:Z

    :cond_0
    if-nez p3, :cond_1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->f:Z

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->c()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->innerBreakAtDollar(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Should have an outer before checking if it\'s anonymous"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->o:Z

    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->p:I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->p:I

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C2:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->p:I

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->N:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->p:I

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 7

    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->i:Z

    iget-boolean v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->e:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->N:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->h:Ljava/lang/String;

    :cond_1
    iget-boolean v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->f:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C2:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->g:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->innerBreakAtDollar(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    return-void

    :cond_3
    array-length v2, v1

    sub-int/2addr v2, v0

    aget-object v3, v1, v2

    iput-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->h:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->g:Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    :cond_4
    :goto_0
    if-ge v4, v2, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->g:Ljava/lang/String;

    aget-object v5, v1, v4

    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iput-boolean v3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->l:Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    if-eq v4, v2, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x24

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->g:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->e:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->N:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->h:Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->c:I

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->n:I

    :cond_7
    iget-boolean v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->f:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C2:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->g:Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->b:I

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->m:I

    :cond_8
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->j:Z

    iput-boolean v3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->l:Z

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->nestedExplicitFlagSet()Z

    move-result v1

    if-eqz v1, :cond_9

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->l:Z

    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->a()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->k:Z

    return-void
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    move v0, p0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->nullSafeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C2:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C2:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->nullSafeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->N:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->N:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->nullSafeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public getC()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C:Ljava/lang/String;

    return-object p0
.end method

.method public getC2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C2:Ljava/lang/String;

    return-object p0
.end method

.method public getF()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->F:I

    return p0
.end method

.method public getN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->N:Ljava/lang/String;

    return-object p0
.end method

.method public getTupleIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->d:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->b()V

    :cond_0
    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->p:I

    return p0
.end method

.method public innerBreakAtDollar(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-gt v2, v3, :cond_1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v0, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->q:[Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public isAnonymous()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->j:Z

    return p0
.end method

.method public isMember()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->l:Z

    return p0
.end method

.method public nestedExplicitFlagSet()Z
    .locals 1

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->F:I

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nullSafeEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public outerClassIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->m:I

    return p0
.end method

.method public outerClassString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->g:Ljava/lang/String;

    return-object p0
.end method

.method public outerIsAnonymous()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->k:Z

    return p0
.end method

.method public predicted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->f:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->e:Z

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

.method public simpleClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->h:Ljava/lang/String;

    return-object p0
.end method

.method public simpleClassNameIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->n:I

    return p0
.end method

.method public thisClassIndex()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->predicted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->a:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public thisClassString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->predicted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->N:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IcTuple "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->simpleClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->outerClassString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
