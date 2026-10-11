.class public final synthetic Lcom/onyx/galaxy/note/NoteApp$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/NoteApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/base/utils/Debug;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/base/utils/Debug;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/NoteApp$b;->e:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/NoteApp$b;->e:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/DebugKt;->eIgnorable(Lcom/onyx/android/sdk/base/utils/Debug;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/NoteApp$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method
