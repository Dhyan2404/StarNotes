.class public final Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;->create()Lio/reactivex/rxjava3/core/Observable;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObtainDocumentListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObtainDocumentListAction.kt\ncom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction$create$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n1#2:19\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nObtainDocumentListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObtainDocumentListAction.kt\ncom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction$create$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n1#2:19\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction$a;->e:Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction$a;->e:Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;->getData()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->obtainResult(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction$a;->e:Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;->setDocumentList(Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction$a;->a(Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
