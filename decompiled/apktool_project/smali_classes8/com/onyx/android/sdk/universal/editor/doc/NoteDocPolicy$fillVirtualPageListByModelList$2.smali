.class final Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$fillVirtualPageListByModelList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->n(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic $pair:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;Lkotlin/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$fillVirtualPageListByModelList$2;->this$0:Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$fillVirtualPageListByModelList$2;->$pair:Lkotlin/Pair;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$fillVirtualPageListByModelList$2;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$fillVirtualPageListByModelList$2;->this$0:Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;->access$tag(Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createVirtualPage, toVirtualPageList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/NoteDocPolicy$fillVirtualPageListByModelList$2;->$pair:Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
