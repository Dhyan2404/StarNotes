.class public final synthetic Lcom/sunia/HTREnginev2/krl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/krl;->e:[B

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/krl;->e:[B

    check-cast p1, [B

    invoke-static {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->a([B[B)Z

    move-result p0

    return p0
.end method
