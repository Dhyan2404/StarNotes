.class final Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$setGraphFill$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->setGraphFill(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;",
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
.field final synthetic $fillColorEnable:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$setGraphFill$1;->$fillColorEnable:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$setGraphFill$1;->invoke(Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$setGraphFill$1;->$fillColorEnable:Z

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->setFillColorEnable(Z)V

    .line 3
    :goto_0
    iget-boolean p0, p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$setGraphFill$1;->$fillColorEnable:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 4
    sget-object p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$setGraphFill$1$1;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$setGraphFill$1$1;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->updateFillColorIfNotValid(Lkotlin/jvm/functions/Function0;)V

    :cond_1
    return-void
.end method
