.class public Lcom/sunia/HTREnginev2/hv$a;
.super Lcom/sunia/HTREnginev2/hv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/hv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/hv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/sunia/HTREnginev2/v9;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/v9;->j(Ljava/nio/ByteBuffer;)Lcom/sunia/HTREnginev2/v9;

    move-result-object p0

    return-object p0
.end method

.method public b(I)Lcom/sunia/HTREnginev2/v9;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    new-array p0, p1, [B

    invoke-static {p0}, Lcom/sunia/HTREnginev2/v9;->k([B)Lcom/sunia/HTREnginev2/v9;

    move-result-object p0

    return-object p0
.end method
