.class final Lcom/onyx/android/sdk/reader/ReaderBundle$ensureReaderByPath$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/reader/ReaderBundle;->ensureReaderByPath(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/reader/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lcom/onyx/android/sdk/reader/Reader;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/reader/Reader;",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $password:Ljava/lang/String;

.field final synthetic $path:Ljava/lang/String;

.field final synthetic this$0:Lcom/onyx/android/sdk/reader/ReaderBundle;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/ReaderBundle$ensureReaderByPath$1;->this$0:Lcom/onyx/android/sdk/reader/ReaderBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/ReaderBundle$ensureReaderByPath$1;->$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/reader/ReaderBundle$ensureReaderByPath$1;->$password:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/Reader;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/onyx/android/sdk/reader/Reader;

    invoke-direct {p1}, Lcom/onyx/android/sdk/reader/Reader;-><init>()V

    .line 3
    new-instance v8, Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;

    .line 4
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/ReaderBundle$ensureReaderByPath$1;->this$0:Lcom/onyx/android/sdk/reader/ReaderBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/ReaderBundle;->getDocId()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/onyx/android/sdk/reader/ReaderBundle$ensureReaderByPath$1;->$path:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/ReaderBundle$ensureReaderByPath$1;->$password:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v3, v0

    .line 7
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/ReaderBundle$ensureReaderByPath$1;->this$0:Lcom/onyx/android/sdk/reader/ReaderBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/ReaderBundle;->getViewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v5, v5, v0, v4}, Lcom/onyx/android/sdk/base/data/Size;->copy$default(Lcom/onyx/android/sdk/base/data/Size;IIILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, v8

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    invoke-static {p1, v8}, Lcom/onyx/android/sdk/reader/extension/ReaderKt;->open(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/ReaderBundle$ensureReaderByPath$1;->invoke(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/Reader;

    move-result-object p0

    return-object p0
.end method
