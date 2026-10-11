.class public final Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/evernote/edam/type/Note;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEvernoteSaveNoteRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EvernoteSaveNoteRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,210:1\n1#2:211\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0018\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u001a\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\u0017\u001a\u00020\u0011H\u0002R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0019R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/evernote/edam/type/Note;",
        "execute",
        "Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;",
        "noteStoreClient",
        "Lcom/evernote/edam/type/Notebook;",
        "notebook",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;",
        "cloudNote",
        "h",
        "Lcom/evernote/client/android/type/NoteRef;",
        "e",
        "g",
        "note",
        "Ljava/io/File;",
        "file",
        "",
        "a",
        "Lcom/evernote/edam/type/Resource;",
        "d",
        "c",
        "f",
        "b",
        "Lcom/evernote/client/android/EvernoteSession;",
        "Lcom/evernote/client/android/EvernoteSession;",
        "session",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;",
        "<init>",
        "(Lcom/evernote/client/android/EvernoteSession;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)V",
        "Companion",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEvernoteSaveNoteRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EvernoteSaveNoteRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,210:1\n1#2:211\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:J = 0x5000000L


# instance fields
.field public final a:Lcom/evernote/client/android/EvernoteSession;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/evernote/client/android/EvernoteSession;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)V
    .locals 1
    .param p1    # Lcom/evernote/client/android/EvernoteSession;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudNote"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->a:Lcom/evernote/client/android/EvernoteSession;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;

    return-void
.end method


# virtual methods
.method public final a(Lcom/evernote/edam/type/Note;Ljava/io/File;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->d(Ljava/io/File;)Lcom/evernote/edam/type/Resource;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/evernote/edam/type/Note;->addToResources(Lcom/evernote/edam/type/Resource;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!DOCTYPE en-note SYSTEM \"http://xml.evernote.com/pub/enml2.dtd\"><en-note>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/evernote/client/android/EvernoteUtil;->createEnMediaTag(Lcom/evernote/edam/type/Resource;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</en-note>"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/evernote/edam/type/Note;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->getResource()Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;->getPdfPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->sizeOf(Ljava/io/File;)J

    move-result-wide v0

    const-wide/32 v2, 0x5000000

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pdf file len: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/evernote/edam/error/EDAMUserException;

    sget-object v0, Lcom/evernote/edam/error/EDAMErrorCode;->LIMIT_REACHED:Lcom/evernote/edam/error/EDAMErrorCode;

    invoke-direct {p0, v0}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMErrorCode;)V

    throw p0
.end method

.method public final c(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)Lcom/evernote/edam/type/Notebook;
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->getNoteBook()Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->getRootNoteBook(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    move-result-object p0

    new-instance p2, Lcom/evernote/edam/type/Notebook;

    invoke-direct {p2}, Lcom/evernote/edam/type/Notebook;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->getTitle()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-virtual {p2, p0}, Lcom/evernote/edam/type/Notebook;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->createNotebook(Lcom/evernote/edam/type/Notebook;)Lcom/evernote/edam/type/Notebook;

    move-result-object v0
    :try_end_0
    .catch Lcom/evernote/edam/error/EDAMUserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/evernote/edam/error/EDAMSystemException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/evernote/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public final d(Ljava/io/File;)Lcom/evernote/edam/type/Resource;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Lcom/evernote/client/conn/mobile/FileData;

    invoke-static {v1}, Lcom/evernote/client/android/EvernoteUtil;->hash(Ljava/io/InputStream;)[B

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/evernote/client/conn/mobile/FileData;-><init>([BLjava/io/File;)V

    new-instance p1, Lcom/evernote/edam/type/ResourceAttributes;

    invoke-direct {p1}, Lcom/evernote/edam/type/ResourceAttributes;-><init>()V

    sget-object v3, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->getNotePdfTitle(Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/evernote/edam/type/ResourceAttributes;->setFileName(Ljava/lang/String;)V

    new-instance p0, Lcom/evernote/edam/type/Resource;

    invoke-direct {p0}, Lcom/evernote/edam/type/Resource;-><init>()V

    invoke-virtual {p0, v2}, Lcom/evernote/edam/type/Resource;->setData(Lcom/evernote/edam/type/Data;)V

    const-string v2, "application/pdf"

    invoke-virtual {p0, v2}, Lcom/evernote/edam/type/Resource;->setMime(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/Resource;->setAttributes(Lcom/evernote/edam/type/ResourceAttributes;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v1, v0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    :goto_1
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catch_3
    move-exception p0

    move-object v1, v0

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_3
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_1

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    throw p0
.end method

.method public final e(Lcom/evernote/edam/type/Notebook;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)Lcom/evernote/client/android/type/NoteRef;
    .locals 4

    new-instance v0, Lcom/evernote/edam/notestore/NoteFilter;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteFilter;-><init>()V

    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->getGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteFilter;->setNotebookGuid(Ljava/lang/String;)V

    new-instance p1, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;

    invoke-direct {p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;-><init>()V

    invoke-virtual {p1, v0}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->setNoteFilter(Lcom/evernote/edam/notestore/NoteFilter;)Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->a:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getEvernoteSearchHelper()Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->execute(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->getAllAsNoteRef()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/client/android/type/NoteRef;

    invoke-virtual {p1}, Lcom/evernote/client/android/type/NoteRef;->getTitle()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->getNoteBook()Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->getNoteTitle(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public execute()Lcom/evernote/edam/type/Note;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->b()V

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->a:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getNoteStoreClient()Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->f(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)Lcom/evernote/edam/type/Notebook;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->c(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)Lcom/evernote/edam/type/Notebook;

    move-result-object v1

    .line 6
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->h(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/Notebook;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->execute()Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)Lcom/evernote/edam/type/Notebook;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->listNotebooks()Ljava/util/List;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->getNoteBook()Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->getRootNoteBook(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evernote/edam/type/Notebook;

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion;

    invoke-virtual {p2}, Lcom/evernote/edam/type/Notebook;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook$Companion;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_2
    return-object v0
.end method

.method public final g(Lcom/evernote/edam/type/Notebook;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)Lcom/evernote/edam/type/Note;
    .locals 4

    new-instance v0, Lcom/evernote/edam/type/Note;

    invoke-direct {v0}, Lcom/evernote/edam/type/Note;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->getNoteBook()Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->getNoteTitle(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->fullTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evernote/edam/type/Note;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evernote/edam/type/Note;->setGuid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/edam/type/Notebook;->getGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Note;->setNotebookGuid(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->getResource()Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;->getPdfPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->a(Lcom/evernote/edam/type/Note;Ljava/io/File;)V

    return-object v0
.end method

.method public final h(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/Notebook;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)Lcom/evernote/edam/type/Note;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->g(Lcom/evernote/edam/type/Notebook;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)Lcom/evernote/edam/type/Note;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;->e(Lcom/evernote/edam/type/Notebook;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)Lcom/evernote/client/android/type/NoteRef;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1, v0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->createNote(Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;

    move-result-object p0

    const-string p1, "createNote(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/client/android/type/NoteRef;->getGuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/evernote/edam/type/Note;->setGuid(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->updateNote(Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;

    move-result-object p0

    const-string p1, "updateNote(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
