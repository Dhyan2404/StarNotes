.class public Lcom/google/zxing/aztec/encoder/HighLevelEncoder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->encode()Lcom/google/zxing/common/BitArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sunia/HTREnginev2/cym;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/zxing/aztec/encoder/HighLevelEncoder;


# direct methods
.method public constructor <init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$a;->e:Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunia/HTREnginev2/cym;Lcom/sunia/HTREnginev2/cym;)I
    .locals 0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/cym;->d()I

    move-result p0

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/cym;->d()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sunia/HTREnginev2/cym;

    check-cast p2, Lcom/sunia/HTREnginev2/cym;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$a;->a(Lcom/sunia/HTREnginev2/cym;Lcom/sunia/HTREnginev2/cym;)I

    move-result p0

    return p0
.end method
