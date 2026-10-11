.class public Lorg/apache/poi/hslf/usermodel/HSLFSlideShowFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/SlideShowProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/SlideShowProvider<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSlideShow(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-object v0
.end method


# virtual methods
.method public accepts(Lorg/apache/poi/poifs/filesystem/FileMagic;)Z
    .locals 0

    sget-object p0, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public create()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;
    .locals 0

    .line 6
    new-instance p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;-><init>()V

    return-object p0
.end method

.method public create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 14
    invoke-static {p2}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p2, 0x0

    .line 15
    :try_start_0
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    new-instance v1, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v1, p1, p3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 16
    invoke-static {p2}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    invoke-static {p2}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    .line 17
    :cond_2
    throw p1
.end method

.method public create(Ljava/io/InputStream;)Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowFactory;->create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p0

    return-object p0
.end method

.method public create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 13
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowFactory;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p0

    return-object p0
.end method

.method public create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 7
    invoke-static {p2}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p2, 0x0

    .line 8
    :try_start_0
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    invoke-direct {v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 9
    invoke-static {p2}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    invoke-static {p2}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    .line 10
    :cond_2
    throw p1
.end method

.method public bridge synthetic create()Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowFactory;->create()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowFactory;->create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic create(Ljava/io/InputStream;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowFactory;->create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowFactory;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p0

    return-object p0
.end method
