.class public abstract Lcom/onyx/galaxy/note/common/base/BaseNavigationActivity;
.super Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0006\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014J\u0008\u0010\u0008\u001a\u00020\u0007H\'J\n\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0014R\"\u0010\u000b\u001a\u00020\n8\u0004@\u0004X\u0084.\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/base/BaseNavigationActivity;",
        "Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;",
        "",
        "E",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "",
        "getNavigationResId",
        "getStartDestinationArgs",
        "Lcom/onyx/galaxy/note/databinding/ActivityNavigationBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/databinding/ActivityNavigationBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/ActivityNavigationBinding;",
        "setBinding",
        "(Lcom/onyx/galaxy/note/databinding/ActivityNavigationBinding;)V",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field protected binding:Lcom/onyx/galaxy/note/databinding/ActivityNavigationBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;-><init>()V

    return-void
.end method

.method private final E()V
    .locals 2

    sget v0, Lcom/onyx/galaxy/note/R$id;->nav_host_fragment_main:I

    invoke-static {p0, v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/BaseNavigationActivity;->getNavigationResId()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/BaseNavigationActivity;->getStartDestinationArgs()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroidx/navigation/NavController;->setGraph(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/onyx/galaxy/note/databinding/ActivityNavigationBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/base/BaseNavigationActivity;->binding:Lcom/onyx/galaxy/note/databinding/ActivityNavigationBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getNavigationResId()I
    .annotation build Landroidx/annotation/NavigationRes;
    .end annotation
.end method

.method public getStartDestinationArgs()Landroid/os/Bundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffbe

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setBinding(Lcom/onyx/galaxy/note/databinding/ActivityNavigationBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/databinding/ActivityNavigationBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/base/BaseNavigationActivity;->binding:Lcom/onyx/galaxy/note/databinding/ActivityNavigationBinding;

    return-void
.end method
