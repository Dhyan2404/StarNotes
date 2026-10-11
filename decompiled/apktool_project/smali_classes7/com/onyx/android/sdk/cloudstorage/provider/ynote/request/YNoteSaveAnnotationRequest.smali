.class public final Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nYNoteSaveAnnotationRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 YNoteSaveAnnotationRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,160:1\n1#2:161\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u001e\u001a\u00020\u001c\u0012\u0006\u0010!\u001a\u00020\u001f\u0012\u0006\u0010#\u001a\u00020\u0005\u00a2\u0006\u0004\u0008$\u0010%J\u0008\u0010\u0002\u001a\u00020\u0000H\u0016J\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005J\u0008\u0010\n\u001a\u00020\u0005H\u0002J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J \u0010\u0010\u001a\u0004\u0018\u00010\u000b2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000e2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0005H\u0002J\u0016\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000e2\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0005H\u0002J \u0010\u001a\u001a\u0004\u0018\u00010\u00032\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u000e\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000eH\u0002R\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010 R\u0014\u0010#\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "execute",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;",
        "noteBook",
        "",
        "noteTitle",
        "content",
        "",
        "createNote",
        "h",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;",
        "yNote",
        "b",
        "",
        "notePathList",
        "c",
        "path",
        "f",
        "notebook",
        "g",
        "name",
        "a",
        "noteBooks",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;",
        "rootNoteBook",
        "d",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;",
        "noteClient",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;",
        "cloudAnnotation",
        "Ljava/lang/String;",
        "token",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;Ljava/lang/String;)V",
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
        "SMAP\nYNoteSaveAnnotationRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 YNoteSaveAnnotationRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,160:1\n1#2:161\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudAnnotation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;

    iput-object p3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    const-string v1, "https://note.youdao.com/"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;->getYNoteService(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->c:Ljava/lang/String;

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

.method public final b(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    const-string v0, "https://note.youdao.com/"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;->getYNoteService(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;->deleteNote(Ljava/lang/String;)Lretrofit2/Call;

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

.method public final c(Ljava/util/List;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
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

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->f(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".note"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;->setPath(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final createNote(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "noteBook"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteTitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "notebook"

    invoke-virtual {v1, v2, p1}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {v1, v0, p3}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object p3

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

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

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    const-string v1, "https://note.youdao.com/"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;->getYNoteService(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->c:Ljava/lang/String;

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

.method public execute()Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->e()Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;->getNoteBook()Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4
    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->getRootNoteBook(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->d(Ljava/util/List;Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->a(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;->getNoteBook()Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v2, v1, v3}, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudNoteUtils;->getNoteTitle(Lcom/onyx/android/sdk/cloudstorage/model/CloudNoteBook;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-virtual {p0, v2, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->c(Ljava/util/List;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->b(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;)V

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->createNote(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;

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

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    const-string v1, "https://note.youdao.com/"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;->getYNoteService(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->c:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    const-string v1, "https://note.youdao.com/"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;->getYNoteService(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->c:Ljava/lang/String;

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

.method public final h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?><note xmlns=\"https://note.youdao.com\">"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/common/utils/AnnotationUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/common/utils/AnnotationUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteSaveAnnotationRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/common/utils/AnnotationUtils;->getAnnotationBodyContent(Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</note>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
