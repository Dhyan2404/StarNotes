.class public final Lcom/onyx/galaxy/note/message/dialog/ImageUpgradePopup$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/message/dialog/ImageUpgradePopup;->p()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/message/dialog/ImageUpgradePopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/message/dialog/ImageUpgradePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/message/dialog/ImageUpgradePopup$a;->e:Lcom/onyx/galaxy/note/message/dialog/ImageUpgradePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)V
    .locals 2
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/ImageUpgradePopup$a;->e:Lcom/onyx/galaxy/note/message/dialog/ImageUpgradePopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->onPrimaryButtonClick(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/ImageUpgradePopup$a;->e:Lcom/onyx/galaxy/note/message/dialog/ImageUpgradePopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton1()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getNavType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/message/dialog/ImageUpgradePopup$a;->e:Lcom/onyx/galaxy/note/message/dialog/ImageUpgradePopup;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton1()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getArgs()Lcom/onyx/android/sdk/base/extension/StringMap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->navigateWithStrategy(Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringMap;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/dialog/ImageUpgradePopup$a;->e:Lcom/onyx/galaxy/note/message/dialog/ImageUpgradePopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton1()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getCloseStrategy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->closeWithStrategy(Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/message/dialog/ImageUpgradePopup$a;->a(Lkotlin/Unit;)V

    return-void
.end method
