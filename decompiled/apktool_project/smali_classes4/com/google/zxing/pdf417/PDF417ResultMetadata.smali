.class public final Lcom/google/zxing/pdf417/PDF417ResultMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:[I

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getOptionalData()[I
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->c:[I

    return-object p0
.end method

.method public getSegmentIndex()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->a:I

    return p0
.end method

.method public isLastSegment()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->d:Z

    return p0
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->b:Ljava/lang/String;

    return-void
.end method

.method public setLastSegment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->d:Z

    return-void
.end method

.method public setOptionalData([I)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->c:[I

    return-void
.end method

.method public setSegmentIndex(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->a:I

    return-void
.end method
