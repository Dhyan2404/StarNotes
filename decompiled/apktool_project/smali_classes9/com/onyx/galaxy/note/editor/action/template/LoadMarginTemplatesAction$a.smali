.class public final Lcom/onyx/galaxy/note/editor/action/template/LoadMarginTemplatesAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/template/LoadMarginTemplatesAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/template/LoadMarginTemplatesAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/template/LoadMarginTemplatesAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadMarginTemplatesAction$a;->e:Lcom/onyx/galaxy/note/editor/action/template/LoadMarginTemplatesAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/template/LoadMarginTemplatesAction;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/action/template/LoadMarginTemplatesAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/template/LoadMarginTemplatesAction$a;->e:Lcom/onyx/galaxy/note/editor/action/template/LoadMarginTemplatesAction;

    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    const-string v1, "margin_template_configuration.json"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->readAssetsContentAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateConfiguration;

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateConfiguration;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/template/LoadMarginTemplatesAction;->setTemplateConfiguration(Lcom/onyx/galaxy/note/editor/data/PageMarginTemplateConfiguration;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/template/LoadMarginTemplatesAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/template/LoadMarginTemplatesAction$a;->a(Lcom/onyx/galaxy/note/editor/action/template/LoadMarginTemplatesAction;)V

    return-void
.end method
