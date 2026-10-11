.class final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$initListener$3$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$initListener$3$1;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/util/ArrayList<",
        "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
        ">;",
        "Ljava/lang/ref/WeakReference<",
        "Landroid/app/Activity;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsLocalBackupFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsLocalBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$initListener$3$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,248:1\n1549#2:249\n1620#2,3:250\n*S KotlinDebug\n*F\n+ 1 SettingsLocalBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$initListener$3$1$1\n*L\n168#1:249\n168#1:250,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\u0008\u0012\u0004\u0012\u00020\u0004`\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "files",
        "Ljava/util/ArrayList;",
        "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
        "Lkotlin/collections/ArrayList;",
        "<anonymous parameter 1>",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Activity;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSettingsLocalBackupFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsLocalBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$initListener$3$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,248:1\n1549#2:249\n1620#2,3:250\n*S KotlinDebug\n*F\n+ 1 SettingsLocalBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$initListener$3$1$1\n*L\n168#1:249\n168#1:250,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$initListener$3$1$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$initListener$3$1$1;->invoke(Ljava/util/ArrayList;Ljava/lang/ref/WeakReference;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/util/ArrayList;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "files"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 3
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$initListener$3$1$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Lcom/onyx/android/sdk/filepicker/DocumentBean;

    .line 7
    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getPath()Landroid/net/Uri;

    move-result-object v0

    .line 8
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0, p2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;->access$import(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;Ljava/util/List;)V

    :cond_1
    return-void
.end method
