.class public final Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;
.super Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u000eR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "()V",
        "bean",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V",
        "saved",
        "",
        "getSaved",
        "()Z",
        "setSaved",
        "(Z)V",
        "getIconColorStateList",
        "Landroid/content/res/ColorStateList;",
        "setNotSaved",
        "",
        "sdk-replicator_overseasRelease"
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
.field private saved:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;->saved:Z

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;->saved:Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->updateModelField(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V

    return-void
.end method


# virtual methods
.method public final getIconColorStateList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/replicator/R$integer;->tree_tag_icon_alpha:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result p0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    const-string v0, "valueOf(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getSaved()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;->saved:Z

    return p0
.end method

.method public final setNotSaved()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;->saved:Z

    return-void
.end method

.method public final setSaved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;->saved:Z

    return-void
.end method
