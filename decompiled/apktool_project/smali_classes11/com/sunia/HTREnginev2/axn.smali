.class public final synthetic Lcom/sunia/HTREnginev2/axn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOSupplier;


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/axn;->a:[B

    iput p2, p0, Lcom/sunia/HTREnginev2/axn;->b:I

    iput p3, p0, Lcom/sunia/HTREnginev2/axn;->c:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/axn;->a:[B

    iget v1, p0, Lcom/sunia/HTREnginev2/axn;->b:I

    iget p0, p0, Lcom/sunia/HTREnginev2/axn;->c:I

    invoke-static {v0, v1, p0}, Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->f([BII)Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    move-result-object p0

    return-object p0
.end method
