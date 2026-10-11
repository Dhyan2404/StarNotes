.class public final Lcom/sunia/HTREnginev2/j6j;
.super Lcom/sunia/HTREnginev2/s3;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation runtime Lcom/sunia/HTREnginev2/wnf;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/j6j$b;
    }
.end annotation


# instance fields
.field public final e:Ljavax/crypto/Mac;

.field public final f:Ljava/security/Key;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/s3;-><init>()V

    invoke-static {p1, p2}, Lcom/sunia/HTREnginev2/j6j;->a(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j6j;->e:Ljavax/crypto/Mac;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/Key;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/j6j;->f:Ljava/security/Key;

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/j6j;->g:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result p2

    mul-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/sunia/HTREnginev2/j6j;->h:I

    invoke-static {p1}, Lcom/sunia/HTREnginev2/j6j;->b(Ljavax/crypto/Mac;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/j6j;->i:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static b(Ljavax/crypto/Mac;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bits()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/j6j;->h:I

    return p0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 3

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/j6j;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/sunia/HTREnginev2/j6j$b;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/j6j;->e:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/Mac;

    invoke-direct {v0, v2, v1}, Lcom/sunia/HTREnginev2/j6j$b;-><init>(Ljavax/crypto/Mac;Lcom/sunia/HTREnginev2/j6j$a;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/j6j$b;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/j6j;->e:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j6j;->f:Ljava/security/Key;

    invoke-static {v2, p0}, Lcom/sunia/HTREnginev2/j6j;->a(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/j6j$b;-><init>(Ljavax/crypto/Mac;Lcom/sunia/HTREnginev2/j6j$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j6j;->g:Ljava/lang/String;

    return-object p0
.end method
