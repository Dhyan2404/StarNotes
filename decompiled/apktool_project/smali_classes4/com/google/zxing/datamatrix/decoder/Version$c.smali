.class public final Lcom/google/zxing/datamatrix/decoder/Version$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Lcom/google/zxing/datamatrix/decoder/Version$b;


# direct methods
.method public constructor <init>(ILcom/google/zxing/datamatrix/decoder/Version$b;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/Version$c;->a:I

    .line 5
    filled-new-array {p2}, [Lcom/google/zxing/datamatrix/decoder/Version$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/datamatrix/decoder/Version$c;->b:[Lcom/google/zxing/datamatrix/decoder/Version$b;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$b;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/Version$c;->a:I

    .line 8
    filled-new-array {p2, p3}, [Lcom/google/zxing/datamatrix/decoder/Version$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/datamatrix/decoder/Version$c;->b:[Lcom/google/zxing/datamatrix/decoder/Version$b;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$b;)V

    return-void
.end method


# virtual methods
.method public a()[Lcom/google/zxing/datamatrix/decoder/Version$b;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/datamatrix/decoder/Version$c;->b:[Lcom/google/zxing/datamatrix/decoder/Version$b;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/datamatrix/decoder/Version$c;->a:I

    return p0
.end method
