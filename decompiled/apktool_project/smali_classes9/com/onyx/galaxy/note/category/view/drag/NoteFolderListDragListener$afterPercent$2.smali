.class final Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$afterPercent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Float;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$afterPercent$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$afterPercent$2;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$afterPercent$2;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$afterPercent$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$afterPercent$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/onyx/galaxy/note/R$fraction;->config_drag_after_percent:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$afterPercent$2;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
