.class public Lcom/sunia/HTREnginev2/k2e$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/k2e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:S

.field public final b:S

.field public final c:I


# direct methods
.method public constructor <init>(SSI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/sunia/HTREnginev2/k2e$e;->a:S

    iput-short p2, p0, Lcom/sunia/HTREnginev2/k2e$e;->b:S

    iput p3, p0, Lcom/sunia/HTREnginev2/k2e$e;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lcom/sunia/HTREnginev2/k2e$e;->a:S

    invoke-static {v0}, Lcom/sunia/HTREnginev2/k2e;->e(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-short v0, p0, Lcom/sunia/HTREnginev2/k2e$e;->b:S

    invoke-static {v0}, Lcom/sunia/HTREnginev2/k2e;->e(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget p0, p0, Lcom/sunia/HTREnginev2/k2e$e;->c:I

    invoke-static {p0}, Lcom/sunia/HTREnginev2/k2e;->d(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
