.class public Lcom/sunia/HTREnginev2/k2e$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/k2e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/k2e$i;)[B
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k2e$i;->a:[B

    return-object p0
.end method


# virtual methods
.method public b(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sunia/HTREnginev2/k2e$i;->b:I

    invoke-static {v0}, Lcom/sunia/HTREnginev2/k2e;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lcom/sunia/HTREnginev2/k2e$i;->c:I

    invoke-static {v0}, Lcom/sunia/HTREnginev2/k2e;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget p0, p0, Lcom/sunia/HTREnginev2/k2e$i;->d:I

    invoke-static {p0}, Lcom/sunia/HTREnginev2/k2e;->d(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
