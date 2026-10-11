.class public final Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;->o(Lcom/onyx/galaxy/note/category/data/TemplateFileBean;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$g;->e:Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$g;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$g;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$g;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/data/TemplateFileBean;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/data/TemplateFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$g;->e:Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$g;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$g;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$g;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;->access$generateStickerModel(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$g;->a(Lcom/onyx/galaxy/note/category/data/TemplateFileBean;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    move-result-object p0

    return-object p0
.end method
