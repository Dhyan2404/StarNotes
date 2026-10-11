.class public final Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010#\u001a\u00020!\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010&\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\'\u0010(J\u0008\u0010\u0002\u001a\u00020\u0000H\u0016J\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J&\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0016\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J \u0010\u0012\u001a\u0004\u0018\u00010\u00032\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00052\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u000fH\u0002J\u0016\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00052\u0006\u0010\u0015\u001a\u00020\u000fH\u0002J\u0018\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u000fH\u0002J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u000fH\u0002J \u0010\u001f\u001a\u0004\u0018\u00010\n2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00052\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u000e\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005H\u0002R\u0014\u0010#\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\"R\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010$R\u0014\u0010&\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "execute",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;",
        "note",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteResource;",
        "resources",
        "",
        "i",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;",
        "noteBook",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;",
        "cloudNote",
        "a",
        "",
        "h",
        "notePathList",
        "c",
        "path",
        "f",
        "notebook",
        "g",
        "k",
        "filePath",
        "j",
        "name",
        "b",
        "noteBooks",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;",
        "rootNoteBook",
        "d",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;",
        "noteClient",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;",
        "Ljava/lang/String;",
        "token",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;Ljava/lang/String;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudNote"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;

    iput-object p3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteResource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->getNoteBook()Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, p2}, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->getNoteTitle(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "notebook"

    invoke-virtual {v0, v1, p1}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    const-string v1, "content"

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object p3

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    const-string v0, "https://note.youdao.com/"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;->getYNoteService(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;

    move-result-object p0

    invoke-interface {p0, p2, p1, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;->createNote(Lokhttp3/MultipartBody$Part;Lokhttp3/MultipartBody$Part;Lokhttp3/MultipartBody$Part;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    const-string v1, "https://note.youdao.com/"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;->getYNoteService(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->c:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;->createNoteBook(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/CreateNoteBookResponse;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/CreateNoteBookResponse;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;->setPath(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/util/List;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;",
            ")",
            "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->f(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->getNoteBook()Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->getNoteTitle(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".note"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;->setPath(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(Ljava/util/List;Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;",
            ">;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;",
            ")",
            "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    const-string v1, "https://note.youdao.com/"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;->getYNoteService(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->c:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;->allNoteBook(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "body(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute()Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->e()Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->getNoteBook()Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 4
    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->getRootNoteBook(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->d(Ljava/util/List;Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->b(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->k(Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)Ljava/util/List;

    move-result-object v1

    .line 7
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    return-object p0

    .line 8
    :cond_4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;

    invoke-virtual {p0, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->c(Ljava/util/List;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;

    move-result-object v2

    if-nez v2, :cond_5

    .line 10
    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;

    invoke-virtual {p0, v0, v2, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->a(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;Ljava/util/List;)V

    goto :goto_2

    .line 11
    :cond_5
    invoke-virtual {p0, v2, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->i(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;Ljava/util/List;)V

    :cond_6
    :goto_2
    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    const-string v1, "https://note.youdao.com/"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;->getYNoteService(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->c:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;->getNoteInfo(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "body(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    const-string v1, "https://note.youdao.com/"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;->getYNoteService(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->c:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;->getNoteList(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "body(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteResource;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteResource;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteResource;->getUrl()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<img src=\"%s\"> "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final i(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteResource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    const-string v1, "content"

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object p2

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    const-string v0, "https://note.youdao.com/"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;->getYNoteService(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;->updateNote(Lokhttp3/MultipartBody$Part;Lokhttp3/MultipartBody$Part;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteResource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    sget-object v1, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-virtual {v1, v2, v0, p1}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    const-string v0, "https://note.youdao.com/"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;->getYNoteService(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;->uploadAttachment(Lokhttp3/MultipartBody$Part;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "body(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteResource;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteResource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;->getResource()Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudResource;->getImagePaths()Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveNoteRequest;->j(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteResource;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object v0
.end method
