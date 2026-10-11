.class public final Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction$Companion$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction$Companion;->updateCoverPage(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public final synthetic f:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction$Companion$a;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction$Companion$a;->f:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction$Companion$a;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction$Companion$a;->f:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1, v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->updateCoverPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction$Companion$a;->a(Z)V

    return-void
.end method
