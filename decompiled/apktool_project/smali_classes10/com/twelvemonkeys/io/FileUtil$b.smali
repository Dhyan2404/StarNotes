.class public Lcom/twelvemonkeys/io/FileUtil$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/util/Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/io/FileUtil;->d(Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twelvemonkeys/util/Visitor<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/io/IOException;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twelvemonkeys/io/FileUtil$b;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/io/FileUtil$b;->b:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/FileUtil$b;->b:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget p0, p0, Lcom/twelvemonkeys/io/FileUtil$b;->a:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    throw v0
.end method

.method public b(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/twelvemonkeys/io/FileUtil;->delete(Ljava/io/File;Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/twelvemonkeys/io/FileUtil$b;->a:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/twelvemonkeys/io/FileUtil$b;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget v1, p0, Lcom/twelvemonkeys/io/FileUtil$b;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/twelvemonkeys/io/FileUtil$b;->a:I

    iget-object v0, p0, Lcom/twelvemonkeys/io/FileUtil$b;->b:Ljava/io/IOException;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/twelvemonkeys/io/FileUtil$b;->b:Ljava/io/IOException;

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic visit(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/io/FileUtil$b;->b(Ljava/io/File;)V

    return-void
.end method
