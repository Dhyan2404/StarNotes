.class public final Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EyesComfortModeAdapterHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;",
        "H",
        "Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;",
        "binding",
        "<init>",
        "(Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;)V",
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
.field public final H:Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;->H:Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;->H:Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;

    return-object p0
.end method
