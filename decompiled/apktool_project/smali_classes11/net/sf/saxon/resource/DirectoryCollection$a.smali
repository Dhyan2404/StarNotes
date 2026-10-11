.class public Lnet/sf/saxon/resource/DirectoryCollection$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/resource/DirectoryCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/io/FilenameFilter;

.field public final g:Z

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Stack;ZLjava/io/FilenameFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;>;Z",
            "Ljava/io/FilenameFilter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/resource/DirectoryCollection$a;->h:Ljava/lang/String;

    iput-object p1, p0, Lnet/sf/saxon/resource/DirectoryCollection$a;->e:Ljava/util/Stack;

    iput-boolean p2, p0, Lnet/sf/saxon/resource/DirectoryCollection$a;->g:Z

    iput-object p3, p0, Lnet/sf/saxon/resource/DirectoryCollection$a;->f:Ljava/io/FilenameFilter;

    invoke-virtual {p0}, Lnet/sf/saxon/resource/DirectoryCollection$a;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/resource/DirectoryCollection$a;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lnet/sf/saxon/resource/DirectoryCollection$a;->h:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/resource/DirectoryCollection$a;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/resource/DirectoryCollection$a;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lnet/sf/saxon/resource/DirectoryCollection$a;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lnet/sf/saxon/resource/DirectoryCollection$a;->h:Ljava/lang/String;

    return-void

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/resource/DirectoryCollection$a;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lnet/sf/saxon/resource/DirectoryCollection$a;->g:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/sf/saxon/resource/DirectoryCollection$a;->e:Ljava/util/Stack;

    iget-object v2, p0, Lnet/sf/saxon/resource/DirectoryCollection$a;->f:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/resource/DirectoryCollection$a;->a()V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/resource/DirectoryCollection$a;->h:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/resource/DirectoryCollection$a;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/resource/DirectoryCollection$a;->a()V

    return-object v0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/resource/DirectoryCollection$a;->h:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/resource/DirectoryCollection$a;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
