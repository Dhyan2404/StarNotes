.class public Lcom/google/protobuf/CodedInputStream$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/CodedInputStream$d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedInputStream$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/io/ByteArrayOutputStream;

.field public final synthetic c:Lcom/google/protobuf/CodedInputStream$d;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/CodedInputStream$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$d$b;->c:Lcom/google/protobuf/CodedInputStream$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream$d;->i(Lcom/google/protobuf/CodedInputStream$d;)I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/CodedInputStream$d$b;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$d$b;->b:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$d$b;->c:Lcom/google/protobuf/CodedInputStream$d;

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream$d;->j(Lcom/google/protobuf/CodedInputStream$d;)[B

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$d$b;->a:I

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$d$b;->c:Lcom/google/protobuf/CodedInputStream$d;

    invoke-static {v2}, Lcom/google/protobuf/CodedInputStream$d;->i(Lcom/google/protobuf/CodedInputStream$d;)I

    move-result v2

    iget p0, p0, Lcom/google/protobuf/CodedInputStream$d$b;->a:I

    sub-int/2addr v2, p0

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$d$b;->c:Lcom/google/protobuf/CodedInputStream$d;

    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream$d;->j(Lcom/google/protobuf/CodedInputStream$d;)[B

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d$b;->a:I

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$d$b;->c:Lcom/google/protobuf/CodedInputStream$d;

    invoke-static {v3}, Lcom/google/protobuf/CodedInputStream$d;->i(Lcom/google/protobuf/CodedInputStream$d;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStream$d$b;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public onRefill()V
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$d$b;->b:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/CodedInputStream$d$b;->b:Ljava/io/ByteArrayOutputStream;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$d$b;->b:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$d$b;->c:Lcom/google/protobuf/CodedInputStream$d;

    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream$d;->j(Lcom/google/protobuf/CodedInputStream$d;)[B

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$d$b;->a:I

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$d$b;->c:Lcom/google/protobuf/CodedInputStream$d;

    invoke-static {v3}, Lcom/google/protobuf/CodedInputStream$d;->i(Lcom/google/protobuf/CodedInputStream$d;)I

    move-result v3

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$d$b;->a:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$d$b;->a:I

    return-void
.end method
