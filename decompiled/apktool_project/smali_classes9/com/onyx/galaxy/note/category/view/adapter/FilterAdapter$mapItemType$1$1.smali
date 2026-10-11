.class final Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$mapItemType$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Integer;"
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
.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $position:I

.field final synthetic this$0:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$mapItemType$1$1;->this$0:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$mapItemType$1$1;->$list:Ljava/util/List;

    iput p3, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$mapItemType$1$1;->$position:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LogFileUtils;

    .line 3
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$mapItemType$1$1;->this$0:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemViewType get a error type from list:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$mapItemType$1$1;->$list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$mapItemType$1$1;->$position:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->e(Ljava/lang/Class;Ljava/lang/String;)V

    const/16 p0, 0x64

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$mapItemType$1$1;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
