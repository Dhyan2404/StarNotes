.class public Lcom/sunia/HTREnginev2/ran$a;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/ran;->j()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/ran;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/ran;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ran$a;->e:Lcom/sunia/HTREnginev2/ran;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ran$a;->e:Lcom/sunia/HTREnginev2/ran;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/ran;->H(Lcom/sunia/HTREnginev2/ran;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ran$a;->e:Lcom/sunia/HTREnginev2/ran;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/ran;->H(Lcom/sunia/HTREnginev2/ran;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    throw v0
.end method
