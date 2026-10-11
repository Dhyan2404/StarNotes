.class public Lcom/sunia/HTREnginev2/k2e$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/k2e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final c:S = 0x8s

.field public static final d:S = 0x2s

.field public static final e:S = 0x8s

.field public static final f:B = 0x1ct

.field public static final g:I = 0x10


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/k2e$f;->a:I

    iput p2, p0, Lcom/sunia/HTREnginev2/k2e$f;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/sunia/HTREnginev2/k2e;->e(S)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sunia/HTREnginev2/k2e;->e(S)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    iget v2, p0, Lcom/sunia/HTREnginev2/k2e$f;->a:I

    invoke-static {v2}, Lcom/sunia/HTREnginev2/k2e;->d(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0}, Lcom/sunia/HTREnginev2/k2e;->e(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget p0, p0, Lcom/sunia/HTREnginev2/k2e$f;->b:I

    invoke-static {p0}, Lcom/sunia/HTREnginev2/k2e;->d(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1ct
    .end array-data
.end method
