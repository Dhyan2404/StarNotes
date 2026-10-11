.class public final Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;->F()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/action/SecurityCheckAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;Lcom/onyx/galaxy/note/category/action/SecurityCheckAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity$a;->e:Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity$a;->f:Lcom/onyx/galaxy/note/category/action/SecurityCheckAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/onyx/galaxy/note/NoteApp;->Companion:Lcom/onyx/galaxy/note/NoteApp$Companion;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/NoteApp$Companion;->getInstance()Lcom/onyx/galaxy/note/NoteApp;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/NoteApp;->initSdkWithAgreement()V

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity$a;->e:Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity$a;->f:Lcom/onyx/galaxy/note/category/action/SecurityCheckAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/SecurityCheckAction;->getHasAgreementBeforeCheck()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;->access$goToNext(Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity$a;->a(Z)V

    return-void
.end method
