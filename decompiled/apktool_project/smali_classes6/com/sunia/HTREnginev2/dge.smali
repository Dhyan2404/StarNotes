.class public final Lcom/sunia/HTREnginev2/dge;
.super Lcom/sunia/HTREnginev2/s3;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation runtime Lcom/sunia/HTREnginev2/wnf;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/dge$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/google/common/hash/HashFunction;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/dge;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/dge;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/dge;->e:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/s3;-><init>()V

    return-void
.end method


# virtual methods
.method public bits()I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 0

    new-instance p0, Lcom/sunia/HTREnginev2/dge$a;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/dge$a;-><init>()V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Hashing.crc32c()"

    return-object p0
.end method
