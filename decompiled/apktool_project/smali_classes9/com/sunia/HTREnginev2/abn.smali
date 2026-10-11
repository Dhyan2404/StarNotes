.class public final synthetic Lcom/sunia/HTREnginev2/abn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

.field public final synthetic f:Lcom/onyx/android/sdk/genericshape/GeoLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;Lcom/onyx/android/sdk/genericshape/GeoLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/abn;->e:Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/abn;->f:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/abn;->e:Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/abn;->f:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;->i(Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;Lcom/onyx/android/sdk/genericshape/GeoLayout;)V

    return-void
.end method
