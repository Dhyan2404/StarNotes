.class public final Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initMaterialCategory$1;
.super Lcom/onyx/galaxy/note/category/view/adapter/template/ScrollPositionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;->z0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initMaterialCategory$1",
        "Lcom/onyx/galaxy/note/category/view/adapter/template/ScrollPositionListener;",
        "onPositionChange",
        "",
        "position",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initMaterialCategory$1;->b:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/view/adapter/template/ScrollPositionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionChange(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/ScrollPositionListener;->onPositionChange(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initMaterialCategory$1;->b:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;->access$resetCategoryTitleDisplay(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;I)V

    return-void
.end method
