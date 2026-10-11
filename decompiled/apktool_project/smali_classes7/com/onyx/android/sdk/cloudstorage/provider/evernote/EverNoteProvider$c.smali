.class public final Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->saveAnnotation(Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$c;->e:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$c;->e:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->access$onException(Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$c;->e:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->access$toCloudNoteException(Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;Ljava/lang/Throwable;)Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult$Companion;->fail(Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;)Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$c;->a(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;

    move-result-object p0

    return-object p0
.end method
