.class public final Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MenuHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0019\u001a\u00020\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u001c\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0010\u001a\u0004\u0008\u001b\u0010\u0012\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View;",
        "H",
        "Landroid/view/View;",
        "getItemView",
        "()Landroid/view/View;",
        "itemView",
        "Landroid/widget/TextView;",
        "I",
        "Landroid/widget/TextView;",
        "getTvName",
        "()Landroid/widget/TextView;",
        "tvName",
        "Lcom/onyx/android/sdk/theme/widgets/TintImageView;",
        "J",
        "Lcom/onyx/android/sdk/theme/widgets/TintImageView;",
        "getIcon",
        "()Lcom/onyx/android/sdk/theme/widgets/TintImageView;",
        "icon",
        "Landroid/widget/LinearLayout;",
        "K",
        "Landroid/widget/LinearLayout;",
        "getItemContainer",
        "()Landroid/widget/LinearLayout;",
        "itemContainer",
        "L",
        "getNewFeatureImage",
        "newFeatureImage",
        "<init>",
        "(Landroid/view/View;)V",
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
.field public final H:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final I:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final J:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final K:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final L:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;->H:Landroid/view/View;

    sget v0, Lcom/onyx/galaxy/note/R$id;->tv_setting_menu_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;->I:Landroid/widget/TextView;

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_menu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;->J:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget v0, Lcom/onyx/galaxy/note/R$id;->ll_item_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;->K:Landroid/widget/LinearLayout;

    sget v0, Lcom/onyx/galaxy/note/R$id;->newFeatureImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;->L:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    return-void
.end method


# virtual methods
.method public final getIcon()Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;->J:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    return-object p0
.end method

.method public final getItemContainer()Landroid/widget/LinearLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;->K:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public final getItemView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;->H:Landroid/view/View;

    return-object p0
.end method

.method public final getNewFeatureImage()Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;->L:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    return-object p0
.end method

.method public final getTvName()Landroid/widget/TextView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;->I:Landroid/widget/TextView;

    return-object p0
.end method
