.class final Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$switchSetting$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->switchSetting(Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;",
        "it",
        "",
        "invoke",
        "(Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $comforterConfig:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$switchSetting$1;->$comforterConfig:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$switchSetting$1;->invoke(Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$switchSetting$1;->$comforterConfig:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->getType()Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;->g(Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;)V

    :goto_0
    return-void
.end method
