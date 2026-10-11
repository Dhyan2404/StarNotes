.class public Lorg/mortbay/util/StringMap$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/StringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public e:[C

.field public f:[C

.field public g:Lorg/mortbay/util/StringMap$a;

.field public h:[Lorg/mortbay/util/StringMap$a;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    .line 4
    new-array v1, v0, [C

    iput-object v1, p0, Lorg/mortbay/util/StringMap$a;->e:[C

    .line 5
    new-array v1, v0, [C

    iput-object v1, p0, Lorg/mortbay/util/StringMap$a;->f:[C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    add-int v2, p3, v1

    .line 6
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 7
    iget-object v3, p0, Lorg/mortbay/util/StringMap$a;->e:[C

    aput-char v2, v3, v1

    if-eqz p1, :cond_2

    .line 8
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 12
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/mortbay/util/StringMap$a;->f:[C

    aput-char v2, v3, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Lorg/mortbay/util/StringMap;I)Lorg/mortbay/util/StringMap$a;
    .locals 5

    new-instance v0, Lorg/mortbay/util/StringMap$a;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap$a;-><init>()V

    iget-object v1, p0, Lorg/mortbay/util/StringMap$a;->e:[C

    array-length v2, v1

    sub-int/2addr v2, p2

    new-array v3, p2, [C

    iput-object v3, p0, Lorg/mortbay/util/StringMap$a;->e:[C

    new-array v3, v2, [C

    iput-object v3, v0, Lorg/mortbay/util/StringMap$a;->e:[C

    iget-object v3, p0, Lorg/mortbay/util/StringMap$a;->e:[C

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lorg/mortbay/util/StringMap$a;->e:[C

    invoke-static {v1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/mortbay/util/StringMap$a;->f:[C

    if-eqz v1, :cond_0

    new-array v3, p2, [C

    iput-object v3, p0, Lorg/mortbay/util/StringMap$a;->f:[C

    new-array v3, v2, [C

    iput-object v3, v0, Lorg/mortbay/util/StringMap$a;->f:[C

    iget-object v3, p0, Lorg/mortbay/util/StringMap$a;->f:[C

    invoke-static {v1, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lorg/mortbay/util/StringMap$a;->f:[C

    invoke-static {v1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p2, p0, Lorg/mortbay/util/StringMap$a;->i:Ljava/lang/String;

    iput-object p2, v0, Lorg/mortbay/util/StringMap$a;->i:Ljava/lang/String;

    iget-object p2, p0, Lorg/mortbay/util/StringMap$a;->j:Ljava/lang/Object;

    iput-object p2, v0, Lorg/mortbay/util/StringMap$a;->j:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/mortbay/util/StringMap$a;->i:Ljava/lang/String;

    iput-object p2, p0, Lorg/mortbay/util/StringMap$a;->j:Ljava/lang/Object;

    iget-object p2, p1, Lorg/mortbay/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {p2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lorg/mortbay/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p2, p0, Lorg/mortbay/util/StringMap$a;->h:[Lorg/mortbay/util/StringMap$a;

    iput-object p2, v0, Lorg/mortbay/util/StringMap$a;->h:[Lorg/mortbay/util/StringMap$a;

    iget p1, p1, Lorg/mortbay/util/StringMap;->_width:I

    new-array p2, p1, [Lorg/mortbay/util/StringMap$a;

    iput-object p2, p0, Lorg/mortbay/util/StringMap$a;->h:[Lorg/mortbay/util/StringMap$a;

    iget-object p0, v0, Lorg/mortbay/util/StringMap$a;->e:[C

    aget-char p0, p0, v4

    rem-int/2addr p0, p1

    aput-object v0, p2, p0

    iget-object p0, v0, Lorg/mortbay/util/StringMap$a;->f:[C

    if-eqz p0, :cond_2

    aget-char p0, p0, v4

    rem-int v1, p0, p1

    aget-object v1, p2, v1

    if-eq v1, v0, :cond_2

    rem-int/2addr p0, p1

    aput-object v0, p2, p0

    :cond_2
    return-object v0
.end method

.method public final b(Ljava/lang/StringBuffer;)V
    .locals 4

    const-string v0, "{["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/util/StringMap$a;->e:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/mortbay/util/StringMap$a;->e:[C

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-char v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/util/StringMap$a;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/util/StringMap$a;->j:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/util/StringMap$a;->h:[Lorg/mortbay/util/StringMap$a;

    if-eqz v0, :cond_3

    :goto_2
    iget-object v0, p0, Lorg/mortbay/util/StringMap$a;->h:[Lorg/mortbay/util/StringMap$a;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    const/16 v0, 0x7c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/util/StringMap$a;->h:[Lorg/mortbay/util/StringMap$a;

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/mortbay/util/StringMap$a;->b(Ljava/lang/StringBuffer;)V

    goto :goto_3

    :cond_2
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/util/StringMap$a;->g:Lorg/mortbay/util/StringMap$a;

    if-eqz v0, :cond_4

    const-string v0, ",\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/util/StringMap$a;->g:Lorg/mortbay/util/StringMap$a;

    invoke-virtual {p0, p1}, Lorg/mortbay/util/StringMap$a;->b(Ljava/lang/StringBuffer;)V

    :cond_4
    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/StringMap$a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/StringMap$a;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/util/StringMap$a;->j:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mortbay/util/StringMap$a;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/mortbay/util/StringMap$a;->b(Ljava/lang/StringBuffer;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
