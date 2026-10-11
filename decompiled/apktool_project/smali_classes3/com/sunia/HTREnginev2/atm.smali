.class public Lcom/sunia/HTREnginev2/atm;
.super Landroidx/documentfile/provider/DocumentFile;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation


# instance fields
.field public c:Landroid/content/Context;

.field public d:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroidx/documentfile/provider/DocumentFile;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/documentfile/provider/DocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;)V

    iput-object p2, p0, Lcom/sunia/HTREnginev2/atm;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/atm;->d:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public canRead()Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/atm;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/atm;->d:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/vaf;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public canWrite()Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/atm;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/atm;->d:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/vaf;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public createDirectory(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public delete()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/atm;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/atm;->d:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public exists()Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/atm;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/atm;->d:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/vaf;->d(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/atm;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/atm;->d:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/vaf;->f(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/atm;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/atm;->d:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/vaf;->h(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/atm;->d:Landroid/net/Uri;

    return-object p0
.end method

.method public isDirectory()Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/atm;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/atm;->d:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/vaf;->i(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public isFile()Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/atm;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/atm;->d:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/vaf;->j(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public isVirtual()Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/atm;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/atm;->d:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/vaf;->k(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public lastModified()J
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/atm;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/atm;->d:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/vaf;->l(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/atm;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/atm;->d:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/vaf;->m(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public listFiles()[Landroidx/documentfile/provider/DocumentFile;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
