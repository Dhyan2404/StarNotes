.class public final Lcom/sunia/HTREnginev2/npn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[I


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/lpn;

.field public final b:Lcom/sunia/HTREnginev2/mpn;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    filled-new-array {v0, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/npn;->c:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sunia/HTREnginev2/lpn;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/lpn;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/npn;->a:Lcom/sunia/HTREnginev2/lpn;

    new-instance v0, Lcom/sunia/HTREnginev2/mpn;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/mpn;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/npn;->b:Lcom/sunia/HTREnginev2/mpn;

    return-void
.end method


# virtual methods
.method public a(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/sunia/HTREnginev2/npn;->c:[I

    invoke-static {p2, p3, v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->d(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object p3

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/npn;->b:Lcom/sunia/HTREnginev2/mpn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/mpn;->b(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/npn;->a:Lcom/sunia/HTREnginev2/lpn;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/lpn;->b(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;

    move-result-object p0

    return-object p0
.end method
