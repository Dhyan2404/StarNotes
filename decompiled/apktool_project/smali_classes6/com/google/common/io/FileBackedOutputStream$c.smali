.class public Lcom/google/common/io/FileBackedOutputStream$c;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/FileBackedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/io/FileBackedOutputStream$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/io/FileBackedOutputStream$c;-><init>()V

    return-void
.end method


# virtual methods
.method public f()[B
    .locals 0

    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-object p0
.end method

.method public getCount()I
    .locals 0

    iget p0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    return p0
.end method
